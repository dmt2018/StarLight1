-- Start of DDL Script for Package Body CREATOR.CASH_PKG
-- Generated 10.12.2011 20:49:00 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE cash_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

--
-- Выбор доступ к кассам
--
PROCEDURE show_rule
(
    login_   in     varchar2
    ,cursor_ in out ref_cursor
);


--
-- Выбор операций
--
PROCEDURE show_operations
(
    cursor_ in out ref_cursor
);


--
-- Удаление операций
--
PROCEDURE remove_operation
(
    id_ in      number
);


--
-- Записываем операцию
--
PROCEDURE save_operation
(
    id_         in out  number
    ,t_short_   in      varchar2
    ,t_long_    in      varchar2
    ,type_      in      number
    ,dolg_      in      number
);


--
-- Выбор кассового дня
--
PROCEDURE show_cach_tmp
(
    ddate_      in     date
    ,paydesk_   in     number
    ,paydesk2_  in     number
    ,invoice_   in     number
    ,cursor_    in out ref_cursor
);


--
-- Удаление кассового дня
--
PROCEDURE remove_cash
(
    paydesk_   in     number
    ,ddate_    in     date
);


--
-- Подгрузка накладных с фокспро
--
PROCEDURE uppload_data
(
    nick_    in out     varchar2
    ,fio_    in out     varchar2
    ,oper_   in out     varchar2
    ,msg_    in out     varchar2
);


--
-- Добавление записи в кассу
--
PROCEDURE add_cash_record
(
    id_             in out  number,
    client_         in      number,
    paydesk_        in      number,
    id_operation_   in      number,
    invoice_        in      number,
    summ_           in      number,
    in_rub_         in      number,
    out_rub_        in      number,
    in_usd_         in      number,
    out_usd_        in      number,
    in_eu_          in      number,
    out_eu_         in      number,
    info_           in      varchar2,
    corrector_      in      varchar2,
    ddate_          in      date,
    ddate_done_     in      date,
    r_desk_         in      number,
    r_date_         in      date,
    state_         in      number
);


--
-- Удаление записи
--
PROCEDURE remove_data
(
    id_    in     number
    ,fio_  in     varchar2
);


--
-- Проверка наличия данных в основной кассе
--
PROCEDURE check_cash
(
  ddate_     in     date
  ,paydesk_  in     number
  ,count_    in out number
);


--
-- Переброс кассового дня в свод
--
PROCEDURE move_cash
(
  ddate_     in     date
  ,paydesk_  in     number
);


--
-- Показываем статистику в дебеторах
--
PROCEDURE show_statistic
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,v_office    in     number
    ,cursor_     in out ref_cursor
);


--
-- Показываем клиентов свободных по деб. карточкам
--
PROCEDURE show_clients
(
    v_office    in number,
    cursor_     in out ref_cursor
);


--
-- Добавляем / редактируем дебетора
--
PROCEDURE edit_debetor
(
  id_     in out number
  , ID_CLIENTS_  in number
  , STATE_       in number
  , BEZNAL_      in number
  , DEBET_       in number
  , CREDIT_DAYS_ in number
  , INFO_        in varchar2
  , RUBL_        in number
  , CHART_       in number
  , IS_LOCK_     in number
  , LOCK_FOR_    in number
  , v_office     in number
);


--
-- Добавляем / редактируем запись в дебеторе
--
PROCEDURE edit_debetor_list
(
  id_cl_debetor_  in out number
  , id_debetor_ in number
  , debet_      in number
  , rate_       in number
  , date_vvod_  in date
  , date_oper_  in date
  , operation_  in number
  , invoice_    in varchar2
  , summ_       in number
  , in_ru_      in number
  , info_       in varchar2
  , discount_   in number
  , discount_proc_   in number
  , v_office    in number
);


--
-- Удаляем дебетора
--
PROCEDURE delete_debetor
(
  id_debetor_   in number
);


--
-- Удаляем запись в дебеторе
--
PROCEDURE delete_debetor_list
(
  id_cl_debetor_  in number
  , id_debetor_   in number
);


--
-- Добавление записи в свод
--
PROCEDURE add_svod_record
(
    id_             in out  number,
    client_         in      number,
    paydesk_        in      number,
    id_operation_   in      number,
    invoice_        in      number,
    summ_           in      number,
    in_rub_         in      number,
    out_rub_        in      number,
    in_usd_         in      number,
    out_usd_        in      number,
    in_eu_          in      number,
    out_eu_         in      number,
    info_           in      varchar2,
    corrector_      in      varchar2,
    ddate_          in      date,
    ddate_done_     in      date,
    r_desk_         in      number,
    r_date_         in      date,
    state_          in      number,
    corr_           in      varchar2,
    corr_date_      in      date,
    v_office        in      number
);


--
-- Удаление записи
--
PROCEDURE remove_svod_data
(
    id_    in     number
    ,fio_  in     varchar2
);


--
-- Показываем кассовый день
--
PROCEDURE show_kass_day
(
  p_date1     in date
  , p_date2   in date
  , v_office  in number
  , cursor_   in out ref_cursor
);


--
-- Показываем кассовый день
--
PROCEDURE show_kass_deps
(
  p_date1     in date
  , p_date2   in date
  , v_office  in number
  , cursor_   in out ref_cursor
);


--
-- Показываем списки дебеторов в группе
--
PROCEDURE show_dep_clients
(
  id_cl_groups_ in number,
  id_cl_        in number,
  v_office      in number,
  cursor_       in out ref_cursor
);


--
-- Достаем ссылку для разноски
--
PROCEDURE get_sale
(
  id_client_     in number,
  ddate_         in date,
  otdel_         in number,
  discount_      in out number,
  discount_proc_ in out number
);


--
-- Показываем статистику по курсу
--
PROCEDURE show_statistic_rate
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,v_office    in     number
    ,cursor_     in out ref_cursor
);


--
-- Показываем дебеторскую карту
--
PROCEDURE show_debetor_list
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,d3_         in     number
    ,d4_         in     number
    ,v_office    in     number
    ,cursor_     in out ref_cursor
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON cash_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY cash_pkg
IS

cnt_ number;

--
-- Выбор доступ к кассам
--
PROCEDURE show_rule
(
    login_   in     varchar2
    ,cursor_ in out ref_cursor
)
IS
BEGIN
    open cursor_ for
        select a.N_CASH, b.FIO, b.LOGIN, b.NICK
            from set_cash a, clients b
                where a.id_clients = b.id_clients and upper(b.login) = upper(login_) and id_office = CONST_OFFICE;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_rule', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );

END show_rule;


--
-- Выбор операций
--
PROCEDURE show_operations
(
    cursor_ in out ref_cursor
)
IS
BEGIN
    open cursor_ for
      SELECT a.id_operations, a.t_long, a.t_short, a.id_office
      FROM OPERATIONS a
        WHERE T_TYPE = 0 and a.id_office = 1
            ORDER BY T_LONG;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_operations', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20601, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END show_operations;


--
-- Удаление операций
--
PROCEDURE remove_operation
(
    id_ in      number
)
IS
BEGIN

  DELETE FROM OPERATIONS WHERE ID_OPERATIONS = id_;
  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.remove_operation', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20602, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END remove_operation;



--
-- Записываем операцию
--
PROCEDURE save_operation
(
    id_         in out  number
    ,t_short_   in      varchar2
    ,t_long_    in      varchar2
    ,type_      in      number
    ,dolg_      in      number
)
IS
BEGIN

  if (id_ = 0) then
    INSERT INTO OPERATIONS VALUES(t_short_, t_long_, get_office_unique('OPERATIONS_ID'), type_, dolg_, const_office, sysdate) returning id_operations into id_;
  else
    UPDATE OPERATIONS SET T_SHORT = t_short_, T_LONG = t_long_, dolg = dolg_, date_change=sysdate WHERE ID_OPERATIONS = id_;
  end if;

  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.save_operation', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20603, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end save_operation;



--
-- Выбор кассового дня
--
PROCEDURE show_cach_tmp
(
    ddate_      in     date
    ,paydesk_   in     number
    ,paydesk2_  in     number
    ,invoice_   in     number
    ,cursor_    in out ref_cursor
)
IS
BEGIN

if (invoice_ = 999999) then
    open cursor_ for
        SELECT CA.ID_CASH_TMP, CA.ID_CLIENTS, CA.PAYDESK, CA.OPERATION, CA.INVOICE, ca.corrector,
               ca.r_paydesk, ca.r_ddate, ca.DDATE_DONE, to_char(ca.DDATE_IN, 'dd.mm.yy hh24:mi:ss') as DDATE_IN, ca.DDATE_IN as DDATE_IN_,
               CA.SUMM, CA.IN_RUB, CA.OUT_RUB, CA.IN_USD, CA.OUT_USD, CA.IN_EU,
               CA.OUT_EU, CA.INFO, O.T_SHORT, O.T_LONG, C.NICK, C.FIO, c.group_name
          FROM CASH_TMP CA,
               OPERATIONS O,
               CLIENTS_view2 C
            WHERE CA.id_office = CONST_OFFICE
                  and CA.ID_CLIENTS = C.ID_CLIENTS
                  AND CA.OPERATION = O.ID_OPERATIONS
                  and o.id_operations in (1,4,29,32)
                  AND CA.R_DDATE = ddate_
                  AND ( (CA.PAYDESK = paydesk_ OR CA.R_PAYDESK = paydesk_ OR 5=paydesk_) OR ( CA.INVOICE = invoice_ and CA.PAYDESK = paydesk2_ ))
              ORDER BY CA.ID_CASH_TMP DESC;
else
    open cursor_ for
        SELECT CA.ID_CASH_TMP, CA.ID_CLIENTS, CA.PAYDESK, CA.OPERATION, CA.INVOICE, ca.corrector,
               ca.r_paydesk, ca.r_ddate, ca.DDATE_DONE, to_char(ca.DDATE_IN, 'dd.mm.yy hh24:mi:ss') as DDATE_IN, ca.DDATE_IN as DDATE_IN_,
               CA.SUMM, CA.IN_RUB, CA.OUT_RUB, CA.IN_USD, CA.OUT_USD, CA.IN_EU,
               CA.OUT_EU, CA.INFO, O.T_SHORT, O.T_LONG, C.NICK, C.FIO, c.group_name
          FROM CASH_TMP CA,
               OPERATIONS O,
               CLIENTS_view2 C
            WHERE CA.id_office = CONST_OFFICE
                  and CA.ID_CLIENTS = C.ID_CLIENTS
                  AND CA.OPERATION = O.ID_OPERATIONS
                  AND CA.R_DDATE = ddate_
                  AND ( (CA.PAYDESK = paydesk_ OR CA.R_PAYDESK = paydesk_ OR 5=paydesk_) OR ( CA.INVOICE = invoice_ and CA.PAYDESK = paydesk2_ ))
              ORDER BY CA.ID_CASH_TMP DESC;
end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_cach_tmp', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20604, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_cach_tmp;


--
-- Удаление кассового дня
--
PROCEDURE remove_cash
(
    paydesk_   in     number
    ,ddate_    in     date
)
IS
BEGIN

    DELETE FROM CASH_TMP
        WHERE R_DDATE = ddate_ and id_office = CONST_OFFICE; --AND (( PAYDESK = paydesk_ AND R_PAYDESK = 0 ) OR R_PAYDESK = paydesk_ );
    commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.remove_cash', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20605, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end remove_cash;


--
-- Подгрузка накладных с фокспро
--
PROCEDURE uppload_data
(
    nick_    in out     varchar2
    ,fio_    in out     varchar2
    ,oper_   in out     varchar2
    ,msg_    in out     varchar2
)
IS
    v_active number;
BEGIN

  -- Пытаемся сопоставить клиента в накладной из старой БД с новой БД
  begin
    select id_clients, decode(active,0,0,1,1,null,2,3) into nick_, v_active from clients a where lower(a.nick) = lower(trim(nick_)) and id_office=CONST_OFFICE;
    if ( v_active = 0 ) then
        msg_ := 'Накладная выписана на уволенного сотрудника ' || nick_ || ' ' || fio_ || '. Подгружка накладной невозможна.';
    else

      -- Пытаемся сопоставить операцию в накладной из старой БД с новой БД
      select count(a.id_operations) into cnt_ from OPERATIONS a where lower(a.t_short) = lower(trim(oper_)) and a.t_type = 0 and id_office=1;
      if cnt_ > 0 then
        select a.id_operations into oper_ from OPERATIONS a where lower(a.t_short) = lower(trim(oper_)) and a.t_type = 0 and id_office=1;
      else

        if ( (lower(trim(fio_)) <> 'остаток' and lower(trim(fio_)) <> '76') or length(trim(oper_)) > 0 ) then
            msg_ := 'Операция ' || oper_ || ' не найдена в БД. Обратитесь к администратору.';
        else


          if ( lower(trim(fio_)) = 'остаток' and length(trim(oper_)) = 0 ) then
            begin
              select a.id_operations into oper_ from OPERATIONS a where lower(a.t_short) = 'ост' and a.t_type = 0 and id_office=1;
            EXCEPTION
              WHEN no_data_found THEN
                msg_ := 'Операция ' || oper_ || ' не найдена в БД. Обратитесь к администратору.';
            end;
          end if;

          if ( lower(trim(fio_)) = '76' and length(trim(oper_)) = 0 ) then
            begin
              select a.id_operations into oper_ from OPERATIONS a where lower(a.t_short) = '76' and a.t_type = 0 and id_office=1;
            EXCEPTION
              WHEN no_data_found THEN
                msg_ := 'Операция ' || oper_ || ' не найдена в БД. Обратитесь к администратору.';
            end;
          end if;


        end if;
      end if; -- if cnt_ > 0 then
    end if;
  EXCEPTION
    WHEN no_data_found THEN
       msg_ := 'Клиент ' || nick_ || ' ' || fio_ || ' не найден в регистрации.';
  end;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.uppload_data', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20606, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end uppload_data;



--
-- Добавление записи в кассу
--
PROCEDURE add_cash_record
(
    id_             in out  number,
    client_         in      number,
    paydesk_        in      number,
    id_operation_   in      number,
    invoice_        in      number,
    summ_           in      number,
    in_rub_         in      number,
    out_rub_        in      number,
    in_usd_         in      number,
    out_usd_        in      number,
    in_eu_          in      number,
    out_eu_         in      number,
    info_           in      varchar2,
    corrector_      in      varchar2,
    ddate_          in      date,
    ddate_done_     in      date,
    r_desk_         in      number,
    r_date_         in      date,
    state_         in      number
)
IS
BEGIN

  if (state_ = 1) then
    select get_office_unique('CASH_TMP_ID') into id_ from dual;
    INSERT INTO CASH_TMP
        VALUES(id_, client_, paydesk_, id_operation_, invoice_,
        summ_,
        in_rub_,
        out_rub_,
        in_usd_,
        out_usd_,
        in_eu_,
        out_eu_
        ,info_, corrector_, ddate_, ddate_done_, r_desk_, r_date_, CONST_OFFICE, sysdate);
  else
    UPDATE CASH_TMP SET
        PAYDESK=paydesk_, OPERATION=id_operation_, SUMM=summ_, IN_RUB=in_rub_, OUT_RUB=out_rub_, IN_USD=in_usd_, OUT_USD=out_usd_,
        IN_EU=in_eu_, OUT_EU=out_eu_, DDATE_DONE=sysdate, INFO=info_, CORRECTOR=corrector_, date_change=sysdate
      WHERE ID_CASH_TMP=id_;
  end if;
  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.add_cash_record', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20607, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end add_cash_record;



--
-- Удаление записи
--
PROCEDURE remove_data
(
    id_    in     number
    ,fio_  in     varchar2
)
IS
BEGIN

    INSERT INTO CASH_DELETED (
        SELECT id_cash_tmp, id_clients, paydesk, operation, invoice, summ, in_rub, out_rub,
               in_usd, out_usd, in_eu, out_eu, info, corrector, ddate_in, ddate_done, r_ddate,
               0, r_paydesk, null, null, 0, sysdate, fio_, CONST_OFFICE, sysdate
               from CASH_TMP WHERE ID_CASH_TMP = id_
    );
    DELETE FROM CASH_TMP WHERE ID_CASH_TMP = id_;

    commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.remove_data', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20608, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end remove_data;


--
-- Проверка наличия данных в основной кассе
--
PROCEDURE check_cash
(
  ddate_     in     date
  ,paydesk_  in     number
  ,count_    in out number
)
IS
BEGIN

  SELECT count(1) into count_ from dual
  where exists
  (
    select 1 FROM CASH
     WHERE R_DDATE = ddate_ AND id_office=CONST_OFFICE --and ((PAYDESK = paydesk_ AND R_PAYDESK=0) OR R_PAYDESK = paydesk_)
  );

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.check_cash', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20609, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end check_cash;


--
-- Переброс кассового дня в свод
--
PROCEDURE move_cash
(
  ddate_     in     date
  ,paydesk_  in     number
)
IS
BEGIN

  INSERT INTO CASH(ID_CASH,ID_CLIENTS,PAYDESK,OPERATION,INVOICE,SUMM,IN_RUB,OUT_RUB,IN_USD,OUT_USD,IN_EU,OUT_EU,INFO,CORRECTOR,DDATE_IN,DDATE_DONE,R_DDATE,D_CHECKED,R_PAYDESK,id_office)
  (
      SELECT get_office_unique('CASH_ID'), ID_CLIENTS, PAYDESK, OPERATION, INVOICE, SUMM, IN_RUB, OUT_RUB, IN_USD, OUT_USD, IN_EU, OUT_EU, INFO, CORRECTOR, DDATE_IN, DDATE_DONE, R_DDATE, 0, R_PAYDESK, const_office
        FROM CASH_TMP
            WHERE R_DDATE = ddate_ and id_office = const_office --AND ((PAYDESK = paydesk_ AND R_PAYDESK = 0) OR R_PAYDESK = paydesk_)
  );

  insert into CASH_TMP_RAZNOS (
    SELECT id_cash_tmp FROM CASH_TMP WHERE R_DDATE = ddate_ and id_office = const_office --AND ((PAYDESK = paydesk_ AND R_PAYDESK = 0) OR R_PAYDESK = paydesk_)
    );

  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.move_cash', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20610, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end move_cash;




--
-- Показываем статистику в дебеторах
--
PROCEDURE show_statistic
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,v_office    in     number
    ,cursor_     in out ref_cursor
)
IS
BEGIN
  if id_group_ = 0 then

    open cursor_ for
      select OPERATION, sum(SUMM) as SUMM, sum(IN_RUB) as IN_RUB, T_LONG, sum(itog_discount) as itog_discount
      from (
        SELECT
          case when OPERATION in (1,4,32) then 0 else ca.OPERATION end OPERATION,
          ca.SUMM,
          ca.IN_RUB,
          --case when CA.SUMM <> 0 then ca.SUMM - ca.DEBET else 0 end itog_discount,
          case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
          case when OPERATION in (1,4,32) then 'ПРОДАЖА' else o.T_LONG end T_LONG
        FROM CLIENT_DEBT CA, OPERATIONS O
        WHERE CA.ID_DEBETORS = id_debetors_
            AND CA.ACTIVE >= 1
            AND CA.OPERATION = O.ID_OPERATIONS
--            and trunc(ca.d_date) >= date_begin_ and trunc(ca.d_date) <= date_end_
            and trunc(ca.r_ddate) >= trunc(date_begin_) and trunc(ca.r_ddate) <= trunc(date_end_)
        ) a
      group by OPERATION, T_LONG
      order by OPERATION;

  else

    open cursor_ for
      select OPERATION, sum(SUMM) as SUMM, sum(IN_RUB) as IN_RUB, T_LONG, sum(itog_discount) as itog_discount
      from (
        SELECT
          case when OPERATION in (1,4,32) then 0 else ca.OPERATION end OPERATION,
          ca.SUMM,
          ca.IN_RUB,
--          case when CA.SUMM <> 0 then ca.SUMM - ca.DEBET else 0 end itog_discount,
          case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
          case when OPERATION in (1,4,32) then 'ПРОДАЖА' else o.T_LONG end T_LONG
        FROM CLIENT_DEBT CA, OPERATIONS O
        WHERE CA.ID_DEBETORS in
            (SELECT D.ID_DEBETORS FROM DEBETORS D, CLIENTS C WHERE D.ID_CLIENTS=C.ID_CLIENTS AND (c.id_office=v_office or v_office=0) and C.ID_CLIENTS_GROUPS = id_group_)
            AND CA.ACTIVE >= 1
            AND CA.OPERATION = O.ID_OPERATIONS
--            and trunc(ca.d_date) >= date_begin_ and trunc(ca.d_date) <= date_end_
            and trunc(ca.r_ddate) >= trunc(date_begin_) and trunc(ca.r_ddate) <= trunc(date_end_)
        ) a
      group by OPERATION, T_LONG
      order by OPERATION;

  end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_statistic', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20611, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_statistic;




--
-- Показываем клиентов свободных по деб. карточкам
--
PROCEDURE show_clients
(
    v_office    in number,
    cursor_     in out ref_cursor
)
IS
BEGIN

  open cursor_ for
  SELECT e.ID_CLIENTS, e.NICK, e.FIO, e.DDATE, e.CCODE
        , e.REGION, e.TTYPE, e.ID_CLIENTS_GROUPS, e.REGIONS_NAME
        , e.GROUP_NAME as gr_name, e.TTYPE_NAME, e.CORRECTOR, e.PHONE
        , e.BLOCK1, e.BLOCK2, e.REG_TYPE_NAME, e.sales
        , 1 as NN, e.COUNT as counts, d.id_clients as deb_client
    FROM CLIENTS_VIEW2 E, DEBETORS D
      where e.id_clients = d.id_clients(+)
          and (e.id_office = v_office or v_office = 0)
      order by e.fio;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_clients', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20612, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_clients;


--
-- Добавляем / редактируем дебетора
--
PROCEDURE edit_debetor
(
  id_     in out number
  , ID_CLIENTS_  in number
  , STATE_       in number
  , BEZNAL_      in number
  , DEBET_       in number
  , CREDIT_DAYS_ in number
  , INFO_        in varchar2
  , RUBL_        in number
  , CHART_       in number
  , IS_LOCK_     in number
  , LOCK_FOR_    in number
  , v_office     in number
)
IS
BEGIN

if ( id_ = 0 ) then
  INSERT INTO DEBETORS VALUES(
    get_office_unique('DEBETORS_ID'),
    ID_CLIENTS_,
    null,
    STATE_,
    BEZNAL_,
    DEBET_,
    CREDIT_DAYS_,
    INFO_,
    sysdate,
    RUBL_,
    CHART_,
    0,
    IS_LOCK_,
    LOCK_FOR_,
    v_office,
    sysdate
  ) returning ID_DEBETORS into id_;
else
  UPDATE DEBETORS SET
    ID_CLIENTS = ID_CLIENTS_,
    RUBL = RUBL_,
    STATE = STATE_,
    BEZNAL = BEZNAL_,
    DEBET = DEBET_,
    CREDIT_DAYS = CREDIT_DAYS_,
    INFO = INFO_,
    CHART = CHART_,
    IS_LOCK = IS_LOCK_,
    LOCK_FOR = LOCK_FOR_,
    date_change = sysdate
    WHERE ID_DEBETORS = id_;
end if;

  if ( STATE_ = 1 ) then
    UPDATE CLIENTS SET BLOCK2=1, date_change = sysdate  WHERE ID_CLIENTS=ID_CLIENTS_;
  end if;

  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.edit_debetor', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20613, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end edit_debetor;


--
-- Добавляем / редактируем запись в дебеторе
--
PROCEDURE edit_debetor_list
(
  id_cl_debetor_  in out number
  , id_debetor_ in number
  , debet_      in number
  , rate_       in number
  , date_vvod_  in date
  , date_oper_  in date
  , operation_  in number
  , invoice_    in varchar2
  , summ_       in number
  , in_ru_      in number
  , info_       in varchar2
  , discount_   in number
  , discount_proc_   in number
  , v_office    in number
)
IS
BEGIN

  if id_cl_debetor_ = 0 then
    INSERT INTO CLIENT_DEBT VALUES(get_office_unique('CLIENT_DEBT_ID'), id_debetor_, debet_, rate_, date_vvod_, date_oper_, operation_, invoice_, summ_, in_ru_, info_, 1, discount_, discount_proc_, v_office, sysdate)
    returning ID_CLIENT_DEBT into id_cl_debetor_;
  else
    UPDATE CLIENT_DEBT SET DEBET=debet_, RATE=rate_, D_DATE=date_vvod_, OPERATION=operation_, INVOICE=invoice_, SUMM=summ_, IN_RUB=in_ru_, INFO=info_, discount=discount_, disc_proc = discount_proc_, date_change = sysdate
      WHERE ID_CLIENT_DEBT=id_cl_debetor_;
  end if;

  SET_DEBT_ON_DEBETORS(id_debetor_);
--  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.edit_debetor_list', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20614, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end edit_debetor_list;


--
-- Удаляем дебетора
--
PROCEDURE delete_debetor
(
  id_debetor_   in number
)
IS
BEGIN

  DELETE FROM DEBETORS WHERE ID_DEBETORS = id_debetor_;
  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.delete_debetor', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20621, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end delete_debetor;


--
-- Удаляем запись в дебеторе
--
PROCEDURE delete_debetor_list
(
  id_cl_debetor_  in number
  , id_debetor_   in number
)
IS
BEGIN

  DELETE FROM CLIENT_DEBT WHERE ID_CLIENT_DEBT = id_cl_debetor_;
  SET_DEBT_ON_DEBETORS(id_debetor_);

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.delete_debetor_list', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20614, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end delete_debetor_list;





--
-- Добавление записи в свод
--
PROCEDURE add_svod_record
(
    id_             in out  number,
    client_         in      number,
    paydesk_        in      number,
    id_operation_   in      number,
    invoice_        in      number,
    summ_           in      number,
    in_rub_         in      number,
    out_rub_        in      number,
    in_usd_         in      number,
    out_usd_        in      number,
    in_eu_          in      number,
    out_eu_         in      number,
    info_           in      varchar2,
    corrector_      in      varchar2,
    ddate_          in      date,
    ddate_done_     in      date,
    r_desk_         in      number,
    r_date_         in      date,
    state_          in      number,
    corr_           in      varchar2,
    corr_date_      in      date,
    v_office        in      number
)
IS
BEGIN

  if (state_ = 1) then
    select get_office_unique('CASH_ID') into id_ from dual;

    INSERT INTO CASH
        VALUES(id_, client_, paydesk_, id_operation_, invoice_,
        summ_,
        in_rub_,
        out_rub_,
        in_usd_,
        out_usd_,
        in_eu_,
        out_eu_
        ,info_, corrector_, ddate_, ddate_done_, r_date_, 0, r_desk_, NULL, NULL, v_office, sysdate);
  else
    UPDATE CASH SET
      ID_CLIENTS=client_, R_PAYDESK=r_desk_, R_DDATE=r_date_,
      OPERATION=id_operation_, SUMM=summ_, IN_RUB=in_rub_, OUT_RUB=out_rub_,
      IN_USD=in_usd_, OUT_USD=out_usd_, IN_EU=in_eu_, OUT_EU=out_eu_,
      COR_DATE=corr_date_, INFO=info_, CORRECTOR2=corr_, DDATE_IN=ddate_, date_change=sysdate
      WHERE ID_CASH=id_;

  end if;
  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.add_svod_record', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20615, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end add_svod_record;



--
-- Удаление записи
--
PROCEDURE remove_svod_data
(
    id_    in     number
    ,fio_  in     varchar2
)
IS
BEGIN

    INSERT INTO CASH_DELETED (
        SELECT id_cash, id_clients, paydesk, operation, invoice, summ, in_rub, out_rub,
               in_usd, out_usd, in_eu, out_eu, info, corrector, ddate_in, ddate_done, r_ddate,
               0, r_paydesk, null, null, 0, sysdate, fio_, id_office, sysdate
               from CASH WHERE ID_CASH = id_
    );
    DELETE FROM CASH WHERE ID_CASH = id_;

    commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.remove_svod_data', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20616, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end remove_svod_data;



--
-- Показываем кассовый день
--
PROCEDURE show_kass_day
(
  p_date1     in date
  , p_date2   in date
  , v_office  in number
  , cursor_   in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT CA.ID_CASH, CA.ID_CLIENTS, CA.PAYDESK, CA.OPERATION, CA.INVOICE, CA.SUMM, CA.IN_RUB, CA.OUT_RUB, CA.IN_USD, CA.OUT_USD,
          CA.IN_EU, CA.OUT_EU, CA.INFO, CA.CORRECTOR, CA.DDATE_IN, CA.DDATE_DONE, CA.R_DDATE, CA.D_CHECKED, CA.R_PAYDESK, CA.CORRECTOR2,
          CA.COR_DATE, O.T_SHORT, O.T_LONG, C.NICK, C.FIO, C.ID_CLIENTS_GROUPS, c.group_name, count(1) over (PARTITION by invoice, CA.OPERATION) as cc
          , ca.ID_OFFICE, oc.brief
    FROM CASH CA, OPERATIONS O, CLIENTS_view2 C, offices oc
      WHERE (ca.ID_OFFICE = v_office or v_office = 0)
          and ca.id_office = oc.ID_OFFICE
          and CA.ID_CLIENTS = C.ID_CLIENTS
          AND CA.OPERATION = O.ID_OPERATIONS
          AND CA.R_DDATE between p_date1 AND p_date2
        ORDER BY CA.ID_CASH DESC;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_kass_day', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20617, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_kass_day;



--
-- Показываем кассовый день
--
PROCEDURE show_kass_deps
(
  p_date1     in date
  , p_date2   in date
  , v_office  in number
  , cursor_   in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT 0 as checked,
          CA.ID_CASH, CA.ID_CLIENTS, CA.PAYDESK, CA.OPERATION, CA.INVOICE, nvl(CA.SUMM,0) summ, CA.IN_RUB, CA.OUT_RUB, CA.IN_USD, CA.OUT_USD,
          CA.IN_EU, CA.OUT_EU, CA.INFO, CA.CORRECTOR, CA.DDATE_IN, CA.DDATE_DONE, CA.R_DDATE, CA.D_CHECKED, CA.CORRECTOR2, CA.COR_DATE, CA.R_PAYDESK,
          O.T_SHORT, O.T_LONG,
          C.NICK, C.FIO, c.id_clients_groups,
          nvl(case when d.lock_for <> 0 and d.lock_for is not null then d.lock_for else d.id_debetors end,0) id_debetors,
          d.is_lock, case when (nvl(d.lock_for,0) > 0) then 1 else 0 end is_loc_for,
          c.GROUP_NAME, d.id_debetors as old_id_debetors, d.RUBL, d.BEZNAL
          /* инфа по скидкам*/
          , case when (select count(ID) from clients_sales z
              where z.sale_status = 1 and z.id_employees = CA.ID_CLIENTS and z.id_departments = decode(ca.OPERATION,32,61,4,121,1,62,29,181,0)
                and (z.notime = 1 or (z.date1 <= CA.R_DDATE and z.date2 >= CA.R_DDATE))
              ) > 0 then 1 else 0 end is_sale
          , ca.ID_OFFICE, oc.brief
      FROM CASH CA, OPERATIONS O, CLIENTS_view2 C, debetors d, offices oc
        WHERE (ca.ID_OFFICE = v_office or v_office = 0)
            and (CA.R_DDATE >= p_date1 and CA.R_DDATE <= p_date2)
            and ca.id_office = oc.ID_OFFICE
            AND CA.ID_CLIENTS = C.ID_CLIENTS
            AND CA.OPERATION  = O.ID_OPERATIONS
            AND ( (nvl(CA.SUMM,0) <> CA.IN_RUB or CA.IN_RUB is NULL )
            and (O.ID_OPERATIONS in
              (select id_operations from OPERATIONS where dolg = 1 and t_type = 0) ))
            and ca.id_clients = d.id_clients(+)
          order by CA.DDATE_IN;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_kass_deps', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20618, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_kass_deps;


--
-- Показываем списки дебеторов в группе
--
PROCEDURE show_dep_clients
(
  id_cl_groups_ in number,
  id_cl_        in number,
  v_office      in number,
  cursor_       in out ref_cursor
)
IS
BEGIN

  if (id_cl_groups_ = 2) then

  open cursor_ for
    SELECT  C.ID_CLIENTS, UPPER(C.NICK) as nick, C.FIO, C.ddate, C.CCODE, C.REGION, C.TTYPE, C.ID_CLIENTS_GROUPS,
        G.NAME AS GROUP_NAME,
        c.block1, c.block2, c.phone,
        nvl(a.id_debetors,0) as id_debetors, a.is_lock, a.beznal, a.RUBL, a.STATE, a.DEBET, a.CREDIT_DAYS, a.last_ddate,
        case when (nvl(a.lock_for,0) > 0) then 1 else 0 end is_loc_for,
        (select max(d_date) from client_debt b where b.id_debetors = a.id_debetors and b.active >= 1) as max_date,
        case when (select count(z.id) from CLIENTS_SALES z where z.ID_EMPLOYEES = C.ID_CLIENTS and z.sale_status = 1 and (z.notime = 1 or (z.date1 >= sysdate and z.date2 <= sysdate))) > 0 then 1 else 0 end sales
        , c.ID_OFFICE, oc.brief
    FROM CLIENTS C, CLIENTS_GROUPS G, debetors a, offices oc
    WHERE -- (c.ID_OFFICE = v_office or v_office = 0)
      C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS
      and c.id_clients = id_cl_
      and c.id_clients = a.id_clients
      and c.id_office = oc.ID_OFFICE
      ;

  else

  open cursor_ for
    SELECT  C.ID_CLIENTS, UPPER(C.NICK) as nick, C.FIO, C.ddate, C.CCODE, C.REGION, C.TTYPE, C.ID_CLIENTS_GROUPS,
        G.NAME AS GROUP_NAME,
        c.block1, c.block2, c.phone,
        nvl(a.id_debetors,0) as id_debetors, a.is_lock, a.beznal, a.RUBL, a.STATE, a.DEBET, a.CREDIT_DAYS, a.last_ddate,
        case when (nvl(a.lock_for,0) > 0) then 1 else 0 end is_loc_for,
        (select max(d_date) from client_debt b where b.id_debetors = a.id_debetors and b.active >= 1) as max_date,
        case when (select count(z.id) from CLIENTS_SALES z where z.ID_EMPLOYEES = C.ID_CLIENTS and z.sale_status = 1 and (z.notime = 1 or (z.date1 >= sysdate and z.date2 <= sysdate))) > 0 then 1 else 0 end sales
        , c.ID_OFFICE, oc.brief
    FROM CLIENTS C, CLIENTS_GROUPS G, debetors a, offices oc
    WHERE (c.ID_OFFICE = v_office or v_office = 0)
      and C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS
      and c.id_clients_groups = id_cl_groups_
      and c.id_clients = a.id_clients(+)
      and c.id_office = oc.ID_OFFICE
      ;

  end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_dep_clients', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20620, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_dep_clients;



--
-- Достаем ссылку для разноски
--
PROCEDURE get_sale
(
  id_client_     in number,
  ddate_         in date,
  otdel_         in number,
  discount_      in out number,
  discount_proc_ in out number
)
IS
BEGIN

  select discount, discount_proc into discount_, discount_proc_
  from (
  select z.id,
    case when z.persents = 1 then 0 else z.sale end discount,
    case when z.persents = 0 then 0 else z.sale end discount_proc
  from clients_sales z
    where z.sale_status = 1 and z.id_employees = id_client_
      and z.id_departments = decode(otdel_,32,61,4,121,1,62,29,181,0)
      and (z.notime = 1 or (z.date1 <= ddate_ and z.date2 >= ddate_))
        order by z.notime
  ) a where rownum = 1
      ;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_dep_clients', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20620, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_sale;





--
-- Показываем статистику по курсу
--
PROCEDURE show_statistic_rate
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,v_office    in     number
    ,cursor_     in out ref_cursor
)
IS
BEGIN

  if id_group_ = 0 then
    open cursor_ for
    select * from (
        SELECT ca.rate, min(ca.d_date) as min_date, max(ca.d_date) as max_date,
        sum(ca.in_rub) as in_rub, sum(ca.summ) as summ
        FROM CLIENT_DEBT CA
        WHERE CA.ID_DEBETORS = id_debetors_
            AND CA.ACTIVE >= 1
            and trunc(ca.d_date) >= trunc(date_begin_) and trunc(ca.d_date) <= trunc(date_end_)
            group by ca.rate
    )
    order by min_date;
  else
    open cursor_ for
    select * from (
        SELECT ca.rate, min(ca.d_date) as min_date, max(ca.d_date) as max_date,
        sum(ca.in_rub) as in_rub, sum(ca.summ) as summ
        FROM CLIENT_DEBT CA
        WHERE CA.ID_DEBETORS in
            (SELECT D.ID_DEBETORS FROM DEBETORS D, CLIENTS C WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS = id_group_ AND (c.id_office=v_office or v_office=0) )
            AND CA.ACTIVE >= 1
            and trunc(ca.d_date) >= trunc(date_begin_) and trunc(ca.d_date) <= trunc(date_end_)
            group by ca.rate
    )
    order by min_date;
  end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_statistic_rate', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20621, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_statistic_rate;




--
-- Показываем дебеторскую карту
--
PROCEDURE show_debetor_list
(
    id_debetors_ in     number
    ,id_group_   in     number
    ,date_begin_ in     date
    ,date_end_   in     date
    ,d3_         in     number
    ,d4_         in     number
    ,v_office    in     number
     ,cursor_     in out ref_cursor
)
IS
  v_chart_group  number;
  v_chart        number;
BEGIN
  v_chart_group := 0;
  v_chart       := 0;

  -- По дате ввода ищем сальдо
  if (d3_ > 0 or d4_ = 0) then
    if (id_group_ > 0) then
      select sum(round(ca.DEBET/ca.RATE,2)) into v_chart_group
      from  CLIENT_DEBT CA,
            DEBETORS D,
            CLIENTS C
      WHERE CA.ID_DEBETORS = D.ID_DEBETORS
            AND CA.ACTIVE >= 1
            AND D.ID_CLIENTS = C.Id_Clients
            and c.id_clients_groups = id_group_ AND (c.id_office=v_office or v_office=0)
            and trunc(CA.D_DATE) < date_begin_;
    else
      select sum(round(ca.DEBET/ca.RATE,2)) into v_chart
      from  CLIENT_DEBT CA,
            DEBETORS D,
            CLIENTS C
      WHERE CA.ID_DEBETORS = D.ID_DEBETORS
            and ca.id_debetors = id_debetors_
            AND CA.ACTIVE >= 1
            AND D.ID_CLIENTS = C.Id_Clients
            and trunc(CA.D_DATE) < date_begin_;
    end if;
  end if;


  -- По дате операции ищем сальдо
  if (d4_ > 0 or d3_ = 0) then
    if (id_group_ > 0) then
      select sum(round(ca.DEBET/ca.RATE,2)) into v_chart_group
      from  CLIENT_DEBT CA,
            DEBETORS D,
            CLIENTS C
      WHERE CA.ID_DEBETORS = D.ID_DEBETORS
            AND CA.ACTIVE >= 1
            AND D.ID_CLIENTS = C.Id_Clients
            and c.id_clients_groups = id_group_ AND (c.id_office=v_office or v_office=0)
            and trunc(CA.r_ddate) < date_begin_;
    else
      select sum(round(ca.DEBET/ca.RATE,2)) into v_chart
      from  CLIENT_DEBT CA,
            DEBETORS D,
            CLIENTS C
      WHERE CA.ID_DEBETORS = D.ID_DEBETORS
            and ca.id_debetors = id_debetors_
            AND CA.ACTIVE >= 1
            AND D.ID_CLIENTS = C.Id_Clients
            and trunc(CA.r_ddate) < date_begin_;
    end if;
  end if;


if (id_group_ = 0) then

  -- Карта клиента
  if (d3_ = 0 and d4_ = 0) then

    open cursor_ for
      SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
            a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
            a.NICK, to_number(a.IS_LOCK) AS IS_LOCK, to_number(a.LOCK_FOR) AS LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
      FROM (
          SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
                CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
                O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
                round(ca.DEBET/ca.RATE,2) as dolg,
                case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
                sum(round(ca.DEBET/ca.RATE,2)) over(partition by ca.ID_DEBETORS order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
          FROM  CLIENT_DEBT CA,
                DEBETORS D,
                OPERATIONS O,
                CLIENTS C
          WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                AND CA.ID_DEBETORS = id_debetors_
                AND CA.ACTIVE >= 1
                AND CA.OPERATION = O.ID_OPERATIONS
                AND D.ID_CLIENTS = C.Id_Clients
          ORDER BY CA.D_DATE
      ) a;

  else

    -- По дате операции
    if (d4_ > 0 or d3_ = 0) then
      open cursor_ for
        select a.* from (
        SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
              a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
              a.NICK, to_number(a.IS_LOCK) AS IS_LOCK, to_number(a.LOCK_FOR) AS LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
        FROM (
          SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
              CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
              O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
              round(ca.DEBET/ca.RATE,2) as dolg,
              case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
              v_chart + sum(round(ca.DEBET/ca.RATE,2)) over(partition by ca.ID_DEBETORS order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
          FROM  CLIENT_DEBT CA,
                DEBETORS D,
                OPERATIONS O,
                CLIENTS C
          WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                AND CA.ID_DEBETORS = id_debetors_
                AND CA.ACTIVE >= 1
                AND CA.OPERATION = O.ID_OPERATIONS
                AND D.ID_CLIENTS = C.Id_Clients
                --and (trunc(CA.D_DATE) >= date_begin_ and trunc(CA.D_DATE) <= date_end_)
                and (trunc(CA.R_DDATE) >= date_begin_ and trunc(CA.R_DDATE) <= date_end_)
          ORDER BY CA.R_DDATE
        ) a
        union all
        select 0 as nn, 0 as ID_CLIENT_DEBT, 0 as ID_DEBETORS, 0 as DEBET, 0 as RATE, date_begin_ as D_DATE, date_begin_ as R_DDATE
            , 0 as OPERATION, null as INVOICE, 0 as SUMM, 'расчетная строка, не редактируется' as INFO, 0 as DISCOUNT
            , 0 as disc_proc, 0 as IN_RUB, 'сальдо' as T_SHORT, 'сальдо на начало периода' as T_LONG, 0 as t_type,
            'клиент' as NICK, 0 AS IS_LOCK, 0 AS LOCK_FOR, v_chart as dolg, 0 as itog_discount, v_chart, 1 as active
            , const_office as id_office
        from dual
        ) a
        ORDER BY a.R_DDATE;
    else
      open cursor_ for
        select a.* from (
        SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
              a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
              a.NICK, to_number(a.IS_LOCK) AS IS_LOCK, to_number(a.LOCK_FOR) AS LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
        FROM (
          SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
              CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
              O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
              round(ca.DEBET/ca.RATE,2) as dolg,
              case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
              v_chart + sum(round(ca.DEBET/ca.RATE,2)) over(partition by ca.ID_DEBETORS order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
          FROM  CLIENT_DEBT CA,
                DEBETORS D,
                OPERATIONS O,
                CLIENTS C
          WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                AND CA.ID_DEBETORS = id_debetors_
                AND CA.ACTIVE >= 1
                AND CA.OPERATION = O.ID_OPERATIONS
                AND D.ID_CLIENTS = C.Id_Clients
                and (trunc(CA.D_DATE) >= date_begin_ and trunc(CA.D_DATE) <= date_end_)
                --and (trunc(CA.R_DDATE) >= date_begin_ and trunc(CA.R_DDATE) <= date_end_)
          ORDER BY CA.D_DATE
        ) a
        union all
        select 0 as nn, 0 as ID_CLIENT_DEBT, 0 as ID_DEBETORS, 0 as DEBET, 0 as RATE, date_begin_ as D_DATE, date_begin_ as R_DDATE
            , 0 as OPERATION, null as INVOICE, 0 as SUMM, 'расчетная строка, не редактируется' as INFO, 0 as DISCOUNT
            , 0 as disc_proc, 0 as IN_RUB, 'сальдо' as T_SHORT, 'сальдо на начало периода' as T_LONG, 0 as t_type,
            'клиент' as NICK, 0 AS IS_LOCK, 0 AS LOCK_FOR, v_chart as dolg, 0 as itog_discount, v_chart, 1 as active
            , const_office as id_office
        from dual
        ) a
        ORDER BY a.D_DATE;
    end if;
  end if;

else

  -- группа
  if (d3_ = 0 and d4_ = 0) then

    open cursor_ for
      SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
            a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
            a.NICK, to_number(a.IS_LOCK) as IS_LOCK, to_number(a.LOCK_FOR) as LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
      FROM (
          SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
                CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
                O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
                round(ca.DEBET/ca.RATE,2) as dolg,
                case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
                sum(round(ca.DEBET/ca.RATE,2)) over(partition by 1 order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
          FROM  CLIENT_DEBT CA,
                DEBETORS D,
                OPERATIONS O,
                CLIENTS C
          WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                --AND CA.ID_DEBETORS = id_debetors_
                AND CA.ACTIVE >= 1
                AND CA.OPERATION = O.ID_OPERATIONS
                AND D.ID_CLIENTS = C.Id_Clients
                and c.id_clients_groups = id_group_ AND (c.id_office=v_office or v_office=0)
          ORDER BY CA.D_DATE
      ) a;

  else

    -- По дате операции
    if (d4_ > 0 or d3_ = 0) then
      open cursor_ for
        select a.* from (
        SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
            a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
            a.NICK, to_number(a.IS_LOCK) as IS_LOCK, to_number(a.LOCK_FOR) as LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
        FROM (
            SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
                CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
                O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
                round(ca.DEBET/ca.RATE,2) as dolg,
                case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
                v_chart_group + sum(round(ca.DEBET/ca.RATE,2)) over(partition by 1 order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
            FROM  CLIENT_DEBT CA,
                  DEBETORS D,
                  OPERATIONS O,
                  CLIENTS C
            WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                  AND CA.ACTIVE >= 1
                  AND CA.OPERATION = O.ID_OPERATIONS
                  AND D.ID_CLIENTS = C.Id_Clients
                  and c.id_clients_groups = id_group_ AND (c.id_office=v_office or v_office=0)
                  --and (trunc(CA.D_DATE) >= date_begin_ and trunc(CA.D_DATE) <= date_end_)
                  and (trunc(CA.R_DDATE) >= date_begin_ and trunc(CA.R_DDATE) <= date_end_)
            ORDER BY CA.R_DDATE
        ) a
        union all
        select 0 as nn, 0 as ID_CLIENT_DEBT, 0 as ID_DEBETORS, 0 as DEBET, 0 as RATE, date_begin_ as D_DATE, date_begin_ as R_DDATE
              , 0 as OPERATION, null as INVOICE, 0 as SUMM, 'расчетная строка, не редактируется' as INFO, 0 as DISCOUNT
              , 0 as disc_proc, 0 as IN_RUB, 'сальдо' as T_SHORT, 'сальдо на начало периода' as T_LONG, 0 as t_type,
              'группа' as NICK, 0 AS IS_LOCK, 0 AS LOCK_FOR, v_chart_group as dolg, 0 as itog_discount, v_chart_group, 1 as active
            , const_office as id_office
        from dual
        ) a
        ORDER BY a.R_DDATE;
    else
      open cursor_ for
        select a.* from (
        SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RATE, a.D_DATE, a.R_DDATE, to_number(a.OPERATION) as OPERATION,
            a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, to_number(a.disc_proc) as disc_proc, a.IN_RUB, a.T_SHORT, a.T_LONG, to_number(a.t_type) as t_type,
            a.NICK, to_number(a.IS_LOCK) as IS_LOCK, to_number(a.LOCK_FOR) as LOCK_FOR, a.dolg, a.itog_discount, a.chart, to_number(a.active) as active
            , TO_NUMBER(a.id_office) as id_office
        FROM (
            SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.D_DATE, CA.R_DDATE, CA.OPERATION,
                CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_proc, ca.active, O.T_SHORT,
                O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,
                round(ca.DEBET/ca.RATE,2) as dolg,
                case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISCOUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,
                v_chart_group + sum(round(ca.DEBET/ca.RATE,2)) over(partition by 1 order by CA.D_DATE, CA.ID_CLIENT_DEBT ) as CHART
                , d.id_office
            FROM  CLIENT_DEBT CA,
                  DEBETORS D,
                  OPERATIONS O,
                  CLIENTS C
            WHERE CA.ID_DEBETORS = D.ID_DEBETORS
                  AND CA.ACTIVE >= 1
                  AND CA.OPERATION = O.ID_OPERATIONS
                  AND D.ID_CLIENTS = C.Id_Clients
                  and c.id_clients_groups = id_group_ AND (c.id_office=v_office or v_office=0)
                  and (trunc(CA.D_DATE) >= date_begin_ and trunc(CA.D_DATE) <= date_end_)
                  --and (trunc(CA.R_DDATE) >= date_begin_ and trunc(CA.R_DDATE) <= date_end_)
            ORDER BY CA.D_DATE
        ) a
        union all
        select 0 as nn, 0 as ID_CLIENT_DEBT, 0 as ID_DEBETORS, 0 as DEBET, 0 as RATE, date_begin_ as D_DATE, date_begin_ as R_DDATE
              , 0 as OPERATION, null as INVOICE, 0 as SUMM, 'расчетная строка, не редактируется' as INFO, 0 as DISCOUNT
              , 0 as disc_proc, 0 as IN_RUB, 'сальдо' as T_SHORT, 'сальдо на начало периода' as T_LONG, 0 as t_type,
              'группа' as NICK, 0 AS IS_LOCK, 0 AS LOCK_FOR, v_chart_group as dolg, 0 as itog_discount, v_chart_group, 1 as active
            , const_office as id_office
        from dual
        ) a
        ORDER BY a.D_DATE;
    end if;

  end if;

end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'cash_pkg.show_debetor_list', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20622, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end show_debetor_list;


end;
/

create or replace public synonym cash_pkg for creator.cash_pkg
/
-- End of DDL Script for Package Body CREATOR.CASH_PKG

