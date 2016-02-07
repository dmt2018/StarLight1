-- Start of DDL Script for Sequence CREATOR.PREP_DIST_ID
-- Generated 7-май-2012 14:34:41 from CREATOR@STARNEW

CREATE SEQUENCE prep_dist_id
  INCREMENT BY 1
  START WITH 27900
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  NOCACHE
/

GRANT select ON prep_dist_id TO new_role
/
create public synonym prep_dist_id for creator.prep_dist_id
/
-- End of DDL Script for Sequence CREATOR.PREP_DIST_ID

