-- Start of DDL Script for Function CREATOR.CONST_WEBSHOP
-- Generated 18.01.2017 1:17:23 from CREATOR@STAR_REG

CREATE OR REPLACE 
FUNCTION const_webshop( 
  p_office IN number 
)
RETURN number AS  
begin

/*
02 FREE 10016343
16 XXX  14942   
35 SPZ  10016216
63 SSR  12173   
*/

-- Для каждого офиса будет возвращен его код.
-- 1 - Старлайт Москва
-- 2 - Самара
-- 3 - Казань
-- 5 - Череповец
-- 6 - Уфа
-- 8 - Екатеринбург
  return 
  case 
    when p_office = 2 then 12173
    when p_office = 3 then 14942
    when p_office = 5 then 10016216
    when p_office = 6 then 10016343
    when p_office = 8 then 10021019
    else 0
  end; 
  
end;
/

-- Grants for Function
GRANT EXECUTE ON const_webshop TO new_role
/
 
create public synonym CONST_WEBSHOP for creator.CONST_WEBSHOP
/

-- End of DDL Script for Function CREATOR.CONST_WEBSHOP

