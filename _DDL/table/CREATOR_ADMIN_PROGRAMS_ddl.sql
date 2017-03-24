-- Start of DDL Script for Table CREATOR.ADMIN_PROGRAMS
-- Generated 30-мар-2016 20:25:57 from CREATOR@STAR2

CREATE TABLE admin_programs
    (id_admin_programs              NUMBER(8,0) NOT NULL,
    name                           VARCHAR2(255 BYTE) NOT NULL,
    info                           VARCHAR2(1024 BYTE),
    program_dll                    VARCHAR2(50 BYTE))
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





-- Constraints for ADMIN_PROGRAMS

ALTER TABLE admin_programs
ADD CONSTRAINT pk_admin_programs PRIMARY KEY (id_admin_programs)
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


-- Triggers for ADMIN_PROGRAMS

CREATE OR REPLACE TRIGGER tr_d_adm_prog
 AFTER
  DELETE
 ON admin_programs
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'admin_programs'
    , 'delete'
    , 'NAME='||:OLD.NAME||chr(10)||'INFO='||:OLD.INFO||chr(10)||'PROGRAM_DLL='||:OLD.PROGRAM_DLL
    , ''
    , user
    , :OLD.ID_ADMIN_PROGRAMS
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_adm_prog
 AFTER
  INSERT
 ON admin_programs
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'admin_programs'
    , 'insert'
    , ''
    , 'NAME='||:NEW.NAME||chr(10)||'INFO='||:NEW.INFO||chr(10)||'PROGRAM_DLL='||:NEW.PROGRAM_DLL
    , user
    , :NEW.ID_ADMIN_PROGRAMS
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_u_adm_prog
 AFTER
  UPDATE
 ON admin_programs
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'admin_programs'
    , 'update'
    , 'NAME='||:OLD.NAME||chr(10)||'INFO='||:OLD.INFO||chr(10)||'PROGRAM_DLL='||:OLD.PROGRAM_DLL
    , 'NAME='||:NEW.NAME||chr(10)||'INFO='||:NEW.INFO||chr(10)||'PROGRAM_DLL='||:NEW.PROGRAM_DLL
    , user
    , :NEW.ID_ADMIN_PROGRAMS
    );
 END;
/


-- End of DDL Script for Table CREATOR.ADMIN_PROGRAMS

