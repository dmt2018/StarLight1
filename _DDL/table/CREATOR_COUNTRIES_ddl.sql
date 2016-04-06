-- Start of DDL Script for Table CREATOR.COUNTRIES
-- Generated 6-апр-2016 10:54:52 from CREATOR@STAR2

CREATE TABLE countries
    (c_id                           NUMBER(8,0) NOT NULL,
    country                        VARCHAR2(50 BYTE) NOT NULL,
    country_eng                    VARCHAR2(50 BYTE),
    buh_code                       VARCHAR2(10 BYTE),
    mnemo                          VARCHAR2(10 BYTE))
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





-- Indexes for COUNTRIES

CREATE UNIQUE INDEX coun_primary_key_1 ON countries
  (
    c_id                            ASC
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



-- Constraints for COUNTRIES

ALTER TABLE countries
ADD CONSTRAINT c_id_p_key PRIMARY KEY (c_id)
/


-- Triggers for COUNTRIES

CREATE OR REPLACE TRIGGER tr_d_countries
 AFTER
  DELETE
 ON countries
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'countries'
    , 'delete'
    , 'country='||:OLD.country||chr(10)||'country_eng='||:OLD.country_eng
    , ''
    , user
    , :OLD.c_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_countries
 AFTER
  INSERT
 ON countries
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'countries'
    , 'insert'
    , ''
    , 'country='||:NEW.country||chr(10)||'country_eng='||:NEW.country_eng
    , user
    , :NEW.c_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_u_countries
 AFTER
  UPDATE
 ON countries
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'countries'
    , 'update'
    , 'country='||:OLD.country||chr(10)||'country_eng='||:OLD.country_eng
    , 'country='||:NEW.country||chr(10)||'country_eng='||:NEW.country_eng
    , user
    , :NEW.c_id
    );
 END;
/


-- End of DDL Script for Table CREATOR.COUNTRIES

