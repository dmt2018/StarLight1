-- Start of DDL Script for Table CREATOR.CUSTOMS_PRICE_PACK
-- Generated 13.12.2011 1:27:25 from CREATOR@STARNEW

CREATE TABLE customs_price_pack
    (ipp_id                         NUMBER(10,0) NOT NULL,
    ipp_date                       DATE NOT NULL,
    ipp_comment                    VARCHAR2(256 BYTE) NOT NULL)
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON customs_price_pack TO new_role
/
GRANT SELECT ON customs_price_pack TO new_role
/
GRANT UPDATE ON customs_price_pack TO new_role
/




-- Constraints for CUSTOMS_PRICE_PACK

ALTER TABLE customs_price_pack
ADD CONSTRAINT customs_price_pack_ipp_id_pkey PRIMARY KEY (ipp_id)
USING INDEX
  TABLESPACE  starlight_i
/


-- Comments for CUSTOMS_PRICE_PACK

COMMENT ON TABLE customs_price_pack IS 'Группировка таможенных инвойсов в "пачку" для распознования'
/
COMMENT ON COLUMN customs_price_pack.ipp_comment IS 'Комментарий'
/
COMMENT ON COLUMN customs_price_pack.ipp_date IS 'Дата создания'
/
COMMENT ON COLUMN customs_price_pack.ipp_id IS 'PK'
/
create or replace public synonym customs_price_pack for creator.customs_price_pack
/
-- End of DDL Script for Table CREATOR.CUSTOMS_PRICE_PACK

