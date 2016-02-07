-- Start of DDL Script for Function CREATOR.IMP_INVDATA_GETLASTPRICE
-- Generated 10.12.2011 19:03:56 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION imp_invdata_getlastprice
( p_N_ID IN number ) RETURN number
IS
--
-- Функция для поиска последней цены на складе для импорта инвойса из московского офиса
--
   OLD_PRICE_COUNT  number;
   INT_OLD_PRICE    number;
BEGIN
    INT_OLD_PRICE := 0;

    SELECT COUNT(*) INTO OLD_PRICE_COUNT FROM PRICE_LIST WHERE N_ID = p_N_ID and id_office = const_office;
    IF OLD_PRICE_COUNT = 1 then
       SELECT PRICE INTO INT_OLD_PRICE FROM PRICE_LIST WHERE N_ID = p_N_ID and id_office = const_office;
    else
       INT_OLD_PRICE := 0;
    end if;


    RETURN INT_OLD_PRICE;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'imp_invdata_getlastprice', DBMS_UTILITY.format_error_backtrace);
END;
/

-- Grants for Function
GRANT EXECUTE ON imp_invdata_getlastprice TO new_role
/
create or replace public synonym imp_invdata_getlastprice for creator.imp_invdata_getlastprice
/

-- End of DDL Script for Function CREATOR.IMP_INVDATA_GETLASTPRICE

