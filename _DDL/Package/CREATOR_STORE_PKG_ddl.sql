-- Start of DDL Script for Package Body CREATOR.STORE_PKG
-- Generated 06.01.2017 1:56:41 from CREATOR@STAR_REG

CREATE OR REPLACE 
PACKAGE store_pkg
IS

CNT   NUMBER;
TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

--
-- Выбор отделов доступных пользователю
--
PROCEDURE get_deps_on_user
(
   login_  in  varchar2,
   cursor_ in out ref_cursor
);


--
--  Обнуление последовательностей
--
procedure number_obnul
(
  av_seq in varchar2
);


--
-- Выбор накладных прихода
--
PROCEDURE get_doc_view
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   v_office     in number,
   cursor_      out ref_cursor
);


--
--  Подгружаем данные из инвойса в склад
--
procedure data_from_inv
(
  inv_num IN NUMBER
);


--
--  Вставляем в склад
--
procedure insert_in_store
(
  IID_DOC IN NUMBER
);


--
--  Вставляем в кассу
--
procedure insert_in_cash
(
  IID_DOC IN NUMBER
);


--
--  Вставляем в бухгалтерию
--
procedure insert_in_buh
(
  IID_DOC IN NUMBER
);


--
--  Записываем из временной таблицы данные на склад
--
procedure doc_new
(
 SP_ID_CLIENT   IN NUMBER,
 SP_DOC_DATE    IN Date,
 SP_ID_DOC_TYPE IN NUMBER,
 SP_COMMENTS    IN VARCHAR,
 SP_OTDEL       IN VARCHAR,
 SP_INV_ID      IN NUMBER,
 SP_Order_ID    IN NUMBER,
 out_message    OUT VARCHAR,
 out_docid      OUT NUMBER
);


--
--  Скидка / надбавка
--
procedure set_price_part
(
  price_percent IN NUMBER,
  p_client      in varchar2
);


--
--  Снятие / установка признака для инвентаризации
--
procedure set_check_inv
(
  added_1_    IN NUMBER,
  added_      IN NUMBER,
  N_ID_       in number,
  QUANTITY_   in number,
  STORE_TYPE_ in number,
  PRICE_      in number
);


--
--  Вставляем во временную таблицу запись
--
procedure ins_in_temp
(
  n_id_         IN NUMBER,
  store_type_   IN NUMBER
);


--
--  Вставляем всю номенклатуру во временную таблицу
--
procedure NOM_TO_TEMP
(
  in_otdel IN NUMBER,
  V_SERVICE   in number,
  param_   in number,
  v_office IN NUMBER
);


--
--  Расчет движения товара
--
procedure report_move
(
  DDATE_BEGIN   IN DATE,
  DDATE_END     IN DATE,
  rem_nulls     in NUMBER,
  V_GTD         in varchar2,
  v_office      in number,
  v_show_nulls  in number
--  , V_SERVICE   in number
);


--
-- Просмотр склада
--
PROCEDURE get_store_view
(
   id_dep_      in number,
   store_       in number,
   button_      in number,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- Выбор типов по кнопкам
--
PROCEDURE get_type_on_buttons
(
   id_dep_      in number,
   cursor_      out ref_cursor
);



--
-- Просмотр номенклатуры
--
PROCEDURE get_data_view
(
   id_dep_      in number,
   store_       in number,
   id_doc_      in number,
   button_      in number,
   cursor_      out ref_cursor
);


--
-- Просмотр номенклатуры
--
PROCEDURE get_noms_view
(
   store_       in number,
   id_dep_      in number,
   button_      in number,
   price_part   in number,
   quant_p_     in number,
   v_office     in number,
   cursor_      out ref_cursor
);


--
--  Добавление лома
--
PROCEDURE lom_add
(
  in_n_id IN NUMBER,
  in_QUANTITY IN NUMBER,
  in_DOC_DATE IN DATE,
  in_OTDEL IN VARCHAR
);


--
--  Уценка текущей позиции
--
procedure CHANGE_PRICE
(
  in_n_id IN NUMBER,
  in_Percent IN NUMBER,
  in_QUANTITY IN NUMBER,
  in_DOC_DATE IN DATE,
  in_OTDEL IN VARCHAR,
  in_OPERATOR_NAME IN VARCHAR
);


--
--  Копируем из заказа данные
--
procedure data_from_order
(
  oder_num IN NUMBER,
  fix_price in number,
  p_discount in number
);


--
--  Ввод минусовой
--
procedure doc_new_from_store_doc
(
  IID_DOC IN NUMBER,
  out_docid OUT NUMBER
);


--
-- минусуем данные
--
procedure data_from_storedoc_minus
(
  store_doc IN NUMBER
);


--
--  Добавляем номенклатуру в инвентаризацию по типу
--
procedure inventory_add_types
(
  ttypes IN VARCHAR,
  sub_ttypes IN VARCHAR
);


--
-- Выбор неоприходованных инвойсов
--
PROCEDURE select_invoices
(
   id_dep_      in number,
   cursor_      in out ref_cursor
);


--
-- Выбор остатков скалада
--
PROCEDURE select_store
(
   ID_DEPARTMENTS_  in number,
   STORE_TYPE_      in number,
   v_office         in number,
--   v_gtd            in number DEFAULT 0,
   cursor_          in out ref_cursor
);


--
-- Выбор всех подтипов
--
PROCEDURE select_subtypes_all
(
   id_dep_  in number,
   cursor_  out ref_cursor
);


--
-- Выбор подтипов для кнопки
--
PROCEDURE select_subtypes_button
(
   id_dep_  in number,
   button_  in number,
   cursor_  out ref_cursor
);


--
-- Выбор клиентов
--
PROCEDURE select_clients
(
   cursor_  out ref_cursor
);


-- Добавляем быстро уценку в накладную
--
PROCEDURE insert_fast_ucenka
(
  n_id_       in number,
  QUANTITY_   in number
);


--
-- Выбор списка для уценки
--
PROCEDURE select_ucenka
(
   id_dep_     in number,
   price_part_ in number,
   cursor_     out ref_cursor
);


--
-- Удаление накладной
--
PROCEDURE delete_doc
(
   ID_DOC_     in number
);


procedure doc_new_hst
(
 SP_ID_CLIENT   IN NUMBER,
 SP_DOC_DATE    IN Date,
 SP_ID_DOC_TYPE IN NUMBER,
 SP_COMMENTS    IN VARCHAR,
 SP_OTDEL       IN VARCHAR,
 out_message    OUT VARCHAR,
 out_docid      OUT NUMBER
);


--
-- Выборка типов для продаж
--
PROCEDURE select_subtypes_sale
(
   id_dep_  in number,
   var_     in number,
   cursor_  out ref_cursor
);


--
--Выбор типов для продаж
--
PROCEDURE get_type_on_buttons_sale
(
   id_dep_      in number,
   var_         in number,
   cursor_      out ref_cursor
);


--
-- сделаем документы переоценки остатков при смене цены в новой прайс-листе при условии, что этих позиций нет в самом инвойсе
--
procedure insert_in_store_reprice
(
  v_PPLI_ID IN NUMBER
);


--
-- Удаление персональных настроек для отчета
--
PROCEDURE delete_personal_settings
(
   v_id      in number
);


--
-- Редактирование персональных настроек для отчета
--
PROCEDURE edit_personal_settings
(
   v_id           in number,
   v_user         in varchar2,
   v_id_company   in number,
   v_date_begin   in date,
   v_date_end     in date,
   v_prikaz_n     in varchar2
);


--
-- Выбор персональных настроек для отчета
--
PROCEDURE get_personal_settings
(
   v_date        in date,
   v_id_company  in number,
   cursor_       out ref_cursor
);


--
-- Выбор товара с приходом и продажами для отчета
--
PROCEDURE make_prihod_itog
(
   p_date_b      in date,
   p_date_e      in date,
   p_docs        in varchar2,
   p_cursor      out ref_cursor
);


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client2
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   v_cargo      in number,
   cursor_      out ref_cursor
);


--  Копируем из ГОЛ заказа
--
procedure data_from_hol_orders
(
  oder_num IN NUMBER
);


--
--  Синхронизируем цены из старой БД с новыми
--
PROCEDURE sync_price_list
(
   v_code       IN       varchar2,
   v_price      IN       NUMBER
);


--
--  Синхронизируем цены из БД МСК с регионами
--
PROCEDURE sync_price_list_link
(
   v_id_dep      IN       NUMBER
);


--
--  Синхронизируем цены из БД МСК с регионами по выбранным
--
PROCEDURE sync_price_list_link_sel
(
   v_id_dep      IN       NUMBER
);


--
-- Выборка подходящего ГТД
--
function get_gtd
 (
    N_ID_IN IN INTEGER,
    sp_office in integer
 )
return varchar2;


--
--  Проверка инвойса перед подгрузкой на суммы
--
procedure check_data_from_inv
(
  inv_num IN NUMBER,
  res     in out varchar2
);


--
--  Достать СЛУЖЕБНЫЙ тип
--
PROCEDURE get_service_type
(
   v_id_dep     IN       NUMBER,
   v_ft_id      IN OUT   NUMBER
);


--
--  Подгружаем данные из инвойса в склад
--
procedure set_params_to_invoice
(
  inv_num IN NUMBER
);


--
--  Сбор статистики по движению товара в разрезе поставщика
--
PROCEDURE get_supplier_report
(
  v_id_dep      IN NUMBER,
  DDATE_BEGIN   IN DATE,
  DDATE_END     IN DATE,
  v_office      in number,
  v_service     in number,
  p_cursor      out ref_cursor
);


END;
/

-- Grants for Package
GRANT EXECUTE ON store_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY store_pkg
IS

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
                      and b.id_employees = c.id_clients and c.LOGIN = login_ and c.id_office = const_office
                    order by a."NAME";

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_deps_on_user', '');
       RAISE_APPLICATION_ERROR (-20300, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

END get_deps_on_user;



--
--  Обнуление последовательностей
--
procedure number_obnul
(
  av_seq in varchar2
)
is
  sql_str varchar2(200);
  var1    number;
Begin

  sql_str := 'select '||av_seq||'.NEXTVAL from dual';
  EXECUTE IMMEDIATE sql_str into var1;

  sql_str := 'ALTER SEQUENCE '||av_seq||' INCREMENT BY '|| (0-var1+1);
  EXECUTE IMMEDIATE sql_str;

  sql_str := 'select '||av_seq||'.NEXTVAL from dual';
  EXECUTE IMMEDIATE sql_str into var1;

  sql_str := 'ALTER SEQUENCE '||av_seq||' INCREMENT BY 1';
  EXECUTE IMMEDIATE sql_str;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.number_obnul', sql_str);
       RAISE_APPLICATION_ERROR (-20301, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end number_obnul;




--
-- Выбор накладных прихода
--
PROCEDURE get_doc_view
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS

BEGIN

  open cursor_ for
    SELECT a.id_doc, a.doc_number, a.id_doc_type, a.id_departments,
       a.department_name, a.operator_name, a.doc_date, a.doc_date_real,
       a.id_client, a.nick, a.fio, a.quantity_all, a.price_all,
       a.sum_price_old, a.sum_price_new, a.sum_price_difference,
       a.comments, a.inv_id, a.order_id, a.supplier_date,
       a.supplier_number, a.suplier, a.s_name_ru, a.id_office, a.brief
       , a.INV_SUM, a.sum_quantity
        FROM store_doc_view2 a
          where a.id_departments = id_dep_ and (id_office = v_office or v_office = 0)
                and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
                and trunc(a.doc_date) between DOC_DATE1_ and DOC_DATE2_
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
             ORDER BY DOC_DATE desc, DOC_DATE_real desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.number_obnul', '');
       RAISE_APPLICATION_ERROR (-20302, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_doc_view;




--
-- Просмотр склада
--
PROCEDURE get_store_view
(
   id_dep_      in number,
   store_       in number,
   button_      in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS

BEGIN

if id_dep_ = 62 then
  open cursor_ for
    select a.N_ID, a.full_name, a.F_TYPE, a.F_SUB_TYPE, a.CODE, a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COUNTRY, a.QUANTITY,
           a.PRICE, a.FT_ID, a.FST_ID, a.C_ID, a.COL_ID, a.S_ID, a.S_NAME_RU,
           (a.QUANTITY * a.PRICE) as QUANTITY_PRICE, TO_NUMBER(b.nbutton,9) as nbutton,
           a.reserv, a.spesification, a.hol_type, a.hol_sub_type
           , case when b.nbutton = 2 then '1: Роза голландия' else
           case when b.nbutton = 3 then '2: Роза эквадор' else
           case when b.nbutton = 4 then '3: Хризантема' else
           case when b.nbutton = 5 then '4: Зелень' else
           case when b.nbutton = 6 then '5: Гвоздика' else
           case when b.nbutton = 7 then '6: Лилия' else
           case when b.nbutton = 8 then '7: Другие цветы' else '8: '
           end end end end end end end but_name
           , compiled_name_otdel
           , a.id_office, a.brief, a.notuse
        FROM store_view a,
            (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b
          where a.id_departments = id_dep_ and (a.id_office = v_office or v_office = 0)
                and a.STORE_TYPE = store_
                    and (a.fst_id = b.fst_id(+) and (b.nbutton = button_ or button_ = 0))
                    ORDER BY b.nbutton, /* a.f_sub_type ,*/ a.full_name;

else
  open cursor_ for
    select a.N_ID, a.full_name, a.F_TYPE, a.F_SUB_TYPE, a.CODE, a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COUNTRY, a.QUANTITY,
           a.PRICE, a.FT_ID, a.FST_ID, a.C_ID, a.COL_ID, a.S_ID, a.S_NAME_RU,
           (a.QUANTITY * a.PRICE) as QUANTITY_PRICE, TO_NUMBER(0,9) as nbutton,
           a.reserv, a.spesification, null as hol_type, null as hol_sub_type
           ,'Все' but_name
           , compiled_name_otdel
           , a.id_office, a.brief, a.notuse
        FROM store_view a
          where a.id_departments = id_dep_ and (a.id_office = v_office or v_office = 0)
                and a.STORE_TYPE = store_
                  order by a.F_TYPE, a.f_sub_type, a.full_name;
end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.number_obnul', '');
       RAISE_APPLICATION_ERROR (-20303, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_store_view;




--
-- Просмотр номенклатуры
--
PROCEDURE get_data_view
(
   id_dep_      in number,
   store_       in number,
   id_doc_      in number,
   button_      in number,
   cursor_      out ref_cursor
)
IS

BEGIN

if id_dep_ = 62 then
  open cursor_ for
    SELECT a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FULL_NAME, a.QUANTITY, a.QUANTITY_NOW, a.STORE_TYPE_NAME,
           a.STORE_TYPE, a.PRICE, a.PRICE_LIST, a.QUANTITY_PRICE, a.PRICE_PERCENT, a.GTD, a.S_NAME_RU,
           null as SPESIFICATION, a.fst_id
           , TO_NUMBER(b.nbutton,9) as nbutton, a.hol_type, a.hol_sub_type
           , case when b.nbutton = 2 then '1: Роза голландия' else
           case when b.nbutton = 3 then '2: Роза эквадор' else
           case when b.nbutton = 4 then '3: Хризантема' else
           case when b.nbutton = 5 then '4: Зелень' else
           case when b.nbutton = 6 then '5: Гвоздика' else
           case when b.nbutton = 7 then '6: Лилия' else
           case when b.nbutton = 8 then '7: Другие цветы' else '8: '
           end end end end end end end but_name
           , a.id_office, a.brief
      from store_docdata_view a,
           (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b
        where a.ID_DOC = id_doc_
              and a.STORE_TYPE = store_
                and (a.fst_id = b.fst_id(+) and (b.nbutton = button_ or button_ = 0))
                    ORDER BY b.nbutton, /* a.f_sub_type ,*/ a.full_name;
else
  open cursor_ for
    SELECT a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FULL_NAME, a.QUANTITY, a.QUANTITY_NOW, a.STORE_TYPE_NAME,
           a.STORE_TYPE, a.PRICE, a.PRICE_LIST, a.QUANTITY_PRICE, a.PRICE_PERCENT, a.GTD,
           a.SPESIFICATION, a.fst_id
           , TO_NUMBER(0,9) as nbutton, null as hol_type, null as hol_sub_type, 'Все' but_name
           , a.id_office, a.brief
      from store_docdata_view a
        where a.ID_DOC = id_doc_
              and a.STORE_TYPE = store_
                    ORDER BY a.F_TYPE, a.f_sub_type, a.full_name;
end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_data_view', '');
       RAISE_APPLICATION_ERROR (-20304, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_data_view;



--
-- Просмотр номенклатуры
--
PROCEDURE get_noms_view
(
   store_       in number,
   id_dep_      in number,
   button_      in number,
   price_part   in number,
   quant_p_     in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS

BEGIN

if id_dep_ = 62 then
  open cursor_ for
    select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.QUANTITY_NOW, a.S_NAME_RU,
           a.store_type_name, a.STORE_TYPE, a.price_list, a.colour, a.country,
           case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part/100),2)) ELSE a.price END price,
           a.QUANTITY, a.added,
           case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part/100),2)) * QUANTITY ELSE QUANTITY_PRICE END QUANTITY_PRICE,
           a.id_departments,
           case WHEN a.added = 0 or a.added is null THEN price_part ELSE price_percent END price_percent,
           null as SPESIFICATION
           , TO_NUMBER(b.nbutton,9) as nbutton, a.hol_type, a.hol_sub_type
           , case when b.nbutton = 2 then '1: Роза голландия' else
           case when b.nbutton = 3 then '2: Роза эквадор' else
           case when b.nbutton = 4 then '3: Хризантема' else
           case when b.nbutton = 5 then '4: Зелень' else
           case when b.nbutton = 6 then '5: Гвоздика' else
           case when b.nbutton = 7 then '6: Лилия' else
           case when b.nbutton = 8 then '7: Другие цветы' else '8: '
           end end end end end end end but_name
           , null as GTD
           , a.COMPILED_NAME_OTDEL
           , a.id_office, a.brief
           , p.SPEC_PRICE
      from store_docdatatemp_view a
           , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b
           , PRICE_LIST p
        where STORE_TYPE = store_
              and ID_DEPARTMENTS = id_dep_  and (a.id_office = v_office or v_office = 0)
              and ((QUANTITY_NOW <> 0 and quant_p_ = 0) or (quant_p_ = 999 and QUANTITY_NOW=0))
              and (a.fst_id = b.fst_id(+) and (b.nbutton = button_ or button_ = 0))
              and a.N_ID = p.N_ID
        ORDER BY b.nbutton, /* a.f_sub_type ,*/ a.full_name;

else
  open cursor_ for
    select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.QUANTITY_NOW, a.S_NAME_RU,
           a.store_type_name, a.STORE_TYPE, a.price_list, a.colour, a.country,
           case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part/100),2)) ELSE a.price END price,
           a.QUANTITY, a.added,
           case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part/100),2)) * QUANTITY ELSE QUANTITY_PRICE END QUANTITY_PRICE,
           a.id_departments,
           case WHEN a.added = 0 or a.added is null THEN price_part ELSE price_percent END price_percent,
           a.SPESIFICATION
           , TO_NUMBER(0,9) as nbutton, null as hol_type, null as hol_sub_type, 'Все' but_name
           , null as GTD
           , a.COMPILED_NAME_OTDEL
           , a.id_office, a.brief
           , p.SPEC_PRICE
      from store_docdatatemp_view a
           , PRICE_LIST p
        where STORE_TYPE = store_
             and ID_DEPARTMENTS = id_dep_  and (a.id_office = v_office or v_office = 0)
             and ((QUANTITY_NOW <> 0 and quant_p_ = 0) or (quant_p_ = 999 and QUANTITY_NOW=0))
             and a.N_ID = p.N_ID
        order by a.F_TYPE, a.f_sub_type, a.full_name;
end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_noms_view', '');
       RAISE_APPLICATION_ERROR (-20305, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_noms_view;



--
--  Проверка инвойса перед подгрузкой на суммы
--
procedure check_data_from_inv
(
  inv_num IN NUMBER,
  res     in out varchar2
)
as
  v_col1     number;
  v_col2     number;
  v_sum1     number;
  v_sum2     number;
  v_ppli_id  number;
begin
  res := '';
/*
  SELECT a.ppli_id into v_ppli_id
    FROM prepare_price_list_index a
    where a.inv_id = inv_num or a.inv_id2 = inv_num or a.inv_id3 = inv_num or a.inv_id4 = inv_num
  ;
*/
  SELECT a.ppli_id into v_ppli_id
    FROM prepare_price_list_index a, invoice_register r
    where r.inv_id = inv_num
     and ( r.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or r.ipp_id = a.pack_id )
  ;
/*
  select count(*) as nn, sum(b.invoice_amount) as units into v_col1, v_sum1
    FROM invoice_data a, nomenclature d, prepare_price_list b, suppliers c
    where a.INV_ID = inv_num
        and a.N_ID = d.N_ID and a.N_ID = b.N_ID and b.ppli_id = v_ppli_id and b.invoice_data_id = a.invoice_data_id
        and d.S_ID = c.S_ID and a.storned_data = 0
        and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
        and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
        and a.units > 0
  ;
*/
   select count(distinct a.n_id), sum(a.units) into v_col1, v_sum1
      FROM invoice_data a, nomenclature d, suppliers c,
      (
          SELECT a.n_id, sum(a.invoice_amount) as invoice_amount, max(a.final_price) as final_price
            FROM prepare_price_list a
            where a.ppli_id = v_ppli_id
            --and not exists (select 1 from ppl_client_price b where b.invoice_data_id = a.invoice_data_id)
            group by a.n_id
      ) b
        where a.INV_ID = inv_num
              and a.N_ID = d.N_ID
              and a.N_ID = b.N_ID(+)
              and d.S_ID = c.S_ID
              and a.storned_data = 0
              and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
              and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
              and a.units > 0
   ;


  SELECT count(distinct n_id), sum(units) as sss into v_col2, v_sum2
    FROM invoice_data a
    where inv_id = inv_num and a.storned_data = 0
  ;

  if (v_col1 <> v_col2 and v_col1 <> 0) or (v_sum1 <> v_sum2 and v_sum1 <> 0) then
    res := 'Показатели прихода на склад не сопадают с показателями инвойса:'||chr(10)||'Кол-во позиций '||v_col1||'/'||v_col2||chr(10)||'Кол-во стеблей '||v_sum1||'/'||v_sum2||chr(10)||'Продолжить операцию?';
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.check_data_from_inv', '');
       RAISE_APPLICATION_ERROR (-20390, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end check_data_from_inv;



--
--  Подгружаем данные из инвойса в склад
--
procedure data_from_inv
(
  inv_num IN NUMBER
)
as
  v_is_minus    number;
  v_old_inv_id  number;
  v_ppli_id     number;
  v_ID_DEPARTMENTS number;
  v_PPL_DATE    date;
  v_isVanDayk   number;
begin
  v_isVanDayk := 0;

  -- Найдем ценообразование от переданного инвойса
  SELECT a.ppli_id, a.ID_DEPARTMENTS, PPL_DATE into v_ppli_id, v_ID_DEPARTMENTS, v_PPL_DATE
  FROM prepare_price_list_index a
  where inv_num in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or (a.pack_id > 0 and a.pack_id = ( select r.ipp_id from invoice_register r where r.inv_id = inv_num ))
  ;

  -- Нужно проверить, что расценивается основной поставщик!!!
  SELECT count(*) into v_isVanDayk
  FROM prepare_price_list_index a, invoice_register r
  where (inv_num in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or (a.pack_id > 0 and a.pack_id = ( select r.ipp_id from invoice_register r where r.inv_id = inv_num )))
    and (r.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or r.ipp_id = a.pack_id ) and r.s_id_default = 142
  ;

  -- Проверим, не является ли подгружаемый инвойс минусовым
  select a.inv_minus, a.minus_inv_id into v_is_minus, v_old_inv_id
  from INVOICE_REGISTER a where a.inv_id = inv_num;

  -- если обычный инвойс
  if (v_is_minus = 0) then

      -- 2013-12-02 Обновим в инвойсе предыдущую цену. Т.к. в инвойсе она статична, а другим инвойсом она уже может быть изменена, что приводит к лишней переоценке
      -- при автоматической переоценки на нужно знать текущую цену товара, но взять ее с Price_List не можем, т.к. она уже там изменена в текущей сессии
      -- UPDATE PREPARE_PRICE_LIST a SET a.LAST_PRICE =
      UPDATE PREPARE_PRICE_LIST a SET a.PRELOAD_LAST_PRICE =
        (select z.PRICE from price_list z where z.n_id = a.n_id )
        WHERE a.PPLI_ID = v_ppli_id AND a.INVOICE_AMOUNT > 0;


      -- если пачка, то нам надо знать, что это первый инвойс из пачки. Обычный инвойс и так пройдет условие и там все намного проще
      -- Когда подгружается первый инвойс пачки, то нам надо обновить ОДИН РАЗ переоцененные остатки склада, а также установить признаки спец.предложения и лучших цен
      SELECT nvl(sum(r.sended_to_warehouse),0) into cnt
      FROM prepare_price_list_index a, invoice_register r
      where (inv_num in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or (a.pack_id > 0 and a.pack_id = ( select r.ipp_id from invoice_register r where r.inv_id = inv_num )))
        and (r.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or r.ipp_id = a.pack_id )
      ;


      if cnt = 0 then
          -- Если субботний прайс и первая подгрузка то обнулим все спец предложения и лучшие цены
          if to_number(to_char(v_PPL_DATE, 'D')) = 6 and v_isVanDayk > 0 then
            update price_list a set a.date_change = sysdate, a.SPEC_PRICE = null, a.BEST_PRICE = null
              where exists (select 1 from nomenclature_mat_view n
                            where n.n_id = a.n_id and n.ID_DEPARTMENTS = v_ID_DEPARTMENTS)
            ;
          end if;

        -- Установим все цены и все признаки
        DELETE FROM PRICE_LIST WHERE ID_OFFICE = const_office and N_ID in
        (
          SELECT a.N_ID FROM PREPARE_PRICE_LIST a
            WHERE a.PPLI_ID = v_ppli_id  --and a.invoice_data_id is null
        );
        insert into price_list (
          SELECT a.N_ID, sysdate, max(nvl(p.SPEC_PRICE,a.FINAL_PRICE)) as FINAL_PRICE, const_office, sysdate, max(a.spec_price), max(a.best_price), max(a.discount)
            FROM PREPARE_PRICE_LIST a, ppl_client_price p
            WHERE a.PPLI_ID = v_ppli_id
              and a.invoice_data_id = p.invoice_data_id(+)
            group by a.N_ID
        );

        -- Применим спец цены как основные
        -- Логика пока применима к вандайку только
        if v_isVanDayk > 0 then
          delete from ppl_client_price_current;
          insert into ppl_client_price_current (
            SELECT a.pplcp_id, a.n_id, a.id_clients, a.quantity, a.spec_price,
                   a.ppli_id, a.price_date
              FROM ppl_client_price a
              where a.ppli_id = v_ppli_id
          );
        end if;

      end if;
/* Вроде как пока не надо. Сейчас обновляем все цены, дальнейшие поступления по инвойсу только должны изменять количество
    -- 2. Обновим цены на товар инвойса
    DELETE FROM PRICE_LIST WHERE ID_OFFICE = const_office and N_ID in
    (
      SELECT distinct a.N_ID FROM PREPARE_PRICE_LIST a, invoice_data r
      WHERE a.PPLI_ID = v_ppli_id
          and a.n_id = r.n_id
          and r.inv_id = inv_num
          --and a.invoice_data_id = r.invoice_data_id
          --and not exists (select 1 from ppl_client_price p where p.invoice_data_id = a.invoice_data_id)
    );
    insert into price_list (
      SELECT a.N_ID, sysdate, max(nvl(p.SPEC_PRICE,a.FINAL_PRICE)) as FINAL_PRICE, const_office, sysdate, max(a.spec_price), max(a.best_price), max(a.discount)
        FROM PREPARE_PRICE_LIST a, invoice_data r, ppl_client_price p
        WHERE a.PPLI_ID = v_ppli_id
            and a.n_id = r.n_id
            and r.inv_id = inv_num
            and a.invoice_data_id = p.invoice_data_id(+)
        group by a.N_ID
    );
*/

/* 2015-06-30 Старый вариант
    DELETE FROM PRICE_LIST WHERE ID_OFFICE = const_office and N_ID in
    (
      SELECT a.N_ID FROM PREPARE_PRICE_LIST a, prepare_price_list_index b
      WHERE a.PPLI_ID = b.ppli_id and (b.inv_id = inv_num or b.inv_id2 = inv_num or b.inv_id3 = inv_num or b.inv_id4 = inv_num)
        and ( exists (select 1 from store_main s where a.n_id = s.n_id and s.ID_OFFICE=const_office and s.QUANTITY <> 0)
            or a.INVOICE_AMOUNT > 0
        )
    );

    insert into price_list (
      SELECT a.N_ID, sysdate, max(a.FINAL_PRICE) as FINAL_PRICE, const_office, sysdate, max(a.spec_price), max(a.best_price), max(a.discount)
      FROM PREPARE_PRICE_LIST a, prepare_price_list_index b, invoice_register r
      WHERE a.PPLI_ID = b.ppli_id --and (b.inv_id = inv_num or b.inv_id2 = inv_num or b.inv_id3 = inv_num or b.inv_id4 = inv_num)
        and (r.inv_id in (b.inv_id, b.inv_id2, b.inv_id3, b.inv_id4) or r.ipp_id = b.pack_id)
        and r.inv_id = inv_num
        and ( exists (select 1 from store_main s where a.n_id = s.n_id and s.ID_OFFICE=const_office and s.QUANTITY <> 0)
            or a.INVOICE_AMOUNT > 0
        )
      group by a.N_ID
    );
*/

    -- Загружаем во временную таблицу данные из инвойса
    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, GTD, PRICE, DOC_TYPE_ID)
    (
      SELECT STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, a.N_ID, a.units, 1, a.GTD, a.price, 1
        from
        (

          select a.N_ID, sum(a.units) as units, a.GTD, b.final_price as price
            FROM invoice_data a, nomenclature d, suppliers c,
            (
                SELECT a.n_id, sum(a.invoice_amount) as invoice_amount, max(a.final_price) as final_price
                  FROM prepare_price_list a
                  where a.ppli_id = v_ppli_id
                    and not exists (select 1 from ppl_client_price p where p.invoice_data_id = a.invoice_data_id)
                  group by a.n_id
                  union
                SELECT a.n_id, sum(a.invoice_amount) as invoice_amount, max(a.final_price) as final_price
                  FROM prepare_price_list a, ppl_client_price p
                  where a.ppli_id = v_ppli_id
                    and a.invoice_data_id = p.invoice_data_id(+)
                  group by a.n_id
                  having count(*) = 1
/*
                SELECT a.n_id, sum(a.invoice_amount) as invoice_amount, max(a.final_price) as final_price
                  FROM prepare_price_list a
                  where a.ppli_id = v_ppli_id
                  --and not exists (select 1 from ppl_client_price b where b.invoice_data_id = a.invoice_data_id)
                  group by a.n_id
*/
            ) b
              where a.INV_ID = inv_num
                    and a.N_ID = d.N_ID
                    and a.N_ID = b.N_ID(+)  --and b.ppli_id = 10002583 and b.invoice_data_id = a.invoice_data_id
                    and d.S_ID = c.S_ID
                    and a.storned_data = 0
                    and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
                    and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
                    and a.units > 0
                      group by a.GTD, a.N_ID, b.final_price

/*
          select a.N_ID, sum(b.invoice_amount) as units, a.GTD, b.final_price as price
            FROM invoice_data a, nomenclature d, prepare_price_list b, suppliers c
              where a.INV_ID = inv_num
                    and a.N_ID = d.N_ID and a.N_ID = b.N_ID and b.ppli_id = v_ppli_id and b.invoice_data_id = a.invoice_data_id
                    and d.S_ID = c.S_ID and a.storned_data = 0
                    and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
                    and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
                    and a.units > 0 -- 2013-02-15 ЕВ просила ввести проверку. Любой минус только через минусовой инвойс
                      group by a.GTD, a.N_ID, b.final_price
*/
      ) a
    );

  -- если минусовой инвойс
  else

    -- Минус может содержать новые позиции. Для этого создадим записи в прайслисте
    insert into price_list (
      SELECT a.N_ID, sysdate, max(a.FINAL_PRICE) as FINAL_PRICE, const_office, sysdate, max(a.spec_price), max(a.best_price), max(a.discount)
      FROM PREPARE_PRICE_LIST a, prepare_price_list_index b, invoice_register r
      WHERE a.PPLI_ID = b.ppli_id and r.inv_id = inv_num
        and ( r.inv_id in (b.inv_id,b.inv_id2,b.inv_id3,b.inv_id4) or r.ipp_id = b.pack_id  )
        and ( exists (select 1 from store_main s where a.n_id = s.n_id and s.ID_OFFICE=const_office and s.QUANTITY <> 0)
            or a.INVOICE_AMOUNT > 0
        )
        and not exists (select 1 from price_list z where z.n_id = a.n_id and z.id_office = const_office)
      group by a.N_ID
    );
/*
      SELECT a.N_ID, sysdate, max(a.FINAL_PRICE) as FINAL_PRICE, const_office, sysdate, max(a.spec_price), max(a.best_price), max(a.discount)
      FROM PREPARE_PRICE_LIST a, prepare_price_list_index b
      WHERE a.PPLI_ID = b.ppli_id and (b.inv_id = inv_num or b.inv_id2 = inv_num or b.inv_id3 = inv_num or b.inv_id4 = inv_num)
        and ( exists (select 1 from store_main s where a.n_id = s.n_id and s.ID_OFFICE=const_office and s.QUANTITY <> 0)
            or a.INVOICE_AMOUNT > 0
        )
        and not exists (select 1 from price_list z where z.n_id = a.n_id and z.id_office = const_office)
      group by a.N_ID
*/
    -- Загружаем во временную таблицу данные из инвойса
    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, GTD, PRICE, DOC_TYPE_ID)
    (
      SELECT STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, a.N_ID, a.units, 1, a.GTD, a.final_price, 1
        from
        (
          select a.*, old_minus2 - (nvl(old_minus_total,source)-source) - source as  units
          from (

          select a.N_ID, a.GTD, b.final_price
          , sum(a.units) old_minus2
          , (select sum(z.units) from invoice_data z where z.inv_id <> inv_num
                and exists (select 1 from invoice_register s where s.minus_inv_id = v_old_inv_id and s.inv_id = z.inv_id)
                and z.n_id = a.n_id and nvl(z.gtd,0) = nvl(a.gtd,0) and z.INVOICE_DATA_ID = a.parent_id )
                 old_minus_total
          , nvl( ( select sum(z.units) from invoice_data z where z.inv_id = v_old_inv_id and z.n_id = a.n_id and nvl(z.gtd,0) = nvl(a.gtd,0) and z.INVOICE_DATA_ID = a.parent_id ),0) source

--          , (sum(a.units) - nvl((select sum(z.units) from invoice_data z where z.inv_id = v_old_inv_id and z.n_id = a.n_id and nvl(z.gtd,0) = nvl(a.gtd,0)),0)) as units
            FROM invoice_data a, prepare_price_list b, suppliers c, nomenclature d
              where a.INV_ID = inv_num and a.N_ID = b.N_ID and b.ppli_id = v_ppli_id
                    and d.N_ID = a.N_ID and c.S_ID = d.S_ID and a.storned_data = 0
                    and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
                    and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
                      group by a.GTD, a.N_ID, b.final_price, a.parent_id
          ) a
      ) a
    );

  end if;


EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.data_from_inv', '');
       RAISE_APPLICATION_ERROR (-20304, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end data_from_inv;
-----------------------------------------------------------------------------------------



--
--  Подгружаем данные из инвойса в склад
--
procedure set_params_to_invoice
(
  inv_num IN NUMBER
)
as
  v_ppli_id     number;
begin
/*
  SELECT a.ppli_id into v_ppli_id
  FROM prepare_price_list_index a
  where a.inv_id = inv_num or a.inv_id2 = inv_num or a.inv_id3 = inv_num or a.inv_id4 = inv_num
  ;
*/
  SELECT a.ppli_id into v_ppli_id
    FROM prepare_price_list_index a, invoice_register r
    where r.inv_id = inv_num
     and ( r.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or r.ipp_id = a.pack_id )
  ;
    -- помечаем записи в инвойсе как подгруженные
    UPDATE invoice_data SET SENDED_TO_WAREHOUSE = 1, date_change=sysdate
    where INVOICE_DATA_ID in (
        select a.invoice_data_id
            FROM invoice_data a, prepare_price_list b, suppliers c, nomenclature d
              where a.INV_ID = inv_num and a.N_ID = b.N_ID and b.ppli_id = v_ppli_id
                    and d.N_ID = a.N_ID and c.S_ID = d.S_ID and a.storned_data = 0
                    and ( a.SENDED_TO_WAREHOUSE=0 or a.SENDED_TO_WAREHOUSE is NULL )
                    and ((c.NEED_CUST=1 and a.GTD is not NULL) or (c.NEED_CUST=0))
    );

    -- помечаем инвойс как подгруженный
    UPDATE INVOICE_REGISTER SET SENDED_TO_WAREHOUSE = 1, WAREHOUSE_SENDED_DATE = SYSDATE, date_change=sysdate where INV_ID = inv_num;

    -- если регион, то апдейтим исходный инвойс на МСК
    begin
      if const_office > 1 then
         set_msk_invoice_load(inv_num);
      end if;
    EXCEPTION WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.set_params_to_invoice', '');
    end;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.set_params_to_invoice', '');
       RAISE_APPLICATION_ERROR (-20304, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end set_params_to_invoice;



--
--  Записываем из временной таблицы данные на склад
--
procedure doc_new
(
 SP_ID_CLIENT   IN NUMBER,
 SP_DOC_DATE    IN Date,
 SP_ID_DOC_TYPE IN NUMBER,
 SP_COMMENTS    IN VARCHAR,
 SP_OTDEL       IN VARCHAR,
 SP_INV_ID      IN NUMBER,
 SP_Order_ID    IN NUMBER,
 out_message    OUT VARCHAR,
 out_docid      OUT NUMBER
)
as
  IID_DOC           NUMBER;
  IID_DOC_BUH       NUMBER;
  DDOC_NUMBER       NUMBER;
  DDOC_SUM          NUMBER;
  SP_OPERATOR_NAME  VARCHAR(1024);
  QUANTITY_REAL     NUMBER;
  exist             NUMBER;

  CURSOR data_temp IS
    select N_ID, QUANTITY, QUANTITY_REAL, PRICE, PRICE_LIST, store_type, GTD
      from STORE_DOC_DATA_TEMP
        where QUANTITY is not NULL;

begin

  IF SP_ID_DOC_TYPE=5 THEN
    select count(N_ID) into exist
      from STORE_DOC_DATA_TEMP;
  end if;


  IF SP_ID_DOC_TYPE<>5 THEN
    select count(N_ID) into exist
      from STORE_DOC_DATA_TEMP
        where QUANTITY is not NULL
              and QUANTITY<>0
              and price<>0;
  end if;

  -- если недостали данных то ругаемся
  IF exist=0 THEN out_message:='Нет данных или не проставлены количетсва!'; end if;

  -- если есть данные, то добавляем данные
  IF exist<>0 THEN

--    select user into SP_OPERATOR_NAME from dual;
    select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and a.id_office = const_office;

    SELECT get_office_unique('STORE_DOC_SET_ID')
      INTO IID_DOC
        FROM DUAL;

    if SP_ID_DOC_TYPE=1 THEN --приход
      SELECT STORE_DOC_1.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
    END IF;

    if SP_ID_DOC_TYPE=2 THEN --списание
      SELECT STORE_DOC_2.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
    END IF;

    if SP_ID_DOC_TYPE=3 THEN --уценка
      SELECT STORE_DOC_3.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
    END IF;

    if SP_ID_DOC_TYPE=4 THEN --продажа
      if (SP_ID_CLIENT is null or SP_ID_CLIENT = 0) then
         RAISE_APPLICATION_ERROR (-20305, 'Произошла непредвиденная ошибка. Получен пустой код клиента' || chr(10) || 'Пришлите скриншот разработчикам [SP_DOC_DATE='||SP_DOC_DATE||', SP_OTDEL='||SP_OTDEL||', SP_OPERATOR_NAME='||SP_OPERATOR_NAME||', SP_COMMENTS='||SP_COMMENTS||', SP_INV_ID='||SP_INV_ID||', SP_Order_ID='||SP_Order_ID||']');
      end if;

      if SP_OTDEL = 121 then
        SELECT STORE_DOC_4.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
      end if;
      if SP_OTDEL = 61 then
        SELECT STORE_DOC_4_61.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
      end if;
      if SP_OTDEL = 62 then
        SELECT STORE_DOC_4_62.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
      end if;
    END IF;

    if SP_ID_DOC_TYPE=5 THEN --инвентаризация
      SELECT STORE_DOC_5.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
    END IF;

    if SP_ID_DOC_TYPE=6 THEN --дополнительные операции
      SELECT STORE_DOC_6.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
    END IF;

    if SP_ID_DOC_TYPE=6 THEN
      insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, INV_ID, Order_ID, DOC_NUMBER, DOC_DATE_REAL, id_office)
        values (IID_DOC, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL, SP_INV_ID, SP_Order_ID, DDOC_NUMBER, SP_DOC_DATE, const_office);
    else
      -- Если продажа, то возможен минус, а значит надо заполнить ИД родителя, который приходит в переменной SP_Order_ID
      if SP_ID_DOC_TYPE=4 THEN
        insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, INV_ID, Order_ID, DOC_NUMBER, DOC_DATE_REAL, id_office, PARENT_IDDOC)
          values (IID_DOC, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL, decode(SP_INV_ID,-1,null,SP_INV_ID), decode(SP_INV_ID,-1,SP_Order_ID,0), DDOC_NUMBER, sysdate, const_office, decode(SP_INV_ID,-1,null,SP_Order_ID) );
      else
        insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, INV_ID, Order_ID, DOC_NUMBER, DOC_DATE_REAL, id_office)
          values (IID_DOC, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL, SP_INV_ID, SP_Order_ID, DDOC_NUMBER, sysdate, const_office);
      end if;
    end if;

    out_docid := IID_DOC;

    --  Вставляем в склад
    insert_in_store (IID_DOC);

    -- если продажа, то вставляем в кассу
    IF SP_ID_DOC_TYPE=4 THEN
      insert_in_cash(IID_DOC);
    end if;

    -- если продажа, списание или инвентаризация, то вставляем в бухгалтерию
    IF SP_ID_DOC_TYPE = 4 or SP_ID_DOC_TYPE = 2 or SP_ID_DOC_TYPE = 5 THEN
      insert_in_buh(IID_DOC);
    end if;

  end if;

  -- удаляем все их временной таблицы
  delete from STORE_DOC_DATA_TEMP;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.doc_new', SP_COMMENTS||';'||SP_OPERATOR_NAME);
       RAISE_APPLICATION_ERROR (-20305, 'Запрос не выполнился. ' || DBMS_UTILITY.format_error_backtrace || ' ' ||SQLERRM);

end doc_new;


--
--  Вставляем в склад
--
procedure insert_in_store
(
  IID_DOC IN NUMBER
)
is
  QUANTITY_REAL   NUMBER;
  exist           NUMBER;
  SP_OTDEL        NUMBER;
  SP_ID_DOC_TYPE  NUMBER;
  SP_ID_CLIENT    NUMBER;
  SP_DOC_DATE     DATE;
  SP_OPERATOR_NAME VARCHAR(1024);
  SP_COMMENTS     VARCHAR(1024);
  IID_DOC_BUH     NUMBER;
  SP_INV_ID       NUMBER;
  sp_office       number;
  sp_PARENT_IDDOC  number;

  quantity_st     number;
  last_price_st   number;
  final_price_st  number;

  sp_gtd          varchar2(50);
  v_gtd           number;
  MIN_DATE        date;
  p_isInvMinus    number;
  p_isFirst       number;

  tmp_str varchar2(1024);

  CURSOR data_temp IS
    select a.N_ID, a.QUANTITY, a.QUANTITY_REAL, a.PRICE, a.PRICE_LIST, a.store_type, a.GTD
    from STORE_DOC_DATA_TEMP a, nomenclature_mat_view n, STORE_DOC d
      where a.QUANTITY is not NULL and a.n_id = n.n_id and n.id_departments = d.id_departments and d.id_doc = IID_DOC;

begin

  --select user into SP_OPERATOR_NAME from dual;
  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and a.id_office = const_office;

  select ID_DEPARTMENTS, ID_DOC_TYPE, ID_CLIENT, DOC_DATE, OPERATOR_NAME, COMMENTS, inv_id, id_office, PARENT_IDDOC
    into SP_OTDEL, SP_ID_DOC_TYPE, SP_ID_CLIENT, SP_DOC_DATE, SP_OPERATOR_NAME, SP_COMMENTS, SP_INV_ID, sp_office, sp_PARENT_IDDOC
      from STORE_DOC
        where ID_DOC = IID_DOC;

  -- бегаем по записям для вставки
  FOR data_temp_cursor IN data_temp LOOP

    QUANTITY_REAL:=0;

    select count(STORE_MAIN.N_ID) into exist
      from STORE_MAIN
        WHERE N_ID = data_temp_cursor.N_ID
              and store_type = data_temp_cursor.store_type
              and ID_DEPARTMENTS = SP_OTDEL
              and id_office = sp_office
              ;

    if (exist is not Null and exist<>0) then
      SELECT STORE_MAIN.QUANTITY
        INTO QUANTITY_REAL
          FROM STORE_MAIN
             WHERE N_ID = data_temp_cursor.N_ID
                 and store_type = data_temp_cursor.store_type
                 and ID_DEPARTMENTS=SP_OTDEL
                 and id_office = sp_office
              ;
    end if;


-- Если переоценка, то изменим цены
    if (SP_ID_DOC_TYPE = 6) and (exist is not Null and exist<>0) then
      if data_temp_cursor.store_type = 1 then
        update price_list z set z.price=data_temp_cursor.price, date_change=sysdate where z.n_id = data_temp_cursor.N_ID;
      else
        update STORE_MAIN z set z.price=data_temp_cursor.price, date_change=sysdate where z.n_id = data_temp_cursor.N_ID;
      end if;
    end if;


-- Если приход то проводим проверку количества для автоматической переоценки товара
-- переоценкка теперь в отдельной функции insert_in_store_reprice
/*
    if (SP_ID_DOC_TYPE = 1) and (exist is not Null and exist<>0) then
        begin
            p_isInvMinus := 0;


            -- Проверка, если минусовой инвойс, то переоценки никакой не делаем
            if SP_INV_ID is not null and SP_INV_ID > 0 then
                select b.inv_minus into p_isInvMinus
                  FROM invoice_register b
                  where b.inv_id = SP_INV_ID
                ;
            else
                p_isInvMinus := 0;
            end if;

            tmp_str := 'select a.quantity from STORE_MAIN a where id_office='||sp_office||' and a.n_id='||data_temp_cursor.N_ID||' and a.store_type='||data_temp_cursor.store_type;

            select a.quantity into quantity_st --, price_st
                from STORE_MAIN a
                    where id_office=sp_office and a.n_id = data_temp_cursor.N_ID
            and a.store_type = data_temp_cursor.store_type;

            tmp_str := 'SELECT a.last_price, a.final_price FROM ppl_view a, invoice_register r where a.id_office='||sp_office||' and a.n_id='||data_temp_cursor.N_ID||' and r.inv_id = '||SP_INV_ID||' and ( r.inv_id in (a.inv_id,a.inv_id2,a.inv_id3,a.inv_id4) or r.ipp_id = a.pack_id )';

            SELECT max(nvl(a.PRELOAD_LAST_PRICE,a.last_price)), max(a.final_price)
            into last_price_st, final_price_st
                  FROM ppl_view a, invoice_register r
                        where a.id_office=sp_office and a.n_id = data_temp_cursor.N_ID
                        and r.inv_id = SP_INV_ID and ( r.inv_id in (a.inv_id,a.inv_id2,a.inv_id3,a.inv_id4) or r.ipp_id = a.pack_id )
                        --and (inv_id = SP_INV_ID or inv_id2 = SP_INV_ID or inv_id3 = SP_INV_ID or inv_id4 = SP_INV_ID)
                        group by n_id
            ;
        EXCEPTION
          WHEN others THEN
               LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_store p2', tmp_str);
               RAISE_APPLICATION_ERROR (-20306, 'Запрос не выполнился. p2. ' || SQLERRM || tmp_str);
               p_isInvMinus := 0;
               p_isFirst    := 0;
        end;

        -- если есть количество товара на складе и цена разнится с ценой прихода, то делаем переоценку
        if (quantity_st <> 0 and last_price_st <> final_price_st and last_price_st > 0 and p_isInvMinus = 0) then
            insert into store_doc_data_reprice (ID_DOC, QUANTITY, N_ID, store_type, QUANTITY_REAL, GTD, PRICE_1, PRICE_NEW_1, PRICE, PRICE_LIST, id_office)
              values (
                IID_DOC,
                quantity_st,
                data_temp_cursor.N_ID,
                data_temp_cursor.store_type,
                quantity_st,
                null,
                last_price_st,
                final_price_st,
                final_price_st,
                last_price_st,
                sp_office
              );
        end if;
    end if;
*/
--------------------------------------------------------------------------------


    if QUANTITY_REAL is NULL then QUANTITY_REAL := 0; end if;

    if ((data_temp_cursor.QUANTITY<>0) or (data_temp_cursor.QUANTITY=0 and SP_ID_DOC_TYPE=5)) then

        sp_gtd := '';
        if SP_ID_DOC_TYPE in (4,5) then
            if sp_PARENT_IDDOC is not null and sp_PARENT_IDDOC > 0 then
                sp_gtd := data_temp_cursor.GTD;
            else
                select min(ddate) into MIN_DATE from STORE_GTD where INPUT > OUTPUT_STORE and n_id = data_temp_cursor.n_id and id_office = sp_office;

                select count(N_ID) into exist
                  from STORE_GTD
                  where INPUT > OUTPUT_STORE and n_id = data_temp_cursor.n_id and ddate = MIN_DATE and id_office = sp_office
                ;

                -- если найдены ГТД для данной номенклатуры
                IF exist <> 0 THEN
                begin
                    select GTD, id_gtd into sp_gtd, v_gtd from (
                        select gtd, id_gtd from STORE_GTD
                        where INPUT > OUTPUT_STORE and n_id = data_temp_cursor.n_id and ddate = MIN_DATE and id_office = sp_office
                        order by gtd
                    ) a where rownum = 1
                ;

                EXCEPTION WHEN others THEN
                    RAISE_APPLICATION_ERROR (-20308, 'Больше одной записи. InsertInCash n_id=' || data_temp_cursor.n_id);
                end;
                end if;

                IF exist = 0 THEN
                    -- При отсутствии свободной ГТД берем последнюю
                    select min(ddate) into MIN_DATE from STORE_GTD where n_id = data_temp_cursor.n_id and id_office = sp_office;
       --LOG_ERR('', 1, 'store_pkg.insert_in_store', 'n_id='||data_temp_cursor.n_id||', MIN_DATE='||MIN_DATE);

                    select GTD, id_gtd into sp_gtd, v_gtd from (
                       select gtd, id_gtd from STORE_GTD
                       where n_id = data_temp_cursor.n_id and ddate = MIN_DATE and id_office = sp_office
                       order by gtd
                   ) where rownum = 1;
                end if;
            end if;
        end if;

        -- Проверка, что указанная цена прайс-листа совпадает с текущей
        if data_temp_cursor.store_type = 1 then
          --tmp_str := 'SELECT a.PRICE from price_list a where n_id = '||data_temp_cursor.n_id;
          begin
            SELECT a.PRICE
              into final_price_st
              from price_list a
              where n_id = data_temp_cursor.n_id
            ;
          EXCEPTION
            when no_data_found then
              final_price_st := 0;
          end;
        else
          SELECT a.price
            into final_price_st
            from store_main a
            where a.n_id = data_temp_cursor.n_id and a.store_type = data_temp_cursor.store_type
          ;
        end if;
        ------------------------------------------------------------------------

        insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, PRICE_LIST, store_type, QUANTITY_REAL, GTD, id_office)
        values (
          get_office_unique('STORE_DOC_DATA_SET_ID'),
          IID_DOC,
          data_temp_cursor.N_ID,
          data_temp_cursor.QUANTITY,
          data_temp_cursor.PRICE,
          --data_temp_cursor.PRICE_LIST,
          case when SP_ID_DOC_TYPE = 6 then data_temp_cursor.PRICE_LIST else final_price_st end,
          data_temp_cursor.store_type,
          case when SP_ID_DOC_TYPE = 6 then data_temp_cursor.QUANTITY else QUANTITY_REAL end,
          sp_gtd, --data_temp_cursor.GTD,
          sp_office
        );

        -- если приход то добавляем ГТД приход
        IF SP_ID_DOC_TYPE = 1 THEN
           insert into STORE_GTD (ID_GTD, DDATE, N_ID, INPUT, GTD, id_office, gtd_country)
              values (get_office_unique('STORE_GTD_SET_ID'), SYSDATE, data_temp_cursor.n_id, data_temp_cursor.QUANTITY, data_temp_cursor.GTD, sp_office, (select a.gtd_country from invoice_data a where a.inv_id = SP_INV_ID and a.n_id = data_temp_cursor.n_id and a.gtd = data_temp_cursor.GTD and rownum = 1) );
        end if;

    end if;

  END LOOP; --FOR data_temp_cursor IN data_temp LOOP
/*
  -- Сформируем один документ для переоценки при приходовании товара
  select count(*) into exist from store_doc_data_reprice where ID_DOC = IID_DOC;
  if exist > 0 then
    insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, INV_ID, DOC_DATE_REAL, ID_DEPARTMENTS, DOC_NUMBER, Order_ID, id_office)
        values (get_office_unique('STORE_DOC_SET_ID'), null, trunc(SYSDATE), 6, 'Автоматическая переоценка товара по пришедшему инвойсу №'||SP_INV_ID, SP_OPERATOR_NAME, null, SYSDATE, SP_OTDEL, STORE_DOC_6.NEXTVAL, null, sp_office);

    insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, QUANTITY, N_ID, store_type, QUANTITY_REAL, GTD, PRICE_1, PRICE_NEW_1, PRICE, PRICE_LIST, id_office)
    (select get_office_unique('STORE_DOC_DATA_SET_ID'), get_office_unique_curr('STORE_DOC_SET_ID'), QUANTITY, N_ID, store_type, QUANTITY_REAL, GTD, PRICE_1, PRICE_NEW_1, PRICE, PRICE_LIST, id_office
        from store_doc_data_reprice  where ID_DOC = IID_DOC
    );
  end if;
*/

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_store', tmp_str);
       RAISE_APPLICATION_ERROR (-20306, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end insert_in_store;
-----------------------------------------------------------------------------------------


--
-- сделаем документы переоценки остатков при смене цены в новой прайс-листе при условии, что этих позиций нет в самом инвойсе
--
procedure insert_in_store_reprice
(
  v_PPLI_ID IN NUMBER
)
is
  SP_OPERATOR_NAME VARCHAR(1024);
  sp_new_doc  number;
  sp_id_dep   number;
  p_isFirst   number;

  CURSOR data_temp IS
      SELECT a.N_ID, max(a.FINAL_PRICE) as FINAL_PRICE, sum(a.stock_amount) as stock_amount, max(c.price) as price, b.id_departments, sum(d.quantity) as quantity, b.id_office
      FROM PREPARE_PRICE_LIST a, prepare_price_list_index b, price_list c, store_main d, invoice_register r
      WHERE a.PPLI_ID = b.ppli_id
        and r.inv_id = v_PPLI_ID
        and ( r.inv_id in (b.inv_id,b.inv_id2,b.inv_id3,b.inv_id4) or r.ipp_id = b.pack_id )
        --and a.invoice_data_id is null  --2015-07-12 теперь производим переоценку всего склада по всем позициям прайса
        and a.n_id = c.n_id
        and a.n_id = d.n_id
        and d.store_type = 1 and d.quantity <> 0
        and c.id_office = const_office
        and c.id_office = d.id_office
      group by b.id_departments, a.N_ID, b.id_office
      ;
/* 2015-07-03 Не было учета переоценки
      SELECT a.N_ID, max(a.FINAL_PRICE) as FINAL_PRICE, sum(a.stock_amount) as stock_amount, max(c.price) as price, b.id_departments, sum(d.quantity) as quantity, b.id_office
      FROM PREPARE_PRICE_LIST a, prepare_price_list_index b, price_list c, store_main d
      WHERE a.PPLI_ID = b.ppli_id and b.inv_id = v_PPLI_ID and a.invoice_data_id is null and a.n_id = c.n_id and a.n_id = d.n_id and d.store_type = 1
        and c.id_office = const_office and c.id_office = d.id_office
      group by b.id_departments, a.N_ID, b.id_office
*/

begin
  -- если пачка, то нам надо знать, что это первый инвойс из пачки. Обычный инвойс и так пройдет условие и там все намного проще
  -- Когда подгружается первый инвойс пачки, то нам надо обновить ОДИН РАЗ переоцененные остатки склада, а также установить признаки спец.предложения и лучших цен
  SELECT nvl(sum(r.sended_to_warehouse),0) into p_isFirst
  FROM prepare_price_list_index a, invoice_register r
  where (v_PPLI_ID in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or (a.pack_id > 0 and a.pack_id = ( select r.ipp_id from invoice_register r where r.inv_id = v_PPLI_ID )))
    and (r.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or r.ipp_id = a.pack_id )
  ;

  if p_isFirst = 0 then
    select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and a.id_office = const_office;

    sp_new_doc := get_office_unique('STORE_DOC_SET_ID');
    select id_departments into sp_id_dep from invoice_register where inv_id = v_PPLI_ID;

    insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, INV_ID, DOC_DATE_REAL, ID_DEPARTMENTS, DOC_NUMBER, Order_ID, id_office)
    values (sp_new_doc, null, trunc(SYSDATE), 6, 'Автоматическая переоценка остатков склада в связи с подгрузкой инвойса №'||v_PPLI_ID, SP_OPERATOR_NAME, null, SYSDATE, sp_id_dep, STORE_DOC_6.NEXTVAL, null, const_office );

    cnt := 0;

    -- бегаем по записям для вставки
    FOR data_temp_cursor IN data_temp LOOP
          -- если есть количество товара на складе и цена разнится с ценой прихода, то делаем переоценку
          if (data_temp_cursor.quantity <> 0 and data_temp_cursor.price <> data_temp_cursor.FINAL_PRICE and data_temp_cursor.price > 0) then
              insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, QUANTITY, N_ID, store_type, QUANTITY_REAL, GTD, PRICE_1, PRICE_NEW_1, PRICE, PRICE_LIST, id_office)
                values (
                  get_office_unique('STORE_DOC_DATA_SET_ID'),
                  sp_new_doc,
                  data_temp_cursor.quantity,
                  data_temp_cursor.N_ID,
                  1,
                  data_temp_cursor.quantity,
                  null,
                  data_temp_cursor.price,
                  data_temp_cursor.FINAL_PRICE,
                  data_temp_cursor.FINAL_PRICE,
                  data_temp_cursor.price,
                  data_temp_cursor.id_office
                );
              cnt := cnt + 1;
              --LOG_ERR('cnt=' || cnt || ' sp_new_doc='||sp_new_doc||' N_ID='||data_temp_cursor.N_ID, 0, 'store_pkg.insert_in_cash', '');
          end if;
    END LOOP; --FOR data_temp_cursor IN data_temp LOOP

    if cnt = 0 then
      delete from STORE_DOC where id_doc = sp_new_doc;
    end if;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_store_reprice', '');
       RAISE_APPLICATION_ERROR (-20306, 'Запрос не выполнился ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end insert_in_store_reprice;
-----------------------------------------------------------------------------------------


--
--  Вставляем в кассу
--
procedure insert_in_cash
(
  IID_DOC IN NUMBER
)
is
  DDOC_NUMBER     NUMBER;
  DDOC_SUM        NUMBER;
  CASH_PAYDESK    NUMBER;
  CASH_OPERATION  NUMBER;
  SP_OTDEL        NUMBER;
  SP_ID_CLIENT    NUMBER;
  SP_DOC_DATE     DATE;
  sp_office       number;
  new_id          number;
begin

  select ID_DEPARTMENTS, DOC_NUMBER, DOC_DATE, ID_CLIENT, id_office
    into SP_OTDEL, DDOC_NUMBER, SP_DOC_DATE, SP_ID_CLIENT, sp_office
  from STORE_DOC
  where ID_DOC = IID_DOC;

  -- Если срез
  IF SP_OTDEL = 62 THEN
    CASH_PAYDESK   := 1;
    CASH_OPERATION := 1;
  end if;

  -- Если горшки
  IF SP_OTDEL = 61 THEN
    CASH_PAYDESK   := 2;
    CASH_OPERATION := 32;
  end if;

  -- Если аксессуары
  IF SP_OTDEL = 121 THEN
    CASH_PAYDESK   := 3;
    CASH_OPERATION := 4;
  end if;

  select SUM( QUANTITY*PRICE )
    into DDOC_SUM
      from STORE_DOC_DATA a, nomenclature n
        where a.ID_DOC = IID_DOC and a.n_id = n.n_id and n.id_office in (1, const_office) and n.fst_id not in (const_cargo, const_cargo_62);
--      from STORE_DOC_DATA
--        where ID_DOC = IID_DOC;

  select get_office_unique('CASH_TMP_ID') into new_id from dual;
  insert into numeration_seq values(new_id, 'cash_tmp', year_cash_seq.nextval);
  insert into CASH_TMP
           (ID_CASH_TMP,                ID_CLIENTS,   PAYDESK,      OPERATION,      INVOICE,     SUMM,     DDATE_IN, R_PAYDESK, R_DDATE, id_office)
    values (new_id, SP_ID_CLIENT, CASH_PAYDESK, CASH_OPERATION, DDOC_NUMBER, DDOC_SUM, SYSDATE,  0, SP_DOC_DATE, sp_office);

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_cash', '');
       RAISE_APPLICATION_ERROR (-20307, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end insert_in_cash;
-----------------------------------------------------------------------------------------


--
--  Вставляем в бухгалтерию
--
--
--  Вставляем в бухгалтерию
--
procedure insert_in_buh
(
  IID_DOC IN NUMBER
)
is
  SP_OTDEL         NUMBER;
  SP_ID_DOC_TYPE   NUMBER;
  SP_ID_CLIENT     NUMBER;
  SP_DOC_DATE      DATE;
  SP_OPERATOR_NAME VARCHAR(1024);
  SP_COMMENTS      VARCHAR(1024);
  IID_DOC_BUH      NUMBER;
  kol              NUMBER;
  kol1             NUMBER;
  Y                NUMBER;
  YY               NUMBER;
  exist            NUMBER;
  exist1           NUMBER;
  GTD_ID           NUMBER;
  GTD              VARCHAR2(1024);
  GTD_kol          NUMBER;
  min_date         DATE;
  max_date         DATE;
  SP_DOC_NUMBER    NUMBER;
  sp_office        number;
  sp_gtd           varchar2(100);
  sp_PARENT_IDDOC  number;
  cnt              number;
  cnt_total        number;

  sqltmp           varchar2(4000);

  TYPE cv_typ IS REF CURSOR;
  cv cv_typ;
  tmp_q            number;
  tmp_gtd          varchar2(50);
  tmp_gtd_county   number;

  CURSOR data_temp IS
    select N_ID, QUANTITY, QUANTITY_REAL, PRICE, PRICE_LIST, store_type, gtd
      from STORE_DOC_DATA
        where id_doc = IID_DOC;

begin

  exist1 := 0;
  exist  := 0;

  select ID_DEPARTMENTS, ID_DOC_TYPE, ID_CLIENT, DOC_DATE, OPERATOR_NAME, COMMENTS, DOC_NUMBER, id_office, PARENT_IDDOC
    into SP_OTDEL, SP_ID_DOC_TYPE, SP_ID_CLIENT, SP_DOC_DATE, SP_OPERATOR_NAME, SP_COMMENTS, SP_DOC_NUMBER, sp_office, sp_PARENT_IDDOC
      from STORE_DOC
        where ID_DOC = IID_DOC;

  -- продажа -------------------------------------------------------------------
  IF SP_ID_DOC_TYPE = 4 THEN

     SELECT get_office_unique('BUH_DOC_SET_ID') INTO IID_DOC_BUH from DUAL;

     if SP_ID_DOC_TYPE=1 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарный чек
        SELECT BUH_DOC_NUMBER_1.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=2 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --счет-фактура
        SELECT BUH_DOC_NUMBER_2.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=3 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --товарная накладная
        SELECT BUH_DOC_NUMBER_3.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=4 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --продажа
        SELECT BUH_DOC_NUMBER_4.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=5 and (SP_DOC_NUMBER=0 or SP_DOC_NUMBER is null) THEN --переоценка
        SELECT BUH_DOC_NUMBER_5.NEXTVAL
          INTO SP_DOC_NUMBER
            FROM DUAL;
     END IF;
     ---------------------------------------------------------------------------


     insert into BUH_DOC (ID_DOC,       STORE_DOC_ID, ID_DOC_TYPE, ID_CLIENT,    DOC_DATE,           OPERATOR_NAME,    COMMENTS,    ID_DEPARTMENTS, DOC_NUMBER, id_office)
                  values (IID_DOC_BUH,  IID_DOC,      4,           SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_OPERATOR_NAME, SP_COMMENTS, SP_OTDEL,       SP_DOC_NUMBER, sp_office);

  end if;


  -- Бегаем по данным ----------------------------------------------------------
  FOR data_temp_cursor IN data_temp LOOP

    kol := data_temp_cursor.QUANTITY;

    --переоценка
    IF SP_ID_DOC_TYPE = 5 then
      kol := data_temp_cursor.QUANTITY - data_temp_cursor.QUANTITY_REAL;
    end if;



    -- выбираем наименьшую ГТД  для списывания по каждой единице товара
    IF kol > 0 THEN
    LOOP
        EXIT WHEN kol = 0;

        select min(ddate) into MIN_DATE from STORE_GTD where INPUT > OUTPUT_STORE and n_id = data_temp_cursor.n_id and id_office = sp_office;

        select count(N_ID) into exist1
          from STORE_GTD
            where INPUT > OUTPUT_STORE
                  and n_id = data_temp_cursor.n_id
                  and ddate = MIN_DATE
                  and id_office = sp_office
                  ;

        -- если найдены ГТД для данной номенклатуры
        IF exist1 <> 0 THEN
          begin
            select ID_GTD, GTD, (INPUT-OUTPUT_STORE), gtd_country into GTD_ID, GTD, GTD_kol, tmp_gtd_county from (
                select ID_GTD, GTD, INPUT, OUTPUT_STORE, gtd_country
                from STORE_GTD
                where INPUT > OUTPUT_STORE
                      and n_id = data_temp_cursor.n_id
                      and ddate = MIN_DATE
                      and id_office = sp_office
                order by gtd
            ) where rownum = 1;
          EXCEPTION
              WHEN others THEN
                   RAISE_APPLICATION_ERROR (-20308, 'Больше одной записи. InsertInCash n_id=' || data_temp_cursor.n_id);
          end;


          if GTD_kol >= kol THEN kol1 := kol;     kol := 0;           end if;
          if GTD_kol < kol  THEN kol1 := GTD_kol; kol := kol-GTD_kol; end if;

          --продажа
          IF SP_ID_DOC_TYPE = 4 THEN
            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office, gtd_country)
            values (
            get_office_unique('BUH_DOC_DATA_SET_ID'),
            IID_DOC_BUH,
            data_temp_cursor.N_ID,
            kol1,
            data_temp_cursor.PRICE,
            GTD,
            sp_office,
            tmp_gtd_county
            );
          end if;

          if SP_ID_DOC_TYPE = 5 THEN
            UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+(data_temp_cursor.QUANTITY_REAL-data_temp_cursor.QUANTITY), date_change=sysdate where ID_GTD = GTD_ID;
          else
            UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+kol1, date_change=sysdate where ID_GTD = GTD_ID;
          end if;

       end if;  -- IF exist1 <> 0 THEN

       -- если нет ГТД для номенклатуры
       IF exist1 = 0 THEN

        -- При отсутствии свободной ГТД берем последнюю
        select min(ddate) into MIN_DATE from STORE_GTD where /*INPUT = OUTPUT_STORE and*/ n_id = data_temp_cursor.n_id and id_office = sp_office;

        select GTD, gtd_country into GTD, tmp_gtd_county
          from STORE_GTD
            where /*INPUT > OUTPUT_STORE
                  and*/ n_id = data_temp_cursor.n_id
                  and ddate = MIN_DATE and id_office = sp_office and rownum = 1;


          select count(ID_DOC_DATA) into Y
            from BUH_DOC_DATA
              where n_id = data_temp_cursor.n_id
                    and ID_DOC = IID_DOC_BUH;

           -- если найдены ID_DOC_DATA
           if (Y<>0) then
            select ID_DOC_DATA into YY
              from BUH_DOC_DATA
                where n_id = data_temp_cursor.n_id
                      and ID_DOC=IID_DOC_BUH and rownum=1;

            UPDATE BUH_DOC_DATA SET QUANTITY=QUANTITY+kol, date_change=sysdate where ID_DOC_DATA=YY;
           end if;

           -- если нет ID_DOC_DATA
           if (Y=0) then
            insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office, gtd_country)
             values (
              get_office_unique('BUH_DOC_DATA_SET_ID'),
              IID_DOC_BUH,
              data_temp_cursor.N_ID,
              kol,
              data_temp_cursor.PRICE,
              GTD,
              sp_office,
              tmp_gtd_county
              );
           end if;

          kol:=0;
       end if;  -- IF exist1 = 0 THEN;

    END LOOP;
    end if; -- IF kol > 0 THEN


    -- если количество отрицательное
    IF kol<0 THEN
       if SP_ID_DOC_TYPE=4 and sp_PARENT_IDDOC is not null and sp_PARENT_IDDOC > 0 then
           sqltmp := 'select ID_GTD, GTD, OUTPUT_STORE from STORE_GTD a where (a.GTD='||data_temp_cursor.GTD||' or a.GTD is null) and a.n_id='||data_temp_cursor.N_ID||' and id_office='||sp_office;

           SELECT count(distinct c.gtd) into cnt
           FROM store_doc_data a, buh_doc_data c, buh_doc b
           where a.id_doc = sp_PARENT_IDDOC and a.id_doc = b.store_doc_id and b.id_doc = c.id_doc and a.n_id = c.n_id and a.n_id = data_temp_cursor.N_ID
           ;

           -- Если при продаже списывалось одно ГТД или не найдем следов в бухгалтерии, то выполним простой код списания через ГТД в накладной
            if cnt = 1 or cnt = 0 then

                       select count(*) into cnt
                       from STORE_GTD a
                         where (a.GTD = data_temp_cursor.GTD or a.gtd is null) and a.n_id = data_temp_cursor.N_ID and id_office = sp_office
                              and ddate = (
                                select max(ddate) from STORE_GTD b
                                  where b.n_id = data_temp_cursor.n_id and b.id_office = sp_office and (b.GTD = data_temp_cursor.GTD or b.gtd is null)
                              )
                       ;
                       if cnt = 1 then
                           select ID_GTD, GTD, OUTPUT_STORE  into GTD_ID, GTD, GTD_kol
                           from STORE_GTD a
                             where (a.GTD = data_temp_cursor.GTD or a.gtd is null) and a.n_id = data_temp_cursor.N_ID and id_office = sp_office
                                  and ddate = (
                                    select max(ddate) from STORE_GTD b
                                      where b.n_id = data_temp_cursor.n_id and b.id_office = sp_office and (b.GTD = data_temp_cursor.GTD or b.gtd is null)
                                  )
                           ;

                           UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+data_temp_cursor.QUANTITY, date_change=sysdate where ID_GTD = GTD_ID;
                       end if;
                       if cnt > 1 then
                           LOG_ERR('При минусе накладной выбрана не одна ГТД', 0, 'store_pkg.insert_in_buh', sqltmp);

                           select ID_GTD, GTD, OUTPUT_STORE into GTD_ID, GTD, GTD_kol
                           from STORE_GTD a
                             where (a.GTD = data_temp_cursor.GTD or a.gtd is null) and a.n_id = data_temp_cursor.N_ID and id_office = sp_office
                                  and ddate = (
                                    select max(ddate) from STORE_GTD b
                                      where b.n_id = data_temp_cursor.n_id and b.id_office = sp_office and (b.GTD = data_temp_cursor.GTD or b.gtd is null)
                                  ) and rownum = 1
                           ;

                           UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+data_temp_cursor.QUANTITY, date_change=sysdate where ID_GTD = GTD_ID;
                       end if;

                       insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
                         values (
                           get_office_unique('BUH_DOC_DATA_SET_ID'),
                           IID_DOC_BUH,
                           data_temp_cursor.N_ID,
                           data_temp_cursor.QUANTITY,
                           data_temp_cursor.PRICE,
                           data_temp_cursor.GTD,
                           sp_office
                       );
            else

                 OPEN cv FOR
                    SELECT c.gtd, sum(c.quantity) as quantity
                    FROM store_doc_data a, buh_doc_data c, buh_doc b
                    where a.id_doc = sp_PARENT_IDDOC and a.id_doc = b.store_doc_id and b.id_doc = c.id_doc and a.n_id = c.n_id and a.n_id = data_temp_cursor.N_ID
                    group by c.gtd
                    ;

                    LOOP
                        FETCH cv INTO tmp_gtd, tmp_q;
                        EXIT WHEN cv%NOTFOUND;

                        begin
                            select id_gtd into GTD_ID from (
                                select * from (
                                SELECT a.id_gtd FROM store_gtd a
                                  where a.gtd = tmp_gtd and n_id = data_temp_cursor.N_ID and a.input > tmp_q
                                  order by ddate desc
                                ) z where rownum = 1
                            );
                        exception when no_data_found then GTD_ID := 0;
                        end;

                        UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE-tmp_q, date_change=sysdate where ID_GTD = GTD_ID;

                        insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
                          values (
                            get_office_unique('BUH_DOC_DATA_SET_ID'),
                            IID_DOC_BUH,
                            data_temp_cursor.N_ID,
                            -tmp_q,
                            data_temp_cursor.PRICE,
                            tmp_gtd,
                            sp_office
                        );

                    END LOOP;
                 CLOSE cv;

            end if;

       else
           select QUANTITY_REAL into exist1 from store_doc_data_temp where n_id =data_temp_cursor.n_id; -- and id_doc =  IID_DOC;
           if exist1 < abs(kol) then
              if exist1 > 0 and kol < 0 then
                 kol := (-1)*exist1;
              end if;
           end if;

           LOOP
             EXIT WHEN kol=0;

             select count(ID_GTD) into exist1
               from STORE_GTD
                 where OUTPUT_STORE <> 0
                      and n_id=data_temp_cursor.n_id and id_office = sp_office
                      and ddate = (
                        select max(ddate) from STORE_GTD
                          where OUTPUT_STORE <> 0 and n_id = data_temp_cursor.n_id and id_office = sp_office
                        )
                      ;

             -- если нашли ГТД
             IF exist1<>0 THEN

               select ID_GTD, GTD, (OUTPUT_STORE) into GTD_ID, GTD, GTD_kol
               from (
                 select ID_GTD, GTD, OUTPUT_STORE
                 from STORE_GTD
                   where OUTPUT_STORE <> 0
                        and n_id = data_temp_cursor.n_id and id_office = sp_office
                        and ddate = (
                          select max(ddate) from STORE_GTD
                            where OUTPUT_STORE <> 0 and n_id = data_temp_cursor.n_id and id_office = sp_office
                          )
               ) where rownum = 1;

               if GTD_kol >= ABS(kol) THEN
                  kol1 := kol;
                  kol := 0;
               end if;

               if GTD_kol < ABS(kol) THEN
                  kol1 := GTD_kol * (-1);
                  kol := kol + GTD_kol;
               end if;

               IF SP_ID_DOC_TYPE=4 THEN
                  insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
                  values (
                      get_office_unique('BUH_DOC_DATA_SET_ID'),
                      IID_DOC_BUH,
                      data_temp_cursor.N_ID,
                      kol1,
                      data_temp_cursor.PRICE,
                      GTD,
                      sp_office
                  );
               end if;

               if SP_ID_DOC_TYPE = 5 THEN
                  UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+(data_temp_cursor.QUANTITY_REAL-data_temp_cursor.QUANTITY), date_change=sysdate where ID_GTD = GTD_ID;
               else
                  UPDATE STORE_GTD SET OUTPUT_STORE = OUTPUT_STORE+kol1, date_change=sysdate where ID_GTD = GTD_ID;
               end if;

             end if; -- IF exist1<>0 THEN


             -- если не нашли ничего
             IF exist1=0 THEN

               select count(ID_DOC_DATA) into Y
               from BUH_DOC_DATA
               where n_id = data_temp_cursor.n_id and gtd = data_temp_cursor.gtd
                    and ID_DOC=IID_DOC_BUH
                    ;

               -- временно сделаю лог для отлова лищних данных
               if (Y > 1) then
                   LOG_ERR('select count(ID_DOC_DATA) from BUH_DOC_DATA where n_id='||data_temp_cursor.n_id||' and ID_DOC='||IID_DOC_BUH, IID_DOC_BUH, 'count='||Y, '');
               end if;
               ------------------------------------------------

               -- если есть документ
               if (Y <> 0) then
                 select max(ID_DOC_DATA) into YY
                   from BUH_DOC_DATA
                     where n_id = data_temp_cursor.n_id and gtd = data_temp_cursor.gtd
                          and ID_DOC = IID_DOC_BUH
                          ;
                 UPDATE BUH_DOC_DATA SET QUANTITY = QUANTITY+kol, date_change=sysdate where ID_DOC_DATA = YY;
               end if;

               -- нет документа
               if (Y = 0) then
                 insert into BUH_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, GTD, id_office)
                 values (
                    get_office_unique('BUH_DOC_DATA_SET_ID'),
                    IID_DOC_BUH,
                    data_temp_cursor.N_ID,
                    kol,
                    data_temp_cursor.PRICE,
                    '',
                    sp_office
                 );
               end if;

               kol := 0;

             end if; -- IF exist1=0 THEN

           END LOOP;

       end if; -- if sp_PARENT_IDDOC is not null and sp_PARENT_IDDOC > 0 then

    end if; -- IF kol<0 THEN

  END LOOP; -- FOR data_temp_cursor IN data_temp LOOP

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_in_buh', sqltmp);
       RAISE_APPLICATION_ERROR (-20308, 'Запрос не выполнился. ' || DBMS_UTILITY.format_error_backtrace || ' ' ||SQLERRM);

end insert_in_buh;
-----------------------------------------------------------------------------------------






--
--  Записываем из временной таблицы данные на склад
--
procedure doc_new_hst
(
 SP_ID_CLIENT   IN NUMBER,
 SP_DOC_DATE    IN Date,
 SP_ID_DOC_TYPE IN NUMBER,
 SP_COMMENTS    IN VARCHAR,
 SP_OTDEL       IN VARCHAR,
 out_message    OUT VARCHAR,
 out_docid      OUT NUMBER
)
as
  IID_DOC           NUMBER;
  IID_DOC_BUH       NUMBER;
  DDOC_NUMBER       NUMBER;
  DDOC_SUM          NUMBER;
  SP_OPERATOR_NAME  VARCHAR(1024);
  QUANTITY_REAL     NUMBER;
  exist             NUMBER;

  CURSOR data_temp IS
    select N_ID, QUANTITY, QUANTITY_REAL, PRICE, PRICE_LIST, store_type, GTD
      from STORE_DOC_DATA_TEMP
        where QUANTITY is not NULL;

begin

  IF SP_ID_DOC_TYPE=5 THEN
    select count(N_ID) into exist
      from STORE_DOC_DATA_TEMP;
  end if;


  IF SP_ID_DOC_TYPE<>5 THEN
    select count(N_ID) into exist
      from STORE_DOC_DATA_TEMP
        where QUANTITY is not NULL
              and QUANTITY<>0
              and price<>0;
  end if;

  -- если недостали данных то ругаемся
  IF exist=0 THEN out_message:='Нет данных или не проставлены количетсва!'; end if;

  -- если есть данные, то добавляем данные
  IF exist<>0 THEN

     select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and a.id_office = const_office;
     SELECT get_office_unique('STORE_DOC_SET_ID') INTO IID_DOC FROM DUAL;

     if SP_ID_DOC_TYPE=1 THEN --приход
        SELECT STORE_DOC_1.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=2 THEN --списание
        SELECT STORE_DOC_2.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=3 THEN --уценка
        SELECT STORE_DOC_3.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=4 THEN --продажа
      SELECT STORE_DOC_4.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=5 THEN --инвентаризация
        SELECT STORE_DOC_5.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=6 THEN --дополнительные операции
        SELECT STORE_DOC_6.NEXTVAL INTO DDOC_NUMBER FROM DUAL;
     END IF;

     if SP_ID_DOC_TYPE=6 THEN
        insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, INV_ID, Order_ID, DOC_NUMBER, DOC_DATE_REAL, id_office)
          values (IID_DOC, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL, NULL, NULL, DDOC_NUMBER, SP_DOC_DATE, const_office);
     else
        insert into STORE_DOC (ID_DOC, ID_CLIENT, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, INV_ID, Order_ID, DOC_NUMBER, DOC_DATE_REAL, id_office)
          values (IID_DOC, SP_ID_CLIENT, trunc(SP_DOC_DATE), SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL, NULL, NULL, DDOC_NUMBER, SP_DOC_DATE, const_office);
     end if;

     out_docid := IID_DOC;








     -- бегаем по записям для вставки
     FOR data_temp_cursor IN data_temp LOOP

        if QUANTITY_REAL is NULL then QUANTITY_REAL := 0; end if;

        if ((data_temp_cursor.QUANTITY<>0) or (data_temp_cursor.QUANTITY=0 and SP_ID_DOC_TYPE=5))
        then
            insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, PRICE_LIST, store_type, QUANTITY_REAL, GTD, id_office)
                values (
                  get_office_unique('STORE_DOC_DATA_SET_ID'),
                  IID_DOC,
                  data_temp_cursor.N_ID,
                  data_temp_cursor.QUANTITY,
                  data_temp_cursor.PRICE,
                  data_temp_cursor.PRICE_LIST,
                  data_temp_cursor.store_type,
                  case when SP_ID_DOC_TYPE = 6 then data_temp_cursor.QUANTITY else QUANTITY_REAL end,
                  data_temp_cursor.GTD,
                  const_office
            );
        end if;

     END LOOP; --FOR data_temp_cursor IN data_temp LOOP

  end if;

  -- удаляем все их временной таблицы
  delete from STORE_DOC_DATA_TEMP;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.doc_new_hst', '');
       RAISE_APPLICATION_ERROR (-20330, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end doc_new_hst;




--
--  Скидка / надбавка
--
procedure set_price_part
(
  price_percent IN NUMBER,
  p_client      in varchar2
)
as
--p1 number;
--p2 number;
begin
  if p_client = 'ЧЛ' then
    UPDATE STORE_DOC_DATA_TEMP a
      set PRICE = price_list+round((price_list*price_percent/100),2)
    ;
  ELSE
    UPDATE STORE_DOC_DATA_TEMP a
      set PRICE = price_list+round((price_list*price_percent/100),2)
    where exists (select 1 from price_list p where p.n_id = a.n_id and nvl(p.SPEC_PRICE,0) = 0)
    ;
  end if;
    --commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.set_price_part', '');
       RAISE_APPLICATION_ERROR (-20309, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end;
-----------------------------------------------------------------------------------------



--
--  Снятие / установка признака для инвентаризации
--
procedure set_check_inv
(
  added_1_    IN NUMBER,
  added_      IN NUMBER,
  N_ID_       in number,
  QUANTITY_   in number,
  STORE_TYPE_ in number,
  PRICE_      in number
)
as

begin

  delete from STORE_DOC_DATA_TEMP where ID_DOC_DATA = added_;

  IF (added_1_ = 1) THEN
     INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, PRICE)
       VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, N_ID_, QUANTITY_, STORE_TYPE_, PRICE_);
  end if;

--  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.set_check_inv', '');
       RAISE_APPLICATION_ERROR (-20310, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end set_check_inv;


--
--  Вставляем во временную таблицу запись
--
procedure ins_in_temp
(
  n_id_         IN NUMBER,
  store_type_   IN NUMBER
)
is
begin

  INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, store_type) values (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, n_id_, store_type_);

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.ins_in_temp', '');
       RAISE_APPLICATION_ERROR (-20311, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end ins_in_temp;



--
--  Вставляем всю номенклатуру во временную таблицу
--
procedure NOM_TO_TEMP
(
  in_otdel IN NUMBER,
  V_SERVICE   in number,
  param_   IN NUMBER,
  v_office IN NUMBER
)
as
  exist NUMBER;
  IID_DOC NUMBER;
begin

  delete from STORE_DOC_DATA_TEMP;
  if (param_ = 1) then
    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, store_type)
      (select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, n_id, 1
        from nomenclature_mat_view
        where ID_DEPARTMENTS = in_otdel
            and id_office = v_office
            --and notuse <> 1
            and (ft_id <> V_SERVICE or V_SERVICE = 0)
      );
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.NOM_TO_TEMP', '');
       RAISE_APPLICATION_ERROR (-20312, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end NOM_TO_TEMP;
-----------------------------------------------------------------------------------------





--
--  Расчет движения товара
--
 procedure report_move
(
  DDATE_BEGIN   IN DATE,
  DDATE_END     IN DATE,
  rem_nulls     in NUMBER,
  V_GTD         in varchar2,
  v_office      in number,
  v_show_nulls  in number
--  , V_SERVICE   in number
)
is
begin

  delete from STORE_REPORT_MOVE_TEMP;

  insert into STORE_REPORT_MOVE_TEMP ( n_id, ostatok_q, ostatok_p, prihod_q, prihod_p, spis_q, spis_p, utsen_q, utsen_p, prod_q, prod_p, korr_q, korr_p, ostatok_end_q, ostatok_end_p, REPRICE_Q, REPRICE_p, store_q, store_p, p_add, p_add2 )
  (
select a.* from (
    select  q_1.n_id,
            (q0_1 - q0_4 - q0_2 - q0_5) as ostatok_q, (p0_1 - p0_4 - p0_2 - p0_5 - p0_3 + p0_6) as ostatok_p,
            q_1 prihod_q, p_1 prihod_p, q_2 spis_q, p_2 spis_p, q_3 utsen_q, p_3 utsen_p,
            q_4 prod_q, p_4 prod_p, q_5 korr_q, p_5 korr_p,
            ((q0_1 - q0_4 - q0_2 - q0_5) + q_1-q_4-q_2-q_5) as ostatok_end_q,  ((p0_1 - p0_4 - p0_2 - p0_5 - p0_3 + p0_6 - p0_add2) + p_1-p_4-p_2-p_5-p_3+p_6-p_add2) as ostatok_end_p,
            q_6 REPRICE_Q, p_6 REPRICE_p, c.store_q, c.store_p, p_add, p_add2
    from
    (
      select B2.n_id,
        -- 1 приход 2 списание 3 уценка 4 продажа 5 инвентаризация 6 переоценка
        sum(decode(ID_DOC_TYPE, 1, A1.q, 0)) q_1,
        sum(decode(ID_DOC_TYPE, 2, A1.q, 0)) q_2,
        sum(decode(ID_DOC_TYPE, 3, A1.q, 0)) q_3,
        sum(decode(ID_DOC_TYPE, 4, A1.q, 0)) q_4,
        sum(decode(ID_DOC_TYPE, 5, A1.q, 0)) q_5,
        sum(decode(ID_DOC_TYPE, 6, A1.q, 0)) q_6,
        sum(decode(ID_DOC_TYPE, 1, A1.p, 0)) + sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) p_1,
        sum(decode(ID_DOC_TYPE, 2, A1.p, 0)) p_2,
        sum(decode(ID_DOC_TYPE, 3, A1.p, 0)) p_3,
        sum(decode(ID_DOC_TYPE, 4, A1.p, 0)) p_4,
        sum(decode(ID_DOC_TYPE, 5, A1.p, 0)) p_5,
        sum(decode(ID_DOC_TYPE, 6, A1.p, 0)) p_6,
        sum(decode(ID_DOC_TYPE, 4, a1.addit, 1, a1.addit, 0)) p_add,
        sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) p_add2
      from (
        -- выбираем количество и сумму по выбранному товару за период из склада, группированный по N_ID и типу документа
        select CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL - A2.QUANTITY) ELSE sum(A2.QUANTITY) END q,
               CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL * A2.PRICE - A2.QUANTITY * A2.PRICE)
                  else case WHEN c.ID_DOC_TYPE = 6 THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST))
                    else case WHEN c.ID_DOC_TYPE = 3 THEN sum(A2.QUANTITY * (A2.PRICE_LIST - A2.PRICE))
                      ELSE case when c.ID_DOC_TYPE = 4 then sum(A2.QUANTITY * decode(a2.store_type,1,A2.PRICE_list,2,a2.price))
                        ELSE case when c.ID_DOC_TYPE = 1 then sum(A2.QUANTITY * nvl(A2.PRICE_list,a2.price))
                          else sum(A2.QUANTITY * A2.PRICE) END end end end end p,
               case WHEN (c.ID_DOC_TYPE in (4,1) and nvl(A2.PRICE,0) <> nvl(A2.PRICE_list,0) and nvl(A2.PRICE_list,0) <> 0 ) THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST)) else 0 end addit,
               c.ID_DOC_TYPE, A2.N_ID
        FROM store_doc_data_temp B1,
             store_doc_data A2,
             store_doc c
        where B1.N_ID = A2.N_ID
           AND c.id_doc = A2.id_doc
           AND c.doc_date >= DDATE_BEGIN
           AND c.doc_date <= DDATE_END
           and (a2.GTD = V_GTD or V_GTD is null)
           and (c.id_office = v_office or v_office = 0)
        group by c.ID_DOC_TYPE, A2.N_ID, A2.PRICE, A2.PRICE_list
        order by c.ID_DOC_TYPE
      ) A1, STORE_DOC_DATA_TEMP B2
      where A1.n_id(+) = B2.n_id
      group by B2.n_id
    ) q_1,
    (
      select B2.n_id,
        -- 1 приход 2 списание 3 уценка 4 продажа 5 инвентаризация 6 переоценка
        sum(decode(ID_DOC_TYPE, 1, A1.q, 0)) + sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) q0_1,
        sum(decode(ID_DOC_TYPE, 2, A1.q, 0)) q0_2,
        sum(decode(ID_DOC_TYPE, 3, A1.q, 0)) q0_3,
        sum(decode(ID_DOC_TYPE, 4, A1.q, 0)) q0_4,
        sum(decode(ID_DOC_TYPE, 5, A1.q, 0)) q0_5,
        sum(decode(ID_DOC_TYPE, 6, A1.q, 0)) q0_6,
        sum(decode(ID_DOC_TYPE, 1, A1.p, 0)) p0_1,
        sum(decode(ID_DOC_TYPE, 2, A1.p, 0)) p0_2,
        sum(decode(ID_DOC_TYPE, 3, A1.p, 0)) p0_3,
        sum(decode(ID_DOC_TYPE, 4, A1.p, 0)) p0_4,
        sum(decode(ID_DOC_TYPE, 5, A1.p, 0)) p0_5,
        sum(decode(ID_DOC_TYPE, 6, A1.p, 0)) p0_6,
        sum(decode(ID_DOC_TYPE, 4, a1.addit, 1, a1.addit, 0)) p0_add,
        sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) p0_add2
      from (
        -- выбираем количество и сумму по выбранному товару до начала периода из склада, группированный по N_ID и типу документа
        select CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL - A2.QUANTITY) ELSE sum(A2.QUANTITY) END q,
               CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL * A2.PRICE - A2.QUANTITY * A2.PRICE)
                  else case WHEN c.ID_DOC_TYPE = 6 THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST))
                    else case WHEN c.ID_DOC_TYPE = 3 THEN sum(A2.QUANTITY * (A2.PRICE_LIST - A2.PRICE))
                      ELSE case when c.ID_DOC_TYPE = 4 then sum(A2.QUANTITY * decode(a2.store_type,1,A2.PRICE_list,2,a2.price))
                        ELSE case when c.ID_DOC_TYPE = 1 then sum(A2.QUANTITY * nvl(A2.PRICE_list,a2.price))
                          else sum(A2.QUANTITY * A2.PRICE) END end end end end p,
               case WHEN (c.ID_DOC_TYPE in (4,1) and nvl(A2.PRICE,0) <> nvl(A2.PRICE_list,0) and nvl(A2.PRICE_list,0) <> 0 ) THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST)) else 0 end addit,
               c.ID_DOC_TYPE, A2.N_ID
        FROM store_doc_data_temp B1,
             store_doc_data A2,
             store_doc c
        where B1.N_ID = A2.N_ID
           AND c.id_doc = A2.id_doc
           AND c.doc_date < DDATE_BEGIN
           and (a2.GTD = V_GTD or V_GTD is null)
           and (c.id_office = v_office or v_office = 0)
        group by c.ID_DOC_TYPE, A2.N_ID, A2.PRICE, A2.PRICE_list
        order by c.ID_DOC_TYPE
      ) A1, STORE_DOC_DATA_TEMP B2
      where A1.n_id(+) = B2.n_id
      group by B2.n_id
    ) q_2,
    ( select n_id, sum(quantity) as store_q, sum(quantity * price) as store_p from STORE_VIEW_NULL group by n_id ) c
    where q_1.n_id=q_2.n_id
      and q_1.n_id = c.n_id(+)
) a
      where ( v_show_nulls = 0
        or
        (v_show_nulls = 1 and (ostatok_q<>0 or ostatok_p<>0 or prihod_q<>0 or spis_q<>0 or utsen_q<>0 or prod_q<>0 or ostatok_end_q<>0))
      )
);

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.report_move', '');
       RAISE_APPLICATION_ERROR (-20313, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end report_move;


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   cursor_      out ref_cursor
)
IS

BEGIN

  open cursor_ for
    SELECT distinct a.id_doc, a.doc_number, a.id_doc_type, a.id_departments,
       a.department_name, a.operator_name, a.doc_date, a.doc_date_real,
       a.id_client, a.nick, a.fio, a.quantity_all, a.price_all,
       a.sum_price_old, a.sum_price_new, a.sum_price_difference,
       a.comments, a.inv_id, a.order_id, a.supplier_date,
       a.supplier_number, a.suplier, a.id_office, a.brief
       , e.office, o.D_DATE as order_date, a.sum_quantity, a.group_name, t.id_cash_tmp
        FROM store_doc_view2 a, (select distinct office, id_doc, id_invoice from export_to_fillials) e, orders_clients o, cash_tmp t
          where a.id_departments = id_dep_
                and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
                and trunc(a.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                AND UPPER(Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(FIO) LIKE '%'|| upper(fio_) ||'%'
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
                and (a.id_office = v_office or v_office = 0)
                and a.id_doc = e.id_doc(+)
                and a.order_id = o.id_orders_clients(+)
                and a.doc_number = t.invoice(+) and t.R_PAYDESK(+) > 0
             ORDER BY DOC_DATE desc, DOC_DATE_real desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_doc_view_client', '');
       RAISE_APPLICATION_ERROR (-20314, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_doc_view_client;


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client2
(
   id_dep_      in number,
   DOC_NUMBER_  in varchar2,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   fio_         in varchar2,
   nick_        in varchar2,
   v_office     in number,
   v_cargo      in number,
   cursor_      out ref_cursor
)
IS

BEGIN

  open cursor_ for
    SELECT distinct a.id_doc, a.doc_number, a.id_doc_type, a.id_departments,
       a.department_name, a.operator_name, a.doc_date, a.doc_date_real,
       a.id_client, a.nick, a.fio, a.quantity_all, a.price_all,
       a.sum_price_old, a.sum_price_new, a.sum_price_difference,
       a.comments, a.inv_id, a.order_id, a.supplier_date,
       a.supplier_number, a.suplier, a.id_office, a.brief
       , e.office, a.sum_quantity, a.group_name
        FROM store_doc_view2 a, (select distinct office, id_doc, id_invoice from export_to_fillials) e
          where a.id_departments = id_dep_
                and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_ is null)
                and trunc(a.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                AND UPPER(Nick) LIKE '%'|| upper(nick_) ||'%'
                AND UPPER(FIO) LIKE '%'|| upper(fio_) ||'%'
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
                and (a.id_office = v_office or v_office = 0)
--                and v_cargo = 0
                and (v_cargo=0 or (v_cargo=1 and exists ( select 1 from store_doc_data z, nomenclature y where z.id_doc = a.id_doc and z.n_id = y.n_id and y.fst_id in (const_cargo,const_cargo_62) ) ))
                and a.id_doc = e.id_doc(+)
             ORDER BY DOC_DATE desc, DOC_DATE_real desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_doc_view_client2', '');
       RAISE_APPLICATION_ERROR (-20314, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_doc_view_client2;


--
-- Выбор типов по кнопкам
--
PROCEDURE get_type_on_buttons
(
   id_dep_      in number,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT distinct a.nbutton, b.f_type, b.ft_id FROM buttons_set a, fst_view b
      where id_dep = id_dep_ and a.fst_id = b.fst_id and b.id_office = const_office
        order by nbutton;

end get_type_on_buttons;



--
--  Добавление лома
--
procedure lom_add
(
  in_n_id IN NUMBER,
  in_QUANTITY IN NUMBER,
  in_DOC_DATE IN DATE,
  in_OTDEL IN VARCHAR
)
as
exist NUMBER;
IID_DOC NUMBER;
v_price number;
SP_OPERATOR_NAME  VARCHAR(1024);
DDOC_NUMBER       NUMBER;

begin

  select price into v_price from Price_list
  where n_id = in_n_id and id_office = const_office
  ;

  select a.fio into SP_OPERATOR_NAME from clients a where a.login = user and a.id_office = const_office;

  SELECT STORE_DOC_2.NEXTVAL INTO DDOC_NUMBER FROM DUAL;

  select count(ID_DOC) into exist
    from STORE_DOC
      where DOC_DATE = trunc(in_DOC_DATE)
        and COMMENTS = 'лом'
        and ID_DEPARTMENTS = in_OTDEL
        and ID_DOC_TYPE = 2
        and id_office = const_office
        and operator_name = SP_OPERATOR_NAME
        ;

  IF exist = 0 THEN
--    insert into STORE_DOC (ID_DOC, DOC_DATE, ID_DOC_TYPE, COMMENTS, ID_DEPARTMENTS, id_office)
--      values (get_office_unique('STORE_DOC_SET_ID'), trunc(in_DOC_DATE), 2, 'лом', in_OTDEL, const_office);

    insert into STORE_DOC (ID_DOC, DOC_DATE, ID_DOC_TYPE, COMMENTS, OPERATOR_NAME, ID_DEPARTMENTS, DOC_NUMBER, DOC_DATE_REAL, id_office)
      values (get_office_unique('STORE_DOC_SET_ID'), trunc(in_DOC_DATE), 2, 'лом', SP_OPERATOR_NAME, in_OTDEL, DDOC_NUMBER, sysdate, const_office);

    SELECT get_office_unique_curr('STORE_DOC_SET_ID') INTO IID_DOC from DUAL;

    insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, store_type, id_office, PRICE, PRICE_LIST)
      values (get_office_unique('STORE_DOC_DATA_SET_ID'), IID_DOC, in_n_id, in_QUANTITY, 1, const_office, v_price, v_price);

  else
    select ID_DOC into IID_DOC
      from STORE_DOC
        where DOC_DATE = trunc(in_DOC_DATE)
          and COMMENTS = 'лом'
          and ID_DEPARTMENTS = in_OTDEL
          and ID_DOC_TYPE = 2
          and id_office = const_office
          and operator_name = SP_OPERATOR_NAME
          and rownum = 1
          ;

    insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, store_type, id_office, PRICE, PRICE_LIST)
      values (get_office_unique('STORE_DOC_DATA_SET_ID'), IID_DOC, in_n_id, in_QUANTITY, 1, const_office, v_price, v_price);

  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.lom_add', '');
       RAISE_APPLICATION_ERROR (-20315, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end lom_add;



--
--  Уценка текущей позиции
--
procedure CHANGE_PRICE
(
  in_n_id IN NUMBER,
  in_Percent IN NUMBER,
  in_QUANTITY IN NUMBER,
  in_DOC_DATE IN DATE,
  in_OTDEL IN VARCHAR,
  in_OPERATOR_NAME IN VARCHAR
)
as
PRICE_NEW NUMBER;
PRICE_OLD NUMBER;
IID_DOC NUMBER;

begin

  select PRICE into PRICE_OLD
    from STORE_VIEW
      where N_ID = in_n_id and store_type = 1 and id_office = const_office;

  PRICE_NEW := PRICE_OLD-round(((in_Percent/100)*PRICE_OLD),2);

  insert into STORE_DOC (ID_DOC, DOC_DATE, ID_DOC_TYPE, ID_DEPARTMENTS, OPERATOR_NAME, id_office)
    values (get_office_unique('STORE_DOC_SET_ID'), trunc(in_DOC_DATE), 3, in_OTDEL, in_OPERATOR_NAME, const_office);

  SELECT get_office_unique_curr('STORE_DOC_SET_ID') INTO IID_DOC from DUAL;

  insert into STORE_DOC_DATA (ID_DOC_DATA, ID_DOC, N_ID, QUANTITY, PRICE, PRICE_list, store_type, id_office)
    values (get_office_unique('STORE_DOC_DATA_SET_ID'), IID_DOC, in_n_id, in_QUANTITY, PRICE_NEW, PRICE_OLD, 1, const_office);

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.CHANGE_PRICE', '');
       RAISE_APPLICATION_ERROR (-20316, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end CHANGE_PRICE;



--
-- Выборка подходящего ГТД
--
function get_gtd
 (
    N_ID_IN IN INTEGER,
    sp_office in integer
 )
return varchar2
is
  MIN_DATE  date;
  exist integer;
  sp_gtd varchar2(50);
begin
    sp_gtd := '';
    select min(ddate) into MIN_DATE from STORE_GTD where INPUT > OUTPUT_STORE and n_id = N_ID_IN and id_office = sp_office;

    select count(N_ID) into exist
    from STORE_GTD
    where INPUT > OUTPUT_STORE and n_id = N_ID_IN and ddate = MIN_DATE and id_office = sp_office
    ;

    -- если найдены ГТД для данной номенклатуры
    IF exist <> 0 THEN
      begin
        select GTD into sp_gtd from (
            select gtd, id_gtd from STORE_GTD
            where INPUT > OUTPUT_STORE and n_id = N_ID_IN and ddate = MIN_DATE and id_office = sp_office
            order by gtd
        ) a where rownum = 1
        ;

      EXCEPTION WHEN others THEN
        RAISE_APPLICATION_ERROR (-20308, 'Больше одной записи. InsertInCash n_id=' || N_ID_IN);
      end;
    end if;

    IF exist = 0 THEN
        -- При отсутствии свободной ГТД берем последнюю
        select min(ddate) into MIN_DATE from STORE_GTD where n_id = N_ID_IN and id_office = sp_office;

        select GTD into sp_gtd from (
            select gtd from STORE_GTD
            where n_id = N_ID_IN and ddate = MIN_DATE and id_office = sp_office
            order by gtd
        ) where rownum = 1;
    end if;

    return sp_gtd;
end;


--
--  Копируем из заказа данные
--
procedure data_from_order
(
  oder_num   IN NUMBER,
  fix_price  in number,
  p_discount in number
)
as
  vPPLI_ID  number;

  CURSOR data_temp IS
    select n_id, QUANTITY, store_type, price
    from ORDERS_LIST
    where ID_ORDERS_CLIENTS = oder_num and active = 1;
begin

  begin
    -- найдем прайс по инвосам разноса для добычи клиентских отдельных цен
    select ppli_id into vPPLI_ID from (
      select distinct p.ppli_id
      from distributions_invoices a, prepare_price_list_index p, invoice_register r, orders_clients c
      where a.dist_ind_id = to_number(c.in_file) and a.inv_id = r.inv_id and (r.inv_id = p.inv_id or r.ipp_id = p.pack_id) and c.id_orders_clients = oder_num
    ) where rownum = 1
    ;
  EXCEPTION
    WHEN no_data_found THEN
      vPPLI_ID := 0;
  end;


    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, price, price_list, gtd)
    (
      select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, z.n_id, z.QUANTITY, z.store_type, case when p_discount = 0 then z.pr else (z.pr + round(z.pr/100*p_discount,2)) end price, z.price as price_list, z.gtd
      from (
        select a.n_id, a.QUANTITY, a.store_type, case when fix_price=1 then nvl(pc.SPEC_PRICE,a.price) else nvl(pc.SPEC_PRICE,b.price) end pr, b.price
          , store_pkg.get_gtd(a.n_id, const_office) as gtd
        from ORDERS_LIST a
          inner join store_view_null b on a.n_id = b.n_id and a.store_type = b.store_type
          inner join orders_clients o on a.id_orders_clients = o.id_orders_clients
          left outer join ppl_client_price pc on pc.n_id = a.N_ID and pc.id_clients = o.id_clients and pc.ppli_id = vPPLI_ID
        where a.ID_ORDERS_CLIENTS = oder_num and a.active = 1


      ) z
    );

/*
       select a.n_id, a.QUANTITY, a.store_type, case when fix_price=1 then a.price else b.price end pr, b.price
          , get_gtd(a.n_id, const_office) as gtd
        from ORDERS_LIST a, store_view_null b
        where a.ID_ORDERS_CLIENTS = oder_num and a.active = 1
            and a.n_id = b.n_id and a.store_type = b.store_type
*/


  FOR data_temp_cursor IN data_temp LOOP

      update store_main a
      set a.reserv = a.reserv - data_temp_cursor.QUANTITY, date_change=sysdate
      where store_type = data_temp_cursor.store_type and
          n_id = data_temp_cursor.n_id and a.id_office = const_office;

  END LOOP;

  UPDATE ORDERS_CLIENTS SET STATUS = 10, date_change=sysdate where ID_ORDERS_CLIENTS = oder_num;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.data_from_order', '');
       RAISE_APPLICATION_ERROR (-20317, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end data_from_order;


--
--  Копируем из ГОЛ заказа
--
procedure data_from_hol_orders
(
  oder_num IN NUMBER
)
as
begin

    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, price, price_list)
    (
      select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, a.n_id, a.QUANTITY, b.store_type, b.price, b.price
      from ORDERS_LIST a, store_view_null b
      where a.ID_ORDERS_CLIENTS = oder_num and a.active = 1
          and a.n_id = b.n_id and 1 = b.store_type
    );

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.data_from_hol_orders', '');
       RAISE_APPLICATION_ERROR (-20317, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end data_from_hol_orders;


--
--  Ввод минусовой
--
procedure doc_new_from_store_doc
(
  IID_DOC IN NUMBER,
  out_docid OUT NUMBER
)
as
 SP_ID_CLIENT   NUMBER;
 SP_DOC_DATE    Date;
 SP_ID_DOC_TYPE NUMBER;
 SP_COMMENTS    VARCHAR(1024);
 SP_OTDEL       VARCHAR(1024);
 SP_INV_ID      NUMBER;
 SP_Order_ID    NUMBER;
 SP_OPERATOR_NAME VARCHAR(1024);
 out_message    VARCHAR(1024);
 DDOC_NUMBER    NUMBER;
 sp_office      number;
begin

  -- минусуем данные
  data_from_storedoc_minus(IID_DOC);

  select user into SP_OPERATOR_NAME from dual;

  select DOC_NUMBER, ID_DEPARTMENTS, ID_DOC_TYPE, ID_CLIENT, DOC_DATE, OPERATOR_NAME, COMMENTS, INV_ID, Order_ID, id_office
    into DDOC_NUMBER, SP_OTDEL, SP_ID_DOC_TYPE, SP_ID_CLIENT, SP_DOC_DATE, SP_OPERATOR_NAME, SP_COMMENTS, SP_INV_ID, SP_Order_ID, sp_office
  from STORE_DOC
    where ID_DOC = IID_DOC;

  --doc_new(SP_ID_CLIENT, trunc(sysdate), SP_ID_DOC_TYPE, '(минусовая накладная от № ' || DDOC_NUMBER || ')',  SP_OTDEL, SP_INV_ID, SP_Order_ID, out_message, out_docid);
  -- Для фиксирования родителя для минусового инвойса в параметре SP_Order_ID передам ИД исходного документа
  doc_new(SP_ID_CLIENT, trunc(sysdate), SP_ID_DOC_TYPE, '(минусовая накладная от № ' || DDOC_NUMBER || ')',  SP_OTDEL, SP_INV_ID, IID_DOC, out_message, out_docid);
  delete from tmp_exp_doc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.doc_new_from_store_doc', '');
       RAISE_APPLICATION_ERROR (-20318, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end doc_new_from_store_doc;


--
-- минусуем данные
--
procedure data_from_storedoc_minus
(
  store_doc IN NUMBER
)
as
  exist     NUMBER;
  IID_DOC   NUMBER;
  vCurPrice number;

  CURSOR data_temp IS
    select a.N_ID, a.QUANTITY, a.QUANTITY_REAL, a.PRICE, a.PRICE_list, a.store_type, a.GTD, ((a.price-price_list)/a.price_list * 100) as sale
      from STORE_DOC_DATA a
      inner join tmp_exp_doc b on b.ID_DOC = a.id_doc_data
        where a.ID_DOC = store_doc;

begin
-- Функция пока неиспользуется -------------------------------------------------
  delete from STORE_DOC_DATA_TEMP;

  select count(*) into CNT from tmp_exp_doc;
  if cnt = 0 then
    insert into tmp_exp_doc (select ID_DOC_DATA from STORE_DOC_DATA where ID_DOC = store_doc);
  end if;

  FOR data_temp_cursor IN data_temp LOOP
    select a.price into vCurPrice from price_list a where a.n_id = data_temp_cursor.N_ID and a.id_office = const_office;

    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, QUANTITY_REAL, PRICE, PRICE_list, store_type, GTD)
    values (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, data_temp_cursor.N_ID, (-1)*data_temp_cursor.QUANTITY, data_temp_cursor.QUANTITY_REAL,
            data_temp_cursor.PRICE, vCurPrice , data_temp_cursor.store_type, data_temp_cursor.GTD );

  END LOOP;
--------------------------------------------------------------------------------
EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.data_from_storedoc_minus', '');
       RAISE_APPLICATION_ERROR (-20319, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end data_from_storedoc_minus;
-----------------------------------------------------------------------------------------



--
--  Добавляем номенклатуру в инвентаризацию по типу
--
procedure inventory_add_types
(
  ttypes IN VARCHAR,
  sub_ttypes IN VARCHAR
)
as
exist NUMBER;
IID_DOC NUMBER;

CURSOR data_temp IS
  select
    NOMENCLATURE.N_ID,
    NOMENCLATURE.FST_ID,
    FLOWER_SUBTYPES.FT_ID
  from
    NOMENCLATURE,
    FLOWER_SUBTYPES
  where
    NOMENCLATURE.FST_ID=FLOWER_SUBTYPES.FST_ID
    and
    (
    NOMENCLATURE.FST_ID in (sub_ttypes) or FLOWER_SUBTYPES.FT_ID in (ttypes)
    )
    and NOMENCLATURE.id_office = const_office
    ;

begin

  FOR data_temp_cursor IN data_temp LOOP

    insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, store_type, PRICE)
    values (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, data_temp_cursor.n_id, 1, 2);

  END LOOP;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.inventory_add_types', '');
       RAISE_APPLICATION_ERROR (-20320, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end inventory_add_types;
-----------------------------------------------------------------------------------------


--
-- Выбор данных для движения товара
--
PROCEDURE select_for_tovar
(
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.COLOUR, a.RUS_MARKS as spesification, a.great_name, a.N_ID,
       CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
             a.H_CODE, a.S_NAME_RU, a.F_SUB_TYPE, a.F_TYPE, b.ostatok_end_q, b.ostatok_end_p,
             b.ostatok_q, b.ostatok_p, b.prihod_q, b.prihod_p, b.spis_q, b.spis_p, b.utsen_q,
             b.utsen_p, b.prod_q, b.prod_p, b.korr_q, b.korr_p, b.REPRICE_Q, b.REPRICE_P
             , a.id_office, c.brief
      from  NOMENCLATURE_MAT_VIEW a, STORE_REPORT_MOVE_TEMP b, offices c
        where a.N_ID = b.n_id and a.id_office = c.id_office;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_for_tovar', '');
       RAISE_APPLICATION_ERROR (-20321, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_for_tovar;


--
-- Выбор неоприходованных инвойсов
--
PROCEDURE select_invoices
(
   id_dep_      in number,
   cursor_      in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT a.inv_id, inv_date, comments, inv_sum, ipp_id, a.comments as ipp_comment
            , a.id_departments, a.SUPPLIER_DATE, a.SUPPLIER_NUMBER, a.TOTAL_SUM, a.is_minus, a.s_name_ru
            , case when (select min(z.UNITS) from invoice_data z where z.inv_id = a.inv_id ) < 0 and a.is_minus = 0 then 1 else 0 end lowq
      FROM invoice_register_full a--, PREPARE_PRICE_LIST_INDEX b
        WHERE a.id_departments = id_dep_
              --and a.inv_id = b.inv_id
              and a.sended_to_warehouse = 0
              and a.inv_minus in (0,3)
              and a.price_done = 1
              and a.id_office = const_office
              --and b.finished = 1
                ORDER BY inv_date desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_invoices', '');
       RAISE_APPLICATION_ERROR (-20322, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_invoices;


--
-- Выбор остатков скалада
--
PROCEDURE select_store
(
   ID_DEPARTMENTS_  in number,
   STORE_TYPE_      in number,
   v_office         in number,
--   v_gtd            in number DEFAULT 0,
   cursor_          in out ref_cursor
)
IS
BEGIN
/*
if v_gtd = 0 then
  if (STORE_TYPE_ = 0) then
    open cursor_ for
      SELECT a.N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, sum(QUANTITY) as quantity,
             sum(PRICE) as price, a.FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, sum(QUANTITY*PRICE) as QUANTITY_PRICE,
             reserv, spesification, s_name_ru, is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief
             , null as gtd
        FROM store_view a
            , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = ID_DEPARTMENTS_) b
        WHERE a.ID_DEPARTMENTS = ID_DEPARTMENTS_
                and a.fst_id = b.fst_id(+)
                and (a.id_office = v_office or v_office = 0)
        group by b.nbutton, N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, reserv,
            spesification, s_name_ru, is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief
        ORDER BY b.nbutton, a.compiled_name_otdel
        ;
  else
    open cursor_ for
      SELECT a.N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, QUANTITY,
             PRICE, a.FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, (QUANTITY*PRICE) as QUANTITY_PRICE,
             reserv, spesification, s_name_ru , is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief
             , null as gtd
        FROM store_view a
            , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = ID_DEPARTMENTS_) b
        WHERE a.ID_DEPARTMENTS = ID_DEPARTMENTS_
                and a.fst_id = b.fst_id(+)
                and STORE_TYPE = STORE_TYPE_
                and (a.id_office = v_office or v_office = 0)
        ORDER BY b.nbutton, a.compiled_name_otdel
        ;
  end if;

else
*/
  if (STORE_TYPE_ = 0) then
    open cursor_ for
      SELECT a.N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, sum(QUANTITY) as quantity,
             sum(PRICE) as price, a.FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, sum(QUANTITY*PRICE) as QUANTITY_PRICE,
             reserv, spesification, s_name_ru, is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief
             , gtd.gtd, a.notuse
             , case when IS_PHOTO=1 then const_picture_path||ID_DEPARTMENTS_||'/tm/'||PHOTO else '' end pics
        FROM store_view a
            , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = ID_DEPARTMENTS_) b
            , (select a.n_id, a.gtd from (
                SELECT dense_rank() over(partition by n_id order by id_gtd desc) nn, a.n_id, a.gtd
                  FROM store_gtd a where a.id_office = v_office
                ) a where nn = 1
              ) gtd
        WHERE a.ID_DEPARTMENTS = ID_DEPARTMENTS_
                and a.fst_id = b.fst_id(+)
                and (a.id_office = v_office or v_office = 0)
                and a.n_id = gtd.n_id(+)
        group by b.nbutton, a.N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, reserv,
            spesification, s_name_ru, is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief, gtd.gtd, a.notuse
        ORDER BY b.nbutton, a.compiled_name_otdel
        ;
  else
    open cursor_ for
      SELECT a.N_ID, full_name, F_TYPE, F_SUB_TYPE, CODE, H_CODE, LEN, PACK, COLOUR, COUNTRY, QUANTITY,
             PRICE, a.FT_ID, a.FST_ID, C_ID, COL_ID, S_ID, (QUANTITY*PRICE) as QUANTITY_PRICE,
             reserv, spesification, s_name_ru , is_photo, photo, our_code, COMPILED_NAME_OTDEL, a.id_office, a.brief
             , gtd.gtd, a.notuse
             , case when IS_PHOTO=1 then const_picture_path||ID_DEPARTMENTS_||'/tm/'||PHOTO else '' end pics
        FROM store_view a
            , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = ID_DEPARTMENTS_) b
            , (select a.n_id, a.gtd from (
                SELECT dense_rank() over(partition by n_id order by id_gtd desc) nn, a.n_id, a.gtd
                  FROM store_gtd a where a.id_office = v_office
                ) a where nn = 1
              ) gtd
        WHERE a.ID_DEPARTMENTS = ID_DEPARTMENTS_
                and a.fst_id = b.fst_id(+)
                and STORE_TYPE = STORE_TYPE_
                and (a.id_office = v_office or v_office = 0)
                and a.n_id = gtd.n_id(+)
        ORDER BY b.nbutton, a.compiled_name_otdel
        ;
--  end if;

end if;


EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_store', '');
       RAISE_APPLICATION_ERROR (-20323, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_store;


--
-- Выбор всех подтипов
--
PROCEDURE select_subtypes_all
(
   id_dep_  in number,
   cursor_  out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT rownum as nn, a.fst_id, a.f_sub_type, a.hol_sub_type, a.ft_id, a.f_type,
           a.ht_id, a.hol_type, a.id_departments,
           decode(b.nbutton,2,'F2',3,'F3',4,'F4',5,'F5',6,'F6',7,'F7',8,'F8','') nbutton
      FROM fst_view a, buttons_set b
         WHERE a.id_departments = id_dep_
              and a.id_departments = b.id_dep(+)
              and a.fst_id = b.fst_id(+)
           ORDER BY a.f_sub_type;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_subtypes_all', '');
       RAISE_APPLICATION_ERROR (-20324, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_subtypes_all;


--
-- Выбор подтипов для кнопки
--
PROCEDURE select_subtypes_button
(
   id_dep_  in number,
   button_  in number,
   cursor_  out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT rownum as nn, a.fst_id, a.f_sub_type, a.hol_sub_type, a.ft_id, a.f_type,
           a.ht_id, a.hol_type, a.id_departments, b.f_char, b.id_dep, b.nbutton
      FROM buttons_set b, fst_view a
        WHERE b.id_dep = id_dep_
              and b.nbutton = button_
              and b.id_dep = a.id_departments
              and b.fst_id = a.fst_id
          ORDER BY a.f_sub_type;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_subtypes_button', '');
       RAISE_APPLICATION_ERROR (-20325, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_subtypes_button;


--
-- Выбор клиентов
--
PROCEDURE select_clients
(
   cursor_  out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT CCODE, ID_CLIENTS, fio, nick, BLOCK1, BLOCK2
      FROM clients_view2
      where id_office = const_office
        order by fio;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_clients', '');
       RAISE_APPLICATION_ERROR (-20326, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_clients;





-- Добавляем быстро уценку в накладную
--
PROCEDURE insert_fast_ucenka
(
  n_id_       in number,
  QUANTITY_   in number
)
IS
BEGIN

  INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type)
    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, n_id_, QUANTITY_, 2);

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.insert_fast_ucenka', '');
       RAISE_APPLICATION_ERROR (-20327, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end insert_fast_ucenka;




--
-- Выбор списка для уценки
--
PROCEDURE select_ucenka
(
   id_dep_     in number,
   price_part_ in number,
   cursor_     out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select N_ID, CODE, H_CODE, F_TYPE, F_SUB_TYPE, FT_ID, FST_ID, FULL_NAME, QUANTITY_NOW, STORE_TYPE_NAME, STORE_TYPE, PRICE_LIST,
    case
      WHEN added=0 or added is null THEN (price_list+round((price_list*price_part_ /100),2))
      ELSE price
    END price,
    QUANTITY, ADDED,
    case
      WHEN added=0 or added is null THEN (price_list+round((price_list*price_part_ /100),2))*QUANTITY
      ELSE QUANTITY_PRICE
    END QUANTITY_PRICE,
    sum_price_difference, ID_DEPARTMENTS,
    case
      WHEN added=0 or added is null THEN price_part_
      ELSE price_percent
    END price_percent,
    SPESIFICATION

    from store_docdatatemp_view
    where STORE_TYPE=1
          and ID_DEPARTMENTS = id_dep_
          and id_office = const_office;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_ucenka', '');
       RAISE_APPLICATION_ERROR (-20328, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_ucenka;



--
-- Удаление накладной
--
PROCEDURE delete_doc
(
   ID_DOC_     in number
)
IS
BEGIN
  insert into store_doc_data_old (select * from store_doc_data b where b.id_doc = ID_DOC_);
  insert into store_doc_old (select * from store_doc b where b.id_doc = ID_DOC_);

  delete from store_doc_data b where b.id_doc = ID_DOC_;
  delete from store_doc a where a.id_doc = ID_DOC_;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.delete_doc', '');
       RAISE_APPLICATION_ERROR (-20329, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end delete_doc;





--
-- Выборка типов для продаж
--
PROCEDURE select_subtypes_sale
(
   id_dep_  in number,
   var_     in number,  -- 0 типы, 1-подтипы
   cursor_  out ref_cursor
)
IS
BEGIN

if var_ = 0 then
  open cursor_ for
    SELECT a.ft_id, a.f_type, a.id_departments, b.nbutton
      FROM ft_view a, buttons_set_sale b
         WHERE a.id_departments = id_dep_
              and a.id_departments = b.id_dep(+)
              and a.ft_id = b.ft_id(+)
           ORDER BY nbutton, a.f_type
  ;
else
  open cursor_ for
    SELECT a.fst_id, a.f_sub_type, a.id_departments, b.nbutton
      FROM fst_view a, buttons_set_sale b
         WHERE a.id_departments = id_dep_
              and a.id_departments = b.id_dep(+)
              and a.fst_id = b.ft_id(+)
           ORDER BY nbutton, a.f_sub_type
  ;
end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.select_subtypes_all', '');
       RAISE_APPLICATION_ERROR (-20330, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_subtypes_sale;


--
-- Выбор типов для продаж
--
PROCEDURE get_type_on_buttons_sale
(
   id_dep_      in number,
   var_         in number,   -- 1 типы, 2-подтипы
   cursor_      out ref_cursor
)
IS
BEGIN

if var_ = 1 then
  open cursor_ for
    SELECT distinct a.nbutton, b.f_type, b.ft_id
    FROM ft_view b, buttons_set_sale a
      where b.ID_DEPARTMENTS = id_dep_ and b.ft_id = a.ft_id(+)
        order by nbutton, f_type
  ;
else
  open cursor_ for
    SELECT distinct a.nbutton, b.f_sub_type as f_type, b.fst_id as ft_id
    FROM fst_view b, buttons_set_sale a
      where b.ID_DEPARTMENTS = id_dep_ and b.fst_id = a.ft_id(+)
        order by nbutton, f_sub_type
  ;
end if;

end get_type_on_buttons_sale;




--
-- Выбор персональных настроек для отчета
--
PROCEDURE get_personal_settings
(
   v_date        in date,
   v_id_company  in number,
   cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for
    select a.id, a.user_name, a.id_company, a.date_begin, a.date_end, a.prikaz_n
    from buh_user_settings a
    where a.user_name = user and a.id_company=v_id_company and trunc(a.date_begin) <= trunc(v_date) and ( trunc(v_date) <= trunc(date_end) or date_end is null)
    ;
END get_personal_settings;


--
-- Редактирование персональных настроек для отчета
--
PROCEDURE edit_personal_settings
(
   v_id           in number,
   v_user         in varchar2,
   v_id_company   in number,
   v_date_begin   in date,
   v_date_end     in date,
   v_prikaz_n     in varchar2
)
IS
BEGIN
  if (v_id = 0) then
    insert into buh_user_settings values(get_office_unique('universal_id'), v_user, v_id_company, v_date_begin, v_date_end, v_prikaz_n);
  else
    update buh_user_settings set date_begin=v_date_begin, date_end=v_date_end, prikaz_n=v_prikaz_n where id=v_id;
  end if;
  commit;
END edit_personal_settings;


--
-- Удаление персональных настроек для отчета
--
PROCEDURE delete_personal_settings
(
   v_id      in number
)
IS
BEGIN
  delete from buh_user_settings where id=v_id;
  commit;
END delete_personal_settings;


--
-- Выбор товара с приходом и продажами для отчета
--
PROCEDURE make_prihod_itog
(
   p_date_b      in date,
   p_date_e      in date,
   p_docs        in varchar2,
   p_cursor      out ref_cursor
)
IS
  sqlstr varchar2(30000);
BEGIN

  sqlstr := '
select --nvl(n.bar_code,n.CODE), n.h_code, n.F_TYPE, n.f_sub_type, n.compiled_name_otdel, n.country, asis_ostatok, z.quantity, inq_ostatok,
    --( case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end ) ostatok,
    --m.price, nvl(z.gtd, asis.gtd) as gtd
     ''`''||nvl(n.bar_code,n.CODE)||''`;''||n.h_code||'';''||n.F_TYPE||'';''||n.f_sub_type||'';''||n.compiled_name_otdel||'';''||n.country||'';''
    ||asis_ostatok||'';''||quantity||'';''||inq_ostatok||'';''
    ||(case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end )
    ||'';''||m.price||'';''||nvl(z.gtd,asis.gtd) as sss
from nomenclature_mat_view n
inner join price_list m on m.n_id = n.n_id and m.id_office = const_office
inner join
    (
      select asis.n_id, asis.gtd,
           sum(decode(ID_DOC_TYPE, 1, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 2, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 4, asis.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 5, (asis.QUANTITY_REAL - asis.QUANTITY), 0)) asis_ostatok
      from (
        select c.id_doc_type, a2.quantity, a2.QUANTITY_REAL, A2.N_ID,
            case when c.id_doc_type = 1 then (select distinct max(z.gtd) from invoice_data z where z.inv_id = c.inv_id and z.n_id = a2.n_id) else a2.gtd end gtd
          FROM store_doc_data A2
            inner join store_doc c on c.id_doc = A2.id_doc
         where c.doc_date <= :p1
           and (c.id_office = const_office or 0 = 0)
           and a2.n_id in (select distinct z.n_id from store_doc_data z where z.id_doc in ('||p_docs||') )
           --and a2.n_id = 33981 -- 32426
       ) asis
      group by asis.N_ID, asis.gtd
     ) asis on asis.n_id = n.n_id
left outer join
    (
      select inq.n_id, inq.gtd,
           sum(decode(ID_DOC_TYPE, 1, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 2, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 4, inq.QUANTITY, 0)) - sum(decode(ID_DOC_TYPE, 5, (inq.QUANTITY_REAL - inq.QUANTITY), 0)) inq_ostatok
      from (
        select c.id_doc_type, a2.quantity, a2.QUANTITY_REAL, A2.N_ID,
            case when c.id_doc_type = 1 then (select distinct max(z.gtd) from invoice_data z where z.inv_id = c.inv_id and z.n_id = a2.n_id) else a2.gtd end gtd
          FROM store_doc_data A2
            inner join store_doc c on c.id_doc = A2.id_doc
         where c.doc_date < :p2
           and (c.id_office = const_office or 0 = 0)
           and a2.n_id in (select distinct z.n_id from store_doc_data z where z.id_doc in ('||p_docs||') )
           --and a2.n_id = 33981 -- 32426
       ) inq
      group by inq.N_ID, inq.gtd
     ) inq on inq.n_id = asis.n_id and nvl(inq.gtd,''-'') = nvl(asis.gtd,''-'')
left outer join
    ( select c.n_id, sum(c.quantity) as quantity, c.gtd from store_doc_data c
       where id_doc in ('||p_docs||') --and c.n_id = 33981  -- 32426
       group by c.n_id, c.gtd
    ) z on z.n_id = asis.n_id and nvl(z.gtd,''-'') = nvl(asis.gtd,''-'')
where ( case when nvl(asis_ostatok,0) > 0 then nvl(asis_ostatok,0) else 0 end + nvl(quantity,0) - case when nvl(inq_ostatok,0) > 0 then nvl(inq_ostatok,0) else 0 end ) > 0
';

  open p_cursor for
    sqlstr using trunc(p_date_e), trunc(p_date_b);

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'store_pkg.make_prihod_itog', sqlstr);

end make_prihod_itog;



--
--  Синхронизируем цены из старой БД с новыми
--
PROCEDURE sync_price_list
(
   v_code       IN       varchar2,
   v_price      IN       NUMBER
)
IS
  p_n_id     number;
  p_quantity number;
  p_price    number;
BEGIN
  p_n_id   := 0;
  select count(*) into CNT from nomenclature a, store_main b, price_list c
  where a.code = v_code and a.n_id = b.n_id and b.id_office = const_office and b.n_id = c.n_id and c.id_office = const_office;
  if CNT > 0 then
     select n_id into p_n_id from nomenclature a where a.code = v_code;
     select a.quantity into p_quantity from store_main a where a.n_id = p_n_id and a.id_office = const_office and a.store_type = 1;
     select a.price into p_price from price_list a where a.n_id = p_n_id and a.id_office = const_office;
  end if;

  if p_n_id > 0 then
   INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, PRICE, PRICE_LIST)
   VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, p_n_id, p_quantity, 1, v_price, p_price);
  end if;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.sync_price_list', '');
      RAISE_APPLICATION_ERROR (-20331, 'Запрос не выполнился. ' || SQLERRM);

end sync_price_list;



--
--  Синхронизируем цены из БД МСК с регионами
--
PROCEDURE sync_price_list_link
(
   v_id_dep      IN       NUMBER
)
IS
BEGIN
   INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, PRICE, PRICE_LIST)
   (
    select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, b.n_id, c.quantity, c.store_type, a.price, d.price as price_old
    from nomenclature_mat_view b, price_list@star a, store_main c, price_list d
    where b.n_id = a.n_id and a.id_office = 1 and b.id_departments = v_id_dep and b.n_id = c.n_id
      and c.id_office = const_office and c.store_type = 1 and b.n_id = d.n_id and d.id_office = const_office
      and  a.price <> d.price
   );

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.sync_price_list_link', '');
      RAISE_APPLICATION_ERROR (-20332, 'Запрос не выполнился. ' || SQLERRM);

end sync_price_list_link;




--
--  Синхронизируем цены из БД МСК с регионами по выбранным
--
PROCEDURE sync_price_list_link_sel
(
   v_id_dep      IN       NUMBER
)
IS
BEGIN
   delete from STORE_DOC_DATA_TEMP where n_id in (select id_doc from TMP_EXP_DOC);

   INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, PRICE, PRICE_LIST)
   (
    select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, b.n_id, c.quantity, c.store_type, a.price, d.price as price_old
    from nomenclature_mat_view b, price_list@star a, store_main c, price_list d, TMP_EXP_DOC t
    where b.n_id = a.n_id and a.id_office = 1 and b.id_departments = v_id_dep and b.n_id = c.n_id
      and c.id_office = const_office and c.store_type = 1 and b.n_id = d.n_id and d.id_office = const_office
      and  a.price <> d.price
      and b.n_id = t.ID_DOC
   );

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.sync_price_list_link_sel', '');
      RAISE_APPLICATION_ERROR (-20332, 'Запрос не выполнился. ' || SQLERRM);

end sync_price_list_link_sel;




--
--  Достать СЛУЖЕБНЫЙ тип
--
PROCEDURE get_service_type
(
   v_id_dep     IN       NUMBER,
   v_ft_id      IN OUT   NUMBER
)
IS
BEGIN
  v_ft_id := 0;
  SELECT count(*) into cnt FROM flower_types
  where f_type = 'Служебная' and id_departments = v_id_dep;

  if cnt > 0 then
    SELECT ft_id into v_ft_id FROM flower_types
    where f_type = 'Служебная' and id_departments = v_id_dep;
  end if;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_service_type', '');
      RAISE_APPLICATION_ERROR (-20333, 'Запрос не выполнился. ' || SQLERRM);

end get_service_type;



--
--  Сбор статистики по движению товара в разрезе поставщика
--
PROCEDURE get_supplier_report
(
  v_id_dep      IN NUMBER,
  DDATE_BEGIN   IN DATE,
  DDATE_END     IN DATE,
  v_office      in number,
  v_service     in number,
  p_cursor      out ref_cursor
)
IS
  p_SERVICE number;
BEGIN
  p_SERVICE := 0;
  if v_service = 1 then
    get_service_type(v_id_dep, p_SERVICE);
  end if;

  open p_cursor for
      select
         -- 1 приход 2 списание 3 уценка 4 продажа 5 инвентаризация 6 переоценка
        s.s_name_ru,
        --sum(decode(ID_DOC_TYPE, 1, A1.q, 0)) + sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) q0_1,
        --sum(decode(ID_DOC_TYPE, 2, A1.q, 0)) q0_2,
        --sum(decode(ID_DOC_TYPE, 3, A1.q, 0)) q0_3,
        --sum(decode(ID_DOC_TYPE, 4, A1.q, 0)) q0_4,
        --sum(decode(ID_DOC_TYPE, 5, A1.q, 0)) q0_5,
        --sum(decode(ID_DOC_TYPE, 6, A1.q, 0)) q0_6,
        sum(decode(ID_DOC_TYPE, 1, A1.p, 0)) prihod,
        sum(decode(ID_DOC_TYPE, 4, A1.p, 0)) - sum(office_q) prodaza,
        sum(office_q) as office,
        sum(decode(ID_DOC_TYPE, 3, A1.p, 0)) -  sum(decode(ID_DOC_TYPE, 4, a1.addit, 1, a1.addit, 0)) ucenka,
        sum(decode(ID_DOC_TYPE, 2, A1.p, 0)) spisanie,
        sum(decode(ID_DOC_TYPE, 5, A1.p, 0)) invent,
        0 as claim,
        sum(decode(ID_DOC_TYPE, 6, A1.p, 0)) reprice
        --sum(decode(ID_DOC_TYPE, 4, a1.addit, 1, a1.addit, 0)) p0_add,
        --sum(decode(ID_DOC_TYPE, 1, a1.addit, 0)) p0_add2
      from (
        select CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL - A2.QUANTITY) ELSE sum(A2.QUANTITY) END q,
               CASE WHEN c.ID_DOC_TYPE = 5 THEN sum(A2.QUANTITY_REAL * A2.PRICE - A2.QUANTITY * A2.PRICE)
                  else case WHEN c.ID_DOC_TYPE = 6 THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST))
                    else case WHEN c.ID_DOC_TYPE = 3 THEN sum(A2.QUANTITY * (A2.PRICE_LIST - A2.PRICE))
                      ELSE case when c.ID_DOC_TYPE = 4 then sum(A2.QUANTITY * decode(a2.store_type,1,A2.PRICE_list,2,a2.price))
                        ELSE case when c.ID_DOC_TYPE = 1 then sum(A2.QUANTITY * nvl(A2.PRICE_list,a2.price))
                          else sum(A2.QUANTITY * A2.PRICE) END end end end end p,
               case WHEN (c.ID_DOC_TYPE in (4,1) and nvl(A2.PRICE,0) <> nvl(A2.PRICE_list,0) and nvl(A2.PRICE_list,0) <> 0 ) THEN sum(A2.QUANTITY * (A2.PRICE - A2.PRICE_LIST)) else 0 end addit,
               c.ID_DOC_TYPE, b1.s_id
               , sum( case when instr(l.NICK, 'O ') > 0 and c.ID_DOC_TYPE = 4 then A2.QUANTITY * decode(a2.store_type,1,A2.PRICE_list,2,a2.price) else 0 end ) office_q
        FROM nomenclature_mat_view B1,
             store_doc_data A2,
             store_doc c,
             clients l
        where B1.N_ID = A2.N_ID
           AND c.id_doc = A2.id_doc
           AND c.doc_date >= DDATE_BEGIN
           AND c.doc_date <= DDATE_END
           and b1.id_departments = v_id_dep
           and c.id_client = l.id_clients(+)
           and (c.id_office = v_office or v_office = 0)
           and (b1.ft_id <> p_SERVICE or V_SERVICE = 0)
        group by c.ID_DOC_TYPE, b1.s_id, A2.PRICE, A2.PRICE_list
        order by c.ID_DOC_TYPE
      ) A1, suppliers s
      where a1.s_id = s.s_id
        group by A1.s_id, s.s_name_ru
        order by s.s_name_ru
        ;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'store_pkg.get_supplier_report', '');
      RAISE_APPLICATION_ERROR (-20334, 'Запрос не выполнился. ' || SQLERRM);

end get_supplier_report;




END;
/


-- End of DDL Script for Package Body CREATOR.STORE_PKG

