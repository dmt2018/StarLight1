-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INDEX
-- Generated 6-май-2012 22:37:21 from CREATOR@STARNEW

CREATE TABLE distributions_index
    (dist_ind_id                    NUMBER(10,0) NOT NULL,
    description                    VARCHAR2(256),
    dist_date                      DATE NOT NULL,
    id_departments                 NUMBER(10,0) NOT NULL,
    ready                          NUMBER(1,0),
    id_orders                      NUMBER(10,0))
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
  NOCACHE
  MONITORING
/

-- Grants for Table
GRANT INSERT ON distributions_index TO new_role
/
GRANT SELECT ON distributions_index TO new_role
/
GRANT UPDATE ON distributions_index TO new_role
/
create public synonym distributions_index for creator.distributions_index
/




-- Constraints for DISTRIBUTIONS_INDEX

ALTER TABLE distributions_index
ADD CONSTRAINT dist_ind_id_p_key PRIMARY KEY (dist_ind_id)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
/


-- Triggers for DISTRIBUTIONS_INDEX

CREATE OR REPLACE TRIGGER tr_u_distributions_index
 AFTER
  UPDATE
 ON distributions_index
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions_index'
    , 'update'
    , 'DESCRIPTION='||:OLD.DESCRIPTION||chr(10)||'DIST_DATE='||:OLD.DIST_DATE||chr(10)||'ID_DEPARTMENTS='||:OLD.ID_DEPARTMENTS||chr(10)||'READY='||:OLD.READY||chr(10)||'ID_ORDERS='||:OLD.ID_ORDERS
    , 'DESCRIPTION='||:NEW.DESCRIPTION||chr(10)||'DIST_DATE='||:NEW.DIST_DATE||chr(10)||'ID_DEPARTMENTS='||:NEW.ID_DEPARTMENTS||chr(10)||'READY='||:NEW.READY||chr(10)||'ID_ORDERS='||:NEW.ID_ORDERS
    , user
    , :NEW.dist_ind_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_distributions_index
 AFTER
  INSERT
 ON distributions_index
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions_index'
    , 'insert'
    , ''
    , 'DESCRIPTION='||:NEW.DESCRIPTION||chr(10)||'DIST_DATE='||:NEW.DIST_DATE||chr(10)||'ID_DEPARTMENTS='||:NEW.ID_DEPARTMENTS||chr(10)||'READY='||:NEW.READY||chr(10)||'ID_ORDERS='||:NEW.ID_ORDERS
    , user
    , :NEW.dist_ind_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_distributions_index
 AFTER
  DELETE
 ON distributions_index
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions_index'
    , 'delete'
    , 'DESCRIPTION='||:OLD.DESCRIPTION||chr(10)||'DIST_DATE='||:OLD.DIST_DATE||chr(10)||'ID_DEPARTMENTS='||:OLD.ID_DEPARTMENTS||chr(10)||'READY='||:OLD.READY||chr(10)||'ID_ORDERS='||:OLD.ID_ORDERS
    , ''
    , user
    , :OLD.dist_ind_id
    );
 END;
/


-- Comments for DISTRIBUTIONS_INDEX

COMMENT ON TABLE distributions_index IS 'Главная таблица с распределениями'
/
COMMENT ON COLUMN distributions_index.description IS 'Описание'
/
COMMENT ON COLUMN distributions_index.dist_date IS 'Дата распределения'
/
COMMENT ON COLUMN distributions_index.dist_ind_id IS 'PK'
/
COMMENT ON COLUMN distributions_index.id_departments IS 'FK отдел'
/
COMMENT ON COLUMN distributions_index.id_orders IS 'FK заказа'
/
COMMENT ON COLUMN distributions_index.ready IS '1-готов, 0-нет'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INDEX

