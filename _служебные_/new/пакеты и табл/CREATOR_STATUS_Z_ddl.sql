-- Start of DDL Script for Table CREATOR.STATUS_Z
-- Generated 10.10.2016 17:41:15 from CREATOR@STAR2

CREATE TABLE status_z
    (n_id                           NUMBER(10,0) NOT NULL,
    on_date                        VARCHAR2(100 BYTE),
    nick_                          VARCHAR2(10 BYTE),
    fio_cl                         VARCHAR2(200 BYTE),
    fio_men                        VARCHAR2(200 BYTE),
    n_mash                         VARCHAR2(200 BYTE),
    stat                           VARCHAR2(1 BYTE),
    adr                            VARCHAR2(200 BYTE),
    end_date                       VARCHAR2(200 BYTE),
    fio_kem                        VARCHAR2(200 BYTE),
    fio_komy                       VARCHAR2(200 BYTE))
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
GRANT DELETE ON status_z TO new_role
/
GRANT INSERT ON status_z TO new_role
/
GRANT SELECT ON status_z TO new_role
/
GRANT UPDATE ON status_z TO new_role
/




-- Indexes for STATUS_Z

CREATE INDEX ix_status_z ON status_z
  (
    n_id                            ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table CREATOR.STATUS_Z

