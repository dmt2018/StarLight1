-- Start of DDL Script for Table CREATOR.NOMENCLATURE_SITE_MARKS
-- Generated 16-ноя-2016 17:20:33 from CREATOR@ORCL

CREATE TABLE nomenclature_site_marks
    (n_id                           NUMBER(10,0) NOT NULL,
    remove_from_site               NUMBER(1,0) NOT NULL,
    date_change                    DATE DEFAULT sysdate,
    no_order                       NUMBER(1,0))
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
GRANT DELETE ON nomenclature_site_marks TO new_role
/
GRANT INSERT ON nomenclature_site_marks TO new_role
/
GRANT SELECT ON nomenclature_site_marks TO new_role
/
GRANT UPDATE ON nomenclature_site_marks TO new_role
/




-- Indexes for NOMENCLATURE_SITE_MARKS

CREATE INDEX ix_nsm_n_id ON nomenclature_site_marks
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



-- Comments for NOMENCLATURE_SITE_MARKS

COMMENT ON TABLE nomenclature_site_marks IS 'Пометкиноменклатурыдлясайта'
/
COMMENT ON COLUMN nomenclature_site_marks.n_id IS 'FK номенклатуры'
/

-- End of DDL Script for Table CREATOR.NOMENCLATURE_SITE_MARKS

