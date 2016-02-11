-- Start of DDL Script for View CREATOR.PPL_VIEW
-- Generated 11.02.2016 22:55:40 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW ppl_view (
   inv_id,
   inv_id2,
   inv_id3,
   inv_id4,
   pack_id,
   ppli_id,
   ppl_id,
   coming_date,
   invoice_amount,
   left_amount,
   given_amount,
   hol_price,
   hol_sum,
   ruble_price,
   ruble_sum,
   last_price,
   price_pcc,
   preload_last_price,
   pcc_sum,
   price_pcc_pc,
   invoice_data_id,
   col,
   n_id,
   final_price,
   total_sum,
   inv_total_sum,
   stok_total_sum,
   total_profit,
   inv_total_profit,
   stok_total_profit,
   compiled_name_otdel,
   type_subtype,
   f_type,
   f_sub_type,
   country,
   colour,
   bar_code,
   code,
   cust_coef,
   h_code,
   hol_type,
   rus_marks,
   stock_amount,
   compiled_name_pot,
   id_office,
   brief,
   ft_id,
   fst_id,
   col_id,
   len,
   spec_price,
   best_price,
   discount,
   curr_cust_coef,
   remarks )
AS
SELECT PPLI.inv_id,
       ppli.inv_id2,
       ppli.inv_id3,
       ppli.inv_id4,
       ppli.PACK_ID,
       PPL.ppli_id, PPL.ppl_id, PPL.coming_date, PPL.invoice_amount, PPL.left_amount, PPL.given_amount, PPL.hol_price,
       (PPL.hol_price * PPL.invoice_amount) as hol_sum,
       PPL.ruble_price,
       (PPL.ruble_price * PPL.invoice_amount) as RUBLE_SUM,
       PPL.last_price, PPL.price_pcc,
       ppl.PRELOAD_LAST_PRICE,
       (PPL.price_pcc * PPL.invoice_amount) as pcc_sum,
       PPL.price_pcc_pc, PPL.INVOICE_DATA_ID, PPL.COL, PPL.n_id, nvl(PPL.final_price,0) as final_price,
       (PPL.final_price * (PPL.invoice_amount + nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else case when a.quantity < 0 then 0 else a.quantity end end ),0) )) as total_sum,
       (PPL.final_price * PPL.invoice_amount) as inv_total_sum,
       (PPL.final_price * PPL.stock_amount) as stok_total_sum,
       (
         (PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) +
         ((PPL.final_price - PPL.last_price) * nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else case when a.quantity < 0 then 0 else a.quantity end end ),0)
       ) as total_profit
       ,((PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) as inv_total_profit
       ,((PPL.final_price - PPL.last_price) * nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else case when a.quantity < 0 then 0 else a.quantity end end ),0)) as stok_total_profit

--       , nom.compiled_name, nom.great_name, nom.GREAT_NAME_F
       , nom.compiled_name_otdel
       , nom.type_subtype, nom.f_type, nom.f_sub_type, nom.country, nom.colour, nom.bar_code, nom.code
       , nom.cust_coef, nom.h_code, nom.hol_type, nom.rus_marks

       , nvl( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then ppl.stock_amount else case when a.quantity < 0 then 0 else a.quantity end end ,0) stock_amount
       , case when nom.id_departments = 62 then decode(nom.ft_id,113,'Роза ',115,'Роза Эквадор ', 10000167, 'Роза Кения ',2,'Хризантема ','') || nom.f_name_ru || decode(nom.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','')
          else (nom.f_name_ru || '. ' || (case when nom.col_id in (0,1639,2768,2915) then null else nom.colour||'. ' end) || nom.RUS_MARKS)
          end compiled_name_pot

       , PPLI.ID_OFFICE
       , o.brief, nom.ft_id, nom.fst_id, nom.col_id, nom.len
       , ppl.spec_price, ppl.best_price, ppl.discount
       , DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef ) as curr_cust_coef
       , remarks
  FROM
    PREPARE_PRICE_LIST_INDEX PPLI
    , NOMENCLATURE_mat_VIEW NOM
    , prepare_price_list PPL
    , store_main a
    , invoice_register r
    , offices o
  WHERE PPLI.ppli_id = PPL.ppli_id
        and NOM.N_ID = PPL.N_ID
        and PPL.n_id = a.n_id(+)
        and a.store_type(+) = 1
        and ppli.inv_id = r.inv_id(+)
        and PPLI.id_office = nvl(a.id_office,const_office)
        and PPLI.id_office = o.id_office
/

-- Grants for View
GRANT UPDATE ON ppl_view TO new_role
/

-- End of DDL Script for View CREATOR.PPL_VIEW

