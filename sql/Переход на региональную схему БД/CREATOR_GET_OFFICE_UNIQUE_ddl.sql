-- Start of DDL Script for Function CREATOR.GET_OFFICE_UNIQUE
-- Generated 10.12.2011 19:00:29 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION get_office_unique
( v_seq varchar2 )
  RETURN  number IS
--
-- На вход передаем последовательность,возвращается сформированный уникальный код
-- ---------   ------  -------------------------------------------
     sql_str    varchar2(255);
     cnt_       number;
BEGIN
     sql_str := 'select '|| v_seq ||'.nextval from dual';
     EXECUTE immediate sql_str into cnt_;

     RETURN CONST_OFFICE * 10000000 + cnt_;
END;
/

-- Grants for Function
GRANT EXECUTE ON get_office_unique TO new_role
/

create or replace public synonym get_office_unique for creator.get_office_unique
/
-- End of DDL Script for Function CREATOR.GET_OFFICE_UNIQUE

