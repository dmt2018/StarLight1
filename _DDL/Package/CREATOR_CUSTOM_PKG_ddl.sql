-- Start of DDL Script for Package Body CREATOR.CUSTOM_PKG
-- Generated 25-сен-2016 1:34:14 from CREATOR@STAR_NEW

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
               , a.cource
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

         --,decode(nom.F_NAME_RU,'',hh.f_name_ru,nom.F_NAME_RU)--neverno
         , n.fito_id as FN_ID, nvl(n.fito_name, nom.F_NAME_RU) as f_name_ru--neverno

         --, n.fito_id as FN_ID, nvl(n.fito_name, hh.f_name_ru) as f_name_ru -- verno



           , show_weight_formula(c.id,a.description,a.height,0) as type_dop
           , v_id_dep as id_dep
           , split_rose_ as split_rose
           , a.remark

        FROM CUSTOMS_INV_DATA_AS_IS a
          left outer join countries e on lower(e.country_eng) = lower(a.hol_country)
          left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
          left outer join customs_weight c on lower(c.name_cat) = lower(a.hol_sub_type) and c.id_dep = v_id_dep
          left outer join (
            SELECT distinct fn.name_code, upper(fn.f_name) as f_name, n.f_name_ru, fn.remarks
            FROM FLOWER_NAME_TRANSLATIONS fn, flower_names n, (select max(fn_id) as fn_id, remarks from FLOWER_NAME_TRANSLATIONS /*where remarks is null*/ group by name_code, remarks) fn2
            where fn.id_departments = v_id_dep /*and remarks is null*/ and nvl(fn.remarks,'') = nvl(fn2.remarks,'')
              and fn.fn_id = n.fn_id and fn.fn_id = fn2.fn_id
            ) nom on nom.f_name = upper(a.title) and nom.name_code = H_CODE and nvl(nom.remarks,'') = nvl(a.remark,'')
          left outer join (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = v_id_dep) n on upper(n.F_NAME) = upper(a.title) and upper(n.name_code) = upper(a.h_code)

        where a.INV_ID = INV_ID_

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
            SELECT a.trucks, a.pd, sum(a.units) as total, a.HOL_COUNTRY
            FROM customs_inv_data_as_is a
            where a.INV_ID = INV_ID_
            group by a.trucks, a.HOL_COUNTRY, a.pd
            order by a.trucks, a.HOL_COUNTRY, a.pd
            ;
   else
      open cursor_ for
            SELECT a.pd, sum(a.units) as total, a.HOL_COUNTRY
            FROM customs_inv_data_as_is a
            where a.INV_ID = INV_ID_
            group by a.HOL_COUNTRY, a.pd
            order by a.HOL_COUNTRY, a.pd
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
   str_tmp varchar2(550);
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
    v_truck   in integer,
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


--Phytoes for cut flowers.xls
  if (v_vid = 4) then
    open cursor_ for
         SELECT decode(a.hol_country,'','Holland',a.hol_country) as hol_country, a.pd as hol_sub_type, sum(a.units) as units, sum(round(STEM_WEIGHT*a.units)) as netto
           , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
           , NAME_RU, substr(CUST_REGN,1,4) as CUST_REGN, nvl(t.MNEMO,a.hol_country) cntr
           , decode(substr(CUST_REGN,1,4),'0603','Срезы цветов','0604','Срезы декоративной зелени свежие','') as akt_category
           , max(e.telega) as telega, max(e.poddon) as poddon
         FROM customs_inv_data_as_is a
           --left outer join customs_weight c on lower(c.name_cat) = lower(a.hol_sub_type) and c.ID_DEP = v_id_dep
           left outer join (
              select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                     , w.weight_tank, w.weight_pack
                from customs_weight w
                    left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                where w.ID_DEP = v_id_dep
              ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                    (c.fo_rule = 3 and c.fo_value <= a.height)
                    or
                    (c.fo_rule = 2 and c.fo_value > a.height)
                    or
                    (c.fo_rule = 0)
              )

           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep -- c.ID_DEP
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
           left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
         WHERE a.INV_ID = v_id_inv and to_number(a.TRUCKS) = v_truck
         group by decode(a.hol_country,'','Holland',a.hol_country), a.pd, NAME_RU, substr(CUST_REGN,1,4), nvl(t.MNEMO,a.hol_country)
         order by decode(a.hol_country,'','Holland',a.hol_country), a.pd
    ;
  end if;

  if (v_vid = 5) then
    open cursor_ for
         SELECT decode(a.hol_country,'','Holland',a.hol_country) as hol_country, sum(a.units) as units, round(sum(STEM_WEIGHT*a.units)) as netto
           , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
           , nvl(t.MNEMO,a.hol_country) cntr
         FROM customs_inv_data_as_is a
           left outer join (
              select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                     , w.weight_tank, w.weight_pack,w.orderby
                from customs_weight w
                    left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                where w.ID_DEP = v_id_dep
              ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                    (c.fo_rule = 3 and c.fo_value <= a.height)
                    or
                    (c.fo_rule = 2 and c.fo_value > a.height)
                    or
                    (c.fo_rule = 0)
              )
           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep -- c.ID_DEP
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
           left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
         WHERE a.INV_ID = v_id_inv and to_number(a.TRUCKS) = v_truck
         group by  decode(a.hol_country,'','Holland',a.hol_country), nvl(t.MNEMO,a.hol_country)
         order by decode(a.hol_country,'','Holland',a.hol_country);

  end if;


  if (v_vid = 6) then
    open cursor_ for
      select CUST_REGN, akt_category, cntr, sum(units) as units from (
         SELECT decode(a.hol_country,'','Holland',a.hol_country) as hol_country, a.pd as hol_sub_type, sum(a.units) as units, round(sum(STEM_WEIGHT*a.units)) as netto
           , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
           , NAME_RU, substr(CUST_REGN,1,4) as CUST_REGN, nvl(t.MNEMO,a.hol_country) cntr
           , decode(substr(CUST_REGN,1,4),'0603','Срезы цветов','0604','Срезы декоративной зелени свежие','') as akt_category
           , max(e.telega) as telega, max(e.poddon) as poddon
         FROM customs_inv_data_as_is a
           left outer join (
              select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                     , w.weight_tank, w.weight_pack
                from customs_weight w
                    left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                where w.ID_DEP = v_id_dep
              ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                    (c.fo_rule = 3 and c.fo_value <= a.height)
                    or
                    (c.fo_rule = 2 and c.fo_value > a.height)
                    or
                    (c.fo_rule = 0)
              )

           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep -- c.ID_DEP
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
           left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
         WHERE a.INV_ID = v_id_inv and to_number(a.TRUCKS) = v_truck
         group by decode(a.hol_country,'','Holland',a.hol_country), a.pd, NAME_RU, substr(CUST_REGN,1,4), nvl(t.MNEMO,a.hol_country)
      ) a
      group by CUST_REGN, akt_category, cntr
      order by CUST_REGN, cntr;
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
    , v_weight_pack  in number
    , v_weight_tank  in number
    , v_id           in out number
)
is
begin

    if v_id > 0 then
        tmp_sql := 'update customs_weight set NAME_CAT='||V_NAME_CAT||',NAME_CAT_RU='||V_NAME_CAT_RU||',stem_weight='||v_weight||',make_info='||v_make_info||',cust_regn='||v_cust_regn||',orderby='||v_orderby||',weight_pack='||v_weight_pack||',weight_tank='||v_weight_tank||' where id='||v_id;
        update customs_weight set NAME_CAT = V_NAME_CAT, NAME_CAT_RU = V_NAME_CAT_RU, stem_weight = v_weight, weight_pack = v_weight_pack, weight_tank = v_weight_tank
            , make_info = v_make_info, cust_regn = v_cust_regn, orderby = v_orderby
            where id = v_id;
    else
        tmp_sql := 'insert into customs_weight values(seq_weight.nextval,'||V_NAME_CAT||','||V_NAME_CAT_RU||','||v_weight||','||v_ID_DEP||','||v_make_info||','||v_cust_regn||','||v_orderby||','||v_weight_pack||','||v_weight_tank||')';
        insert into customs_weight values(seq_weight.nextval, V_NAME_CAT, V_NAME_CAT_RU, v_weight, v_ID_DEP, v_make_info, v_cust_regn, v_orderby, v_weight_pack, v_weight_tank)
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
  IN_FILE                in varchar2,
  IN_COURCE              in number
)
as
    v_idd  number;
begin

  SELECT CUSTOMS_INV_ID.NEXTVAL INTO v_idd FROM DUAL;
  if (v_idd > 0) then
     tmp_sql := 'INSERT INTO CUSTOMS_INV_REGISTER (INV_ID, INV_DATE, COMMENTS, INV_SUM, STATUS, ID_DEPARTMENTS, S_ID_DEFAULT, C_ID_DEFAULT, SUPPLIER_DATE, SUPPLIER_NUMBER, IN_FILE, TRUCK_DATE, COURCE) ';
     tmp_sql := tmp_sql || 'VALUES('||v_idd||',TRUNC('||IN_INV_DATE||'),'||IN_COMMENTS||',0,0,'||IN_ID_DEPARTMENTS||','||IN_S_ID||',NULL,TRUNC('||IN_SUP_INV_DATE||'),'||IN_SUP_NUMBER||','||IN_FILE||','||IN_TRUCK_DATE||','||IN_COURCE||')';
     INSERT INTO CUSTOMS_INV_REGISTER (INV_ID, INV_DATE, COMMENTS, INV_SUM, STATUS, ID_DEPARTMENTS, S_ID_DEFAULT, C_ID_DEFAULT, SUPPLIER_DATE, SUPPLIER_NUMBER, IN_FILE, TRUCK_DATE, COURCE)
            VALUES(v_idd, TRUNC(IN_INV_DATE), IN_COMMENTS, 0, 0, IN_ID_DEPARTMENTS, IN_S_ID, NULL, TRUNC(IN_SUP_INV_DATE), IN_SUP_NUMBER, IN_FILE, IN_TRUCK_DATE, IN_COURCE);
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
    SRC_NAME_                   in varchar2,
    REMARK_                     in varchar2
)
IS
  INV_DATA_AS_IS_ID_ number;
  v_truck     varchar2(2);
  v_trolley   number;
  --descr varchar2(100);
BEGIN

  SELECT CUSTOMS_INV_DATA_AS_IS_ID.NEXTVAL INTO INV_DATA_AS_IS_ID_ FROM DUAL;

  tmp_sql := 'truck='||TRUCS_;
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
  tmp_sql := 'trolley='||TROLLEY_;
  if (length(TROLLEY_) > 0) then
    --v_trolley := to_number(substr(TROLLEY_, instr(TROLLEY_,'.', -1)+1, length(TROLLEY_)));
    select to_number(
      substr(
        TROLLEY_,
        instr(TROLLEY_,'.', -1)+1,
        case when instr(TROLLEY_,'-')>0 then (instr(TROLLEY_,'-', -1) - instr(TROLLEY_,'.', -1) - 1) else length(TROLLEY_) end
      )
    ) into v_trolley from dual;
  end if;

--select aaa.f_name_ru into descr from flower_names aaa, flower_name_translations bbb where aaa.fn_id=bbb.fn_id;
--select aaa.f_name_ru into descr from flower_names aaa, CUSTOMS_INV_DATA_AS_IS bbb where aaa.FN_ID=bbb.INVOICE_DATA_AS_IS_ID;

  tmp_sql := 'INSERT INTO CUSTOMS_INV_DATA_AS_IS VALUES ('||INV_ID_||','||INV_DATA_AS_IS_ID_||','||ORDER_NUMBER_||','''||v_truck||''','''||PACKING_MARKS_||''','||PACKING_AMOUNT_||','||AMOUNT_PER_UNIT_||','||UNITS_||','||PRICE_||','||SUMM_||','''||TITLE_||''','''||DESCRIPTION_||''','''||HOL_COUNTRY_||''','''||HOL_SUB_TYPE_||''','''||PD_||''','||DIAMETR_||','||HEIGHT_||','||v_trolley||',0,trunc(sysdate),'''||H_CODE_||''','''||UPACK_||''','''||SRC_NAME_||''','''||TROLLEY_||''')';
  INSERT INTO CUSTOMS_INV_DATA_AS_IS
  VALUES (
    INV_ID_, INV_DATA_AS_IS_ID_, ORDER_NUMBER_, v_truck, PACKING_MARKS_, PACKING_AMOUNT_, AMOUNT_PER_UNIT_, UNITS_, PRICE_, SUMM_,
    TITLE_,DESCRIPTION_ , HOL_COUNTRY_, HOL_SUB_TYPE_, PD_, DIAMETR_, HEIGHT_, v_trolley, 0, trunc(sysdate), H_CODE_, UPACK_, SRC_NAME_, TROLLEY_
    , REMARK_
  );
  commit;--decode(SRC_NAME_,'',descr,SRC_NAME_)

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
    SELECT a.id, a.name_cat, a.name_cat_ru, a.stem_weight, a.id_dep, a.make_info, a.cust_regn, a.orderby, a.weight_pack, a.weight_tank
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





--
--  Удалим упаковку
--
PROCEDURE del_packing
(
    v_id              in out number
)
is
begin
    tmp_sql := 'delete from customs_packing where id = '||v_id;
    delete from customs_packing where id = v_id;
    commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.del_packing', tmp_sql);
       RAISE_APPLICATION_ERROR (-20241, 'Запрос не выполнился. ' || SQLERRM);

end del_packing;


--
--  Запишем упаковку
--
PROCEDURE save_packing
(
    v_ID_DEP            in number
    , V_packing         in VARCHAR2
    , V_nullable        in number
    , v_packing_weight  in number
    , v_id              in out number
)
is
begin
    if v_id > 0 then
        tmp_sql := 'update customs_packing set packing='''||V_packing||''', nullable='||V_nullable||', packing_weight='||v_packing_weight||' where id='||v_id;
        update customs_packing set packing = V_packing, nullable = V_nullable, packing_weight = v_packing_weight
            where id = v_id;
    else
        tmp_sql := 'insert into customs_packing values(0,'''||V_packing||''','||V_nullable||','||v_packing_weight||','||v_ID_DEP||')';
        insert into customs_packing values(seq_weight.nextval, V_packing, V_nullable, v_packing_weight, v_ID_DEP)
        returning id into v_id;
    end if;
    commit;
  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.save_packing', tmp_sql);
       RAISE_APPLICATION_ERROR (-20242, 'Запрос не выполнился. ' || SQLERRM);

end save_packing;



--
--  Достанем тару инвойса
--
PROCEDURE get_inv_equipment
(
    v_id_inv  in integer,
    v_id_dep  in integer,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select a.trucks, a.hol_sub_type, a.orderby, a.id, a.inv_id, b.telega, b.poddon from (
       SELECT distinct a.trucks, a.hol_sub_type, c.orderby, c.id, a.INV_ID
         FROM customs_inv_data_as_is a
         left outer join customs_weight c on lower(c.name_cat) = lower(a.hol_sub_type) and c.id_dep = v_id_dep
            WHERE a.INV_ID = v_id_inv
    ) a
    left outer join customs_inv_equipment b on b.id = a.id and b.inv_id = a.inv_id and b.truck = a.trucks
    order by a.trucks, a.orderby, a.hol_sub_type;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_inv_equipment', tmp_sql);
       RAISE_APPLICATION_ERROR (-20243, 'Запрос не выполнился. ' || SQLERRM);

end get_inv_equipment;


--
--  Устанавливаем тару инвойса
--
PROCEDURE set_inv_equipment
(
    v_id_inv  in integer,
    v_id      in integer,
    v_truck   in integer,
    v_telega  in integer,
    v_poddon  in integer
)
is
  --v_id_dep  number;
begin
  --select ID_DEPARTMENTS into v_id_dep from customs_inv_register where id_inv = v_id_inv;

  select count(*) into tmp_cnt from customs_inv_equipment where inv_id = v_id_inv and id = v_id and truck = v_truck;
  if tmp_cnt = 0 then
    insert into customs_inv_equipment values(v_id, v_id_inv, v_truck, v_telega, v_poddon);
  else
    update customs_inv_equipment set telega = v_telega, poddon = v_poddon where inv_id = v_id_inv and id = v_id and truck = v_truck;
  end if;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.set_inv_equipment', tmp_sql);
       RAISE_APPLICATION_ERROR (-20244, 'Запрос не выполнился. ' || SQLERRM);

end set_inv_equipment;




--
--  Достаем данные для пояснений
--
PROCEDURE get_additional_information
(
    v_id_inv  in integer,
    cursor_   out ref_cursor
)
is
    v_id_dep number;
begin

  SELECT a.id_departments into v_id_dep
      FROM customs_inv_register a
      where a.INV_ID = v_id_inv and rownum=1
  ;

  open cursor_ for
    select trucks, sum(units) as units, title, hol_country, hol_sub_type, pd, county_ru, F_NAME_RU, FO_NAME
    from (
      select ci.trucks, ci.units, ci.title, ci.description, ci.hol_country, ci.hol_sub_type, ci.pd, ci.height
        , decode(upper(ci.hol_country), '', 'Нидерланды', e.country) as county_ru
        , nvl(fin.fito_name, n.F_NAME_RU) as F_NAME_RU
        , ww.fo_rule, ww.fo_value, ww.FO_NAME
      from customs_inv_data_as_is ci
        left outer join countries e on lower(e.country_eng) = lower(ci.hol_country)

        --left outer join nomenclature_mat_view n on n.H_NAME = ci.description and n.id_departments = v_id_dep
        left outer join (SELECT distinct fn.f_name_ru, fn.f_name FROM fn_view fn where fn.id_departments = v_id_dep) n on upper(n.f_name) = upper(ci.title)

        left outer join (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = v_id_dep) fin on upper(fin.F_NAME) = upper(ci.title) and upper(fin.name_code) = upper(ci.h_code)
        left outer join fito_category f on upper(f.name_eng) = upper(ci.pd) and f.id_dep = v_id_dep
        inner join (
          select w.NAME_CAT, nvl(wf.fo_rule,0) as fo_rule, wf.fo_value, wf.FO_NAME
            from customs_weight_formula wf, customs_weight w
            where w.ID_DEP = v_id_dep and w.id = wf.id_w(+) and w.MAKE_INFO = 1
          ) ww on ww.NAME_CAT = ci.hol_sub_type
              and (
                (ww.fo_rule = 3 and ww.fo_value <= ci.height)
                or
                (ww.fo_rule = 2 and ww.fo_value > ci.height)
                or
                (ww.fo_rule = 0)
              )
      where ci.inv_id = v_id_inv
    ) a
    group by trucks, title, hol_country, hol_sub_type, pd, county_ru, F_NAME_RU, fo_rule, FO_NAME
    order by trucks, county_ru, fo_rule, FO_NAME
    ;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_additional_information', tmp_sql);
       RAISE_APPLICATION_ERROR (-20245, 'Запрос не выполнился. ' || SQLERRM);

end get_additional_information;



-- Данные по таможенной сетке

--
--  Таможенная сетка весов
--
PROCEDURE get_custcoef
(
    v_id_dep  in integer,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    SELECT a.id, a.id_w, a.fs_country_id, a.fo_value
      , c.name_cat_ru
      , c.name_cat
      , nvl(n.country, b.COUNTRY) as country
      , a.ID_DEPARTMENTS
      FROM customs_weight_group_settings a
        left outer join (select 0 as c_id, 'Any country' as country from dual) n on n.C_ID = a.fs_country_id
        left outer join countries b on b.C_ID = a.fs_country_id
        inner join customs_weight c on c.id = a.id_w and c.ID_DEP = a.ID_DEPARTMENTS
      where a.ID_DEPARTMENTS = v_id_dep
      order by b.COUNTRY, ORDERBY
    ;
  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_custcoef', tmp_sql);
       RAISE_APPLICATION_ERROR (-20246, 'Запрос не выполнился. ' || SQLERRM);

end get_custcoef;


--
--  Запишем таможенную сетку весов
--
PROCEDURE save_custcoef
(
    v_id            in out number
    , v_id_w        in number
    , v_country_id  in number
    , v_value       in number
    , V_ID_DEP      in number
)
is
begin
  select count(*) into tmp_cnt from customs_weight_group_settings where fs_country_id = v_country_id and id_w = v_id_w and ID_DEPARTMENTS = V_ID_DEP;
  if tmp_cnt = 1 then
    select id into v_id from customs_weight_group_settings where fs_country_id = v_country_id and id_w = v_id_w and ID_DEPARTMENTS = V_ID_DEP;
  end if;

    if v_id > 0 then
        tmp_sql := 'update customs_weight_group_settings set fs_country_id = '||v_country_id||', fo_value = '||v_value||' where id ='||v_id;
        update customs_weight_group_settings set fs_country_id = v_country_id, fo_value = v_value where id = v_id
        ;
    else
        tmp_sql := 'insert into customs_weight_group_settings values(seq_weight.nextval, '||v_id_w||', '||v_country_id||', '||v_value||', '||V_ID_DEP||')';
        insert into customs_weight_group_settings values(seq_weight.nextval, v_id_w, v_country_id, v_value, V_ID_DEP)
        returning id into v_id
        ;
    end if;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.save_custcoef', tmp_sql);
       RAISE_APPLICATION_ERROR (-20247, 'Запрос не выполнился. ' || SQLERRM);

end save_custcoef;


--
--  Удалим таможенную сетку весов
--
PROCEDURE del_custcoef
(
    v_id              in out number
)
is
begin
  tmp_sql := 'delete from customs_weight_group_settings where id ='||v_id;
  delete from customs_weight_group_settings where id = v_id;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.del_custcoef', tmp_sql);
       RAISE_APPLICATION_ERROR (-20248, 'Запрос не выполнился. ' || SQLERRM);

end del_custcoef;



--
--  Клонируем таможенную сетку весов
--
PROCEDURE copy_cust_coef
(
    V_ID_DEP         in number
    , V_CUR_COUNTRY  in number
    , V_SEL_COUNTRY  in number
)
is
begin

  insert into customs_weight_group_settings (
    select seq_weight.nextval, a.ID_W, V_SEL_COUNTRY, a.FO_VALUE, a.ID_DEPARTMENTS
    from customs_weight_group_settings a
    where a.FS_COUNTRY_ID = V_CUR_COUNTRY and a.ID_DEPARTMENTS = V_ID_DEP
  );
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'copy_cust_coef.save_custcoef', tmp_sql);
       RAISE_APPLICATION_ERROR (-20247, 'Запрос не выполнился. ' || SQLERRM);

end copy_cust_coef;



--
--  Для отчета по фито список групп с именами
--
PROCEDURE get_fito_raport_page2
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    'select a.*,
      case
        when fo_rule = 2 and cust_regn = 0603110000 then ''ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ''
        when fo_rule = 3 and cust_regn = 0603110000 then ''ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ''
        else null
      end fo_rule_name
      , NAME_CAT_RU || '' '' || case when fo_rule = 2 and cust_regn = 0603110000 then ''ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'' when fo_rule = 3 and cust_regn = 0603110000 then ''ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'' else '''' end || '' '' || COUNTRY as comp_name
    from (
      SELECT CUST_REGN, a.TRUCKS, NAME_CAT_RU, fo_rule, t.COUNTRY, orderby
        , decode(a.hol_country,'''',''Holland'',a.hol_country) as hol_country
        , WM_CONCAT( distinct n.fito_name) AS fito_names
      FROM customs_inv_data_as_is a
        left outer join (
           select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                  , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
             from customs_weight w
                 left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
             where w.ID_DEP = '||v_id_dep||'
           ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
               and (
                 (c.fo_rule = 3 and c.fo_value <= a.height)
                 or
                 (c.fo_rule = 2 and c.fo_value > a.height)
                 or
                 (c.fo_rule = 0)
           )
        left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = '||v_id_dep||'
        left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
        left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
        left outer join (SELECT distinct fn.f_name_ru, fn.f_name FROM fn_view fn where fn.id_departments = '||v_id_dep||') nom on upper(nom.f_name) = upper(a.title)
        left outer join (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = '||v_id_dep||') n on upper(n.F_NAME) = upper(a.title) and upper(n.name_code) = upper(a.h_code)

      WHERE a.INV_ID = '||v_inv_id||' and to_number(a.TRUCKS) = '||v_truck||'
      group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, fo_rule, decode(a.hol_country,'''',''Holland'',a.hol_country), t.COUNTRY
    ) a
    order by TRUCKS, orderby, NAME_CAT_RU, fo_rule, country
    ';

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_fito_raport_page2', tmp_sql);
       RAISE_APPLICATION_ERROR (-20249, 'Запрос не выполнился. ' || SQLERRM);

end get_fito_raport_page2;

--
--  Для отчета по фито список групп с коробками и баками
--
PROCEDURE get_fito_raport_page1
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select CUST_REGN, TRUCKS, NAME_CAT_RU, NAME_CAT, fo_rule, hol_country, COUNTRY, orderby
      , sum(units) as units, sum(netto) as netto, sum(brutto) as brutto, sum(summ) as summ, max(telega) as telega, max(poddon) as poddon, fo_rule_name, comp_name
      , sum(korobki) as packs
      , sum(baki) as sideboards
    from (
      select a.*
        , case when counter = 1 and upack is null then pp else 0 end korobki
        , case when counter = 1 and upack is not null then pp else 0 end baki
      from (
        select a.*
          , row_number() over(partition by src_trolley order by units desc) counter
          , case
              when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'
              when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'
              else null
            end fo_rule_name
          , NAME_CAT_RU || ' ' || case when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ' when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ' else '' end || ' ' || COUNTRY as comp_name
        from (
          select c.CUST_REGN, a.src_trolley, a.UPACK, min(a.PACKING_AMOUNT) pp, sum(a.units) as units
                 , a.TRUCKS, NAME_CAT_RU, NAME_CAT
                 , fo_rule
                 , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
                 , t.COUNTRY
                 , orderby
                 , sum(round(STEM_WEIGHT*a.units)) as netto
                 , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
                 , sum(summ) as summ
                 , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
            FROM customs_inv_data_as_is a
             left outer join (
                 select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                        , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                 from customs_weight w
                   left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                 where w.ID_DEP = v_id_dep
                ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                     (c.fo_rule = 3 and c.fo_value <= a.height)
                      or
                     (c.fo_rule = 2 and c.fo_value > a.height)
                      or
                     (c.fo_rule = 0)
                    )
              left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
              left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
              left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
            where a.inv_id = v_inv_id and to_number(a.TRUCKS) = v_truck
            group by a.TRUCKS, CUST_REGN, a.src_trolley, a.UPACK, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY
        ) a
      ) a
    ) a
    group by TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, hol_country, COUNTRY, fo_rule_name, comp_name
    order by TRUCKS, orderby, NAME_CAT_RU, fo_rule, country
    ;

/*
    select a.*,
        case
          when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'
          when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'
          else null
        end fo_rule_name
        , NAME_CAT_RU || ' ' || case when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ' when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ' else '' end || ' ' || COUNTRY as comp_name
      from (
         SELECT  CUST_REGN, a.TRUCKS, NAME_CAT_RU, NAME_CAT
           , fo_rule --, fo_value
           , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
           , t.COUNTRY
           , orderby
           , sum(a.units) as units
           , sum(decode(UPACK,'W',1,0)) as sideboards
           , sum(decode(UPACK,'W',0,1)) as packs
           , round(sum(STEM_WEIGHT*a.units)) as netto
           , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
           , sum(summ) as summ
           , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
         FROM customs_inv_data_as_is a
           left outer join (
              select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                     , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                from customs_weight w
                    left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                where w.ID_DEP = v_id_dep
              ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                    (c.fo_rule = 3 and c.fo_value <= a.height)
                    or
                    (c.fo_rule = 2 and c.fo_value > a.height)
                    or
                    (c.fo_rule = 0)
              )
           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
           left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)


         WHERE a.INV_ID = v_inv_id and to_number(a.TRUCKS) = v_truck
         group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY

     ) a
     order by a.TRUCKS, orderby, NAME_CAT_RU, fo_rule, country
     ;
*/
  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_fito_raport_page1', tmp_sql);
       RAISE_APPLICATION_ERROR (-20250, 'Запрос не выполнился. ' || SQLERRM);

end get_fito_raport_page1;




--
--  Для отчета по фито список групп с коробками и баками (часть 2)
--
PROCEDURE get_fito_raport_page1_1
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select hol_country, sum(units) as units, /*case when round(sum(netto)) = 0 then 1 else round(sum(netto)) end netto,*/ sum(netto) as netto, round(sum(brutto)) as brutto from (
    select CUST_REGN, TRUCKS, NAME_CAT_RU, NAME_CAT, fo_rule, hol_country, COUNTRY, orderby
      , sum(units) as units, sum(netto) as netto, sum(brutto) as brutto, sum(summ) as summ, max(telega) as telega, max(poddon) as poddon, fo_rule_name, comp_name
      , sum(korobki) as packs
      , sum(baki) as sideboards
    from (
      select a.*
        , case when counter = 1 and upack is null then pp else 0 end korobki
        , case when counter = 1 and upack is not null then pp else 0 end baki
      from (
        select a.*
          , row_number() over(partition by src_trolley order by units desc) counter
          , case
              when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'
              when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'
              else null
            end fo_rule_name
          , NAME_CAT_RU || ' ' || case when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ' when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ' else '' end || ' ' || COUNTRY as comp_name
        from (
          select c.CUST_REGN, a.src_trolley, a.UPACK, min(a.PACKING_AMOUNT) pp, sum(a.units) as units
                 , a.TRUCKS, NAME_CAT_RU, NAME_CAT
                 , fo_rule
                 , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
                 , t.COUNTRY
                 , orderby
                 , sum(round(STEM_WEIGHT*a.units)) as netto
                 , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
                 , sum(summ) as summ
                 , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
            FROM customs_inv_data_as_is a
             left outer join (
                 select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                        , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                 from customs_weight w
                   left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                 where w.ID_DEP = v_id_dep
                ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                     (c.fo_rule = 3 and c.fo_value <= a.height)
                      or
                     (c.fo_rule = 2 and c.fo_value > a.height)
                      or
                     (c.fo_rule = 0)
                    )
              left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
              left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
              left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
            where a.inv_id = v_inv_id and to_number(a.TRUCKS) = v_truck
            group by a.TRUCKS, CUST_REGN, a.src_trolley, a.UPACK, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY
        ) a
      ) a
    ) a
    group by TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, hol_country, COUNTRY, fo_rule_name, comp_name
    )
    group by hol_country
    order by hol_country
    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_fito_raport_page1_1', tmp_sql);
       RAISE_APPLICATION_ERROR (-20250, 'Запрос не выполнился. ' || SQLERRM);

end get_fito_raport_page1_1;





--
--  Для отчета по фито список групп с ростами
--
PROCEDURE get_fito_raport_page3
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select a.*, rule_name ||' '||decode(fo_rule,0,null,fo_rule_name) as compile_rule_name from (
    select a.*,
      case
        when fo_rule = 2 and cust_regn = '0603110000' then 'ДЛИННА СТЕБЛЯ: 40-65 СМ'
        when fo_rule = 3 and cust_regn = '0603110000' then 'ДЛИННА СТЕБЛЯ: 70-100 СМ'
        when fo_rule = 0 then FO_NAME
        else ''
      end fo_rule_name
      ,case
        when cust_regn = '0603110000' then 'КОД ТОВАРА - '||cust_regn||' СВЕЖИЕ РОЗЫ ('||COUNTRY||')'
        when cust_regn = '0603105000' then 'КОД ТОВАРА - '||cust_regn||' СВЕЖИЕ ХРИЗАНТЕМЫ ('||COUNTRY||')'
        when cust_regn = '0603103000' then 'КОД ТОВАРА - '||cust_regn||' СВЕЖИЕ ОРХИДЕИ ('||COUNTRY||')'
        else ''
      end rule_name
      , case when fo_rule > 0 then 'РОСТ '||height||' СМ' else fo_name end logo_name
    from (
      SELECT CUST_REGN, a.TRUCKS, NAME_CAT_RU, fo_rule, t.COUNTRY, orderby, nvl(FO_NAME,'Ветки') as FO_NAME
        , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
        , sum(a.units) as units
        , height
      FROM customs_inv_data_as_is a
        left outer join (
           select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                  , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
             from customs_weight w
                 left outer join customs_weight_formula wf on wf.id_w = w.id --and wf.fo_rule > 0
             where w.ID_DEP = v_id_dep
           ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
               and (
                 (c.fo_rule = 3 and c.fo_value <= a.height)
                 or
                 (c.fo_rule = 2 and c.fo_value > a.height)
                 or
                 (c.fo_rule = 0 and c.cust_regn = '0603103000')
                 or
                 (c.fo_rule = 0 and instr(a.title,c.fo_value||' ') > 0 )
           )
        left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
        left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
        left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)

      WHERE a.INV_ID = v_inv_id and to_number(a.TRUCKS) = v_truck
        and CUST_REGN in ('0603110000', '0603105000', '0603103000')
      group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, decode(a.hol_country,'','Holland',a.hol_country), fo_rule, t.COUNTRY, nvl(FO_NAME,'Ветки'), height
    ) a ) a
    order by TRUCKS, orderby, NAME_CAT_RU, country, fo_rule, height
    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_fito_raport_page3', tmp_sql);
       RAISE_APPLICATION_ERROR (-20251, 'Запрос не выполнился. ' || SQLERRM);

end get_fito_raport_page3;



--
--  Достанем список товара для второй части фито
--
PROCEDURE get_suplier_list
(
    INV_ID_     in integer,
    v_truck     in integer,
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
    SELECT  SRC_TROLLEY as   PACKING_MARKS, PACKING_AMOUNT, AMOUNT_IN_THE_PACK, UNITS, PACKING_MARKS as BOX, DESCRIPTION, PRICE, SUMM, e.MNEMO, v_truck as truck,
    PACKING_AMOUNT||' x '||AMOUNT_IN_THE_PACK as packing
    FROM customs_inv_data_as_is a
      left outer join countries e on lower(e.country_eng) = lower(a.hol_country)
      left outer join customs_weight c on lower(c.name_cat) = lower(a.hol_sub_type) and c.id_dep = v_id_dep
    where a.INV_ID = INV_ID_ and a.trucks = v_truck /*and PACKING_MARKS in (select PACKING_MARKS from customs_inv_data_as_is group by PACKING_MARKS
having count(*)=1)*/

      order by c.orderby, a.description
  ;

  EXCEPTION
    WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'custom_pkg.get_suplier_list', '');
       RAISE_APPLICATION_ERROR (-20252, 'Запрос не выполнился. ' || SQLERRM);

end get_suplier_list;


--
--  Для отчета по фито список групп с коробками и баками
--
PROCEDURE get_suplier_list2
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
     SELECT CUST_REGN, a.TRUCKS, NAME_CAT_RU, NAME_CAT
       , orderby
       , sum(a.units) as units
       , sum(decode(UPACK,'W',1,0)) as sideboards
       , sum(decode(UPACK,'W',0,1)) as packs
       , round(sum(STEM_WEIGHT*a.units)) as netto
       , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
       , sum(summ) as summ
       , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
       , decode(a.hol_country,'','Holland',a.hol_country) as MNEMO
     FROM customs_inv_data_as_is a
       left outer join (
          select w.id, w.NAME_CAT, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                 , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                 , wf.fo_value, nvl(wf.fo_rule,0) fo_rule
            from customs_weight w
                left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
            where w.ID_DEP = v_id_dep
          ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                    (c.fo_rule = 3 and c.fo_value <= a.height)
                    or
                    (c.fo_rule = 2 and c.fo_value > a.height)
                    or
                    (c.fo_rule = 0)
              )
       left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
       left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
       left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)

     WHERE a.INV_ID = v_inv_id and to_number(a.TRUCKS) = v_truck
     group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, NAME_CAT, decode(a.hol_country,'','Holland',a.hol_country)
     order by a.TRUCKS, orderby, NAME_CAT_RU
  ;
  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_suplier_list2', tmp_sql);
       RAISE_APPLICATION_ERROR (-20253, 'Запрос не выполнился. ' || SQLERRM);

end get_suplier_list2;



--
--  Для отчета по фито список групп с коробками и баками
--
PROCEDURE get_total_list
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin
  open cursor_ for
    select TRUCKS, CUST_REGN, NAME_CAT
      , sum(units) as units, 0 as money, sum(netto) as netto, sum(brutto) as brutto
      , sum(korobki) as packs
      , sum(baki) as sideboards
      , max(STEM_WEIGHT) as netto_by_unit
      , max(weight_tank), max(weight_pack)
      , max(telega) as telega, max(poddon) as poddon
    from (
      select a.*
        , case when counter = 1 and upack is null then pp else 0 end korobki
        , case when counter = 1 and upack is not null then pp else 0 end baki
      from (
        select a.*
          , row_number() over(partition by src_trolley order by units desc) counter
          , case
              when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'
              when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'
              else null
            end fo_rule_name
          , NAME_CAT_RU || ' ' || case when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ' when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ' else '' end || ' ' || COUNTRY as comp_name
        from (
          select c.CUST_REGN, a.src_trolley, a.UPACK, min(a.PACKING_AMOUNT) pp, sum(a.units) as units
                 , a.TRUCKS, NAME_CAT_RU, NAME_CAT
                 , fo_rule
                 , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
                 , t.COUNTRY
                 , orderby
                 , sum(round(STEM_WEIGHT*a.units)) as netto
                 , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
                 , sum(summ) as summ
                 , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
                 , max(c.weight_tank) as weight_tank, max(c.weight_pack) as weight_pack, max(STEM_WEIGHT) as STEM_WEIGHT
            FROM customs_inv_data_as_is a
             left outer join (
                 select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                        , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                 from customs_weight w
                   left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                 where w.ID_DEP = v_id_dep
                ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                     (c.fo_rule = 3 and c.fo_value <= a.height)
                      or
                     (c.fo_rule = 2 and c.fo_value > a.height)
                      or
                     (c.fo_rule = 0)
                    )
              left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
              left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
              left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
            where a.inv_id = v_inv_id and to_number(a.TRUCKS) = v_truck
            group by a.TRUCKS, CUST_REGN, a.src_trolley, a.UPACK, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY
        ) a
      ) a
    ) a
    group by TRUCKS, CUST_REGN, orderby, NAME_CAT
    order by TRUCKS, orderby
  ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_total_list', tmp_sql);
       RAISE_APPLICATION_ERROR (-20254, 'Запрос не выполнился. ' || SQLERRM);

end get_total_list;



--
--  Для отчета по фито список групп с коробками и баками общий (новый от Насти)
--
PROCEDURE get_fito_total_by_group
(
    v_id_dep  in number,
    v_inv_id  in number,
    v_truck   in number,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select TRUCKS, CUST_REGN, NAME_CAT
      , sum(units) as units, 0 as money, sum(netto) as netto, sum(brutto) as brutto
      , sum(korobki) as packs
      , sum(baki) as sideboards
      , max(STEM_WEIGHT) as netto_by_unit
      , max(weight_tank) as weight_tank, max(weight_pack) as weight_pack
      , max(telega) as telega, max(poddon) as poddon
    from (
      select a.*
        , case when counter = 1 and upack is null then pp else 0 end korobki
        , case when counter = 1 and upack is not null then pp else 0 end baki
      from (
        select a.*
          , row_number() over(partition by src_trolley order by units desc) counter
          , case
              when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ'
              when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ'
              else null
            end fo_rule_name
          , NAME_CAT_RU || ' ' || case when fo_rule = 2 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 40 ДО 60 СМ' when fo_rule = 3 and cust_regn = 0603110000 then 'ДЛИННА СТЕБЛЯ ОТ 70 ДО 100 СМ' else '' end || ' ' || COUNTRY as comp_name
        from (
          select c.CUST_REGN, a.src_trolley, a.UPACK, min(a.PACKING_AMOUNT) pp, sum(a.units) as units
                 , a.TRUCKS, NAME_CAT_RU, NAME_CAT
                 , fo_rule
                 , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
                 , t.COUNTRY
                 , orderby
                 , sum(round(STEM_WEIGHT*a.units)) as netto
                 , round(sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0)) as brutto
                 , sum(summ) as summ
                 , max(nvl(e.telega,0)) as telega, max(nvl(e.poddon,0)) as poddon
                 , max(c.weight_tank) as weight_tank, max(c.weight_pack) as weight_pack, max(STEM_WEIGHT) as STEM_WEIGHT
            FROM customs_inv_data_as_is a
             left outer join (
                 select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                        , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
                 from customs_weight w
                   left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
                 where w.ID_DEP = v_id_dep
                ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
                  and (
                     (c.fo_rule = 3 and c.fo_value <= a.height)
                      or
                     (c.fo_rule = 2 and c.fo_value > a.height)
                      or
                     (c.fo_rule = 0)
                    )
              left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
              left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = v_id_dep
              left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
            where a.inv_id = v_inv_id and to_number(a.TRUCKS) = v_truck
            group by a.TRUCKS, CUST_REGN, a.src_trolley, a.UPACK, orderby, NAME_CAT_RU, NAME_CAT, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY
        ) a
      ) a
    ) a
    group by TRUCKS, CUST_REGN, orderby, NAME_CAT
    order by TRUCKS, orderby;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'custom_pkg.get_fito_total_by_group', tmp_sql);
       RAISE_APPLICATION_ERROR (-20255, 'Запрос не выполнился. ' || SQLERRM);

end get_fito_total_by_group;



END;
/

-- Grants for Package Body
GRANT EXECUTE ON custom_pkg TO new_role
/


-- End of DDL Script for Package Body CREATOR.CUSTOM_PKG

