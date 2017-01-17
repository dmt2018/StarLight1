-- Start of DDL Script for Function CREATOR.CONST_OFFICE
-- Generated 18.01.2017 1:18:05 from CREATOR@STAR_REG

CREATE OR REPLACE 
FUNCTION const_office
  RETURN  number IS
--
-- Для каждого офиса будет возвращен его код.
-- 1 - Старлайт Москва
-- 2 - Самара
-- 3 - Казань
-- 5 - Череповец
-- 6 - Уфа
-- 8 - Екатеринбург
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


-- End of DDL Script for Function CREATOR.CONST_OFFICE

