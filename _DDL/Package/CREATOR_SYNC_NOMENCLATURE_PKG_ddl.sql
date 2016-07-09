-- Start of DDL Script for Package Body CREATOR.SYNC_NOMENCLATURE_PKG
-- Generated 09.07.2016 2:40:08 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE sync_nomenclature_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2016-07-08 */
/* Изменение: */
/* Для синхронизации по линкам */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS(
    v_link varchar2
);


--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE (
  v_res  in out varchar2
);


--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data(
  v_link  in varchar2
);

END;
/

-- Grants for Package
GRANT EXECUTE ON sync_nomenclature_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY sync_nomenclature_pkg
IS

-- логирование работы синхронизации
PROCEDURE ins_log
(
  ERR_MSG_   in varchar2,
  ERR_CODE_  in varchar2,
  USER_      in varchar2,
  SQL_STR_   in varchar2
)
IS
pragma autonomous_transaction;
BEGIN
  INSERT INTO sync_nomenclature_log (id, ERROR_MESSAGE, ERROR_CODE, RUN_TIME, RUN_USER, SQL_STR)
       VALUES (sys_guid, ERR_MSG_, ERR_CODE_, SYSDATE, USER_, SQL_STR_);
  commit;
END ins_log; -- Procedure



--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS (
    v_link varchar2
)
is
  pragma autonomous_transaction;
  dt date;
  v_code number;
  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
begin
  res_str := '';

  sql_str := 'INSERT INTO SYNC_FLOWER_TYPES@'||v_link||' ( select * from FLOWER_TYPES WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_flower_subtypes@'||v_link||' ( select * from flower_subtypes WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_FLOWER_NAMES@'||v_link||' ( select * from FLOWER_NAMES WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_flower_name_translations@'||v_link||' ( select * from flower_name_translations WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_colours@'||v_link||' ( select * from colours WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_countries@'||v_link||' ( select * from countries )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO SYNC_suppliers@'||v_link||' ( select * from suppliers WHERE id_office=1 )';
  execute immediate sql_str;
  sql_str := 'INSERT INTO sync_hol_specifications@'||v_link||' ( select * from hol_specifications )';
  execute immediate sql_str;

  commit;

  EXCEPTION
    WHEN OTHERS THEN
      res_str :=  res_str ||chr(10)||'Ошибка (нси) :: '||v_link;
      ins_log(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, user, sql_str);

end SYNC_ALL_DICTS;


--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE (
  v_res  in out varchar2
)
is
  pragma autonomous_transaction;
  TYPE names_table IS TABLE OF VARCHAR2(10);
  names names_table;

  dt date;
  v_code number;
  total integer;
  res_str varchar2(100);
  sql_str varchar2(1000);
begin
  dt      := sysdate;
  names   := names_table('samara', 'kazan', 'ufa', 'cherep', 'eburg');
  total   := names.count;
  res_str := '';
  FOR i IN 1 .. total LOOP
    begin
      sql_str := 'select 1 from dual@'||names(i);
      execute immediate sql_str;

      clear_tmp_data(names(i));
      SYNC_ALL_DICTS(names(i));

      sql_str := 'INSERT INTO SYNC_nomenclature@'||names(i)||' ( select * from nomenclature WHERE id_office=1 and DATE_CHANGE <= :p1)';
      execute immediate sql_str using dt;
      sql_str := 'INSERT INTO SYNC_nom_specifications@'||names(i)||' ( select * from nom_specifications WHERE id_office=1 and n_id in (select n_id from nomenclature WHERE id_office=1 and DATE_CHANGE <= :p1 ) )';
      execute immediate sql_str using dt;
      commit;

      sql_str := 'begin creator.sync_local_data.SYNC_ALL_DICTS@'||names(i)||'; end;';
      execute immediate sql_str;

      sql_str := 'begin creator.sync_local_data.SYNC_ALL_NOMENCLATURE@'||names(i)||'(0); end;';
      execute immediate sql_str;

      commit;
      --DBMS_SESSION.CLOSE_DATABASE_LINK(names(i));

    EXCEPTION
      WHEN OTHERS THEN
        res_str :=  res_str ||chr(10)||'Ошибка (номенклатура) :: '||names(i);
        ins_log(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, user, sql_str);
    end;
  end loop;
  v_res := res_str;
  ins_log('', 0, user, res_str);

end SYNC_ALL_NOMENCLATURE;



--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data (
  v_link  in varchar2
)
is
  pragma autonomous_transaction;

  res_str varchar2(100);
  sql_str varchar2(1000);
begin
  res_str := '';

  sql_str := 'delete from SYNC_FLOWER_TYPES@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_flower_subtypes@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_FLOWER_NAMES@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_flower_name_translations@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_colours@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_countries@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_suppliers@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from sync_hol_specifications@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from SYNC_nom_specifications@'||v_link;
  execute immediate sql_str;
  sql_str := 'delete from sync_nomenclature@'||v_link;
  execute immediate sql_str;

  commit;

  EXCEPTION
    WHEN OTHERS THEN
      res_str :=  res_str ||chr(10)||'Ошибка (очистка) :: '||v_link;
      ins_log(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, user, sql_str);

end clear_tmp_data;


END;
/

create public synonym sync_nomenclature_pkg for creator.sync_nomenclature_pkg
/
grant execute on sync_nomenclature_pkg to new_role
/

-- End of DDL Script for Package Body CREATOR.SYNC_NOMENCLATURE_PKG

