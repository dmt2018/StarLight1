-- Start of DDL Script for Table CREATOR.PREPARE_DISTRIBUTION
-- Generated 6-май-2012 22:39:59 from CREATOR@STARNEW

CREATE TABLE prepare_distribution
    (dist_ind_id                    NUMBER(10,0) NOT NULL,
    n_id                           NUMBER(10,0) NOT NULL,
    invoice_data_id                NUMBER(10,0),
    id_store_main                  NUMBER(10,0),
    total_quantity                 NUMBER(10,0) NOT NULL,
    left_quantity                  NUMBER(10,0) NOT NULL,
    prep_dist_id                   NUMBER(10,0) NOT NULL)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON prepare_distribution TO new_role
/
GRANT SELECT ON prepare_distribution TO new_role
/
GRANT UPDATE ON prepare_distribution TO new_role
/
create public synonym prepare_distribution for creator.prepare_distribution
/



-- Constraints for PREPARE_DISTRIBUTION

ALTER TABLE prepare_distribution
ADD CONSTRAINT prep_dist_id_p_key PRIMARY KEY (prep_dist_id)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
/



-- End of DDL Script for Table CREATOR.PREPARE_DISTRIBUTION

-- Foreign Key
ALTER TABLE prepare_distribution
ADD CONSTRAINT prep_dist_dist_ind_id_fk FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
