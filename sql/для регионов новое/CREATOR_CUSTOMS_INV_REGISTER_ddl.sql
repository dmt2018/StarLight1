-- Start of DDL Script for Table CREATOR.CUSTOMS_INV_REGISTER
-- Generated 13.12.2011 0:59:55 from CREATOR@STARNEW

CREATE TABLE customs_inv_register
    (inv_id                         NUMBER(10,0) NOT NULL,
    inv_date                       DATE NOT NULL,
    comments                       VARCHAR2(512 BYTE),
    inv_sum                        NUMBER(15,5),
    status                         NUMBER(1,0),
    id_departments                 NUMBER(10,0) NOT NULL,
    s_id_default                   NUMBER(15,0),
    c_id_default                   NUMBER(15,0),
    supplier_date                  DATE,
    supplier_number                VARCHAR2(50 BYTE),
    in_file                        VARCHAR2(100 BYTE),
    truck_date                     DATE,
    ipp_id                         NUMBER(8,0))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_inv_register TO new_role
/
GRANT SELECT ON customs_inv_register TO new_role
/
GRANT UPDATE ON customs_inv_register TO new_role
/




-- Indexes for CUSTOMS_INV_REGISTER

CREATE INDEX customs_inv_id_dept_idx ON customs_inv_register
  (
    id_departments                  ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for CUSTOMS_INV_REGISTER

ALTER TABLE customs_inv_register
ADD CONSTRAINT customs_id_prime PRIMARY KEY (inv_id)
USING INDEX
  TABLESPACE  starlight_i
/


-- Triggers for CUSTOMS_INV_REGISTER

CREATE OR REPLACE TRIGGER tr_u_customs_inv_register
 AFTER
  UPDATE
 ON customs_inv_register
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_register'
    , 'update'
    , 'INV_DATE='||:OLD.INV_DATE||chr(10)||'COMMENTS='||:OLD.COMMENTS||chr(10)||'INV_SUM='||:OLD.INV_SUM||chr(10)||'STATUS='||:OLD.STATUS||chr(10)||'ID_DEPARTMENTS='||:OLD.ID_DEPARTMENTS||chr(10)||'S_ID_DEFAULT='||:OLD.S_ID_DEFAULT||chr(10)||'C_ID_DEFAULT='||:OLD.C_ID_DEFAULT||chr(10)||'SUPPLIER_DATE='||:OLD.SUPPLIER_DATE||chr(10)||'SUPPLIER_NUMBER='||:OLD.SUPPLIER_NUMBER||chr(10)||'IN_FILE='||:OLD.IN_FILE||chr(10)||'TRUCK_DATE='||:OLD.TRUCK_DATE
    , 'INV_DATE='||:NEW.INV_DATE||chr(10)||'COMMENTS='||:NEW.COMMENTS||chr(10)||'INV_SUM='||:NEW.INV_SUM||chr(10)||'STATUS='||:NEW.STATUS||chr(10)||'ID_DEPARTMENTS='||:NEW.ID_DEPARTMENTS||chr(10)||'S_ID_DEFAULT='||:NEW.S_ID_DEFAULT||chr(10)||'C_ID_DEFAULT='||:NEW.C_ID_DEFAULT||chr(10)||'SUPPLIER_DATE='||:NEW.SUPPLIER_DATE||chr(10)||'SUPPLIER_NUMBER='||:NEW.SUPPLIER_NUMBER||chr(10)||'IN_FILE='||:NEW.IN_FILE||chr(10)||'TRUCK_DATE='||:NEW.TRUCK_DATE
    , user
    , :NEW.inv_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_customs_inv_register
 AFTER
  INSERT
 ON customs_inv_register
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_register'
    , 'insert'
    , ''
    , 'INV_DATE='||:NEW.INV_DATE||chr(10)||'COMMENTS='||:NEW.COMMENTS||chr(10)||'INV_SUM='||:NEW.INV_SUM||chr(10)||'STATUS='||:NEW.STATUS||chr(10)||'ID_DEPARTMENTS='||:NEW.ID_DEPARTMENTS||chr(10)||'S_ID_DEFAULT='||:NEW.S_ID_DEFAULT||chr(10)||'C_ID_DEFAULT='||:NEW.C_ID_DEFAULT||chr(10)||'SUPPLIER_DATE='||:NEW.SUPPLIER_DATE||chr(10)||'SUPPLIER_NUMBER='||:NEW.SUPPLIER_NUMBER||chr(10)||'IN_FILE='||:NEW.IN_FILE||chr(10)||'TRUCK_DATE='||:NEW.TRUCK_DATE
    , user
    , :NEW.inv_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_customs_inv_register
 AFTER
  DELETE
 ON customs_inv_register
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_register'
    , 'delete'
    , 'INV_DATE='||:OLD.INV_DATE||chr(10)||'COMMENTS='||:OLD.COMMENTS||chr(10)||'INV_SUM='||:OLD.INV_SUM||chr(10)||'STATUS='||:OLD.STATUS||chr(10)||'ID_DEPARTMENTS='||:OLD.ID_DEPARTMENTS||chr(10)||'S_ID_DEFAULT='||:OLD.S_ID_DEFAULT||chr(10)||'C_ID_DEFAULT='||:OLD.C_ID_DEFAULT||chr(10)||'SUPPLIER_DATE='||:OLD.SUPPLIER_DATE||chr(10)||'SUPPLIER_NUMBER='||:OLD.SUPPLIER_NUMBER||chr(10)||'IN_FILE='||:OLD.IN_FILE||chr(10)||'TRUCK_DATE='||:OLD.TRUCK_DATE
    , ''
    , user
    , :OLD.inv_id
    );
 END;
/


-- Comments for CUSTOMS_INV_REGISTER

COMMENT ON TABLE customs_inv_register IS 'Список инвойсов для таможни'
/
COMMENT ON COLUMN customs_inv_register.c_id_default IS 'Страна по умолчанию (для распознавания)'
/
COMMENT ON COLUMN customs_inv_register.comments IS 'Комментарий'
/
COMMENT ON COLUMN customs_inv_register.id_departments IS 'FK отдела'
/
COMMENT ON COLUMN customs_inv_register.in_file IS 'исходный файл'
/
COMMENT ON COLUMN customs_inv_register.inv_date IS 'дата регистрации инвойса'
/
COMMENT ON COLUMN customs_inv_register.inv_id IS 'PK'
/
COMMENT ON COLUMN customs_inv_register.inv_sum IS 'Сумма инвойса'
/
COMMENT ON COLUMN customs_inv_register.ipp_id IS 'Номер пачки'
/
COMMENT ON COLUMN customs_inv_register.s_id_default IS 'Поставщик по умолчанию (для распознавания)'
/
COMMENT ON COLUMN customs_inv_register.supplier_date IS 'Дата инвойса поставщика'
/
COMMENT ON COLUMN customs_inv_register.supplier_number IS 'Номер инвойся поставщика'
/
COMMENT ON COLUMN customs_inv_register.truck_date IS 'Дата выхода машины'
/
create or replace public synonym customs_inv_register for creator.customs_inv_register
/
-- End of DDL Script for Table CREATOR.CUSTOMS_INV_REGISTER

