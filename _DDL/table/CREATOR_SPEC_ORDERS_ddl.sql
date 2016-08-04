-- Start of DDL Script for Table CREATOR.SPEC_ORDERS
-- Generated 05.08.2016 0:17:05 from CREATOR@STAR_NEW

CREATE TABLE spec_orders
    (n_id                           NUMBER(10,0),
    start_date                     DATE,
    end_date                       DATE,
    is_active                      NUMBER(1,0) DEFAULT 1,
    price                          NUMBER(10,2),
    spec_orders_id                 NUMBER(10,0) )
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON spec_orders TO new_role
/
GRANT INSERT ON spec_orders TO new_role
/
GRANT SELECT ON spec_orders TO new_role
/
GRANT UPDATE ON spec_orders TO new_role
/




-- Indexes for SPEC_ORDERS

CREATE INDEX ix_spec_orders ON spec_orders
  (
    n_id                            ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for SPEC_ORDERS

ALTER TABLE spec_orders
ADD CONSTRAINT pk_spec_orders PRIMARY KEY (spec_orders_id)
USING INDEX
  TABLESPACE  starlight_t
/


-- Comments for SPEC_ORDERS

COMMENT ON TABLE spec_orders IS 'Спец.предложения на товар'
/
COMMENT ON COLUMN spec_orders.end_date IS 'Дата окончания предложения'
/
COMMENT ON COLUMN spec_orders.is_active IS 'Активность предложения'
/
COMMENT ON COLUMN spec_orders.n_id IS 'FK номенклатуры'
/
COMMENT ON COLUMN spec_orders.price IS 'Цена предложения'
/
COMMENT ON COLUMN spec_orders.spec_orders_id IS 'PK'
/
COMMENT ON COLUMN spec_orders.start_date IS 'Дата старта предложения'
/

-- End of DDL Script for Table CREATOR.SPEC_ORDERS

create public synonym spec_orders for creator.spec_orders
/

grant select, insert, update, delete on spec_orders to new_role
