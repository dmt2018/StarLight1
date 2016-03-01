-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES
-- Generated 28.02.2016 3:03:35 from CREATOR@STAR_NEW

CREATE TABLE order_distributions
    (id_order                    NUMBER(10,0) NOT NULL,
    dist_ind_id                  NUMBER(10,0) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON order_distributions TO new_role
/
GRANT SELECT ON order_distributions TO new_role
/
GRANT UPDATE ON order_distributions TO new_role
/

create public synonym order_distributions for creator.order_distributions
/


-- Indexes for DISTRIBUTIONS_INVOICES

CREATE INDEX ix_od_id_order ON order_distributions
  (
    id_order                          ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for DISTRIBUTIONS_INVOICES




-- Comments for DISTRIBUTIONS_INVOICES

COMMENT ON TABLE order_distributions IS 'Связь заказа и расноски для расчета предыдущего заказа'
/
COMMENT ON COLUMN order_distributions.id_order IS 'FK заказа'
/
COMMENT ON COLUMN order_distributions.dist_ind_id IS 'FK разноски'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES

-- Foreign Key
ALTER TABLE order_distributions
ADD CONSTRAINT od_dist_ind_id_fk FOREIGN KEY (dist_ind_id)
REFERENCES DISTRIBUTIONS_INDEX (dist_ind_id) ON DELETE CASCADE
/

ALTER TABLE order_distributions
ADD CONSTRAINT od_id_order_fk FOREIGN KEY (id_order)
REFERENCES orders (id_orders) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
