-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES
-- Generated 6-май-2012 22:36:26 from CREATOR@STARNEW

CREATE TABLE distributions_invoices
    (dist_ind_id                    NUMBER(10,0) NOT NULL,
    inv_id                         NUMBER(10,0) NOT NULL)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON distributions_invoices TO new_role
/
GRANT SELECT ON distributions_invoices TO new_role
/
GRANT UPDATE ON distributions_invoices TO new_role
/
create public synonym distributions_invoices for creator.distributions_invoices
/




-- Constraints for DISTRIBUTIONS_INVOICES



-- Comments for DISTRIBUTIONS_INVOICES

COMMENT ON TABLE distributions_invoices IS 'Связь расноски с инвойсом'
/
COMMENT ON COLUMN distributions_invoices.dist_ind_id IS 'FK разноски'
/
COMMENT ON COLUMN distributions_invoices.inv_id IS 'FK инвойса'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES

-- Foreign Key
ALTER TABLE distributions_invoices
ADD CONSTRAINT dist_inv_dist_ind_id_fk FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
