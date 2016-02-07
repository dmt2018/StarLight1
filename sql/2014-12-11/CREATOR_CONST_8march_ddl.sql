-- Start of DDL Script for Function CREATOR.CONST_DIR
-- Generated 11.12.2014 2:20:30 from CREATOR@STAR_NEW

CREATE OR REPLACE 
FUNCTION const_8march
  RETURN  number IS
--
-- Возвращает спецификацию для признака предзаказа на 8-е марта
  v_hs_id  number;
BEGIN
  v_hs_id := 0;

  begin
    select hs_id into v_hs_id from hol_specifications a where a.spec_code = '8M';
  exception when no_data_found then
    v_hs_id := 0;
  end;
  return v_hs_id; 
END;
/

-- Grants for Function
GRANT EXECUTE ON const_8march TO new_role
/

create public synonym const_8march for creator.const_8march
/


-- End of DDL Script for Function CREATOR.CONST_DIR

