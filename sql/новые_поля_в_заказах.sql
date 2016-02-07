                SELECT a.*, nvl(b.nbutton,99) as nbutton,
                 stock_distribution, DISTRIBUTED_NUMBER-stock_distribution as client_distribution
                   --, case when b.f_char is null then a.h_name_f else trim(substr(a.h_name_f, length(trim(b.f_char))+1, length(a.h_name_f) )) end h_name
                FROM (
                    SELECT nom.compiled_name_otdel, nom.h_name  as h_name_f
                        , nom.h_name as h_name, -- пока Дина сказала прикрыть nvl(o.eng_name,nom.h_name) as h_name,
                        nom.f_name, nom.F_SUB_TYPE, nom.F_TYPE, nom.N_ID,
                        nom.LEN, nom.PACK, nom.VBN, nom.WEIGHT, nom.FST_ID, nom.FT_ID, nom.C_ID, nom.S_ID,
                        nom.S_NAME_RU, nom.COLOUR, nom.COL_ID, nom.fn_id, nom.COUNTRY, nom.ID_DEPARTMENTS, nom.sub_weight,
                        nom.rus_marks, nom.h_code, nom.remarks,
                        bbb.remarks as remarks_tmp,
                        nom.HT_ID, nvl(nom.hol_type,'none') as hol_type, nom.bar_code, nom.code, ht.ord,
                        case when m.quantity = 0 then 0 else
                         case when (m.quantity - m.reserv) is null then 0 else (m.quantity - m.reserv) end
                        end as store_all,
                        123 as id_orders_clients, aaa.fl_orders_all, bbb.fl_orders, bbb.id_orders_list,
                        prih_p.prih_post, prih_p.n_id as n_id_1, prih_f.n_id as n_id_2,
                        prih_f.prih_future,
                        nom.hol_sub_type, bbb.zatirka, bbb.truck, store_spis, store_ucen, store_prod
                        , bbb.COUNT_DATA, l.price
                        , nvl(bbb.pack_,0) as pack_
                        ,nom.nom_new,nom.nom_start,nom.nom_end,nom.DIAMETER,nom.WEIGHTDRY,nom.CUST_COEF,nom.NOPRINT,nom.NOTUSE,nom.PHOTO,nom.TNVED,nom.name_code,nom.HOL_COLOR,nom.id_office
                        , instr(nom.h_code,'!') as spec
                        , ppl.stock_amount as prev_stock_amount
                    FROM NOMENCLATURE_MAT_VIEW nom, STORE_MAIN m, price_list l, orders_name o, hol_types ht,
                        prepare_price_list ppl,
                    -- заказнные товары клиентами всего в этом заказе (Если нужно будет им, то открыть)
                        (select sum(l.QUANTITY) fl_orders_all, n_id from orders_list l where active = 1 and l.ID_ORDERS_CLIENTS in
                                (select id_orders_clients from orders_clients where active = 1 and id_orders = 123 ) group by n_id ) aaa,
                    -- заказнные товары клиентом
                        (select sum(l.QUANTITY) fl_orders, l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_ from orders_list l where l.active = 1 and l.ID_ORDERS_CLIENTS = 8080 group by l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_ ) bbb,
                        (select sum(i.units) prih_post, n_id from invoice_data i where i.inv_id in (
                                SELECT max(a.inv_id)
                                FROM invoice_register a
                                WHERE a.id_departments = 62 and a.sended_to_warehouse=1 and a.id_office = const_office
                                   and a.SUPPLIER_DATE between sysdate-3 and sysdate
                         ) group by i.n_id ) prih_p,
                        (select sum(i.units) prih_future, n_id from invoice_data i where i.inv_id in (
                                SELECT max(a.inv_id) FROM invoice_register a
                                WHERE a.id_departments = 62 and a.sended_to_warehouse=0 and a.id_office = const_office
                                and a.SUPPLIER_DATE between sysdate-3 and sysdate
                            ) group by i.n_id ) prih_f,
                        (
                            select dd.n_id,
                                  sum(case when d.id_doc_type = 2 then dd.quantity else 0 end) store_spis,
                                  sum(case when d.id_doc_type = 3 then dd.quantity else 0 end) store_ucen,
                                  sum(case when d.id_doc_type = 4 then dd.quantity else 0 end) store_prod
                            from store_doc_data dd, store_doc d
                            where dd.id_doc = d.id_doc and d.id_doc_type in (2,3,4) and d.doc_date > trunc(sysdate-3) and d.ID_DEPARTMENTS = 62 and d.id_office = const_office
                            group by dd.n_id
                        ) store_stat
                    WHERE /*Filter*/ 1=1
                        AND nom.ID_DEPARTMENTS= 62
                        --and instr(nom.h_code,'!') = 0
                        AND nom.N_ID = m.n_id(+) and m.id_office(+) = const_office and m.STORE_TYPE(+) <> 2
                        and nom.n_id = aaa.n_id(+)
                        and nom.n_id = bbb.n_id(+)
                        and nom.n_id = prih_p.n_id(+)
                        and nom.n_id = prih_f.n_id(+)
                        and nom.n_id = store_stat.n_id(+)
                        and nom.n_id = l.n_id(+)
                        and nom.n_id = o.n_id(+)
                        and nom.hol_type = ht.hol_type(+)
                        and ppl.ppli_id(+) = 10001509 and nom.n_id = ppl.n_id(+) 
                ) a
                left outer join (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = 62) b on b.fst_id = a.fst_id and (b.nbutton = 0 or 0=0)

   left outer join
      (
        select c.d_n_id, nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER, sum( case when c.id_clients in (7086,8060) then c.DQ else 0 end ) as stock_distribution
        from DISTRIBUTION_VIEW c
          where c.DIST_IND_ID=59 /*and c.id_clients not in (7086,8060)*/ and c.INVOICE_DATA_ID is not null
          group by c.d_n_id
      ) d on d.d_n_id = a.n_id
      

                WHERE /*Filter*/ 1=1
                   
