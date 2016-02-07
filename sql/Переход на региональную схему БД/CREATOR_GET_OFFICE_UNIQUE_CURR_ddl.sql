-- Start of DDL Script for Function CREATOR.GET_OFFICE_UNIQUE_CURR
-- Generated 10.12.2011 19:00:58 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION get_office_unique_curr
( v_seq varchar2 )
  RETURN  number IS
--
-- На вход передаем последовательность,возвращается сформированный уникальный код
-- ---------   ------  -------------------------------------------
     sql_str    varchar2(255);
     cnt_       number;
BEGIN
     sql_str := 'select '|| v_seq ||'.currval from dual';
     EXECUTE immediate sql_str into cnt_;

     RETURN CONST_OFFICE * 10000000 + cnt_;
END;
/

-- Grants for Function
GRANT EXECUTE ON get_office_unique_curr TO new_role
/

create or replace public synonym get_office_unique_curr for creator.get_office_unique_curr
/
-- End of DDL Script for Function CREATOR.GET_OFFICE_UNIQUE_CURR

