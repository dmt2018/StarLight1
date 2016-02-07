-- Start of DDL Script for Table CREATOR.CUSTOMS_WEIGHT
-- Generated 13.12.2011 1:01:13 from CREATOR@STARNEW

CREATE TABLE customs_weight
    (id                             NUMBER(8,0) NOT NULL,
    name_cat                       VARCHAR2(20 BYTE),
    name_cat_ru                    VARCHAR2(20 BYTE),
    stem_weight                    NUMBER(10,4),
    id_dep                         NUMBER(4,0),
    make_info                      NUMBER(1,0) DEFAULT 1,
    cust_regn                      VARCHAR2(15 BYTE),
    orderby                        NUMBER(2,0) DEFAULT 0)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_weight TO new_role
/
GRANT SELECT ON customs_weight TO new_role
/
GRANT UPDATE ON customs_weight TO new_role
/




-- Triggers for CUSTOMS_WEIGHT

CREATE OR REPLACE TRIGGER tr_u_customs_weight
 AFTER
  UPDATE
 ON customs_weight
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight'
    , 'update'
    , 'NAME_CAT='||:OLD.NAME_CAT||chr(10)||'NAME_CAT_RU='||:OLD.NAME_CAT_RU||chr(10)||'STEM_WEIGHT='||:OLD.STEM_WEIGHT||chr(10)||'ID_DEP='||:OLD.ID_DEP||chr(10)||'MAKE_INFO='||:OLD.MAKE_INFO||chr(10)||'CUST_REGN='||:OLD.CUST_REGN||chr(10)||'ORDERBY='||:OLD.ORDERBY
    , 'NAME_CAT='||:NEW.NAME_CAT||chr(10)||'NAME_CAT_RU='||:NEW.NAME_CAT_RU||chr(10)||'STEM_WEIGHT='||:NEW.STEM_WEIGHT||chr(10)||'ID_DEP='||:NEW.ID_DEP||chr(10)||'MAKE_INFO='||:NEW.MAKE_INFO||chr(10)||'CUST_REGN='||:NEW.CUST_REGN||chr(10)||'ORDERBY='||:NEW.ORDERBY
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_customs_weight
 AFTER
  INSERT
 ON customs_weight
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight'
    , 'insert'
    , ''
    , 'NAME_CAT='||:NEW.NAME_CAT||chr(10)||'NAME_CAT_RU='||:NEW.NAME_CAT_RU||chr(10)||'STEM_WEIGHT='||:NEW.STEM_WEIGHT||chr(10)||'ID_DEP='||:NEW.ID_DEP||chr(10)||'MAKE_INFO='||:NEW.MAKE_INFO||chr(10)||'CUST_REGN='||:NEW.CUST_REGN||chr(10)||'ORDERBY='||:NEW.ORDERBY
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_customs_weight
 AFTER
  DELETE
 ON customs_weight
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight'
    , 'delete'
    , 'NAME_CAT='||:OLD.NAME_CAT||chr(10)||'NAME_CAT_RU='||:OLD.NAME_CAT_RU||chr(10)||'STEM_WEIGHT='||:OLD.STEM_WEIGHT||chr(10)||'ID_DEP='||:OLD.ID_DEP||chr(10)||'MAKE_INFO='||:OLD.MAKE_INFO||chr(10)||'CUST_REGN='||:OLD.CUST_REGN||chr(10)||'ORDERBY='||:OLD.ORDERBY
    , ''
    , user
    , :OLD.id
    );
 END;
/


-- Comments for CUSTOMS_WEIGHT

COMMENT ON TABLE customs_weight IS 'Таблица категорий с весами'
/
COMMENT ON COLUMN customs_weight.cust_regn IS 'Таможенный код товара'
/
COMMENT ON COLUMN customs_weight.id IS 'ID'
/
COMMENT ON COLUMN customs_weight.id_dep IS 'отдел'
/
COMMENT ON COLUMN customs_weight.make_info IS '1-делать пояснение, 0-не делать'
/
COMMENT ON COLUMN customs_weight.name_cat IS 'Имя категории поставщика'
/
COMMENT ON COLUMN customs_weight.name_cat_ru IS 'Перевод категории поставщика'
/
COMMENT ON COLUMN customs_weight.orderby IS 'Сортировка'
/
COMMENT ON COLUMN customs_weight.stem_weight IS 'вес стебля'
/
create or replace public synonym customs_weight for creator.customs_weight
/
-- End of DDL Script for Table CREATOR.CUSTOMS_WEIGHT

