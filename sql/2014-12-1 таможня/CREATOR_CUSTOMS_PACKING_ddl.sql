-- Start of DDL Script for Table CREATOR.CUSTOMS_PACKING
-- Generated 3.12.2014 22:21:19 from CREATOR@STAR_NEW

CREATE TABLE customs_packing
    (id                             NUMBER(8,0) NOT NULL,
    packing                        VARCHAR2(20 BYTE),
    nullable                       NUMBER(1,0) DEFAULT 0,
    packing_weight                 NUMBER(10,6),
    id_dep                         NUMBER(8,0))
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_packing TO new_role
/
GRANT SELECT ON customs_packing TO new_role
/
GRANT UPDATE ON customs_packing TO new_role
/
create public synonym customs_packing for creator.customs_packing
/



-- Comments for CUSTOMS_PACKING

COMMENT ON TABLE customs_packing IS 'Таблица типов упаковок с весами'
/
COMMENT ON COLUMN customs_packing.id IS 'ID'
/
COMMENT ON COLUMN customs_packing.id_dep IS 'отдел'
/
COMMENT ON COLUMN customs_packing.nullable IS '1-данный тип подставляется при пустом значении типа упаковки'
/
COMMENT ON COLUMN customs_packing.packing IS 'Имя упаковки'
/
COMMENT ON COLUMN customs_packing.packing_weight IS 'вес упаковки'
/

-- End of DDL Script for Table CREATOR.CUSTOMS_PACKING

