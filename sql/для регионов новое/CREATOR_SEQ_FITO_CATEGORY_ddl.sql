-- Start of DDL Script for Sequence CREATOR.SEQ_FITO_CATEGORY
-- Generated 13.12.2011 1:29:10 from CREATOR@STARNEW

CREATE SEQUENCE seq_fito_category
  INCREMENT BY 1
  START WITH 3921
  MINVALUE 1
  MAXVALUE 99999999
  NOCYCLE
  NOORDER
  CACHE 20
/

-- Grants for Sequence
GRANT SELECT ON seq_fito_category TO new_role
/
create or replace public synonym seq_fito_category for creator.seq_fito_category
/
-- End of DDL Script for Sequence CREATOR.SEQ_FITO_CATEGORY

