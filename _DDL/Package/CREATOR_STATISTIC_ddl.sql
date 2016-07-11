-- Start of DDL Script for Package Body CREATOR.STATISTIC
-- Generated 11.07.2016 22:35:19 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE statistic
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

--
-- Выбор статистики по интенсивности покупателей по часам с суммами
--
PROCEDURE get_clients_tada
(
    date_b_ in date,
    date_e_ in date,
    v_office     in number,
    cursor_ in out ref_cursor
);


--
-- Выбор статистики по интенсивности покупателей по часам
--
PROCEDURE get_clients_hours
(
     date_b_ in date,
     date_e_ in date,
     v_office     in number,
     cursor_ in out ref_cursor
);


--
-- Выбор статистики по количеству покупок в день
--
PROCEDURE get_clients_total
(
     date_b_ in date,
     date_e_ in date,
     v_office     in number,
     cursor_ in out ref_cursor
);


--
-- Выбор статистики по регистрации клиентов
--
PROCEDURE get_clients_registr
(
     date_b_ in date,
     date_e_ in date,
     v_office     in number,
     cursor_ out ref_cursor
);


--
-- Выбор статистики по товарам
--
PROCEDURE goods_stat
(
     date_b_ in date,
     date_e_ in date,
     id_dep_ in number,
     id_ft_  in number,
     id_fst_ in number,
     vid_    in number,  -- вид статистики
     razbiv_ in number,  -- разбивка
     v_office     in number,
     cursor_ in out ref_cursor
);


--
-- Выбор накладных продаж
--
PROCEDURE get_docs_stat
(
     id_dep_      in number,
     DOC_DATE1_   in date,
     DOC_DATE2_   in date,
     ID_DOC_TYPE_ in number,
     p_vid        in number,
     v_office     in number,
     cursor_      out ref_cursor
);


--
-- Выбор накладных продаж
--
PROCEDURE get_docs_view
(
     id_dep_      in number,
     DOC_DATE1_   in date,
     DOC_DATE2_   in date,
     ID_DOC_TYPE_ in number,
     v_office     in number,
     cursor_      out ref_cursor
);


--
--  Выборка по клиентам и продажам
--
PROCEDURE get_client_sales_stat
(
     DOC_DATE1_   in date,
     DOC_DATE2_   in date,
     p_alpha      in varchar2,
     p_region     in varchar2,
     v_office     in number,
     p_otdel      in varchar2,
     cursor_      out ref_cursor
);



--
-- Выборка по клиентам и продажам
--
PROCEDURE get_client_sales_stat_total
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   cursor_      out ref_cursor
);


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   cursor_      out ref_cursor
);


--
-- Собрать данные по складу в регионов
--
PROCEDURE collect_store;


--
-- Выбор статистики по остаткам склада во всех регионах
--
PROCEDURE get_store
(
    id_dep_      in number,
    cursor_      in out ref_cursor
);


--
-- Выбор статистики по продажам клиентов по сумма отделов
--
PROCEDURE get_client_stat_for_summ
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   p_summ       in number,
   cursor_      out ref_cursor
);



--
-- Выбор статистики по заказам
--
PROCEDURE orders_stat
(
    date_b_ in date,
    date_e_ in date,
    id_dep_ in number,
    id_ft_  in number,
    id_fst_ in number,
    vid_    in number,  -- вид статистики
    razbiv_ in varchar2,  -- клиенты
    v_office in number,
    cursor_ in out ref_cursor
);


END;
/

-- Grants for Package
GRANT EXECUTE ON statistic TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY statistic
IS

--
-- Выбор статистики по интенсивности покупателей по часам с суммами
--
PROCEDURE get_clients_tada
(
    date_b_ in date,
    date_e_ in date,
    v_office in number,
    cursor_ in out ref_cursor
)
IS
BEGIN

    open cursor_ for
        select  --to_number(to_char(ddate_in, 'hh24')) as hours
            to_char(to_number(to_char(ddate_in, 'hh24'))) || ' - ' || to_char(to_number(to_char(ddate_in, 'hh24')) + 1) as hours
            ,count( * ) as counts
            ,sum(summ) as total_sum
            ,sum(in_rub) as in_rub
            ,sum(out_rub) as out_rub
            ,sum(in_usd) as in_usd
            ,sum(out_usd) as out_usd
            ,sum(in_eu) as in_eu
            ,sum(out_eu) as out_eu
        FROM cash a, clients b
            where trunc(ddate_in)>=date_b_ and trunc(ddate_in)<=date_e_
                and a.OPERATION in (1,32,4,30,29,3)
                and not exists (select 1 from clients_groups z where z.ID_CLIENTS_GROUPS = b.ID_CLIENTS_GROUPS and lower(z.NAME) in ('служебная','офис'))
                  and a.id_clients = b.id_clients
                  --and b.id_clients_groups not in (41, 181)
                  and (b.id_office = v_office or v_office = 0)
                group by to_char(ddate_in, 'hh24')
                order by  to_number(to_char(ddate_in, 'hh24'));

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_clients_tada', '');
        RAISE_APPLICATION_ERROR (-20900, 'Запрос не выполнился. ' || SQLERRM);

end get_clients_tada;


--
-- Выбор статистики по интенсивности покупателей по часам
--
PROCEDURE get_clients_hours
(
    date_b_ in date,
    date_e_ in date,
    v_office in number,
    cursor_ in out ref_cursor
)
IS
BEGIN
       open cursor_ for
          select --to_number(to_char(ddate_in, 'hh24')) as hours
                to_char(to_number(to_char(ddate_in, 'hh24'))) || ' - ' || to_char(to_number(to_char(ddate_in, 'hh24')) + 1) as hours
                ,count( * ) as counts
                      FROM cash a, clients b
              where trunc(ddate_in)>=date_b_ and trunc(ddate_in)<=date_e_
                and a.OPERATION in (1,32,4,30,29,3)
                and not exists (select 1 from clients_groups z where z.ID_CLIENTS_GROUPS = b.ID_CLIENTS_GROUPS and lower(z.NAME) in ('служебная','офис'))
                  and a.id_clients = b.id_clients
                  --and b.id_clients_groups not in (41, 181)
                  and (b.id_office = v_office or v_office = 0)
                group by to_char(ddate_in, 'hh24')
                order by  to_number(to_char(ddate_in, 'hh24'));

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_clients_hours', '');
        RAISE_APPLICATION_ERROR (-20901, 'Запрос не выполнился. ' || SQLERRM);

END get_clients_hours;


--
-- Выбор статистики по количеству покупок в день
--
PROCEDURE get_clients_total
(
    date_b_ in date,
    date_e_ in date,
    v_office in number,
    cursor_ in out ref_cursor
)
IS
BEGIN
       open cursor_ for
               select trunc(ddate_in) as days, count(*) as counts
                   FROM cash a, clients b
                       where trunc(ddate_in)>=date_b_ and trunc(ddate_in)<=date_e_
                and a.OPERATION in (1,32,4,30,29,3)
                and not exists (select 1 from clients_groups z where z.ID_CLIENTS_GROUPS = b.ID_CLIENTS_GROUPS and lower(z.NAME) in ('служебная','офис'))
                  and a.id_clients = b.id_clients
                  --and b.id_clients_groups not in (41, 181)
                  and (b.id_office = v_office or v_office = 0)
                group by trunc(ddate_in);

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_clients_total', '');
        RAISE_APPLICATION_ERROR (-20902, 'Запрос не выполнился. ' || SQLERRM);

END get_clients_total;


--
-- Выбор статистики по регистрации клиентов
--
PROCEDURE get_clients_registr
(
    date_b_ in date,
    date_e_ in date,
    v_office in number,
    cursor_ out ref_cursor
)
IS
BEGIN
       open cursor_ for
               select to_number(to_char(ddate, 'MM')) as days
                , count( * ) as counts
                   FROM clients
                       where trunc(ddate)>=date_b_ and trunc(ddate)<=date_e_
                              and (id_office = v_office or v_office = 0)
                           group by to_char(ddate, 'MM')
                order by  to_number(to_char(ddate, 'MM'));

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_clients_registr', '');
        RAISE_APPLICATION_ERROR (-20903, 'Запрос не выполнился. ' || SQLERRM);

END get_clients_registr;


--
-- Выбор статистики по товарам
--
PROCEDURE goods_stat
(
    date_b_ in date,
    date_e_ in date,
    id_dep_ in number,
    id_ft_  in number,
    id_fst_ in number,
    vid_    in number,  -- вид статистики
    razbiv_ in number,  -- разбивка
    v_office in number,
    cursor_ in out ref_cursor
)
IS
BEGIN

-- общая статистика без разбивки -----------------------------------------------
  if razbiv_ = 0 then
      -- стата по типам
      if (vid_ = 1) then
          open cursor_ for
            SELECT sum(a.quantity) as quantity, sum(a.price) as price,
                   sum(a.price_list) as price_list, c.f_type
            FROM store_doc_data a, store_doc b, nomenclature_mat_view c
            where a.id_doc = b.id_doc and b.id_doc_type=4 and a.n_id = c.n_id
                  and c.id_departments = id_dep_
                  and ((b.doc_date >= date_b_ and b.doc_date <= date_e_) or date_b_ is null)
                  and (b.id_office = v_office or v_office = 0)
            group by c.f_type
            ;
      end if;

      -- стата по подтипам
      if (vid_ = 2) then
          open cursor_ for
            SELECT sum(a.quantity) as quantity, sum(a.price) as price,
                   sum(a.price_list) as price_list, c.f_sub_type as f_type
            FROM store_doc_data a, store_doc b, nomenclature_mat_view c
            where a.id_doc = b.id_doc and b.id_doc_type=4 and a.n_id = c.n_id
                  and c.id_departments = id_dep_
                  and ( c.ft_id = id_ft_ or id_ft_ = 0 )
                  and ((b.doc_date >= date_b_ and b.doc_date <= date_e_) or date_b_ is null)
                  and (b.id_office = v_office or v_office = 0)
            group by c.f_sub_type
           ;
      end if;

      -- стата по подтипам
      if (vid_ = 3) then
          open cursor_ for
            SELECT sum(a.quantity) as quantity, sum(a.price) as price,
                   sum(a.price_list) as price_list, c.full_name as f_type
            FROM store_doc_data a, store_doc b, nomenclature_mat_view c
            where a.id_doc = b.id_doc and b.id_doc_type=4 and a.n_id = c.n_id
                  and c.id_departments = id_dep_
                  and ( c.ft_id = id_ft_ or id_ft_ = 0 )
                  and ( c.fst_id = id_fst_ or id_fst_ = 0 )
                  and ((b.doc_date >= date_b_ and b.doc_date <= date_e_) or date_b_ is null)
                  and (b.id_office = v_office or v_office = 0)
            group by c.full_name
           ;
      end if;
  end if;
--------------------------------------------------------------------------------

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.goods_stat', '');
        RAISE_APPLICATION_ERROR (-20904, 'Запрос не выполнился. ' || SQLERRM);

END goods_stat;


--
-- Выбор накладных продаж
--
PROCEDURE get_docs_view
(
   id_dep_      in number,
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
       a.inv_id, a.order_id, a.supplier_date, a.supplier_number
       , a.price_pcc
       , a.price_all-a.price_pcc as zarabotok
       , case when price_pcc = 0 then 0 else round((100*(price_all/price_pcc)-100), 2) end procent
        FROM store_view_doc_nacenka a
          where a.id_departments = id_dep_
                and trunc(a.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and a.ID_DOC_TYPE = ID_DOC_TYPE_
                and (a.id_office = v_office or v_office = 0)
             ORDER BY DOC_DATE desc, DOC_DATE_real desc
  ;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_docs_view', '');
       RAISE_APPLICATION_ERROR (-20915, 'Запрос не выполнился. ' || SQLERRM);

end get_docs_view;



--
-- Выбор накладных продаж
--
PROCEDURE get_docs_stat
(
   id_dep_      in number,
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   ID_DOC_TYPE_ in number,
   p_vid        in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS
BEGIN

-- по дням
if (p_vid = 0) then
  open cursor_ for
    select d_year, d_quart, d_month, d_week, d_day
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart, d_month,  d_week, d_day
    order by d_year, d_quart, d_month,  d_week, d_day
    ;
end if;

-- по неделям
if (p_vid = 1) then
  open cursor_ for
    select d_year, d_quart, d_month, d_week
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart, d_month,  d_week
    order by d_year, d_quart, d_month,  d_week
    ;
end if;

-- по месяцам
if (p_vid = 2) then
  open cursor_ for
    select d_year, d_quart, d_month
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart, d_month
    order by d_year, d_quart, d_month
    ;
end if;

-- по кварталам
if (p_vid = 3) then
  open cursor_ for
    select d_year, d_quart
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart
    order by d_year, d_quart
    ;
end if;

-- по годам
if (p_vid = 4) then
  open cursor_ for
    select d_year
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year
    order by d_year
    ;
end if;

if (p_vid = 0) then
  open cursor_ for
    select d_year, d_quart, d_month, d_week, d_day
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart, d_month,  d_week, d_day
    order by d_year, d_quart, d_month,  d_week, d_day
    ;
end if;

if (p_vid = 0) then
  open cursor_ for
    select d_year, d_quart, d_month, d_week, d_day
        , sum(a.quantity) as  quantity
        , sum(price) as price
        , sum(a.quantity*price) as sum_price
        , sum(a.price - a.price_pcc) as price_nacenka
        , sum(a.quantity*(a.price - a.price_pcc)) as sum_nacenka
        , case when sum(price) = 0 then 0 else round( (sum(a.quantity*(a.price - a.price_pcc)) / sum(price))*100, 2 ) end procent
    from (
        SELECT a.id_doc_data, a.id_doc, a.quantity, a.n_id, a.store_type,
               a.quantity_real, a.gtd, a.price_1, a.price_new_1, a.price,
               a.price_list, creator.get_price_pcc_date(a.n_id,b.doc_date,const_office) price_pcc
               , b.doc_date, TO_CHAR(b.doc_date,'yyyy') as d_year, TO_CHAR(b.doc_date,'Q') as d_quart, TO_CHAR(b.doc_date,'mm') as d_month, TO_CHAR(b.doc_date,'WW') as d_week, TO_CHAR(b.doc_date,'DDD') as d_day
        FROM store_doc_data a, store_doc b
        where a.id_doc = b.id_doc and b.id_doc_type = ID_DOC_TYPE_ and b.id_departments = id_dep_
                and trunc(b.doc_date) between trunc(DOC_DATE1_) and trunc(DOC_DATE2_)
                and (b.id_office = v_office or v_office = 0)
    ) a
    group by d_year, d_quart, d_month,  d_week, d_day
    order by d_year, d_quart, d_month,  d_week, d_day
    ;
end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_docs_stat', '');
       RAISE_APPLICATION_ERROR (-20916, 'Запрос не выполнился. ' || SQLERRM);

end get_docs_stat;



--
-- Выборка по клиентам и продажам
--
PROCEDURE get_client_sales_stat
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   cursor_      out ref_cursor
)
IS
    sql_str varchar(4096);
    names varchar2(100);
BEGIN
  -- a.operation in (4, 1, 32)  4-аксессуары, 1-срезка, 32-горшки
  names := 'star';
  select get_office_link(v_office) into names from dual;

  sql_str := '
    select a.*, b.nick, b.region, b.fio, substr(trim(b.nick),0,INSTR(trim(b.nick), '' '')-1) as alpha, c.name as region_name, o.t_long, s.brief
    from (
        SELECT a.id_office, a.id_clients, a.operation, count(1) as quantity, sum(a.summ) as summ, sum(a.in_rub) as in_rub, trunc(max(a.ddate_in)) as ddate
        FROM cash@'||names||' a
        where a.operation in ('||p_otdel||')
            and a.r_ddate >= :p1 and a.r_ddate <= :p2
            and (a.id_office = :v_office or :v_office = 0)
        group by a.id_office, a.id_clients, a.operation
    ) a, operations@'||names||' o, clients@'||names||' b, books_regions@'||names||' c, offices@'||names||' s
    where a.operation = o.id_operations
       and a.id_clients = b.id_clients
       and b.region = c.id_regions
       and a.id_office = s.id_office
  ';
  if p_region is not null then sql_str := sql_str || ' and b.region in ('||p_region||') '; end if;
  if p_alpha is not null  then sql_str := sql_str || ' and substr(trim(b.nick),0,INSTR(trim(b.nick), '' '')-1) in ('||p_alpha||')'; end if;
  sql_str := sql_str || ' order by region_name, quantity desc ';

  open cursor_ for sql_str using DOC_DATE1_, DOC_DATE2_, v_office, v_office;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_client_sales_stat', '');
       RAISE_APPLICATION_ERROR (-20917, 'Запрос не выполнился. ' || SQLERRM);

end get_client_sales_stat;




--
-- Выборка по клиентам и продажам
--
PROCEDURE get_client_sales_stat_total
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   cursor_      out ref_cursor
)
IS
    sql_str varchar(4096);
    summ_total  number(15);
    names varchar2(100);
BEGIN
  -- a.operation in (4, 1, 32)  4-аксессуары, 1-срезка, 32-горшки
  names := 'star';
  select get_office_link(v_office) into names from dual;

  sql_str := '
      select nvl(round(sum(summ)),1)
      from cash@'||names||'
      where operation in ('||p_otdel||')
        and r_ddate >= :p1 and r_ddate <= :p2
        and (id_office = :v_office or :v_office = 0)
  ';
  execute immediate sql_str into summ_total using DOC_DATE1_, DOC_DATE2_, v_office, v_office;

  sql_str := '
    select a.*, s.brief, o.t_long, '||summ_total||' as summ_total, round((summ/'||summ_total||')*100) as percent
    from (
        SELECT a.id_office, a.operation, count(1) as quantity, sum(a.summ) as summ, sum(a.in_rub) as in_rub, trunc(max(a.ddate_in)) as ddate
        FROM cash@'||names||' a, clients@'||names||' b
        where a.operation in ('||p_otdel||')
            and a.r_ddate >= :p1 and a.r_ddate <= :p2
            and (a.id_office = :v_office or :v_office = 0)
            and a.id_clients = b.id_clients
  ';

  if p_region is not null then sql_str := sql_str || ' and b.region in ('||p_region||') '; end if;
  if p_alpha is not null  then sql_str := sql_str || ' and substr(trim(b.nick),0,INSTR(trim(b.nick), '' '')-1) in ('||p_alpha||')'; end if;

  sql_str := sql_str || '
        group by a.id_office, a.operation
    ) a, operations@'||names||' o, offices@'||names||' s
    where a.operation = o.id_operations and a.id_office = s.id_office
    order by operation, s.brief
  ';

  open cursor_ for sql_str using DOC_DATE1_, DOC_DATE2_, v_office, v_office;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_client_sales_stat', sql_str);
       RAISE_APPLICATION_ERROR (-20917, 'Запрос не выполнился. ' || SQLERRM);

end get_client_sales_stat_total;


--
-- Выбор накладных продаж
--
PROCEDURE get_doc_view_client
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   cursor_      out ref_cursor
)
IS
    sql_str varchar(4096);
BEGIN

  sql_str := '
    SELECT a.id_doc, a.doc_number, a.id_doc_type, a.id_departments,
       a.department_name, a.operator_name, a.doc_date, a.doc_date_real,
       a.id_client, a.nick, a.fio, a.quantity_all, a.price_all,
       a.sum_price_old, a.sum_price_new, a.sum_price_difference,
       a.comments, a.inv_id, a.order_id, a.supplier_date,
       a.supplier_number, a.suplier, a.id_office, a.brief
        FROM store_doc_view2 a
          where a.id_departments in ('||p_otdel||')
              and a.doc_date >= :p1 and a.doc_date <= :p2
              and (a.id_office = :v_office or :v_office = 0)
                and a.ID_DOC_TYPE = 4';

  if p_region is not null then sql_str := sql_str || ' and a.region in ('||p_region||') '; end if;
  if p_alpha is not null  then sql_str := sql_str || ' and substr(trim(a.nick),0,INSTR(trim(a.nick), '' '')-1) in ('||p_alpha||')'; end if;

  sql_str := sql_str || '             ORDER BY DOC_DATE desc, DOC_DATE_real desc ';

  open cursor_ for sql_str using DOC_DATE1_, DOC_DATE2_, v_office, v_office ;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'STATISTIC.get_doc_view_client', '');
       RAISE_APPLICATION_ERROR (-20918, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end get_doc_view_client;



--
-- Собрать данные по складу в регионов
--
PROCEDURE collect_store
is
  v_code  NUMBER;
begin
  execute immediate 'truncate table store_main_all';

  insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main a, nomenclature b where a.id_office=1 and a.n_id = b.n_id and a.id_office=b.id_office);

  begin
    insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main@kazan a where a.id_office=3);
    commit;
  EXCEPTION WHEN OTHERS THEN
      v_code := SQLCODE;
      if v_code <> -12170 then raise; end if;
  end;
/*
  begin
    insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main@samara a where a.id_office=2);
    commit;
  EXCEPTION WHEN OTHERS THEN
      v_code := SQLCODE;
      if v_code <> -12170 then raise; end if;
  end;
*/
/*
  begin
    insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main@yarik a where a.id_office=4);
    commit;
  EXCEPTION WHEN OTHERS THEN
      v_code := SQLCODE;
      if v_code <> -12170 then raise; end if;
  end;
*/
  begin
    insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main@cherep a where a.id_office=5);
    commit;
  EXCEPTION WHEN OTHERS THEN
      v_code := SQLCODE;
      if v_code <> -12170 then raise; end if;
  end;

  begin
    insert into store_main_all (select a.id_store_main, a.n_id, a.quantity, a.store_type, a.reserv,
       a.id_departments, a.id_office, a.date_change from store_main@ufa a where a.id_office=6);
    commit;
  EXCEPTION WHEN OTHERS THEN
      v_code := SQLCODE;
      if v_code <> -12170 then raise; end if;
  end;

end collect_store;

--
-- Выбор статистики по остаткам склада во всех регионах
--
PROCEDURE get_store
(
    id_dep_      in number,
    cursor_      in out ref_cursor
)
IS
BEGIN
  open cursor_ for
    select a.N_ID, a.full_name, a.F_TYPE, a.F_SUB_TYPE, photo, is_photo,
           CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
           a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COUNTRY, a.remarks, a.DIAMETER,

           sum(case when s.id_office = 1 then s.QUANTITY else 0 end) as quantity_msk,
           sum(case when s.id_office = 2 then s.QUANTITY else 0 end) as quantity_samara,
           sum(case when s.id_office = 3 then s.QUANTITY else 0 end) as quantity_kazan,
           sum(case when s.id_office = 4 then s.QUANTITY else 0 end) as quantity_yarik,
           sum(case when s.id_office = 5 then s.QUANTITY else 0 end) as quantity_cherep,
           sum(case when s.id_office = 6 then s.QUANTITY else 0 end) as quantity_ufa,

           max(c.PRICE) as price, a.FT_ID, a.FST_ID, a.C_ID, a.COL_ID, a.S_ID, a.S_NAME_RU,

           sum(s.QUANTITY * c.PRICE) as QUANTITY_PRICE,

           sum(case when s.id_office = 1 then s.reserv else 0 end) as reserv_msk,
           sum(case when s.id_office = 2 then s.reserv else 0 end) as reserv_samara,
           sum(case when s.id_office = 3 then s.reserv else 0 end) as reserv_kazan,
           sum(case when s.id_office = 4 then s.reserv else 0 end) as reserv_yarik,
           sum(case when s.id_office = 5 then s.reserv else 0 end) as reserv_cherep,
           sum(case when s.id_office = 6 then s.reserv else 0 end) as reserv_ufa,

           a.RUS_MARKS as spesification, a.hol_type, a.hol_sub_type, TO_NUMBER(b.nbutton,9) as nbutton,
           case when b.nbutton = 2 then '1: Роза голландия' else
           case when b.nbutton = 3 then '2: Роза эквадор' else
           case when b.nbutton = 4 then '3: Хризантема' else
           case when b.nbutton = 5 then '4: Зелень' else
           case when b.nbutton = 6 then '5: Гвоздика' else
           case when b.nbutton = 7 then '6: Лилия' else
           case when b.nbutton = 8 then '7: Другие цветы' else 'Все'
           end end end end end end end but_name
           , compiled_name_otdel
        FROM NOMENCLATURE_MAT_VIEW a,
             store_main_all s,
             PRICE_LIST c,
             (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b
        where a.id_departments = id_dep_
           and a.N_ID = s.N_ID
           and a.N_ID = c.N_ID(+)
           and c.id_office(+) = const_office
           and s.STORE_TYPE = 1
           and (a.fst_id = b.fst_id(+) /*and (b.nbutton = button_ or button_ = 0)*/)
        group by a.N_ID, a.full_name, a.F_TYPE, a.F_SUB_TYPE, a.BAR_CODE, a.CODE, a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COUNTRY, photo, is_photo, a.remarks, a.DIAMETER,
            a.FT_ID, a.FST_ID, a.C_ID, a.COL_ID, a.S_ID, a.S_NAME_RU, b.nbutton, a.RUS_MARKS, a.hol_type, a.hol_sub_type, compiled_name_otdel
        ORDER BY b.nbutton, compiled_name_otdel
          ;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_clients_tada', '');
        RAISE_APPLICATION_ERROR (-20919, 'Запрос не выполнился. ' || SQLERRM);

end get_store;


--
-- Выбор статистики по продажам клиентов по сумма отделов
--
PROCEDURE get_client_stat_for_summ
(
   DOC_DATE1_   in date,
   DOC_DATE2_   in date,
   p_alpha      in varchar2,
   p_region     in varchar2,
   v_office     in number,
   p_otdel      in varchar2,
   p_summ       in number,
   cursor_      out ref_cursor
)
IS
   sql_str varchar(4096);
BEGIN
  sql_str := '
    select a.*, b.gr_summ
    from (
      select a.BRIEF, a.operation, a.t_long, sum(a.summ) as cl_summ, a.nick, a.client_group, a.ID_CLIENTS_GROUPS
      from (
          SELECT a.id_office, o.BRIEF, a.id_clients, a.operation, op.t_long, a.summ, c.nick, c.ID_CLIENTS_GROUPS, g.NAME as client_group
          FROM cash a
          inner join clients c on c.id_clients = a.id_clients
          inner join offices o on o.id_office = a.id_office
          inner join operations op on op.id_operations = a.operation
          inner join clients_groups g on g.ID_CLIENTS_GROUPS = c.ID_CLIENTS_GROUPS
          where a.r_ddate >= :p1 and a.r_ddate <= :p2
              and a.operation in ('||p_otdel||')
              and (a.id_office = :v_office or :v_office = 0)
  ';
  if p_region is not null then sql_str := sql_str || ' and c.region in ('||p_region||') '; end if;
  if p_alpha is not null  then sql_str := sql_str || ' and substr(trim(c.nick),0,INSTR(trim(c.nick), '' '')-1) in ('||p_alpha||')'; end if;
  sql_str := sql_str || '
      ) a
      group by a.BRIEF, a.operation, a.t_long, a.nick, a.client_group, a.ID_CLIENTS_GROUPS
    ) a
    left outer join (
      select a.BRIEF, a.operation, a.t_long, sum(a.summ) as gr_summ, a.client_group, a.ID_CLIENTS_GROUPS
      from (
          SELECT a.id_office, o.BRIEF, a.operation, op.t_long, a.summ, c.ID_CLIENTS_GROUPS, g.NAME as client_group
          FROM cash a
          inner join clients c on c.id_clients = a.id_clients
          inner join offices o on o.id_office = a.id_office
          inner join operations op on op.id_operations = a.operation
          inner join clients_groups g on g.ID_CLIENTS_GROUPS = c.ID_CLIENTS_GROUPS and g.name not in (''CHL (R)'',''Сотрудник фирмы'',''Общая группа'',''Служебная'')
          where a.r_ddate >= :p1 and a.r_ddate <= :p2
              and a.operation in ('||p_otdel||')
              and (a.id_office = :v_office or :v_office = 0)
  ';
  if p_region is not null then sql_str := sql_str || ' and c.region in ('||p_region||') '; end if;
  if p_alpha is not null  then sql_str := sql_str || ' and substr(trim(c.nick),0,INSTR(trim(c.nick), '' '')-1) in ('||p_alpha||')'; end if;
  sql_str := sql_str || '
      ) a
      group by a.BRIEF, a.operation, a.t_long, a.client_group, a.ID_CLIENTS_GROUPS
    ) b on b.BRIEF = a.BRIEF and b.operation = a.operation and b.ID_CLIENTS_GROUPS = a.ID_CLIENTS_GROUPS
    where nvl(b.gr_summ,a.cl_summ) >= :p_summ or :p_summ = 0
    order by a.BRIEF, a.operation, a.t_long, a.client_group, a.nick
  ';
  open cursor_ for sql_str using DOC_DATE1_, DOC_DATE2_, v_office, v_office, DOC_DATE1_, DOC_DATE2_, v_office, v_office, p_summ, p_summ;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.get_client_stat_for_summ', sql_str);
        RAISE_APPLICATION_ERROR (-20920, 'Запрос не выполнился. ' || SQLERRM);

end get_client_stat_for_summ;





--
-- Выбор статистики по заказам
--
PROCEDURE orders_stat
(
    date_b_ in date,
    date_e_ in date,
    id_dep_ in number,
    id_ft_  in number,
    id_fst_ in number,
    vid_    in number,  -- вид статистики
    razbiv_ in varchar2,  -- клиенты
    v_office in number,
    cursor_ in out ref_cursor
)
IS
  sql_str varchar2(4000);
BEGIN

      -- стата по типам и подтипам в общих показателях
      if (vid_ = 1) then
        sql_str := 'SELECT g.name, t.nick,  sum(a.quantity) as quantity, wm_concat(distinct s.id_orders) orders_list
            FROM orders_list a, orders_clients b, orders s, nomenclature_mat_view c, clients t, clients_groups g
            where a.id_orders_clients = b.id_orders_clients
                  and b.id_orders = s.id_orders and s.DATE_TRUCK >= :date_b_ and s.DATE_TRUCK <= :date_e_
                  and a.active = 1 and b.active = 1 and s.active = 1
                  and a.quantity > 0
                  and a.n_id = c.n_id
                  and b.id_clients = t.id_clients and t.id_clients_groups = g.id_clients_groups
                  and c.id_departments = :id_dep_
                  and (b.id_office = :v_office or :v_office = 0)
                  and (c.ft_id = :id_ft_ or c.fst_id = :id_fst_ or :id_ft_ = :id_fst_)
                  and b.id_clients not in (CONST_MAIN, CONST_DIR) '||case when length(razbiv_) > 0 then ' and b.id_clients in ('||razbiv_||')' else null end||'
            group by g.name, t.nick
            order by g.name, t.nick
            ' ;
        --LOG_ERR(sql_str, 0, 'STATISTIC.orders_stat', '');
          open cursor_ for
            sql_str  using date_b_, date_e_, id_dep_, v_office, v_office, id_ft_, id_fst_, id_ft_, id_fst_
          ;
      end if;

      -- стата по типам и подтипам по товару
      if (vid_ = 2) then
          open cursor_ for
            'SELECT c.compiled_name_otdel, sum(a.quantity) as quantity, wm_concat(distinct s.id_orders) orders_list, wm_concat(distinct t.nick) clients_list
            FROM orders_list a, orders_clients b, orders s, nomenclature_mat_view c, clients t, clients_groups g
            where a.id_orders_clients = b.id_orders_clients
                  and b.id_orders = s.id_orders and s.DATE_TRUCK >= :date_b_ and s.DATE_TRUCK <= :date_e_
                  and a.active = 1 and b.active = 1 and s.active = 1
                  and a.quantity > 0
                  and a.n_id = c.n_id
                  and b.id_clients = t.id_clients and t.id_clients_groups = g.id_clients_groups
                  and c.id_departments = :id_dep_
                  and (b.id_office = :v_office or :v_office = 0)
                  and (c.ft_id = :id_ft_ or c.fst_id = :id_fst_ or :id_ft_ = :id_fst_)
                  and b.id_clients not in (CONST_MAIN, CONST_DIR) '||case when length(razbiv_) > 0 then ' and b.id_clients in ('||razbiv_||')' else null end||'
            group by c.compiled_name_otdel
            order by c.compiled_name_otdel
            ' using date_b_, date_e_, id_dep_, v_office, v_office, id_ft_, id_fst_, id_ft_, id_fst_
          ;
      end if;


EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'STATISTIC.orders_stat', '');
        RAISE_APPLICATION_ERROR (-20921, 'Запрос не выполнился. ' || SQLERRM);

END orders_stat;


END;
/


-- End of DDL Script for Package Body CREATOR.STATISTIC

