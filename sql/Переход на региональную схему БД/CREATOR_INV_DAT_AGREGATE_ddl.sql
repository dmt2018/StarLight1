-- Start of DDL Script for View CREATOR.INV_DAT_AGREGATE
-- Generated 10.12.2011 17:51:09 from CREATOR@STARREG

CREATE OR REPLACE VIEW inv_dat_agregate (
   inv_id,
   ready_pos,
   ready_units,
   ready_sum )
AS
SELECT
  INV_ID,
  COUNT(*)        READY_POS,
  SUM(UNITS)      READY_UNITS,
  SUM(TOTAL_SUM)  READY_SUM
FROM INVOICE_DATA
GROUP BY INV_ID WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON inv_dat_agregate TO new_role
/

-- Comments for INV_DAT_AGREGATE

COMMENT ON TABLE inv_dat_agregate IS 'Статистика по распознанным данным инвойсов'
/
create or replace public synonym inv_dat_agregate for creator.inv_dat_agregate
/
-- End of DDL Script for View CREATOR.INV_DAT_AGREGATE

