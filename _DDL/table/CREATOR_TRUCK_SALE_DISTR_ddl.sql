-- Start of DDL Script for Table CREATOR.TRUCK_SALE_DISTR
-- Generated 22.11.2016 0:23:41 from CREATOR@STAR_NEW

CREATE TABLE truck_sale_distr
    (truck_sale_id                  NUMBER(10,0) NOT NULL,
    dist_ind_id                    NUMBER(10,0) NOT NULL)
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




-- Indexes for TRUCK_SALE_DISTR

CREATE INDEX ix_truck_sale_dist_ind_id ON truck_sale_distr
  (
    dist_ind_id                     ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix2_truck_sale_id ON truck_sale_distr
  (
    truck_sale_id                   ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for TRUCK_SALE_DISTR




-- Comments for TRUCK_SALE_DISTR

COMMENT ON TABLE truck_sale_distr IS 'Связь продажи с колес с разносом'
/
COMMENT ON COLUMN truck_sale_distr.dist_ind_id IS 'FK разноса'
/
COMMENT ON COLUMN truck_sale_distr.truck_sale_id IS 'FK продажи с колес'
/

-- End of DDL Script for Table CREATOR.TRUCK_SALE_DISTR

-- Foreign Key
ALTER TABLE truck_sale_distr
ADD CONSTRAINT fk2_truck_sale_id FOREIGN KEY (truck_sale_id)
REFERENCES truck_sale (truck_sale_id) ON DELETE CASCADE
/
ALTER TABLE truck_sale_distr
ADD CONSTRAINT fk_truck_sale_dist_ind_id FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id)
/
-- End of DDL script for Foreign Key(s)
