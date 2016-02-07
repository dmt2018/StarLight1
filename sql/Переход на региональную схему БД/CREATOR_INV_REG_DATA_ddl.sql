-- Start of DDL Script for View CREATOR.INV_REG_DATA
-- Generated 10.12.2011 17:52:50 from CREATOR@STARREG

CREATE OR REPLACE VIEW inv_reg_data (
   inv_id,
   ready_pos,
   ready_units,
   ready_sum,
   as_is_pos,
   as_is_units,
   as_is_sum,
   as_is_sum_not_processed,
   done_num,
   past_num )
AS
SELECT
  IR.INV_ID,
  NVL(READY_POS,0)    READY_POS,
  NVL(READY_UNITS,0)  READY_UNITS,
  NVL(READY_SUM,0)    READY_SUM,
  NVL(AS_IS_POS,0)    AS_IS_POS,
  NVL(AS_IS_UNITS,0)  AS_IS_UNITS,
  NVL(AS_IS_SUM,0)    AS_IS_SUM,
  (SELECT NVL(SUM(TOTAL_AMOUNT),0) TA FROM INVOICE_DATA_AS_IS WHERE (RECOGNISED IS NULL) AND (INV_ID = IR.INV_ID)) AS_IS_SUM_NOT_PROCESSED,
  NVL(IDAIA.done_num,0) done_num,
  NVL(IDAIA.past_num,0) past_num
FROM
  INVOICE_REGISTER IR,
  INV_DAT_AGREGATE IDA,
  INV_DAT_AS_IS_AGREGATE IDAIA
WHERE
  IR.INV_ID = IDA.INV_ID(+) AND
  IR.INV_ID = IDAIA.INV_ID(+)
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON inv_reg_data TO new_role
/

-- Comments for INV_REG_DATA

COMMENT ON TABLE inv_reg_data IS 'Общая статистика по инвойсам'
/
create or replace public synonym inv_reg_data for creator.inv_reg_data
/
-- End of DDL Script for View CREATOR.INV_REG_DATA

