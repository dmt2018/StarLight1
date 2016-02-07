-- Start of DDL Script for Sequence CREATOR.PREP_DIST_ID
-- Generated 26.03.2015 0:35:44 from CREATOR@STAR_NEW

CREATE SEQUENCE seq_PPLCP_ID
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  NOCACHE
/

-- Grants for Sequence
GRANT SELECT ON seq_PPLCP_ID TO new_role
/

create public synonym seq_PPLCP_ID for creator.seq_PPLCP_ID
/

-- End of DDL Script for Sequence CREATOR.PREP_DIST_ID

