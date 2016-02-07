-- Start of DDL Script for Sequence CREATOR.SEQ_WEIGHT
-- Generated 13.12.2011 1:31:58 from CREATOR@STARNEW

CREATE SEQUENCE seq_weight
  INCREMENT BY 1
  START WITH 41
  MINVALUE 1
  MAXVALUE 99999999
  NOCYCLE
  NOORDER
  CACHE 20
/

-- Grants for Sequence
GRANT SELECT ON seq_weight TO new_role
/
create or replace public synonym seq_weight for creator.seq_weight
/
-- End of DDL Script for Sequence CREATOR.SEQ_WEIGHT

