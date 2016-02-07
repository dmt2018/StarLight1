-- Start of DDL Script for Table CREATOR.CUSTOMS_WEIGHT
-- Generated 3.12.2014 1:20:21 from CREATOR@STAR_NEW

CREATE TABLE customs_inv_equipment
    (id                       NUMBER(8,0) NOT NULL,
    inv_id                    number(8,0) not null,
    truck                     number(4,0),
    telega                    number(4,0),
    poddon                    NUMBER(4,0)
    )
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_inv_equipment TO new_role
/
GRANT SELECT ON customs_inv_equipment TO new_role
/
GRANT UPDATE ON customs_inv_equipment TO new_role
/
create public synonym customs_inv_equipment for creator.customs_inv_equipment
/

-- Comments for CUSTOMS_WEIGHT

COMMENT ON TABLE customs_inv_equipment IS 'Таблица тары с инвойсом и машиной'
/
COMMENT ON COLUMN customs_inv_equipment.id IS 'ИД типа (FK)'
/
COMMENT ON COLUMN customs_inv_equipment.inv_id IS 'ID инвойса (FK)'
/
COMMENT ON COLUMN customs_inv_equipment.truck IS 'машина'
/
COMMENT ON COLUMN customs_inv_equipment.telega IS 'кол-во телег'
/
COMMENT ON COLUMN customs_inv_equipment.poddon IS 'кол-во поддонов'
/

CREATE INDEX ix_inv_id_cieq ON customs_inv_equipment
  (
    inv_id                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_id_cieq ON customs_inv_equipment
  (
    id                          ASC
  )
  TABLESPACE  starlight_i
/


ALTER TABLE customs_inv_equipment
ADD CONSTRAINT fk_inv_id_cieq FOREIGN KEY (inv_id)
REFERENCES customs_inv_register (inv_id) ON DELETE CASCADE
/
/*
ALTER TABLE customs_inv_equipment
ADD CONSTRAINT fk_id_cieq FOREIGN KEY (id)
REFERENCES customs_weight (id) ON DELETE CASCADE
/
*/
-- End of DDL Script for Table CREATOR.CUSTOMS_WEIGHT

