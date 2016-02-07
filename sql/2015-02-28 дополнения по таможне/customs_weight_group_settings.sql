-- Start of DDL Script for Table CREATOR.CUSTOMS_WEIGHT_FORMULA
-- Generated 1.03.2015 0:53:53 from CREATOR@STAR_NEW

CREATE TABLE customs_weight_group_settings
  (id                              NUMBER(8,0) NOT NULL,
    id_w                           NUMBER(8,0) NOT NULL,
    fs_country_id                  NUMBER(8,0) NOT NULL,
    fo_value                       NUMBER(8,4) default 1
  )
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT DELETE ON customs_weight_group_settings TO new_role
/
GRANT SELECT ON customs_weight_group_settings TO new_role
/
GRANT UPDATE ON customs_weight_group_settings TO new_role
/


create public synonym customs_weight_group_settings for creator.customs_weight_group_settings
/


-- Comments for CUSTOMS_WEIGHT_FORMULA

COMMENT ON TABLE customs_weight_group_settings IS 'Таблица с сеткой таможенных коэффициентов для групп'
/
COMMENT ON COLUMN customs_weight_group_settings.fs_country_id IS 'ID страны'
/
COMMENT ON COLUMN customs_weight_group_settings.id_w IS 'FK'
/

-- End of DDL Script for Table CREATOR.CUSTOMS_WEIGHT_FORMULA

