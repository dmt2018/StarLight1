-- Start of DDL Script for Package Body CREATOR.TRUCK_SALE_PKG
-- Generated 11.02.2017 18:47:12 from CREATOR@STAR_REG

CREATE OR REPLACE 
PACKAGE truck_sale_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные
tmp_cnt   NUMBER;

--
-- Выбор записанных продаж с колес
--
PROCEDURE get_truck_sale
(
   startDate in date,
   stopDate  in date,
   cursor_   out ref_cursor
);

--
-- Выбор всех инвойсов
--
function get_list_inv
(
  p_truck_sale_id  in number
) return varchar2;


--
-- Выбор всех разносов
--
function get_list_distr
(
  p_truck_sale_id in number
) return varchar2;


--
-- Удаление продаж с колес
--
PROCEDURE del_truck_sale
(
   p_truck_sale_id in number
);


--
-- Изменение продаж с колес
--
PROCEDURE edit_truck_sale
(
  p_id              in out number,
  p_start_date      in date,
  p_stop_date       in date,
  p_comments        in varchar2,
  p_price_coef      in number,
  p_course          in number,
  p_status          in varchar2,
  p_truckincaming   in date
);


--
-- Добавляем инвойсы к продажам с колес
--
PROCEDURE edit_truck_sale_ins_inv
(
  p_id          in number,
  p_inv_id      in number
);


--
-- Выбор данных для продаж с колес
--
PROCEDURE get_truck_sale_data
(
   truck_sale_id_   in number,
   cursor_          out ref_cursor
);


--
--  выводим список неподгруженных на склад инвойсов и в продажи с колес
--
PROCEDURE get_not_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  добавим данные в продажу
--
PROCEDURE ins_truck_sale_data
(
   p_TRUCK_SALE_ID  IN NUMBER,
   p_N_ID           IN NUMBER,
   p_COEF           IN NUMBER,
   p_price          IN NUMBER,
   p_min_pack       in number
);


--
--  Статистика
--
PROCEDURE get_statistic
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
);


--
--  Данные для сайта
--
PROCEDURE get_data_for_web
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
);


--
-- Удаляем инвойсы с продажам с колес
--
PROCEDURE edit_truck_sale_del
(
  p_id          in number,
  p_inv_id      in number,
  p_type        in varchar2
);


--
-- Добавляем разносы к продажам с колес
--
PROCEDURE edit_truck_sale_ins_distr
(
  p_id          in number,
  p_inv_id      in number
);

--
-- Выбор записанных распределений
--
PROCEDURE get_distr_index
(
   id_dep_   in number,
   startDate in date,
   stopDate  in date,
   cursor_   out ref_cursor
);


--
-- Найдем разнос по идентификатору продаж с коле
--
PROCEDURE get_dist_id
(
  in_truck_sale_id  in number,
  in_dist_id        in out number
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON truck_sale_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY truck_sale_pkg
IS

--
-- Выбор всех инвойсов
--
function get_list_inv
(
  p_truck_sale_id  in number
) return varchar2
is

  cursor s_ is
    select INV_ID FROM truck_sale_invoices
      WHERE truck_sale_id = p_truck_sale_id;

  str_ varchar2(200);
  id_  varchar2(20);
begin
  str_ := '';
  open s_;
  loop
    fetch s_ into id_;
    exit when s_%notfound;
    str_ := str_ || id_ || ', ';
  end loop;
  str_ := substr(str_,0,length(str_)-2);
  close s_;

  return str_;
end;


--
-- Выбор всех разносов
--
function get_list_distr
(
  p_truck_sale_id in number
) return varchar2
is

  cursor s_ is
    select DIST_IND_ID FROM truck_sale_distr
      WHERE truck_sale_id = p_truck_sale_id;

  str_ varchar2(200);
  id_  varchar2(20);
begin
  str_ := '';
  open s_;
  loop
    fetch s_ into id_;
    exit when s_%notfound;
    str_ := str_ || id_ || ', ';
  end loop;
  str_ := substr(str_,0,length(str_)-2);
  close s_;

  return str_;
end;


--
-- Выбор записанных продаж с колес
--
PROCEDURE get_truck_sale
(
   startDate in date,
   stopDate  in date,
   cursor_   out ref_cursor
)
IS
BEGIN
   open cursor_ for
     SELECT a.*,
       a.truck_sale_id as truck_sale_id_,
       get_list_inv(truck_sale_id) as list_inv,
       get_list_distr(truck_sale_id) as list_distr
     FROM truck_sale a
     WHERE a.start_date between startDate and stopDate
        or a.stop_date between startDate and stopDate
     ORDER BY a.truck_sale_id DESC
     ;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.get_truck_sale', '');
        RAISE_APPLICATION_ERROR (-20900, 'Запрос не выполнился. ' || SQLERRM);
END get_truck_sale;


--
-- Удаление продаж с колес
--
PROCEDURE del_truck_sale
(
   p_truck_sale_id in number
)
IS
BEGIN
  delete from truck_sale where truck_sale_id = p_truck_sale_id;
  commit;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.del_truck_sale', '');
        RAISE_APPLICATION_ERROR (-20901, 'Запрос не выполнился. ' || SQLERRM);
END del_truck_sale;


--
-- Изменение продаж с колес
--
PROCEDURE edit_truck_sale
(
  p_id              in out number,
  p_start_date      in date,
  p_stop_date       in date,
  p_comments        in varchar2,
  p_price_coef      in number,
  p_course          in number,
  p_status          in varchar2,
  p_truckincaming   in date
)
is
begin

  if p_id = 0 then
    insert into truck_sale(truck_sale_id, start_date, stop_date, comments, price_coef, status, id_office, date_create, user_create, course, truckincaming)
    values(universal_id.nextval, p_start_date, p_stop_date, p_comments, p_price_coef, p_status, const_office, sysdate, user, p_course, p_truckincaming)
    returning truck_sale_id into p_id;
  end if;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale', '');
        RAISE_APPLICATION_ERROR (-20902, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Добавляем инвойсы к продажам с колес
--
PROCEDURE edit_truck_sale_ins_inv
(
  p_id          in number,
  p_inv_id      in number
)
is
begin

  insert into truck_sale_invoices(TRUCK_SALE_ID, INV_ID) values(p_id, p_inv_id);

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale_ins_inv', '');
        RAISE_APPLICATION_ERROR (-20903, 'Запрос не выполнился. ' || SQLERRM);
end;



--
-- Выбор данных для продаж с колес
--
PROCEDURE get_truck_sale_data
(
   truck_sale_id_   in number,
   cursor_          out ref_cursor
)
IS
BEGIN

   open cursor_ for
     select q_sold, s_sold,
            a.UNITS, a.PRICE_PER_UNIT, s.PRICE_COEF, d.price, d.min_pack,
            nvl(d.price,
              case when a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course > 100 then round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course)
              else round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 1) end
            ) coef_price,
            case when d.n_id > 0 then 1 else 0 end IS_ACTIVE, d.coef as p_coef, d.price as p_price
            , s.truck_sale_id as truck_sale_id
            , n.*
       from
         (
           select units, round(PRICE_PER_UNIT/decode(units,0,1,units),2) as PRICE_PER_UNIT, n_id, q_sold, s_sold from (
                select sum(a.UNITS) units, sum(a.UNITS*a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id, null as q_sold, null as s_sold
                  from invoice_data a, truck_sale_invoices b
                  where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = truck_sale_id_
                  group by a.n_id
                union all
                select sum(a.left_quantity) as units, sum(a.left_quantity*d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id, sum(w.quantity) as q_sold, sum(w.quantity * w.price) as s_sold
                  from PREP_DIST_VIEW a
                  inner join invoice_data d on a.invoice_data_id = d.invoice_data_id
                  inner join truck_sale_distr b on b.truck_sale_id = truck_sale_id_ and a.dist_ind_id = b.DIST_IND_ID
                  left outer join truck_sale_data s on s.truck_sale_id =  b.truck_sale_id and s.n_id = a.n_id
                  left outer join distributions_webshop w on w.n_id = a.n_id and b.DIST_IND_ID = w.DIST_IND_ID
                  where (a.left_quantity > 0 or s.truck_sale_id is not null)
                  group by a.n_id
           ) a
         ) a
         inner join truck_sale s on s.truck_sale_id = truck_sale_id_
         inner join nomenclature_mat_view n on n.n_id = a.n_id and n.notuse = 0
         left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
       where not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=n.n_id)
       order by n.COMPILED_NAME_OTDEL
       ;
/*
     select a.UNITS, a.PRICE_PER_UNIT, s.PRICE_COEF, d.price, d.min_pack,
            nvl(d.price,
              case when a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course > 100 then round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course)
              else round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 1) end
            ) coef_price,
            case when d.n_id > 0 then 1 else 0 end IS_ACTIVE, d.coef as p_coef, d.price as p_price
            , s.truck_sale_id as truck_sale_id
            , n.*
       from
         (
           select units, round(PRICE_PER_UNIT/decode(units,0,1,units),2) as PRICE_PER_UNIT, n_id from (
                --select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                select sum(a.UNITS) units, sum(a.UNITS*a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                  from invoice_data a, truck_sale_invoices b
                  where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = truck_sale_id_
                  group by a.n_id
                union all
                --select sum(a.left_quantity) as units, max(d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                select sum(a.left_quantity) as units, sum(a.left_quantity*d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                  from PREP_DIST_VIEW a, invoice_data d, truck_sale_distr b
                  where a.dist_ind_id = b.DIST_IND_ID and b.truck_sale_id = truck_sale_id_
                    and a.left_quantity > 0 and a.invoice_data_id = d.invoice_data_id
                  group by a.n_id
           ) a
         ) a
         inner join truck_sale s on s.truck_sale_id = truck_sale_id_
         inner join nomenclature_mat_view n on n.n_id = a.n_id and n.notuse = 0
         left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
       where not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=n.n_id)
       order by n.COMPILED_NAME_OTDEL
       ;
*/

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.get_truck_sale_data', '');
        RAISE_APPLICATION_ERROR (-20904, 'Запрос не выполнился. ' || SQLERRM);
end;



--
--  выводим список неподгруженных на склад инвойсов и в продажи с колес
--
PROCEDURE get_not_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.inv_id, a.inv_date, a.comments, a.inv_sum, a.ipp_id, a.ipp_comment, a.total_sum
            , a.id_departments, a.dept_name, a.inv_minus, a.minus_inv_id, a.is_minus, a.s_name_ru
            , a.past_num, a.READY_POS
    from invoice_register_full a
    where a.SENDED_TO_WAREHOUSE = 0 and a.ID_DEPARTMENTS = ID_DEPT_ and a.inv_minus in (0,3) and id_office = const_office
      and a.inv_date > sysdate-30
      and not exists (select 1 from truck_sale_invoices z where z.INV_ID = a.inv_id)
    ORDER BY a.inv_date desc;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'truck_sale_pkg.get_not_loaded_inv', '');
      RAISE_APPLICATION_ERROR (-20905, 'Запрос не выполнился. ' || SQLERRM);

end get_not_loaded_inv;

--
-- Выбор записанных распределений
--
PROCEDURE get_distr_index
(
   id_dep_   in number,
   startDate in date,
   stopDate  in date,
   cursor_   out ref_cursor
)
IS
BEGIN
   open cursor_ for
        SELECT a.dist_ind_id, a.description, a.dist_date, a.ready, distribution_pkg.get_list_inv(dist_ind_id) as str_inv, distribution_pkg.get_list_orders(dist_ind_id) str_orders
               , nvl(s.outer_id, a.dist_ind_id) as distrib_seq
               , (select max(r.WAREHOUSE_SENDED_DATE) as WAREHOUSE_SENDED_DATE from invoice_register r, DISTRIBUTIONS_INVOICES d where r.inv_id = d.INV_ID and d.DIST_IND_ID = a.dist_ind_id) is_sended
                FROM DISTRIBUTIONS_INDEX a
                  --left outer join orders b on b.id_orders = a.id_orders
                  left outer join numeration_seq s on s.obj_id = a.dist_ind_id and s.entity = 'distribution'
                WHERE a.ID_DEPARTMENTS = id_dep_
                  --and a.DIST_DATE between startDate and stopDate
                  and a.DIST_DATE between sysdate-120 and sysdate
                  and not exists (select 1 from truck_sale_distr z where z.DIST_IND_ID = a.dist_ind_id)
                ORDER BY a.dist_ind_id DESC;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.get_distr_index', '');
        RAISE_APPLICATION_ERROR (-20500, 'Запрос не выполнился. ' || SQLERRM);
END get_distr_index;



--
--  добавим данные в продажу
--
PROCEDURE ins_truck_sale_data
(
   p_TRUCK_SALE_ID  IN NUMBER,
   p_N_ID           IN NUMBER,
   p_COEF           IN NUMBER,
   p_price          IN NUMBER,
   p_min_pack       in number
)
IS
BEGIN

  select count(*) into tmp_cnt from truck_sale_data where TRUCK_SALE_ID = p_TRUCK_SALE_ID and N_ID = p_N_ID;
  if tmp_cnt = 0 then
    insert into truck_sale_data values(p_TRUCK_SALE_ID, p_N_ID, p_COEF, p_price, p_min_pack);
  else
    update truck_sale_data set COEF = p_COEF, price = p_price, min_pack = p_min_pack where TRUCK_SALE_ID = p_TRUCK_SALE_ID and N_ID = p_N_ID;
  end if;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.ins_truck_sale_data', '');
      RAISE_APPLICATION_ERROR (-20906, 'Запрос не выполнился. ' || SQLERRM);

end ins_truck_sale_data;


--
--  Статистика
--
PROCEDURE get_statistic
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
)
IS
BEGIN

   open cursor_ for
     select count(*) as nn, sum(units) as units, round(sum(a.PRICE_PER_UNIT * units * s.course),2) as net_summ,
       round(sum(nvl(d.price,
              case when a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course > 100 then round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course)
              else round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 1) end
            ) * units), 1) as summ
       from (
           select units, round(PRICE_PER_UNIT/decode(units,0,1,units),2) as PRICE_PER_UNIT, n_id from (
              select sum(a.UNITS) units, sum(a.UNITS*a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                from invoice_data a, truck_sale_invoices b
                where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
                group by a.n_id
              union all
              select sum(a.left_quantity) as units, sum(a.left_quantity*d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                from PREP_DIST_VIEW a, invoice_data d, truck_sale_distr b
                where a.dist_ind_id = b.DIST_IND_ID and b.truck_sale_id = p_TRUCK_SALE_ID
                  and a.left_quantity > 0 and a.invoice_data_id = d.invoice_data_id
                group by a.n_id
           ) a
/*
              select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from invoice_data a, truck_sale_invoices b
              where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
              group by a.n_id
              union all
              select sum(a.left_quantity) as units, max(d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from PREP_DIST_VIEW a, invoice_data d, truck_sale_distr b
              where a.dist_ind_id = b.DIST_IND_ID and b.truck_sale_id = p_TRUCK_SALE_ID
              and a.left_quantity > 0 and a.invoice_data_id = d.invoice_data_id
              group by a.n_id
*/
         ) a
         inner join truck_sale s on s.truck_sale_id = p_TRUCK_SALE_ID
         inner join nomenclature_mat_view n on n.n_id = a.n_id
         inner join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
     ;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_statistic', '');
      RAISE_APPLICATION_ERROR (-20907, 'Запрос не выполнился. ' || SQLERRM);

end get_statistic;



--
--  Данные для сайта
--
PROCEDURE get_data_for_web
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
)
IS
BEGIN

   open cursor_ for
     SELECT b. code as product_art
           , b.name_code as CODENAME
           , decode(b.id_departments, 121,2, 61,1, 62,3, 0) as depart_id
           , b.s_name_ru as brand_title
           , b.country
           , b.f_type || ' / ' || b.f_sub_type as category
           , b.f_name_ru as product_title
           , b.colour
           , b.len as "SIZE"
           , nvl(d.MIN_PACK, b.pack) as PIECESINPACK
           , b.compiled_name_otdel as product_desc

           --, nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as product_price
           , nvl(d.price,
              case when a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course > 100 then round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course)
              else round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 1) end
            ) product_price

           , nvl(a.units,0) as product_qty
           , 0 as product_reserve
           , nvl(b.nom_new,0) as NEW_FLAG
           , 0 as DISCOUNT     -- Скидка. Формат INT, возможные значения 10,20,30 - т.е. проценты скидки, при пустом поле - пусто или 0
           , 0 as PROFIT       -- Выгодное предложение. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           --, nvl(p.BEST_PRICE,0) as BESTPRICE    -- Лучшая цена. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           , case when instr(b.remarks, '"!"') > 0 then 1 else null end BESTPRICE
           , nvl(b.nom_start,0) as SEASON_START
           , nvl(b.nom_end,0) as SEASON_END
           , nvl(c.hs_val,'0') as onMarch
           , s.START_DATE as SALE_START
           , s.stop_date as SALE_END
           , s.TRUCK_SALE_ID as INV_ID
           , s.truckincaming
       FROM nomenclature_mat_view b
         left outer join nom_specifications c on c.n_id = b.n_id and c.hs_id = const_8march

         inner join (
           select units, round(PRICE_PER_UNIT/units,2) as PRICE_PER_UNIT, n_id from (
              select sum(a.UNITS) units, sum(a.UNITS*a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                from invoice_data a, truck_sale_invoices b
                where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
                group by a.n_id
              union all
              select sum(a.left_quantity) as units, sum(a.left_quantity*d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
                from PREP_DIST_VIEW a, invoice_data d, truck_sale_distr b
                where a.dist_ind_id = b.DIST_IND_ID and b.truck_sale_id = p_TRUCK_SALE_ID
                  and a.left_quantity > 0 and a.invoice_data_id = d.invoice_data_id
                group by a.n_id
           ) a
/*
              select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from invoice_data a, truck_sale_invoices b
              where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
              group by a.n_id
              union all
              select sum(a.left_quantity) as units, max(d.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from PREP_DIST_VIEW a, invoice_data d, truck_sale_distr b
              where a.dist_ind_id = b.DIST_IND_ID and b.truck_sale_id = p_TRUCK_SALE_ID
              and a.left_quantity > 0 and a.invoice_data_id = d.invoice_data_id
              group by a.n_id
*/
         ) a on b.n_id = a.n_id

         inner join truck_sale s on s.truck_sale_id = p_TRUCK_SALE_ID
         inner join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = b.n_id and d.n_id = a.n_id
       where b.notuse = 0
         and not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=b.n_id)
     ;
/*
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
           , nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as product_price
           , nvl(a.units,0) as product_qty
           , 0 as product_reserve
           , nvl(b.nom_new,0) as NEW_FLAG
           , 0 as DISCOUNT     -- Скидка. Формат INT, возможные значения 10,20,30 - т.е. проценты скидки, при пустом поле - пусто или 0
           , 0 as PROFIT       -- Выгодное предложение. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           --, nvl(p.BEST_PRICE,0) as BESTPRICE    -- Лучшая цена. Формат: BOOLEAN или TINYINT(1), значениея: 0/1, false/true, при пустом поле - пусто или 0
           , case when instr(b.remarks, '"!"') > 0 then 1 else null end BESTPRICE
           , nvl(b.nom_start,0) as SEASON_START
           , nvl(b.nom_end,0) as SEASON_END
           , nvl(c.hs_val,'0') as onMarch
           , s.START_DATE as SALE_START
           , s.stop_date as SALE_END
           , s.TRUCK_SALE_ID as INV_ID
       FROM nomenclature_mat_view b
         left outer join nom_specifications c on c.n_id = b.n_id and c.hs_id = const_8march
         inner join truck_sale s on s.truck_sale_id = p_TRUCK_SALE_ID
         inner join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = b.n_id
         inner join truck_sale_invoices i on i.truck_sale_id = s.truck_sale_id
         inner join (select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id, a.inv_id from invoice_data a where a.storned_data = 0 group by a.inv_id, a.n_id) a
           on i.inv_id = a.inv_id and a.n_id = d.n_id
       where b.notuse = 0
         and not exists (select * from nomenclature_site_marks marks where remove_from_site=1 and marks.n_id=b.n_id)
     ;
*/
EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_data_for_web', '');
      RAISE_APPLICATION_ERROR (-20908, 'Запрос не выполнился. ' || SQLERRM);

end get_data_for_web;



--
-- Удаляем инвойсы с продажам с колес
--
PROCEDURE edit_truck_sale_del
(
  p_id          in number,
  p_inv_id      in number,
  p_type        in varchar2
)
is
begin

  if p_type = 'distr' THEN
    delete from truck_sale_data a
      where truck_sale_id = p_id
        and exists (select 1 from invoice_data z, truck_sale_invoices y where z.n_id = a.n_id and z.inv_id = y.inv_id and y.truck_sale_id = a.truck_sale_id and y.inv_id = p_inv_id )
        and not exists (select 1 from invoice_data z, truck_sale_invoices y where z.n_id = a.n_id and z.inv_id = y.inv_id and y.truck_sale_id = a.truck_sale_id and y.inv_id <> p_inv_id )
    ;
    delete from truck_sale_distr where TRUCK_SALE_ID = p_id and DIST_IND_ID = p_inv_id;
  else
    delete from truck_sale_data a
      where truck_sale_id = p_id
        and exists (select 1 from truck_sale_distr z, PREP_DIST_VIEW y where z.truck_sale_id = a.truck_sale_id and z.DIST_IND_ID = y.DIST_IND_ID and y.n_id = a.n_id )
    ;
    delete from truck_sale_invoices where TRUCK_SALE_ID = p_id and INV_ID = p_inv_id;
  end if;

  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale_ins_inv', '');
        RAISE_APPLICATION_ERROR (-20909, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Добавляем разносы к продажам с колес
--
PROCEDURE edit_truck_sale_ins_distr
(
  p_id          in number,
  p_inv_id      in number
)
is
begin

  insert into TRUCK_SALE_DISTR(TRUCK_SALE_ID, DIST_IND_ID) values(p_id, p_inv_id);

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale_ins_distr', '');
        RAISE_APPLICATION_ERROR (-20910, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Найдем разнос по идентификатору продаж с коле
--
PROCEDURE get_dist_id
(
  in_truck_sale_id  in number,
  in_dist_id        in out number
)
is
begin
  select count(*) into tmp_cnt from TRUCK_SALE_DISTR where TRUCK_SALE_ID = in_truck_sale_id;

  if tmp_cnt > 0 then
    select DIST_IND_ID into in_dist_id from TRUCK_SALE_DISTR where TRUCK_SALE_ID = in_truck_sale_id and rownum = 1;
  else
    select count(*) into tmp_cnt from distributions_invoices where inv_id in (select inv_id from truck_sale_invoices where TRUCK_SALE_ID = in_truck_sale_id);
    if tmp_cnt > 0 then
      select DIST_IND_ID into in_dist_id from distributions_invoices where inv_id in (select inv_id from truck_sale_invoices where TRUCK_SALE_ID = in_truck_sale_id) and rownum = 1;
    end if;
  end if;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.get_dist_id', '');
        RAISE_APPLICATION_ERROR (-20911, 'Запрос не выполнился. ' || SQLERRM);
end get_dist_id;


END;
/


-- End of DDL Script for Package Body CREATOR.TRUCK_SALE_PKG

