-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS
-- Generated 7-май-2012 14:14:17 from CREATOR@STARNEW

CREATE TABLE distributions
    (dist_ind_id                    NUMBER(10,0) NOT NULL,
    dist_id                        NUMBER(10,0) NOT NULL,
    n_id                           NUMBER(10,0) NOT NULL,
    quantity                       NUMBER(10,0) NOT NULL,
    prep_dist_id                   NUMBER(10,0) NOT NULL,
    id_orders_list                 NUMBER(10,0) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON distributions TO new_role
/
GRANT SELECT ON distributions TO new_role
/
GRANT UPDATE ON distributions TO new_role
/
create public synonym distributions for creator.distributions
/



-- Constraints for DISTRIBUTIONS

ALTER TABLE distributions
ADD CONSTRAINT dist_id_p_key PRIMARY KEY (dist_id)
USING INDEX
  TABLESPACE  starlight_i
/




-- Triggers for DISTRIBUTIONS

CREATE OR REPLACE TRIGGER tr_u_distributions
 AFTER
  UPDATE
 ON distributions
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions'
    , 'update'
    , 'DIST_IND_ID='||:OLD.DIST_IND_ID||chr(10)||'N_ID='||:OLD.N_ID||chr(10)||'QUANTITY='||:OLD.QUANTITY||chr(10)||'PREP_DIST_ID='||:OLD.PREP_DIST_ID||chr(10)||'ID_ORDERS_LIST='||:OLD.ID_ORDERS_LIST
    , 'DIST_IND_ID='||:NEW.DIST_IND_ID||chr(10)||'N_ID='||:NEW.N_ID||chr(10)||'QUANTITY='||:NEW.QUANTITY||chr(10)||'PREP_DIST_ID='||:NEW.PREP_DIST_ID||chr(10)||'ID_ORDERS_LIST='||:NEW.ID_ORDERS_LIST
    , user
    , :NEW.dist_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_distributions
 AFTER
  INSERT
 ON distributions
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions'
    , 'insert'
    , ''
    , 'DIST_IND_ID='||:NEW.DIST_IND_ID||chr(10)||'N_ID='||:NEW.N_ID||chr(10)||'QUANTITY='||:NEW.QUANTITY||chr(10)||'PREP_DIST_ID='||:NEW.PREP_DIST_ID||chr(10)||'ID_ORDERS_LIST='||:NEW.ID_ORDERS_LIST
    , user
    , :NEW.dist_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_distributions
 AFTER
  DELETE
 ON distributions
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'distributions'
    , 'delete'
    , 'DIST_IND_ID='||:OLD.DIST_IND_ID||chr(10)||'N_ID='||:OLD.N_ID||chr(10)||'QUANTITY='||:OLD.QUANTITY||chr(10)||'PREP_DIST_ID='||:OLD.PREP_DIST_ID||chr(10)||'ID_ORDERS_LIST='||:OLD.ID_ORDERS_LIST
    , ''
    , user
    , :OLD.dist_id
    );
 END;
/


-- Comments for DISTRIBUTIONS

COMMENT ON TABLE distributions IS 'Позиции в распределении'
/
COMMENT ON COLUMN distributions.dist_id IS 'PK'
/
COMMENT ON COLUMN distributions.dist_ind_id IS 'FK распределения'
/
COMMENT ON COLUMN distributions.id_orders_list IS 'FK клиента в заказе'
/
COMMENT ON COLUMN distributions.n_id IS 'FK номенклатуры'
/
COMMENT ON COLUMN distributions.prep_dist_id IS 'FK prepare_distribution'
/
COMMENT ON COLUMN distributions.quantity IS 'количетво'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS

-- Foreign Key
ALTER TABLE distributions
ADD CONSTRAINT dist_ind_id_f_key FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id) ON DELETE CASCADE
/
ALTER TABLE distributions
ADD CONSTRAINT prep_dist_id FOREIGN KEY (prep_dist_id)
REFERENCES prepare_distribution (prep_dist_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
