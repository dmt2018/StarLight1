-- Start of DDL Script for Package Body CREATOR.CLAIMS_PKG
-- Generated 10.12.2011 20:50:52 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE claims_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные
CNT       NUMBER;


/* ********************************* */
/* Пакет для работы программы CLAIMS */
/* ********************************* */

--
-- Добавление, редактирование клейма
--
PROCEDURE claims_edit
(
    ID_         in out number,
    INV_ID_     in number,
    DDATE_      in date,
    N_TRACK_    in number,
    INFO_       in varchar2
--  , id_dep_     in number
    ,o_err_code          IN OUT PLS_INTEGER --возвращает: <0 -- ошибка, >= 0 - Ок
    ,o_err_msg           IN OUT VARCHAR2 --собственно сообщение об ошибке
);


PROCEDURE claims_edit_list
(
    ID_         in out number
    ,N_ID_      in number
    ,CLAIM_ID_  in number
    ,TTYPE_     in number
    ,S_ID_      in number
    ,ID_CLIENTS_ in number
    ,quantity_  in number
    ,hfl_       in number
    ,cust_      in number
    ,defect_    in varchar2
    ,quantity2_ in number
    ,hfl2_      in number
    ,cust2_     in number
    ,flower_    in varchar2
    ,INFO_       in varchar2
    ,o_err_code          IN OUT PLS_INTEGER --возвращает: <0 -- ошибка, >= 0 - Ок
    ,o_err_msg           IN OUT VARCHAR2 --собственно сообщение об ошибке
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON claims_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY claims_pkg
IS

/* ********************************* */
/* Пакет для работы программы CLAIMS */
/* ********************************* */

--
-- Добавление, редактирование клейма
--
PROCEDURE claims_edit
(
    ID_         in out number,
    INV_ID_     in number,
    DDATE_      in date,
    N_TRACK_    in number,
    INFO_       in varchar2
--    , id_dep_     in number
    ,o_err_code          IN OUT PLS_INTEGER --возвращает: <0 -- ошибка, >= 0 - Ок
    ,o_err_msg           IN OUT VARCHAR2 --собственно сообщение об ошибке
)
IS
--  SP_OPERATOR_NAME      varchar2(100);
BEGIN
/*
    select a.fio into SP_OPERATOR_NAME
        from clients a
            where a.login = user;
*/
  o_err_code := 0;
  o_err_msg  := '';
  cnt := 0;
  if (ID_ = 0) then
     SELECT count(INV_ID) into cnt FROM CLAIMS WHERE INV_ID=INV_ID_;
     if (cnt > 0) then
        o_err_code := -1;
        o_err_msg  := 'Прeтензия на инвойс №'||INV_ID_||' уже создана!';
     else
         INSERT INTO CLAIMS VALUES(get_office_unique('CLAIMS_ID'), DDATE_, INV_ID_, N_TRACK_, INFO_, const_office, sysdate) returning CLAIMS_ID into ID_;
         commit;
     end if;
  else
     SELECT count(INV_ID) into cnt FROM CLAIMS WHERE INV_ID=INV_ID_ and CLAIMS_ID <> ID_;
     if (cnt > 0) then
        o_err_code := -1;
        o_err_msg  := 'Прeтензия на инвойс №'||INV_ID_||' уже создана!';
     else
         UPDATE CLAIMS SET N_TRACK=N_TRACK_, DOP_INFO=INFO_, date_change=sysdate WHERE CLAIMS_ID = ID_;
         commit;
     end if;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'CLAIMS_PKG.claims_edit', '');
       RAISE_APPLICATION_ERROR (-20751, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;  -- claims_edit




--
-- Добавление, редактирование записи в клейме
--
PROCEDURE claims_edit_list
(
    ID_         in out number
    ,N_ID_      in number
    ,CLAIM_ID_  in number
    ,TTYPE_     in number
    ,S_ID_      in number
    ,ID_CLIENTS_ in number
    ,quantity_  in number
    ,hfl_       in number
    ,cust_      in number
    ,defect_    in varchar2
    ,quantity2_ in number
    ,hfl2_      in number
    ,cust2_     in number
    ,flower_    in varchar2
    ,INFO_       in varchar2
    ,o_err_code          IN OUT PLS_INTEGER --возвращает: <0 -- ошибка, >= 0 - Ок
    ,o_err_msg           IN OUT VARCHAR2 --собственно сообщение об ошибке
)
IS
--  SP_OPERATOR_NAME      varchar2(100);
BEGIN
  --     RAISE_APPLICATION_ERROR (-20752, quantity_);

  cnt := 0;
  if (ID_ = 0) then
     SELECT count(CLAIMS_LIST_ID) into cnt FROM CLAIMS_LIST WHERE CLAIMS_ID=CLAIM_ID_ AND FN_ID = N_ID_;
     if (cnt > 0) then
        o_err_code := -1;
        o_err_msg  := 'Прeтензия на товар №'||N_ID_||' уже создана!';
     else
         INSERT INTO CLAIMS_LIST VALUES(get_office_unique('CLAIMS_LIST_ID'),CLAIM_ID_,TTYPE_,S_ID_,ID_CLIENTS_,
         n_id_,quantity_,hfl_,cust_,defect_,info_,quantity2_,hfl2_,cust2_,flower_, const_office, sysdate) returning claims_list_id into ID_;
         commit;
     end if;
  else
     SELECT count(CLAIMS_LIST_ID) into cnt FROM CLAIMS_LIST WHERE CLAIMS_ID=CLAIM_ID_ AND FN_ID = N_ID_ and claims_list_id <> ID_;
     if (cnt > 0) then
        o_err_code := -1;
        o_err_msg  := 'Прeтензия на товар №'||N_ID_||' уже создана!';
     else
--     raise_application_error(-20001,cust_);
         UPDATE CLAIMS_LIST SET TTYPE=TTYPE_, S_ID=S_ID_, ID_CLIENTS=ID_CLIENTS_, fn_id=n_id_,
                quantity=quantity_, hfl=hfl_, cust=cust_, defect=defect_, info=info_,
                quantity2=quantity2_, hfl2=hfl2_, cust2=cust2_, flower=flower_, date_change=sysdate
                WHERE claims_list_id = ID_;
         commit;
     end if;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'CLAIMS_PKG.claims_edit_list', '');
       RAISE_APPLICATION_ERROR (-20752, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;  -- claims_edit_list




END;
/
create or replace public synonym claims_pkg for creator.claims_pkg
/

-- End of DDL Script for Package Body CREATOR.CLAIMS_PKG

