-- Start of DDL Script for Table CREATOR.SYNC_FLOWER_SUBTYPES
-- Generated 4-апр-2016 11:34:51 from CREATOR@STAR2

CREATE TABLE sync_flower_subtypes
    (fst_id                         NUMBER(10,0) NOT NULL,
    f_sub_type                     VARCHAR2(50 BYTE) NOT NULL,
    ft_id                          NUMBER(10,0) NOT NULL,
    hol_sub_type                   VARCHAR2(4000 BYTE),
    mnemo                          VARCHAR2(20 BYTE),
    sub_weight                     NUMBER(20,18),
    id_office                      NUMBER(4,0),
    date_change                    DATE,
    price_prefix                   VARCHAR2(50 BYTE),
    tnved                          VARCHAR2(50 BYTE),
    sub_weight_dry                 NUMBER(20,18))
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
  ENABLE ROW MOVEMENT
  NOPARALLEL
  LOGGING
/





-- Indexes for SYNC_FLOWER_SUBTYPES

CREATE UNIQUE INDEX ix_fst_fstid ON sync_flower_subtypes
  (
    fst_id                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- End of DDL Script for Table CREATOR.SYNC_FLOWER_SUBTYPES

