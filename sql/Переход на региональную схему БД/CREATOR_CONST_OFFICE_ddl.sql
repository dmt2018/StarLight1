-- Start of DDL Script for Function CREATOR.CONST_OFFICE
-- Generated 10.12.2011 18:58:08 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION const_office
  RETURN  number IS
--
-- Для каждого офиса будет возвращен его код.
-- 1- Старлайт Москва
-- 2- Самара
-- 3- Казань
-- 4- Ярославль
--
-- Использовать во всех таблицах работающих в разрезе офисов
-- ---------   ------  -------------------------------------------
BEGIN
    RETURN 1;
END;
/

-- Grants for Function
GRANT EXECUTE ON const_office TO new_role
/

create or replace public synonym const_office for creator.const_office
/
-- End of DDL Script for Function CREATOR.CONST_OFFICE

