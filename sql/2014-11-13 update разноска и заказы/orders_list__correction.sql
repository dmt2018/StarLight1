ALTER TABLE ORDERS_LIST 
 ADD (
  CORRECTION NUMBER (8, 0) DEFAULT NULL
 )
/
COMMENT ON COLUMN ORDERS_LIST.CORRECTION IS 'Коррекция товара'
/

update orders_list set correction = null

