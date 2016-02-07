-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES
-- Generated 24.01.2016 2:15:21 from CREATOR@STAR_NEW

CREATE TABLE distributions_orders
    (dist_ind_id                    NUMBER(10,0) NOT NULL,
    order_id                         NUMBER(10,0) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON distributions_orders TO new_role
/
GRANT SELECT ON distributions_orders TO new_role
/
GRANT UPDATE ON distributions_orders TO new_role
/
create public synonym distributions_orders for creator.distributions_orders
/



-- Indexes for DISTRIBUTIONS_INVOICES

CREATE INDEX ix_do_dist_ind_id ON distributions_orders
  (
    dist_ind_id                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_do_order_id ON distributions_orders
  (
    order_id                     ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for DISTRIBUTIONS_INVOICES




-- Comments for DISTRIBUTIONS_INVOICES

COMMENT ON TABLE distributions_orders IS 'Связь расноски с заказами'
/
COMMENT ON COLUMN distributions_orders.dist_ind_id IS 'FK разноски'
/
COMMENT ON COLUMN distributions_orders.order_id IS 'FK заказа'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES

-- Foreign Key
ALTER TABLE distributions_orders
ADD CONSTRAINT do_dist_ind_id_f_key FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id)
/
ALTER TABLE distributions_orders
ADD CONSTRAINT do_order_id_f_key FOREIGN KEY (order_id)
REFERENCES ORDERS (ID_ORDERS) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
