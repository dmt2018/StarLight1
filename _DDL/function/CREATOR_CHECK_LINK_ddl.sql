-- Start of DDL Script for Function CREATOR.CHECK_LINK
-- Generated 09.07.2016 4:14:35 from CREATOR@STAR_NEW

CREATE OR REPLACE 
FUNCTION check_link(
  v_link varchar2
)
RETURN  number IS
-- Возвращает 1 если линк валиден
  v_res  number;
BEGIN
  v_res := 0;

  begin
    execute immediate 'select 1 from dual@'||v_link into v_res;
  exception when others then
    v_res := 0;
  end;
  return v_res; 
END;
/

-- Grants for Function
GRANT EXECUTE ON check_link TO new_role
/


create public synonym check_link for creator.check_link
/

-- Grants for Function
GRANT EXECUTE ON check_link TO new_role
/

-- End of DDL Script for Function CREATOR.CHECK_LINK

