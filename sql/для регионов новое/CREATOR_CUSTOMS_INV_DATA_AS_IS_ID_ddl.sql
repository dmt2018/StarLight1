-- Start of DDL Script for Sequence CREATOR.CUSTOMS_INV_DATA_AS_IS_ID
-- Generated 13.12.2011 1:32:59 from CREATOR@STARNEW

CREATE SEQUENCE customs_inv_data_as_is_id
  INCREMENT BY 1
  START WITH 13001
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/

-- Grants for Sequence
GRANT ALTER ON customs_inv_data_as_is_id TO new_role
/
GRANT SELECT ON customs_inv_data_as_is_id TO new_role
/
create or replace public synonym customs_inv_data_as_is_id for creator.customs_inv_data_as_is_id
/
-- End of DDL Script for Sequence CREATOR.CUSTOMS_INV_DATA_AS_IS_ID

