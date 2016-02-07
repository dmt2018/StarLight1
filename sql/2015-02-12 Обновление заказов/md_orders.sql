ALTER TABLE ORDERS 
 ADD (
  s_id NUMBER (8, 0)
 )
/
COMMENT ON COLUMN ORDERS.s_id IS 'ID поставщика'
/
