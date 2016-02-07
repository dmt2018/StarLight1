-- Start of DDL Script for Sequence CREATOR.DIST_IND_ID
-- Generated 7-май-2012 14:13:04 from CREATOR@STARNEW

CREATE SEQUENCE dist_ind_id
  INCREMENT BY 1
  START WITH 29
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  NOCACHE
/
GRANT select ON dist_ind_id TO new_role
/
create public synonym dist_ind_id for creator.dist_ind_id
/
-- End of DDL Script for Sequence CREATOR.DIST_IND_ID

