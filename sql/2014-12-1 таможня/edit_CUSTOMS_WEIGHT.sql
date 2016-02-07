ALTER TABLE CUSTOMS_WEIGHT 
 ADD (
  weight_pack NUMBER (8, 4),
  weight_tank NUMBER (8, 4)
 )
/
COMMENT ON COLUMN CUSTOMS_WEIGHT.weight_pack IS 'Вес упаковки'
/
COMMENT ON COLUMN CUSTOMS_WEIGHT.weight_tank IS 'Вес бака'
/
