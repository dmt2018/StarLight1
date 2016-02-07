-- Start of DDL Script for View CREATOR.INV_DAT_AS_IS_AGREGATE
-- Generated 10.12.2011 17:52:13 from CREATOR@STARREG

CREATE OR REPLACE VIEW inv_dat_as_is_agregate (
   inv_id,
   as_is_pos,
   as_is_units,
   as_is_sum,
   done_num,
   past_num )
AS
SELECT
  INV_ID,
  COUNT(*)          AS_IS_POS,
  SUM(UNITS)        AS_IS_UNITS,
  SUM(TOTAL_AMOUNT) AS_IS_SUM
 , sum(case when recognised = 1 then 1 else 0 end) done_num
 , sum(case when recognised is null then 1 else 0 end) past_num
FROM INVOICE_DATA_AS_IS
GROUP BY INV_ID
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON inv_dat_as_is_agregate TO new_role
/

-- Comments for INV_DAT_AS_IS_AGREGATE

COMMENT ON TABLE inv_dat_as_is_agregate IS 'Статистика по сырым данным инвойса'
/
create or replace public synonym inv_dat_as_is_agregate for creator.inv_dat_as_is_agregate
/
-- End of DDL Script for View CREATOR.INV_DAT_AS_IS_AGREGATE

