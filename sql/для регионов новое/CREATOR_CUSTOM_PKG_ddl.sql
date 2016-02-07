-- Start of DDL Script for Package Body CREATOR.CUSTOM_PKG
-- Generated 14.12.2011 20:21:25 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE custom_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2011-08-31 */
/* Изменение: */
/* Для работы с таблицами по инвойсам */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


--
--  Запишем ФИТО название с переводом
--
PROCEDURE SAVE_FITO_NAMES
(
    v_ID_DEP         in number
    , v_name         in VARCHAR2
    , V_NAME_FITO    in VARCHAR2
    , V_NAME_CODE    in varchar2
    , v_fito_id      in out number
    , out_errmsg     IN OUT varchar2
);


--
--  Достанем фито перевод
--
PROCEDURE get_fito_names
(
    v_id_dep  in integer,
    cursor_   out ref_cursor
);


--
--  Удалим фито перевод
--
PROCEDURE del_fito_names
(
    v_fito_id        in number
);


--
--  Достанем фито инвойсы
--
PROCEDURE get_custom_register
(
    ID_DEPARTMENTS_  in number,
    cursor_          out ref_cursor
);


--
--  Достанем сырой ФИТО
--
PROCEDURE get_custom_register_asis
(
    INV_ID_     in integer,
    split_rose_ in integer,
    cursor_     out ref_cursor
);


--
--  Статистика по фито типам
--
PROCEDURE get_custom_register_pd_total
(
    INV_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
);


function get_spec(
    INV_ID_  in integer,
    PD_      in varchar2,
    trucks_  in varchar2
) return varchar2;


--
--  Стату для
--
PROCEDURE get_custom_register_asis_total
(
    INV_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
);

--
--  Достанем сетку весов
--
PROCEDURE get_group_stat
(
    v_id_inv  in integer,
    v_id_dep  in integer,
    v_vid     in integer,
    cursor_   out ref_cursor
);


--
--  Достанем пачки таможенных инвойсов
--
PROCEDURE get_customs_ipp_list
(
    cursor_   in out ref_cursor
);

--
--  Добавляем пачку для таможенных инвойсов
--
PROCEDURE ADD_CUSTOMS_PRICE_PACK
(
  IPP_COMMENT_        IN VARCHAR2,
  in_id_              in out number
);

--
--  Удаляем пачку для инвойсов
--
PROCEDURE DEL_CUSTOMS_PRICE_PACK
(
  IPP_ID_                    IN NUMBER
);

--
--  Вставим пачку таможенным инвойсам
--
PROCEDURE SET_CUSTOMS_INV_TO_PACK
(
  V_IPP_ID      IN NUMBER
  , V_PARAM     in number
  , V_INV_ID    IN NUMBER
);


--
--  Запишем ФИТО категории с переводом
--
PROCEDURE SAVE_FITO
(
    v_ID_DEP            in number
    , v_name_eng        in VARCHAR2
    , v_name_ru         in VARCHAR2
    , v_name_eng_full   in VARCHAR2
    , v_id              in out number
);



--
--  Запишем формулу
--
PROCEDURE save_weight_formula
(
    V_ID_W          in number
    , V_FO_NAME     in VARCHAR2
    , v_FO_FIELD    in number
    , v_FO_RULE     in number
    , v_FO_VALUE    in VARCHAR2
    , v_weight_     in number
    , v_orderby     in number
    , v_id          in out number
);


--
--  Найдем значение формулы
--
function show_weight_formula
(
    V_ID_GROUP    in number
    , V_NAME      in VARCHAR2
    , v_LENGTH    in number
    , v_only_LENGTH    in number
) return varchar2;


--
--  Удалим формулу
--
PROCEDURE del_w_formula
(
    v_id              in out number
);


--
--  Запишем вес
--
PROCEDURE save_weights
(
    v_ID_DEP         in number
    , V_NAME_CAT     in VARCHAR2
    , V_NAME_CAT_RU  in VARCHAR2
    , v_weight       in number
    , v_make_info    in number
    , v_cust_regn    in VARCHAR2
    , v_orderby      in number
    , v_id           in out number
);


--
--  Добавляем основную информацию о новом сыром инвойсе для таможни
--
PROCEDURE CUST_INV_REG_INSERT
(
  IN_INV_DATE            IN DATE,
  IN_COMMENTS            IN VARCHAR2,
  IN_SUP_INV_DATE        IN DATE,
  IN_SUP_NUMBER          IN VARCHAR2,
  IN_TRUCK_DATE          IN DATE,
  IN_ID_DEPARTMENTS      IN INTEGER,
  IN_S_ID                in number,
  in_INV_ID              in out integer,
  IN_FILE                in varchar2
);


--
--  Добавляем данные нового сырого инвойса
--
PROCEDURE CUSTOMS_INV_REG_INSERT_DATA
(
    INV_ID_                     in number,
    ORDER_NUMBER_               in number,
    TRUCS_                      in varchar2,
    PACKING_MARKS_              in varchar2,
    PACKING_AMOUNT_             in number,
    AMOUNT_PER_UNIT_            in number,
    UNITS_                      in number,
    PRICE_                      in number,
    SUMM_                       in number,
    TITLE_                      in varchar2,
    DESCRIPTION_                in varchar2,
    HOL_COUNTRY_                in varchar2,
    HOL_SUB_TYPE_               in varchar2,
    PD_                         in varchar2,
    DIAMETR_                    in number,
    HEIGHT_                     in number,
    TROLLEY_                    in varchar2,
    H_CODE_                     in varchar2,
    UPACK_                      in varchar2,
    SRC_NAME_                   in varchar2
);


--
--  Удалим инвойсы
--
PROCEDURE del_custom_register
(
    v_id    in number
);


--
--  Достанем сырой ФИТО PACK
--
PROCEDURE get_custom_register_asis_pack
(
    IPP_ID_     in integer,
    split_rose_ in integer,
    cursor_     out ref_cursor
);


function get_spec_pack(
    IPP_ID_  in integer,
    PD_      in varchar2,
    trucks_  in varchar2
) return varchar2;


--
--  Статистика по фито типам PACK
--
PROCEDURE get_custom_reg_pd_total_pack
(
    IPP_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
);


--
--  Стату для
--
PROCEDURE get_custom_reg_asis_total_pack
(
    IPP_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
);


--
--  Достанем сетку весов
--
PROCEDURE get_weights
(
    v_id_dep  in integer,
    cursor_   out ref_cursor
);


--
--  Достанем ФИТО категории с переводом
--
PROCEDURE GET_FITO
(
    ID_DEPARTMENTS_   in number,
    cursor_           out ref_cursor
);


--
--  Удалим ФИТО категории с переводом
--
PROCEDURE DEL_FITO
(
    v_id              in out number
);


--
--  Удалим вес
--
PROCEDURE del_weights
(
    v_id              in out number
);


END;
/

-- Grants for Package
GRANT EXECUTE ON custom_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY custom_pkg
IS


--
--  Запишем ФИТО название с переводом
--
PROCEDURE SAVE_FITO_NAMES
(
    v_ID_DEP         in number
    , v_name         in VARCHAR2
    , V_NAME_FITO    in VARCHAR2
    , V_NAME_CODE    in varchar2
    , v_fito_id      in out number
    , out_errmsg     IN OUT varchar2
)
is
    v_msg       varchar2(1024);
    idd         number;
begin
    out_errmsg  := '';
    idd         := 0;

    if v_fito_id > 0 then
        tmp_sql := 'update flower_fito_all_names set F_NAME='||v_name||', FITO_NAME='||V_NAME_FITO||', NAME_CODE='||V_NAME_CODE||' where fito_id='||v_fito_id;
        update flower_fito_all_names set F_NAME = v_name, FITO_NAME = V_NAME_FITO, NAME_CODE = V_NAME_CODE where fito_id = v_fito_id;
    else
        tmp_sql := 'insert into flower_fito_all_names values(seq_fito_name.nextval, '||V_NAME_FITO||', '||v_name||', '||V_NAME_CODE||', '||v_ID_DEP||')';
        insert into flower_fito_all_names values(seq_fito_name.nextval, V_NAME_FITO, v_name, V_NAME_CODE, v_ID_DEP)
            returning fito_id into v_fito_id;
    end if;

    commit;

  EXCEPTION WHEN OTHERS THEN
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.SAVE_FITO_NAMES', tmp_sql);

end SAVE_FITO_NAMES;


--
--  Достанем фито перевод
--
PROCEDURE get_fito_names
(
    v_id_dep  in integer,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    SELECT a.fito_id, a.f_name, a.fito_name, a.id_dep, a.name_code
    FROM flower_fito_all_names a
    WHERE a.id_dep = v_id_dep
    order by a.f_name
    ;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_fito_names', tmp_sql);

end get_fito_names;


--
--  Удалим фито перевод
--
PROCEDURE del_fito_names
(
    v_fito_id        in number
)
is
begin
  delete from flower_fito_all_names where fito_id = v_fito_id;
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.del_fito_names', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end del_fito_names;



--
--  Достанем фито инвойсы
--
PROCEDURE get_custom_register
(
    ID_DEPARTMENTS_  in number,
    cursor_          out ref_cursor
)
is
begin

    open cursor_ for
        SELECT a.inv_id, a.inv_id as inv_id_, a.inv_date, a.comments, a.inv_sum, a.status,
               a.id_departments, a.s_id_default, a.c_id_default,
               a.supplier_date, a.supplier_number, TRUCK_DATE
               , a.in_file, case when a.in_file is null then 0 else 1 end is_file, 1 as folder
               , b.s_name_ru
               , (select count(1) from customs_inv_data_as_is where inv_id = a.inv_id) as quant
               , (select sum(summ) from customs_inv_data_as_is where inv_id = a.inv_id) as summ
               , 0 as d_check
               , a.ipp_id
               , ipp.IPP_COMMENT
          FROM customs_inv_register a, suppliers b, customs_price_pack ipp
          where a.s_id_default = b.s_id
              and a.id_departments = ID_DEPARTMENTS_
              and a.ipp_id = ipp.ipp_id(+)
          order by a.inv_id desc
          ;

  EXCEPTION
  WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_register', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_register;


--
--  Достанем сырой ФИТО
--
PROCEDURE get_custom_register_asis
(
    INV_ID_     in integer,
    split_rose_ in integer,
    cursor_     out ref_cursor
)
is
    v_id_dep number;
begin

  begin
      SELECT a.id_departments into v_id_dep
      FROM customs_inv_register a
      where a.inv_id = INV_ID_
      ;
  EXCEPTION WHEN no_data_found THEN v_id_dep := 0;
  end;

      open cursor_ for
        SELECT a.inv_id, a.invoice_data_as_is_id, a.order_number, a.height, a.diametr, a.trucks, a.title, a.packing_amount
           , a.amount_in_the_pack, a.units, a.packing_marks, a.description, a.hol_country, a.price, a.summ
           , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
           --, a.hol_sub_type
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then a.hol_sub_type || (case when instr(a.description,' ECUA ') > 0 then ' ECUADOR' else ' DUTCH' end ) else a.hol_sub_type end hol_sub_type
           , a.recognised, a.date_in, a.trolley, a.h_code, a.UPACK

           , a.src_trolley, a.SRC_NAME
           , dense_rank() over(PARTITION by trucks order by trolley, src_trolley) as trolley_calc

           , a.pd, b.name_ru as pd_ru, b.id
           , c.id as ft_id, c.STEM_WEIGHT, c.CUST_REGN
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end orderby
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.name_cat_ru || (case when instr(a.description,' ECUA ') > 0 then ' эквадор' else ' голландия' end ) else c.name_cat_ru end f_type
           , e.fito_id as FN_ID, e.fito_name as f_name_ru
           , show_weight_formula(c.id,a.description,a.height,0) as type_dop
           , v_id_dep as id_dep
           , split_rose_ as split_rose

        FROM customs_inv_data_as_is a, countries e
            , fito_category b, customs_weight c
            --, (select FN_ID, case when fito_name is null then F_NAME_RU else fito_name end F_NAME_RU, NAME_CODE, F_NAME_RU as firma_name from FLOWER_NAMES where ID_DEPARTMENTS = v_id_dep) d
            , (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = v_id_dep) e
        where a.INV_ID = INV_ID_
            and lower(a.hol_country) = lower(e.country_eng(+))
            and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
            and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
            --and a.h_code = d.NAME_CODE(+)
            and (
              upper(a.title) = upper(e.F_NAME(+)) and upper(a.h_code) = upper(e.name_code(+))
            )
        order by
            case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end
            , a.description
        ;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.del_fito_names', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_register_asis;



--
--  Статистика по фито типам
--
PROCEDURE get_custom_register_pd_total
(
    INV_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
)
is
begin
   if (param_ = 0) then
      open cursor_ for
            SELECT a.trucks, a.pd, sum(a.units) as total
            FROM customs_inv_data_as_is a
            where a.INV_ID = INV_ID_
            group by a.trucks, a.pd
            order by a.trucks, a.pd
            ;
   else
      open cursor_ for
            SELECT a.pd, sum(a.units) as total
            FROM customs_inv_data_as_is a
            where a.INV_ID = INV_ID_
            group by a.pd
            order by a.pd
            ;
   end if;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_register_pd_total', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_register_pd_total;


function get_spec(
    INV_ID_  in integer,
    PD_      in varchar2,
    trucks_  in varchar2
) return varchar2
IS
   cursor f_ is
        select distinct a.height,  a.diametr, a.height||'/'||a.diametr as spec
        from customs_inv_data_as_is a
        where a.inv_id = INV_ID_ and a.pd = PD_ and (a.trucks = trucks_ or trucks_ = 0)
        order by a.height,  a.diametr
        ;
   str_tmp varchar2(150);
   v_hh number;
   v_dd number;
   v_spec varchar2(10);
begin
    str_tmp := '';

    open f_;
    loop
        fetch f_ into v_hh, v_dd, v_spec;
        exit when f_%notfound;

        str_tmp := str_tmp || v_spec || ',';
    end loop;
    close f_;

    if (length(str_tmp) > 0) then
        str_tmp := SUBSTR(str_tmp,1,LENGTH(str_tmp)-1);
    end if;
    RETURN str_tmp;
end;



function get_spec_pack(
    IPP_ID_  in integer,
    PD_      in varchar2,
    trucks_  in varchar2
) return varchar2
IS
   cursor f_ is
        select distinct a.height,  a.diametr, a.height||'/'||a.diametr as spec
        from customs_inv_data_as_is a, customs_inv_register z
        where a.inv_id = z.inv_id and z.ipp_id = IPP_ID_
            and a.pd = PD_ and (a.trucks = trucks_ or trucks_ = 0)
        order by a.height,  a.diametr
        ;
   str_tmp varchar2(150);
   v_hh number;
   v_dd number;
   v_spec varchar2(10);
begin
    str_tmp := '';

    open f_;
    loop
        fetch f_ into v_hh, v_dd, v_spec;
        exit when f_%notfound;

        str_tmp := str_tmp || v_spec || ',';
    end loop;
    close f_;

    if (length(str_tmp) > 0) then
        str_tmp := SUBSTR(str_tmp,1,LENGTH(str_tmp)-1);
    end if;
    RETURN str_tmp;
end;


--
--  Стату для
--
PROCEDURE get_custom_register_asis_total
(
    INV_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
)
is
    v_id_dep number;
begin

  SELECT a.id_departments into v_id_dep
  FROM customs_inv_register a
  where a.inv_id = INV_ID_
  ;

  if v_id_dep = 61 then
    if (param_ = 0) then
      open cursor_ for
        select trucks, pd, pd_ru, f_type, county_ru
            , sum(units) as total, get_spec(INV_ID_, pd, trucks) as spec
        from (
            SELECT a.trucks, a.units, a.title, a.hol_country, a.hol_sub_type, a.trolley, a.pd, a.summ, a.price, a.height, a.diametr
               , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
               , b.name_ru as pd_ru, b.id
               , c.id as ft_id, c.name_cat_ru as f_type
            FROM customs_inv_data_as_is a, fito_category b, customs_weight c, countries e
            where a.INV_ID = INV_ID_
                and lower(a.hol_country) = lower(e.country_eng(+))
                and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
                and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
        )
        group by trucks, f_type, county_ru, pd, pd_ru
        order by trucks, f_type, county_ru, pd, pd_ru
        ;
    else
      open cursor_ for
        select pd, pd_ru, f_type, county_ru
            , sum(units) as total, get_spec(INV_ID_, pd, 0) as spec
        from (
            SELECT a.trucks, a.units, a.title, a.hol_country, a.hol_sub_type, a.trolley, a.pd, a.summ, a.price, a.height, a.diametr
               , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
               , b.name_ru as pd_ru, b.id
               , c.id as ft_id, c.name_cat_ru as f_type
            FROM customs_inv_data_as_is a, fito_category b, customs_weight c, countries e
            where a.INV_ID = INV_ID_
                and lower(a.hol_country) = lower(e.country_eng(+))
                and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
                and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
        )
        group by f_type, county_ru, pd, pd_ru
        order by f_type, county_ru, pd, pd_ru
        ;
    end if;
  end if;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_register_asis_total', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_register_asis_total;


--
--  Достанем сетку весов
--
PROCEDURE get_group_stat
(
    v_id_inv  in integer,
    v_id_dep  in integer,
    v_vid     in integer,
    cursor_   out ref_cursor
)
is
begin

if (v_vid = 1) then
  open cursor_ for
    select a.* from (
        select trucks, hol_sub_type, hol_country, name_cat_ru, orderby, priznak, sum(units) quant
        from (
            SELECT a.height, a.hol_sub_type
                , show_weight_formula(c.id,a.description,a.height,0) as priznak
                , a.trucks, a.units, decode(a.hol_country,'','NL',a.hol_country) as hol_country
                , c.name_cat_ru, c.orderby
              FROM customs_inv_data_as_is a, customs_weight c
              WHERE a.INV_ID = v_id_inv and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
        ) a
        group by trucks, hol_sub_type, priznak, hol_country, name_cat_ru, orderby
    ) a
    order by trucks, orderby, priznak, hol_country
    ;
end if;

if (v_vid = 2) then
  open cursor_ for
            SELECT a.trucks, decode(a.hol_country,'','NL',a.hol_country) as hol_country, e.COUNTRY, sum(a.units) as units, 0 as netto
              FROM customs_inv_data_as_is a, countries e
              WHERE a.INV_ID = v_id_inv and lower(a.hol_country) = lower(e.country_eng(+))
              group by a.trucks, decode(a.hol_country,'','NL',a.hol_country), e.COUNTRY
              order by a.trucks, decode(a.hol_country,'','NL',a.hol_country)
            ;
end if;

if (v_vid = 3) then
  open cursor_ for
            SELECT a.trucks, a.hol_sub_type, c.orderby,  decode(a.hol_country,'','NL',a.hol_country) as hol_country, e.COUNTRY, sum(a.units) as units, 0 as netto
                    , sum(case when (lower(a.hol_sub_type) = 'roses' and a.height < 70)  or lower(a.hol_sub_type) <> 'roses' then a.units else 0 end) q_short
                    , sum(case when lower(a.hol_sub_type) = 'roses' and a.height >= 70 then a.units else 0 end) q_long

              FROM customs_inv_data_as_is a, countries e, customs_weight c
              WHERE a.INV_ID = v_id_inv and lower(a.hol_country) = lower(e.country_eng(+))
                      and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
              group by a.trucks, c.orderby, a.hol_sub_type, decode(a.hol_country,'','NL',a.hol_country), e.COUNTRY
              order by a.trucks, c.orderby,a.hol_sub_type, decode(a.hol_country,'','NL',a.hol_country)
            ;
end if;


  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_group_stat', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_group_stat;


--
--  Достанем пачки таможенных инвойсов
--
PROCEDURE get_customs_ipp_list
(
    cursor_   in out ref_cursor
)
is
begin
  open cursor_ for
    select a.IPP_ID, a.IPP_COMMENT from (
        SELECT distinct a.IPP_ID, TO_CHAR(a.IPP_DATE,'DD.MM.YYYY') || ' / ' || IPP_COMMENT as IPP_COMMENT, IPP_DATE
        FROM customs_price_pack a, CUSTOMS_INV_REGISTER b
        where a.ipp_id = b.ipp_id(+)
        ORDER by IPP_DATE desc
    ) a
  ;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_customs_ipp_list', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_customs_ipp_list;



--
--  Добавляем пачку для таможенных инвойсов
--
PROCEDURE ADD_CUSTOMS_PRICE_PACK
(
  IPP_COMMENT_        IN VARCHAR2,
  in_id_              in out number
)
is
  NEW_IPP_ID INTEGER;

begin

  SELECT IPP_ID.NEXTVAL INTO NEW_IPP_ID FROM DUAL;
  if (NEW_IPP_ID > 0) then
     tmp_sql := 'INSERT INTO customs_price_pack VALUES ('||NEW_IPP_ID||', sysdate, '||IPP_COMMENT_||');';
     INSERT INTO customs_price_pack VALUES (NEW_IPP_ID, sysdate, IPP_COMMENT_);
     in_id_ := NEW_IPP_ID;
     commit;
    end if;

EXCEPTION WHEN OTHERS THEN
      in_id_ := -1;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.ADD_CUSTOMS_PRICE_PACK', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end ADD_CUSTOMS_PRICE_PACK;



--
--  Удаляем пачку для инвойсов
--
PROCEDURE DEL_CUSTOMS_PRICE_PACK
(
  IPP_ID_                    IN NUMBER
)
is
begin

  tmp_sql := 'UPDATE CUSTOMS_INV_REGISTER SET IPP_ID = NULL WHERE IPP_ID ='||IPP_ID_;
  UPDATE CUSTOMS_INV_REGISTER SET IPP_ID = NULL WHERE IPP_ID = IPP_ID_;

  tmp_sql := 'DELETE FROM customs_price_pack WHERE IPP_ID ='||IPP_ID_;
  DELETE FROM customs_price_pack WHERE IPP_ID = IPP_ID_;

  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.DEL_CUSTOMS_PRICE_PACK', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end DEL_CUSTOMS_PRICE_PACK;



--
--  Вставим пачку таможенным инвойсам
--
PROCEDURE SET_CUSTOMS_INV_TO_PACK
(
  V_IPP_ID      IN NUMBER
  , V_PARAM     in number
  , V_INV_ID    IN NUMBER
)
is
begin

  tmp_sql := 'CUSTOMS_INV_REGISTER SET IPP_ID = decode('||V_IPP_ID||',0,null,'||V_IPP_ID||') WHERE INV_ID ='||V_INV_ID;
  UPDATE CUSTOMS_INV_REGISTER SET IPP_ID = decode(V_IPP_ID,0,null,V_IPP_ID) WHERE INV_ID = V_INV_ID;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.SET_CUSTOMS_INV_TO_PACK', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end SET_CUSTOMS_INV_TO_PACK;



--
--  Запишем ФИТО категории с переводом
--
PROCEDURE SAVE_FITO
(
    v_ID_DEP            in number
    , v_name_eng        in VARCHAR2
    , v_name_ru         in VARCHAR2
    , v_name_eng_full   in VARCHAR2
    , v_id              in out number
)
is
begin
    if v_id > 0 then
        tmp_sql := 'update fito_category set name_eng = '||v_name_eng||', name_ru = '||v_name_ru||', name_eng_full = '||v_name_eng_full||' where id ='||v_id;
        update fito_category set name_eng = v_name_eng, name_ru = v_name_ru, name_eng_full = v_name_eng_full where id = v_id
        ;
    else
        tmp_sql := 'insert into fito_category values(SEQ_FITO_CATEGORY.nextval, '||v_name_eng||', '||v_name_ru||', '||v_ID_DEP||', '||v_name_eng_full||')';
        insert into fito_category values(SEQ_FITO_CATEGORY.nextval, v_name_eng, v_name_ru, v_ID_DEP, v_name_eng_full)
        returning id into v_id
        ;
    end if;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.SAVE_FITO', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end SAVE_FITO;




--
--  Запишем формулу
--
PROCEDURE save_weight_formula
(
    V_ID_W          in number
    , V_FO_NAME     in VARCHAR2
    , v_FO_FIELD    in number
    , v_FO_RULE     in number
    , v_FO_VALUE    in VARCHAR2
    , v_weight_     in number
    , v_orderby     in number
    , v_id          in out number
)
is
begin

    if v_id > 0 then
        tmp_sql := 'update CUSTOMS_WEIGHT_FORMULA set FO_NAME='||V_FO_NAME||',FO_FIELD='||v_FO_FIELD||',FO_RULE='||v_FO_RULE||',FO_VALUE='||v_FO_VALUE||',v_weight='||v_weight_||',orderby='||v_orderby||' where id='||v_id;
        update CUSTOMS_WEIGHT_FORMULA set FO_NAME = V_FO_NAME, FO_FIELD = v_FO_FIELD, FO_RULE = v_FO_RULE, FO_VALUE = v_FO_VALUE, v_weight = v_weight_, orderby = v_orderby
            where id = v_id;
    else
        tmp_sql := 'insert into customs_weight_formula values(seq_weight.nextval,'||V_ID_W||','||V_FO_NAME||','||v_FO_FIELD||','||v_FO_RULE||','||v_FO_VALUE||','||v_weight_||','||v_orderby||', NULL)';
        insert into customs_weight_formula values(seq_weight.nextval, V_ID_W, V_FO_NAME, v_FO_FIELD, v_FO_RULE, v_FO_VALUE, v_weight_, v_orderby, NULL)
        returning id into v_id;
    end if;

    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.save_weight_formula', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end save_weight_formula;



--
--  Найдем значение формулы
--
function show_weight_formula
(
    V_ID_GROUP    in number
    , V_NAME      in VARCHAR2
    , v_LENGTH    in number
    , v_only_LENGTH    in number
) return varchar2
IS
   cursor f_ is
        select a.fo_name, a.fo_field, a.fo_rule, a.fo_value, a.v_weight, a.orderby from customs_weight_formula a
        where a.id_w = V_ID_GROUP-- and (v_only_LENGTH = a.fo_field or v_only_LENGTH = 0)
        order by a.orderby
        ;
   ff_ f_%rowtype;

   str_tmp varchar2(150);
   v_hh number;
   v_dd number;
   v_spec varchar2(10);
begin
    str_tmp := '';

    open f_;
    loop
        fetch f_ into ff_;
        exit when f_%notfound;

        tmp_cnt := 0;

        -- Название
        if (ff_.fo_field = 0) then
            -- содержит
            if (ff_.fo_rule = 0) then
                select instr(V_NAME, ' '||ff_.fo_value||' ') into tmp_cnt from dual;
                if (tmp_cnt > 0) then str_tmp := ff_.fo_name; end if;
            end if;
            -- равно
            if (ff_.fo_rule = 1) then
                if (ff_.fo_value = V_NAME) then str_tmp := ff_.fo_name; end if;
            end if;
            -- не содержит
            if (ff_.fo_rule = 4) then
                select instr(V_NAME, ' '||ff_.fo_value||' ') into tmp_cnt from dual;
                if (tmp_cnt = 0) then str_tmp := ff_.fo_name; end if;
            end if;
        end if;

        -- Длина
        if (ff_.fo_field = 1) then
            -- равно
            if (ff_.fo_rule = 1) then
                if (ff_.fo_value = v_LENGTH) then str_tmp := ff_.fo_name; end if;
            end if;
            -- меньше
            if (ff_.fo_rule = 2) then
                if (ff_.fo_value > v_LENGTH) then str_tmp := ff_.fo_name; end if;
            end if;
            -- больше или равно
            if (ff_.fo_rule = 3) then
                if (ff_.fo_value <= v_LENGTH) then str_tmp := ff_.fo_name; end if;
            end if;
            -- не равно
            if (ff_.fo_rule = 4) then
                if (ff_.fo_value <> v_LENGTH) then str_tmp := ff_.fo_name; end if;
            end if;
        end if;

    end loop;
    close f_;

    RETURN str_tmp;
end;


--
--  Удалим формулу
--
PROCEDURE del_w_formula
(
    v_id              in out number
)
is
begin
    tmp_sql := 'delete from CUSTOMS_WEIGHT_FORMULA where id='||v_id;
    delete from CUSTOMS_WEIGHT_FORMULA where id = v_id;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.del_w_formula', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end del_w_formula;


--
--  Запишем вес
--
PROCEDURE save_weights
(
    v_ID_DEP         in number
    , V_NAME_CAT     in VARCHAR2
    , V_NAME_CAT_RU  in VARCHAR2
    , v_weight       in number
    , v_make_info    in number
    , v_cust_regn    in VARCHAR2
    , v_orderby      in number
    , v_id           in out number
)
is
begin

    if v_id > 0 then
        tmp_sql := 'update customs_weight set NAME_CAT='||V_NAME_CAT||',NAME_CAT_RU='||V_NAME_CAT_RU||',stem_weight='||v_weight||',make_info='||v_make_info||',cust_regn='||v_cust_regn||',orderby='||v_orderby||' where id='||v_id;
        update customs_weight set NAME_CAT = V_NAME_CAT, NAME_CAT_RU = V_NAME_CAT_RU, stem_weight = v_weight
            , make_info = v_make_info, cust_regn = v_cust_regn, orderby = v_orderby
            where id = v_id;
    else
        tmp_sql := 'insert into customs_weight values(seq_weight.nextval,'||V_NAME_CAT||','||V_NAME_CAT_RU||','||v_weight||','||v_ID_DEP||','||v_make_info||','||v_cust_regn||','||v_orderby||')';
        insert into customs_weight values(seq_weight.nextval, V_NAME_CAT, V_NAME_CAT_RU, v_weight, v_ID_DEP, v_make_info, v_cust_regn, v_orderby)
        returning id into v_id;
    end if;

    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.save_weights', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end save_weights;




--
--  Добавляем основную информацию о новом сыром инвойсе для таможни
--
PROCEDURE CUST_INV_REG_INSERT
(
  IN_INV_DATE            IN DATE,
  IN_COMMENTS            IN VARCHAR2,
  IN_SUP_INV_DATE        IN DATE,
  IN_SUP_NUMBER          IN VARCHAR2,
  IN_TRUCK_DATE          IN DATE,
  IN_ID_DEPARTMENTS      IN INTEGER,
  IN_S_ID                in number,
  in_INV_ID              in out integer,
  IN_FILE                in varchar2
)
as
    v_idd  number;
begin

  SELECT CUSTOMS_INV_ID.NEXTVAL INTO v_idd FROM DUAL;
  if (v_idd > 0) then
     tmp_sql := 'INSERT INTO CUSTOMS_INV_REGISTER (INV_ID, INV_DATE, COMMENTS, INV_SUM, STATUS, ID_DEPARTMENTS, S_ID_DEFAULT, C_ID_DEFAULT, SUPPLIER_DATE, SUPPLIER_NUMBER, IN_FILE, TRUCK_DATE) ';
     tmp_sql := tmp_sql || 'VALUES('||v_idd||',TRUNC('||IN_INV_DATE||'),'||IN_COMMENTS||',0,0,'||IN_ID_DEPARTMENTS||','||IN_S_ID||',NULL,TRUNC('||IN_SUP_INV_DATE||'),'||IN_SUP_NUMBER||','||IN_FILE||','||IN_TRUCK_DATE||')';
     INSERT INTO CUSTOMS_INV_REGISTER (INV_ID, INV_DATE, COMMENTS, INV_SUM, STATUS, ID_DEPARTMENTS, S_ID_DEFAULT, C_ID_DEFAULT, SUPPLIER_DATE, SUPPLIER_NUMBER, IN_FILE, TRUCK_DATE)
            VALUES(v_idd, TRUNC(IN_INV_DATE), IN_COMMENTS, 0, 0, IN_ID_DEPARTMENTS, IN_S_ID, NULL, TRUNC(IN_SUP_INV_DATE), IN_SUP_NUMBER, IN_FILE, IN_TRUCK_DATE);
     commit;
  end if;
  in_INV_ID := v_idd;

EXCEPTION WHEN OTHERS THEN
    in_INV_ID := -1;
    LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.CUST_INV_REG_INSERT', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end CUST_INV_REG_INSERT;


--
--  Добавляем данные нового сырого инвойса
--
PROCEDURE CUSTOMS_INV_REG_INSERT_DATA
(
    INV_ID_                     in number,
    ORDER_NUMBER_               in number,
    TRUCS_                      in varchar2,
    PACKING_MARKS_              in varchar2,
    PACKING_AMOUNT_             in number,
    AMOUNT_PER_UNIT_            in number,
    UNITS_                      in number,
    PRICE_                      in number,
    SUMM_                       in number,
    TITLE_                      in varchar2,
    DESCRIPTION_                in varchar2,
    HOL_COUNTRY_                in varchar2,
    HOL_SUB_TYPE_               in varchar2,
    PD_                         in varchar2,
    DIAMETR_                    in number,
    HEIGHT_                     in number,
    TROLLEY_                    in varchar2,
    H_CODE_                     in varchar2,
    UPACK_                      in varchar2,
    SRC_NAME_                   in varchar2
)
IS
  INV_DATA_AS_IS_ID_ number;
  v_truck     varchar2(2);
  v_trolley   number;
BEGIN

  SELECT CUSTOMS_INV_DATA_AS_IS_ID.NEXTVAL INTO INV_DATA_AS_IS_ID_ FROM DUAL;

  select case when instr(TRUCS_, 'T1') > 0 or instr(TRUCS_, 'TR1') > 0 or instr(TRUCS_, 'TRUCK 1') > 0 or TRUCS_ = '1' then 1 else
         case when instr(TRUCS_, 'T2') > 0 or instr(TRUCS_, 'TR2') > 0 or instr(TRUCS_, 'TRUCK 2') > 0 or TRUCS_ = '2' then 2 else
         case when instr(TRUCS_, 'T3') > 0 or instr(TRUCS_, 'TR3') > 0 or instr(TRUCS_, 'TRUCK 3') > 0 or TRUCS_ = '3' then 3 else
         case when instr(TRUCS_, 'T4') > 0 or instr(TRUCS_, 'TR4') > 0 or instr(TRUCS_, 'TRUCK 4') > 0 or TRUCS_ = '4' then 4 else
         case when instr(TRUCS_, 'T5') > 0 or instr(TRUCS_, 'TR5') > 0 or instr(TRUCS_, 'TRUCK 5') > 0 or TRUCS_ = '5' then 5 else
         case when instr(TRUCS_, 'T6') > 0 or instr(TRUCS_, 'TR6') > 0 or instr(TRUCS_, 'TRUCK 6') > 0 or TRUCS_ = '6' then 6 else
         case when instr(TRUCS_, 'T7') > 0 or instr(TRUCS_, 'TR7') > 0 or instr(TRUCS_, 'TRUCK 7') > 0 or TRUCS_ = '7' then 7 else
         case when instr(TRUCS_, 'T8') > 0 or instr(TRUCS_, 'TR8') > 0 or instr(TRUCS_, 'TRUCK 8') > 0 or TRUCS_ = '8' then 8 else 0
         end end end end end end end end
  into v_truck from dual;

  v_trolley := 0;
  if (length(TROLLEY_) > 0) then
    v_trolley := to_number(substr(TROLLEY_, instr(TROLLEY_,'.', -1)+1, length(TROLLEY_)));
  end if;


  tmp_sql := 'INSERT INTO CUSTOMS_INV_DATA_AS_IS VALUES ('||INV_ID_||','||INV_DATA_AS_IS_ID_||','||ORDER_NUMBER_||','||v_truck||','||PACKING_MARKS_||','||PACKING_AMOUNT_||','||AMOUNT_PER_UNIT_||','||UNITS_||','||PRICE_||','||SUMM_||','||TITLE_||','||DESCRIPTION_||','||HOL_COUNTRY_||','||HOL_SUB_TYPE_||','||PD_||','||DIAMETR_||','||HEIGHT_||','||v_trolley||',0,trunc(sysdate),'||H_CODE_||','||UPACK_||','||SRC_NAME_||','||TROLLEY_||')';
  INSERT INTO CUSTOMS_INV_DATA_AS_IS
  VALUES (
    INV_ID_, INV_DATA_AS_IS_ID_, ORDER_NUMBER_, v_truck, PACKING_MARKS_, PACKING_AMOUNT_, AMOUNT_PER_UNIT_, UNITS_, PRICE_, SUMM_,
    TITLE_, DESCRIPTION_, HOL_COUNTRY_, HOL_SUB_TYPE_, PD_, DIAMETR_, HEIGHT_, v_trolley, 0, trunc(sysdate), H_CODE_, UPACK_, SRC_NAME_, TROLLEY_
  );
  commit;

EXCEPTION WHEN OTHERS THEN
    LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.CUSTOMS_INV_REG_INSERT_DATA', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

END CUSTOMS_INV_REG_INSERT_DATA;



--
--  Удалим инвойсы
--
PROCEDURE del_custom_register
(
    v_id    in number
)
IS
BEGIN
    tmp_sql := 'delete from customs_inv_data_as_is where inv_id ='||v_id;
    delete from customs_inv_data_as_is where inv_id = v_id;
    tmp_sql := 'delete from customs_inv_register where inv_id ='||v_id;
    delete from customs_inv_register where inv_id = v_id;
    commit;

  EXCEPTION WHEN OTHERS THEN
    LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.del_custom_register', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end del_custom_register;



--
--  Достанем сырой ФИТО PACK
--
PROCEDURE get_custom_register_asis_pack
(
    IPP_ID_     in integer,
    split_rose_ in integer,
    cursor_     out ref_cursor
)
is
    v_id_dep number;
begin

  begin
      SELECT a.id_departments into v_id_dep
      FROM customs_inv_register a
      where a.ipp_id = IPP_ID_ and rownum=1
      ;
  EXCEPTION WHEN no_data_found THEN v_id_dep := 0;
  end;

      open cursor_ for
        SELECT /*+ NO_CPU_COSTING */ a.inv_id, a.invoice_data_as_is_id, a.order_number, a.height, a.diametr, a.trucks, a.title, a.packing_amount
           , a.amount_in_the_pack, a.units, a.packing_marks, a.description, a.hol_country, a.price, a.summ
           , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
           --, a.hol_sub_type
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then a.hol_sub_type || (case when instr(a.description,' ECUA ') > 0 then ' ECUADOR' else ' DUTCH' end ) else a.hol_sub_type end hol_sub_type
           , a.recognised, a.date_in, a.trolley, a.h_code, a.UPACK

           , a.src_trolley, a.SRC_NAME
           , dense_rank() over(PARTITION by trucks order by trolley, src_trolley) as trolley_calc

           , a.pd, b.name_ru as pd_ru, b.id
           , c.id as ft_id, c.STEM_WEIGHT, c.CUST_REGN
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end orderby
           , case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.name_cat_ru || (case when instr(a.description,' ECUA ') > 0 then ' эквадор' else ' голландия' end ) else c.name_cat_ru end f_type
           , e.fito_id as FN_ID, e.fito_name as f_name_ru
           , show_weight_formula(c.id,a.description,a.height,0) as type_dop
           , v_id_dep as id_dep
           , split_rose_ as split_rose

        FROM customs_inv_data_as_is a, countries e, customs_inv_register b
            , fito_category b, customs_weight c
            --, (select FN_ID, case when fito_name is null then F_NAME_RU else fito_name end F_NAME_RU, NAME_CODE, F_NAME_RU as firma_name from FLOWER_NAMES where ID_DEPARTMENTS = v_id_dep) d
            , (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = v_id_dep) e
        where a.inv_id = b.inv_id and b.ipp_id = IPP_ID_
            and lower(a.hol_country) = lower(e.country_eng(+))
            and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
            and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
            --and a.h_code = d.NAME_CODE(+)
            and (
              upper(a.title) = upper(e.F_NAME(+)) and upper(a.h_code) = upper(e.name_code(+))
            )
        order by
            case when (split_rose_=1 and v_id_dep = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end
            , a.description
        ;

  EXCEPTION WHEN OTHERS THEN
    LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_register_asis_pack', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_register_asis_pack;



--
--  Статистика по фито типам PACK
--
PROCEDURE get_custom_reg_pd_total_pack
(
    IPP_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
)
is
begin
   if (param_ = 0) then
      open cursor_ for
            SELECT a.trucks, a.pd, sum(a.units) as total
            FROM customs_inv_data_as_is a, customs_inv_register b
            where a.inv_id = b.inv_id and b.ipp_id = IPP_ID_
            group by a.trucks, a.pd
            order by a.trucks, a.pd
            ;
   else
      open cursor_ for
            SELECT a.pd, sum(a.units) as total
            FROM customs_inv_data_as_is a, customs_inv_register b
            where a.inv_id = b.inv_id and b.ipp_id = IPP_ID_
            group by a.pd
            order by a.pd
            ;
   end if;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_reg_pd_total_pack', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_reg_pd_total_pack;





--
--  Стату для
--
PROCEDURE get_custom_reg_asis_total_pack
(
    IPP_ID_  in integer,
    param_   in integer,
    cursor_  out ref_cursor
)
is
    v_id_dep number;
begin

  SELECT a.id_departments into v_id_dep
      FROM customs_inv_register a
      where a.ipp_id = IPP_ID_ and rownum=1
  ;

  if v_id_dep = 61 then
    if (param_ = 0) then
      open cursor_ for
        select trucks, pd, pd_ru, f_type, county_ru
            , sum(units) as total, get_spec_pack(IPP_ID_, pd, trucks) as spec
        from (
            SELECT a.trucks, a.units, a.title, a.hol_country, a.hol_sub_type, a.trolley, a.pd, a.summ, a.price, a.height, a.diametr
               , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
               , b.name_ru as pd_ru, b.id
               , c.id as ft_id, c.name_cat_ru as f_type
            FROM customs_inv_data_as_is a, fito_category b, customs_weight c, countries e, customs_inv_register z
            where a.inv_id = z.inv_id and z.ipp_id = IPP_ID_
                and lower(a.hol_country) = lower(e.country_eng(+))
                and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
                and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
        )
        group by trucks, f_type, county_ru, pd, pd_ru
        order by trucks, f_type, county_ru, pd, pd_ru
        ;
    else
      open cursor_ for
        select pd, pd_ru, f_type, county_ru
            , sum(units) as total, get_spec_pack(IPP_ID_, pd, 0) as spec
        from (
            SELECT a.trucks, a.units, a.title, a.hol_country, a.hol_sub_type, a.trolley, a.pd, a.summ, a.price, a.height, a.diametr
               , decode(upper(a.hol_country), '', 'Нидерланды', e.country) as county_ru
               , b.name_ru as pd_ru, b.id
               , c.id as ft_id, c.name_cat_ru as f_type
            FROM customs_inv_data_as_is a, fito_category b, customs_weight c, countries e, customs_inv_register z
            where a.inv_id = z.inv_id and z.ipp_id = IPP_ID_
                and lower(a.hol_country) = lower(e.country_eng(+))
                and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = v_id_dep
                and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = v_id_dep
        )
        group by f_type, county_ru, pd, pd_ru
        order by f_type, county_ru, pd, pd_ru
        ;
    end if;
  end if;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custom_reg_asis_total_pack', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_custom_reg_asis_total_pack;


--
--  Достанем сетку весов
--
PROCEDURE get_weights
(
    v_id_dep  in integer,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    SELECT a.id, a.name_cat, a.name_cat_ru, a.stem_weight, a.id_dep, a.make_info, a.cust_regn, a.orderby
    FROM customs_weight a
    WHERE a.id_dep = v_id_dep
    order by a.ORDERBY, a.name_cat
    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_weights', tmp_sql);
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end get_weights;


--
--  Достанем ФИТО категории с переводом
--
PROCEDURE GET_FITO
(
    ID_DEPARTMENTS_   in number,
    cursor_           out ref_cursor
)
is
begin

  open cursor_ for
        SELECT a.id, a.name_eng, a.name_ru, a.id_dep, a.name_eng_full
        FROM fito_category a
        WHERE id_dep = ID_DEPARTMENTS_
        order by name_eng
        ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.GET_FITO', '');
       RAISE_APPLICATION_ERROR (-20227, 'Запрос не выполнился. ' || SQLERRM);

end GET_FITO;


--
--  Удалим ФИТО категории с переводом
--
PROCEDURE DEL_FITO
(
    v_id              in out number
)
is
begin
--    select count(1) into cnt_ from fffffff where id_fito = v_id;
--    if cnt_ > 0 then
--        v_id := -1;
--    else
        tmp_sql := 'delete from fito_category where id ='||v_id;
        delete from fito_category where id = v_id
        ;
--    end if;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.DEL_FITO', tmp_sql);
       RAISE_APPLICATION_ERROR (-20229, 'Запрос не выполнился. ' || SQLERRM);

end DEL_FITO;


--
--  Удалим вес
--
PROCEDURE del_weights
(
    v_id              in out number
)
is
begin
    tmp_sql := 'delete from CUSTOMS_WEIGHT_FORMULA where id_w = '||v_id;
    delete from CUSTOMS_WEIGHT_FORMULA where id_w = v_id;
    tmp_sql := 'delete from customs_weight where id = '||v_id;
    delete from customs_weight where id = v_id;
    commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.del_weights', tmp_sql);
       RAISE_APPLICATION_ERROR (-20240, 'Запрос не выполнился. ' || SQLERRM);

end del_weights;



END;
/

create or replace public synonym custom_pkg for creator.custom_pkg
-- End of DDL Script for Package Body CREATOR.CUSTOM_PKG

