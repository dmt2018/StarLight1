-- Start of DDL Script for Table CREATOR.CUSTOMS_INV_DATA_AS_IS
-- Generated 13.12.2011 1:25:37 from CREATOR@STARNEW

CREATE TABLE customs_inv_data_as_is
    (inv_id                         NUMBER NOT NULL,
    invoice_data_as_is_id          NUMBER(16,0) NOT NULL,
    order_number                   NUMBER,
    trucks                         VARCHAR2(30 BYTE),
    packing_marks                  VARCHAR2(30 BYTE),
    packing_amount                 NUMBER,
    amount_in_the_pack             NUMBER,
    units                          NUMBER,
    price                          NUMBER(8,2),
    summ                           NUMBER(8,2),
    title                          VARCHAR2(50 BYTE),
    description                    VARCHAR2(150 BYTE),
    hol_country                    VARCHAR2(50 BYTE),
    hol_sub_type                   VARCHAR2(50 BYTE),
    pd                             VARCHAR2(30 BYTE),
    diametr                        NUMBER(4,0),
    height                         NUMBER(4,0),
    trolley                        NUMBER(4,0) DEFAULT 0,
    recognised                     NUMBER(1,0),
    date_in                        DATE,
    h_code                         VARCHAR2(15 BYTE),
    upack                          VARCHAR2(10 BYTE),
    src_name                       VARCHAR2(50 BYTE),
    src_trolley                    VARCHAR2(20 BYTE))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_inv_data_as_is TO new_role
/
GRANT SELECT ON customs_inv_data_as_is TO new_role
/
GRANT UPDATE ON customs_inv_data_as_is TO new_role
/




-- Indexes for CUSTOMS_INV_DATA_AS_IS

CREATE INDEX ix_inv_id_asis_cust ON customs_inv_data_as_is
  (
    inv_id                          ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for CUSTOMS_INV_DATA_AS_IS

ALTER TABLE customs_inv_data_as_is
ADD CONSTRAINT pk_cust_inv_dat_asis PRIMARY KEY (invoice_data_as_is_id)
USING INDEX
  TABLESPACE  starlight_i
/



-- Triggers for CUSTOMS_INV_DATA_AS_IS

CREATE OR REPLACE TRIGGER tr_u_customs_inv_data_as_is
 AFTER
  UPDATE
 ON customs_inv_data_as_is
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_data_as_is'
    , 'update'
    , 'INV_ID='||:OLD.INV_ID||chr(10)||'ORDER_NUMBER='||:OLD.ORDER_NUMBER||chr(10)||'TRUCKS='||:OLD.TRUCKS||chr(10)||'PACKING_MARKS='||:OLD.PACKING_MARKS||chr(10)||'PACKING_AMOUNT='||:OLD.PACKING_AMOUNT||chr(10)||'AMOUNT_IN_THE_PACK='||:OLD.AMOUNT_IN_THE_PACK||chr(10)||'UNITS='||:OLD.UNITS||chr(10)||'PRICE='||:OLD.PRICE||chr(10)||'SUMM='||:OLD.SUMM||chr(10)||'TITLE='||:OLD.TITLE||chr(10)||'DESCRIPTION='||:OLD.DESCRIPTION||chr(10)||'HOL_COUNTRY='||:OLD.HOL_COUNTRY||chr(10)||'HOL_SUB_TYPE='||:OLD.HOL_SUB_TYPE||chr(10)||'PD='||:OLD.PD||chr(10)||'DIAMETR='||:OLD.DIAMETR||chr(10)||'HEIGHT='||:OLD.HEIGHT||chr(10)||'TROLLEY='||:OLD.TROLLEY||chr(10)||'RECOGNISED='||:OLD.RECOGNISED||chr(10)||'DATE_IN='||:OLD.DATE_IN||chr(10)||'H_CODE='||:OLD.H_CODE||chr(10)||'UPACK='||:OLD.UPACK
    , 'INV_ID='||:NEW.INV_ID||chr(10)||'ORDER_NUMBER='||:NEW.ORDER_NUMBER||chr(10)||'TRUCKS='||:NEW.TRUCKS||chr(10)||'PACKING_MARKS='||:NEW.PACKING_MARKS||chr(10)||'PACKING_AMOUNT='||:NEW.PACKING_AMOUNT||chr(10)||'AMOUNT_IN_THE_PACK='||:NEW.AMOUNT_IN_THE_PACK||chr(10)||'UNITS='||:NEW.UNITS||chr(10)||'PRICE='||:NEW.PRICE||chr(10)||'SUMM='||:NEW.SUMM||chr(10)||'TITLE='||:NEW.TITLE||chr(10)||'DESCRIPTION='||:NEW.DESCRIPTION||chr(10)||'HOL_COUNTRY='||:NEW.HOL_COUNTRY||chr(10)||'HOL_SUB_TYPE='||:NEW.HOL_SUB_TYPE||chr(10)||'PD='||:NEW.PD||chr(10)||'DIAMETR='||:NEW.DIAMETR||chr(10)||'HEIGHT='||:NEW.HEIGHT||chr(10)||'TROLLEY='||:NEW.TROLLEY||chr(10)||'RECOGNISED='||:NEW.RECOGNISED||chr(10)||'DATE_IN='||:NEW.DATE_IN||chr(10)||'H_CODE='||:NEW.H_CODE||chr(10)||'UPACK='||:NEW.UPACK
    , user
    , :NEW.invoice_data_as_is_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_customs_inv_data_as_is
 AFTER
  INSERT
 ON customs_inv_data_as_is
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_data_as_is'
    , 'insert'
    , ''
    , 'INV_ID='||:NEW.INV_ID||chr(10)||'ORDER_NUMBER='||:NEW.ORDER_NUMBER||chr(10)||'TRUCKS='||:NEW.TRUCKS||chr(10)||'PACKING_MARKS='||:NEW.PACKING_MARKS||chr(10)||'PACKING_AMOUNT='||:NEW.PACKING_AMOUNT||chr(10)||'AMOUNT_IN_THE_PACK='||:NEW.AMOUNT_IN_THE_PACK||chr(10)||'UNITS='||:NEW.UNITS||chr(10)||'PRICE='||:NEW.PRICE||chr(10)||'SUMM='||:NEW.SUMM||chr(10)||'TITLE='||:NEW.TITLE||chr(10)||'DESCRIPTION='||:NEW.DESCRIPTION||chr(10)||'HOL_COUNTRY='||:NEW.HOL_COUNTRY||chr(10)||'HOL_SUB_TYPE='||:NEW.HOL_SUB_TYPE||chr(10)||'PD='||:NEW.PD||chr(10)||'DIAMETR='||:NEW.DIAMETR||chr(10)||'HEIGHT='||:NEW.HEIGHT||chr(10)||'TROLLEY='||:NEW.TROLLEY||chr(10)||'RECOGNISED='||:NEW.RECOGNISED||chr(10)||'DATE_IN='||:NEW.DATE_IN||chr(10)||'H_CODE='||:NEW.H_CODE||chr(10)||'UPACK='||:NEW.UPACK
    , user
    , :NEW.invoice_data_as_is_id
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_customs_inv_data_as_is
 AFTER
  DELETE
 ON customs_inv_data_as_is
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'customs_inv_data_as_is'
    , 'delete'
    , 'INV_ID='||:OLD.INV_ID||chr(10)||'ORDER_NUMBER='||:OLD.ORDER_NUMBER||chr(10)||'TRUCKS='||:OLD.TRUCKS||chr(10)||'PACKING_MARKS='||:OLD.PACKING_MARKS||chr(10)||'PACKING_AMOUNT='||:OLD.PACKING_AMOUNT||chr(10)||'AMOUNT_IN_THE_PACK='||:OLD.AMOUNT_IN_THE_PACK||chr(10)||'UNITS='||:OLD.UNITS||chr(10)||'PRICE='||:OLD.PRICE||chr(10)||'SUMM='||:OLD.SUMM||chr(10)||'TITLE='||:OLD.TITLE||chr(10)||'DESCRIPTION='||:OLD.DESCRIPTION||chr(10)||'HOL_COUNTRY='||:OLD.HOL_COUNTRY||chr(10)||'HOL_SUB_TYPE='||:OLD.HOL_SUB_TYPE||chr(10)||'PD='||:OLD.PD||chr(10)||'DIAMETR='||:OLD.DIAMETR||chr(10)||'HEIGHT='||:OLD.HEIGHT||chr(10)||'TROLLEY='||:OLD.TROLLEY||chr(10)||'RECOGNISED='||:OLD.RECOGNISED||chr(10)||'DATE_IN='||:OLD.DATE_IN||chr(10)||'H_CODE='||:OLD.H_CODE||chr(10)||'UPACK='||:OLD.UPACK
    , ''
    , user
    , :OLD.invoice_data_as_is_id
    );
 END;
/


-- Comments for CUSTOMS_INV_DATA_AS_IS

COMMENT ON COLUMN customs_inv_data_as_is.amount_in_the_pack IS 'количество в коробке'
/
COMMENT ON COLUMN customs_inv_data_as_is.description IS 'Название позиции с описанием'
/
COMMENT ON COLUMN customs_inv_data_as_is.diametr IS 'диаметр'
/
COMMENT ON COLUMN customs_inv_data_as_is.h_code IS 'Код названия'
/
COMMENT ON COLUMN customs_inv_data_as_is.height IS 'высота'
/
COMMENT ON COLUMN customs_inv_data_as_is.hol_country IS 'страна'
/
COMMENT ON COLUMN customs_inv_data_as_is.hol_sub_type IS 'подтип'
/
COMMENT ON COLUMN customs_inv_data_as_is.inv_id IS 'FK'
/
COMMENT ON COLUMN customs_inv_data_as_is.invoice_data_as_is_id IS 'PK'
/
COMMENT ON COLUMN customs_inv_data_as_is.order_number IS 'Номер инвойса'
/
COMMENT ON COLUMN customs_inv_data_as_is.packing_amount IS 'Кол. коробок'
/
COMMENT ON COLUMN customs_inv_data_as_is.packing_marks IS 'Тип упаковки'
/
COMMENT ON COLUMN customs_inv_data_as_is.pd IS 'фито тип'
/
COMMENT ON COLUMN customs_inv_data_as_is.price IS 'Цена'
/
COMMENT ON COLUMN customs_inv_data_as_is.recognised IS 'Признак распознанного. 1-да, 0-нет'
/
COMMENT ON COLUMN customs_inv_data_as_is.src_name IS 'Название позиции неменяемое'
/
COMMENT ON COLUMN customs_inv_data_as_is.src_trolley IS '№ тележки комбинированный'
/
COMMENT ON COLUMN customs_inv_data_as_is.summ IS 'Сумма'
/
COMMENT ON COLUMN customs_inv_data_as_is.title IS 'Название позиции'
/
COMMENT ON COLUMN customs_inv_data_as_is.trolley IS '№ тележки (для горшков)'
/
COMMENT ON COLUMN customs_inv_data_as_is.trucks IS 'Машина'
/
COMMENT ON COLUMN customs_inv_data_as_is.units IS 'Количество общее'
/
COMMENT ON COLUMN customs_inv_data_as_is.upack IS 'Упаковка для срезки'
/

-- End of DDL Script for Table CREATOR.CUSTOMS_INV_DATA_AS_IS

-- Foreign Key
ALTER TABLE customs_inv_data_as_is
ADD CONSTRAINT cust_inv_data_as_is_f FOREIGN KEY (inv_id)
REFERENCES customs_inv_register (inv_id) ON DELETE CASCADE
/
create or replace public synonym customs_inv_data_as_is for creator.customs_inv_data_as_is
/
-- End of DDL script for Foreign Key(s)
