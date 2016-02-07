-- Start of DDL Script for Function CREATOR.CONST_OFFICE
-- Generated 9.11.2014 22:33:15 from CREATOR@STAR_NEW

-- Drop the old instance of CONST_OFFICE
--DROP FUNCTION const_office
--/

CREATE OR REPLACE 
FUNCTION const_main
  RETURN  number IS
--
-- Для каждого офиса будет возвращен код заказа стока (main)
BEGIN
    RETURN 8060;
END;
/

-- Grants for Function
GRANT EXECUTE ON const_main TO new_role
/
create public synonym const_main for creator.const_main
/

CREATE OR REPLACE 
FUNCTION const_dir
  RETURN  number IS
--
-- Для каждого офиса будет возвращен код заказа директора (dir)
BEGIN
    RETURN 7086;
END;
/

-- Grants for Function
GRANT EXECUTE ON const_dir TO new_role
/
create public synonym const_dir for creator.const_dir
/


-- End of DDL Script for Function CREATOR.CONST_OFFICE

