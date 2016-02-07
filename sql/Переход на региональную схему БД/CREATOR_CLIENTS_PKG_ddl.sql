-- Start of DDL Script for Package Body CREATOR.CLIENTS_PKG
-- Generated 10.12.2011 20:51:32 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE clients_pkg
IS

   TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

   --
   -- Выбор полной информации по сотруднику/клиенту
   --
   procedure get_client_info
   (
        id_clients_      in  number,
        cursor_ out ref_cursor
   );
   --
   -- Выбор полной информации по всем сотрудникам/клиентам
   --
   procedure get_clients_list
   (
        v_office in number,
        cursor_ out ref_cursor
   );

   --
   -- Выбор скидок для сотрудника/клиента
   --
   procedure get_client_sales
   (
        id_clients_      in  number,
        cursor_ out ref_cursor
   );

   --
   -- Запись/изменение полной информации по сотруднику/клиенту
   --
   procedure save_client_info
   (    id_clients_       in  out NUMBER,
        fio_               in VARCHAR2,
        nick_              in VARCHAR2,
        ccode_             in VARCHAR2,
        region_            in NUMBER,
        address_           in VARCHAR2,
        u_address_         in VARCHAR2,
        phone_             in VARCHAR2,
        passport_          in VARCHAR2,
        contact_           in VARCHAR2,
        cont_phone_        in VARCHAR2,
        email_             in VARCHAR2,
        www_               in VARCHAR2,
        inn_               in VARCHAR2,
        reg_svid_          in VARCHAR2,
        kpp_               in VARCHAR2,
        okato_             in VARCHAR2,
        bank_              in VARCHAR2,
        agreement_         in VARCHAR2,
        advertisment_      in NUMBER,
--        ddate_             in DATE,
        block1_            in NUMBER,
        block2_            in NUMBER,
        flowers_           in NUMBER,
        plants_            in NUMBER,
        mark_              in NUMBER,
        ttype_             in NUMBER,
        id_clients_groups_ in NUMBER,
        corrector_         in VARCHAR2,
--        date_cor_          in             DATE,
        corrector_cor_     in VARCHAR2,
        duties_            in VARCHAR2,
        insurance_         in VARCHAR2,
        date_in_           in DATE,
        date_out_          in DATE,
        l_service_         in VARCHAR2,
        staff_             in NUMBER,
        active_            in NUMBER,
        login_             in VARCHAR2,
        info_              in VARCHAR2,
        reg_type_          in NUMBER,
        count_             in NUMBER,
        dostavka_          in NUMBER
   );

   --
   -- Удаление полной информации по сотруднику/клиенту
   --
   procedure remove_client_info
   (
        id_clients_      in  number,
        login_           in varchar
   );

   --
   -- Выбор всех отделов и проверка их для сотрудника/клиента (т.е. если отдел есть у сотрудника/клиента, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_depart_client_checked
   (
         id_       in  number,
         cursor_   out ref_cursor
   );
   --
   -- Добавление/Удаление отдела для сотрудника/клиента (если отдел есть у сотрудника/клиента то удаляем, иначе добавляем)
   --
   PROCEDURE change_depart_client
   (
        ID_EMPLOYEES_    in  number,
        ID_DEPARTMENTS_ in  number,
        STATUS_          in  number
   );

   --
   -- Выбор всех должностей и проверка их для сотрудника/клиента (т.е. если должность есть у сотрудника/клиента, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_job_titles_client_checked
   (
         id_      in  number,
         v_office in  number,
         cursor_  out ref_cursor
   );

   --
   -- Добавление/Удаление должности для сотрудника/клиента (если должность есть у сотрудника/клиента то удаляем, иначе добавляем)
   --
   PROCEDURE change_job_titles_client
   (
        ID_EMPLOYEES_    in  number,
        ID_JOB_TITLES_   in  number,
        STATUS_          in  number
   );

   --
   -- Запись групп
   --
   PROCEDURE save_groups
   (
       name_        in varchar2,
       info_        in varchar2,
       id_          in out number
   );

   --
   -- Удаляем группу
   --
   PROCEDURE remove_groups
   (
       id_          in number
   );

   --
   -- Запись числа для печати шрих-кодов
   --
   PROCEDURE change_client_count
   (
       id_clients_      in number,
       count_           in number
   );

   --
   -- Получение листа штрих-кодов
   --
   PROCEDURE get_bar_code_list
   (
       id_clients_      in number,
       cursor_          out ref_cursor
   );


--
-- Обнуляем стикеры
--
PROCEDURE remove_stiker;


--
-- Запись блокировки по кредиту
--
procedure save_block
(
   id_clients_    in NUMBER,
   block1_        in NUMBER
);


--
-- Меняем скидки
--
procedure save_client_sales
(
   ID_          in out NUMBER,
   id_client_   in number,
   id_dep_      in number,
   sale_        in number,
   sale_status_ in number,
   date1_       in date,
   date2_       in date,
   notime_      in number,
   persents_    in number
);



------- ПРОЦЫ ПО ДЕБЕТОРАМ -----------------------------------------------------



--
-- Меняем признак
--
procedure save_active
(
   ID_CLIENT_DEBT_    in NUMBER,
   active_            in NUMBER
);


--
-- помечаем \ снимаем пометку с дебитора
--
procedure save_mark
(
   id_debetor_    in NUMBER,
   mark_          in NUMBER
);


--
-- Получение скидок
--
PROCEDURE get_sales
(
    id_       in number,
    group_  in number,
    cursor_ out ref_cursor
);


--
-- Копирование скидок
--
PROCEDURE copy_sales
(
    id_       in number,
    id_cl_  in number,
    group_  in number
);


END; -- Package CLIENTS_PKG
/

-- Grants for Package
GRANT EXECUTE ON clients_pkg TO public
/
GRANT EXECUTE ON clients_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY clients_pkg
IS

   CNT_ number;

--
-- Выбор полной информации по сотруднику/клиенту
--
procedure get_client_info
(
        id_clients_      in  number,
        cursor_ out ref_cursor
)
IS
BEGIN

    OPEN cursor_ FOR
            SELECT C.id_clients, C.fio, C.nick, C.ccode, C.region, C.address,
                   C.u_address, C.phone, C.passport, C.contact, C.cont_phone,
                   C.email, C.www, C.inn, C.reg_svid, C.kpp, C.okato, C.bank,
                   C.agreement, C.advertisment, C.ddate, C.block1, C.block2,
                   C.flowers, C.plants, C.mark, C.ttype, C.id_clients_groups,
                   C.corrector, C.date_cor, C.corrector_cor, C.duties, C.insurance,
                   C.date_in, C.date_out, C.l_service, C.staff, C.active, C.login,
                   C.info, C.reg_type, C.count, C.dostavka,
                   case when c.id_office > 1 then o.OFFICE_NAME else CASE c.reg_type WHEN 0 THEN 'Старлайт' WHEN 1 THEN 'Старлайт Кэш & Керри' END end as reg_type_name,
                   G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT,
                   GET_DEPARTMENTS(C.id_clients) AS DEPART,
                   GET_JOB_TITLES(C.id_clients) AS JOB_TITLES
                   , o.brief
            FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o
            WHERE   C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS
                    AND C.TTYPE = T.ID_CLIENT_TYPES
                    AND C.ADVERTISMENT = A.ID_ADVERTISMENTS
                    AND C.REGION = R.ID_REGIONS
                    and c.id_office = o.ID_OFFICE
                    AND C.ID_CLIENTS = id_clients_;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_CLIENT_INFO', '');
           RAISE_APPLICATION_ERROR (-20401, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Выбор полной информации по всем сотрудникам/клиентам
--
procedure get_clients_list
(
    v_office in number,
    cursor_ out ref_cursor
)
IS
BEGIN

    OPEN cursor_ FOR
            SELECT C.id_clients, C.fio, C.nick, C.ccode, C.region, C.address,
                   C.u_address, C.phone, C.passport, C.contact, C.cont_phone,
                   C.email, C.www, C.inn, C.reg_svid, C.kpp, C.okato, C.bank,
                   C.agreement, C.advertisment, C.ddate, C.block1, C.block2,
                   C.flowers, C.plants, C.mark, C.ttype, C.id_clients_groups,
                   C.corrector, C.date_cor, C.corrector_cor, C.duties, C.insurance,
                   C.date_in, C.date_out, C.l_service, C.staff, C.active, C.login,
                   C.info, C.reg_type, C.count, C.dostavka,
                   case when c.id_office > 1 then o.OFFICE_NAME else CASE c.reg_type WHEN 0 THEN 'Старлайт' WHEN 1 THEN 'Старлайт Кэш & Керри' END end as reg_type_name,
                   G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT,
                   GET_DEPARTMENTS(C.id_clients) AS DEPART,
                   GET_JOB_TITLES(C.id_clients) AS JOB_TITLES
            FROM CLIENTS C, CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, BOOKS_REGIONS R, offices o
            WHERE   C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS
                    AND C.TTYPE = T.ID_CLIENT_TYPES
                    AND C.ADVERTISMENT = A.ID_ADVERTISMENTS
                    AND C.REGION = R.ID_REGIONS
                    and c.id_office = o.ID_OFFICE
                    and (c.ID_OFFICE in (1, v_office) or v_office = 0)
            ORDER BY C.fio;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_CLIENTS_LIST', '');
           RAISE_APPLICATION_ERROR (-20402, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Выбор скидок для сотрудника/клиента
--
procedure get_client_sales
(
        id_clients_      in  number,
        cursor_ out ref_cursor
)
IS
BEGIN
       open cursor_ for
            SELECT CSL.id_employees, CSL.id_departments, BD.NAME, CSL.sale, CSL.sale_status
                FROM CLIENTS_SALES CSL, BOOKS_DEPARTMENTS BD
                    WHERE CSL.id_departments = BD.id_departments AND CSL.id_employees = id_clients_
                    ;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_CLIENT_SALES', '');
           RAISE_APPLICATION_ERROR (-20403, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

--
-- Запись/изменение полной информации по сотруднику/клиенту
--
procedure save_client_info
(
        id_clients_       in  out NUMBER,
        fio_               in VARCHAR2,
        nick_              in VARCHAR2,
        ccode_             in VARCHAR2,
        region_            in NUMBER,
        address_           in VARCHAR2,
        u_address_         in VARCHAR2,
        phone_             in VARCHAR2,
        passport_          in VARCHAR2,
        contact_           in VARCHAR2,
        cont_phone_        in VARCHAR2,
        email_             in VARCHAR2,
        www_               in VARCHAR2,
        inn_               in VARCHAR2,
        reg_svid_          in VARCHAR2,
        kpp_               in VARCHAR2,
        okato_             in VARCHAR2,
        bank_              in VARCHAR2,
        agreement_         in VARCHAR2,
        advertisment_      in NUMBER,
--       ddate_             in DATE,
        block1_            in NUMBER,
        block2_            in NUMBER,
        flowers_           in NUMBER,
        plants_            in NUMBER,
        mark_              in NUMBER,
        ttype_             in NUMBER,
        id_clients_groups_ in NUMBER,
        corrector_         in VARCHAR2,
--        date_cor_          in             DATE,
        corrector_cor_     in VARCHAR2,
        duties_            in VARCHAR2,
        insurance_         in VARCHAR2,
        date_in_           in DATE,
        date_out_          in DATE,
        l_service_         in VARCHAR2,
        staff_             in NUMBER,
        active_            in NUMBER,
        login_             in VARCHAR2,
        info_              in VARCHAR2,
        reg_type_          in NUMBER,
        count_             in NUMBER,
        dostavka_          in NUMBER
)
IS
BEGIN

        if id_clients_ > 0 then
               update CLIENTS
               set
                   fio               =  fio_
                  ,nick              =  nick_
                  ,ccode             =  ccode_
                  ,region            =  region_
                  ,address           =  address_
                  ,u_address         =  u_address_
                  ,phone             =  phone_
                  ,passport          =  passport_
                  ,contact           =  contact_
                  ,cont_phone        =  cont_phone_
                  ,email             =  email_
                  ,www               =  www_
                  ,inn               =  inn_
                  ,reg_svid          =  reg_svid_
                  ,kpp               =  kpp_
                  ,okato             =  okato_
                  ,bank              =  bank_
                  ,agreement         =  nvl(UPPER(agreement_),'БЕЗ ДОГОВОРА')
                  ,advertisment      =  advertisment_
                  ,block1            =  nvl(block1_,0)
                  ,block2            =  nvl(block2_,0)
                  ,flowers           =  nvl(flowers_,0)
                  ,plants            =  nvl(plants_,0)
                  ,mark              =  nvl(mark_,0)
                  ,ttype             =  ttype_
                  ,id_clients_groups =  id_clients_groups_
                  ,date_cor          =  sysdate()
                  ,corrector_cor     =  corrector_cor_
                  ,duties            =  duties_
                  ,insurance         =  insurance_
                  ,date_in           =  date_in_
                  ,date_out          =  date_out_
                  ,l_service         =  l_service_
                  ,staff             =  nvl(staff_,0)
                  ,active            =  nvl(active_,0)
                  ,login             =  login_
                  ,info              =  info_
                  ,reg_type          =  nvl(reg_type_,1)
                  ,count             =  nvl(count_,0)
                  ,dostavka          =  dostavka_
                  ,DATE_CHANGE       =  sysdate
               where ID_CLIENTS = id_clients_;

        else
             INSERT INTO CLIENTS (id_clients, fio, nick, ccode, region, address,
                                  u_address, phone, passport, contact, cont_phone,
                                  email, www, inn, reg_svid, kpp, okato, bank,
                                  agreement, advertisment, ddate, block1, block2,
                                  flowers, plants, mark, ttype, id_clients_groups,
                                  corrector, date_cor, duties, insurance,
                                  date_in, date_out, l_service, staff, active, login,
                                  info, reg_type, count, dostavka, ID_OFFICE, DATE_CHANGE)
             VALUES(get_office_unique('CLIENTS_ID'),
                    fio_, nick_, ccode_, region_, address_,
                    u_address_, phone_, passport_, contact_, cont_phone_,
                    email_, www_, inn_, reg_svid_, kpp_, okato_, bank_,
                    nvl(UPPER(agreement_),'БЕЗ ДОГОВОРА'), advertisment_, sysdate(), nvl(block1_,0), nvl(block2_,0),
                    nvl(flowers_,0), nvl(plants_,0), nvl(mark_,0), ttype_, id_clients_groups_,
                    corrector_, sysdate(), duties_, insurance_,
                    date_in_, date_out_, l_service_, nvl(staff_,0), nvl(active_,0), login_,
                    info_, nvl(reg_type_,1), nvl(count_,0), dostavka_, CONST_OFFICE, sysdate)

            returning ID_CLIENTS into  id_clients_;
        end if;

        commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.SAVE_CLIENT_INFO', '');
           RAISE_APPLICATION_ERROR (-20404, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Удаление полной информации по сотруднику/клиенту
--
procedure remove_client_info
(
        id_clients_      in number,
        login_           in varchar

)
IS
    cnt_user number;
BEGIN
        cnt_user:=0;
        if id_clients_ > 0 then
            SELECT COUNT(*) INTO cnt_user FROM ALL_USERS WHERE USERNAME = login_;
            if cnt_user > 0 then
                EXECUTE IMMEDIATE ('DROP USER '||login_);
            end if;
            -- отделы
            DELETE FROM EMPLOYEES_DEPARTMENTS WHERE ID_EMPLOYEES = id_clients_;
            -- должности
            DELETE FROM EMPLOYEES_JOB_TITLES WHERE ID_EMPLOYEES = id_clients_;
            -- скидки
            DELETE FROM CLIENTS_SALES WHERE ID_EMPLOYEES = id_clients_; -- !!! Убрать S_CLIENTS.
            -- сам сотрудник/клиент
            DELETE FROM CLIENTS WHERE ID_CLIENTS = id_clients_;
        end if;

        commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.REMOVE_CLIENT_INFO', '');
           RAISE_APPLICATION_ERROR (-20405, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Выбор всех отделов и проверка их для сотрудника/клиента (т.е. если отдел есть у сотрудника/клиента, то статус CHECKED = 1 иначе 0)
--
PROCEDURE get_depart_client_checked
   (
         id_      in  number,
         cursor_  out ref_cursor
   )
IS
BEGIN
       OPEN cursor_ FOR
            SELECT BD.id_departments AS ID, BD.NAME, CASE WHEN D.id_departments IS NULL THEN 0 ELSE 1 END AS CHECKED
                FROM BOOKS_DEPARTMENTS BD
                    LEFT OUTER JOIN EMPLOYEES_DEPARTMENTS D ON D.id_departments=BD.id_departments AND D.ID_EMPLOYEES = id_
                    ORDER BY BD.NAME;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_DEPART_CLIENT_CHECKED', '');
           RAISE_APPLICATION_ERROR (-20406, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

--
-- Добавление/Удаление отдела для сотрудника/клиента (если отдел есть у сотрудника/клиента то удаляем, иначе добавляем)
--
PROCEDURE change_depart_client
(
    ID_EMPLOYEES_    in  number,
    ID_DEPARTMENTS_ in  number,
    STATUS_          in  number
)
IS
BEGIN

     SELECT COUNT(*) INTO CNT_ FROM EMPLOYEES_DEPARTMENTS WHERE  ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_DEPARTMENTS = ID_DEPARTMENTS_;

       IF CNT_>0 THEN
           IF STATUS_ = 0 THEN
               DELETE FROM EMPLOYEES_DEPARTMENTS WHERE  ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_DEPARTMENTS = ID_DEPARTMENTS_;
               COMMIT;
           END IF;
       ELSE
           IF STATUS_ = 1 THEN
               INSERT INTO EMPLOYEES_DEPARTMENTS VALUES(ID_EMPLOYEES_,ID_DEPARTMENTS_, CONST_OFFICE, sysdate);
               COMMIT;
           END IF;
       END IF;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.CHANGE_DEPART_CLIENT', '');
           RAISE_APPLICATION_ERROR (-20407, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

--
-- Выбор всех должностей и проверка их для сотрудника/клиента (т.е. если должность есть у сотрудника/клиента, то статус CHECKED = 1 иначе 0)
--
PROCEDURE get_job_titles_client_checked
   (
         id_      in  number,
         v_office in  number,
         cursor_  out ref_cursor
   )
IS
BEGIN
       OPEN cursor_ FOR
            SELECT BJT.ID_JOB_TITLES AS ID, BJT.NAME, CASE WHEN J.ID_JOB_TITLES IS NULL THEN 0 ELSE 1 END AS CHECKED
                FROM BOOKS_JOB_TITLES BJT
                    LEFT OUTER JOIN EMPLOYEES_JOB_TITLES J ON J.ID_JOB_TITLES=BJT.ID_JOB_TITLES AND J.ID_EMPLOYEES = id_
                where (bjt.ID_OFFICE in (1, v_office) or v_office = 0)
                ORDER BY BJT.NAME;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_JOB_TITLES_CLIENT_CHECKED', '');
           RAISE_APPLICATION_ERROR (-20408, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

--
-- Добавление/Удаление должности для сотрудника/клиента (если должность есть у сотрудника/клиента то удаляем, иначе добавляем)
--
PROCEDURE change_job_titles_client
(
    ID_EMPLOYEES_    in  number,
    ID_JOB_TITLES_   in  number,
    STATUS_          in  number
)
   IS
   BEGIN

     SELECT COUNT(*) INTO CNT_ FROM EMPLOYEES_JOB_TITLES WHERE  ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_JOB_TITLES = ID_JOB_TITLES_;

       IF CNT_>0 THEN
           IF STATUS_ = 0 THEN
               DELETE FROM EMPLOYEES_JOB_TITLES WHERE  ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_JOB_TITLES = ID_JOB_TITLES_;
               COMMIT;
           END IF;
       ELSE
           IF STATUS_ = 1 THEN
               INSERT INTO EMPLOYEES_JOB_TITLES VALUES(ID_EMPLOYEES_,ID_JOB_TITLES_, CONST_OFFICE, sysdate);
               COMMIT;
           END IF;
       END IF;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.CHANGE_JOB_TITLES_CLIENT', '');
           RAISE_APPLICATION_ERROR (-20409, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Запись групп
--
PROCEDURE save_groups
(
       name_        in varchar2,
       info_        in varchar2,
       id_          in out number
)
IS
BEGIN

         if id_ > 0 then

             select count(*) into cnt_ from CLIENTS_GROUPS where upper(NAME) = upper(name_) and ID_CLIENTS_GROUPS <> id_;

             if (cnt_ > 0) then
                     RAISE_APPLICATION_ERROR(-20410,'Указанная группа уже существует!');
             else
                   update CLIENTS_GROUPS set NAME = name_, info = info_, DATE_CHANGE = sysdate where ID_CLIENTS_GROUPS = id_;
             end if;
        else
             select count(*) into cnt_ from CLIENTS_GROUPS where upper(NAME) = upper(name_);
             if (cnt_ > 0) then
                     RAISE_APPLICATION_ERROR(-20411,'Указанная группа уже существует!');
             else
                 INSERT INTO CLIENTS_GROUPS VALUES(get_office_unique('clients_id_groups'), NAME_, INFO_, CONST_OFFICE, sysdate) returning ID_CLIENTS_GROUPS into id_;
             end if;
        end if;

        commit;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.SAVE_GROUPS', '');
           RAISE_APPLICATION_ERROR (-20412, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

--
-- Удаляем группу
--
PROCEDURE remove_groups
(
       id_          in number
)
IS
BEGIN
       if id_ > 0 then
            --select count(*) into cnt_ from CLIENTS where ID_CLIENTS_GROUPS = id_;
            select count(1)  into cnt_  from dual where exists (select 1 from CLIENTS where ID_CLIENTS_GROUPS = id_);
             if (cnt_ > 0) then
                     RAISE_APPLICATION_ERROR(-20413,'Группа используется у сотрудников/клиентов! Удалите группу у всех сотрудников/клиентов.');
             else
                   DELETE FROM CLIENTS_GROUPS WHERE ID_CLIENTS_GROUPS = id_;
             end if;
       end if;
       commit;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.REMOVE_GROUPS', '');
           RAISE_APPLICATION_ERROR (-20414, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Запись числа для печати шрих-кодов
--
PROCEDURE change_client_count
(
       id_clients_      in number,
       count_           in number
)
IS
BEGIN
       if id_clients_ > 0 then
            UPDATE CLIENTS SET COUNT = count_  WHERE ID_CLIENTS = id_clients_;
       end if;

       commit;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.CHANGE_CLIENT_COUNT', '');
           RAISE_APPLICATION_ERROR (-20415, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;

--
-- Получение листа штрих-кодов
--
PROCEDURE get_bar_code_list
(
       id_clients_      in number,
       cursor_          out ref_cursor
)
IS
   FIO_     varchar2(255);
   NICK_    varchar2(20);
   TTYPE_NAME_ varchar2(50);
   CCODE_ varchar2(13);
   COUNT_ number(2,0);
   I_     number(2,0);

   cursor lc_cursor is
        SELECT FIO, NICK, TTYPE_NAME, CCODE, COUNT FROM CLIENTS_VIEW2 WHERE COUNT>0 ORDER BY FIO;
BEGIN

       delete from CLIENTS_PRINT;
       if id_clients_ is null or id_clients_ <= 0 then
           open lc_cursor;
           loop
              fetch lc_cursor into FIO_,NICK_,TTYPE_NAME_,CCODE_,COUNT_;
              exit when lc_cursor%notfound;
                    I_:=0;
                    loop
                        I_:= I_+ 1;
                        INSERT INTO CLIENTS_PRINT VALUES(FIO_,NICK_,TTYPE_NAME_,CCODE_);
                        exit when I_ = COUNT_;
                    end loop;

           end loop;
           close lc_cursor;
       end if;

       commit;

       open cursor_ for
            select * from CLIENTS_PRINT;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.GET_BAR_CODE_LIST', '');
           RAISE_APPLICATION_ERROR (-20416, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;



--
-- Обнуляем стикеры
--
PROCEDURE remove_stiker
IS
BEGIN
   update clients set count = 0;
   commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.remove_stiker', '');
           RAISE_APPLICATION_ERROR (-20417, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END remove_stiker;




--
-- Запись блокировки по кредиту
--
procedure save_block
(
   id_clients_    in NUMBER,
   block1_        in NUMBER
)
IS
BEGIN

    if id_clients_ > 0 then
       update CLIENTS set block1  =  abs(block1_-1), DATE_CHANGE = sysdate
       where ID_CLIENTS = id_clients_;
     commit;
  end if;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.save_block', '');
           RAISE_APPLICATION_ERROR (-20418, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end save_block;



--
-- Меняем скидки
--
procedure save_client_sales
(
   ID_          in out NUMBER,
   id_client_   in number,
   id_dep_      in number,
   sale_        in number,
   sale_status_ in number,
   date1_       in date,
   date2_       in date,
   notime_      in number,
   persents_    in number
)
IS
BEGIN

    if ID_ > 0 then
       update CLIENTS_SALES set ID_DEPARTMENTS = id_dep_, sale = sale_, sale_status = sale_status_, date1 = date1_, date2 = date2_, notime = notime_, persents = persents_, DATE_CHANGE = sysdate
       where ID = ID_;
  else
       insert into CLIENTS_SALES values(id_client_, id_dep_, sale_, sale_status_, date1_, date2_, notime_, persents_, get_office_unique('CLIENT_SALES'), CONST_OFFICE, sysdate)
       returning id into id_;
  end if;
  commit;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.save_client_sales', '');
           RAISE_APPLICATION_ERROR (-20421, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end save_client_sales;




------- ПРОЦЫ ПО ДЕБЕТОРАМ -----------------------------------------------------



--
-- Меняем признак
--
procedure save_active
(
   ID_CLIENT_DEBT_    in NUMBER,
   active_            in NUMBER
)
IS
BEGIN

    if ID_CLIENT_DEBT_ > 0 then
       update CLIENT_DEBT set active =  active_, DATE_CHANGE = sysdate
       where ID_CLIENT_DEBT = ID_CLIENT_DEBT_;
     commit;
  end if;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.save_active', '');
           RAISE_APPLICATION_ERROR (-20419, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end save_active;



--
-- помечаем \ снимаем пометку с дебитора
--
procedure save_mark
(
   id_debetor_    in NUMBER,
   mark_          in NUMBER
)

IS
BEGIN

    if id_debetor_ > 0 then
       update debetors set mark  =  abs(mark_-1), DATE_CHANGE = sysdate
       where ID_DEBETORS = id_debetor_;
     commit;
  end if;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.save_mark', '');
           RAISE_APPLICATION_ERROR (-20420, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end save_mark;


--
-- Получение скидок
--
PROCEDURE get_sales
(
    id_       in number,
    group_  in number,
    cursor_ out ref_cursor
)
IS
begin

if (group_ = 0) then
  open cursor_ for
    SELECT a.id, a.id_employees, b.name, a.sale, a.sale_status, a.date1, a.ID_DEPARTMENTS,
         a.date2, a.notime, a.PERSENTS, c.nick, c.id_clients_groups
    FROM clients_sales a, BOOKS_DEPARTMENTS b, clients c
    where a.id_employees = id_ and
        a.id_departments = b.id_departments(+)
        and c.id_clients = a.id_employees
        ;
else
  open cursor_ for
    SELECT a.id, a.id_employees, b.name, a.sale, a.sale_status, a.date1, a.ID_DEPARTMENTS,
         a.date2, a.notime, a.PERSENTS, c.nick, c.id_clients_groups
    FROM clients_sales a, BOOKS_DEPARTMENTS b, clients c
    where --a.id_employees = :id and
        a.id_departments = b.id_departments(+)
        and c.id_clients = a.id_employees
        and c.id_clients_groups = group_
        ;
end if;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.get_sales', '');
           RAISE_APPLICATION_ERROR (-20421, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_sales;


--
-- Копирование скидок
--
PROCEDURE copy_sales
(
    id_       in number,
    id_cl_  in number,
    group_  in number
)
IS
   ii             number;
   idd_           number;
   id_departments_   number;
   sale_          number;
   sale_status_   number;
   notime_        number;
   persents_      number;
   date1_         date;
   date2_         date;

   cursor lc_cursor is
        SELECT a.id_clients FROM CLIENTS a WHERE a.id_clients_groups = group_ and a.id_clients <> id_cl_;
BEGIN
   select a.id_departments, a.sale, a.sale_status, a.date1, a.date2, a.notime, a.persents
   into id_departments_, sale_, sale_status_, date1_, date2_, notime_, persents_
   from clients_sales a where a.id = id_;
   ii := 0;

   open lc_cursor;
   loop
        fetch lc_cursor into idd_;
        exit when lc_cursor%notfound;

        begin
            insert into CLIENTS_SALES values(idd_, id_departments_, sale_, sale_status_, date1_, date2_, notime_, persents_, get_office_unique('CLIENT_SALES'), CONST_OFFICE, sysdate);

         EXCEPTION
            WHEN others THEN
               dbms_output.put_line('error='||idd_);
               NULL;
         end;

   end loop;
   close lc_cursor;
   commit;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'CLIENTS_PKG.copy_sales', '');
           RAISE_APPLICATION_ERROR (-20422, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end copy_sales;



END; -- CLIENTS_PKG
/

create or replace public synonym CLIENTS_PKG for creator.CLIENTS_PKG
/
-- End of DDL Script for Package Body CREATOR.CLIENTS_PKG

