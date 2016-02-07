-- Start of DDL Script for Table CREATOR.FLOWER_FITO_ALL_NAMES
-- Generated 13.12.2011 0:55:45 from CREATOR@STARNEW

CREATE TABLE flower_fito_all_names
    (fito_id                        NUMBER(10,0) ,
    fito_name                      VARCHAR2(100 BYTE),
    f_name                         VARCHAR2(100 BYTE),
    name_code                      VARCHAR2(20 BYTE) DEFAULT '0',
    id_dep                         NUMBER(4,0))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON flower_fito_all_names TO new_role
/
GRANT INSERT ON flower_fito_all_names TO new_role
/
GRANT SELECT ON flower_fito_all_names TO new_role
/
GRANT UPDATE ON flower_fito_all_names TO new_role
/




-- Indexes for FLOWER_FITO_ALL_NAMES

CREATE UNIQUE INDEX ux_fito_names_trans ON flower_fito_all_names
  (
    UPPER("F_NAME") ASC,
    UPPER("NAME_CODE") ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for FLOWER_FITO_ALL_NAMES

ALTER TABLE flower_fito_all_names
ADD CONSTRAINT pk_fito_names_all PRIMARY KEY (fito_id)
USING INDEX
  TABLESPACE  starlight_i
/


-- Triggers for FLOWER_FITO_ALL_NAMES

CREATE OR REPLACE TRIGGER tr_u_flower_fito_all_names
 AFTER
  UPDATE
 ON flower_fito_all_names
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_fito_all_names'
    , 'update'
    , 'ID_DEP='||:OLD.ID_DEP||chr(10)||'FITO_NAME='||:OLD.FITO_NAME||chr(10)||'F_NAME='||:OLD.F_NAME||chr(10)||'NAME_CODE='||:OLD.NAME_CODE
    , 'ID_DEP='||:NEW.ID_DEP||chr(10)||'FITO_NAME='||:NEW.FITO_NAME||chr(10)||'F_NAME='||:NEW.F_NAME||chr(10)||'NAME_CODE='||:NEW.NAME_CODE
    , user
    , :NEW.fito_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_flower_fito_all_names
 AFTER
  INSERT
 ON flower_fito_all_names
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_fito_all_names'
    , 'insert'
    , ''
    , 'ID_DEP='||:NEW.ID_DEP||chr(10)||'FITO_NAME='||:NEW.FITO_NAME||chr(10)||'F_NAME='||:NEW.F_NAME||chr(10)||'NAME_CODE='||:NEW.NAME_CODE
    , user
    , :NEW.fito_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_flower_fito_all_names
 AFTER
  DELETE
 ON flower_fito_all_names
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'flower_fito_all_names'
    , 'delete'
    , 'ID_DEP='||:OLD.ID_DEP||chr(10)||'FITO_NAME='||:OLD.FITO_NAME||chr(10)||'F_NAME='||:OLD.F_NAME||chr(10)||'NAME_CODE='||:OLD.NAME_CODE
    , ''
    , user
    , :OLD.fito_id
    );
 END;
/


-- Comments for FLOWER_FITO_ALL_NAMES

COMMENT ON TABLE flower_fito_all_names IS 'Перевод названий товара поставщика для ФИТО. Для новой версии названий.'
/
COMMENT ON COLUMN flower_fito_all_names.f_name IS 'Название поставщика'
/
COMMENT ON COLUMN flower_fito_all_names.fito_id IS 'PK'
/
COMMENT ON COLUMN flower_fito_all_names.fito_name IS 'ФИТО перевод'
/
COMMENT ON COLUMN flower_fito_all_names.name_code IS 'Аукционный код'
/
create or replace public synonym flower_fito_all_names for creator.flower_fito_all_names
/

-- End of DDL Script for Table CREATOR.FLOWER_FITO_ALL_NAMES

