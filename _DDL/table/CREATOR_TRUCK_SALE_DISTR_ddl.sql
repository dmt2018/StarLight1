-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES
-- Generated 08.11.2016 23:17:42 from CREATOR@STAR_NEW

CREATE TABLE truck_sale_distr
    (truck_sale_id                    NUMBER(10,0) NOT NULL,
    DIST_IND_ID                         NUMBER(10,0) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON truck_sale_distr TO new_role
/
GRANT SELECT ON truck_sale_distr TO new_role
/
GRANT UPDATE ON truck_sale_distr TO new_role
/

create public synonym truck_sale_distr for creator.truck_sale_distr
/



-- Indexes for DISTRIBUTIONS_INVOICES

CREATE INDEX ix_truck_sale_DIST_IND_ID ON truck_sale_distr
  (
    DIST_IND_ID                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix2_truck_sale_id ON truck_sale_distr
  (
    truck_sale_id                     ASC
  )
  TABLESPACE  starlight_i
/




-- Comments for DISTRIBUTIONS_INVOICES

COMMENT ON TABLE truck_sale_distr IS 'Связь продажи с колес с разносом'
/
COMMENT ON COLUMN truck_sale_distr.truck_sale_id IS 'FK продажи с колес'
/
COMMENT ON COLUMN truck_sale_distr.DIST_IND_ID IS 'FK разноса'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS_INVOICES

-- Foreign Key
ALTER TABLE truck_sale_distr
ADD CONSTRAINT fk_truck_sale_DIST_IND_ID FOREIGN KEY (DIST_IND_ID)
REFERENCES distributions_index (DIST_IND_ID)
/
ALTER TABLE truck_sale_distr
ADD CONSTRAINT fk2_truck_sale_id FOREIGN KEY (truck_sale_id)
REFERENCES truck_sale (truck_sale_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
