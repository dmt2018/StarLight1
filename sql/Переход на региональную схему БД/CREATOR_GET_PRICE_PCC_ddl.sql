-- Start of DDL Script for Function CREATOR.GET_PRICE_PCC
-- Generated 10.12.2011 19:01:55 from CREATOR@STARREG

CREATE OR REPLACE 
FUNCTION get_price_pcc (
    p_nid IN number
)
RETURN number
IS
   var_ number;
BEGIN
    var_ := 0;

    SELECT a.price_pcc into var_
    from (
        SELECT a.price_pcc
        FROM prepare_price_list a, prepare_price_list_index b
        where a.id_office = const_office and a.ppli_id = b.ppli_id
            and b.finished = 1
            and a.n_id = p_nid
        order by ppl_id desc
    ) a
    where rownum = 1
    ;

    RETURN var_;
EXCEPTION
   WHEN others THEN
         var_ := 0;
         RETURN 0;
END;
/

-- Grants for Function
GRANT EXECUTE ON get_price_pcc TO new_role
/
create or replace public synonym get_price_pcc for creator.get_price_pcc
/

-- End of DDL Script for Function CREATOR.GET_PRICE_PCC

