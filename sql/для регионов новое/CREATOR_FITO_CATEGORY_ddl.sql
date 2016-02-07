-- Start of DDL Script for Table CREATOR.FITO_CATEGORY
-- Generated 13.12.2011 1:24:15 from CREATOR@STARNEW

CREATE TABLE fito_category
    (id                             NUMBER(8,0) ,
    name_eng                       VARCHAR2(30 BYTE),
    name_ru                        VARCHAR2(30 BYTE),
    id_dep                         NUMBER(4,0),
    name_eng_full                  VARCHAR2(30 BYTE))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON fito_category TO new_role
/
GRANT INSERT ON fito_category TO new_role
/
GRANT SELECT ON fito_category TO new_role
/
GRANT UPDATE ON fito_category TO new_role
/




-- Constraints for FITO_CATEGORY

ALTER TABLE fito_category
ADD CONSTRAINT pk_fito_category PRIMARY KEY (id)
USING INDEX
  TABLESPACE  starlight_i
/

ALTER TABLE fito_category
ADD CONSTRAINT u_fito_name UNIQUE (name_eng)
USING INDEX
  TABLESPACE  starlight_i
/


-- Triggers for FITO_CATEGORY

CREATE OR REPLACE TRIGGER tr_u_fito_category
 AFTER
  UPDATE
 ON fito_category
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'fito_category'
    , 'update'
    , 'NAME_ENG='||:OLD.NAME_ENG||chr(10)||'NAME_RU='||:OLD.NAME_RU||chr(10)||'ID_DEP='||:OLD.ID_DEP||chr(10)||'NAME_ENG_FULL='||:OLD.NAME_ENG_FULL
    , 'NAME_ENG='||:NEW.NAME_ENG||chr(10)||'NAME_RU='||:NEW.NAME_RU||chr(10)||'ID_DEP='||:NEW.ID_DEP||chr(10)||'NAME_ENG_FULL='||:NEW.NAME_ENG_FULL
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_fito_category
 AFTER
  INSERT
 ON fito_category
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'fito_category'
    , 'insert'
    , ''
    , 'NAME_ENG='||:NEW.NAME_ENG||chr(10)||'NAME_RU='||:NEW.NAME_RU||chr(10)||'ID_DEP='||:NEW.ID_DEP||chr(10)||'NAME_ENG_FULL='||:NEW.NAME_ENG_FULL
    , user
    , :NEW.id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_fito_category
 AFTER
  DELETE
 ON fito_category
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'fito_category'
    , 'delete'
    , 'NAME_ENG='||:OLD.NAME_ENG||chr(10)||'NAME_RU='||:OLD.NAME_RU||chr(10)||'ID_DEP='||:OLD.ID_DEP||chr(10)||'NAME_ENG_FULL='||:OLD.NAME_ENG_FULL
    , ''
    , user
    , :OLD.id
    );
 END;
/


-- Comments for FITO_CATEGORY

COMMENT ON TABLE fito_category IS 'Таблица с переводом фито категорий'
/
COMMENT ON COLUMN fito_category.id IS 'PK'
/
COMMENT ON COLUMN fito_category.id_dep IS 'Отдел'
/
COMMENT ON COLUMN fito_category.name_eng IS 'Название на латинском'
/
COMMENT ON COLUMN fito_category.name_ru IS 'Перевод'
/
create or replace public synonym fito_category for creator.fito_category
/
-- End of DDL Script for Table CREATOR.FITO_CATEGORY

