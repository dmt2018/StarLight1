-- Start of DDL Script for Package Body CREATOR.SYNC_LINK_PKG
-- Generated 16.05.2016 2:43:40 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE sync_link_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2011-11-10 */
/* Изменение: */
/* Для синхронизации по линкам */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;



--
--  Сформируем накладную для экспорта на склад из инвойса
--
PROCEDURE make_out_invoice
(
  p_inv_str   in varchar2,
  p_price     in number,
  p_office    in number,
  p_res       in out varchar2
);


--
--  Сформируем накладную для экспорта на склад из накладных
--
PROCEDURE make_out_storedoc
(
  p_inv_str   in varchar2,
  p_doc_str   in varchar2,
  p_client    in number,
  p_office    in number,
  p_res       in out varchar2
);



--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS(
    p_idDep number
);


--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE (
  v_res  in out varchar2
);


--
--  Синхронизация одной номенклатуры
--
PROCEDURE SYNC_NOMENCLATURE_ONE (
  v_nid  number,
  v_res  in out varchar2
);


-- Проверка на подгрузку инвойса в регионе
procedure check_invoice_load
(
  p_inv_id   in number,
  p_office   in varchar2,
  p_res  in out varchar2
);


--
--  Сформируем накладную для экспорта на склад из накладных в москву
--
PROCEDURE make_out_storedoc_msk
(
  p_inv_str   in varchar2,
  p_doc_str   in varchar2,
  p_res  in out varchar2
);


--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data;

END;
/

-- Grants for Package
GRANT EXECUTE ON sync_link_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY sync_link_pkg
IS



--
--  Сформируем накладную для экспорта на склад из инвойса
--
PROCEDURE make_out_invoice
(
  p_inv_str   in varchar2,
  p_price     in number,
  p_office    in number,
  p_res       in out varchar2
)
is
  pragma autonomous_transaction;
  v_office number;
  v_idd    number;
  v_ipp    number;
  cnt      number;
  v_ppli_id number;
  v_str_office varchar2(20);
  sql_str      varchar2(1000);
begin
  v_office := p_office;

  ------------------------------------------------------------------------------
  v_str_office := '';
  select decode(v_office, 6,'ufa', 5,'cherep', 2,'samara', 3,'kazan', 8,'eburg', '') into v_str_office from dual;
  begin
    sql_str := 'select 1 from dual@'||v_str_office;
    execute immediate sql_str;
  EXCEPTION
    WHEN OTHERS THEN
      p_res := 'Ошибка доступа :: '||v_str_office;
  end;
  if p_res is not null then return; end if;
  ------------------------------------------------------------------------------


  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(p_inv_str) as number_list_type)) );
  insert into export_to_fillials ( select null, a.*, sysdate, (select BRIEF from offices where id_office = v_office), user from table(cast(get_list_elements(p_inv_str) as number_list_type)) a );

--  if v_str_office <> '' then
    v_ipp := 0;
    v_ppli_id := 0;

    sql_str := 'insert into tmp_exp_doc@'||v_str_office||' (select * from tmp_exp_doc)';
    execute immediate sql_str;

    sql_str := 'INSERT INTO FLOWER_TYPES@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT A2.FT_ID,A2.F_TYPE,A2.FT_MASK,A2.HT_ID,A2.ID_DEPARTMENTS,A2.ID_OFFICE, a2.date_change
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, FLOWER_TYPES A2
           WHERE A2.FT_ID = B.FT_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM FLOWER_TYPES@'||v_str_office||' Z WHERE Z.FT_ID = A1.FT_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO flower_subtypes@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.fst_id, a2.f_sub_type, a2.ft_id, a2.hol_sub_type, a2.mnemo, a2.sub_weight, a2.id_office, a2.date_change, a2.PRICE_PREFIX, a2.tnved,a2.sub_weight_dry
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, flower_subtypes A2
           WHERE A2.FST_ID = B.FST_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM flower_subtypes@'||v_str_office||' Z WHERE Z.FST_ID = A1.FST_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO FLOWER_NAMES@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.fn_id, replace(a2.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a2.id_departments, a2.name_code, replace(a2.fito_name,chr(39),chr(39)||chr(39)) as fito_name, a2.id_office, a2.date_change
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, FLOWER_NAMES A2
           WHERE A2.FN_ID = B.FN_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM FLOWER_NAMES@'||v_str_office||' Z WHERE Z.FN_ID = A1.FN_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO flower_name_translations@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.fn_id, replace(a2.f_name,chr(39),chr(39)||chr(39)) as f_name, a2.name_code, a2.id_departments, a2.fnt_id, a2.default_translation, a2.remarks, a2.id_office, a2.date_change
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, flower_name_translations A2
           WHERE A2.FN_ID = B.FN_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM flower_name_translations@'||v_str_office||' Z WHERE Z.FN_ID = A1.FN_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO colours@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.col_id, a2.colour, a2.ord, a2.id_office, a2.date_change
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, colours A2
           WHERE A2.COL_ID = B.COL_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM colours@'||v_str_office||' Z WHERE Z.col_ID = A1.col_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO countries@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.c_id, a2.country, a2.country_eng, a2.buh_code, a2.mnemo
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, countries A2
           WHERE A2.C_ID = B.C_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM countries@'||v_str_office||' Z WHERE Z.c_ID = A1.c_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO suppliers@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.s_id, a2.s_name_ru, a2.c_id, a2.need_cust, a2.id_office, a2.date_change, a2.ANALYZE_DAYS
            FROM invoice_data C, NOMENCLATURE_MAT_VIEW B, suppliers A2
           WHERE A2.s_ID = B.s_ID
             AND C.N_ID = B.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM suppliers@'||v_str_office||' Z WHERE Z.s_ID = A1.s_ID)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO nomenclature@'||v_str_office||' (
      select a1.* from (
           SELECT DISTINCT a2.n_id, a2.fn_id, a2.fst_id, a2.s_id, a2.c_id, a2.h_code, replace(replace(a2.h_name,chr(39),chr(39)||chr(39)),chr(10),'''') as h_name,
             a2.len, a2.pack, a2.col_id, a2.vbn, a2.hol_type, a2.weight, a2.bar_code,
             a2.code, a2.diameter, a2.cust_coef, a2.remarks, a2.photo, a2.h_namecode, a2.id_office, a2.date_change, a2.NOPRINT, a2.NOTUSE, a2.tnved, a2.weightdry
             , a2.NOM_NEW, a2.NOM_START, a2.NOM_END, a2.hol_color, a2.HOL_PACK
            FROM invoice_data C, nomenclature A2
           WHERE A2.N_ID = C.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM nomenclature@'||v_str_office||' Z WHERE Z.n_id = A1.n_id)
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO hol_specifications@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.HS_ID, a2.SPEC_CODE, a2.SPEC_NAME, a2.SPEC_HOL_NAME, a2.ADDITION, a2.RUSSIAN_ADDITION, a2.NEED_TRANSLATION
            FROM invoice_data C, hol_specifications a2, nom_specifications n
           WHERE n.n_id = c.N_ID
             and n.hs_id = a2.hs_id
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM hol_specifications@'||v_str_office||' Z WHERE Z.hs_id = A1.hs_id )
    )';
    execute immediate sql_str;

    sql_str := 'INSERT INTO nom_specifications@'||v_str_office||' (
      select A1.* from (SELECT DISTINCT a2.n_id, a2.hs_id, a2.hs_val, a2.ord, a2.id_office, a2.date_change, a2.sc_id
            FROM invoice_data C, nom_specifications A2
           WHERE A2.n_id = c.N_ID
             AND C.inv_id IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
     where NOT EXISTS (SELECT 1 FROM nom_specifications@'||v_str_office||' Z WHERE Z.n_id = A1.n_id and z.hs_id=a1.hs_id)
    )';
    execute immediate sql_str;


    -- Инвойсы ---------------------------------------------------------------------
    begin
       sql_str := 'select inv_id from invoice_register@'||v_str_office||' where supplier_number = '||p_inv_str;
       execute immediate sql_str into v_idd;
    EXCEPTION when no_data_found then
       v_idd := 0;
    end;

    if v_idd = 0 then
      sql_str := 'SELECT get_office_unique@'||v_str_office||'(''INV_ID'') FROM DUAL';
      execute immediate sql_str into v_idd;

      select count(distinct IPP_ID) into cnt from invoice_register a where a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) and IPP_ID is not null;
      if cnt = 1 then
         -- Считаем, что мы перекидываем пачку
         select distinct IPP_ID into v_ipp from invoice_register a where a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) and IPP_ID is not null;

         sql_str := 'INSERT INTO INVOICE_REGISTER@'||v_str_office||' (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,C_ID_DEFAULT,minus_inv_id,IN_FILE,id_office)
         ( select '||v_idd||', trunc(sysdate), 0, description, id_departments, sysdate, '||p_inv_str||', INV_MINUS, 1, c_id_default,  null, null, v_office from (
             select ''Пачка №'||v_ipp||' по инвойсам '||p_inv_str||''' as description, a.id_departments, max(a.INV_MINUS) as INV_MINUS, max(a.c_id_default) as c_id_default
                      from invoice_register a
                      where a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC)
                          and not exists (select 1 from INVOICE_REGISTER@'||v_str_office||' where supplier_number = a.inv_id)
             group by a.IPP_ID, a.id_departments
         ) a
         )';
      else
         -- Считаем, что перекидываем один инвйос
        sql_str := 'INSERT INTO INVOICE_REGISTER@'||v_str_office||' (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,C_ID_DEFAULT,minus_inv_id,IN_FILE,id_office)
            ( select '||v_idd||', trunc(sysdate), 0, a.COMMENTS||chr(13)||'' МСК инвойс №''||a.inv_id, a.id_departments, sysdate, '||p_inv_str||', a.INV_MINUS, 1, a.c_id_default, null, null, '||v_office||'
              from invoice_register a
              where a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC)
                  and not exists (select 1 from INVOICE_REGISTER@'||v_str_office||' where supplier_number = a.inv_id)
        )';
      end if;
      execute immediate sql_str;

      v_idd := 0;
      begin
         sql_str := 'select inv_id from invoice_register@'||v_str_office||' where supplier_number = '||p_inv_str;
         execute immediate sql_str into v_idd;
      EXCEPTION when no_data_found then
         v_idd := 0;
         LOG_ERR('Не найден инвойс при добалении данных о инвойсе', '', 'sync_link_pkg.make_out_invoice', 'select inv_id from invoice_register@'||v_str_office||' where supplier_number = '||p_inv_str);
         raise;
      end;
    end if;


    sql_str := 'delete from invoice_data_as_is@'||v_str_office||' where INV_ID = '||v_idd;
    execute immediate sql_str;

    if v_ipp = 0 then
      sql_str := 'INSERT INTO invoice_data_as_is@'||v_str_office||' (
        SELECT '||v_idd||', a.order_number, a.order_markname, a.packing_marks,
           a.packing_code, a.description, a.units, a.sku,
           a.amount_in_the_pack, b.invoice_data_id as invoice_data_as_is_id, a.hol_colour,
           a.hol_sub_type, a.marks_content, a.marks_names, a.short_code,
           a.short_name, a.recognised, a.bar_code, a.translation,
           a.amount_per_unit, a.total_amount, a.remarks, a.spec_length,
           a.spec_heads, a.spec_heads_shrub, a.spec_vd2, a.spec_width,
           a.spec_hight, a.trolley, a.truck, a.client, a.src_trolley,
           a.id_office, a.date_change, a.VOLUME, a.VOLDRY, a.nom_new, a.nom_start, a.country_, a.NOM_END, a.NOM_ADD, a.NOM_SPECIAL, a.NOM_PACK, a.NOM_PACK_HOL, a.REPLACEMENT
        FROM invoice_data_as_is a, invoice_data b where a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) and a.invoice_data_as_is_id = b.invoice_data_as_is_id
      )';
    else
      sql_str := 'INSERT INTO invoice_data_as_is@'||v_str_office||' (
        SELECT '||v_idd||', a.order_number, a.order_markname, a.packing_marks,
           a.packing_code, a.description, a.units, a.sku,
           a.amount_in_the_pack, b.invoice_data_id as invoice_data_as_is_id, a.hol_colour,
           a.hol_sub_type, a.marks_content, a.marks_names, a.short_code,
           a.short_name, a.recognised, a.bar_code, a.translation,
           a.amount_per_unit, a.total_amount, a.remarks, a.spec_length,
           a.spec_heads, a.spec_heads_shrub, a.spec_vd2, a.spec_width,
           a.spec_hight, a.trolley, a.truck, a.client, a.src_trolley,
           a.id_office, a.date_change, a.VOLUME, a.VOLDRY, a.nom_new, a.nom_start, a.country_, a.NOM_END, a.NOM_ADD, a.NOM_SPECIAL, a.NOM_PACK, a.NOM_PACK_HOL, a.REPLACEMENT
        FROM invoice_data_as_is a, invoice_data b, invoice_register r where a.invoice_data_as_is_id = b.invoice_data_as_is_id and b.inv_id = r.inv_id and r.IPP_ID = '||v_ipp||')';
    end if;
    execute immediate sql_str;


    sql_str := 'delete from invoice_data@'||v_str_office||' where INV_ID = '||v_idd;
    execute immediate sql_str;

    if p_price = 1 then
      if v_ipp = 0 then
         sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
              SELECT '||v_idd||', a.n_id, a.units, a.price_per_unit as FINAL_PRICE, round((a.price_per_unit * a.units),2) as total_sum,
                  a.amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), a.invoice_data_id, 0, a.gtd, a.storned_data, '||v_office||', sysdate, a.gtd_country
                  , a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT, null
                FROM invoice_data a
                    inner join TMP_EXP_DOC dd on dd.id_doc = a.inv_id
                    left outer join prepare_price_list_index b on (b.inv_id = a.inv_id or b.inv_id2 = a.inv_id or b.inv_id3 = a.inv_id or b.inv_id4 = a.inv_id)
                    left outer join prepare_price_list c on (c.ppli_id = b.ppli_id and c.n_id = a.n_id)
                where a.storned_data = 0
         )'
         ;
      else
         sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
              SELECT '||v_idd||', a.n_id, a.units, a.price_per_unit as FINAL_PRICE, round((a.price_per_unit * a.units),2) as total_sum,
                  a.amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), a.invoice_data_id, 0, a.gtd, a.storned_data, '||v_office||', sysdate, a.gtd_country
                  , a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT, null
                FROM invoice_data a
                    inner join invoice_register r on r.inv_id = a.inv_id and r.IPP_ID = '||v_ipp||'
                where a.storned_data = 0
         )'
         ;
      end if;

    else
      if v_ipp = 0 then
         sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
              SELECT '||v_idd||', a.n_id, a.units, nvl(c.FINAL_PRICE,0) as FINAL_PRICE, case when c.FINAL_PRICE is null then 0 else round((c.FINAL_PRICE * a.units),2) end total_sum,
                  a.amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), a.invoice_data_id, 0, a.gtd, a.storned_data, '||v_office||', sysdate, a.gtd_country
                  , a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT, null
                FROM invoice_data a
                    inner join TMP_EXP_DOC dd on dd.id_doc = a.inv_id
                    left outer join prepare_price_list_index b on (b.inv_id = a.inv_id or b.inv_id2 = a.inv_id or b.inv_id3 = a.inv_id or b.inv_id4 = a.inv_id)
                    left outer join prepare_price_list c on (c.ppli_id = b.ppli_id and c.n_id = a.n_id)
                where a.storned_data = 0
         )'
         ;
      else

         sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
            select '||v_idd||', a.n_id, a.units, nvl(c.FINAL_PRICE,0) as FINAL_PRICE, case when c.FINAL_PRICE is null then 0 else round((c.FINAL_PRICE * a.units),2) end total_sum,
                   a.amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), a.invoice_data_id, 0, a.gtd, a.storned_data, '||v_office||', sysdate, a.gtd_country,
                   a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT, null
            from (
                        SELECT b.ppli_id, 1, a.n_id, a.units, a.amount_in_the_pack, a.invoice_data_id, 0, a.gtd, a.storned_data, 4, sysdate, a.gtd_country, a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT
                          FROM invoice_data a
                              inner join invoice_register r on r.inv_id = a.inv_id and r.IPP_ID = '||v_ipp||'
                              left outer join prepare_price_list_index b on (b.inv_id = a.inv_id or b.inv_id2 = a.inv_id or b.inv_id3 = a.inv_id or b.inv_id4 = a.inv_id)
                          where a.storned_data = 0
            ) a
            left outer join (
              select max(z.FINAL_PRICE) as FINAL_PRICE, z.n_id, z.ppli_id
              from prepare_price_list z, prepare_price_list_index r
                where z.ppli_id = r.ppli_id and (r.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or r.inv_id2 in (SELECT ID_DOC FROM TMP_EXP_DOC) or r.inv_id3 in (SELECT ID_DOC FROM TMP_EXP_DOC) or r.inv_id4 in (SELECT ID_DOC FROM TMP_EXP_DOC))
                group by z.ppli_id, z.n_id
            ) c on (c.ppli_id = a.ppli_id and c.n_id = a.n_id)
         )'
         ;
      end if;

    end if;
    execute immediate sql_str;

    -- END Инвойсы -----------------------------------------------------------------

    -- Цены ------------------------------------------------------------------------
    v_ppli_id := 0;
    begin
      sql_str := 'select b.ppli_id from invoice_register@'||v_str_office||' a, prepare_price_list_index@'||v_str_office||' b where a.inv_id = b.inv_id and a.supplier_number = '||p_inv_str;
      execute immediate sql_str into v_ppli_id;
    EXCEPTION when no_data_found then
      v_idd := 0;
    end;

    if v_ppli_id = 0 then

      sql_str := 'select get_office_unique@'||v_str_office||'(''ppli_id'') from dual';
      execute immediate sql_str into v_ppli_id;

      if v_ipp = 0 then
        sql_str := 'INSERT INTO prepare_price_list_index@'||v_str_office||' (
          SELECT '||v_ppli_id||', a.ppl_comment, sysdate, 0, a.use_cust_coef, a.id_departments, a.prime_coast_coefficient,
                 a.profit_coeffitient, a.exchange_rate, a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4, a.pack_id, '||v_office||', sysdate, null
          FROM prepare_price_list_index a
          where (a.inv_id = '||p_inv_str||' or a.inv_id2 = '||p_inv_str||' or a.inv_id3 = '||p_inv_str||' or a.inv_id4 = '||p_inv_str||') and a.finished = 1
                and not exists (select 1 from prepare_price_list_index@'||v_str_office||' where inv_id = '||p_inv_str||')
        )';
      else
        sql_str := 'INSERT INTO prepare_price_list_index@'||v_str_office||' (
          SELECT v_ppli_id, ''Пачка №'||v_ipp||' по инвойсам '||p_inv_str||''', sysdate, 0, use_cust_coef, id_departments, prime_coast_coefficient,
                profit_coeffitient, exchange_rate, v_idd, null, null, null, null, v_office, sysdate, null
          from (
            select max(a.use_cust_coef) use_cust_coef, a.id_departments, max(a.prime_coast_coefficient) prime_coast_coefficient, max(a.profit_coeffitient) profit_coeffitient, max(a.exchange_rate) exchange_rate
            FROM prepare_price_list_index a
              where (a.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or a.inv_id2 in (SELECT ID_DOC FROM TMP_EXP_DOC) or a.inv_id3 in (SELECT ID_DOC FROM TMP_EXP_DOC) or a.inv_id4 in (SELECT ID_DOC FROM TMP_EXP_DOC)) and a.finished = 1
              group by a.id_departments
          ) a
        )';
      end if;
      execute immediate sql_str;

      if v_ipp = 0 then
        sql_str := 'INSERT INTO prepare_price_list@'||v_str_office||' (
          SELECT '||v_ppli_id||', get_office_unique@'||v_str_office||'(''ppl_id''), a.coming_date, a.invoice_amount, a.stock_amount, a.left_amount, a.given_amount, a.n_id,
                 a.invoice_data_id, a.hol_price, a.ruble_price, a.last_price, a.price_pcc, a.price_pcc_pc, a.total_profit, a.final_price, a.col
                 , '||v_office||', sysdate, SPEC_PRICE, BEST_PRICE, DISCOUNT,null
          FROM prepare_price_list a, prepare_price_list_index b
          where a.ppli_id = b.ppli_id and (b.inv_id = '||p_inv_str||' or b.inv_id2 = '||p_inv_str||' or b.inv_id3 = '||p_inv_str||' or b.inv_id4 = '||p_inv_str||')
                and a.invoice_data_id is not null
        )';
      else
        sql_str := 'INSERT INTO prepare_price_list@'||v_str_office||' (
          SELECT '||v_ppli_id||', get_office_unique@'||v_str_office||'(''ppl_id''), a.coming_date, a.invoice_amount, a.stock_amount, a.left_amount, a.given_amount, a.n_id,
                 a.invoice_data_id, a.hol_price, a.ruble_price, a.last_price, a.price_pcc, a.price_pcc_pc, a.total_profit, a.final_price, a.col
                 , '||v_office||', sysdate, SPEC_PRICE, BEST_PRICE, DISCOUNT,null
          FROM prepare_price_list a, prepare_price_list_index b
          where a.ppli_id = b.ppli_id and (b.inv_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or b.inv_id2 in (SELECT ID_DOC FROM TMP_EXP_DOC) or b.inv_id3 in (SELECT ID_DOC FROM TMP_EXP_DOC) or b.inv_id4 in (SELECT ID_DOC FROM TMP_EXP_DOC))
               and a.invoice_data_id is not null
        )';
      end if;
      execute immediate sql_str;
    end if;

    -- END Цены --------------------------------------------------------------------
    sql_str := 'begin nomenclature_pkg.sync_nomenclature@'||v_str_office||'; end;';
    execute immediate sql_str;

--  end if;
  commit;


EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_link_pkg.make_out_invoice', sql_str);

end make_out_invoice;





--
--  Сформируем накладную для экспорта на склад из накладных
--
PROCEDURE make_out_storedoc
(
  p_inv_str   in varchar2,
  p_doc_str   in varchar2,
  p_client    in number,
  p_office    in number,
  p_res  in out varchar2
)
is
  pragma autonomous_transaction;
  v_office number;
  v_idd    number;
  v_id_dep number;
  v_id_doc number;
  v_c_id_default number;
  v_ddate  date;
  v_ddate_str  varchar2(10);
  v_str_office varchar2(20);
  sql_str      varchar2(1000);
begin

  if p_office = 0 then
    -- 2 - Самара
    if p_client in (10690, 12173) then v_office := 2; end if;
    -- 3 - Казань
    if p_client in (14942)    then v_office := 3; end if;
    -- 4 - Ярославль
    if p_client in (10016021) then v_office := 4; end if;
    -- 5 - Череповец
    if p_client in (10016216) then v_office := 5; end if;
    -- 6 - Уфа
    if p_client in (10016343) then v_office := 6; end if;
    -- 8 - Ебург
    if p_client in (10021019) then v_office := 8; end if;

  else
    v_office := p_office;
  end if;


  ------------------------------------------------------------------------------
  v_str_office := '';
  select decode(v_office, 6,'ufa', 5,'cherep', 2,'samara', 3,'kazan', 8,'eburg', '') into v_str_office from dual;
  begin
    sql_str := 'select 1 from dual@'||v_str_office;
    execute immediate sql_str;
  EXCEPTION
    WHEN OTHERS THEN
      p_res := 'Ошибка доступа :: '||v_str_office;
  end;
  if p_res is not null then return; end if;
  ------------------------------------------------------------------------------


  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(p_inv_str) as number_list_type)) );
  insert into export_to_fillials ( select a.*, null, sysdate, (select BRIEF from offices where id_office = v_office), user from table(cast(get_list_elements(p_inv_str) as number_list_type)) a );


--if v_office = 6 then -- begin ufa

  sql_str := 'insert into tmp_exp_doc@'||v_str_office||' (select * from tmp_exp_doc)';
  execute immediate sql_str;

  sql_str := 'INSERT INTO FLOWER_TYPES@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT A2.FT_ID,A2.F_TYPE,A2.FT_MASK,A2.HT_ID,A2.ID_DEPARTMENTS,A2.ID_OFFICE, a2.date_change
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, FLOWER_TYPES A2
         WHERE A2.FT_ID = B.FT_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM FLOWER_TYPES@'||v_str_office||' Z WHERE Z.FT_ID = A1.FT_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO flower_subtypes@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.fst_id, a2.f_sub_type, a2.ft_id, a2.hol_sub_type, a2.mnemo, a2.sub_weight, a2.id_office, a2.date_change, a2.PRICE_PREFIX, a2.tnved,a2.sub_weight_dry
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, flower_subtypes A2
         WHERE A2.FST_ID = B.FST_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM flower_subtypes@'||v_str_office||' Z WHERE Z.FST_ID = A1.FST_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO FLOWER_NAMES@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.fn_id, replace(a2.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a2.id_departments, a2.name_code, replace(a2.fito_name,chr(39),chr(39)||chr(39)) as fito_name, a2.id_office, a2.date_change
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, FLOWER_NAMES A2
         WHERE A2.FN_ID = B.FN_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM FLOWER_NAMES@'||v_str_office||' Z WHERE Z.FN_ID = A1.FN_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO flower_name_translations@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.fn_id, replace(a2.f_name,chr(39),chr(39)||chr(39)) as f_name, a2.name_code, a2.id_departments, a2.fnt_id, a2.default_translation, a2.remarks, a2.id_office, a2.date_change
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, flower_name_translations A2
         WHERE A2.FN_ID = B.FN_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM flower_name_translations@'||v_str_office||' Z WHERE Z.FN_ID = A1.FN_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO colours@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.col_id, a2.colour, a2.ord, a2.id_office, a2.date_change
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, colours A2
         WHERE A2.COL_ID = B.COL_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM colours@'||v_str_office||' Z WHERE Z.col_ID = A1.col_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO countries@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.c_id, a2.country, a2.country_eng, a2.buh_code, a2.mnemo
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, countries A2
         WHERE A2.C_ID = B.C_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM countries@'||v_str_office||' Z WHERE Z.c_ID = A1.c_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO suppliers@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.s_id, a2.s_name_ru, a2.c_id, a2.need_cust, a2.id_office, a2.date_change, a2.ANALYZE_DAYS
          FROM STORE_DOC_DATA C, NOMENCLATURE_MAT_VIEW B, suppliers A2
         WHERE A2.s_ID = B.s_ID
           AND C.N_ID = B.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM suppliers@'||v_str_office||' Z WHERE Z.s_ID = A1.s_ID)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO nomenclature@'||v_str_office||' (
    select a1.* from (
         SELECT DISTINCT a2.n_id, a2.fn_id, a2.fst_id, a2.s_id, a2.c_id, a2.h_code, replace(replace(a2.h_name,chr(39),chr(39)||chr(39)),chr(10),'''') as h_name,
           a2.len, a2.pack, a2.col_id, a2.vbn, a2.hol_type, a2.weight, a2.bar_code,
           a2.code, a2.diameter, a2.cust_coef, a2.remarks, a2.photo, a2.h_namecode, a2.id_office, a2.date_change, a2.NOPRINT, a2.NOTUSE, a2.tnved, a2.weightdry
            , a2.NOM_NEW, a2.NOM_START, a2.NOM_END, a2.hol_color, a2.hol_pack
          FROM STORE_DOC_DATA C, nomenclature A2
         WHERE A2.N_ID = C.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM nomenclature@'||v_str_office||' Z WHERE Z.n_id = A1.n_id)
  )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO nom_specifications@'||v_str_office||' (
    select A1.* from (SELECT DISTINCT a2.n_id, a2.hs_id, a2.hs_val, a2.ord, a2.id_office, a2.date_change, a2.sc_id
          FROM STORE_DOC_DATA C, nom_specifications A2
         WHERE A2.n_id = c.N_ID
           AND C.ID_DOC IN (SELECT ID_DOC FROM TMP_EXP_DOC)) A1
   where NOT EXISTS (SELECT 1 FROM nom_specifications@'||v_str_office||' Z WHERE Z.n_id = A1.n_id and z.hs_id=a1.hs_id)
  )';
  execute immediate sql_str;

-- Инвойсы ---------------------------------------------------------------------
  v_idd := 0;
  select max(id_departments), to_char(max(DOC_DATE),'dd.mm.yy'), max(id_doc)
    into v_id_dep, v_ddate_str, v_id_doc
  from store_doc where id_doc in (select id_doc from tmp_exp_doc);

  sql_str := 'SELECT get_office_unique@'||v_str_office||'(''inv_id'') FROM DUAL';
  execute immediate sql_str into v_idd;

  sql_str := 'INSERT INTO INVOICE_REGISTER@'||v_str_office||' (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,C_ID_DEFAULT,minus_inv_id,IN_FILE,id_office)
      ( select '||v_idd||', trunc(sysdate), 0, ''Инвойс из накладной(ых) №'||p_inv_str||''', '||v_id_dep||', to_date('''||v_ddate_str||''',''dd.mm.yy''), '||v_id_doc||', 0, 1, 230, null, null, '||v_office||' from dual )';
  execute immediate sql_str;

--      select '||v_idd||', n_id, units, FINAL_PRICE, total_sum, amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), ID_DOC_DATA
  sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
      select '||v_idd||', n_id, units, FINAL_PRICE, total_sum, amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), null
             , 0, gtd, 0, '||v_office||', sysdate, null as gtd_country, 0, 0, '''', ID_DOC_DATA
      from (
        SELECT a.n_id, sum(a.QUANTITY) as units, max(a.PRICE) as FINAL_PRICE, sum(round((a.PRICE * a.QUANTITY),2)) total_sum,
               sum(a.QUANTITY) as amount_in_the_pack, min(a.ID_DOC_DATA) as ID_DOC_DATA
               , min(a.gtd) as gtd
        FROM store_doc_data a
        where a.id_doc in (select id_doc from tmp_exp_doc@'||v_str_office||' )
        group by a.n_id
      )
  )';
  execute immediate sql_str;
-- END Инвойсы -----------------------------------------------------------------


-- Цены ------------------------------------------------------------------------
  sql_str := 'SELECT get_office_unique@'||v_str_office||'(''ppli_id'') FROM DUAL';
  execute immediate sql_str into tmp_cnt;

  sql_str := 'INSERT INTO prepare_price_list_index@'||v_str_office||'
      ( select '||tmp_cnt||', ''Цены на инвойс поставщика по накладной(ым) №'||p_doc_str||''', trunc(sysdate), 0,0,'||v_id_dep||',1,1,1,'||v_idd||',null,null,null,null,'||v_office||',sysdate, null from dual )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO prepare_price_list@'||v_str_office||' (
    SELECT '||tmp_cnt||', get_office_unique@'||v_str_office||'(''ppl_id''), a.doc_date, a.QUANTITY, 0,0,0, a.n_id, a.INVOICE_DATA_ID, a.PRICE, a.PRICE, imp_invdata_getlastprice@'||v_str_office||'(a.n_id), 0,0,null, a.PRICE, null, '||v_office||', sysdate, null, null, null, null
    from (
      SELECT max(b.doc_date) as doc_date,  sum(a.QUANTITY) as QUANTITY, a.n_id
        , min(z.INVOICE_DATA_ID) as INVOICE_DATA_ID
        , max(a.PRICE) as PRICE
      FROM store_doc_data a, store_doc b, invoice_data@'||v_str_office||' z
      where a.id_doc in (select id_doc from tmp_exp_doc@'||v_str_office||' )
        --and a.ID_DOC_DATA = z.INVOICE_DATA_AS_IS_ID
        and a.ID_DOC_DATA = z.PARENT_ID
        and a.id_doc = b.id_doc
        group by a.n_id
    ) a
  )';
  execute immediate sql_str;

-- END Цены --------------------------------------------------------------------
  sql_str := 'begin nomenclature_pkg.sync_nomenclature@'||v_str_office||'; end;';
  execute immediate sql_str;
  commit;
--end if; -- end ufa

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_link_pkg.make_out_storedoc', sql_str);
end make_out_storedoc;



--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS (
    p_idDep number
)
is
  pragma autonomous_transaction;
  TYPE names_table IS TABLE OF VARCHAR2(10);
  names names_table;

  dt date;
  v_code number;
  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
begin
  dt := sysdate-1000;

  names := names_table('samara', 'kazan', 'ufa', 'cherep', 'eburg');
  total := names.count;
  res_str := '';
  FOR i IN 1 .. total LOOP
    begin
      sql_str := 'select 1 from dual@'||names(i);
      execute immediate sql_str;

      --sql_str := 'begin creator.sync_local_data.clear_tmp_data@'||names(i)||'; end;';
      --execute immediate sql_str;

      sql_str := 'INSERT INTO SYNC_FLOWER_TYPES@'||names(i)||' ( select * from FLOWER_TYPES WHERE id_office=1 )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_flower_subtypes@'||names(i)||' ( select * from flower_subtypes WHERE id_office=1 )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_FLOWER_NAMES@'||names(i)||' ( select * from FLOWER_NAMES WHERE id_office=1 and (ID_DEPARTMENTS = '||p_idDep||' or '||p_idDep||' = 0) )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_flower_name_translations@'||names(i)||' ( select * from flower_name_translations WHERE id_office=1 and (ID_DEPARTMENTS = '||p_idDep||' or '||p_idDep||' = 0) )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_colours@'||names(i)||' ( select * from colours WHERE id_office=1 )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_countries@'||names(i)||' ( select * from countries )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_suppliers@'||names(i)||' ( select * from suppliers WHERE id_office=1 )';
      execute immediate sql_str;
      sql_str := 'INSERT INTO sync_hol_specifications@'||names(i)||' ( select * from hol_specifications )';
      execute immediate sql_str;
      commit;

      sql_str := 'begin creator.sync_local_data.SYNC_ALL_DICTS@'||names(i)||'; end;';
      execute immediate sql_str;

      commit;
      --DBMS_SESSION.CLOSE_DATABASE_LINK(names(i));

    EXCEPTION
      WHEN OTHERS THEN
        res_str :=  res_str ||chr(10)||'Ошибка (нси) :: '||names(i);
        LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'sync_link_pkg.SYNC_ALL_DICTS', sql_str);
    end;
  end loop;
--  commit;

end SYNC_ALL_DICTS;


--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE (
  v_res  in out varchar2
)
is
  pragma autonomous_transaction;
  TYPE names_table IS TABLE OF VARCHAR2(10);
  names names_table;

  dt date;
  v_code number;
  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
begin
  clear_tmp_data;
  dt := sysdate;
  SYNC_ALL_DICTS(0);

  names := names_table('samara', 'kazan', 'ufa', 'cherep', 'eburg');
  total := names.count;
  res_str := '';
  FOR i IN 1 .. total LOOP
    begin
      sql_str := 'select 1 from dual@'||names(i);
      execute immediate sql_str;


      sql_str := 'INSERT INTO SYNC_nomenclature@'||names(i)||' ( select * from nomenclature WHERE id_office=1 and DATE_CHANGE <= :p1)';
      execute immediate sql_str using dt;
      sql_str := 'INSERT INTO SYNC_nom_specifications@'||names(i)||' ( select * from nom_specifications WHERE id_office=1 and n_id in (select n_id from nomenclature WHERE id_office=1 and DATE_CHANGE <= :p1 ) )';
      execute immediate sql_str using dt;
      commit;

      sql_str := 'begin creator.sync_local_data.SYNC_ALL_NOMENCLATURE@'||names(i)||'(0); end;';
      execute immediate sql_str;

      commit;
      --DBMS_SESSION.CLOSE_DATABASE_LINK(names(i));

    EXCEPTION
      WHEN OTHERS THEN
        res_str :=  res_str ||chr(10)||'Ошибка (номенклатура) :: '||names(i);
        LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'sync_link_pkg.SYNC_ALL_NOMENCLATURE', sql_str);
    end;
  end loop;
  --dbms_output.put_line(res_str);
  v_res := res_str;
  LOG_ERR('Синхронизация номенклатуры на регионах :: '||user, 0, 'SYNC_LINK_PKG.SYNC_ALL_NOMENCLATURE', res_str);
--  commit;

end SYNC_ALL_NOMENCLATURE;



--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data
is
  pragma autonomous_transaction;
  TYPE names_table IS TABLE OF VARCHAR2(10);
  names names_table;

  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
begin

  names := names_table('samara', 'kazan', 'ufa', 'cherep', 'eburg');
  total := names.count;
  res_str := '';
  FOR i IN 1 .. total LOOP
    begin
      sql_str := 'select 1 from dual@'||names(i);
      execute immediate sql_str;

      sql_str := 'delete from SYNC_FLOWER_TYPES@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_flower_subtypes@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_FLOWER_NAMES@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_flower_name_translations@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_colours@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_countries@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from SYNC_suppliers@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from sync_hol_specifications@'||names(i);
      execute immediate sql_str;

      sql_str := 'delete from SYNC_nom_specifications@'||names(i);
      execute immediate sql_str;
      sql_str := 'delete from sync_nomenclature@'||names(i);
      execute immediate sql_str;

      commit;
      --DBMS_SESSION.CLOSE_DATABASE_LINK(names(i));

    EXCEPTION
      WHEN OTHERS THEN
        res_str :=  res_str ||chr(10)||'Ошибка (очистка) :: '||names(i);
        LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'sync_link_pkg.clear_tmp_data', sql_str);
    end;
  end loop;
end;



--
--  Синхронизация одной номенклатуры
--
PROCEDURE SYNC_NOMENCLATURE_ONE (
  v_nid  number,
  v_res  in out varchar2
)
is
  pragma autonomous_transaction;
  TYPE names_table IS TABLE OF VARCHAR2(10);
  names names_table;

  dt date;
  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
  v_code number;
  v_idDep number;
begin
  select a.id_departments into v_idDep from nomenclature_mat_view a where a.n_id = v_nid;
  SYNC_ALL_DICTS(v_idDep);

  names := names_table('samara', 'kazan', 'ufa', 'cherep', 'eburg');
  total := names.count;
  res_str := '';

  FOR i IN 1 .. total LOOP
    begin
      sql_str := 'select 1 from dual@'||names(i);
      execute immediate sql_str;

      sql_str := 'INSERT INTO SYNC_nomenclature@'||names(i)||' ( select * from nomenclature WHERE n_id = '||v_nid||' )';
      execute immediate sql_str;
      sql_str := 'delete from nom_specifications@'||names(i)||' a where a.n_id = '||v_nid;
      execute immediate sql_str;
      sql_str := 'INSERT INTO SYNC_nom_specifications@'||names(i)||' ( select * from nom_specifications WHERE n_id = '||v_nid||' )';
      execute immediate sql_str;
      commit;

      sql_str := 'begin creator.sync_local_data.SYNC_ALL_NOMENCLATURE@'||names(i)||'('||v_nid||'); end;';
      execute immediate sql_str;

    EXCEPTION
      WHEN OTHERS THEN
        res_str :=  res_str ||chr(10)||'Ошибка :: '||names(i);
        LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'sync_link_pkg.SYNC_NOMENCLATURE_ONE', sql_str);
    end;
  end loop;
  v_res := res_str;
  commit;

end SYNC_NOMENCLATURE_ONE;


-- Проверка на подгрузку инвойса в регионе
procedure check_invoice_load
(
  p_inv_id   in number,
  p_office   in varchar2,
  p_res  in out varchar2
)
is
  pragma autonomous_transaction;
  reg_inv_id    number;
  reg_send_date date;
  reg_sended_to_warehouse number;
  v_str_office  varchar2(20);
  sql_str       varchar2(1000);
begin
  reg_inv_id := 0;


  ------------------------------------------------------------------------------
  v_str_office := '';
  select decode(p_office, 'УФА','ufa', 'ЧП','cherep', 'САМ','samara', 'КАЗ','kazan', 'ЕБУРГ', 'eburg', '') into v_str_office from dual;
  begin
    sql_str := 'select 1 from dual@'||v_str_office;
    execute immediate sql_str;
  EXCEPTION
    WHEN OTHERS THEN
      p_res := 'Ошибка доступа :: '||v_str_office;
  end;
  if p_res is not null then return; end if;
  ------------------------------------------------------------------------------

  sql_str := 'select inv_id, warehouse_sended_date, sended_to_warehouse from invoice_register@'||v_str_office||' where to_number(supplier_number) = '||p_inv_id||' and MINUS_INV_ID is null';
  execute immediate sql_str into reg_inv_id, reg_send_date, reg_sended_to_warehouse;

  if reg_inv_id > 0 and reg_sended_to_warehouse = 1 then
     update invoice_register set sended_to_warehouse=1, warehouse_sended_date=reg_send_date where inv_id = p_inv_id;
  end if;
  commit;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_link_pkg.make_out_storedoc', sql_str);
end check_invoice_load;



--
--  Сформируем накладную для экспорта на склад из накладных в москву
--
PROCEDURE make_out_storedoc_msk
(
  p_inv_str   in varchar2,
  p_doc_str   in varchar2,
  p_res  in out varchar2
)
is
  pragma autonomous_transaction;
  v_office        number;
  v_idd           number;
  v_id_dep        number;
  v_id_doc        number;
  v_c_id_default  number;
  v_ddate         date;
  v_ddate_str     varchar2(10);
  v_str_office    varchar2(20);
  sql_str         varchar2(1000);
  v_brief         varchar2(10);
begin

  v_office := 1;
  v_str_office := 'star';

  ------------------------------------------------------------------------------
  begin
    sql_str := 'select 1 from dual@'||v_str_office;
    execute immediate sql_str;
  EXCEPTION
    WHEN OTHERS THEN
      p_res := 'Ошибка доступа :: Московский сервер '||v_str_office;
  end;
  if p_res is not null then return; end if;
  ------------------------------------------------------------------------------
  select BRIEF into v_brief from offices where id_office = const_office;

  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(p_inv_str) as number_list_type)) );
  insert into export_to_fillials ( select a.*, null, sysdate, v_brief, user from table(cast(get_list_elements(p_inv_str) as number_list_type)) a );

  sql_str := 'insert into tmp_exp_doc@'||v_str_office||' (select * from tmp_exp_doc)';
  execute immediate sql_str;



-- Инвойсы ---------------------------------------------------------------------
  v_idd := 0;
  select max(id_departments), to_char(max(DOC_DATE),'dd.mm.yy'), max(id_doc)
    into v_id_dep, v_ddate_str, v_id_doc
  from store_doc where id_doc in (select id_doc from tmp_exp_doc);

  sql_str := 'SELECT get_office_unique@'||v_str_office||'(''inv_id'') FROM DUAL';
  execute immediate sql_str into v_idd;

  sql_str := 'INSERT INTO INVOICE_REGISTER@'||v_str_office||' (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,C_ID_DEFAULT,minus_inv_id,IN_FILE,id_office)
      ( select '||v_idd||', trunc(sysdate), 0, ''Инвойс из накладной(ых) №'||p_inv_str||' ('||v_brief||')'', '||v_id_dep||', to_date('''||v_ddate_str||''',''dd.mm.yy''), '||v_id_doc||', 0, 1, 230, null, null, '||v_office||' from dual )';
  execute immediate sql_str;

  sql_str := 'INSERT INTO invoice_data@'||v_str_office||' (
      select '||v_idd||', n_id, units, FINAL_PRICE, total_sum, amount_in_the_pack, get_office_unique@'||v_str_office||'(''INVOICE_DATA_ID''), null
             , 0, gtd, 0, '||v_office||', sysdate, null as gtd_country, 0, 0, '''', ID_DOC_DATA
      from (
        SELECT a.n_id, sum(a.QUANTITY) as units, max(a.PRICE) as FINAL_PRICE, sum(round((a.PRICE * a.QUANTITY),2)) total_sum,
               sum(a.QUANTITY) as amount_in_the_pack, min(a.ID_DOC_DATA) as ID_DOC_DATA
               , min(a.gtd) as gtd
        FROM store_doc_data a
        where a.id_doc in (select id_doc from tmp_exp_doc@'||v_str_office||' )
        group by a.n_id
      )
  )';
  execute immediate sql_str;
-- END Инвойсы -----------------------------------------------------------------

  commit;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_link_pkg.make_out_storedoc_msk', sql_str);
end make_out_storedoc_msk;



END;
/


-- End of DDL Script for Package Body CREATOR.SYNC_LINK_PKG

