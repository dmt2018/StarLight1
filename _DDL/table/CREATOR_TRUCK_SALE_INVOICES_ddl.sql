-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES
-- Generated 08.11.2016 23:17:42 from CREATOR@STAR_NEW

CREATE TABLE truck_sale_invoices
    (truck_sale_id                    NUMBER(10,0) NOT NULL,
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



-- Indexes for DISTRIBUTIONS_INVOICES

CREATE INDEX ix_truck_sale_inv_id ON truck_sale_invoices
  (
    inv_id                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_truck_sale_id ON truck_sale_invoices
  (
    truck_sale_id                     ASC
  )
  TABLESPACE  starlight_i
/




-- Comments for DISTRIBUTIONS_INVOICES

COMMENT ON TABLE truck_sale_invoices IS 'Связь продажи с колес с инвойсом'
/
COMMENT ON COLUMN truck_sale_invoices.truck_sale_id IS 'FK продажи с колес'
/
COMMENT ON COLUMN truck_sale_invoices.inv_id IS 'FK инвойса'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES

-- Foreign Key
ALTER TABLE truck_sale_invoices
ADD CONSTRAINT fk_truck_sale_inv_id FOREIGN KEY (inv_id)
REFERENCES invoice_register (inv_id)
/
ALTER TABLE truck_sale_invoices
ADD CONSTRAINT fk_truck_sale_id FOREIGN KEY (truck_sale_id)
REFERENCES truck_sale (truck_sale_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
