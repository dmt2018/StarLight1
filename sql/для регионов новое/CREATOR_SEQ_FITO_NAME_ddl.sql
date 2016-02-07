-- Start of DDL Script for Sequence CREATOR.SEQ_FITO_NAME
-- Generated 13.12.2011 0:58:26 from CREATOR@STARNEW

CREATE SEQUENCE seq_fito_name
  INCREMENT BY 1
  START WITH 7521
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/

-- Grants for Sequence
GRANT ALTER ON seq_fito_name TO new_role
/
GRANT SELECT ON seq_fito_name TO new_role
/
create or replace public synonym seq_fito_name for creator.seq_fito_name
/
-- End of DDL Script for Sequence CREATOR.SEQ_FITO_NAME

