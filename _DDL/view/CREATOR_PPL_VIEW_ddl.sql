-- Start of DDL Script for View CREATOR.PPL_VIEW
-- Generated 23.05.2016 22:52:54 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW ppl_view (
   inv_id,
   inv_id2,
   inv_id3,
   inv_id4,
   pack_id,
   id_office,
   ppli_id,
   ppl_id,
   coming_date,
   invoice_amount,
   left_amount,
   given_amount,
   hol_price,
   ruble_price,
   last_price,
   price_pcc,
   preload_last_price,
   price_pcc_pc,
   invoice_data_id,
   col,
   n_id,
   final_price,
   spec_price,
   best_price,
   discount,
   brief,
   ft_id,
   fst_id,
   col_id,
   len,
   remarks,
   curr_cust_coef,
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
   compiled_name_pot,
   hol_sum,
   ruble_sum,
   pcc_sum,
   inv_total_sum,
   stok_total_sum,
   total_sum,
   total_profit,
   inv_total_profit,
   stok_total_profit,
   stock_amount,
   quantity,
   profit_coeffitient )
AS
SELECT PPLI.inv_id, ppli.inv_id2, ppli.inv_id3, ppli.inv_id4, ppli.PACK_ID, PPLI.ID_OFFICE,
       PPL.ppli_id, PPL.ppl_id, PPL.coming_date, PPL.invoice_amount, PPL.left_amount, PPL.given_amount, PPL.hol_price, PPL.ruble_price, PPL.last_price, PPL.price_pcc, ppl.PRELOAD_LAST_PRICE,
       PPL.price_pcc_pc, PPL.INVOICE_DATA_ID, PPL.COL, PPL.n_id, nvl(PPL.final_price,0) as final_price, ppl.spec_price, ppl.best_price, ppl.discount,
       o.brief, nom.ft_id, nom.fst_id, nom.col_id, nom.len, remarks,
       DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef ) as curr_cust_coef,
       nom.compiled_name_otdel, nom.type_subtype, nom.f_type, nom.f_sub_type, nom.country, nom.colour, nom.bar_code, nom.code, nom.cust_coef, nom.h_code, nom.hol_type, nom.rus_marks
       , case when nom.id_departments = 62 then decode(nom.ft_id,113,'Роза ',115,'Роза Эквадор ', 10000167, 'Роза Кения ',2,'Хризантема ','') || nom.f_name_ru || decode(nom.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','')
          else (nom.f_name_ru || '. ' || (case when nom.col_id in (0,1639,2768,2915) then null else nom.colour||'. ' end) || nom.RUS_MARKS)
          end compiled_name_pot,

       (PPL.hol_price * PPL.invoice_amount) as hol_sum,
       (PPL.ruble_price * PPL.invoice_amount) as RUBLE_SUM,
       (PPL.price_pcc * PPL.invoice_amount) as pcc_sum,
       (PPL.final_price * PPL.invoice_amount) as inv_total_sum,
       (PPL.final_price * PPL.stock_amount) as stok_total_sum,

       ( PPL.final_price * (PPL.invoice_amount + nvl(PPL.stock_amount,0)) ) as total_sum,
       (
         (PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) +
         ((PPL.final_price - PPL.last_price) * nvl(PPL.stock_amount,0)
       ) as total_profit
       ,((PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) as inv_total_profit
       ,((PPL.final_price - PPL.last_price) * nvl(PPL.stock_amount,0)) as stok_total_profit
       , nvl(ppl.stock_amount,0) stock_amount
       , a.quantity
       , ppl.PROFIT_COEFFITIENT
  FROM PREPARE_PRICE_LIST_INDEX PPLI
    inner join prepare_price_list PPL on PPL.ppli_id = PPLI.ppli_id
    inner join NOMENCLATURE_mat_VIEW NOM on NOM.N_ID = PPL.N_ID
    left outer join store_main a on a.n_id = PPL.n_id and a.store_type = 1 and PPLI.id_office = nvl(a.id_office,const_office)
    --left outer join invoice_register r on r.inv_id = ppli.inv_id
    inner join offices o on o.id_office = ppli.id_office
/

-- Grants for View
GRANT UPDATE ON ppl_view TO new_role
/

-- End of DDL Script for View CREATOR.PPL_VIEW

