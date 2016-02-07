-- Start of DDL Script for Sequence CREATOR.DIST_ID
-- Generated 7-май-2012 14:35:27 from CREATOR@STARNEW

CREATE SEQUENCE dist_id
  INCREMENT BY 1
  START WITH 1055
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  NOCACHE
/

GRANT select ON dist_id TO new_role
/
create public synonym dist_id for creator.dist_id
/
-- End of DDL Script for Sequence CREATOR.DIST_ID

