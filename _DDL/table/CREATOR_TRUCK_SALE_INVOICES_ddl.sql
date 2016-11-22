-- Start of DDL Script for Table CREATOR.TRUCK_SALE_INVOICES
-- Generated 22.11.2016 0:24:33 from CREATOR@STAR_NEW

CREATE TABLE truck_sale_invoices
    (truck_sale_id                  NUMBER(10,0) NOT NULL,
    inv_id                         NUMBER(10,0) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON truck_sale_invoices TO new_role
/
GRANT SELECT ON truck_sale_invoices TO new_role
/
GRANT UPDATE ON truck_sale_invoices TO new_role
/

create public synonym truck_sale_invoices for creator.truck_sale_invoices
/



-- Indexes for TRUCK_SALE_INVOICES

CREATE INDEX ix_truck_sale_inv_id ON truck_sale_invoices
  (
    inv_id                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_truck_sale_id ON truck_sale_invoices
  (
    truck_sale_id                   ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for TRUCK_SALE_INVOICES




-- Comments for TRUCK_SALE_INVOICES

COMMENT ON TABLE truck_sale_invoices IS 'Связь продажи с колес с инвойсом'
/
COMMENT ON COLUMN truck_sale_invoices.inv_id IS 'FK инвойса'
/
COMMENT ON COLUMN truck_sale_invoices.truck_sale_id IS 'FK продажи с колес'
/

-- End of DDL Script for Table CREATOR.TRUCK_SALE_INVOICES

-- Foreign Key
ALTER TABLE truck_sale_invoices
ADD CONSTRAINT fk_truck_sale_id FOREIGN KEY (truck_sale_id)
REFERENCES truck_sale (truck_sale_id) ON DELETE CASCADE
/
ALTER TABLE truck_sale_invoices
ADD CONSTRAINT fk_truck_sale_inv_id FOREIGN KEY (inv_id)
REFERENCES invoice_register (inv_id)
/
-- End of DDL script for Foreign Key(s)
