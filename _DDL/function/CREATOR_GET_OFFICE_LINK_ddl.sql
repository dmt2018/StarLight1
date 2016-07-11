-- Start of DDL Script for Function CREATOR.GET_OFFICE_LINK
-- Generated 11.07.2016 22:34:45 from CREATOR@STAR_NEW

CREATE OR REPLACE 
FUNCTION get_office_link (
  v_office     in number
)
  RETURN varchar2 IS
--
-- Для каждого офиса будет возвращен его код.
-- 1- Старлайт Москва
-- 2- Самара
-- 3- Казань
-- 4- Ярославль
-- 5- Череповец
-- 6- Уфа
-- 7- 
-- 8- Екатеринбург
--
    names varchar2(100);
BEGIN
  names := 'star';
  if v_office = 1 then names := 'star'; end if;
  if v_office = 2 then names := 'samara'; end if;
  if v_office = 3 then names := 'kazan'; end if;
  if v_office = 5 then names := 'cherep'; end if;
  if v_office = 6 then names := 'ufa'; end if;
  if v_office = 8 then names := 'eburg'; end if;
  RETURN names;
END;
/

create public synonym get_office_link for creator.get_office_link
/

-- Grants for Function
GRANT EXECUTE ON get_office_link TO new_role
/


-- End of DDL Script for Function CREATOR.GET_OFFICE_LINK

