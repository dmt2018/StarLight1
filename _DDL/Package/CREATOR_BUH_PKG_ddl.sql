-- Start of DDL Script for Package Body CREATOR.BUH_PKG
-- Generated 26.05.2016 0:56:33 from CREATOR@STAR_NEW

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
   KPP2_                  in varchar2,
   INN_                   in varchar2,
   ADRESS_                in varchar2,
   ADRESS2_               in varchar2,
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
 zatiranie         in Number,
 V_SERVICE         in number
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
   id_                in number,
   BEZNDSMINUS_       in number,
   BEZNDS_            in number
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
   id_                 in out number,
   BEZNDSMINUS_       in number,
   BEZNDS_            in number
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



--
-- Выбор товара с приходом и продажами для отчета
--
PROCEDURE make_prihod_itog
(
   p_date_b      in date,
   p_date_e      in date,
   p_docs        in varchar2,
   p_cursor      out ref_cursor
);


--
-- Выставляем данные по печати документов
--
PROCEDURE set_print_settings
(
   ID_DOC_        in number,
   hand_cargo_    in number,
   id_clients_    in number
);


-- Возвращение номера текущего или следующего
function return_doc_number
(
   ID_DOC_TYPE_       in number,
   p_data_type        in varchar2
) return number;


--
-- Схлопывание бухгалтерских записей в накладной
--
PROCEDURE reorganazy_data
(
   v_id_doc        in number
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
   KPP2_                  in varchar2,
   INN_                   in varchar2,
   ADRESS_                in varchar2,
   ADRESS2_               in varchar2,
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
      (COMPANY_ID, COMPANY_NAME, KPP, KPP2, INN, ADRESS, ADRESS2, PHONE, FAX, OTPUSK_PROIZVEL_FIO, OTPUSK_RAZRESHIL_FIO, GLAV_BUH, OTPUSK_PROIZVEL_DOLJN, OTPUSK_RAZRESHIL_DOLJN)
    VALUES
      (get_office_unique('BUH_COMPANY_SET_ID'), COMPANY_NAME_, KPP_, KPP2_, INN_, ADRESS_, ADRESS2_, PHONE_, FAX_, OTPUSK_PROIZVEL_FIO_, OTPUSK_RAZRESHIL_FIO_, GLAV_BUH_, OTPUSK_PROIZVEL_DOLJN_, OTPUSK_RAZRESHIL_DOLJN_)
    RETURNING COMPANY_ID INTO COMPANY_ID_;

  else

    UPDATE buh_company SET
      COMPANY_NAME = COMPANY_NAME_,
      KPP = KPP_,
      KPP2 = KPP2_,
      INN = INN_,
      ADRESS = ADRESS_,
      ADRESS2 = ADRESS2_,
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
    , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.U_ADDRESS, d.BANK, d.PHONE, d.ID_CLIENTS_GROUPS
    , z.name as group_name
    , e.NAME as buh_doc_type_name
    , f.COMPANY_NAME
    , g.BANC_NAME
    , show_docs(a.id_doc) as cargo
    , sum_price_old , sum_price_new, QUANTITY_ALL, (sum_price_new - sum_price_old) as sum_price_difference
    , case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
    , a.id_office, a.brief
    , sum_quantity
    , a.BEZNDSMINUS, a.BEZNDS
from (

select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.BEZNDSMINUS, a.BEZNDS,

    const_filial || CASE WHEN a.DOC_NUMBER_ADD is not null THEN case when a.DOC_NUMBER_ADD = 'О' then a.DOC_NUMBER_ADD || a.DOC_NUMBER else a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD end
    ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL

    , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC
    , a.id_office, o.brief
    , sum(b.QUANTITY) sum_quantity
    , sum(b.PRICE_OLD * b.QUANTITY) sum_price_old
    , sum(b.PRICE * b.QUANTITY) sum_price_new
    , count(b.ID_DOC_DATA) as QUANTITY_ALL
    , sum(b.PRICE_QUANTITY) as PRICE_ALL
    --, case when a.BEZNDSMINUS is null then sum(b.PRICE * b.QUANTITY) else sum((ROUND(( b.PRICE * 100 /(100 + a.NDS)),2)) * b.QUANTITY) end PRICE_ALL
/*
     sum(
      (
        (
          (
            ROUND( (PRICE*100 / (100+a.NDS) ),2)
          ) * QUANTITY
        ) +
        ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
      ) ) end PRICE_ALL
*/
FROM
   BUH_DOC a,
   --BUH_DOC_data b,
   BUH_DOCDATA_VIEW b,
   offices o

where a.id_doc = b.id_doc
          and a.id_departments = id_dep_
          and (a.id_office = v_office or v_office = 0)
                and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
                and trunc(a.doc_date) between DOC_DATE1_ and DOC_DATE2_
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
                and a.id_office = o.id_office

group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
, a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, a.id_office, o.brief, a.BEZNDSMINUS, a.BEZNDS

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
  --commit;

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
  v_name      varchar2(100);
  v_country   varchar2(50);
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
      select compiled_name_otdel, country into v_name, v_country from nomenclature_mat_view where n_id = SP_N_ID;

      INSERT INTO BUH_DOC_DATA (ID_DOC_DATA, N_ID, QUANTITY, ID_DOC, id_office, compiled_name_otdel, name_country)
        VALUES (get_office_unique('BUH_DOC_DATA_SET_ID'), SP_N_ID,SP_QUANTITY, SP_ROOT, const_office, v_name, v_country)
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
 zatiranie         in Number,
 V_SERVICE         in number
-- v_office          in number
)
as
  IID_DOC NUMBER;

begin

  -- Вставляем во временную таблицу
  if store_doc_num_add <> 0 and store_doc_num_del = 0 THEN
     INSERT INTO buh_doc_data_temp (BUH_DOC_DATA_TEMP, N_ID, QUANTITY, price, ID_DOC_STORE, GTD)
     ( select BUH_DOC_DATA_TEMP_SET_ID.NEXTVAL, a.N_ID, a.QUANTITY, a.price, a.ID_DOC, a.GTD
        from buh_doc_data a, nomenclature_mat_view n
          where a.ID_DOC = store_doc_num_add
          and a.n_id = n.n_id and a.id_office = n.id_office
          and a.QUANTITY <> 0   -- специально, чтобы 0-ли не брались
          and ( n.fst_id not in (const_cargo, const_cargo_62) or V_SERVICE = 0 )
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

    INSERT INTO buh_doc_data (ID_DOC_DATA, N_ID, QUANTITY, price, ID_DOC, GTD, id_office, compiled_name_otdel, name_country)
    (
      select get_office_unique('BUH_DOC_DATA_SET_ID'), N_ID, Quantity, Price, svod, GTD, const_office, compiled_name_otdel, country from
      (
      select a.N_ID, sum(a.Quantity) as Quantity, a.Price, a.GTD, b.compiled_name_otdel||' '||replace(b.colour,'NA','') as compiled_name_otdel, b.country
        from buh_doc_data_temp a, nomenclature_mat_view b
        where a.n_id = b.n_id
          group by a.N_ID, a.Price, a.GTD, b.compiled_name_otdel||' '||replace(b.colour,'NA',''), b.country
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
--                            and ( n.fst_id not in (const_cargo, const_cargo_62) or V_SERVICE = 0 )
            group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, c.DOC_NUMBER
            , a.id_office, o.BRIEF

            ) a,
               books_client_TYPES c,
               CLIENTS d, clients_groups z,
               buh_doc_type e,
               buh_company f,
               buh_banc g,
               (select distinct ID_DOC_STORE from buh_doc_data_temp) tmp
            WHERE a.ID_CLIENT = d.ID_CLIENTS
                AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
                and a.ID_DOC = tmp.ID_DOC_STORE(+) and tmp.ID_DOC_STORE is null
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
--                        and ( n.fst_id not in (const_cargo, const_cargo_62) or V_SERVICE = 0 )
        group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
        , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, c.DOC_NUMBER
        , a.id_office, o.BRIEF

        ) a,
           books_client_TYPES c,
           CLIENTS d, clients_groups z,
           buh_doc_type e,
           buh_company f,
           buh_banc g,
           (select distinct ID_DOC_STORE from buh_doc_data_temp) tmp
--        WHERE a.ID_DOC in (select distinct ID_DOC_STORE from buh_doc_data_temp)
        WHERE a.ID_DOC = tmp.ID_DOC_STORE
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
--                            and ( n.fst_id not in (const_cargo, const_cargo_62) or V_SERVICE = 0 )
            group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
            , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC--, c.DOC_NUMBER
            , a.id_office, o.BRIEF

            ) a,
               books_client_TYPES c,
               CLIENTS d, clients_groups z,
               buh_doc_type e,
               buh_company f,
               buh_banc g,
               (select distinct ID_DOC_STORE from buh_doc_data_temp) tmp
            WHERE a.ID_CLIENT = d.ID_CLIENTS
                AND UPPER(d.Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(d.FIO) LIKE '%'|| upper(fio_) ||'%'
                --and a.ID_DOC not in (select distinct ID_DOC_STORE from buh_doc_data_temp)
                and a.ID_DOC = tmp.ID_DOC_STORE(+) and tmp.ID_DOC_STORE is null
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
--                        and ( n.fst_id not in (const_cargo, const_cargo_62) or V_SERVICE = 0 )
        group by a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL
        , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC--, c.DOC_NUMBER
        , a.id_office, o.BRIEF
        ) a,
           books_client_TYPES c,
           CLIENTS d, clients_groups z,
           buh_doc_type e,
           buh_company f,
           buh_banc g,
           (select distinct ID_DOC_STORE from buh_doc_data_temp) tmp
        WHERE a.ID_DOC = tmp.ID_DOC_STORE
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
   id_                in number,
   BEZNDSMINUS_       in number,
   BEZNDS_            in number
)
IS
BEGIN

  UPDATE buh_doc SET DOC_DATE = trunc(date_), NDS = NDSEdit_, DOC_NUMBER = DocNumberEdit_, DOC_NUMBER_ADD = DocNumberAddEdit_, DISCOUNT = DISCOUNTEdit_,
          COMMENTS = COMMENTSEdit_, ID_CLIENT= id_client_, date_change = sysdate, BEZNDSMINUS = decode(BEZNDSMINUS_,0,null,1), BEZNDS = decode(BEZNDS_,0,null,1)
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


-- Возвращение номера текущего или следующего
function return_doc_number
(
   ID_DOC_TYPE_       in number,
   p_data_type        in varchar2
) return number
is
  SP_DOC_NUMBER    NUMBER;
begin
  if p_data_type = 'nextval' then

     if ID_DOC_TYPE_=1 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарный чек
        SELECT BUH_DOC_NUMBER_1.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=2 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --счет-фактура
        SELECT BUH_DOC_NUMBER_2.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=3 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарная накладная
        SELECT BUH_DOC_NUMBER_3.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=4 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --продажа
        SELECT BUH_DOC_NUMBER_4.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=5 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT BUH_DOC_NUMBER_5.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=7 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT BUH_DOC_NUMBER_7.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

     if ID_DOC_TYPE_=8 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --УПД
        SELECT BUH_DOC_NUMBER_8.NEXTVAL INTO SP_DOC_NUMBER FROM DUAL;
     END IF;

  else

     if ID_DOC_TYPE_=1 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарный чек
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_1';
     END IF;

     if ID_DOC_TYPE_=2 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --счет-фактура
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_2';
     END IF;

     if ID_DOC_TYPE_=3 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарная накладная
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_3';
     END IF;

     if ID_DOC_TYPE_=4 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --продажа
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_4';
     END IF;

     if ID_DOC_TYPE_=5 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_5';
     END IF;

     if ID_DOC_TYPE_=7 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_7';
     END IF;

     if ID_DOC_TYPE_=8 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --УПД
        SELECT LAST_NUMBER INTO SP_DOC_NUMBER FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'BUH_DOC_NUMBER_8';
     END IF;

  end if;

  return SP_DOC_NUMBER;
end;


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
   id_                 in out number,
   BEZNDSMINUS_       in number,
   BEZNDS_            in number
)
IS
  IID_DOC_BUH      NUMBER;
  SP_DOC_NUMBER    NUMBER;
BEGIN

  SELECT get_office_unique('BUH_DOC_SET_ID') INTO IID_DOC_BUH from DUAL;

  SP_DOC_NUMBER := return_doc_number(ID_DOC_TYPE_, 'currval');

  INSERT INTO buh_doc  (ID_DOC, ID_DOC_TYPE, ID_CLIENT, ID_DEPARTMENTS, NDS, OPERATOR_NAME, ID_COMPANY, ID_BANC, DOC_NUMBER, id_office, BEZNDSMINUS, BEZNDS)
    VALUES (IID_DOC_BUH, ID_DOC_TYPE_, ID_CLIENT_, ID_DEP_, NDS_, OPERATOR_NAME_, ID_COMPANY_, ID_BANC_, SP_DOC_NUMBER, const_office, decode(BEZNDSMINUS_,0,null,BEZNDSMINUS_), decode(BEZNDS_,0,null,BEZNDS_) )
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
                           COMMENTS, NDS, DISCOUNT, ID_DEPARTMENTS, ID_DOC_TYPE, STORE_DOC_ID, ID_COMPANY, ID_BANC, id_office, BEZNDSMINUS, BEZNDS)
      ( select IID_DOC_BUH, DOC_NUMBER, ID_CLIENT, DOC_DATE, DOC_DATE_REAL, OPERATOR_NAME, COMMENTS, NDS, DISCOUNT,
               ID_DEPARTMENTS, SP_DOC_TYPE, STORE_DOC_ID, ID_COMPANY, ID_BANC, id_office, BEZNDSMINUS, BEZNDS
          from buh_doc
            where ID_DOC = SP_ROOT
      );

      INSERT INTO buh_doc_data (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, C_ID, GTD, id_office, compiled_name_otdel, name_country)
      ( select get_office_unique('BUH_DOC_DATA_SET_ID'), IID_DOC_BUH, N_ID, QUANTITY, PRICE, C_ID, GTD, id_office, compiled_name_otdel, name_country
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

  delete from BUH_DOC_PRINTSET where ID_DOC = id_doc_;
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

  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and id_office=const_office;
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
      select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type, b.compiled_name_otdel, b.colour, b.country
      from ORDERS_LIST OCO, nomenclature_mat_view b
      where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ and oco.n_id = b.n_id;

begin

  FOR data_temp_cursor IN data_temp LOOP

            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office, compiled_name_otdel, name_country)
             values (
              get_office_unique('BUH_DOC_DATA_SET_ID'),
              id_doc_,
              data_temp_cursor.N_ID,
              data_temp_cursor.QUANTITY,
              data_temp_cursor.PRICE,
              '', const_office
              , data_temp_cursor.compiled_name_otdel ||' '|| replace(data_temp_cursor.colour,'NA','')
              , data_temp_cursor.country
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
      select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type, b.compiled_name_otdel, b.colour, b.country
      from ORDERS_LIST OCO, nomenclature_mat_view b
      where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ and oco.n_id = b.n_id;

begin

  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and id_office=const_office;
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

            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office, compiled_name_otdel, name_country)
             values (
              get_office_unique('BUH_DOC_DATA_SET_ID'),
              IID_DOC_BUH,
              data_temp_cursor.N_ID,
              data_temp_cursor.QUANTITY,
              data_temp_cursor.PRICE,
              '', const_office
              , data_temp_cursor.compiled_name_otdel ||' '|| replace(data_temp_cursor.colour,'NA','')
              , data_temp_cursor.country
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

  insert into tmp_exp_doc ( select id_doc from buh_doc b where b.doc_date = v_doc_date and b.id_doc_type in (1,2,3) and b.doc_number = v_doc_number
            and b.id_departments = v_id_departments and b.id_doc <> ID_DOC_
            and b.id_office = const_office );

  delete from buh_doc_data b where b.id_doc in (select id_doc from tmp_exp_doc);
  insert into buh_doc_data (
    SELECT get_office_unique('BUH_DOC_DATA_SET_ID'), b.id_doc, a.n_id, a.quantity, a.c_id, a.gtd,
         a.price, a.price_old, a.id_office, sysdate,
         a.compiled_name_otdel, a.gtd_country, a.name_country
    FROM buh_doc_data a, tmp_exp_doc b
    where a.id_doc = ID_DOC_
  );


/*
  FOR data_temp_cursor IN data_temp LOOP
       LOG_ERR('n_id='||data_temp_cursor.n_id||' gtd='||data_temp_cursor.gtd, SQLCODE, 'buh_pkg.sync_doc_data', '');
    update buh_doc_data z set
        z.price = data_temp_cursor.price,
        z.quantity = data_temp_cursor.quantity,
        date_change = sysdate
    where z.n_id = data_temp_cursor.n_id and z.gtd = data_temp_cursor.gtd and z.id_doc in (
        select id_doc from buh_doc b
        where b.doc_date = v_doc_date and b.id_doc_type in (1,2,3) and b.doc_number = v_doc_number
            and b.id_departments = v_id_departments and b.id_doc <> ID_DOC_
            and b.id_office = const_office
    );
  END LOOP;
  --commit;
*/

  update buh_doc b set (ID_CLIENT, NDS, DISCOUNT, BEZNDSMINUS, BEZNDS) = (select ID_CLIENT, NDS, DISCOUNT, BEZNDSMINUS, BEZNDS from buh_doc where id_doc = ID_DOC_ )
  where b.doc_date = v_doc_date and b.id_doc_type in (1,2,3) and b.doc_number = v_doc_number
            and b.id_departments = v_id_departments and b.id_doc <> ID_DOC_
            and b.id_office = const_office;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.sync_doc_data', '');
       RAISE_APPLICATION_ERROR (-20724, 'Запрос не выполнился. ' || SQLERRM);

end sync_doc_data;



--
-- Выбор товара с приходом и продажами для отчета
--
PROCEDURE make_prihod_itog
(
   p_date_b      in date,
   p_date_e      in date,
   p_docs        in varchar2,
   p_cursor      out ref_cursor
)
IS
  sqlstr varchar2(30000);
BEGIN

  sqlstr := '
select --nvl(n.bar_code,n.CODE), n.h_code, n.F_TYPE, n.f_sub_type, n.compiled_name_otdel, n.country, asis_ostatok, z.quantity, inq_ostatok,
    --( case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end ) ostatok,
    --m.price, nvl(z.gtd, asis.gtd) as gtd
     ''`''||nvl(n.bar_code,n.CODE)||''`;''||n.h_code||'';''||n.F_TYPE||'';''||n.f_sub_type||'';''||n.compiled_name_otdel||'';''||n.country||'';''
    ||asis_ostatok||'';''||quantity||'';''||inq_ostatok||'';''
    ||(case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end )
    ||'';''||m.price||'';''||nvl(z.gtd,asis.gtd) as sss
from nomenclature_mat_view n
inner join price_list m on m.n_id = n.n_id and m.id_office = const_office
inner join
    (
      select asis.n_id, asis.gtd,
           sum(decode(ID_DOC_TYPE, 1, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 2, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 4, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 5, (asis.QUANTITY_REAL - asis.QUANTITY), 0)) asis_ostatok
      from (
        select c.id_doc_type, a2.quantity, a2.QUANTITY_REAL, A2.N_ID,
            case when c.id_doc_type = 1 then (select distinct z.gtd from invoice_data z where z.inv_id = c.inv_id and z.n_id = a2.n_id) else a2.gtd end gtd
          FROM store_doc_data A2
            inner join store_doc c on c.id_doc = A2.id_doc
         where c.doc_date <= :p1
           and (c.id_office = const_office or 0 = 0)
           and a2.n_id in (select distinct z.n_id from buh_doc_data z where z.id_doc in ('||p_docs||') )
           --and a2.n_id = 33981 -- 32426
       ) asis
      group by asis.N_ID, asis.gtd
     ) asis on asis.n_id = n.n_id
left outer join
    (
      select inq.n_id, inq.gtd,
           sum(decode(ID_DOC_TYPE, 1, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 2, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 4, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 5, (inq.QUANTITY_REAL - inq.QUANTITY), 0)) inq_ostatok
      from (
        select c.id_doc_type, a2.quantity, a2.QUANTITY_REAL, A2.N_ID,
            case when c.id_doc_type = 1 then (select distinct z.gtd from invoice_data z where z.inv_id = c.inv_id and z.n_id = a2.n_id) else a2.gtd end gtd
          FROM store_doc_data A2
            inner join store_doc c on c.id_doc = A2.id_doc
         where c.doc_date < :p2
           and (c.id_office = const_office or 0 = 0)
           and a2.n_id in (select distinct z.n_id from buh_doc_data z where z.id_doc in ('||p_docs||') )
           --and a2.n_id = 33981 -- 32426
       ) inq
      group by inq.N_ID, inq.gtd
     ) inq on inq.n_id = asis.n_id and nvl(inq.gtd,''-'') = nvl(asis.gtd,''-'')
left outer join
    ( select c.n_id, sum(c.quantity) as quantity, c.gtd from buh_doc_data c
       where id_doc in ('||p_docs||') --and c.n_id = 33981  -- 32426
       group by c.n_id, c.gtd
    ) z on z.n_id = asis.n_id and nvl(z.gtd,''-'') = nvl(asis.gtd,''-'')
where ( case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end ) > 0
';

  open p_cursor for
    sqlstr using trunc(p_date_e), trunc(p_date_b);

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'store_pkg.make_prihod_itog', sqlstr);

end make_prihod_itog;





--
-- Выставляем данные по печати документов
--
PROCEDURE set_print_settings
(
   ID_DOC_        in number,
   hand_cargo_    in number,
   id_clients_    in number
)
is
begin
  select count(*) into cnt_ from buh_doc_printset where id_doc = id_doc_;
  if cnt_ > 0 THEN
    update buh_doc_printset set hand_cargo = hand_cargo_, id_clients = decode(id_clients_,0,null,id_clients_) where id_doc = id_doc_;
  else
    select count(*) into cnt_ from buh_doc where id_doc = id_doc_;
    if cnt_ > 0 THEN
      insert into buh_doc_printset values (ID_DOC_, hand_cargo_, id_clients_);
    end if;
  end if;
  commit;
EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.sync_doc_data', '');
       RAISE_APPLICATION_ERROR (-20724, 'Запрос не выполнился. ' || SQLERRM);

end set_print_settings;





--
-- Схлопывание бухгалтерских записей в накладной
--
PROCEDURE reorganazy_data
(
   v_id_doc        in number
)
is
  cursor f_ is
    select n_id, gtd, sum(quantity) as quantity from
    (
    SELECT a.id_doc_data, a.id_doc, a.n_id, a.quantity, a.c_id, a.gtd,
           a.price, a.price_old, a.id_office, a.date_change,
           a.compiled_name_otdel, a.gtd_country
      FROM buh_doc_data a
      where id_doc = v_id_doc
    )
    group by n_id, gtd
    having count(*) > 1;

  f_data  f_%rowtype;

  cursor g_ (nom_id number, gtd_str varchar2) is
    SELECT a.id_doc_data, a.id_doc, a.n_id, a.quantity, a.c_id, a.gtd,
           a.price, a.price_old, a.id_office, a.date_change,
           a.compiled_name_otdel, a.gtd_country, rownum as nn
      FROM buh_doc_data a
      where id_doc = v_id_doc and n_id = nom_id and a.gtd = gtd_str;

  g_data  g_%rowtype;

begin

   OPEN f_;
   LOOP
      FETCH f_ INTO f_data;
      EXIT WHEN f_%NOTFOUND;

      --dbms_output.put_line(f_data.n_id);

      OPEN g_(f_data.n_id, f_data.gtd);
      LOOP
          FETCH g_ INTO g_data;
          EXIT WHEN g_%NOTFOUND;

          --dbms_output.put_line(g_data.id_doc_data);
          --dbms_output.put_line(g_data.nn);

          if g_data.nn = 1 then
            -- первой записи увеличим количество
            update buh_doc_data set quantity = f_data.quantity, DATE_CHANGE = sysdate where id_doc_data = g_data.id_doc_data;
          else
            -- остальным обнулим количество, для дальнейшего удаления
            update buh_doc_data set quantity = 0, DATE_CHANGE = sysdate where id_doc_data = g_data.id_doc_data;
          end if;
      END LOOP;
      CLOSE g_;

      delete from buh_doc_data where id_doc = v_id_doc and quantity = 0;
   END LOOP;
   CLOSE f_;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'buh_pkg.reorganazy_data', '');
       RAISE_APPLICATION_ERROR (-20725, 'Запрос не выполнился. ' || SQLERRM);

end reorganazy_data;



END;
/


-- End of DDL Script for Package Body CREATOR.BUH_PKG

