-- Start of DDL Script for View CREATOR.PPL_VIEW
-- Generated 10.12.2011 17:56:57 from CREATOR@STARREG

CREATE OR REPLACE VIEW ppl_view (
   inv_id,
   inv_id2,
   inv_id3,
   inv_id4,
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
   compiled_name,
   great_name,
   great_name_f,
   cust_coef,
   h_code,
   hol_type,
   stock_amount,
   rus_marks,
   compiled_name_pot,
   type_subtype,
   f_type,
   id_office,
   brief )
AS
SELECT PPLI.inv_id,
       ppli.inv_id2,
       ppli.inv_id3,
       ppli.inv_id4,
       PPL.ppli_id, PPL.ppl_id, PPL.coming_date, PPL.invoice_amount, PPL.left_amount, PPL.given_amount, PPL.hol_price,
       (PPL.hol_price * PPL.invoice_amount) as hol_sum,
       PPL.ruble_price,
       (PPL.ruble_price * PPL.invoice_amount) as RUBLE_SUM,
       PPL.last_price, PPL.price_pcc,
       (PPL.price_pcc * PPL.invoice_amount) as pcc_sum,
       PPL.price_pcc_pc, PPL.INVOICE_DATA_ID, PPL.COL, PPL.n_id, PPL.final_price,
       (PPL.final_price * (PPL.invoice_amount + nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else a.quantity end ),0) )) as total_sum,
       (PPL.final_price * PPL.invoice_amount) as inv_total_sum,
       (PPL.final_price * PPL.stock_amount) as stok_total_sum,
       (
         (PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) +
         ((PPL.final_price - PPL.last_price) * nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else a.quantity end ),0)
       ) as total_profit
       ,((PPL.final_price - PPL.price_pcc * DECODE( PPLI.USE_CUST_COEF, 0, 1, NOM.cust_coef)) * PPL.invoice_amount) as inv_total_profit
       ,((PPL.final_price - PPL.last_price) * nvl(( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then PPL.stock_amount else a.quantity end ),0)) as stok_total_profit

       , nom.compiled_name, nom.great_name, nom.GREAT_NAME_F, nom.cust_coef, nom.h_code, nom.hol_type

       , nvl( case when r.inv_id > 0 and r.sended_to_warehouse = 1 then ppl.stock_amount else a.quantity end ,0) stock_amount

       , nom.rus_marks
       , (nom.f_name_ru || '. ' || (case when nom.col_id in (0,1639,2768,2915) then null else nom.colour||'. ' end) || nom.RUS_MARKS /*decode(nom.len,0,'',nom.len) || case when nom.diameter > 0 then '/'||nom.diameter else null end*/) compiled_name_pot
       , nom.type_subtype, nom.f_type
       , PPLI.ID_OFFICE
       , o.brief
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
        and PPLI.id_office = o.id_office
/

-- Grants for View
GRANT UPDATE ON ppl_view TO new_role
/
create or replace public synonym ppl_view for creator.ppl_view
/
-- End of DDL Script for View CREATOR.PPL_VIEW

