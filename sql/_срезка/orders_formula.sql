-- Start of DDL Script for Table CREATOR.ORDERS_FORMULA
-- Generated 05.05.2012 19:26:46 from CREATOR@STARNEW

CREATE TABLE orders_formula
    (id_orders_formula              NUMBER(10,0) NOT NULL,
    ft_id                          NUMBER(10,0),
    fst_id                         NUMBER(10,0),
    hname                          VARCHAR2(40 BYTE),
    formula                        VARCHAR2(20 BYTE),
    formula_dry                    VARCHAR2(20 BYTE),
    active                         NUMBER(1,0) NOT NULL,
    pack                           NUMBER(3,0),
    field_no                       VARCHAR2(20 BYTE),
    field_and                      VARCHAR2(20 BYTE),
    id_departments                 NUMBER(8,0) DEFAULT 62 NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON orders_formula TO new_role
/
GRANT SELECT ON orders_formula TO new_role
/
GRANT UPDATE ON orders_formula TO new_role
/

create or replace public synonym orders_formula for creator.orders_formula
/


-- Constraints for ORDERS_FORMULA

ALTER TABLE orders_formula
ADD CONSTRAINT pk_orders_formula PRIMARY KEY (id_orders_formula)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
/


-- Comments for ORDERS_FORMULA

COMMENT ON COLUMN orders_formula.active IS 'Признак активности формулы'
/
COMMENT ON COLUMN orders_formula.field_and IS 'Поле с логическим AND'
/
COMMENT ON COLUMN orders_formula.field_no IS 'Поле с логическим NO'
/
COMMENT ON COLUMN orders_formula.formula IS 'формула'
/
COMMENT ON COLUMN orders_formula.formula_dry IS 'формула'
/
COMMENT ON COLUMN orders_formula.fst_id IS 'Подтип номенклатуры'
/
COMMENT ON COLUMN orders_formula.ft_id IS 'Тип номенклатуры'
/
COMMENT ON COLUMN orders_formula.hname IS 'Часть название гол.'
/
COMMENT ON COLUMN orders_formula.id_departments IS 'Номер отдела'
/
COMMENT ON COLUMN orders_formula.pack IS 'Процент прибавки к формуле'
/

-- End of DDL Script for Table CREATOR.ORDERS_FORMULA

