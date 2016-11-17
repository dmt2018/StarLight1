-- Start of DDL Script for Package Body CREATOR.NOMENCLATURE2_PKG
-- Generated 17-ноя-2016 18:38:06 from CREATOR@ORCL

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
-- Выбор номенклатуры для импорта с заказов
--
PROCEDURE get_nomenclature_for_order
(
  dept_    in  number,
  n_id_    in  number,
  vUser    in  varchar2,
  vSuplier in  number,
  cursor_  out ref_cursor
);


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


-- Выбор одинаковых штрих-кодов поставщика в разных номенклатурах
procedure checkBarCodes(
    v_dep_id     in number
  , cursor_  out ref_cursor
);


--
-- Выбор названий с латинскими названиями
--
PROCEDURE  select_name_with_translation (
   dep_      in number,
   fn_id_    in number,
   cursor_   in out ref_cursor
);


--
-- Выбор дубликатов артикулов
--
PROCEDURE  select_dublicate_hcode (
   dep_      in number,
   cursor_   in out ref_cursor
);

--
-- Выбор дубликатов штрих-кодов
--
PROCEDURE  select_dublicate_barcode (
   dep_      in number,
   cursor_   in out ref_cursor
);


--
-- Изменение штрих-кода поставщика
--
PROCEDURE  change_barcode (
   p_bar_code  in varchar,
   p_n_id      in number
);


--
-- Изменим данные поставщика по инвойсу
--
PROCEDURE  change_nom_by_invoice (
   p_hol_name  in varchar,
--   p_remark    in varchar,
--   p_color     in varchar,
--   vd2         in varchar,
   p_n_id      in number
);



--
-- Выбираем данные для веба
--
PROCEDURE  select_store_for_web (
   qDays      in number,
   cursor_    in out ref_cursor
);


--
-- Генерируем артикул товара
--
PROCEDURE  gen_h_code (
   v_n_id      in number,
   v_id_dep    in number
);


--
-- Изменяем активность номенклатуры по поставщику
--
PROCEDURE set_active_noms_by_suplier (
   v_s_id      in number,
   v_id_dep    in number
);

--
-- Изменяем активность номенклатуры на сайте
--
PROCEDURE set_nomenclature_site_marks (
   v_n_id             in number,
   v_REMOVE_FROM_SITE in number,
   v_NO_ORDER         in number
);


--
-- Изменяем признака новинки номенклатуры
--
PROCEDURE claer_NEW_mark (
   v_id_dep      in number
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
   vF_NAME  varchar2(256);
BEGIN
   out_code   := 0;
   out_errmsg := '';

   vF_NAME := REPLACE(IN_F_NAME,'''','`');

  /*Проверяем нет ли такого названия уже в базе!*/
   if (IN_ID = 0) then
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM flower_name_translations
            where upper(F_NAME) = upper(vF_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and id_office = const_office
      );
   else
      SELECT COUNT(1) INTO tmp_cnt from dual where exists (
            SELECT 1 FROM flower_name_translations
            where upper(F_NAME) = upper(vF_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and fnt_id <> IN_ID and id_office = const_office
      );
   end if;

  /*Если нашли уже веденное значение сгенерируем сообщение*/
   IF tmp_cnt > 0 THEN
      out_errmsg := 'К сожалению, такое название уже есть в базе данных!';
      out_code   := 1;

      IF tmp_cnt = 1 THEN
         SELECT FNT_ID INTO IN_ID FROM flower_name_translations
            WHERE upper(F_NAME) = upper(vF_NAME) and upper(remarks) = upper(IN_REMARKS) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS and id_office = const_office
         ;
      END IF;
   else
--      update flower_name_translations set DEFAULT_TRANSLATION = 0 where FN_ID = IN_FN_ID;
-- Запишем код англ. названия на русское название
      if (IN_ID = 0) then
          SELECT get_office_unique('FNT_ID') INTO IN_ID FROM DUAL;

          tmp_sql    :=  'INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS,NAME_CODE,REMARKS) VALUES('||IN_FN_ID||','||IN_ID||','''||vF_NAME||''','||IN_ID_DEPARTMENTS||','''||IN_CODENAME||''','''||IN_REMARKS||''')';
          INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS,NAME_CODE,REMARKS, id_office, date_change, default_translation)
            VALUES (IN_FN_ID,IN_ID,vF_NAME,IN_ID_DEPARTMENTS,IN_CODENAME,IN_REMARKS, const_office, SYSDATE, 0);
      else
          tmp_sql    :=  'update FLOWER_NAME_TRANSLATIONS set F_NAME='''||vF_NAME||''', FN_ID='||IN_FN_ID||', NAME_CODE='''||IN_CODENAME||''', REMARKS='''||IN_REMARKS||''' where FNT_ID='||in_id;
          update FLOWER_NAME_TRANSLATIONS set F_NAME=vF_NAME, FN_ID=IN_FN_ID, NAME_CODE=IN_CODENAME, REMARKS=IN_REMARKS, date_change=sysdate, default_translation=0 where FNT_ID=IN_ID;
      end if;
      update FLOWER_NAMES z set z.NAME_CODE = IN_CODENAME where FN_ID=IN_FN_ID;
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
  vFNID  number;
BEGIN
   out_errmsg := '';
   select FN_ID into vFNID from FLOWER_NAME_TRANSLATIONS where FNT_ID = IN_FNT_ID;

   tmp_sql := 'DELETE FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID='||IN_FNT_ID;
   DELETE FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID;
--    update flower_name_translations set DEFAULT_TRANSLATION = 0 where FN_ID = vFNID;
--    update flower_name_translations set DEFAULT_TRANSLATION = 1 where date_change = (select max(date_change) from flower_name_translations where FN_ID = vFNID) and FN_ID = vFNID;

      update FLOWER_NAMES z set z.NAME_CODE = (
            select NAME_CODE from flower_name_translations a
            where a.date_change = (select max(date_change) from flower_name_translations where FN_ID = vFNID)
        )
      where FN_ID = vFNID;

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
       SELECT 0 as d_check, f_name, f_name_ru, f_sub_type, f_type, country, type_subtype,
              a.n_id, fn_id, ft_id, fst_id, s_id, c_id, col_id, h_code, h_name, ht_id,
              to_char(code) as code, len, pack, vbn, hol_type, weight, weightdry, s_name_ru, colour, is_photo,
              hol_marks, rus_marks, diameter, to_char(bar_code) as bar_code, cust_coef, REMARKS, photo,
              great_name_f, compiled_name_otdel, name_code, a.noprint, a.notuse, a.namecode, a.tnved, a.hol_pack
              , a.nom_new, a.nom_start, a.nom_end
              , o.id_office, o.brief
              , nvl(i.CHECKED,1) as CHECKED
              , a.hol_color
              , c.hs_val
              , u.nsi_name
              , nvl(a1.REMOVE_FROM_SITE,0) as REMOVE_FROM_SITE
              , no_order
       FROM nomenclature_mat_view a
         left outer join import_flowers_kov i
            on i.NOM_CODE = a.code
         left outer join offices o
            on o.id_office = a.id_office
         left outer join nom_specifications c
            on c.n_id = a.n_id and c.hs_id = const_8march
         left outer join nsi_units u
            on u.nsi_units_id = a.vbn
         left outer JOIN nomenclature_site_marks a1
           on a1.n_id = a.n_id
       WHERE ID_DEPARTMENTS = dept_ and (o.id_office in (1,v_office) or v_office = 0)
       order by compiled_name_otdel;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.get_nomenclature', tmp_sql);
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
END;



--
-- Выбор номенклатуры для импорта с заказов
--
PROCEDURE get_nomenclature_for_order
(
  dept_    in  number,
  n_id_    in  number,
  vUser    in  varchar2,
  vSuplier in  number,
  cursor_  out ref_cursor
)
IS
BEGIN
  tmp_sql := '';
  open cursor_ for
       SELECT 0 as d_check, a.f_name, a.f_name_ru, a.f_sub_type, a.f_type, a.country, a.type_subtype,
              a.n_id, a.fn_id, a.ft_id, a.fst_id, a.s_id, a.c_id, a.col_id, a.h_code, a.h_name,
              to_char(a.code) as code, a.len, a.pack, a.vbn, a.hol_type, a.weight, a.weightdry, a.s_name_ru, a.colour, a.is_photo,
              a.hol_marks, a.rus_marks, a.diameter, to_char(a.bar_code) as bar_code, a.cust_coef, a.REMARKS, a.photo,
              a.great_name_f, a.compiled_name_otdel, a.name_code, a.ID_DEPARTMENTS, a.ht_id, a.tnved, a.notuse
              , a.nom_new, a.nom_start, a.nom_end, o.id_office, o.brief
              , t.ID, t.KOD, t.CODE as in_code, t.FLOW, t.TITLE, t.HFL, t.COL, t.unit, t.box, t.GROEP, t.GR, t.gtd, t.mark, t.spec, t.KLEUR
              , t.titlen, t.base, t.baseru, t.s20, t.s22, t.s25, t.vd2, t.REMARK, t.COUNTRY as in_country, t.HFL*t.COL as total
              , nvl(t.volume,0) as volume, nvl(t.voldry,0) as voldry
              , case when a.n_id is null then 0 else 1 end nnn
              , nvl(i.CHECKED,1) as CHECKED
              , t.v_client, t.truck
              , a.HOL_COLOR
              , nvl(nom.n_id,0) as nom_n_id
              --, 0 as nom_n_id
              , t.KOD||'.'||t.KLEUR||'.'||nvl((case when instr(t.s20,'CM') > 0 then trim(substr(t.s20,1,instr(t.s20,'CM')-1)) else trim(t.s20) end),0)||'.'||t.unit||'.'||t.s22||'.'||t.s25||'.'||t.vd2||'.'||t.REMARK as comp_hcode
              --, '' as comp_hcode
       FROM tmp_cutflower_order t
         left outer join nomenclature_mat_view a
            on a.bar_code = t.code and a.ID_DEPARTMENTS = dept_ and a.id_office in (1 ,const_office) and a.notuse = 0 --and a.s_id = vSuplier пока не надо, т.к. в накладной может быть и другой поставщик
         left outer join (select max(n_id) as n_id, h_code from nomenclature_mat_view tt where ID_DEPARTMENTS = dept_ and notuse = 0 group by h_code) nom
            on nom.H_CODE = t.KOD||'.'||t.KLEUR||'.'||nvl( (case when instr(t.s20,'CM') > 0 then trim(substr(t.s20,1,instr(t.s20,'CM')-1)) else trim(t.s20) end) ,0)||'.'||t.unit||'.'||t.s22||'.'||t.s25||'.'||t.vd2||'.'||t.REMARK
         left outer join import_flowers_kov i
            on i.BARCODE = t.code
         left outer join offices o
            on o.id_office = a.id_office
       where t.CODE is not null and t.staruser = vUser
       order by t.flow, t.TITLE, a.compiled_name_otdel;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.get_nomenclature_for_order', tmp_sql);
      RAISE_APPLICATION_ERROR (-20600, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
END get_nomenclature_for_order;



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
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.weightdry, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel, date_change
           , a.noprint, a.notuse, a.namecode, a.TnVed
           , a.nom_new, a.nom_start, a.nom_end,  a.hol_color, a.hol_pack
        )
        = (select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, case when nvl(b.sub_weight_dry,0) > 0 then b.sub_weight_dry else nvl(b.sub_weight,0) end, b.ht_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.weightdry, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code

           , case when b.id_departments = 62 then
               decode(b.ft_id,113,'Роза ',115,'Роза Эквадор ', 10000167, 'Роза Кения ',2,'Хризантема ','') || b.f_name_ru || decode(b.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','') || case when b.RUS_MARKS is null then null else '. ' || b.RUS_MARKS end
               --|| (case when b.col_id in (0,1639,2768,2915) then null else '. '||b.colour end)
             else
               b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else b.colour||'. ' end) || b.RUS_MARKS
           end compiled_name_otdel

          , b.date_change, b.noprint, b.notuse, b.flower_name_code, b.TnVed
          , b.nom_new, b.nom_start, b.nom_end, b.hol_color, b.hol_pack
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


-- Выбор одинаковых штрих-кодов поставщика в разных номенклатурах
procedure checkBarCodes(
    v_dep_id     in number
  , cursor_  out ref_cursor
)
is
begin
  open cursor_ for
      select bar_code from nomenclature_mat_view a
      where a.ID_DEPARTMENTS = v_dep_id and a.bar_code is not null
      group by a.bar_code
      having count(*) > 1
      ;

  EXCEPTION WHEN others THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'nomenclature2_pkg.checkBarCodes', '');
      RAISE_APPLICATION_ERROR (-20601, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace );
end;



--
-- Выбор названий с латинскими названиями
--
PROCEDURE  select_name_with_translation (
   dep_      in number,
   fn_id_    in number,
   cursor_   in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT b.FN_ID, b.fnt_id, b.NAME_CODE, b.REMARKS, b.F_NAME
      FROM flower_name_translations b WHERE b.ID_DEPARTMENTS = dep_ and b.fn_id = fn_id_ and b.id_office in (1,const_office)
        ORDER BY CASE WHEN FN_ID = 0 THEN FN_ID END, F_NAME;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.select_name_with_translation', '');
           RAISE_APPLICATION_ERROR (-20065, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_name_with_translation;


--
-- Выбор дубликатов артикулов
--
PROCEDURE  select_dublicate_hcode (
   dep_      in number,
   cursor_   in out ref_cursor
)
is
begin

  open cursor_ for
    select a.h_code as res from nomenclature_mat_view a
    where a.id_departments = 62
      group by a.h_code
      having count(*) > 1;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.select_dublicate_hcode', '');
           RAISE_APPLICATION_ERROR (-20066, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_dublicate_hcode;


--
-- Выбор дубликатов штрих-кодов
--
PROCEDURE  select_dublicate_barcode (
   dep_      in number,
   cursor_   in out ref_cursor
)
is
begin

  open cursor_ for
    select a.bar_code as res from nomenclature_mat_view a
    where a.id_departments = 62
      group by a.bar_code
      having count(*) > 1;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.select_dublicate_barcode', '');
           RAISE_APPLICATION_ERROR (-20066, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_dublicate_barcode;




--
-- Изменение штрих-кода поставщика
--
PROCEDURE  change_barcode (
   p_bar_code  in varchar,
   p_n_id      in number
)
is
begin
  update nomenclature set bar_code = p_bar_code where n_id = p_n_id;
  update nomenclature_mat_view set bar_code = p_bar_code where n_id = p_n_id;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.change_barcode', '');
           RAISE_APPLICATION_ERROR (-20067, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end change_barcode;


--
-- Изменим данные поставщика по инвойсу
--
PROCEDURE  change_nom_by_invoice (
   p_hol_name  in varchar,
--   p_remark    in varchar,
--   p_color     in varchar,
--   vd2         in varchar,
   p_n_id      in number
)
is
begin
  update nomenclature set H_NAME = p_hol_name, date_change = sysdate /*, REMARKS = p_remark, HOL_COLOR = p_color*/ where n_id = p_n_id;
  sync_nomenclature_one(p_n_id);
  commit;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.change_nom_by_invoice', '');
           RAISE_APPLICATION_ERROR (-20068, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end change_nom_by_invoice;


--
-- Выбираем данные для веба
--
PROCEDURE  select_store_for_web (
   qDays      in number,
   cursor_    in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT b. code as product_art
           , b.name_code as CODENAME
           , decode(b.id_departments, 121,2, 61,1, 62,3, 0) as depart_id
           , b.s_name_ru as brand_title
           , b.country
           , b.f_type || ' / ' || b.f_sub_type as category
           , b.f_name_ru as product_title
           , b.colour
           , nvl(b.len,0) as "SIZE"
           , nvl(b.pack,0) as PIECESINPACK
           , case when b.id_departments = 121 then b.h_code ||' '|| b.compiled_name_otdel else b.compiled_name_otdel end product_desc
           , nvl(case when c.STORE_TYPE=1 then a.price else c.price end ,0) as product_price
           , case when c.quantity < 0 then 0 else c.quantity end as product_qty
           , nvl(c.reserv,0) as product_reserve
           , nvl(b.nom_new,0) as NEW_FLAG
    --       , nvl(a.DISCOUNT,0) as DISCOUNT     -- Скидка. Формат INT, возможные значения 10,20,30 - т.е. проценты скидки, при пустом поле - пусто или 0
           , case when c.STORE_TYPE=2 then a.price else 0 end as DISCOUNT
           , nvl(a.SPEC_PRICE,0) as PROFIT       -- Выгодное предложение. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           --, nvl(a.BEST_PRICE,0) as BESTPRICE    -- Лучшая цена. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           , case when instr(b.remarks, '"!"') > 0 then 1 else null end BESTPRICE
           , nvl(b.nom_start,0) as SEASON_START
           , nvl(b.nom_end,0) as SEASON_END
           , '0' as onMarch
           , 0 as NO_ORDER
      FROM price_list a, nomenclature_mat_view b, store_main c
      where a.n_id = b.n_id
        and b.n_id = c.n_id
        and b.notuse = 0
        and c.quantity > 0
        and b.id_departments <> 62
        and not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=b.n_id)

    union all

    SELECT b. code as product_art
           , b.name_code as CODENAME
           , decode(b.id_departments, 121,2, 61,1, 62,3, 0) as depart_id
           , b.s_name_ru as brand_title
           , b.country
           , b.f_type || ' / ' || b.f_sub_type as category
           , b.f_name_ru as product_title
           , b.colour
           , b.len as "SIZE"
           , b.pack as PIECESINPACK
           , b.compiled_name_otdel as product_desc
           , nvl(p.price,0) as product_price
           , nvl(a.quantity,0) as product_qty
           , nvl(a.reserv,0) as product_reserve
           , nvl(b.nom_new,0) as NEW_FLAG
           , nvl(p.DISCOUNT,0) as DISCOUNT     -- Скидка. Формат INT, возможные значения 10,20,30 - т.е. проценты скидки, при пустом поле - пусто или 0
           , nvl(p.SPEC_PRICE,0) as PROFIT       -- Выгодное предложение. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           --, nvl(p.BEST_PRICE,0) as BESTPRICE    -- Лучшая цена. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           , case when instr(b.remarks, '"!"') > 0 then 1 else null end BESTPRICE
           , nvl(b.nom_start,0) as SEASON_START
           , nvl(b.nom_end,0) as SEASON_END
           , nvl(c.hs_val,'0') as onMarch
           --, decode(mm.n_id,null,0,1) as NO_ORDER
           ,case when (mm.n_id is null or mm.no_order = 0 or mm.no_order is null) then 0 else 1  end NO_ORDER

      FROM nomenclature_mat_view b
        left outer join (select distinct a.n_id FROM invoice_data a, invoice_register b where a.inv_id = b.inv_id and b.supplier_date >= sysdate-qDays and b.id_departments = 62) inv on inv.n_id = b.n_id
        left outer join store_main a on a.n_id = b.n_id and a.store_type = 1
        inner join price_list p on p.n_id = b.n_id
        left outer join nom_specifications c on c.n_id = b.n_id and c.hs_id = const_8march
        left outer join nomenclature_site_marks mm on mm.n_id = b.n_id and mm.no_order=1
      where b.id_departments = 62
        and b.notuse = 0
        and (a.quantity > 0 or inv.n_id is not null)
        and not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=b.n_id)
  ;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG2.select_store_for_web', '');
           RAISE_APPLICATION_ERROR (-20080, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END select_store_for_web;




--
-- Генерируем артикул товара
--
PROCEDURE  gen_h_code (
   v_n_id      in number,
   v_id_dep    in number
)
is
  new_art  varchar2(100);
begin

    select a.NAME_CODE||'.'||a.coler||'.'||a.len||'.'||a.PACK||'.'||s22.hs_val||'.'||s25.hs_val||'.'||vd2.hs_val||'.'||a.remarks into new_art
    from
    (
      SELECT
      substr(a.h_code,0,instr(a.h_code,'.')-1) as code1,
      substr(a.h_code,instr(a.h_code,'.')+1,instr(a.h_code,'.',1,2)-instr(a.h_code,'.',1,1)-1) as coler,
       a.h_code, a.h_name, a.code, a.len, a.fn_id, a.n_id,
             a.pack, a.diameter, a.hol_type, a.weight, a.remarks,
             a.bar_code, a.cust_coef, a.photo, a.is_photo,
             a.colour, a.country, a.hol_marks, a.rus_marks,
             a.name_code, a.compiled_name_otdel,
              a.namecode, a.tnved, a.weightdry, a.hol_color, a.HOL_PACK
        FROM nomenclature_mat_view a
        where a.n_id = v_n_id
    ) a,
    (
      SELECT  s22.hs_val, s22.n_id
        FROM nom_specifications s22
        where hs_id = 16
    ) s22,
    (
      SELECT  s25.hs_val, s25.n_id
        FROM nom_specifications s25
        where hs_id = 17
    ) s25,
    (
      SELECT  vd2.hs_val, vd2.n_id
        FROM nom_specifications vd2
        where hs_id = 10000072
    ) vd2
      where rownum=1 and a.n_id = s22.n_id(+) and a.n_id = s25.n_id(+) and a.n_id = vd2.n_id(+)
    ;
  update nomenclature a set a.h_code = new_art, date_change = sysdate where a.n_id = v_n_id;
  update nomenclature_mat_view a set a.h_code = new_art, date_change = sysdate where a.n_id = v_n_id;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG2.gen_h_code', '');
           RAISE_APPLICATION_ERROR (-20081, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END gen_h_code;



--
-- Изменяем активность номенклатуры по поставщику
--
PROCEDURE set_active_noms_by_suplier (
   v_s_id      in number,
   v_id_dep    in number
)
is
begin

  update nomenclature a set a.notuse = abs(a.notuse-1), date_change = sysdate where a.s_id = v_s_id and a.fn_id in ( select b.fn_id from flower_names b where b.ID_DEPARTMENTS = v_id_dep );
  update nomenclature_mat_view a set a.notuse = abs(a.notuse-1), date_change = sysdate where a.id_departments = v_id_dep and a.s_id = v_s_id;
  commit;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.set_active_noms_by_suplier', '');
           RAISE_APPLICATION_ERROR (-20082, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END set_active_noms_by_suplier;


--
-- товар на сайте
--
PROCEDURE set_nomenclature_site_marks (
   v_n_id             in number,
   v_REMOVE_FROM_SITE in number,
   v_NO_ORDER         in number
)
is
begin
  tmp_cnt := 0;
  if v_REMOVE_FROM_SITE = 1 then
    select count(1) into tmp_cnt from nomenclature_site_marks where N_ID = v_n_id;
    if tmp_cnt = 0 then
      insert into nomenclature_site_marks values(v_n_id, 1, sysdate,v_NO_ORDER);
    end if;
    if tmp_cnt = 1 then
      update nomenclature_site_marks set no_order=v_NO_ORDER WHERE N_ID = v_n_id;
    end if;
  end if;
  if (v_REMOVE_FROM_SITE = 0) and (v_NO_ORDER = 0) then
    delete from nomenclature_site_marks where N_ID = v_n_id;
  end if;
  if (v_REMOVE_FROM_SITE = 0) and (v_NO_ORDER = 1) then
    select count(1) into tmp_cnt from nomenclature_site_marks where N_ID = v_n_id;
    if tmp_cnt = 0 then
      insert into nomenclature_site_marks values(v_n_id, 0, sysdate,v_NO_ORDER);
    end if;
    if tmp_cnt = 1 then
      update nomenclature_site_marks set no_order=v_NO_ORDER WHERE N_ID = v_n_id;
    end if;
  end if;
EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.set_nomenclature_site_marks', '');
           RAISE_APPLICATION_ERROR (-20083, 'Запрос не выполнен. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END set_nomenclature_site_marks;


--
-- Изменяем признака новинки номенклатуры
--
PROCEDURE claer_NEW_mark (
   v_id_dep      in number
)
is
begin

  update nomenclature_mat_view a set a.NOM_NEW = null, date_change = sysdate where a.ID_DEPARTMENTS = v_id_dep;
  --update nomenclature a set a.NOM_NEW = null, date_change = sysdate where a.s_id = v_s_id;
  UPDATE nomenclature p SET p.NOM_NEW = (SELECT q.NOM_NEW FROM nomenclature_mat_view q WHERE p.n_id = q.n_id);
  --commit;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'nomenclature2_pkg.claer_NEW_mark', '');
           RAISE_APPLICATION_ERROR (-20084, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END claer_NEW_mark;


END;
/


-- End of DDL Script for Package Body CREATOR.NOMENCLATURE2_PKG

