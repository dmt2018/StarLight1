-- Start of DDL Script for Package Body CREATOR.BUH_PKG
-- Generated 10.12.2011 20:46:28 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE buh_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные
cnt_  number;

--
--  Обнуление последовательностей
--
procedure number_obnul
(
  av_seq in varchar2
);



--
-- Записываем компанию
--
PROCEDURE save_company
(
   COMPANY_ID_            in out number,
   COMPANY_NAME_          in varchar2,
   KPP_                   in varchar2,
   INN_                   in varchar2,
   ADRESS_                in varchar2,
   PHONE_                 in varchar2,
   FAX_                   in varchar2,
   OTPUSK_PROIZVEL_FIO_   in varchar2,
   OTPUSK_RAZRESHIL_FIO_  in varchar2,
   GLAV_BUH_              in varchar2,
   OTPUSK_PROIZVEL_DOLJN_ in varchar2,
   OTPUSK_RAZRESHIL_DOLJN_ in varchar2
);


--
-- Записываем людей для компании
--
PROCEDURE save_comp_empl
(
   COMPANY_EMP_ID_        in out number,
   COMPANY_ID_            in number,
   ID_DEPARTMENTS_        in number,
   OTPUSK_PROIZVEL_FIO_   in varchar2,
   OTPUSK_RAZRESHIL_FIO_  in varchar2,
   GLAV_BUH_              in varchar2,
   OTPUSK_PROIZVEL_DOLJN_ in varchar2,
   OTPUSK_RAZRESHIL_DOLJN_ in varchar2
);


--
-- Удаляем компанию
--
PROCEDURE delete_company
(
   COMPANY_ID_    in number,
   OUT_RES        in OUT NUMBER,
   OUT_TEXT       in OUT VARCHAR2
);


--
-- Удаляем банк
--
PROCEDURE delete_bank
(
   bank_ID_       in number,
   OUT_RES        in OUT NUMBER,
   OUT_TEXT       in OUT VARCHAR2
);



--
-- Записываем людей для компании
--
PROCEDURE save_bank
(
   BANC_ID_            in out number,
   BANC_NAME_          in varchar2,
   BANC_RS_            in varchar2,
   BANC_KS_            in varchar2,
   BANC_BIK_           in varchar2,
   COMPANY_ID_         in number
);



--
-- Выбор бухгалтерские документы
--
PROCEDURE get_buh_view_client
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- Устанавливаем нового клиента
--
PROCEDURE set_new_client
(
   id_client_      in number,
   ID_DOC_         in number
);


--
-- Удаляем строчку в документе
--
PROCEDURE del_doc_data
(
   ID_DOC_DATA_         in number
);


--
--  Добавляем / изменяем данные в накладной
--
PROCEDURE DATA_TEMP_ADD
(
  SP_N_ID      in  NUMBER,
  SP_QUANTITY  in  NUMBER,
  SP_ROOT      in  NUMBER,
  IDD_DOC_DATA out NUMBER
);


--
--  Вставляем данные со склада
--
PROCEDURE DATA_FROM_STOREDOCS
(
 store_doc_num_add in NUMBER,
 store_doc_num_del in NUMBER,
 svod              in NUMBER,
 zatiranie         in Number
-- v_office          in number
);



--
-- Данные для подгрузки со склада
--
PROCEDURE get_data
(
   id_dep_      in number,
   ID_DOC_TYPE_ in number,
   NumberDoc_   in varchar2,
   fio_         in varchar2,
   nick_        in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   param_       in number,
   v_office     in number,
   cursor_      in out ref_cursor
);


--
-- Сохраняем изменения по накладной
--
PROCEDURE update_doc
(
   date_              in date,
   DISCOUNTEdit_      in number,
   NDSEdit_           in varchar2,
   DocNumberEdit_     in varchar2,
   DocNumberAddEdit_  in varchar2,
   COMMENTSEdit_      in varchar2,
   id_client_         in number,
   id_                in number
);


--
-- Очищаем временную таблицу
--
PROCEDURE clear_data_temp;


--
-- Добавляем документ со склада
--
PROCEDURE insert_doc
(
   ID_DOC_TYPE_        in number,
   ID_CLIENT_          in number,
   ID_DEP_             in number,
   NDS_                in number,
   OPERATOR_NAME_      in varchar2,
   ID_COMPANY_         in number,
   ID_BANC_            in number,
--   v_office            in number,
   id_                 in out number
);


--
--  Копируем документ с одного типа в другой
--
PROCEDURE CREATE_COPY
(
  SP_ROOT     in NUMBER,
  SP_DOC_TYPE in NUMBER
);


--
--  Удаляем накладную
--
PROCEDURE delete_docs
(
  id_doc_     in NUMBER
);


--
-- Выбор отделов доступных пользователю
--
PROCEDURE get_deps_on_user
(
   cursor_ out ref_cursor
);


--
-- Статистика по бух-документам
--
PROCEDURE GET_BUH_STAT
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   gtd_         in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- Статистика по ГТД
--
PROCEDURE GET_GTD_STAT
(
   gtd_         in varchar2,
   cursor_      out ref_cursor
);


--
-- Посмотрим что по ГТД
--
PROCEDURE GET_GTD_LIST
(
   gtd_         in varchar2,
   date_        in date,
   cursor_      out ref_cursor
);


--
--  Вставляем в бухгалтерию из резерва
--
procedure insert_in_buh
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , ID_COMPANY_      IN NUMBER
  , ID_BANC_         IN NUMBER
  , NDS_             IN NUMBER
--  , v_office         in number
);


--
--  Вставляем данные со склада в транспортную накладную
--
PROCEDURE CARGO_FROM_STOREDOCS
(
 store_doc_num_add in NUMBER,
 store_doc_num_del in NUMBER
);


--
--  Вставляем данные со склада
--
PROCEDURE SAVE_CARGO_DATA
(
 id_doc_cargo      in NUMBER
);


function show_docs(
    ID_DOC_ in number
) RETURN varchar2;


--
-- Синхронизируем цену и количество в документах
--
PROCEDURE sync_doc_data
(
   ID_DOC_         in number
);


--
--  Вставляем заголовок в бухгалтерию из резерва
--
procedure insert_in_buh_head
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , ID_COMPANY_      IN NUMBER
  , ID_BANC_         IN NUMBER
  , NDS_             IN NUMBER
--  , v_office         in number
  , id_doc_          in out number
);

--
--  Вставляем в бухгалтерию из резерва
--
procedure insert_in_buh2
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , id_doc_          IN NUMBER
--  , v_office         in number
);


END;
/

-- Grants for Package
GRANT EXECUTE ON buh_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY buh_pkg
IS

--
--  Обнуление последовательностей
--
procedure number_obnul
(
  av_seq in varchar2
)
is
  sql_str varchar2(200);
  var1    number;
Begin

  sql_str := 'select '||av_seq||'.NEXTVAL from dual';
  EXECUTE IMMEDIATE sql_str into var1;

  sql_str := 'ALTER SEQUENCE '||av_seq||' INCREMENT BY '|| (0-var1+1);
  EXECUTE IMMEDIATE sql_str;

  sql_str := 'select '||av_seq||'.NEXTVAL from dual';
  EXECUTE IMMEDIATE sql_str into var1;

  sql_str := 'ALTER SEQUENCE '||av_seq||' INCREMENT BY 1';
  EXECUTE IMMEDIATE sql_str;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.number_obnul', sql_str);
       RAISE_APPLICATION_ERROR (-20701, 'Запрос не выполнился. ' || SQLERRM);

end number_obnul;



--
-- Записываем компанию
--
PROCEDURE save_company
(
   COMPANY_ID_            in out number,
   COMPANY_NAME_          in varchar2,
   KPP_                   in varchar2,
   INN_                   in varchar2,
   ADRESS_                in varchar2,
   PHONE_                 in varchar2,
   FAX_                   in varchar2,
   OTPUSK_PROIZVEL_FIO_   in varchar2,
   OTPUSK_RAZRESHIL_FIO_  in varchar2,
   GLAV_BUH_              in varchar2,
   OTPUSK_PROIZVEL_DOLJN_ in varchar2,
   OTPUSK_RAZRESHIL_DOLJN_ in varchar2
)
is
begin

  if (COMPANY_ID_ is null) or (COMPANY_ID_ = 0) then

    INSERT INTO buh_company
      (COMPANY_ID, COMPANY_NAME, KPP, INN, ADRESS, PHONE, FAX, OTPUSK_PROIZVEL_FIO, OTPUSK_RAZRESHIL_FIO, GLAV_BUH, OTPUSK_PROIZVEL_DOLJN, OTPUSK_RAZRESHIL_DOLJN)
    VALUES
      (get_office_unique('BUH_COMPANY_SET_ID'), COMPANY_NAME_, KPP_, INN_, ADRESS_, PHONE_, FAX_, OTPUSK_PROIZVEL_FIO_, OTPUSK_RAZRESHIL_FIO_, GLAV_BUH_, OTPUSK_PROIZVEL_DOLJN_, OTPUSK_RAZRESHIL_DOLJN_)
    RETURNING COMPANY_ID INTO COMPANY_ID_;

  else

    UPDATE buh_company SET
      COMPANY_NAME = COMPANY_NAME_,
      KPP = KPP_,
      INN = INN_,
      ADRESS = ADRESS_,
      PHONE = PHONE_,
      FAX = FAX_,
      OTPUSK_PROIZVEL_FIO = OTPUSK_PROIZVEL_FIO_,
      OTPUSK_RAZRESHIL_FIO = OTPUSK_RAZRESHIL_FIO_,
      GLAV_BUH = GLAV_BUH_,
      OTPUSK_PROIZVEL_DOLJN = OTPUSK_PROIZVEL_DOLJN_,
      OTPUSK_RAZRESHIL_DOLJN = OTPUSK_RAZRESHIL_DOLJN_
    WHERE
      COMPANY_ID = COMPANY_ID_;

  end if;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.save_company', '');
       RAISE_APPLICATION_ERROR (-20702, 'Запрос не выполнился. ' || SQLERRM);
end;




--
-- Записываем людей для компании
--
PROCEDURE save_comp_empl
(
   COMPANY_EMP_ID_        in out number,
   COMPANY_ID_            in number,
   ID_DEPARTMENTS_        in number,
   OTPUSK_PROIZVEL_FIO_   in varchar2,
   OTPUSK_RAZRESHIL_FIO_  in varchar2,
   GLAV_BUH_              in varchar2,
   OTPUSK_PROIZVEL_DOLJN_ in varchar2,
   OTPUSK_RAZRESHIL_DOLJN_ in varchar2
)
is
begin

  if (COMPANY_EMP_ID_ is null) or (COMPANY_EMP_ID_ = 0) then

    INSERT INTO BUH_company_emp
      (company_emp_ID, COMPANY_ID, ID_DEPARTMENTS, OTPUSK_PROIZVEL_FIO, OTPUSK_RAZRESHIL_FIO, GLAV_BUH, OTPUSK_PROIZVEL_DOLJN, OTPUSK_RAZRESHIL_DOLJN)
    VALUES
      (get_office_unique('BUH_COMPANY_EMP_SET_ID'), COMPANY_ID_, ID_DEPARTMENTS_, OTPUSK_PROIZVEL_FIO_, OTPUSK_RAZRESHIL_FIO_, GLAV_BUH_, OTPUSK_PROIZVEL_DOLJN_, OTPUSK_RAZRESHIL_DOLJN_)
    RETURNING COMPANY_EMP_ID INTO COMPANY_EMP_ID_;

  else

    UPDATE BUH_company_emp SET
      OTPUSK_PROIZVEL_FIO = OTPUSK_PROIZVEL_FIO_,
      OTPUSK_RAZRESHIL_FIO = OTPUSK_RAZRESHIL_FIO_,
      GLAV_BUH = GLAV_BUH_,
      OTPUSK_PROIZVEL_DOLJN = OTPUSK_PROIZVEL_DOLJN_,
      OTPUSK_RAZRESHIL_DOLJN = OTPUSK_RAZRESHIL_DOLJN_
    WHERE
      COMPANY_EMP_ID = COMPANY_EMP_ID_;

  end if;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.save_comp_empl', '');
       RAISE_APPLICATION_ERROR (-20703, 'Запрос не выполнился. ' || SQLERRM);

end save_comp_empl;


--
-- Удаляем компанию
--
PROCEDURE delete_company
(
   COMPANY_ID_    in number,
   OUT_RES        in OUT NUMBER,
   OUT_TEXT       in OUT VARCHAR2
)
is
begin
  OUT_RES  := 0;
  OUT_TEXT := '';
  select count(*) into cnt_ from BUH_DOC where id_company = COMPANY_ID_;

  if cnt_ > 0 then
    OUT_RES := 1;
    OUT_TEXT := 'Данная запись используется в бухгалтерских документах! Удаление невозможно!';
  else
    DELETE BUH_company WHERE COMPANY_ID = COMPANY_ID_;
    commit;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.delete_company', '');
       RAISE_APPLICATION_ERROR (-20704, 'Запрос не выполнился. ' || SQLERRM);

end delete_company;


--
-- Удаляем банк
--
PROCEDURE delete_bank
(
   bank_ID_       in number,
   OUT_RES        in OUT NUMBER,
   OUT_TEXT       in OUT VARCHAR2
)
is
begin
  OUT_RES  := 0;
  OUT_TEXT := '';
  select count(*) into cnt_ from BUH_DOC where ID_BANC = bank_ID_;

  if cnt_ > 0 then
    OUT_RES := 1;
    OUT_TEXT := 'Данная запись используется в бухгалтерских документах! Удаление невозможно!';
  else
    DELETE BUH_BANC WHERE BANC_ID = bank_ID_;
    commit;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.delete_bank', '');
       RAISE_APPLICATION_ERROR (-20705, 'Запрос не выполнился. ' || SQLERRM);

end delete_bank;



--
-- Записываем банк
--
PROCEDURE save_bank
(
   BANC_ID_            in out number,
   BANC_NAME_          in varchar2,
   BANC_RS_            in varchar2,
   BANC_KS_            in varchar2,
   BANC_BIK_           in varchar2,
   COMPANY_ID_         in number
)
is
begin

  if (BANC_ID_ is null) or (BANC_ID_ = 0) then

    INSERT INTO buh_banc
      (BANC_ID, BANC_NAME, BANC_RS, BANC_KS, BANC_BIK, COMPANY_ID)
    VALUES
      (get_office_unique('BUH_BANC_SET_ID'), BANC_NAME_, BANC_RS_, BANC_KS_, BANC_BIK_, COMPANY_ID_)
    RETURNING BANC_ID INTO BANC_ID_;

  else

    UPDATE buh_banc SET
      BANC_NAME = BANC_NAME_,
      BANC_RS   = BANC_RS_,
      BANC_KS   = BANC_KS_,
      BANC_BIK  = BANC_BIK_
    WHERE
      BANC_ID = BANC_ID_;

  end if;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.save_bank', '');
       RAISE_APPLICATION_ERROR (-20706, 'Запрос не выполнился. ' || SQLERRM);

end save_bank;


function show_docs(
    ID_DOC_ in number
) RETURN varchar2
IS
   CURSOR my_cur (nom_id NUMBER) IS
     select b.doc_number from buh_doc_cargo a, buh_doc b where a.ID_DOC_cargo = nom_id and a.id_doc_child = b.id_doc;

   v_num_doc    number;
   RETVAL       VARCHAR2(256);
begin
   RETVAL := NULL;
   OPEN my_cur(ID_DOC_);
   LOOP
      FETCH my_cur INTO v_num_doc;

      IF my_cur%NOTFOUND THEN
         EXIT;
      END IF;

      IF RETVAL IS NULL
      THEN
         RETVAL := v_num_doc;
      ELSE
         RETVAL :=    RETVAL || ', ' || v_num_doc;
      END IF;

   end loop;
   close my_cur;
   return RETVAL;
end;

--
-- Выбор бухгалтерские документы
--
PROCEDURE get_buh_view_client
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
)
IS

BEGIN

  open cursor_ for
select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
    , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
    , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
    , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
    , z.name as group_name
    , e.NAME as buh_doc_type_name
    , f.COMPANY_NAME
    , g.BANC_NAME
    , show_docs(a.id_doc) as cargo
    , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
    , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
    , a.id_office, a.brief

from (

select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL,

    CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
    ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL

    , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
    , a.id_office, o.brief
    , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
    , sum(b.PRICE * b.QUANTITY) sum_price_new
    , count(b.ID_DOC_DATA) as QUANTITY_ALL
    , sum(
      (
        (
          (
            ROUND( (PRICE*100 / (100+a.NDS) ),2)
          ) * QUANTITY
        ) +
        ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
      ) ) as PRICE_ALL

FROM
   BUH_DOC a,
   BUH_DOC_data b,
   offices o

where a.id_doc = b.id_doc
          and a.id_departments = id_dep_
          and (a.id_office = v_office or v_office = 0)
                and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
                and trunc(a.doc_date) between DOC_DATE1_ and DOC_DATE2_
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
                and a.id_office = o.id_office

group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
, a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.id_office, o.brief

) a,
   books_client_TYPES c,
   CLIENTS d, clients_groups z,
   buh_doc_type e,
   buh_company f,
   buh_banc g

WHERE
a.ID_CLIENT = d.ID_CLIENTS
and c.ID_CLIENT_TYPES = d.TTYPE
and a.ID_DOC_TYPE = e.ID_DOC_TYPE
and a.ID_company = f.company_id(+)
and a.ID_BANC = g.BANC_ID(+)
and d.ID_CLIENTS_GROUPS = z.ID_CLIENTS_GROUPS(+)
AND UPPER(Nick) LIKE '%'|| upper(nick_) ||'%'
AND UPPER(FIO) LIKE '%'|| upper(fio_) ||'%'
 ORDER BY DOC_DATE desc, DOC_DATE_real desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.get_buh_view_client', '');
       RAISE_APPLICATION_ERROR (-20707, 'Запрос не выполнился. ' || SQLERRM);

end get_buh_view_client;




--
-- Устанавливаем нового клиента
--
PROCEDURE set_new_client
(
   id_client_      in number,
   ID_DOC_         in number
)
is
begin

  UPDATE buh_doc SET ID_CLIENT = id_client_, date_change = sysdate
    WHERE ID_DOC = ID_DOC_;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.set_new_client', '');
       RAISE_APPLICATION_ERROR (-20708, 'Запрос не выполнился. ' || SQLERRM);
end;



--
-- Удаляем строчку в документе
--
PROCEDURE del_doc_data
(
   ID_DOC_DATA_         in number
)
is
begin

  DELETE buh_doc_data WHERE ID_DOC_DATA = ID_DOC_DATA_;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.del_doc_data', '');
       RAISE_APPLICATION_ERROR (-20709, 'Запрос не выполнился. ' || SQLERRM);

end;




--
--  Добавляем / изменяем данные в накладной
--
PROCEDURE DATA_TEMP_ADD
(
  SP_N_ID      in  NUMBER,
  SP_QUANTITY  in  NUMBER,
  SP_ROOT      in  NUMBER,
  IDD_DOC_DATA out NUMBER
)
as
begin

  IF SP_QUANTITY<>0 THEN

    select count(N_ID) into cnt_
      from BUH_DOC_DATA
        where N_ID = SP_N_ID
              and ID_DOC = SP_ROOT;


    IF cnt_<>0 THEN

      UPDATE BUH_DOC_DATA SET QUANTITY = SP_QUANTITY, date_change = sysdate
        where N_ID = SP_N_ID
              and ID_DOC = SP_ROOT
      RETURNING ID_DOC_DATA INTO IDD_DOC_DATA;

    else

      INSERT INTO BUH_DOC_DATA (ID_DOC_DATA, N_ID, QUANTITY, ID_DOC, id_office)
        VALUES (get_office_unique('BUH_DOC_DATA_SET_ID'), SP_N_ID,SP_QUANTITY, SP_ROOT, const_office)
      RETURNING ID_DOC_DATA INTO IDD_DOC_DATA;

    end if;

  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.DATA_TEMP_ADD', '');
       RAISE_APPLICATION_ERROR (-20710, 'Запрос не выполнился. ' || SQLERRM);

end DATA_TEMP_ADD;


--
--  Вставляем данные со склада
--
PROCEDURE DATA_FROM_STOREDOCS
(
 store_doc_num_add in NUMBER,
 store_doc_num_del in NUMBER,
 svod              in NUMBER,
 zatiranie         in Number
-- v_office          in number
)
as
  IID_DOC NUMBER;

begin

  -- Вставляем во временную таблицу
  if store_doc_num_add <> 0 and store_doc_num_del = 0 THEN
     INSERT INTO buh_doc_data_temp (BUH_DOC_DATA_TEMP, N_ID, QUANTITY, price, ID_DOC_STORE, GTD)
     ( select BUH_DOC_DATA_TEMP_SET_ID.NEXTVAL, N_ID, QUANTITY, price, ID_DOC, GTD
        from buh_doc_data
          where ID_DOC = store_doc_num_add
          and QUANTITY <> 0   -- специально, чтобы 0-ли не брались
     );
  end if;

  -- Удаляем из временной таблицы
  if store_doc_num_del <> 0 and store_doc_num_add = 0 THEN
    delete from buh_doc_data_temp
      where ID_DOC_STORE = store_doc_num_del;
  end if;

  -- Вставляем во временную таблицу с затиранием предыдущей записи
  if store_doc_num_del = 0 and store_doc_num_add = 0 and svod <> 0 THEN
    INSERT INTO buh_doc_data_temp (BUH_DOC_DATA_TEMP, N_ID, QUANTITY, price, GTD)
    ( select BUH_DOC_DATA_TEMP_SET_ID.NEXTVAL, N_ID, QUANTITY, price, GTD
        from buh_doc_data
          where ID_DOC = svod
    );

    if zatiranie = 1 then
      delete from buh_doc_data_temp where ID_DOC_STORE = 0;
    end if;

    UPDATE buh_doc_data_temp SET new = 0;

    delete from buh_doc_data where ID_DOC = svod;

    INSERT INTO buh_doc_data (ID_DOC_DATA, N_ID, QUANTITY, price, ID_DOC, GTD, id_office)
    (
      select get_office_unique('BUH_DOC_DATA_SET_ID'), N_ID, Quantity, Price, svod, GTD, const_office from
      (
      select N_ID, sum(Quantity) as Quantity, Price, GTD
        from buh_doc_data_temp
          group by N_ID, Price, GTD
      ) where Quantity <> 0
    );

    delete from buh_doc_data_temp;

  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.DATA_FROM_STOREDOCS', '');
       RAISE_APPLICATION_ERROR (-20711, 'Запрос не выполнился. ' || SQLERRM);

end DATA_FROM_STOREDOCS;




--
-- Данные для подгрузки со склада
--
PROCEDURE get_data
(
   id_dep_      in number,
   ID_DOC_TYPE_ in number,
   NumberDoc_   in varchar2,
   fio_         in varchar2,
   nick_        in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   param_       in number,
   v_office     in number,
   cursor_      in out ref_cursor
)
IS
  sql_str varchar2(4096);
BEGIN

-- param_ = 1 - Какие есть накладные
-- param_ = 0 - Какие выбранные накладные


if ( ID_DOC_TYPE_ = 4 ) then

    if ( param_ = 1 ) then

    open cursor_ for
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
                , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.store_doc_number
                , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
                , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
                , z.name as group_name
                , e.NAME as buh_doc_type_name
                , COMPANY_NAME
                , g.BANC_NAME
                , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
                , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
                  , a.id_office, a.BRIEF
            from (
            select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, c.DOC_NUMBER as store_doc_number,
--                CASE WHEN a.DOC_NUMBER_ADD is not null THEN a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD
                CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
                ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
                , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
                , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
                , sum(b.PRICE * b.QUANTITY) sum_price_new
                , count(b.ID_DOC_DATA) as QUANTITY_ALL
                , sum(
                  (
                    (
                      (
                        ROUND( (PRICE*100 / (100+a.NDS) ),2)
                      ) * QUANTITY
                    ) +
                    ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
                  ) ) as PRICE_ALL
                  , a.id_office, o.BRIEF
            FROM
               BUH_DOC a,
               BUH_DOC_data b,
               STORE_DOC c,
               offices o
            where a.id_doc = b.id_doc
                      and a.id_departments = id_dep_
                      and a.STORE_DOC_ID = c.ID_DOC
                  and (a.id_office = v_office or v_office = 0)
                  and a.id_office = o.id_office
                            and (c.DOC_NUMBER = NumberDoc_ or NumberDoc_ is null)
                            and trunc(a.doc_date) between DOC_DATE1_-1 and DOC_DATE2_
                            and a.ID_DOC_TYPE = 4
            group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, c.DOC_NUMBER
            , a.id_office, o.BRIEF

            ) a,
               books_client_TYPES c,
               CLIENTS d, clients_groups z,
               buh_doc_type e,
               buh_company f,
               buh_banc g

            WHERE a.ID_CLIENT = d.ID_CLIENTS
                AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
                and a.ID_DOC not in (select distinct ID_DOC_STORE from buh_doc_data_temp)
                and c.ID_CLIENT_TYPES = d.TTYPE
                and a.ID_DOC_TYPE = e.ID_DOC_TYPE
                and a.ID_company = f.company_id(+)
                and a.ID_BANC = g.BANC_ID(+)
                and d.ID_CLIENTS_GROUPS = z.ID_CLIENTS_GROUPS(+)
             ORDER BY DOC_DATE desc, DOC_DATE_real desc;

    else

    open cursor_ for
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.store_doc_number
            , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
            , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
            , z.name as group_name
            , e.NAME as buh_doc_type_name
            , COMPANY_NAME
            , g.BANC_NAME
            , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
            , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
            , a.id_office, a.BRIEF
        from (
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, c.DOC_NUMBER as store_doc_number,
--            CASE WHEN a.DOC_NUMBER_ADD is not null THEN a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD
            CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
            ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
            , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
            , sum(b.PRICE * b.QUANTITY) sum_price_new
            , count(b.ID_DOC_DATA) as QUANTITY_ALL
            , sum(
              (
                (
                  (
                    ROUND( (PRICE*100 / (100+a.NDS) ),2)
                  ) * QUANTITY
                ) +
                ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
              ) ) as PRICE_ALL
                  , a.id_office, o.BRIEF
        FROM
           BUH_DOC a,
           BUH_DOC_data b,
           STORE_DOC c,
           offices o
        where a.id_doc = b.id_doc
                  and a.id_departments = id_dep_
                  and a.STORE_DOC_ID = c.ID_DOC
                  and (a.id_office = v_office or v_office = 0)
                  and a.id_office = o.id_office
                        and (c.DOC_NUMBER = NumberDoc_ or NumberDoc_ is null)
                        and trunc(a.doc_date) between DOC_DATE1_-1 and DOC_DATE2_
                        and a.ID_DOC_TYPE = 4
        group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
        , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, c.DOC_NUMBER
        , a.id_office, o.BRIEF

        ) a,
           books_client_TYPES c,
           CLIENTS d, clients_groups z,
           buh_doc_type e,
           buh_company f,
           buh_banc g
        WHERE a.ID_DOC in (select distinct ID_DOC_STORE from buh_doc_data_temp)
        and a.ID_CLIENT = d.ID_CLIENTS
        --AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
        --AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
        and c.ID_CLIENT_TYPES = d.TTYPE
        and a.ID_DOC_TYPE = e.ID_DOC_TYPE
        and a.ID_company = f.company_id(+)
        and a.ID_BANC = g.BANC_ID(+)
                and d.ID_CLIENTS_GROUPS = z.ID_CLIENTS_GROUPS(+)
         ORDER BY DOC_DATE desc, DOC_DATE_real desc;

    end if;

else

    if ( param_ = 1 ) then

    open cursor_ for
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
                , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.store_doc_number
                , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
                , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
                , z.name as group_name
                , e.NAME as buh_doc_type_name
                , COMPANY_NAME
                , g.BANC_NAME
                , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
                , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
                  , a.id_office, a.BRIEF
            from (
            select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, null as store_doc_number,
--                CASE WHEN a.DOC_NUMBER_ADD is not null THEN a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD
                CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
                ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
                , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
                , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
                , sum(b.PRICE * b.QUANTITY) sum_price_new
                , count(b.ID_DOC_DATA) as QUANTITY_ALL
                , sum(
                  (
                    (
                      (
                        ROUND( (PRICE*100 / (100+a.NDS) ),2)
                      ) * QUANTITY
                    ) +
                    ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
                  ) ) as PRICE_ALL
                  , a.id_office, o.BRIEF
            FROM
               BUH_DOC a,
               BUH_DOC_data b,
               offices o
               --STORE_DOC c
            where a.id_doc = b.id_doc
                      and a.id_departments = id_dep_
                      --and a.STORE_DOC_ID = c.ID_DOC
                  and (a.id_office = v_office or v_office = 0)
                  and a.id_office = o.id_office
                            and (a.DOC_NUMBER = NumberDoc_ or NumberDoc_ is null)
                            and trunc(a.doc_date) between DOC_DATE1_-1 and DOC_DATE2_
                            and a.ID_DOC_TYPE <> 4
            group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC--, c.DOC_NUMBER
            , a.id_office, o.BRIEF

            ) a,
               books_client_TYPES c,
               CLIENTS d, clients_groups z,
               buh_doc_type e,
               buh_company f,
               buh_banc g

            WHERE a.ID_CLIENT = d.ID_CLIENTS
                AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
                and a.ID_DOC not in (select distinct ID_DOC_STORE from buh_doc_data_temp)
                and c.ID_CLIENT_TYPES = d.TTYPE
                and a.ID_DOC_TYPE = e.ID_DOC_TYPE
                and a.ID_company = f.company_id(+)
                and a.ID_BANC = g.BANC_ID(+)
                and d.ID_CLIENTS_GROUPS = z.ID_CLIENTS_GROUPS(+)
             ORDER BY DOC_DATE desc, DOC_DATE_real desc;

    else

    open cursor_ for
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.store_doc_number
            , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
            , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
            , z.name as group_name
            , e.NAME as buh_doc_type_name
            , COMPANY_NAME
            , g.BANC_NAME
            , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
            , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
                  , a.id_office, a.BRIEF
        from (
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, null as store_doc_number,
--            CASE WHEN a.DOC_NUMBER_ADD is not null THEN a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD
            CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
            ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
            , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
            , sum(b.PRICE * b.QUANTITY) sum_price_new
            , count(b.ID_DOC_DATA) as QUANTITY_ALL
            , sum(
              (
                (
                  (
                    ROUND( (PRICE*100 / (100+a.NDS) ),2)
                  ) * QUANTITY
                ) +
                ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
              ) ) as PRICE_ALL
                  , a.id_office, o.BRIEF
        FROM
           BUH_DOC a,
           BUH_DOC_data b,
           offices o
           --STORE_DOC c
        where a.id_doc = b.id_doc
                  and a.id_departments = id_dep_
                  --and a.STORE_DOC_ID = c.ID_DOC
                  and (a.id_office = v_office or v_office = 0)
                  and a.id_office = o.id_office
                        and (a.DOC_NUMBER = NumberDoc_ or NumberDoc_ is null)
                        and trunc(a.doc_date) between DOC_DATE1_-1 and DOC_DATE2_
                        and a.ID_DOC_TYPE <> 4
        group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
        , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC--, c.DOC_NUMBER
        , a.id_office, o.BRIEF

        ) a,
           books_client_TYPES c,
           CLIENTS d, clients_groups z,
           buh_doc_type e,
           buh_company f,
           buh_banc g
        WHERE a.ID_DOC in (select distinct ID_DOC_STORE from buh_doc_data_temp)
        and a.ID_CLIENT = d.ID_CLIENTS
        --AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
        --AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
        and c.ID_CLIENT_TYPES = d.TTYPE
        and a.ID_DOC_TYPE = e.ID_DOC_TYPE
        and a.ID_company = f.company_id(+)
        and a.ID_BANC = g.BANC_ID(+)
                and d.ID_CLIENTS_GROUPS = z.ID_CLIENTS_GROUPS(+)
         ORDER BY DOC_DATE desc, DOC_DATE_real desc;

    end if;

end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.get_data', '');
       RAISE_APPLICATION_ERROR (-20712, 'Запрос не выполнился. ' || SQLERRM);

end get_data;



--
-- Сохраняем изменения по накладной
--
PROCEDURE update_doc
(
   date_              in date,
   DISCOUNTEdit_      in number,
   NDSEdit_           in varchar2,
   DocNumberEdit_     in varchar2,
   DocNumberAddEdit_  in varchar2,
   COMMENTSEdit_      in varchar2,
   id_client_         in number,
   id_                in number
)
IS
BEGIN

  UPDATE buh_doc SET DOC_DATE = trunc(date_), NDS = NDSEdit_, DOC_NUMBER = DocNumberEdit_, DOC_NUMBER_ADD = DocNumberAddEdit_, DISCOUNT = DISCOUNTEdit_,
          COMMENTS = COMMENTSEdit_, ID_CLIENT= id_client_, date_change = sysdate
          where ID_DOC = id_;

  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.update_doc', '');
       RAISE_APPLICATION_ERROR (-20713, 'Запрос не выполнился. ' || SQLERRM);

end update_doc;


--
-- Очищаем временную таблицу
--
PROCEDURE clear_data_temp
IS
BEGIN

  delete from buh_doc_data_temp;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.clear_data_temp', '');
       RAISE_APPLICATION_ERROR (-20714, 'Запрос не выполнился. ' || SQLERRM);

end clear_data_temp;



--
-- Добавляем документ со склада
--
PROCEDURE insert_doc
(
   ID_DOC_TYPE_        in number,
   ID_CLIENT_          in number,
   ID_DEP_             in number,
   NDS_                in number,
   OPERATOR_NAME_      in varchar2,
   ID_COMPANY_         in number,
   ID_BANC_            in number,
--   v_office            in number,
   id_                 in out number
)
IS
  IID_DOC_BUH      NUMBER;
  SP_DOC_NUMBER    NUMBER;
BEGIN

     SELECT get_office_unique('BUH_DOC_SET_ID') INTO IID_DOC_BUH from DUAL;

     if ID_DOC_TYPE_=1 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарный чек
        SELECT BUH_DOC_NUMBER_1.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=2 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --счет-фактура
        SELECT BUH_DOC_NUMBER_2.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=3 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарная накладная
        SELECT BUH_DOC_NUMBER_3.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=4 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --продажа
        SELECT BUH_DOC_NUMBER_4.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=5 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT BUH_DOC_NUMBER_5.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=7 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT BUH_DOC_NUMBER_7.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

    INSERT INTO buh_doc  (ID_DOC, ID_DOC_TYPE, ID_CLIENT, ID_DEPARTMENTS, NDS, OPERATOR_NAME, ID_COMPANY, ID_BANC, DOC_NUMBER, id_office)
      VALUES (IID_DOC_BUH, ID_DOC_TYPE_, ID_CLIENT_, ID_DEP_, NDS_, OPERATOR_NAME_, ID_COMPANY_, ID_BANC_, SP_DOC_NUMBER, const_office)
        RETURNING ID_DOC INTO id_;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.insert_doc', '');
       RAISE_APPLICATION_ERROR (-20715, 'Запрос не выполнился. ' || SQLERRM);

end insert_doc;


--
--  Копируем документ с одного типа в другой
--
PROCEDURE CREATE_COPY
(
  SP_ROOT     in NUMBER,
  SP_DOC_TYPE in NUMBER
)
as
  IID_DOC_BUH   NUMBER;
  SP_DOC_NUMBER NUMBER;
begin

  IF SP_ROOT <> 0 THEN

    select count(ID_DOC) into cnt_
      from BUH_DOC
        where ID_DOC = SP_ROOT
        ;

    IF cnt_ <> 0 THEN

      SELECT get_office_unique('BUH_DOC_SET_ID') INTO IID_DOC_BUH from DUAL;

      INSERT INTO buh_doc( ID_DOC, DOC_NUMBER, ID_CLIENT, DOC_DATE, DOC_DATE_REAL, OPERATOR_NAME,
                           COMMENTS, NDS, DISCOUNT, ID_DEPARTMENTS, ID_DOC_TYPE, STORE_DOC_ID, ID_COMPANY, ID_BANC, id_office)
      ( select IID_DOC_BUH, DOC_NUMBER, ID_CLIENT, DOC_DATE, DOC_DATE_REAL, OPERATOR_NAME, COMMENTS, NDS, DISCOUNT,
               ID_DEPARTMENTS, SP_DOC_TYPE, STORE_DOC_ID, ID_COMPANY, ID_BANC, id_office
          from buh_doc
            where ID_DOC = SP_ROOT
      );

      INSERT INTO buh_doc_data (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, C_ID, GTD, id_office)
      ( select get_office_unique('BUH_DOC_DATA_SET_ID'), IID_DOC_BUH, N_ID, QUANTITY, PRICE, C_ID, GTD, id_office
          from buh_doc_data
            where ID_DOC = SP_ROOT
      );

      commit;
    end if;

  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.CREATE_COPY', '');
       RAISE_APPLICATION_ERROR (-20716, 'Запрос не выполнился. ' || SQLERRM);

end CREATE_COPY;



--
--  Удаляем накладную
--
PROCEDURE delete_docs
(
  id_doc_     in NUMBER
)
as
begin

  delete from buh_doc_data where ID_DOC = id_doc_;
  delete from buh_doc      where ID_DOC = id_doc_;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.delete_docs', '');
       RAISE_APPLICATION_ERROR (-20717, 'Запрос не выполнился. ' || SQLERRM);

end delete_docs;


--
-- Выбор отделов доступных пользователю
--
PROCEDURE get_deps_on_user
(
   cursor_ out ref_cursor
)
IS

BEGIN

  open cursor_ for
             SELECT a.ID_DEPARTMENTS, a."NAME"
                    from books_departments a
                      where a.state=1 order by a."NAME";

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_deps_on_user', '');
       RAISE_APPLICATION_ERROR (-20300, 'Запрос не выполнился. ' || SQLERRM);

END get_deps_on_user;



--
-- Статистика по бух-документам
--
PROCEDURE GET_BUH_STAT
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   gtd_         in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
select * from (
    select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.NUMBER_FULL
        , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
        , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
        , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE
        , e.NAME as buh_doc_type_name
        , f.COMPANY_NAME
        , g.BANC_NAME
        , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
        , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
        , null inv_id, null supplier_date, null supplier_number, null suplier
        , a.id_office, a.brief
    from (
        select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL,
              CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
              ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
              , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
              , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
              , sum(b.PRICE * b.QUANTITY) sum_price_new
              , count(b.ID_DOC_DATA) as QUANTITY_ALL
              , sum(((( ROUND( (PRICE*100 / (100+a.NDS) ),2) ) * QUANTITY ) + ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2) )) as PRICE_ALL
              , a.id_office, o.brief
        FROM BUH_DOC a,
             BUH_DOC_data b,
             nomenclature c,
             offices o
        where a.id_doc = b.id_doc
              and a.id_departments = id_dep_
              --and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
              and trunc(a.doc_date) between DOC_DATE1_ and DOC_DATE2_
              --and (a.ID_DOC_TYPE = ID_DOC_TYPE_ or ID_DOC_TYPE_ = 0)
              and (b.gtd = gtd_ or gtd_ is null)
              and b.n_id = c.n_id and (c.h_code = DOC_NUMBER_ or DOC_NUMBER_ is null)
              --and (a.id_doc in (select distinct z.id_doc from store_doc_data z, nomenclature y where z.n_id = y.n_id and y.h_code = DOC_NUMBER_) or DOC_NUMBER_ is null)
              --and (b.)
              and a.id_office = o.id_office
              and (a.id_office = v_office or v_office = 0)
        group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
                , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
                , a.id_office, o.brief
    ) a,
     books_client_TYPES c,
     CLIENTS d,
     buh_doc_type e,
     buh_company f,
     buh_banc g

    WHERE a.ID_CLIENT = d.ID_CLIENTS
          and c.ID_CLIENT_TYPES = d.TTYPE
          and a.ID_DOC_TYPE = e.ID_DOC_TYPE
          and a.ID_company = f.company_id(+)
          and a.ID_BANC = g.BANC_ID(+)
          --AND UPPER(Nick) LIKE '%'|| upper(nick_) ||'%'
          AND UPPER(FIO) LIKE '%'|| upper(fio_) ||'%'

union all

    SELECT a.id_doc, a.doc_number, a.id_client, a.id_departments, a.operator_name, a.doc_date, a.doc_date_real, to_char(a.doc_number) as NUMBER_FULL
           , a.comments, null as nds, null as DISCOUNT, 99 as id_doc_type, null as DOC_NUMBER_ADD, null as ID_company, null as ID_BANC
           , null as TTYPE_NAME, null as reg_svid_print
           , null as TTYPE, null as AGREEMENT, a.id_client, null as reg_svid, a.nick, a.fio, null as INN, null as KPP, null as OKATO, null as ADDRESS, null as BANK, null as PHONE
           , 'приход' as buh_doc_type_name, null as COMPANY_NAME, null as BANC_NAME
           , a.sum_price_old, a.sum_price_new, a.quantity_all, a.sum_price_difference, a.price_all
           ,a.inv_id, a.supplier_date, a.supplier_number, a.suplier
           , a.id_office, a.brief
        FROM store_doc_view2 a
          where a.id_departments = id_dep_
                and trunc(a.doc_date) between DOC_DATE1_ and DOC_DATE2_
                and a.ID_DOC_TYPE = 1
--                AND UPPER(a.fio) LIKE '%'|| upper(fio_) ||'%'
                and (a.id_doc in (select distinct id_doc from store_doc_data where gtd = gtd_) or gtd_ is null)
                and (a.id_doc in (select distinct z.id_doc from store_doc_data z, nomenclature y where z.n_id = y.n_id and y.h_code = DOC_NUMBER_) or DOC_NUMBER_ is null)
                and (a.id_office = v_office or v_office = 0)
             ORDER BY DOC_DATE desc, DOC_DATE_real desc
)
ORDER BY DOC_DATE desc, DOC_DATE_real desc;


EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.GET_BUH_STAT', '');
       RAISE_APPLICATION_ERROR (-20718, 'Запрос не выполнился. ' || SQLERRM);

end GET_BUH_STAT;


--
-- Статистика по ГТД
--
PROCEDURE GET_GTD_STAT
(
   gtd_         in varchar2,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT trunc(a.ddate) dd, sum(a.input) inn, sum(a.output_store) outt
    FROM store_gtd a
    where a.gtd = gtd_ and a.id_office = const_office
    group by trunc(a.ddate)
    order by trunc(a.ddate) desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.GET_GTD_STAT', '');
       RAISE_APPLICATION_ERROR (-20719, 'Запрос не выполнился. ' || SQLERRM);

end GET_GTD_STAT;



--
-- Посмотрим что по ГТД
--
PROCEDURE GET_GTD_LIST
(
   gtd_         in varchar2,
   date_        in date,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.inn, a.outt, b.* from nomenclature_mat_view b, (
      select a.n_id, sum(a.input) inn, sum(a.output_store) outt
      FROM store_gtd a
      where a.gtd = gtd_ and trunc(a.ddate) = date_ and a.id_office = const_office
      group by a.n_id
    ) a
    where a.n_id = b.n_id;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.GET_GTD_LIST', '');
       RAISE_APPLICATION_ERROR (-20720, 'Запрос не выполнился. ' || SQLERRM);

end GET_GTD_LIST;



--
--  Вставляем заголовок в бухгалтерию из резерва
--
procedure insert_in_buh_head
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , ID_COMPANY_      IN NUMBER
  , ID_BANC_         IN NUMBER
  , NDS_             IN NUMBER
--  , v_office         in number
  , id_doc_          in out number

)
is
  SP_OPERATOR_NAME VARCHAR(1024);
  SP_ID_CLIENT     NUMBER;
  SP_DOC_DATE      DATE;
  SP_OTDEL         NUMBER;
  SP_DOC_NUMBER    NUMBER;
  IID_DOC_BUH      NUMBER;
begin

  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user;
  select a.id_clients, a.d_date, b.id_departments into SP_ID_CLIENT, SP_DOC_DATE, SP_OTDEL
    from orders_clients a, ORDERS b
        where id_orders_clients = ID_ORDERS_CLIENTS_ and a.id_orders = b.id_orders;

  if (SP_ID_CLIENT > 0 and ID_ORDERS_CLIENTS_ > 0) then
    SELECT get_office_unique('BUH_DOC_SET_ID')    INTO IID_DOC_BUH    from DUAL;
    SELECT BUH_DOC_NUMBER_6.NEXTVAL  INTO SP_DOC_NUMBER  FROM DUAL;

    insert into BUH_DOC (ID_DOC, STORE_DOC_ID, ID_DOC_TYPE, ID_CLIENT, DOC_DATE, OPERATOR_NAME, COMMENTS, ID_DEPARTMENTS, DOC_NUMBER, NDS, id_company, id_banc, id_office)
                 values (IID_DOC_BUH, ID_ORDERS_CLIENTS_, 6, SP_ID_CLIENT, trunc(sysdate), SP_OPERATOR_NAME, null, SP_OTDEL, SP_DOC_NUMBER, NDS_, ID_COMPANY_, ID_BANC_, const_office)
--                 values (IID_DOC_BUH, ID_ORDERS_CLIENTS_, 6, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_OPERATOR_NAME, null, SP_OTDEL, SP_DOC_NUMBER, NDS_, ID_COMPANY_, ID_BANC_)
    ;
    id_doc_ := IID_DOC_BUH;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_buh_head', '');
       RAISE_APPLICATION_ERROR (-20725, 'Запрос не выполнился. ' || SQLERRM);

end insert_in_buh_head;
-----------------------------------------------------------------------------------------


--
--  Вставляем в бухгалтерию из резерва
--
procedure insert_in_buh2
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , id_doc_          IN NUMBER
--  , v_office         in number
)
is
  CURSOR data_temp IS
      select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type
      from ORDERS_LIST OCO
      where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;

begin

  FOR data_temp_cursor IN data_temp LOOP

            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
             values (
              get_office_unique('BUH_DOC_DATA_SET_ID'),
              id_doc_,
              data_temp_cursor.N_ID,
              data_temp_cursor.QUANTITY,
              data_temp_cursor.PRICE,
              '', const_office
              );
  END LOOP;
--  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_buh2', '');
       RAISE_APPLICATION_ERROR (-20726, 'Запрос не выполнился. ' || SQLERRM);

end insert_in_buh2;
-----------------------------------------------------------------------------------------



--
--  Вставляем в бухгалтерию из резерва
--
procedure insert_in_buh
(
  ID_ORDERS_CLIENTS_ IN NUMBER
  , ID_COMPANY_      IN NUMBER
  , ID_BANC_         IN NUMBER
  , NDS_             IN NUMBER
--  , v_office         in number
)
is
  SP_DOC_NUMBER    NUMBER;
  IID_DOC_BUH      NUMBER;
  SP_ID_CLIENT     NUMBER;
  SP_DOC_DATE      DATE;
  SP_OTDEL         NUMBER;
  SP_OPERATOR_NAME VARCHAR(1024);

  CURSOR data_temp IS
      select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type
      from ORDERS_LIST OCO
      where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;

begin

  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user;
  select a.id_clients, a.d_date, b.id_departments into SP_ID_CLIENT, SP_DOC_DATE, SP_OTDEL
    from orders_clients a, ORDERS b
        where id_orders_clients = ID_ORDERS_CLIENTS_ and a.id_orders = b.id_orders;

  if (SP_ID_CLIENT > 0 and ID_ORDERS_CLIENTS_ > 0) then
    SELECT get_office_unique('BUH_DOC_SET_ID')    INTO IID_DOC_BUH    from DUAL;
    SELECT BUH_DOC_NUMBER_6.NEXTVAL  INTO SP_DOC_NUMBER FROM DUAL;

    insert into BUH_DOC (ID_DOC, STORE_DOC_ID, ID_DOC_TYPE, ID_CLIENT, DOC_DATE, OPERATOR_NAME, COMMENTS, ID_DEPARTMENTS, DOC_NUMBER, NDS, id_company, id_banc, id_office)
                 values (IID_DOC_BUH, ID_ORDERS_CLIENTS_, 6, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_OPERATOR_NAME, null, SP_OTDEL, SP_DOC_NUMBER, NDS_, ID_COMPANY_, ID_BANC_, const_office);
  end if;

  FOR data_temp_cursor IN data_temp LOOP

            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
             values (
              get_office_unique('BUH_DOC_DATA_SET_ID'),
              IID_DOC_BUH,
              data_temp_cursor.N_ID,
              data_temp_cursor.QUANTITY,
              data_temp_cursor.PRICE,
              '', const_office
              );
  END LOOP;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_buh', '');
       RAISE_APPLICATION_ERROR (-20721, 'Запрос не выполнился. ' || SQLERRM);

end insert_in_buh;
-----------------------------------------------------------------------------------------



--
--  Вставляем данные со склада в транспортную накладную
--
PROCEDURE CARGO_FROM_STOREDOCS
(
 store_doc_num_add in NUMBER,
 store_doc_num_del in NUMBER
)
as
  IID_DOC NUMBER;
begin

  -- Вставляем во временную таблицу
  if store_doc_num_add <> 0 and store_doc_num_del = 0 THEN
    INSERT INTO buh_doc_data_temp (BUH_DOC_DATA_TEMP, N_ID, QUANTITY, price, ID_DOC_STORE, GTD)
    ( select BUH_DOC_DATA_TEMP_SET_ID.NEXTVAL, N_ID, QUANTITY, price, ID_DOC, GTD
        from buh_doc_data
          where ID_DOC = store_doc_num_add
    );
  end if;

  -- Удаляем из временной таблицы
  if store_doc_num_del <> 0 and store_doc_num_add = 0 THEN
    delete from buh_doc_data_temp
      where ID_DOC_STORE = store_doc_num_del;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.CARGO_FROM_STOREDOCS', '');
       RAISE_APPLICATION_ERROR (-20722, 'Запрос не выполнился. ' || SQLERRM);

end CARGO_FROM_STOREDOCS;


--
--  Вставляем данные со склада
--
PROCEDURE SAVE_CARGO_DATA
(
 id_doc_cargo      in NUMBER
)
as
  IID_DOC NUMBER;
begin

  -- Вставляем во временную таблицу с затиранием предыдущей записи
  if id_doc_cargo > 0 THEN
     INSERT INTO buh_doc_cargo
     ( select DISTINCT id_doc_cargo, ID_DOC_STORE, const_office, sysdate
        from buh_doc_data_temp
     );

     INSERT INTO buh_doc_data (ID_DOC_DATA, N_ID, QUANTITY, price, ID_DOC, GTD, id_office)
     (
        select get_office_unique('BUH_DOC_DATA_SET_ID'), N_ID, Quantity, Price, id_doc_cargo, GTD, const_office from
        (
           select N_ID, sum(Quantity) as Quantity, Price, GTD
             from buh_doc_data_temp
                group by N_ID, Price, GTD
        )
     );

     delete from buh_doc_data_temp;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.SAVE_CARGO_DATA', '');
       RAISE_APPLICATION_ERROR (-20723, 'Запрос не выполнился. ' || SQLERRM);

end SAVE_CARGO_DATA;


--
-- Синхронизируем цену и количество в документах
--
PROCEDURE sync_doc_data
(
   ID_DOC_         in number
)
is
    v_doc_date          date;
    v_doc_number        number;
    v_id_departments    number;

    CURSOR data_temp IS
      select b.*  from buh_doc_data b
      where b.id_doc = ID_DOC_;

begin
  select a.doc_date, a.doc_number, a.id_departments
    into v_doc_date, v_doc_number, v_id_departments
  from buh_doc a where a.id_doc = ID_DOC_
  ;

  FOR data_temp_cursor IN data_temp LOOP

    update buh_doc_data z set z.price = data_temp_cursor.price, z.quantity = data_temp_cursor.quantity, date_change = sysdate
    where z.n_id = data_temp_cursor.n_id and z.id_doc in (
        select id_doc from buh_doc b
        where b.doc_date = v_doc_date and b.id_doc_type in (1,2,3) and b.doc_number = v_doc_number
            and b.id_departments = v_id_departments and b.id_doc <> ID_DOC_
            and b.id_office = const_office
    );

  END LOOP;
  --commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.sync_doc_data', '');
       RAISE_APPLICATION_ERROR (-20724, 'Запрос не выполнился. ' || SQLERRM);

end sync_doc_data;



END;
/

create or replace public synonym buh_pkg for creator.buh_pkg
/
-- End of DDL Script for Package Body CREATOR.BUH_PKG

