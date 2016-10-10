-- Start of DDL Script for Package Body CREATOR.DICTS
-- Generated 06.10.2016 0:12:34 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE dicts
IS

   TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

   --
   -- Выбор курсов
   --
   PROCEDURE get_curses
   (
       v_office in number,
       cursor_ out ref_cursor
   );

   --
   -- Выбор курсов в новой программе
   --
   PROCEDURE list_of_curses
   (
     v_office     in number,
     date_begin   in date,
     date_end     in date,
     cursor_      out ref_cursor
   );

   --
   -- Запись курсов
   --
   PROCEDURE save_curses
   (
         date_   in out date,
             USD_        in number,
             EUR_        in number,
             USD_EUR_ in number,
             EUR_USD_ in number,
             SHEV_USD_       in number,
             SHEV_EUR_       in number,
             SHEV_USD_EUR_ in number,
             SHEV_EUR_USD_ in number
   );

   --
   -- Удаление курсов
   --
   PROCEDURE delete_curses
   (
         date_   in date
   );


   --
   -- Добыча курса на дату
   --
   PROCEDURE get_curse
   (
         ddate_      in date,
       cursor_   out ref_cursor
   );


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON dicts TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY dicts
IS

--
-- Выбор курсов
--
PROCEDURE get_curses
(
   v_office     in number,
   cursor_      out ref_cursor
)
IS
BEGIN
  open cursor_ for
       SELECT a.*, o.BRIEF FROM CURRENCY a, offices o
       where (a.ID_OFFICE = v_office or v_office = 0)
          and a.id_office = o.id_office
       ORDER BY DDATE DESC;
END;


--
-- Выбор курсов в новой программе
--
PROCEDURE list_of_curses
(
   v_office     in number,
   date_begin   in date,
   date_end     in date,
   cursor_      out ref_cursor
)
IS
BEGIN
  open cursor_ for
       SELECT a.*, o.BRIEF FROM CURRENCY a, offices o
       where (a.ID_OFFICE = v_office or v_office = 0)
          and a.id_office = o.id_office
          and a.ddate >= date_begin and a.ddate <= date_end
       ORDER BY DDATE DESC;
END;


--
-- Запись курсов
--
PROCEDURE save_curses
(
   date_   in out date,
   USD_        in number,
   EUR_        in number,
   USD_EUR_ in number,
   EUR_USD_ in number,
   SHEV_USD_       in number,
   SHEV_EUR_       in number,
   SHEV_USD_EUR_ in number,
   SHEV_EUR_USD_ in number
)
is
begin
   update CURRENCY set USD = USD_, EUR = EUR_, USD_EUR = USD_EUR_, EUR_USD = EUR_USD_,
                       SHEV_USD = SHEV_USD_, SHEV_EUR = SHEV_EUR_, SHEV_USD_EUR = SHEV_USD_EUR_, SHEV_EUR_USD = SHEV_EUR_USD_
                       , DATE_CHANGE=sysdate
   where ddate = date_ and id_office = const_office;

   if sql%notfound then
      insert into CURRENCY VALUES(date_,USD_,EUR_,USD_EUR_,EUR_USD_,SHEV_USD_,SHEV_EUR_,SHEV_USD_EUR_,SHEV_EUR_USD_, CONST_OFFICE, sysdate, get_office_unique('seq_courses')) returning ddate into date_;
   end if;

  commit;

EXCEPTION
  WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'dicts.save_curses', '');
           RAISE_APPLICATION_ERROR (-20070, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
end;


--
-- Удаление курсов
--
PROCEDURE delete_curses
(
   date_   in date
)
is
begin

  delete from CURRENCY where ddate = date_ and ID_OFFICE = CONST_OFFICE;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'dicts.delete_curses', '');
       RAISE_APPLICATION_ERROR (-20071, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
end;


--
-- Добыча курса на дату
--
PROCEDURE get_curse
(
   ddate_      in date,
   cursor_   out ref_cursor
)
is
begin
   open cursor_ for
        SELECT DDATE,EUR,EUR_USD,SHEV_EUR,SHEV_EUR_USD,SHEV_USD,SHEV_USD_EUR,USD,USD_EUR
        FROM (
            SELECT DDATE, EUR, EUR_USD, SHEV_EUR, SHEV_EUR_USD, SHEV_USD, SHEV_USD_EUR, USD, USD_EUR
            FROM CURRENCY
            where ddate <= ddate_ and ID_OFFICE = CONST_OFFICE
            ORDER BY DDATE DESC
        )
        WHERE ROWNUM =1;
end;

END;
/


-- End of DDL Script for Package Body CREATOR.DICTS

