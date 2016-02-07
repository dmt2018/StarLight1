-- Start of DDL Script for Function CREATOR.CONST_PICTURE_PATH
-- Generated 10.12.2011 18:58:33 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION const_picture_path
  RETURN  varchar2 IS
--
-- ƒл€ каждого офиса будет возвращена папка где лежат фотки товара.
--
-- ---------   ------  -------------------------------------------
BEGIN
    RETURN 'C:/_WORK/delphi/StarLight/_÷веты 2010/images/';
END;
/

-- Grants for Function
GRANT EXECUTE ON const_picture_path TO new_role
/
create or replace public synonym const_picture_path for creator.const_picture_path
/

-- End of DDL Script for Function CREATOR.CONST_PICTURE_PATH

