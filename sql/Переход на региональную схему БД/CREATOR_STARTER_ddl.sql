-- Start of DDL Script for Package Body CREATOR.STARTER
-- Generated 10.12.2011 20:57:26 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE starter
IS

   TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

     --
   -- Выбор привелегий
   --
   PROCEDURE get_rules
   (
       login_  in varchar2,
       id_dep_ in number,
       cursor_ out ref_cursor
   );


     --
   -- Выбор программ
   --
   PROCEDURE get_programs
   (
       login_  in varchar2,
       cursor_ out ref_cursor
   );



     --
   -- Выбор привелегий для программы
   --
   PROCEDURE get_program_rules
   (
       login_        in varchar2,
       id_program_   in number,
       cursor_       out ref_cursor
   );


     --
   -- Выбор названия для программы
   --
   PROCEDURE get_program_dll
   (
       id_program_        in number,
       cursor_            out ref_cursor
   );

END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON starter TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY starter
IS
   --
   -- Выбор привелегий
   --
   PROCEDURE get_rules
   (
       login_  in varchar2,
       id_dep_ in number,
       cursor_ out ref_cursor
   )
   IS
        v_clients number;
   BEGIN

        select id_clients into v_clients from CLIENTS where login = login_ and active = 1 and id_office = const_office;

       open cursor_ for
            select a.id_programs, max(a.c_start) c_start, max(a.c_edit) c_edit, max(a.c_del) c_del, max(a.c_print) c_print, max(a.c_addit) c_addit
            from ADMIN_PROGRAMS_ROLE_GROUPS a, ADMIN_EMPLOYEES_ROLE_GROUPS b, admin_role_groups d
            where a.id_role_groups = b.id_role_groups and b.id_employees = v_clients
                  and a.id_role_groups = d.id_role_groups and d.id_dep =id_dep_
                  group by a.id_programs

            union all

            select a.id_programs, max(a.c_start) c_start, max(a.c_edit) c_edit, max(a.c_del) c_del, max(a.c_print) c_print, max(a.c_addit) c_addit
            from ADMIN_PROGRAMS_ROLE_GROUPS a, ADMIN_EMPLOYEES_ROLE_GROUPS b, admin_role_groups d
            where a.id_role_groups = b.id_role_groups and b.id_employees = v_clients
                  and a.id_role_groups = d.id_role_groups and nvl(d.id_dep,0) = 0
                  and a.id_programs not in (
                        select y.id_programs
                            from ADMIN_PROGRAMS_ROLE_GROUPS y, admin_role_groups z, ADMIN_EMPLOYEES_ROLE_GROUPS x
                            where y.id_role_groups = z.id_role_groups and z.id_dep = id_dep_ and y.id_role_groups = x.id_role_groups and x.id_employees = v_clients
                  )
            group by a.id_programs
            ;

   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'STARTER.get_rules', '');
           RAISE_APPLICATION_ERROR (-20050, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор программ
   --
   PROCEDURE get_programs
   (
       login_  in varchar2,
       cursor_ out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            select a.id_programs
            from ADMIN_PROGRAMS_ROLE_GROUPS a, ADMIN_EMPLOYEES_ROLE_GROUPS b, CLIENTS c
            where a.id_role_groups = b.id_role_groups and b.id_employees = c.id_clients
                and c.login = login_ and c.active = 1
                and a.c_start = 1
            group by a.id_programs
            ;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'STARTER.get_programs', '');
           RAISE_APPLICATION_ERROR (-20051, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор привелегий для программы
   --
   PROCEDURE get_program_rules
   (
       login_        in varchar2,
       id_program_   in number,
       cursor_       out ref_cursor
   )
   IS
   BEGIN
       open cursor_ for
            select a.id_programs, max(a.c_start) c_start, max(a.c_edit) c_edit, max(a.c_del) c_del, max(a.c_print) c_print, max(a.c_addit) c_addit
            from ADMIN_PROGRAMS_ROLE_GROUPS a, ADMIN_EMPLOYEES_ROLE_GROUPS b, CLIENTS c
            where a.id_role_groups = b.id_role_groups and b.id_employees = c.id_clients
                  and c.login = login_ and c.active = 1 and a.id_programs = id_program_
            group by a.id_programs
            ;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'STARTER.get_program_rules', '');
           RAISE_APPLICATION_ERROR (-20052, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
   END;


   --
   -- Выбор названия для программы
   --
   PROCEDURE get_program_dll
   (
       id_program_        in number,
       cursor_              out ref_cursor
   )
   IS

   BEGIN
       open cursor_ for
            select program_dll from admin_programs where id_admin_programs = id_program_
            ;
   EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'STARTER.get_program_dll', '');
           RAISE_APPLICATION_ERROR (-20053, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
     end;


END; -- STARTER
/

create or replace public synonym starter for creator.starter
/
-- End of DDL Script for Package Body CREATOR.STARTER

