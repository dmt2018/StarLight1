-- Start of DDL Script for Function CREATOR.CONST_CARGO
-- Generated 3.12.2014 2:23:31 from CREATOR@STAR_NEW

CREATE OR REPLACE 
FUNCTION const_customs_telega
  RETURN  number IS
--
-- Вес телеги для таможни
-- ---------   ------  -------------------------------------------
BEGIN
    RETURN 94;
END;
/

-- Grants for Function
GRANT EXECUTE ON const_customs_telega TO new_role
/
create public synonym const_customs_telega for creator.const_customs_telega
/


CREATE OR REPLACE 
FUNCTION const_customs_poddon
  RETURN  number IS
--
-- Вес поддона для таможни 
-- ---------   ------  -------------------------------------------
BEGIN
    RETURN 20;
END;
/

-- Grants for Function
GRANT EXECUTE ON const_customs_poddon TO new_role
/
create public synonym const_customs_poddon for creator.const_customs_poddon
/


-- End of DDL Script for Function CREATOR.CONST_CARGO

