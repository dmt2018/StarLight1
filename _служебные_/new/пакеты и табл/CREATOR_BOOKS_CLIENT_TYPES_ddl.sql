-- Start of DDL Script for Table CREATOR.BOOKS_CLIENT_TYPES
-- Generated 31.08.2016 16:47:30 from CREATOR@ORCL

CREATE TABLE books_client_types
    (id_client_types                NUMBER(8,0) NOT NULL,
    name                           VARCHAR2(50 BYTE) NOT NULL,
    info                           VARCHAR2(1024 BYTE),
    t_type                         NUMBER(1,0) DEFAULT 0 ,
    discount                       NUMBER(10,0),
    id_office                      NUMBER(4,0) DEFAULT 1,
    date_change                    DATE DEFAULT sysdate,
    is_contractor                  NUMBER(1,0) DEFAULT 0)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
    BUFFER_POOL KEEP
  )
  NOCACHE
  MONITORING
  ENABLE ROW MOVEMENT
  NOPARALLEL
  LOGGING
/





-- Constraints for BOOKS_CLIENT_TYPES

ALTER TABLE books_client_types
ADD CHECK ("T_TYPE" IS NOT NULL)
/


-- Triggers for BOOKS_CLIENT_TYPES

CREATE OR REPLACE TRIGGER tr_u_books_client_types
 AFTER
  UPDATE
 ON books_client_types
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'books_client_types'
    , 'update'
    , 'NAME='||:OLD.NAME||chr(10)||'INFO='||:OLD.INFO||chr(10)||'t_type='||:OLD.t_type||chr(10)||'t_type='||:OLD.discount
    , 'NAME='||:NEW.NAME||chr(10)||'INFO='||:NEW.INFO||chr(10)||'t_type='||:NEW.t_type||chr(10)||'t_type='||:NEW.discount
    , user
    , :NEW.id_client_types
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_books_client_types
 AFTER
  INSERT
 ON books_client_types
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'books_client_types'
    , 'insert'
    , ''
    , 'NAME='||:NEW.NAME||chr(10)||'INFO='||:NEW.INFO||chr(10)||'t_type='||:NEW.t_type||chr(10)||'t_type='||:NEW.discount
    , user
    , :NEW.id_client_types
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_books_client_types
 AFTER
  DELETE
 ON books_client_types
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'books_client_types'
    , 'delete'
    , 'NAME='||:OLD.NAME||chr(10)||'INFO='||:OLD.INFO||chr(10)||'t_type='||:OLD.t_type||chr(10)||'t_type='||:OLD.discount
    , ''
    , user
    , :OLD.id_client_types
    );
 END;
/


-- Comments for BOOKS_CLIENT_TYPES

COMMENT ON COLUMN books_client_types.is_contractor IS '1-значит контрагент, 0-нет'
/

-- End of DDL Script for Table CREATOR.BOOKS_CLIENT_TYPES

