-- Start of DDL Script for View CREATOR.INVOICE_REGISTER_FULL
-- Generated 10.12.2011 17:54:12 from CREATOR@STARREG

CREATE OR REPLACE VIEW invoice_register_full (
   inv_id,
   inv_date,
   comments,
   inv_sum,
   sended_to_warehouse,
   warehouse_sended_date,
   supplier_date,
   supplier_number,
   ipp_id,
   ipp_comment,
   id_departments,
   inv_minus,
   is_minus,
   dept_name,
   invoice_title,
   s_id_default,
   c_id_default,
   minus_inv_id,
   ready_sum,
   as_is_sum,
   as_is_sum_not_processed,
   ready_units,
   as_is_units,
   ready_pos,
   as_is_pos,
   done_num,
   past_num,
   total_sum,
   s_name_ru,
   price,
   price_done,
   id_office,
   brief )
AS
SELECT
  IR.INV_ID,
  IR.INV_DATE,
  IR.COMMENTS,
  IR.INV_SUM,
  IR.SENDED_TO_WAREHOUSE,
  IR.WAREHOUSE_SENDED_DATE,
  IR.SUPPLIER_DATE,
  IR.SUPPLIER_NUMBER,
  IR.IPP_ID,
  TO_CHAR(IPP.IPP_DATE,'DD.MM.YYYY') || ' ' || IPP.IPP_COMMENT as IPP_COMMENT,
  IR.ID_DEPARTMENTS,
  IR.inv_minus,
  case when IR.inv_minus = 0 then 0 else 1 end is_minus,
  DPT.NAME DEPT_NAME,
  IR.COMMENTS || ' (' || TO_CHAR(IR.INV_DATE,'DD.MM.YYYY') || ')' INVOICE_TITLE,
  IR.S_ID_DEFAULT,
  IR.C_ID_DEFAULT,
  IR.minus_inv_id,
  IRD.READY_SUM,
  IRD.AS_IS_SUM,
  IRD.AS_IS_SUM_NOT_PROCESSED,
  IRD.READY_UNITS,
  IRD.AS_IS_UNITS,
  IRD.READY_POS,
  IRD.AS_IS_POS,
  IRD.done_num,
  IRD.past_num,
  (IRD.AS_IS_SUM_NOT_PROCESSED + IRD.READY_SUM) as TOTAL_SUM
  , s.s_name_ru
  , case when a.INV_ID is null then 0 else 1 end price
  , case when a.INV_ID is not null and a.finished =1 then 1 else 0 end price_done
  , ir.id_office, o.brief
FROM INVOICE_REGISTER IR,
     INVOICE_PRICE_PACK IPP,
     BOOKS_DEPARTMENTS DPT,
     INV_REG_DATA IRD,
     SUPPLIERS S, offices o
     , (
        select inv_id, finished from PREPARE_PRICE_LIST_INDEX where inv_id is not null
        union all
        select inv_id2, finished from PREPARE_PRICE_LIST_INDEX where inv_id2 is not null
        union all
        select inv_id3, finished from PREPARE_PRICE_LIST_INDEX where inv_id3 is not null
        union all
        select inv_id4, finished from PREPARE_PRICE_LIST_INDEX where inv_id4 is not null
     ) a
WHERE
  IR.IPP_ID = IPP.IPP_ID(+) AND
  DPT.ID_DEPARTMENTS = IR.ID_DEPARTMENTS AND
  IRD.INV_ID = IR.INV_ID
  and ir.s_id_default = s.s_id
  and ir.inv_id = a.inv_id(+)
  and ir.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON invoice_register_full TO new_role
/

-- Comments for INVOICE_REGISTER_FULL

COMMENT ON TABLE invoice_register_full IS 'Просмотр инвойсов'
/
create or replace public synonym invoice_register_full for creator.invoice_register_full
/
-- End of DDL Script for View CREATOR.INVOICE_REGISTER_FULL

