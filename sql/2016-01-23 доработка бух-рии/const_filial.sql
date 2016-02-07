-- Start of DDL Script for Function CREATOR.CONST_OFFICE
-- Generated 24.01.2016 16:45:46 from CREATOR@STAR_NEW

CREATE OR REPLACE 
FUNCTION const_filial
  RETURN  number IS
--
-- Если филиал является обособленным подразделением головного офиса, то в документах бухгалтерии нужен префикс
-- Если пусто, то ничего не подставляется
-- 01- Екатеринбург
-- 
BEGIN
    RETURN '01/';
END;
/

-- Grants for Function
GRANT EXECUTE ON const_filial TO new_role
/

create public synonym const_filial for creator.const_filial
/

-- End of DDL Script for Function CREATOR.CONST_OFFICE

