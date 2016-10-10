-- Start of DDL Script for Package Body CREATOR.ADMINS
-- Generated 23.09.2016 0:36:11 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE admins
IS

   TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

   --
   -- Выбор программ
   --
   PROCEDURE get_programs
   (
       cursor_ out ref_cursor
   );

   --
   -- Выбор доступа к кассам
   --
   PROCEDURE get_cach
   (
       v_office in number,
       cursor_  out ref_cursor
   );

   --
   -- Выбор ролей
   --
   PROCEDURE get_role_group
   (
       v_office in number,
       cursor_ out ref_cursor
   );

   --
   -- Выбор программ для роли
   --
   PROCEDURE get_role_programs
   (
       role_    in  number,
       v_office in  number,
       cursor_  out ref_cursor
   );

   --
   -- Выбор групп для сотрудника
   --
   PROCEDURE get_role_user
   (
       role_    in  number,
       v_office in  number,
       cursor_  out ref_cursor
   );

   --
   -- Изменяем пароль
   --
   PROCEDURE change_pass
   (
       user_   in  varchar2,
       pass_   in  varchar2
   );

   --
   -- Добавляем доступ
   --
   PROCEDURE new_pass
   (
       user_   in  varchar2,
       pass_   in  varchar2,
       id_     in  number
   );

   --
   -- Убираем доступ
   --
   PROCEDURE remove_pass
   (
       user_   in  varchar2,
       id_     in  number
   );

   --
   -- Добавляем группу
   --
   PROCEDURE add_role
   (
       EMPL_ID_    in  number,
       GROUP_ID_   in  number
   );

   --
   -- Удаляем группу
   --
   PROCEDURE remove_role
   (
       EMPL_ID_    in  number,
       GROUP_ID_   in  number
   );

   --
   -- Запись ролей
   --
   PROCEDURE save_ROLE_GROUPS
   (
       name_        in varchar2,
       info_        in varchar2,
       id_dep_      in number,
       id_          in out number
   );

   --
   -- Запись программ
   --
   PROCEDURE save_PROGRAMS
   (
       name_        in varchar2,
       info_        in varchar2,
       dll_         in varchar2,
       id_          in out number
   );

   --
   -- удаление роли
   --
   PROCEDURE remove_role
   (
       id_          in number
   );

   --
   -- Запись программы для роли
   --
   PROCEDURE save_role_program
   (
       GROUP_ID_            in number,
       PROG_ID_           in number,
       CHECK1_              in number,
       CHECK2_              in number,
       CHECK3_              in number,
       CHECK4_              in number,
       CHECK5_              in number
   );

   --
   -- Удаляем Запись программы для роли
   --
   PROCEDURE remove_role_program
   (
       GROUP_ID_    in number,
       PROG_ID_     in number
   );

   --
   -- Удаляем программу
   --
   PROCEDURE remove_program
   (
       id_          in number
   );

   --
   -- Устанавливаем доступ в кассу
   --
   PROCEDURE set_cash
   (
       cash_        in number,
       id_client_   in number
   );

   --
   -- Удаляем доступ в кассу
   --
   PROCEDURE remove_cash
   (
       cash_        in number,
       id_client_   in number
   );

   --
   -- Добавление/Удаление кассы для сотрудника (если касса есть у юзера то удаляем, иначе добавляем)
   --
   PROCEDURE change_cash_user
   (
       ID_CLIENTS_     in  number,
       N_CASH_         in  number,
       STATUS_         in  number
   );

   --
   -- Добавление/Удаление группы для сотрудника (если роль есть у юзера то удаляем, иначе добавляем)
   --
   PROCEDURE change_role_user
   (
       ID_EMPLOYEES_   in  number,
       ID_ROLE_GROUPS_ in  number,
       STATUS_         in  number
   );

   --
   -- Выбор всех касс и проверка их для сотрудника (т.е. если касса есть у юзера, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_cash_user_checked
   (
       id_       in  number,
       cursor_   out ref_cursor
   );

   --
   -- Выбор всех групп и проверка их для сотрудника (т.е. если роль есть у юзера, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_role_user_checked
   (
       id_       in  number,
       cursor_   out ref_cursor
   );

   --
   -- Выбор отделов доступных пользователю
   --
   PROCEDURE get_deps_on_user
   (
       cursor_ out ref_cursor
   );


--
-- Выбор отделов доступных пользователю
--
PROCEDURE get_deps_on_user
(
   login_  in  varchar2,
   cursor_ in out ref_cursor
);


/*
Новые процедуры для 4-й версии
*/

--
-- Копирование всех доступов с одного пользователя на другого
--
PROCEDURE copy_role
(
  empl_from  in number,
  empl_to    in number
);


--
-- Выбор настроек для дебиторов
--
PROCEDURE get_debetors
(
   v_office in number,
   cursor_  out ref_cursor
);


--
--  Сохранение пользовательских настроек
--
procedure save_user_setting (
  p_key  in varchar2,
  p_val  in varchar2
);


--
--  Удаление всех пользовательских настроек
--
procedure clear_user_setting;


--
--  Получение всех пользовательских настроек
--
procedure get_user_setting (
  cursor_ out ref_cursor
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON admins TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY admins
IS

   cnt_ number;

   --
   -- Выбор программ
   --
   PROCEDURE get_programs
   (
       cursor_ out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            SELECT a.id_admin_programs, a.name, a.info, a.program_dll
            FROM admin_programs a
            order by upper(a.name);

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.get_programs', DBMS_UTILITY.format_error_backtrace);
           RAISE_APPLICATION_ERROR (-20100, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор доступа к кассам
   --
   PROCEDURE get_cach
   (
       v_office in number,
       cursor_  out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            SELECT a.N_CASH, a.ID_CLIENTS, b.FIO, b.LOGIN, b.NICK, b.id_office, o.brief
            FROM set_cash a, employees_view b, offices o
            WHERE a.id_clients = b.id_clients
                    and b.id_office = o.ID_OFFICE
                    and (b.ID_OFFICE = v_office or v_office = 0)
            order by a.n_cash;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.get_cach', DBMS_UTILITY.format_error_backtrace);
           RAISE_APPLICATION_ERROR (-20101, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор ролей
   --
   PROCEDURE get_role_group
   (
       v_office in number,
       cursor_ out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            SELECT a.id_role_groups, a.name, a.info, a.id_dep, b.NAME as dep_name, a.id_office, o.brief
            FROM admin_role_groups a, books_departments b, offices o
            where a.id_dep = b.ID_DEPARTMENTS(+)
                    and a.id_office = o.ID_OFFICE
                    and (a.ID_OFFICE = v_office or v_office = 0)
            order by upper(a.name)
            ;
   end;


   --
   -- Выбор программ для роли
   --
   PROCEDURE get_role_programs
   (
       role_    in  number,
       v_office in  number,
       cursor_  out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
             SELECT GP.id_programs, gp.id_role_groups, gp.c_start, gp.c_edit, gp.c_del, gp.c_addit, gp.c_print, P.NAME, gp.id_office, o.brief
             FROM ADMIN_PROGRAMS_ROLE_GROUPS GP, ADMIN_PROGRAMS P, offices o
             where ID_ROLE_GROUPS = role_ AND GP.ID_PROGRAMS = P.ID_ADMIN_PROGRAMS
                    and GP.id_office = o.ID_OFFICE
                    and (GP.ID_OFFICE = v_office or v_office = 0)
                    order by p.name
             ;

   end;


   --
   -- Выбор групп для сотрудника
   --
   PROCEDURE get_role_user
   (
       role_    in  number,
       v_office in  number,
       cursor_  out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            SELECT EG.id_employees, eg.id_role_groups, G.NAME, g.id_dep, a.NAME as dep_name, eg.id_office, o.brief
            FROM ADMIN_EMPLOYEES_ROLE_GROUPS EG, ADMIN_ROLE_GROUPS G, BOOKS_DEPARTMENTS a, offices o
            where EG.ID_EMPLOYEES = role_ and EG.ID_ROLE_GROUPS = G.ID_ROLE_GROUPS
                  and g.id_dep = a.ID_DEPARTMENTS(+)
                  and EG.id_office = o.ID_OFFICE
                  and (EG.ID_OFFICE = v_office or v_office = 0)
            order by g.name
            ;
   end;


   --
   -- Изменяем пароль
   --
   PROCEDURE change_pass
   (
         user_   in  varchar2,
         pass_   in  varchar2
   )
   IS
      sql_str     varchar2(255);
   BEGIN
      sql_str := 'ALTER USER "'|| user_ ||'" IDENTIFIED BY "'|| pass_ ||'"';
      EXECUTE immediate sql_str;
      commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.change_pass', sql_str);
           RAISE_APPLICATION_ERROR (-20102, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Добавляем доступ
   --
   PROCEDURE new_pass
   (
         user_   in  varchar2,
         pass_   in  varchar2,
         id_     in  number
   )
     is
     sql_str     varchar2(255);
     begin
         sql_str := 'CREATE USER "'|| user_ ||'" PROFILE "DEFAULT" IDENTIFIED BY "'|| pass_ ||'" DEFAULT TABLESPACE "USERS" ACCOUNT UNLOCK';
         EXECUTE immediate sql_str;

         sql_str := 'GRANT "NEW_ROLE" TO "'|| user_ ||'"';
         EXECUTE immediate sql_str;

         sql_str := 'UPDATE CLIENTS SET LOGIN = :p1, date_change=sysdate WHERE ID_CLIENTS=:p2';
         EXECUTE immediate sql_str using user_, id_;

         commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.new_pass', sql_str);
           RAISE_APPLICATION_ERROR (-20103, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Убираем доступ
   --
   PROCEDURE remove_pass
   (
         user_   in  varchar2,
         id_     in  number
   )
   is
     sql_str     varchar2(255);
   begin
      sql_str := 'DROP USER "'|| user_ ||'"';
      EXECUTE immediate sql_str;

      sql_str := 'UPDATE CLIENTS SET LOGIN = null, date_change=sysdate WHERE ID_CLIENTS=:p1';
      EXECUTE immediate sql_str using id_;

      commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_pass', sql_str);
           RAISE_APPLICATION_ERROR (-20104, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Добавляем группу
   --
   PROCEDURE add_role
   (
         EMPL_ID_    in  number,
         GROUP_ID_   in  number
   )
   is
        num_         number;
   begin

         SELECT count(*) into num_
         FROM ADMIN_EMPLOYEES_ROLE_GROUPS
         WHERE ID_EMPLOYEES = EMPL_ID_ AND ID_ROLE_GROUPS = GROUP_ID_;

         if (num_ > 0) then
                raise_application_error(-20105,'Указанная группа уже добавлена к сотруднику!');
         else
                INSERT INTO ADMIN_EMPLOYEES_ROLE_GROUPS VALUES(EMPL_ID_, GROUP_ID_, CONST_OFFICE, sysdate);
                commit;
         end if;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.add_role', DBMS_UTILITY.format_error_backtrace);
           RAISE_APPLICATION_ERROR (-20106, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
   end;


   --
   -- Удаляем группу
   --
   PROCEDURE remove_role
   (
         EMPL_ID_    in  number,
         GROUP_ID_   in  number
   )
   is
         num_         number;
   begin
        DELETE FROM ADMIN_EMPLOYEES_ROLE_GROUPS WHERE ID_EMPLOYEES = EMPL_ID_ AND ID_ROLE_GROUPS = GROUP_ID_;
        commit;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_role', DBMS_UTILITY.format_error_backtrace);
           RAISE_APPLICATION_ERROR (-20107, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
     end;


   --
   -- Запись ролей
   --
   PROCEDURE save_ROLE_GROUPS
   (
       name_        in varchar2,
       info_        in varchar2,
       id_dep_      in number,
       id_          in out number
   )
   IS
   BEGIN
       if id_ > 0 then
          update ADMIN_ROLE_GROUPS set NAME = name_, info = info_, ID_DEP=id_dep_, date_change = sysdate where ID_ROLE_GROUPS = id_;
       else
          INSERT INTO ADMIN_ROLE_GROUPS VALUES(get_office_unique('ADMIN_ID_ROLE_GROUPS'), NAME_, INFO_, id_dep_, CONST_OFFICE, sysdate) returning ID_ROLE_GROUPS into id_;
       end if;
       commit;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.save_ROLE_GROUPS', DBMS_UTILITY.format_error_backtrace);
           RAISE_APPLICATION_ERROR (-20108, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Запись программ
   --
   PROCEDURE save_PROGRAMS
   (
       name_        in varchar2,
       info_        in varchar2,
       dll_         in varchar2,
       id_          in out number
   )
   IS
   BEGIN

       if id_ > 0 then
          select count(*) into cnt_ from ADMIN_PROGRAMS where upper(NAME) = upper(name_) and ID_ADMIN_PROGRAMS <> id_;
          if (cnt_ > 0) then
              raise_application_error(-20109,'Указанная программа уже существует!');
          else
              update ADMIN_PROGRAMS set NAME = name_, info = info_, program_dll = dll_ where ID_ADMIN_PROGRAMS = id_;
          end if;
       else
          select count(*) into cnt_ from ADMIN_PROGRAMS where upper(NAME) = upper(name_);
          if (cnt_ > 0) then
              raise_application_error(-20110,'Указанная программа уже существует!');
          else
              INSERT INTO ADMIN_PROGRAMS VALUES(get_office_unique('ADMIN_ID_PROGRAMS'), NAME_, INFO_, dll_) returning ID_ADMIN_PROGRAMS into id_;
          end if;
       end if;
       commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.save_PROGRAMS', '');
           RAISE_APPLICATION_ERROR (-20111, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- удаление роли
   --
   PROCEDURE remove_role
   (
       id_          in number
   )
   IS
   BEGIN
         DELETE FROM ADMIN_ROLE_GROUPS WHERE ID_ROLE_GROUPS = id_;
         commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_role', '');
           RAISE_APPLICATION_ERROR (-20112, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Запись программы для роли
   --
   PROCEDURE save_role_program
   (
       GROUP_ID_            in number,
       PROG_ID_           in number,
       CHECK1_              in number,
       CHECK2_              in number,
       CHECK3_              in number,
       CHECK4_              in number,
       CHECK5_              in number
   )
   IS
   BEGIN

            UPDATE ADMIN_PROGRAMS_ROLE_GROUPS SET C_START = CHECK1_, C_EDIT = CHECK2_, C_DEL = CHECK3_, C_PRINT = CHECK4_, C_ADDIT = CHECK5_, DATE_CHANGE=sysdate
                   WHERE ID_ROLE_GROUPS = GROUP_ID_ AND ID_PROGRAMS = PROG_ID_;
            if (sql%notfound) then
               INSERT INTO ADMIN_PROGRAMS_ROLE_GROUPS VALUES(PROG_ID_, GROUP_ID_, CHECK1_, CHECK2_, CHECK3_, CHECK4_, CHECK5_, CONST_OFFICE, sysdate);
        end if;
            commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.save_role_program', '');
           RAISE_APPLICATION_ERROR (-20113, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Удаляем Запись программы для роли
   --
   PROCEDURE remove_role_program
   (
       GROUP_ID_            in number,
       PROG_ID_           in number
   )
   is
   begin

       DELETE FROM ADMIN_PROGRAMS_ROLE_GROUPS WHERE ID_ROLE_GROUPS = GROUP_ID_ AND ID_PROGRAMS = PROG_ID_;
       commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_role_program', '');
           RAISE_APPLICATION_ERROR (-20114, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Удаляем программу
   --
   PROCEDURE remove_program
   (
       id_          in number
   )
   is
   begin

       DELETE FROM ADMIN_PROGRAMS WHERE ID_ADMIN_PROGRAMS = id_;
       commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_program', '');
           RAISE_APPLICATION_ERROR (-20115, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Устанавливаем доступ в кассу
   --
   PROCEDURE set_cash
   (
       cash_       in number,
       id_client_  in number
   )
   is
   begin

         INSERT INTO SET_CASH VALUES(cash_,id_client_);
         commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.set_cash', '');
           RAISE_APPLICATION_ERROR (-20116, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Удаляем доступ в кассу
   --
   PROCEDURE remove_cash
   (
       cash_       in number,
       id_client_  in number
   )
   is
   begin

         DELETE FROM SET_CASH WHERE N_CASH=cash_ AND ID_CLIENTS=id_client_;
         commit;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.remove_cash', '');
           RAISE_APPLICATION_ERROR (-20117, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   end;


   --
   -- Добавление/Удаление кассы для сотрудника (если касса есть у юзера то удаляем, иначе добавляем)
   --
   PROCEDURE change_cash_user
   (
       ID_CLIENTS_     in  number,
       N_CASH_         in  number,
       STATUS_         in  number
   )
   IS
   BEGIN

       SELECT COUNT(*) INTO CNT_ FROM SET_CASH WHERE  ID_CLIENTS = ID_CLIENTS_ AND N_CASH = N_CASH_;

       IF CNT_>0 THEN
           IF STATUS_ = 0 THEN
               DELETE FROM SET_CASH WHERE ID_CLIENTS = ID_CLIENTS_ AND N_CASH = N_CASH_;
               COMMIT;
           END IF;
       ELSE
           IF STATUS_ = 1 THEN
               INSERT INTO SET_CASH VALUES(N_CASH_, ID_CLIENTS_);
               COMMIT;
           END IF;
       END IF;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.change_cash_user', '');
           RAISE_APPLICATION_ERROR (-20118, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Добавление/Удаление группы для сотрудника (если роль есть у юзера то удаляем, иначе добавляем)
   --
   PROCEDURE change_role_user
   (
       ID_EMPLOYEES_   in  number,
       ID_ROLE_GROUPS_ in  number,
       STATUS_         in  number
   )
   IS
   BEGIN

       SELECT COUNT(*) INTO CNT_ FROM ADMIN_EMPLOYEES_ROLE_GROUPS WHERE ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_ROLE_GROUPS = ID_ROLE_GROUPS_;

       IF CNT_>0 THEN
           IF STATUS_ = 0 THEN
               DELETE FROM ADMIN_EMPLOYEES_ROLE_GROUPS  WHERE ID_EMPLOYEES = ID_EMPLOYEES_ AND ID_ROLE_GROUPS = ID_ROLE_GROUPS_;
               COMMIT;
           END IF;
       ELSE
           IF STATUS_ = 1 THEN
               INSERT INTO ADMIN_EMPLOYEES_ROLE_GROUPS VALUES(ID_EMPLOYEES_, ID_ROLE_GROUPS_, CONST_OFFICE, sysdate);
               COMMIT;
           END IF;
       END IF;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'admins.change_role_user', '');
           RAISE_APPLICATION_ERROR (-20119, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор всех касс и проверка их для сотрудника (т.е. если касса есть у юзера, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_cash_user_checked
   (
       id_       in  number,
       cursor_   out ref_cursor
   )
   IS
   BEGIN
       OPEN cursor_ FOR
            SELECT C.N_CASH AS ID, C.NAME_CASH AS NAME, CASE WHEN SC.N_CASH IS NULL THEN 0 ELSE 1 END AS CHECKED
            FROM CASHES C
            LEFT OUTER JOIN  SET_CASH SC ON SC.N_CASH=C.N_CASH AND SC.ID_CLIENTS = id_
            ORDER BY C.NAME_CASH;
   END;


   --
   -- Выбор всех групп и проверка их для сотрудника (т.е. если роль есть у юзера, то статус CHECKED = 1 иначе 0)
   --
   PROCEDURE get_role_user_checked
   (
       id_       in  number,
       cursor_   out ref_cursor
   )
   IS
   BEGIN
       OPEN cursor_ FOR
            SELECT ARG.ID_ROLE_GROUPS AS ID, ARG.NAME, CASE WHEN ERG.ID_ROLE_GROUPS IS NULL THEN 0 ELSE 1 END AS CHECKED
            FROM ADMIN_ROLE_GROUPS ARG
            LEFT OUTER JOIN  ADMIN_EMPLOYEES_ROLE_GROUPS ERG ON ERG.ID_ROLE_GROUPS=ARG.ID_ROLE_GROUPS AND ERG.ID_EMPLOYEES = id_
            ORDER BY ARG.NAME;
   END;


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
           LOG_ERR(SQLERRM, SQLCODE, 'admins.get_deps_on_user', '');
           RAISE_APPLICATION_ERROR (-20120, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END get_deps_on_user;



--
-- Выбор отделов доступных пользователю
--
PROCEDURE get_deps_on_user
(
   login_  in  varchar2,
   cursor_ in out ref_cursor
)
IS
BEGIN

  open cursor_ for
             SELECT a.ID_DEPARTMENTS, a."NAME"
                    from books_departments a, EMPLOYEES_DEPARTMENTS b, CLIENTS c
                      where a.state=1 and a.ID_DEPARTMENTS = b.id_departments
                      and b.id_employees = c.id_clients and c.LOGIN = login_
                      and c.id_office = const_office
                    order by a."NAME";

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'admins.get_deps_on_user', '');
       RAISE_APPLICATION_ERROR (-20121, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END get_deps_on_user;









--
-- Копирование всех доступов с одного пользователя на другого
--
PROCEDURE copy_role
(
  empl_from  in number,
  empl_to    in number
)
is
  num_  number;
begin
  delete from ADMIN_EMPLOYEES_ROLE_GROUPS a where a.id_employees = empl_to;
  INSERT INTO ADMIN_EMPLOYEES_ROLE_GROUPS a (select empl_to, b.ID_ROLE_GROUPS, CONST_OFFICE, sysdate from ADMIN_EMPLOYEES_ROLE_GROUPS b where b.id_employees = empl_from);
  commit;
EXCEPTION
   WHEN others THEN
      LOG_ERR(SQLERRM, SQLCODE, 'admins.copy_role', DBMS_UTILITY.format_error_backtrace);
      RAISE_APPLICATION_ERROR (-20122, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
end;


--
-- Выбор настроек для дебиторов
--
PROCEDURE get_debetors
(
   v_office in number,
   cursor_  out ref_cursor
)
IS
BEGIN
   open cursor_ for
        SELECT count(*) as debetors, b.FIO, b.LOGIN, b.NICK, b.id_office, o.brief, b.id_clients
        FROM DEBETOR_PERMISSIONS a, employees_view b, offices o
        WHERE a.USER_ID = b.id_clients
                and b.id_office = o.ID_OFFICE
                and (b.ID_OFFICE = v_office or v_office = 0)
        group by b.FIO, b.LOGIN, b.NICK, b.id_office, o.brief, b.id_clients
        order by b.FIO;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'admins.get_debetors', DBMS_UTILITY.format_error_backtrace);
       RAISE_APPLICATION_ERROR (-20123, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;



  --
  --  Сохранение пользовательских настроек
  --
  procedure save_user_setting (
    p_key  in varchar2,
    p_val  in varchar2
  ) as
    cnt_ number(10);
  begin

    SELECT COUNT(*) INTO cnt_ FROM user_settings WHERE DB_USER = USER and stg_key = p_key;
    IF cnt_ = 0
      THEN INSERT INTO user_settings (DB_USER, stg_key, stg_value) VALUES(USER, p_key, p_val);
      ELSE UPDATE user_settings SET stg_value = p_val WHERE DB_USER = USER and stg_key = p_key;
    END IF;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.save_user_setting', '');
      RAISE_APPLICATION_ERROR (-20905, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END save_user_setting;


  --
  --  Удаление всех пользовательских настроек
  --
  procedure clear_user_setting
  as
  begin

    delete FROM user_settings WHERE DB_USER = USER;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.clear_user_setting', '');
      RAISE_APPLICATION_ERROR (-20906, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END clear_user_setting;


  --
  --  Получение всех пользовательских настроек
  --
  procedure get_user_setting (
    cursor_ out ref_cursor
  ) as
  begin

    open cursor_ for
      select db_user, stg_key, stg_value FROM user_settings WHERE DB_USER = USER;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.get_user_setting', '');
      RAISE_APPLICATION_ERROR (-20907, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END get_user_setting;



END; -- admins
-- End of DDL Script for Package Body CREATOR.STARTER
/


-- End of DDL Script for Package Body CREATOR.ADMINS

