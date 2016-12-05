-- Start of DDL Script for Table CREATOR.DISTRIBUTIONS
-- Generated 05.12.2016 0:22:44 from CREATOR@STAR_REG

CREATE TABLE distributions_webshop (
    dist_ind_id                    NUMBER(10,0),
    dist_webshop_id                NUMBER(10,0),
    n_id                           NUMBER(10,0),
    quantity                       NUMBER(10,0),
    price                          NUMBER(10,2),
    id_orders_list                 NUMBER(10,0)
  )
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON distributions_webshop TO new_role
/
GRANT SELECT ON distributions_webshop TO new_role
/
GRANT UPDATE ON distributions_webshop TO new_role
/

create public synonym distributions_webshop for creator.distributions_webshop
/


-- Indexes for DISTRIBUTIONS
CREATE INDEX ix_distr_webshop_n_id ON distributions_webshop
  (
    n_id                            ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_distr_webshop_dist_ind_id ON distributions_webshop
  (
    dist_ind_id                     ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_distr_webshop_id_ord_list ON distributions_webshop
  (
    id_orders_list                  ASC
  )
  TABLESPACE  starlight_i
/

-- Constraints for DISTRIBUTIONS






ALTER TABLE distributions_webshop
ADD CONSTRAINT dist_webshop_id_p_key PRIMARY KEY (dist_webshop_id)
USING INDEX
  TABLESPACE  starlight_i
/


-- Comments for DISTRIBUTIONS

COMMENT ON TABLE distributions_webshop IS 'ƒоборы из WebShop'
/
COMMENT ON COLUMN distributions_webshop.dist_webshop_id IS 'PK'
/
COMMENT ON COLUMN distributions_webshop.dist_ind_id IS 'FK распределени€'
/
COMMENT ON COLUMN distributions_webshop.id_orders_list IS 'FK клиента в заказе'
/
COMMENT ON COLUMN distributions_webshop.n_id IS 'FK номенклатуры'
/
COMMENT ON COLUMN distributions_webshop.price IS '÷ена из WebShop'
/
COMMENT ON COLUMN distributions_webshop.quantity IS 'количетво'
/

-- End of DDL Script for Table CREATOR.DISTRIBUTIONS

-- Foreign Key
ALTER TABLE distributions_webshop
ADD CONSTRAINT dist_webshop_n_id_f_key FOREIGN KEY (n_id)
REFERENCES nomenclature (n_id)
/
ALTER TABLE distributions_webshop
ADD CONSTRAINT dist_webshop_id_orders_list_fk FOREIGN KEY (id_orders_list)
REFERENCES orders_list (id_orders_list)
/
ALTER TABLE distributions_webshop
ADD CONSTRAINT dist_webshop_ind_id_f_key FOREIGN KEY (dist_ind_id)
REFERENCES distributions_index (dist_ind_id) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)
