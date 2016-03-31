-- Start of DDL Script for Package Body CREATOR.SYNC_PKG
-- Generated 31-мар-2016 19:47:37 from CREATOR@ORCL

CREATE OR REPLACE 
PACKAGE sync_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2011-11-10 */
/* Изменение: */
/* Для экспорта номенклатуры в регионы */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


--
--  Сформируем названия
--
PROCEDURE make_flower_names
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
--  Сформируем названия
--
PROCEDURE make_flower_names_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
--  Сформируем переводы названий
--
PROCEDURE make_flower_name_trans
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
--  Сформируем переводы названий
--
PROCEDURE make_flower_name_trans_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем типы
--
PROCEDURE make_types
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем типы
--
PROCEDURE make_types_nom
(
    p_debt    in number,
    p_cursor  out ref_cursor
);


--
-- Сформируем типы
--
PROCEDURE make_subtypes
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем цвета
--
PROCEDURE make_colors
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем цвета
--
PROCEDURE make_colors_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем страны
--
PROCEDURE make_countries
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем страны
--
PROCEDURE make_countries_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем спец. для номенклатуры
--
PROCEDURE make_nom_spec
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем спец. для номенклатуры
--
PROCEDURE make_nom_spec_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем инвойс
--
PROCEDURE make_inv_register
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем данные по инвойсу
--
PROCEDURE make_inv_data
(
    p_inv_id   in number,
    p_price    in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем данные по заголовкам цены
--
PROCEDURE make_pricelist_index
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем данные по ценам
--
PROCEDURE make_pricelist_data
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
--  Импорт названий
--
PROCEDURE ins_flower_name
(
    p_fn_id          in number,
    p_f_name_ru      in varchar2,
    p_id_departments in number,
    p_name_code      in varchar2,
    p_fito_name      in varchar2
);

--
--  Импорт названий поставщика
--
PROCEDURE ins_flower_name_trans
(
    p_fn_id                 in number,
    p_f_name                in varchar2,
    p_name_code             in varchar2,
    p_id_departments        in number,
    p_fnt_id                in number,
    p_default_translation   in number,
    p_remarks               in varchar2
);

--
--  Импорт типов
--
PROCEDURE ins_ftype
(
    p_ft_id             in number,
    p_f_type            in varchar2,
    p_ft_mask           in varchar2,
    p_ht_id             in number,
    p_id_departments    in number
);

--
--  Импорт подтипов
--
PROCEDURE ins_fstype
(
    p_fst_id        in number,
    p_f_sub_type    in varchar2,
    p_ft_id         in number,
    p_hol_sub_type  in varchar2,
    p_mnemo         in varchar2,
    p_sub_weight    in number,
    p_PRICE_PREFIX  in varchar2,
    p_tnved         in varchar2,
    p_sub_weight_dry    in number
);

--
--  Импорт цветов
--
PROCEDURE ins_colors
(
    p_col_id        in number,
    p_colour        in varchar2,
    p_ord           in number
);


--
--  Импорт стран
--
PROCEDURE ins_countries
(
    p_c_id           in number,
    p_country        in varchar2,
    p_country_eng    in varchar2,
    p_country_code   in varchar2,
    p_buh_code       in number
);


--
--  Импорт номенклатуры
--
PROCEDURE ins_nomenclature
(
    p_n_id          in number,
    p_fn_id         in number,
    p_fst_id        in number,
    p_s_id          in number,
    p_c_id          in number,
    p_h_code        in varchar2,
    p_h_name        in varchar2,
    p_len           in number,
    p_pack          in number,
    p_col_id        in number,
    p_vbn           in number,
    p_hol_type      in varchar2,
    p_weight        in number,
    p_bar_code      in varchar2,
    p_code          in varchar2,
    p_diameter      in number,
    p_cust_coef     in number,
    p_remarks       in varchar2,
    p_photo         in varchar2,
    p_namecode      in varchar2,
    p_tnved         in varchar2,
    p_WEIGHTDRY     in number,
    p_NOM_NEW       in number,
    p_NOM_START     in number,
    p_NOM_END       in number,
    p_hol_color     in varchar2
);

--
-- Импорт спецификации
--
PROCEDURE ins_nom_spec
(
    p_n_id        in number,
    p_hs_id       in number,
    p_hs_val      in varchar2,
    p_ord         in number
);

--
-- Импорт заголовка инвойса
--
PROCEDURE ins_inv_register
(
    p_inv_id                in number,
    p_inv_date              in date,
    p_comments              in varchar2,
    p_inv_sum               in number,
    p_sended_to_warehouse   in number,
    p_ipp_id                in number,
    p_id_departments        in number,
    p_id_orders             in number,
    p_s_id_default          in number,
    p_c_id_default          in number,
    p_warehouse_sended_date in date,
    p_supplier_date         in date,
    p_supplier_number       in varchar2,
    p_inv_minus             in number,
    p_minus_inv_id          in number,
    p_in_file               in varchar2
);


--
-- Импорт данных инвойса
--
PROCEDURE ins_inv_data
(
    p_inv_id                  in number,
    p_n_id                    in number,
    p_units                   in number,
    p_FINAL_PRICE             in number,
    p_total_sum               in number,
    p_amount_in_the_pack      in number,
    p_invoice_data_id         in number,
    p_invoice_data_as_is_id   in number,
    p_sended_to_warehouse     in number,
    p_gtd                     in varchar2,
    p_storned_data            in number,
    p_gtd_country             in varchar2,
    p_NOM_SPECIAL             in number
);


--
-- Импорт заголовка цен
--
PROCEDURE ins_pricelist_index
(
    p_ppli_id                 in number,
    p_ppl_comment             in varchar2,
    p_ppl_date                in date,
    p_finished                in number,
    p_use_cust_coef           in number,
    p_id_departments          in number,
    p_prime_coast_coefficient in number,
    p_profit_coeffitient      in number,
    p_exchange_rate           in number,
    p_inv_id                  in number,
    p_inv_id2                 in number,
    p_inv_id3                 in number,
    p_inv_id4                 in number,
    p_pack_id                 in number
);


--
-- Импорт данных по ценам
--
PROCEDURE ins_pricelist_data
(
    p_inv_id             in number,
    p_ppl_id             in number,
    p_coming_date        in date,
    p_invoice_amount     in number,
    p_stock_amount       in number,
    p_left_amount        in number,
    p_given_amount       in number,
    p_n_id               in number,
    p_invoice_data_id    in number,
    p_hol_price          in number,
    p_ruble_price        in number,
    p_last_price         in number,
    p_price_pcc          in number,
    p_price_pcc_pc       in number,
    p_total_profit       in number,
    p_final_price        in number,
    p_col                in number
);


--
-- Сформируем поставщиков
--
PROCEDURE make_suppliers
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем поставщиков
--
PROCEDURE make_suppliers_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем подтипы
--
PROCEDURE make_subtypes_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);


--
--  Импорт поставщиков
--
PROCEDURE ins_suppliers
(
    p_s_id          in number,
    p_s_name_ru     in varchar2,
    p_c_id          in number,
    p_need_cust     in number,
    p_ANALYZE_DAYS  in number
);


--
-- Сформируем цвета из накладной
--
PROCEDURE make_colors2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем страны
--
PROCEDURE make_countries2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем поставщиков из накладной
--
PROCEDURE make_suppliers2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем номенклатуру из накладной
--
PROCEDURE make_nomenclature2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем спец. для номенклатуры из накладной
--
PROCEDURE make_nom_spec2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем инвойс из накладной
--
PROCEDURE make_inv_register2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем данные по инвойсу из накладной
--
PROCEDURE make_inv_data2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем данные по заголовкам цены из накладной
--
PROCEDURE make_pricelist_index2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем данные по ценам из накладной
--
PROCEDURE make_pricelist_data2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем подтипы из накладной
--
PROCEDURE make_subtypes2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем типы из накладной
--
PROCEDURE make_types2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
--  Сформируем переводы названий из накладной
--
PROCEDURE make_flower_name_trans2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
--  Сформируем названия из накладной
--
PROCEDURE make_flower_names2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_sync
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_sync_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
);

--
-- Сформируем номенклатуру из накладной
--
PROCEDURE make_nomenclature_sync2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
);


--
-- Сформируем данные по группам клиентов
--
PROCEDURE make_clients_groups
(
    p_cursor   out ref_cursor
);

--
-- Сформируем данные по клиентам
--
PROCEDURE make_clients_list
(
    p_cursor   out ref_cursor
);


END;
/

-- Grants for Package
GRANT EXECUTE ON sync_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY sync_pkg
IS


--
--  Сформируем названия
--
PROCEDURE make_flower_names
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name('||fn_id||','''||f_name_ru||''','||id_departments||','''||name_code||''','''||fito_name||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a.id_departments, replace(a.name_code,'''','`') as name_code, replace(a.fito_name,chr(39),chr(39)||chr(39)) as fito_name
              FROM flower_names a, nomenclature b, invoice_data c
              where a.fn_id = b.fn_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_names', '');

end make_flower_names;



--
--  Сформируем названия из накладной
--
PROCEDURE make_flower_names2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name('||fn_id||','''||f_name_ru||''','||id_departments||','''||name_code||''','''||fito_name||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a.id_departments, replace(a.name_code,'''','`') as name_code, replace(a.fito_name,chr(39),chr(39)||chr(39)) as fito_name
              FROM flower_names a, nomenclature b, store_doc_data c
              where a.fn_id = b.fn_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_names2', '');

end make_flower_names2;


--
--  Сформируем названия
--
PROCEDURE make_flower_names_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name('||fn_id||','''||f_name_ru||''','||id_departments||','''||name_code||''','''||fito_name||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a.id_departments, replace(a.name_code,'''','`') as name_code, replace(a.fito_name,chr(39),chr(39)||chr(39)) as fito_name
              FROM flower_names a, nomenclature_mat_view b
              where a.fn_id = b.fn_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_names_nom', '');

end make_flower_names_nom;


--
--  Импорт названий
--
PROCEDURE ins_flower_name
(
    p_fn_id          in number,
    p_f_name_ru      in varchar2,
    p_id_departments in number,
    p_name_code      in varchar2,
    p_fito_name      in varchar2
)
is
begin
   select count(1) into tmp_cnt
   from flower_names where fn_id = p_fn_id;

   if tmp_cnt = 0 then
      INSERT INTO FLOWER_NAMES (FN_ID, ID_DEPARTMENTS, F_NAME_RU, id_office, date_change) VALUES (p_fn_id, p_id_departments, p_f_name_ru, 1, sysdate);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_flower_name', '');

end ins_flower_name;



--------------------------------------------------------------------------------


--
--  Сформируем переводы названий
--
PROCEDURE make_flower_name_trans
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name_trans('||fn_id||','''||f_name||''','''||name_code||''','||id_departments||','||fnt_id||','||default_translation||','''||remarks||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name,chr(39),chr(39)||chr(39)) as f_name, replace(a.name_code,chr(39),chr(39)||chr(39)) as name_code, a.id_departments, a.fnt_id, a.default_translation, a.remarks
              FROM flower_name_translations a, nomenclature b, invoice_data c
              where a.fn_id = b.fn_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_name_trans', '');

end make_flower_name_trans;



--
--  Сформируем переводы названий из накладной
--
PROCEDURE make_flower_name_trans2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name_trans('||fn_id||','''||f_name||''','''||name_code||''','||id_departments||','||fnt_id||','||default_translation||','''||remarks||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name,chr(39),chr(39)||chr(39)) as f_name, replace(a.name_code,chr(39),chr(39)||chr(39)) as name_code, a.id_departments, a.fnt_id, a.default_translation, a.remarks
              FROM flower_name_translations a, nomenclature b, store_doc_data c
              where a.fn_id = b.fn_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_name_trans2', '');

end make_flower_name_trans2;


--
--  Сформируем переводы названий
--
PROCEDURE make_flower_name_trans_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_flower_name_trans('||fn_id||','''||f_name||''','''||name_code||''','||id_departments||','||fnt_id||','||default_translation||','''||remarks||'''); end;'
        from (
            SELECT distinct a.fn_id, replace(a.f_name,chr(39),chr(39)||chr(39)) as f_name, replace(a.name_code,chr(39),chr(39)||chr(39)) as name_code, a.id_departments, a.fnt_id, a.default_translation, a.remarks
              FROM flower_name_translations a, nomenclature_mat_view b
              where a.fn_id = b.fn_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_flower_name_trans_nom', '');

end make_flower_name_trans_nom;



--
--  Импорт названий поставщика
--
PROCEDURE ins_flower_name_trans
(
    p_fn_id                 in number,
    p_f_name                in varchar2,
    p_name_code             in varchar2,
    p_id_departments        in number,
    p_fnt_id                in number,
    p_default_translation   in number,
    p_remarks               in varchar2
)
is
begin
   select count(1) into tmp_cnt
   from flower_name_translations where fnt_id = p_fnt_id;

   if tmp_cnt = 0 then
      INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS,NAME_CODE,REMARKS, id_office, date_change)
            VALUES (p_fn_id, p_fnt_id, p_f_name, p_id_departments, p_name_code, p_remarks, 1, SYSDATE);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_flower_name_trans', '');

end ins_flower_name_trans;




--------------------------------------------------------------------------------



--
-- Сформируем типы
--
PROCEDURE make_types
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_ftype('||ft_id||','''||f_type||''','''||ft_mask||''','||ht_id||','||id_departments||'); end;'
        from (
            SELECT distinct a.ft_id, a.f_type, a.ft_mask, a.ht_id, a.id_departments
              FROM flower_types a, nomenclature_mat_view b, invoice_data c
              where a.ft_id = b.ft_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_types', '');

end make_types;



--
-- Сформируем типы из накладной
--
PROCEDURE make_types2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_ftype('||ft_id||','''||f_type||''','''||ft_mask||''','||ht_id||','||id_departments||'); end;'
        from (
            SELECT distinct a.ft_id, a.f_type, a.ft_mask, a.ht_id, a.id_departments
              FROM flower_types a, nomenclature_mat_view b, store_doc_data c
              where a.ft_id = b.ft_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_types2', '');

end make_types2;


--
-- Сформируем типы
--
PROCEDURE make_types_nom
(
    p_debt    in number,
    p_cursor  out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_ftype('||ft_id||','''||f_type||''','''||ft_mask||''','||ht_id||','||id_departments||'); end;'
        from (
            SELECT distinct a.ft_id, a.f_type, a.ft_mask, a.ht_id, a.id_departments
              FROM flower_types a, nomenclature_mat_view b
              where a.ft_id = b.ft_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_types_nom', '');

end make_types_nom;


--
--  Импорт типов
--
PROCEDURE ins_ftype
(
    p_ft_id             in number,
    p_f_type            in varchar2,
    p_ft_mask           in varchar2,
    p_ht_id             in number,
    p_id_departments    in number
)
is
begin
   select count(1) into tmp_cnt
   from flower_types where ft_id = p_ft_id;

   if tmp_cnt = 0 then
      INSERT INTO flower_types VALUES (p_ft_id, p_f_type, p_ft_mask, p_ht_id, p_id_departments, 1, sysdate);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_ftype', '');

end ins_ftype;



--------------------------------------------------------------------------------



--
-- Сформируем подтипы
--
PROCEDURE make_subtypes
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_fstype('||fst_id||','''||f_sub_type||''','||ft_id||','''||hol_sub_type||''','''||mnemo||''','||nvl(sub_weight,0)||','''||PRICE_PREFIX||''','''||tnved||'''); end;'
        from (
            SELECT distinct a.fst_id, a.f_sub_type, a.ft_id, replace(a.hol_sub_type,chr(39),chr(39)||chr(39)) as hol_sub_type, a.mnemo, a.sub_weight, a.PRICE_PREFIX, a.tnved
              FROM flower_subtypes a, nomenclature b, invoice_data c
              where a.fst_id = b.fst_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_subtypes', '');

end make_subtypes;


--
-- Сформируем подтипы из накладной
--
PROCEDURE make_subtypes2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_fstype('||fst_id||','''||f_sub_type||''','||ft_id||','''||hol_sub_type||''','''||mnemo||''','||nvl(sub_weight,0)||','''||PRICE_PREFIX||''','''||tnved||'''); end;'
        from (
            SELECT distinct a.fst_id, a.f_sub_type, a.ft_id, replace(a.hol_sub_type,chr(39),chr(39)||chr(39)) as hol_sub_type, a.mnemo, a.sub_weight, a.PRICE_PREFIX, a.tnved
              FROM flower_subtypes a, nomenclature b, store_doc_data c
              where a.fst_id = b.fst_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_subtypes2', '');

end make_subtypes2;


--
-- Сформируем подтипы
--
PROCEDURE make_subtypes_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_fstype('||fst_id||','''||f_sub_type||''','||ft_id||','''||hol_sub_type||''','''||mnemo||''','||nvl(sub_weight,0)||','''||PRICE_PREFIX||''','''||tnved||'''); end;'
        from (
            SELECT distinct a.fst_id, a.f_sub_type, a.ft_id, replace(a.hol_sub_type,chr(39),chr(39)||chr(39)) as hol_sub_type, a.mnemo, a.sub_weight, a.PRICE_PREFIX, a.tnved
              FROM flower_subtypes a, nomenclature_mat_view b
              where a.fst_id = b.fst_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_subtypes_nom', '');

end make_subtypes_nom;


--
--  Импорт подтипов
--
PROCEDURE ins_fstype
(
    p_fst_id        in number,
    p_f_sub_type    in varchar2,
    p_ft_id         in number,
    p_hol_sub_type  in varchar2,
    p_mnemo         in varchar2,
    p_sub_weight    in number,
    p_PRICE_PREFIX  in varchar2,
    p_tnved         in varchar2,
    p_sub_weight_dry    in number
)
is
begin
   select count(1) into tmp_cnt
   from FLOWER_SUBTYPES where fst_id = p_fst_id;

   if tmp_cnt = 0 then
      INSERT INTO FLOWER_SUBTYPES VALUES(p_fst_id, p_f_sub_type, p_ft_id, p_hol_sub_type, p_mnemo, p_sub_weight, 1, sysdate, p_PRICE_PREFIX, p_tnved,p_sub_weight_dry);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_ftype', '');

end ins_fstype;



--------------------------------------------------------------------------------



--
-- Сформируем цвета
--
PROCEDURE make_colors
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_colors('||col_id||','''||colour||''','||ord||'); end;'
        from (
            SELECT distinct a.col_id, a.colour, a.ord
              FROM colours a, nomenclature b, invoice_data c
              where a.col_id = b.col_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_colors', '');

end make_colors;


--
-- Сформируем цвета из накладной
--
PROCEDURE make_colors2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_colors('||col_id||','''||colour||''','||ord||'); end;'
        from (
            SELECT distinct a.col_id, a.colour, a.ord
              FROM colours a, nomenclature b, store_doc_data c
              where a.col_id = b.col_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_colors2', '');

end make_colors2;



--
-- Сформируем цвета
--
PROCEDURE make_colors_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_colors('||col_id||','''||colour||''','||ord||'); end;'
        from (
            SELECT distinct a.col_id, a.colour, a.ord
              FROM colours a, nomenclature_mat_view b
              where a.col_id = b.col_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_colors_nom', '');

end make_colors_nom;


--
--  Импорт цветов
--
PROCEDURE ins_colors
(
    p_col_id        in number,
    p_colour        in varchar2,
    p_ord           in number
)
is
begin
   select count(1) into tmp_cnt
   from colours where COL_ID = p_col_id;

   if tmp_cnt = 0 then
      INSERT INTO COLOURS (COL_ID, COLOUR, ORD) VALUES (p_col_id, p_colour, p_ord);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_colors', '');

end ins_colors;




--------------------------------------------------------------------------------




--
-- Сформируем страны
--
PROCEDURE make_countries
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_countries('||c_id||','''||country||''','''||country_eng||''','''||mnemo||''','''||buh_code||'''); end;'
        from (
            SELECT distinct a.c_id, a.country, a.country_eng, a.buh_code, a.mnemo
              FROM countries a, nomenclature b, invoice_data c
              where a.c_id = b.c_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_countries', '');

end make_countries;



--
-- Сформируем страны  из накладной
--
PROCEDURE make_countries2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_countries('||c_id||','''||country||''','''||country_eng||''','''||mnemo||''','''||buh_code||'''); end;'
        from (
            SELECT distinct a.c_id, a.country, a.country_eng, a.buh_code, a.mnemo
              FROM countries a, nomenclature b, store_doc_data c
              where a.c_id = b.c_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_countries2', '');

end make_countries2;



--
-- Сформируем страны
--
PROCEDURE make_countries_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_countries('||c_id||','''||country||''','''||country_eng||''','''||mnemo||''','''||buh_code||'''); end;'
        from (
            SELECT distinct a.c_id, a.country, a.country_eng, a.buh_code, a.mnemo
              FROM countries a, nomenclature_mat_view b
              where a.c_id = b.c_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_countries_nom', '');

end make_countries_nom;



--
--  Импорт стран
--
PROCEDURE ins_countries
(
    p_c_id           in number,
    p_country        in varchar2,
    p_country_eng    in varchar2,
    p_country_code   in varchar2,
    p_buh_code       in number
)
is
begin
   select count(1) into tmp_cnt
   from countries where c_id = p_c_id;

   if tmp_cnt = 0 then
      INSERT INTO COUNTRIES VALUES (p_c_id,p_country,p_country_eng,p_buh_code,p_country_code);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_countries', '');

end ins_countries;


--------------------------------------------------------------------------------




--
-- Сформируем поставщиков
--
PROCEDURE make_suppliers
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_suppliers('||s_id||','''||s_name_ru||''','||c_id||','||need_cust||','||ANALYZE_DAYS||'); end;'
        from (
            SELECT distinct a.s_id, a.s_name_ru, a.c_id, a.need_cust, a.ANALYZE_DAYS
              FROM suppliers a, nomenclature b, invoice_data c
              where a.s_id = b.s_id and b.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_suppliers', '');

end make_suppliers;


--
-- Сформируем поставщиков из накладной
--
PROCEDURE make_suppliers2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_suppliers('||s_id||','''||s_name_ru||''','||c_id||','||need_cust||','||ANALYZE_DAYS||'); end;'
        from (
            SELECT distinct a.s_id, a.s_name_ru, a.c_id, a.need_cust, a.ANALYZE_DAYS
              FROM suppliers a, nomenclature b, store_doc_data c
              where a.s_id = b.s_id and b.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_suppliers2', '');

end make_suppliers2;



--
-- Сформируем поставщиков
--
PROCEDURE make_suppliers_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_suppliers('||s_id||','''||s_name_ru||''','||c_id||','||need_cust||','||ANALYZE_DAYS||'); end;'
        from (
            SELECT distinct a.s_id, a.s_name_ru, a.c_id, a.need_cust, a.ANALYZE_DAYS
              FROM suppliers a, nomenclature_mat_view b
              where a.s_id = b.s_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_suppliers_nom', '');

end make_suppliers_nom;

--
--  Импорт поставщиков
--
PROCEDURE ins_suppliers
(
    p_s_id          in number,
    p_s_name_ru     in varchar2,
    p_c_id          in number,
    p_need_cust     in number,
    p_ANALYZE_DAYS  in number
)
is
begin
   select count(1) into tmp_cnt
   from suppliers where s_id = p_s_id;

   if tmp_cnt = 0 then
      INSERT INTO suppliers VALUES (p_s_id,p_s_name_ru,p_c_id,p_need_cust,1,sysdate,p_ANALYZE_DAYS);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_suppliers', '');

end ins_suppliers;



--------------------------------------------------------------------------------


--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_sync
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin nomenclature2_pkg.sync_nomenclature_one('||n_id||'); end;'
        from (
            SELECT distinct a.n_id
              FROM nomenclature a, invoice_data c
              where a.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature_sync', '');

end make_nomenclature_sync;


--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_sync_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin nomenclature2_pkg.sync_nomenclature_one('||n_id||'); end;'
        from (
            SELECT distinct a.n_id
              FROM nomenclature a, nomenclature_mat_view c
              where a.n_id = c.n_id and c.date_change >= sysdate - 2 and c.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature_sync_nom', '');

end make_nomenclature_sync_nom;

--
-- Сформируем номенклатуру из накладной
--
PROCEDURE make_nomenclature_sync2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin nomenclature2_pkg.sync_nomenclature_one('||n_id||'); end;'
        from (
            SELECT distinct a.n_id
              FROM nomenclature a, store_doc_data c
              where a.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature_sync2', '');

end make_nomenclature_sync2;



--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nomenclature('||n_id||','||fn_id||','||fst_id||','||s_id||','||c_id||','''||h_code||''','''||h_name||''','''||len||''','''||pack||''','||col_id||','||vbn||','''||hol_type||''','||nvl(weight,0)||','''||bar_code||''','''||code||''','''||diameter||''','''||cust_coef||''','''||remarks||''','''||photo||''','''||h_namecode||''','''||tnved||''','||nvl(weightdry,0)||','''||NOM_NEW||''','''||NOM_START||''','''||NOM_END||''','''||HOL_COLOR||'''); end;'
        from (
            SELECT distinct a.n_id, a.fn_id, a.fst_id, a.s_id, a.c_id, a.h_code, replace(replace(a.h_name,chr(39),chr(39)||chr(39)),chr(10),'') as h_name,
               a.len, a.pack, a.col_id, a.vbn, a.hol_type, a.weight, a.bar_code,
               a.code, a.diameter, a.cust_coef, a.remarks, a.photo, a.h_namecode, a.tnved, a.WEIGHTDRY, NOM_NEW, NOM_START, NOM_END, a.HOL_COLOR
              FROM nomenclature a, invoice_data c
              where a.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature', '');

end make_nomenclature;


--
-- Сформируем номенклатуру из накладной
--
PROCEDURE make_nomenclature2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nomenclature('||n_id||','||fn_id||','||fst_id||','||s_id||','||c_id||','''||h_code||''','''||h_name||''','''||len||''','''||pack||''','||col_id||','||vbn||','''||hol_type||''','||nvl(weight,0)||','''||bar_code||''','''||code||''','''||diameter||''','''||cust_coef||''','''||remarks||''','''||photo||''','''||h_namecode||''','''||tnved||''','||nvl(weightdry,0)||','''||NOM_NEW||''','''||NOM_START||''','''||NOM_END||''','''||HOL_COLOR||'''); end;'
        from (
            SELECT distinct a.n_id, a.fn_id, a.fst_id, a.s_id, a.c_id, a.h_code, replace(replace(a.h_name,chr(39),chr(39)||chr(39)),chr(10),'') as h_name,
               a.len, a.pack, a.col_id, a.vbn, a.hol_type, a.weight, a.bar_code,
               a.code, a.diameter, a.cust_coef, a.remarks, a.photo, a.h_namecode, a.tnved, a.WEIGHTDRY, NOM_NEW, NOM_START, NOM_END, a.HOL_COLOR
              FROM nomenclature a, store_doc_data c
              where a.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature2', '');

end make_nomenclature2;


--
-- Сформируем номенклатуру
--
PROCEDURE make_nomenclature_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nomenclature('||n_id||','||fn_id||','||fst_id||','||s_id||','||c_id||','''||h_code||''','''||h_name||''','''||len||''','''||pack||''','||col_id||','||vbn||','''||hol_type||''','||nvl(weight,0)||','''||bar_code||''','''||code||''','''||diameter||''','''||cust_coef||''','''||remarks||''','''||photo||''','''||h_namecode||''','''||tnved||''','||nvl(weightdry,0)||','''||NOM_NEW||''','''||NOM_START||''','''||NOM_END||''','''||HOL_COLOR||'''); end;'
        from (
            SELECT distinct a.n_id, a.fn_id, a.fst_id, a.s_id, a.c_id, a.h_code, replace(replace(a.h_name,chr(39),chr(39)||chr(39)),chr(10),'') as h_name,
               a.len, a.pack, a.col_id, a.vbn, a.hol_type, a.weight, a.bar_code,
               a.code, a.diameter, a.cust_coef, a.remarks, a.photo, a.h_namecode, a.tnved, a.WEIGHTDRY, a.NOM_NEW, a.NOM_START, a.NOM_END, a.HOL_COLOR
              FROM nomenclature a, nomenclature_mat_view b
              where a.n_id = b.n_id and b.date_change >= sysdate - 2 and b.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nomenclature_nom', '');

end make_nomenclature_nom;


--
--  Импорт номенклатуры
--
PROCEDURE ins_nomenclature
(
    p_n_id          in number,
    p_fn_id         in number,
    p_fst_id        in number,
    p_s_id          in number,
    p_c_id          in number,
    p_h_code        in varchar2,
    p_h_name        in varchar2,
    p_len           in number,
    p_pack          in number,
    p_col_id        in number,
    p_vbn           in number,
    p_hol_type      in varchar2,
    p_weight        in number,
    p_bar_code      in varchar2,
    p_code          in varchar2,
    p_diameter      in number,
    p_cust_coef     in number,
    p_remarks       in varchar2,
    p_photo         in varchar2,
    p_namecode      in varchar2,
    p_tnved         in varchar2,
    p_WEIGHTDRY     in number,
    p_NOM_NEW       in number,
    p_NOM_START     in number,
    p_NOM_END       in number,
    p_hol_color     in varchar2
)
is
begin
   select count(1) into tmp_cnt
   from nomenclature where n_id = p_n_id;

   if tmp_cnt = 0 then
      INSERT INTO NOMENCLATURE (N_ID, FN_ID, FST_ID, S_ID, C_ID, H_CODE, H_NAME, LEN, PACK, COL_ID, VBN, HOL_TYPE, WEIGHT, DIAMETER, BAR_CODE, code, CUST_COEF, REMARKS, PHOTO, H_NAMECODE, tnved, WEIGHTDRY, NOM_NEW, NOM_START, NOM_END, hol_color)
      VALUES (p_n_id, p_fn_id, p_fst_id, p_s_id, p_c_id, p_h_code, p_h_name, p_len, p_pack, p_col_id, p_vbn, p_hol_type, p_weight, p_diameter,
                                   p_bar_code, p_code, p_cust_coef, p_remarks,  p_photo, p_namecode, p_tnved, p_WEIGHTDRY, p_NOM_NEW, p_NOM_START, p_NOM_END, p_hol_color);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_nomenclature', '');

end ins_nomenclature;


--
-- Сформируем спец. для номенклатуры
--
PROCEDURE make_nom_spec
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nom_spec('||n_id||','||hs_id||','''||hs_val||''','||ord||'); end;'
        from (
            SELECT distinct a.n_id, a.hs_id, a.hs_val, a.ord
              FROM nom_specifications a, invoice_data c
              where a.n_id = c.n_id and c.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nom_spec', '');

end make_nom_spec;


--
-- Сформируем спец. для номенклатуры
--
PROCEDURE make_nom_spec_nom
(
    p_debt     in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nom_spec('||n_id||','||hs_id||','''||hs_val||''','||ord||'); end;'
        from (
            SELECT distinct a.n_id, a.hs_id, a.hs_val, a.ord
              FROM nom_specifications a, nomenclature_mat_view c
              where a.n_id = c.n_id and c.date_change >= sysdate - 2 and c.id_departments = p_debt
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nom_spec_nom', '');

end make_nom_spec_nom;


--
-- Сформируем спец. для номенклатуры из накладной
--
PROCEDURE make_nom_spec2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_nom_spec('||n_id||','||hs_id||','''||hs_val||''','||ord||'); end;'
        from (
            SELECT distinct a.n_id, a.hs_id, a.hs_val, a.ord
              FROM nom_specifications a, store_doc_data c
              where a.n_id = c.n_id and c.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_nom_spec2', '');

end make_nom_spec2;


--
-- Импорт спецификации
--
PROCEDURE ins_nom_spec
(
    p_n_id        in number,
    p_hs_id       in number,
    p_hs_val      in varchar2,
    p_ord         in number
)
is
begin
   select count(1) into tmp_cnt
   from nom_specifications where n_id = p_n_id and hs_id=p_hs_id;

   if tmp_cnt = 0 then
      INSERT INTO NOM_SPECIFICATIONS (N_ID, HS_ID, HS_VAL, ORD, id_office)
                 VALUES(p_n_id, p_hs_id, p_hs_val, p_ord, 1);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_nom_spec', '');

end ins_nom_spec;




--------------------------------------------------------------------------------



--
-- Сформируем инвойс
--
PROCEDURE make_inv_register
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_inv_register(0,to_date('''||to_char(inv_date,'dd.mm.yy')||''',''dd.mm.yy''),'''||comments||''',null,'||sended_to_warehouse||','''||ipp_id||''','||id_departments||','''||id_orders||''',1,'''||c_id_default||''',null,sysdate,'''||inv_id||''','||inv_minus||','||minus_inv_id||',null); end;'
        from (
            SELECT a.inv_id, a.inv_date, a.comments, a.inv_sum, a.sended_to_warehouse, a.ipp_id, a.id_departments, a.id_orders,
               a.s_id_default, a.c_id_default, a.warehouse_sended_date, a.supplier_date, a.supplier_number,
               nvl(a.inv_minus,0) as inv_minus, a.minus_inv_id, a.in_file
              FROM invoice_register a
              where a.inv_id = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_inv_register', '');

end make_inv_register;



--
-- Сформируем инвойс из накладной
--
PROCEDURE make_inv_register2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
    v_id_dep number;
    v_ddate  date;
    v_doc_number varchar2(20);
begin
  select id_departments, DOC_DATE, doc_number into v_id_dep, v_ddate, v_doc_number from store_doc where id_doc = p_inv_id;

    open p_cursor for
        select 'begin sync_pkg.ins_inv_register(0,to_date('''||to_char(v_ddate,'dd.mm.yy')||''',''dd.mm.yy''),''Инвойс из накладной №'||v_doc_number||''',null,0,null,'||v_id_dep||',null,1,230,null,sysdate,'''||p_inv_id||''',0,null,null); end;'
        from dual
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_inv_register2', '');

end make_inv_register2;


--
-- Импорт заголовка инвойса
--
PROCEDURE ins_inv_register
(
    p_inv_id                in number,
    p_inv_date              in date,
    p_comments              in varchar2,
    p_inv_sum               in number,
    p_sended_to_warehouse   in number,
    p_ipp_id                in number,
    p_id_departments        in number,
    p_id_orders             in number,
    p_s_id_default          in number,
    p_c_id_default          in number,
    p_warehouse_sended_date in date,
    p_supplier_date         in date,
    p_supplier_number       in varchar2,
    p_inv_minus             in number,
    p_minus_inv_id          in number,
    p_in_file               in varchar2
)
is
    v_idd  number;
begin
   select count(1) into tmp_cnt
   from invoice_register where supplier_number = p_supplier_number;

   if tmp_cnt = 0 then
     SELECT get_office_unique('INV_ID') INTO v_idd FROM DUAL;
     INSERT INTO INVOICE_REGISTER (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,C_ID_DEFAULT,minus_inv_id,IN_FILE,id_office)
            VALUES(v_idd, trunc(sysdate), 0, p_comments, p_id_departments, p_inv_date, p_supplier_number, p_inv_minus, p_s_id_default, p_c_id_default, null, null, const_office);
   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_inv_register', '');

end ins_inv_register;


--
-- Сформируем данные по инвойсу
--
PROCEDURE make_inv_data
(
    p_inv_id   in number,
    p_price    in number,
    p_cursor   out ref_cursor
)
is
begin

  if p_price = 1 then
    open p_cursor for
        select 'begin sync_pkg.ins_inv_data('||inv_id||','||n_id||','||units||','''||FINAL_PRICE||''','''||total_sum||''','''||amount_in_the_pack||''',0,'||invoice_data_id||',0,'''||gtd||''',0,'''||gtd_country||''','''||NOM_SPECIAL||'''); end;'
        from (
            SELECT distinct a.inv_id, a.n_id, a.units, a.price_per_unit as FINAL_PRICE, round((a.price_per_unit * a.units),2) as total_sum,
                a.amount_in_the_pack, a.invoice_data_id, a.invoice_data_as_is_id,  a.sended_to_warehouse, a.gtd, a.storned_data, a.gtd_country
                , a.NOM_SPECIAL
              FROM invoice_data a
                  left outer join prepare_price_list_index b on (b.inv_id = a.inv_id or b.inv_id2 = a.inv_id or b.inv_id3 = a.inv_id or b.inv_id4 = a.inv_id)
                  left outer join prepare_price_list c on (c.ppli_id = b.ppli_id and c.n_id = a.n_id)
              where a.inv_id = p_inv_id and a.storned_data = 0
        )
        ;
  else
    open p_cursor for
        select 'begin sync_pkg.ins_inv_data('||inv_id||','||n_id||','||units||','''||FINAL_PRICE||''','''||total_sum||''','''||amount_in_the_pack||''',0,'||invoice_data_id||',0,'''||gtd||''',0,'''||gtd_country||''','''||NOM_SPECIAL||'''); end;'
        from (
            SELECT distinct a.inv_id, a.n_id, a.units, nvl(c.FINAL_PRICE,0) as FINAL_PRICE, case when c.FINAL_PRICE is null then 0 else round((c.FINAL_PRICE * a.units),2) end total_sum,
                a.amount_in_the_pack, a.invoice_data_id, a.invoice_data_as_is_id,  a.sended_to_warehouse, a.gtd, a.storned_data, a.gtd_country
                , a.NOM_SPECIAL
              FROM invoice_data a
                  left outer join prepare_price_list_index b on (b.inv_id = a.inv_id or b.inv_id2 = a.inv_id or b.inv_id3 = a.inv_id or b.inv_id4 = a.inv_id)
                  left outer join prepare_price_list c on (c.ppli_id = b.ppli_id and c.n_id = a.n_id)
              where a.inv_id = p_inv_id and a.storned_data = 0
        )
        ;
  end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_inv_data', '');

end make_inv_data;


--
-- Сформируем данные по инвойсу из накладной
--
PROCEDURE make_inv_data2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_inv_data('||p_inv_id||','||n_id||','||units||','''||FINAL_PRICE||''','''||total_sum||''','''||amount_in_the_pack||''','||ID_DOC_DATA||',0,0,'''||gtd||''','''||gtd_country||''',null,0); end;'
        from (
            SELECT distinct p_inv_id, a.n_id, a.QUANTITY as units, a.PRICE as FINAL_PRICE, round((a.PRICE * a.QUANTITY),2) total_sum,
                a.QUANTITY as amount_in_the_pack, a.ID_DOC_DATA, 0
                , (select z.gtd from store_gtd z where z.n_id = a.n_id and z.ddate = (select max(ddate) from store_gtd where n_id = a.n_id)) gtd
                , 0, null as gtd_country, null,0
                -- потом переписать, когда в ГТД будут страны храниться
              FROM store_doc_data a
              where a.id_doc = p_inv_id
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_inv_data2', '');

end make_inv_data2;


--
-- Импорт данных инвойса
--
PROCEDURE ins_inv_data
(
    p_inv_id                  in number,
    p_n_id                    in number,
    p_units                   in number,
    p_FINAL_PRICE             in number,
    p_total_sum               in number,
    p_amount_in_the_pack      in number,
    p_invoice_data_id         in number,
    p_invoice_data_as_is_id   in number,
    p_sended_to_warehouse     in number,
    p_gtd                     in varchar2,
    p_storned_data            in number,
    p_gtd_country             in varchar2,
    p_NOM_SPECIAL             in number
)
is
    NEW_INVOICE_DATA_ID  number;
    v_inv_id             number;
begin
   begin
     select inv_id into v_inv_id
     from invoice_register where supplier_number = to_char(p_inv_id);
   EXCEPTION when no_data_found then
     v_inv_id := 0;
     LOG_ERR('Не найден инвойс при добалении данных о инвойсе', '', 'sync_pkg.ins_inv_data', 'select inv_id into v_inv_id from invoice_register where supplier_number = '||p_inv_id);
   end;

   if v_inv_id > 0 then
/* 2015-03-26 Через файл нет атрибута invoice_data_as_is_id. Поэтому проверку убираем
     select count(1) into tmp_cnt
     from invoice_data where invoice_data_as_is_id = p_invoice_data_as_is_id;

     if tmp_cnt = 0 then
*/
        SELECT get_office_unique('INVOICE_DATA_ID') INTO NEW_INVOICE_DATA_ID FROM DUAL;

        INSERT INTO INVOICE_DATA (
          INVOICE_DATA_ID,
          INVOICE_DATA_AS_IS_ID,
          INV_ID,
          N_ID,
          UNITS,
          PRICE_PER_UNIT,
          TOTAL_SUM,
          AMOUNT_IN_THE_PACK,
          STORNED_DATA,
          GTD,
          id_office,
          gtd_country,
          NOM_SPECIAL)
        VALUES (
          NEW_INVOICE_DATA_ID,
          null, --p_invoice_data_as_is_id,
          v_inv_id,
          p_n_id,
          p_units,
          p_FINAL_PRICE,
          p_total_sum,
          p_amount_in_the_pack,
          0,
          p_gtd,
          const_office,
          p_gtd_country,
          p_NOM_SPECIAL);
/*
     else
        select invoice_data_id into tmp_cnt
        from invoice_data where invoice_data_as_is_id = p_invoice_data_as_is_id;
     LOG_ERR('Aoaeu a iiceoee eiaiena', '', 'sync_pkg.ins_inv_data', 'invoice_data_id = '||tmp_cnt||' invoice_data_as_is_id='||p_invoice_data_as_is_id);

        update INVOICE_DATA set PRICE_PER_UNIT = p_FINAL_PRICE, UNITS = p_units, TOTAL_SUM = p_total_sum, GTD = p_gtd, date_change=sysdate
        where invoice_data_id = tmp_cnt;
     end if;
*/
  end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_inv_data', '');

end ins_inv_data;




--------------------------------------------------------------------------------



--
-- Сформируем данные по заголовкам цены
--
PROCEDURE make_pricelist_index
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_pricelist_index(0,''Цены на инвойс поставщика №'||p_inv_id||''',to_date('''||ppl_date||''',''dd.mm.yy''),0,0,'||id_departments||',1,1,1,'||p_inv_id||',null,null,null,null); end;'
        from (
            SELECT a.ppli_id, a.ppl_comment, a.ppl_date, a.finished, a.use_cust_coef, a.id_departments, a.prime_coast_coefficient,
               a.profit_coeffitient, a.exchange_rate, a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4, a.pack_id
              FROM prepare_price_list_index a
              where (a.inv_id = p_inv_id or a.inv_id2 = p_inv_id or a.inv_id3 = p_inv_id or a.inv_id4 = p_inv_id) and a.finished = 1
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_pricelist_index', '');

end make_pricelist_index;




--
-- Сформируем данные по заголовкам цены из накладной
--
PROCEDURE make_pricelist_index2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
    v_id_dep number;
    v_ddate date;
    v_doc_number varchar2(20);
begin
  select id_departments, DOC_DATE, doc_number into v_id_dep, v_ddate, v_doc_number from store_doc where id_doc = p_inv_id;

    open p_cursor for
        select 'begin sync_pkg.ins_pricelist_index(0,''Цены на инвойс поставщика по накладной №'||v_doc_number||''',to_date('''||v_ddate||''',''dd.mm.yy''),0,0,'||v_id_dep||',1,1,1,'||p_inv_id||',null,null,null,null); end;'
        from dual;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_pricelist_index2', '');

end make_pricelist_index2;


--
-- Импорт заголовка цен
--
PROCEDURE ins_pricelist_index
(
    p_ppli_id                 in number,
    p_ppl_comment             in varchar2,
    p_ppl_date                in date,
    p_finished                in number,
    p_use_cust_coef           in number,
    p_id_departments          in number,
    p_prime_coast_coefficient in number,
    p_profit_coeffitient      in number,
    p_exchange_rate           in number,
    p_inv_id                  in number,
    p_inv_id2                 in number,
    p_inv_id3                 in number,
    p_inv_id4                 in number,
    p_pack_id                 in number
)
is
    v_inv_id             number;
    v_ppli_id             number;
begin
   begin
     select inv_id into v_inv_id
     from invoice_register where supplier_number = p_inv_id;
   EXCEPTION when no_data_found then
     v_inv_id := 0;
     LOG_ERR('Не найден инвойс при добалении цен', '', 'sync_pkg.ins_pricelist_index', 'select inv_id into v_inv_id from invoice_register where supplier_number = '||p_inv_id);
   end;

   if v_inv_id > 0 then
     select count(1) into tmp_cnt
     from prepare_price_list_index where inv_id = v_inv_id;

     if tmp_cnt = 0 then
       SELECT get_office_unique('ppli_id') INTO v_ppli_id FROM DUAL;
       INSERT INTO prepare_price_list_index
            VALUES(v_ppli_id, p_ppl_comment, sysdate, 0, p_use_cust_coef, p_id_departments, p_prime_coast_coefficient, p_profit_coeffitient, p_exchange_rate,
            v_inv_id, null, null, null, p_pack_id, const_office, sysdate, null);
     end if;

   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_pricelist_index', '');

end ins_pricelist_index;


--
-- Сформируем данные по ценам
--
PROCEDURE make_pricelist_data
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_pricelist_data('||p_inv_id||',0,to_date('''||coming_date||''',''dd.mm.yy''),'||invoice_amount||',0,0,0,'||n_id||','||invoice_data_id||','''||final_price||''','''||final_price||''',imp_invdata_getlastprice('||n_id||'),0,0,null,'''||final_price||''',null); end;'
        from (
            SELECT a.ppli_id, a.ppl_id, a.coming_date, a.invoice_amount, a.stock_amount, a.left_amount, a.given_amount, a.n_id,
               a.invoice_data_id, a.hol_price, a.ruble_price, a.last_price, a.price_pcc, a.price_pcc_pc, a.total_profit, a.final_price, a.col
              FROM prepare_price_list a, prepare_price_list_index b
              where a.ppli_id = b.ppli_id and (b.inv_id = p_inv_id or b.inv_id2 = p_inv_id or b.inv_id3 = p_inv_id or b.inv_id4 = p_inv_id)
                and a.invoice_data_id is not null
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_pricelist_data', '');

end make_pricelist_data;




--
-- Сформируем данные по ценам из накладной
--
PROCEDURE make_pricelist_data2
(
    p_inv_id   in number,
    p_cursor   out ref_cursor
)
is
begin

    open p_cursor for
        select 'begin sync_pkg.ins_pricelist_data('||p_inv_id||',0,to_date('''||coming_date||''',''dd.mm.yy''),'||invoice_amount||',0,0,0,'||n_id||','||invoice_data_id||','''||final_price||''','''||final_price||''',imp_invdata_getlastprice('||n_id||'),0,0,null,'''||final_price||''',null); end;'
        from (
            SELECT distinct p_inv_id, b.doc_date as coming_date, a.n_id, a.QUANTITY as invoice_amount, a.PRICE as FINAL_PRICE, a.ID_DOC_DATA as invoice_data_id
              FROM store_doc_data a, store_doc b
              where a.id_doc = p_inv_id and a.id_doc = b.id_doc
        )
        ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_pricelist_data2', '');

end make_pricelist_data2;



--
-- Импорт данных по ценам
--
PROCEDURE ins_pricelist_data
(
    p_inv_id             in number,
    p_ppl_id             in number,
    p_coming_date        in date,
    p_invoice_amount     in number,
    p_stock_amount       in number,
    p_left_amount        in number,
    p_given_amount       in number,
    p_n_id               in number,
    p_invoice_data_id    in number,
    p_hol_price          in number,
    p_ruble_price        in number,
    p_last_price         in number,
    p_price_pcc          in number,
    p_price_pcc_pc       in number,
    p_total_profit       in number,
    p_final_price        in number,
    p_col                in number
)
is
    v_ppli_id             number;
    v_ppl_id              number;
    v_invoice_data_id     number;
begin
   begin
     select b.ppli_id into v_ppli_id
     from invoice_register a, prepare_price_list_index b where a.inv_id = b.inv_id and a.supplier_number = p_inv_id;
   EXCEPTION when no_data_found then
     v_ppli_id := 0;
     LOG_ERR('Не найден прайслист данных о прайслисте', '', 'sync_pkg.ins_pricelist_data', 'select b.ppli_id into v_ppli_id from invoice_register a, prepare_price_list_index b where a.inv_id = b.inv_id and a.supplier_number ='||p_inv_id);
   end;

   if v_ppli_id > 0 then
     select count(1) into tmp_cnt
     from prepare_price_list a, INVOICE_DATA b
     where a.ppli_id = v_ppli_id and a.INVOICE_DATA_ID=b.invoice_data_id and b.INVOICE_DATA_AS_IS_ID = p_invoice_data_id;

     begin
        select invoice_data_id into v_invoice_data_id
        from INVOICE_DATA b
        where b.INVOICE_DATA_AS_IS_ID = p_invoice_data_id;
     EXCEPTION when no_data_found then
        v_invoice_data_id := 0;
        LOG_ERR('Не найдена позиция в инвойсе', '', 'sync_pkg.ins_pricelist_data', 'select invoice_data_id into v_invoice_data_id from INVOICE_DATA b where b.INVOICE_DATA_AS_IS_ID = '||p_invoice_data_id);
     end;

     if v_invoice_data_id > 0 then
        if tmp_cnt = 0 then
           SELECT get_office_unique('ppl_id') INTO v_ppl_id FROM DUAL;
           insert into prepare_price_list values(v_ppli_id, v_ppl_id, sysdate, p_invoice_amount, p_stock_amount, p_left_amount, p_given_amount, p_n_id, v_invoice_data_id,
                p_hol_price, p_ruble_price, p_last_price, p_price_pcc, p_price_pcc_pc, p_total_profit, p_final_price, p_col, const_office, sysdate, null, null, null, null );
        else
           select invoice_data_id into tmp_cnt
           from invoice_data where invoice_data_as_is_id = p_invoice_data_id;

           update prepare_price_list set hol_price=p_hol_price, ruble_price=p_ruble_price, total_profit=p_total_profit, final_price=p_final_price, date_change=sysdate
           where PPL_ID = tmp_cnt;
        end if;
     end if;

   end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.ins_pricelist_data', '');

end ins_pricelist_data;



--
-- Сформируем данные по группам клиентов
--
PROCEDURE make_clients_groups
(
    p_cursor   out ref_cursor
)
is
begin

  open p_cursor for
    select 'INSERT INTO creator.SYNC_clients_groups values('||a.id_clients_groups||','''||a.name||''','''||a.info||''','||a.id_office||',sysdate)' as sql_str
      from clients_groups a
      WHERE a.id_office = const_office and date_change > sysdate-3
    ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_clients_groups', '');
end make_clients_groups;


--
-- Сформируем данные по клиентам
--
PROCEDURE make_clients_list
(
    p_cursor   out ref_cursor
)
is
begin

  open p_cursor for
    SELECT
    'INSERT INTO creator.SYNC_clients values('||a.id_clients||','''||a.fio||''','''||a.nick||''','''||a.ccode||''','||a.region||','''||REPLACE( REPLACE(a.address, chr(10), ' '), chr(13), ' ')||''','''||REPLACE( REPLACE(a.u_address, chr(10), ' '), chr(13), ' ')||''','''||REPLACE( REPLACE(a.phone, chr(10), ' '), chr(13), ' ')||''','''||REPLACE( REPLACE(a.passport, chr(10), ' '), chr(13), ' ')||''','''||a.contact||''','''||a.cont_phone||''','''||a.email||''','''||a.www||''','''||a.inn||''','''||a.reg_svid||''','''||a.kpp||''','''||a.okato||''','''||a.bank||''','''||a.agreement||''','||a.advertisment||',to_date('''||to_char(a.ddate,'dd.mm.yyyy')||''',''dd.mm.yyyy''),'||a.block1||','||a.block2||','||a.flowers||','||a.plants||','''||a.mark||''','||a.ttype||','||a.id_clients_groups||','''||a.corrector||''','||case when a.date_cor is null then 'null' else 'to_date('''||to_char(a.date_cor,'dd.mm.yyyy')||''',''dd.mm.yyyy'')' end||','''||a.corrector_cor||''','''||a.duties||''','''||a.insurance||''','||case when a.date_in is null then 'null' else 'to_date('''||to_char(a.date_in,'dd.mm.yyyy')||''',''dd.mm.yyyy'')' end||','||case when a.date_out is null then 'null' else 'to_date('''||to_char(a.date_out,'dd.mm.yyyy')||''',''dd.mm.yyyy'')' end||','''||a.l_service||''','||a.staff||','||case when a.active is null then 'null' else to_char(a.active) end||','''||a.login||''','''||a.info||''','||a.reg_type||','||a.count||','||a.dostavka||','||a.id_office||',sysdate,'''||a.prefix||''','||a.id_city||')' as sql_str
      FROM clients a
      WHERE id_office = const_office and length(ccode)=13 and date_change > sysdate-3
    ;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_pkg.make_clients_list', '');
end make_clients_list;


END;
/


-- End of DDL Script for Package Body CREATOR.SYNC_PKG

