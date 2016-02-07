-- Start of DDL Script for Table CREATOR.CUSTOMS_WEIGHT_FORMULA
-- Generated 13.12.2011 1:29:54 from CREATOR@STARNEW

CREATE TABLE customs_weight_formula
    (id                             NUMBER(8,0) NOT NULL,
    id_w                           NUMBER(8,0) NOT NULL,
    fo_name                        VARCHAR2(30 BYTE),
    fo_field                       NUMBER(1,0),
    fo_rule                        NUMBER(2,0),
    fo_value                       VARCHAR2(20 BYTE),
    v_weight                       NUMBER(10,4) DEFAULT 1,
    orderby                        NUMBER(2,0) DEFAULT 0,
    compiled_str                   VARCHAR2(1024 BYTE))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON customs_weight_formula TO new_role
/
GRANT SELECT ON customs_weight_formula TO new_role
/
GRANT UPDATE ON customs_weight_formula TO new_role
/
create or replace public synonym customs_weight_formula for creator.customs_weight_formula
/



-- Triggers for CUSTOMS_WEIGHT_FORMULA

CREATE OR REPLACE TRIGGER tr_u_customs_weight_formula
 AFTER
  UPDATE
 ON customs_weight_formula
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight_formula'
    , 'update'
    , 'ID_W='||:OLD.ID_W||chr(10)||'FO_NAME='||:OLD.FO_NAME||chr(10)||'FO_FIELD='||:OLD.FO_FIELD||chr(10)||'FO_RULE='||:OLD.FO_RULE||chr(10)||'FO_VALUE='||:OLD.FO_VALUE||chr(10)||'V_WEIGHT='||:OLD.V_WEIGHT||chr(10)||'ORDERBY='||:OLD.ORDERBY||chr(10)||'COMPILED_STR='||:OLD.COMPILED_STR
    , 'ID_W='||:NEW.ID_W||chr(10)||'FO_NAME='||:NEW.FO_NAME||chr(10)||'FO_FIELD='||:NEW.FO_FIELD||chr(10)||'FO_RULE='||:NEW.FO_RULE||chr(10)||'FO_VALUE='||:NEW.FO_VALUE||chr(10)||'V_WEIGHT='||:NEW.V_WEIGHT||chr(10)||'ORDERBY='||:NEW.ORDERBY||chr(10)||'COMPILED_STR='||:NEW.COMPILED_STR
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_customs_weight_formula
 AFTER
  INSERT
 ON customs_weight_formula
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight_formula'
    , 'insert'
    , ''
    , 'ID_W='||:NEW.ID_W||chr(10)||'FO_NAME='||:NEW.FO_NAME||chr(10)||'FO_FIELD='||:NEW.FO_FIELD||chr(10)||'FO_RULE='||:NEW.FO_RULE||chr(10)||'FO_VALUE='||:NEW.FO_VALUE||chr(10)||'V_WEIGHT='||:NEW.V_WEIGHT||chr(10)||'ORDERBY='||:NEW.ORDERBY||chr(10)||'COMPILED_STR='||:NEW.COMPILED_STR
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_customs_weight_formula
 AFTER
  DELETE
 ON customs_weight_formula
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_weight_formula'
    , 'delete'
    , 'ID_W='||:OLD.ID_W||chr(10)||'FO_NAME='||:OLD.FO_NAME||chr(10)||'FO_FIELD='||:OLD.FO_FIELD||chr(10)||'FO_RULE='||:OLD.FO_RULE||chr(10)||'FO_VALUE='||:OLD.FO_VALUE||chr(10)||'V_WEIGHT='||:OLD.V_WEIGHT||chr(10)||'ORDERBY='||:OLD.ORDERBY||chr(10)||'COMPILED_STR='||:OLD.COMPILED_STR
    , ''
    , user
    , :OLD.id
    );
 END;
/


-- Comments for CUSTOMS_WEIGHT_FORMULA

COMMENT ON TABLE customs_weight_formula IS 'Таблица с формулами для таможенных типов'
/
COMMENT ON COLUMN customs_weight_formula.compiled_str IS 'собранное по условию SQL выражение'
/
COMMENT ON COLUMN customs_weight_formula.fo_field IS 'на поле: 0-название, 1-длина'
/
COMMENT ON COLUMN customs_weight_formula.fo_name IS 'название формулы'
/
COMMENT ON COLUMN customs_weight_formula.fo_rule IS 'правило: 0-содержит, 1-равно, 2-меньше, 3-больше'
/
COMMENT ON COLUMN customs_weight_formula.fo_value IS 'значение'
/
COMMENT ON COLUMN customs_weight_formula.id IS 'PK'
/
COMMENT ON COLUMN customs_weight_formula.id_w IS 'FK типов'
/
COMMENT ON COLUMN customs_weight_formula.orderby IS 'сортировка'
/
COMMENT ON COLUMN customs_weight_formula.v_weight IS 'вес (при необходимости)'
/

-- End of DDL Script for Table CREATOR.CUSTOMS_WEIGHT_FORMULA

