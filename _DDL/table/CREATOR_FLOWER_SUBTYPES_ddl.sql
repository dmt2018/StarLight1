-- Start of DDL Script for Table CREATOR.FLOWER_SUBTYPES
-- Generated 4-апр-2016 11:34:09 from CREATOR@STAR2

CREATE TABLE flower_subtypes
    (fst_id                         NUMBER(10,0) NOT NULL,
    f_sub_type                     VARCHAR2(50 BYTE) NOT NULL,
    ft_id                          NUMBER(10,0) NOT NULL,
    hol_sub_type                   VARCHAR2(4000 BYTE),
    mnemo                          VARCHAR2(20 BYTE),
    sub_weight                     NUMBER(20,18),
    id_office                      NUMBER(4,0) DEFAULT 1,
    date_change                    DATE DEFAULT sysdate,
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





-- Indexes for FLOWER_SUBTYPES

CREATE INDEX flower_subtypes_ft_id_idx ON flower_subtypes
  (
    ft_id                           ASC
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



-- Constraints for FLOWER_SUBTYPES


ALTER TABLE flower_subtypes
ADD CONSTRAINT fst_primary_key PRIMARY KEY (fst_id)
USING INDEX
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
/


-- Triggers for FLOWER_SUBTYPES

CREATE OR REPLACE TRIGGER tr_d_flower_subtypes
 AFTER
  DELETE
 ON flower_subtypes
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_subtypes'
    , 'delete'
    , 'F_SUB_TYPE='||:OLD.F_SUB_TYPE||chr(10)||'FT_ID='||:OLD.FT_ID||chr(10)||'HOL_SUB_TYPE='||:OLD.HOL_SUB_TYPE||chr(10)||'MNEMO='||:OLD.MNEMO||chr(10)||'SUB_WEIGHT='||:OLD.SUB_WEIGHT
    , ''
    , user
    , :OLD.fst_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_flower_subtypes
 AFTER
  INSERT
 ON flower_subtypes
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_subtypes'
    , 'insert'
    , ''
    , 'F_SUB_TYPE='||:NEW.F_SUB_TYPE||chr(10)||'FT_ID='||:NEW.FT_ID||chr(10)||'HOL_SUB_TYPE='||:NEW.HOL_SUB_TYPE||chr(10)||'MNEMO='||:NEW.MNEMO||chr(10)||'SUB_WEIGHT='||:NEW.SUB_WEIGHT
    , user
    , :NEW.fst_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_u_flower_subtypes
 AFTER
  UPDATE
 ON flower_subtypes
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_subtypes'
    , 'update'
    , 'F_SUB_TYPE='||:OLD.F_SUB_TYPE||chr(10)||'FT_ID='||:OLD.FT_ID||chr(10)||'HOL_SUB_TYPE='||:OLD.HOL_SUB_TYPE||chr(10)||'MNEMO='||:OLD.MNEMO||chr(10)||'SUB_WEIGHT='||:OLD.SUB_WEIGHT
    , 'F_SUB_TYPE='||:NEW.F_SUB_TYPE||chr(10)||'FT_ID='||:NEW.FT_ID||chr(10)||'HOL_SUB_TYPE='||:NEW.HOL_SUB_TYPE||chr(10)||'MNEMO='||:NEW.MNEMO||chr(10)||'SUB_WEIGHT='||:NEW.SUB_WEIGHT
    , user
    , :NEW.fst_id
    );
 END;
/


-- Comments for FLOWER_SUBTYPES

COMMENT ON TABLE flower_subtypes IS 'Подтипы товара'
/
COMMENT ON COLUMN flower_subtypes.f_sub_type IS 'Название подтипа'
/
COMMENT ON COLUMN flower_subtypes.fst_id IS 'PK'
/
COMMENT ON COLUMN flower_subtypes.ft_id IS 'FK типа'
/
COMMENT ON COLUMN flower_subtypes.hol_sub_type IS 'Название подтипа поставщика'
/
COMMENT ON COLUMN flower_subtypes.price_prefix IS 'Префикс к названию в прайсе'
/
COMMENT ON COLUMN flower_subtypes.sub_weight IS 'вес стебля'
/
COMMENT ON COLUMN flower_subtypes.sub_weight_dry IS 'сухой вес стебля'
/
COMMENT ON COLUMN flower_subtypes.tnved IS 'Код ТН ВЕД'
/

-- End of DDL Script for Table CREATOR.FLOWER_SUBTYPES

-- Foreign Key
ALTER TABLE flower_subtypes
ADD CONSTRAINT fk_subtype_type FOREIGN KEY (ft_id)
REFERENCES flower_types (ft_id)
/
-- End of DDL script for Foreign Key(s)
