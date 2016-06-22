-- Start of DDL Script for Table CREATOR.PICTURES
-- Generated 22-θών-2016 17:34:39 from CREATOR@STAR2

CREATE TABLE pictures
    (date_change                    VARCHAR2(30 BYTE) NOT NULL)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  NOPARALLEL
  LOGGING
/

-- Grants for Table
GRANT DELETE ON pictures TO new_role
/
GRANT INSERT ON pictures TO new_role
/
GRANT SELECT ON pictures TO new_role
/
GRANT UPDATE ON pictures TO new_role
/




-- End of DDL Script for Table CREATOR.PICTURES

