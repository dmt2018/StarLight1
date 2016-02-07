-- Start of DDL Script for Package Body CREATOR.NOMENCLATURE2_PKG
-- Generated 10.12.2011 20:55:12 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE nomenclature2_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Изменение: 2011-07-22 */
/* Для работы с таблицами номенклатуры товара */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


-- Добавление/редактирование перевода названия товара
PROCEDURE edit_rus_tovar_name
(
  IN_ID                 in out number
  , IN_F_NAME_RU        IN varchar2
  , IN_ID_DEPARTMENTS   IN number
  , out_code            in out number
  , out_errmsg          IN OUT varchar2
)
;


--Функция удаления названия
PROCEDURE delete_tovar_name
(
  IN_FN_ID      IN NUMBER
  , out_code    in out number
  , out_errmsg  IN OUT varchar2
)
;


-- Добавление/редактирование названия товара поставшика
PROCEDURE edit_eng_tovar_name
(
  IN_ID                 in out number
  , IN_F_NAME           IN varchar2
  , IN_ID_DEPARTMENTS   IN number
  , IN_FN_ID            in number
  , IN_CODENAME         IN varchar2
  , IN_REMARKS          IN varchar2
  , out_code            in out number
  , out_errmsg          IN OUT varchar2
)
;


--
-- Функция удаления перевода
--
PROCEDURE delete_tovar_name_eng
(
  IN_FNT_ID     IN NUMBER
  , out_errmsg  IN OUT varchar2
)
;


--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature
(
  dept_    in  number,
  v_office in  number,
  cursor_  out ref_cursor
)
;


--
-- Синхронизируем одну позицию
--
PROCEDURE sync_nomenclature_one
(
  p_n_id    in  number
);


--
-- Поиск названия
--
PROCEDURE search_name
(
  p_dept        in  number
  , p_hname     in varchar2
  , p_hcode     in varchar2
  , p_remaraks  in varchar2
  , cursor_  out ref_cursor
)
;

procedure append_hol_sub_type(
    v_hol_sub_type in varchar2
    , v_fst_id     in number
);


end;
/

-- Grants for Package
GRANT EXECUTE ON nomenclature2_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY nomenclature2_pkg
IS


-- Добавление/редактирование перевода названия товара
PROCEDURE edit_rus_tovar_name
(
  IN_ID                 in out number
  , IN_F_NAME_RU        IN varchar2
  , IN_ID_DEPARTMENTS   IN number
  , out_code            in out number
  , out_errmsg          IN OUT varchar2
)
IS
BEGIN
   out_code   := 0;
   out_errmsg := '';

  /*Проверяем нет ли такого названия уже в базе!*/
   if (IN_ID = 0) then
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM FLOWER_NAMES where upper(F_NAME_RU) = upper(IN_F_NAME_RU) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and id_office = const_office
      );
   else
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM FLOWER_NAMES where upper(F_NAME_RU) = upper(IN_F_NAME_RU) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and fn_id <> IN_ID and id_office = const_office
      );
   end if;

  /*Если нашли уже веденное значение сгенерируем сообщение*/
   IF tmp_cnt > 0 THEN
      out_errmsg := 'К сожалению, такое название уже есть в базе данных!';
      out_code   := 1;

      IF tmp_cnt = 1 THEN
         SELECT FN_ID INTO IN_ID FROM FLOWER_NAMES
            WHERE upper(F_NAME_RU) = upper(IN_F_NAME_RU)
                AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS
                and id_office = const_office
         ;
      END IF;
   else
      if (IN_ID = 0) then
          SELECT get_office_unique('FN_ID') INTO IN_ID FROM DUAL;
          tmp_sql    :=  'INSERT INTO FLOWER_NAMES (FN_ID, ID_DEPARTMENTS, F_NAME_RU) VALUES ('||IN_ID||', '||IN_ID_DEPARTMENTS||', '''||IN_F_NAME_RU||''')';
          INSERT INTO FLOWER_NAMES (FN_ID, ID_DEPARTMENTS, F_NAME_RU, id_office, date_change) VALUES (IN_ID, IN_ID_DEPARTMENTS, IN_F_NAME_RU, const_office, sysdate);
      else
          tmp_sql    :=  'update FLOWER_NAMES set F_NAME_RU='''||IN_F_NAME_RU||''' where fn_id='||in_id;
          update FLOWER_NAMES set F_NAME_RU = IN_F_NAME_RU, date_change=sysdate where FN_ID=IN_ID;
      end if;
      COMMIT;
   END IF;


EXCEPTION WHEN OTHERS THEN
      out_code   := -1;
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||DBMS_UTILITY.format_error_backtrace||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.edit_rus_tovar_name', tmp_sql);
END edit_rus_tovar_name;


--Функция удаления названия
PROCEDURE delete_tovar_name
(
  IN_FN_ID      IN NUMBER
  , out_code    in out number
  , out_errmsg  IN OUT varchar2
)
IS
BEGIN
   out_code   := 0;
   out_errmsg := '';

      SELECT COUNT(*) INTO tmp_cnt from dual where exists (
        SELECT 1 CNT FROM NOMENCLATURE WHERE FN_ID = IN_FN_ID
      );

      IF tmp_cnt > 0 THEN
        out_code   := 1;
        out_errmsg := 'Есть номенклатурные позиции, использующие данное название, удаление невозможно! Удалите или измените сперва номенклатуры';
      else
        SELECT COUNT(*) INTO tmp_cnt from dual where exists (
            SELECT 1 CNT FROM FLOWER_NAME_TRANSLATIONS WHERE FN_ID = IN_FN_ID
        );
        IF tmp_cnt > 0 THEN
            out_code   := 1;
            out_errmsg := 'Есть названия товара поставщика, использующие данное название, удаление невозможно! Удалите или измените сперва названия поставщика';
        else
            tmp_sql    :=  'DELETE FROM FLOWER_NAMES WHERE FN_ID = '||IN_FN_ID;
            DELETE FROM FLOWER_NAMES WHERE FN_ID = IN_FN_ID;
            COMMIT;
        end if;
      END IF;

EXCEPTION WHEN OTHERS THEN
      out_code   := -1;
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||DBMS_UTILITY.format_error_backtrace||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.delete_tovar_name', tmp_sql);
END delete_tovar_name;



-- Добавление/редактирование названия товара поставшика
PROCEDURE edit_eng_tovar_name
(
  IN_ID                 in out number
  , IN_F_NAME           IN varchar2
  , IN_ID_DEPARTMENTS   IN number
  , IN_FN_ID            in number
  , IN_CODENAME         IN varchar2
  , IN_REMARKS          IN varchar2
  , out_code            in out number
  , out_errmsg          IN OUT varchar2
)
IS
BEGIN
   out_code   := 0;
   out_errmsg := '';

  /*Проверяем нет ли такого названия уже в базе!*/
   if (IN_ID = 0) then
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM flower_name_translations
            where upper(F_NAME) = upper(IN_F_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and id_office = const_office
      );
   else
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM flower_name_translations
            where upper(F_NAME) = upper(IN_F_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and fnt_id <> IN_ID and id_office = const_office
      );
   end if;

  /*Если нашли уже веденное значение сгенерируем сообщение*/
   IF tmp_cnt > 0 THEN
      out_errmsg := 'К сожалению, такое название уже есть в базе данных!';
      out_code   := 1;

      IF tmp_cnt = 1 THEN
         SELECT FNT_ID INTO IN_ID FROM flower_name_translations
            WHERE upper(F_NAME) = upper(IN_F_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and id_office = const_office
         ;
      END IF;
   else
      if (IN_ID = 0) then
          SELECT get_office_unique('FNT_ID') INTO IN_ID FROM DUAL;

          tmp_sql    :=  'INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS,NAME_CODE,REMARKS) VALUES('||IN_FN_ID||','||IN_ID||','''||IN_F_NAME||''','||IN_ID_DEPARTMENTS||','''||IN_CODENAME||''','''||IN_REMARKS||''')';
          INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS,NAME_CODE,REMARKS, id_office, date_change)
            VALUES (IN_FN_ID,IN_ID,IN_F_NAME,IN_ID_DEPARTMENTS,IN_CODENAME,IN_REMARKS, const_office, SYSDATE);
      else
          tmp_sql    :=  'update FLOWER_NAME_TRANSLATIONS set F_NAME='''||IN_F_NAME||''', FN_ID='||IN_FN_ID||', NAME_CODE='''||IN_CODENAME||''', REMARKS='''||IN_REMARKS||''' where FNT_ID='||in_id;
          update FLOWER_NAME_TRANSLATIONS set F_NAME=IN_F_NAME, FN_ID=IN_FN_ID, NAME_CODE=IN_CODENAME, REMARKS=IN_REMARKS, date_change=sysdate where FNT_ID=IN_ID;
      end if;
      COMMIT;
   END IF;


EXCEPTION WHEN OTHERS THEN
      out_code   := -1;
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.edit_eng_tovar_name', tmp_sql);
END edit_eng_tovar_name;


--
-- Функция удаления перевода
--
PROCEDURE delete_tovar_name_eng
(
  IN_FNT_ID     IN NUMBER
  , out_errmsg  IN OUT varchar2
)
IS
BEGIN
   out_errmsg := '';

   tmp_sql := 'DELETE FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID='||IN_FNT_ID;
   DELETE FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID;
   COMMIT;

EXCEPTION  WHEN OTHERS THEN
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||DBMS_UTILITY.format_error_backtrace||chr(10) ||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.delete_tovar_name_eng', tmp_sql);
END delete_tovar_name_eng;



--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature
(
  dept_    in  number,
  v_office in  number,
  cursor_  out ref_cursor
)
IS
BEGIN
  tmp_sql := '';
  open cursor_ for
       SELECT /*+ NO_CPU_COSTING */ 0 as d_check, f_name, f_name_ru, f_sub_type, f_type, country, type_subtype,
              n_id, fn_id, ft_id, fst_id, s_id, c_id, col_id, h_code, h_name,
              to_char(code) as code, len, pack, vbn, hol_type, weight, s_name_ru, colour, is_photo,
              hol_marks, rus_marks, diameter, to_char(bar_code) as bar_code, cust_coef, REMARKS, photo,
              great_name_f, compiled_name_otdel, name_code
              , o.id_office, o.brief
       FROM nomenclature_mat_view a, offices o
       WHERE ID_DEPARTMENTS = dept_ and (o.id_office in (1,v_office) or v_office = 0)
        and a.id_office = o.id_office
       order by compiled_name_otdel;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.get_nomenclature', tmp_sql);
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
END;



--
-- Синхронизируем одну позицию
--
PROCEDURE sync_nomenclature_one
(
  p_n_id    in  number
)
IS
BEGIN

        update NOMENCLATURE_MAT_VIEW a set (
           a.compiled_name, a.full_name, a.f_name, a.f_name_ru,
           a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id,
           a.hol_sub_type, a.sub_weight, a.ht_id, a.fn_id, a.fst_id,
           a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.len,
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel, date_change
        )
        = (select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, b.sub_weight, b.ht_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code
          , b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else colour||'. ' end) || b.RUS_MARKS as compiled_name_otdel
          , sysdate
        from nomenclature_full_view b where b.n_id = a.N_ID) where a.n_id = p_n_id;
        commit;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.sync_nomenclature_one', '');
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );

end sync_nomenclature_one;


--
-- Поиск названия
--
PROCEDURE search_name
(
  p_dept        in  number
  , p_hname     in varchar2
  , p_hcode     in varchar2
  , p_remaraks  in varchar2
  , cursor_  out ref_cursor
)
IS
  v_fn_id   number;
BEGIN
  v_fn_id := -1;

  -- -1 = vid - необнаруженное соответствие
  -- 0 = vid - данные найдены точно
  -- 1 = vid - данные найдены но не в полном соотв.
  -- 2 = vid - данные найдены но с другими кодами и ремарками.

  -- 1. Если есть название и код но нет REMARKS
  if (p_remaraks is null or p_remaraks = '') then

     select count(1) into tmp_cnt
     from flower_name_translations a
     where a.id_departments = p_dept and lower(a.f_name) = lower(p_hname) and lower(a.name_code) = lower(p_hcode) and id_office = const_office
     ;

     if (tmp_cnt > 0) then
        -- 1.1. Ищем по названию и коду
         open cursor_ for
             select 0 vid, b.fn_id, b.F_NAME_RU, a.NAME_CODE, a.F_NAME, a.REMARKS
             from flower_name_translations a, flower_names b
             where a.id_departments = p_dept and a.fn_id = b.fn_id and lower(a.f_name) = lower(p_hname) and lower(a.name_code) = lower(p_hcode) and a.id_office = const_office
             ;
     else
        -- 1.2. Ищем по названию
         select count(1) into tmp_cnt
         from flower_name_translations a
         where a.id_departments = p_dept and lower(a.f_name) = lower(p_hname) and id_office = const_office
         ;

         if (tmp_cnt > 0) then
             open cursor_ for
                 select case when (a.NAME_CODE <> p_hcode and a.NAME_CODE is not null and p_hcode is null) then 1
                        else case when (a.NAME_CODE <> p_hcode and p_hcode is not null) then 2 else -1 end end vid
                    , b.fn_id, b.F_NAME_RU, a.NAME_CODE, a.F_NAME, a.REMARKS
                 from flower_name_translations a, flower_names b
                 where a.id_departments = p_dept and a.fn_id = b.fn_id and lower(a.f_name) = lower(p_hname) and a.id_office = const_office
                 ;
         else
        -- 1.3. Вернем пустышку
             open cursor_ for
                 select -1 vid, -1 as fn_id, null as F_NAME_RU, null as NAME_CODE, null as F_NAME, null as REMARKS from dual;
         end if;

     end if;

  -- 2. Если есть название и REMARKS
  else
     select count(1) into tmp_cnt
     from flower_name_translations a
     where a.id_departments = p_dept and lower(a.f_name) = lower(p_hname) and lower(a.REMARKS) = lower(p_remaraks) and id_office = const_office
     ;

     if (tmp_cnt > 0) then
        -- 2.1. Ищем по названию и ремарксу
         open cursor_ for
             select 0 vid, b.fn_id, b.F_NAME_RU, a.NAME_CODE, a.F_NAME, a.REMARKS
             from flower_name_translations a, flower_names b
             where a.id_departments = p_dept and a.fn_id = b.fn_id and lower(a.f_name) = lower(p_hname) and lower(a.REMARKS) = lower(p_remaraks) and a.id_office = const_office
             ;

     else
        -- 2.2. Ищем по названию
         select count(1) into tmp_cnt
         from flower_name_translations a
         where a.id_departments = p_dept and lower(a.f_name) = lower(p_hname) and id_office = const_office
         ;

         if (tmp_cnt > 0) then
             open cursor_ for
                 select case when (a.REMARKS is null and p_remaraks is not null) or (a.REMARKS is not null and p_remaraks is null) then 1
                    else case when (a.REMARKS <> p_remaraks) then 2 else -1 end end vid
                    , b.fn_id, b.F_NAME_RU, a.NAME_CODE, a.F_NAME, a.REMARKS
                 from flower_name_translations a, flower_names b
                 where a.id_departments = p_dept and a.fn_id = b.fn_id and lower(a.f_name) = lower(p_hname) and a.id_office = const_office
                 ;
         else
        -- 2.3. Вернем пустышку
             open cursor_ for
                 select -1 vid, -1 as fn_id, null as F_NAME_RU, null as NAME_CODE, null as F_NAME, null as REMARKS from dual;
         end if;

     end if;

  end if;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.sync_nomenclature_one', '');
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
end;


procedure append_hol_sub_type(
    v_hol_sub_type in varchar2
    , v_fst_id     in number
)
is
begin
  tmp_cnt := 0;
  select count(1) into tmp_cnt from flower_subtypes
  where (UPPER(HOL_SUB_TYPE) like UPPER('%'||v_hol_sub_type||',%') or UPPER(HOL_SUB_TYPE) = UPPER(v_hol_sub_type)) and fst_id = v_fst_id and id_office = const_office;

  if tmp_cnt = 0 then
    update flower_subtypes set HOL_SUB_TYPE=HOL_SUB_TYPE||v_hol_sub_type||',', date_change = sysdate
    where fst_id = v_fst_id;
  end if;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.sync_nomenclature_one', '');
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
end;

END;
/

create or replace public synonym nomenclature2_pkg for creator.nomenclature2_pkg
/
-- End of DDL Script for Package Body CREATOR.NOMENCLATURE2_PKG

