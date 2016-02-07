-- Start of DDL Script for Table CREATOR.DISTRIB_PRINT_FT
-- Generated 7-май-2012 14:42:45 from CREATOR@STARNEW

CREATE TABLE distrib_print_ft
    (ft_id                          NUMBER(10,0) NOT NULL,
    client_print                   NUMBER(1,0) DEFAULT 0 NOT NULL)
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
/

-- Grants for Table
GRANT INSERT ON distrib_print_ft TO new_role
/
GRANT SELECT ON distrib_print_ft TO new_role
/
GRANT UPDATE ON distrib_print_ft TO new_role
/

create public synonym distrib_print_ft for creator.distrib_print_ft
/


-- Comments for DISTRIB_PRINT_FT

COMMENT ON TABLE distrib_print_ft IS 'Ќастройка типов товара дл€ печати'
/
COMMENT ON COLUMN distrib_print_ft.client_print IS '1-печать списка товара по клиентам'
/
COMMENT ON COLUMN distrib_print_ft.ft_id IS 'FK F_TYPE'
/

-- End of DDL Script for Table CREATOR.DISTRIB_PRINT_FT

