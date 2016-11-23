-- Start of DDL Script for Package Body CREATOR.TRUCK_SALE_PKG
-- Generated 22.11.2016 0:25:41 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE truck_sale_pkg
IS

TYPE ref_cursor is REF CURSOR; -- ���� ����� ����������� ��� ������
tmp_cnt   NUMBER;

--
-- ����� ���������� ������ � �����
--
PROCEDURE get_truck_sale
(
   startDate in date,
   stopDate  in date,
   cursor_   out ref_cursor
);

--
-- ����� ���� ��������
--
function get_list_inv
(
  p_truck_sale_id  in number
) return varchar2;


--
-- ����� ���� ��������
--
function get_list_distr
(
  p_truck_sale_id in number
) return varchar2;


--
-- �������� ������ � �����
--
PROCEDURE del_truck_sale
(
   p_truck_sale_id in number
);


--
-- ��������� ������ � �����
--
PROCEDURE edit_truck_sale
(
  p_id          in out number,
  p_start_date  in date,
  p_stop_date   in date,
  p_comments    in varchar2,
  p_price_coef  in number,
  p_course      in number,
  p_status      in varchar2
);


--
-- ��������� ������� � �������� � �����
--
PROCEDURE edit_truck_sale_ins_inv
(
  p_id          in number,
  p_inv_id      in number
);


--
-- ����� ������ ��� ������ � �����
--
PROCEDURE get_truck_sale_data
(
   truck_sale_id_   in number,
   cursor_          out ref_cursor
);


--
--  ������� ������ �������������� �� ����� �������� � � ������� � �����
--
PROCEDURE get_not_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  ������� ������ � �������
--
PROCEDURE ins_truck_sale_data
(
   p_TRUCK_SALE_ID  IN NUMBER,
   p_N_ID           IN NUMBER,
   p_COEF           IN NUMBER,
   p_price          IN NUMBER
);


--
--  ����������
--
PROCEDURE get_statistic
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
);


--
--  ������ ��� �����
--
PROCEDURE get_data_for_web
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
);


--
-- ������� ������� � �������� � �����
--
PROCEDURE edit_truck_sale_del_inv
(
  p_id          in number,
  p_inv_id      in number
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON truck_sale_pkg TO new_role
/
create public synonym truck_sale_pkg for creator.truck_sale_pkg
/

CREATE OR REPLACE 
PACKAGE BODY truck_sale_pkg
IS

--
-- ����� ���� ��������
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
-- ����� ���� ��������
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
-- ����� ���������� ������ � �����
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
        RAISE_APPLICATION_ERROR (-20900, '������ �� ����������. ' || SQLERRM);
END get_truck_sale;


--
-- �������� ������ � �����
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
        RAISE_APPLICATION_ERROR (-20901, '������ �� ����������. ' || SQLERRM);
END del_truck_sale;


--
-- ��������� ������ � �����
--
PROCEDURE edit_truck_sale
(
  p_id          in out number,
  p_start_date  in date,
  p_stop_date   in date,
  p_comments    in varchar2,
  p_price_coef  in number,
  p_course      in number,
  p_status      in varchar2
)
is
begin

  if p_id = 0 then
    insert into truck_sale(truck_sale_id, start_date, stop_date, comments, price_coef, status, id_office, date_create, user_create, course)
    values(universal_id.nextval, p_start_date, p_stop_date, p_comments, p_price_coef, p_status, const_office, sysdate, user, p_course)
    returning truck_sale_id into p_id;
  end if;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale', '');
        RAISE_APPLICATION_ERROR (-20902, '������ �� ����������. ' || SQLERRM);
end;


--
-- ��������� ������� � �������� � �����
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
        RAISE_APPLICATION_ERROR (-20903, '������ �� ����������. ' || SQLERRM);
end;


--
-- ����� ������ ��� ������ � �����
--
PROCEDURE get_truck_sale_data
(
   truck_sale_id_   in number,
   cursor_          out ref_cursor
)
IS
BEGIN

   open cursor_ for
     select a.UNITS, a.PRICE_PER_UNIT, s.PRICE_COEF, d.price,
            nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as coef_price,
            case when d.n_id > 0 then 1 else 0 end IS_ACTIVE, d.coef as p_coef, d.price as p_price
            , s.truck_sale_id as truck_sale_id
            , n.*
       from
       (
              select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from invoice_data a, truck_sale_invoices b
              where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = truck_sale_id_
              group by a.n_id
       ) a
       inner join truck_sale s on s.truck_sale_id = truck_sale_id_
       inner join nomenclature_mat_view n on n.n_id = a.n_id
       left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
       ;
/*
     select a.UNITS, a.PRICE_PER_UNIT, s.PRICE_COEF, d.price,
            nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as coef_price,
            case when d.n_id > 0 then 1 else 0 end IS_ACTIVE, d.coef as p_coef, d.price as p_price
            , s.truck_sale_id as truck_sale_id
            , n.*
       from truck_sale s
         inner join truck_sale_invoices i on i.truck_sale_id = s.truck_sale_id
         inner join (select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id, a.inv_id from invoice_data a where a.storned_data = 0 group by a.inv_id, a.n_id) a
           on i.inv_id = a.inv_id
         inner join nomenclature_mat_view n on n.n_id = a.n_id
         left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
       where s.truck_sale_id = truck_sale_id_
     ;
*/
/*
     select a.INVOICE_DATA_ID, a.UNITS, a.PRICE_PER_UNIT, s.PRICE_COEF, nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as coef_price,
            case when d.n_id > 0 then 1 else 0 end IS_ACTIVE, d.coef as p_coef, d.price as p_price, n.*
            , s.truck_sale_id as truck_sale_id
       from invoice_data a
         inner join truck_sale s on s.truck_sale_id = truck_sale_id_
         inner join truck_sale_invoices i on i.truck_sale_id = s.truck_sale_id and i.inv_id = a.inv_id
         inner join nomenclature_mat_view n on n.n_id = a.n_id
         left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
     ;
*/
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.get_truck_sale_data', '');
        RAISE_APPLICATION_ERROR (-20904, '������ �� ����������. ' || SQLERRM);
end;



--
--  ������� ������ �������������� �� ����� �������� � � ������� � �����
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
      and a.inv_date > sysdate-60
      and not exists (select 1 from truck_sale_invoices z where z.INV_ID = a.inv_id)
    ORDER BY a.inv_date desc;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_not_loaded_inv', '');
      RAISE_APPLICATION_ERROR (-20416, '������ �� ����������. ' || SQLERRM);

end get_not_loaded_inv;



--
--  ������� ������ � �������
--
PROCEDURE ins_truck_sale_data
(
   p_TRUCK_SALE_ID  IN NUMBER,
   p_N_ID           IN NUMBER,
   p_COEF           IN NUMBER,
   p_price          IN NUMBER
)
IS
BEGIN

  select count(*) into tmp_cnt from truck_sale_data where TRUCK_SALE_ID = p_TRUCK_SALE_ID and N_ID = p_N_ID;
  if tmp_cnt = 0 then
    insert into truck_sale_data values(p_TRUCK_SALE_ID, p_N_ID, p_COEF, p_price);
  else
    update truck_sale_data set COEF = p_COEF, price = p_price where TRUCK_SALE_ID = p_TRUCK_SALE_ID and N_ID = p_N_ID;
  end if;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.ins_truck_sale_data', '');
      RAISE_APPLICATION_ERROR (-20417, '������ �� ����������. ' || SQLERRM);

end ins_truck_sale_data;


--
--  ����������
--
PROCEDURE get_statistic
(
   p_TRUCK_SALE_ID  IN NUMBER,
   cursor_          out ref_cursor
)
IS
BEGIN

   open cursor_ for
     select count(*) as nn, sum(units) as units, round(sum(a.PRICE_PER_UNIT * units * s.course),2) as net_summ, round(sum(nvl(d.price, a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course) * units), 2) as summ
       from (
              select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from invoice_data a, truck_sale_invoices b
              where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
              group by a.n_id
         ) a
         inner join truck_sale s on s.truck_sale_id = p_TRUCK_SALE_ID
         inner join nomenclature_mat_view n on n.n_id = a.n_id
         inner join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
     ;
/*
     select count(*) as nn, sum(units) as units, round(sum(a.PRICE_PER_UNIT * units * s.course),2) as net_summ, round(sum(nvl(d.price, a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course) * units), 2) as summ
       from truck_sale s
         inner join truck_sale_invoices i on i.truck_sale_id = s.truck_sale_id
         inner join (select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id, a.inv_id from invoice_data a where a.storned_data = 0 group by a.inv_id, a.n_id) a
           on i.inv_id = a.inv_id
         inner join nomenclature_mat_view n on n.n_id = a.n_id
         left outer join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id
       where s.truck_sale_id = p_TRUCK_SALE_ID
     ;
*/
/*
     select count(*) as nn, sum(units) as units, round(sum(a.PRICE_PER_UNIT * units * s.course),2) as net_summ, round(sum(nvl(d.price, a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course) * units), 2) as summ
       from invoice_data a
         inner join truck_sale s on s.truck_sale_id = p_TRUCK_SALE_ID
         inner join truck_sale_invoices i on i.truck_sale_id = s.truck_sale_id and i.inv_id = a.inv_id
         inner join truck_sale_data d on d.truck_sale_id = s.truck_sale_id and d.n_id = a.n_id;
*/
EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_statistic', '');
      RAISE_APPLICATION_ERROR (-20418, '������ �� ����������. ' || SQLERRM);

end get_statistic;



--
--  ������ ��� �����
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
           , b.pack as PIECESINPACK
           , b.compiled_name_otdel as product_desc
           , nvl(d.price, round(a.PRICE_PER_UNIT * nvl(d.coef, s.PRICE_COEF) * s.course, 2)) as product_price
           , nvl(a.units,0) as product_qty
           , 0 as product_reserve
           , nvl(b.nom_new,0) as NEW_FLAG
           , 0 as DISCOUNT     -- ������. ������ INT, ��������� �������� 10,20,30 - �.�. �������� ������, ��� ������ ���� - ����� ��� 0
           , 0 as PROFIT       -- �������� �����������. ������: BOOLEAN ��� TINYINT(1), ���������: 0/1, false/true, ��� ������ ���� - ����� ��� 0
           --, nvl(p.BEST_PRICE,0) as BESTPRICE    -- ������ ����. ������: BOOLEAN ��� TINYINT(1), ���������: 0/1, false/true, ��� ������ ���� - ����� ��� 0
           , case when instr(b.remarks, '"!"') > 0 then 1 else null end BESTPRICE
           , nvl(b.nom_start,0) as SEASON_START
           , nvl(b.nom_end,0) as SEASON_END
           , nvl(c.hs_val,'0') as onMarch
           , s.START_DATE as SALE_START
           , s.stop_date as SALE_END
           , s.TRUCK_SALE_ID as INV_ID
       FROM nomenclature_mat_view b
         left outer join nom_specifications c on c.n_id = b.n_id and c.hs_id = const_8march

         inner join (
              select sum(a.UNITS) units, max(a.PRICE_PER_UNIT) as PRICE_PER_UNIT, a.n_id
              from invoice_data a, truck_sale_invoices b
              where a.storned_data = 0 and a.inv_id = b.inv_id and b.truck_sale_id = p_TRUCK_SALE_ID
              group by a.n_id
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
           , 0 as DISCOUNT     -- ������. ������ INT, ��������� �������� 10,20,30 - �.�. �������� ������, ��� ������ ���� - ����� ��� 0
           , 0 as PROFIT       -- �������� �����������. ������: BOOLEAN ��� TINYINT(1), ���������: 0/1, false/true, ��� ������ ���� - ����� ��� 0
           --, nvl(p.BEST_PRICE,0) as BESTPRICE    -- ������ ����. ������: BOOLEAN ��� TINYINT(1), ���������: 0/1, false/true, ��� ������ ���� - ����� ��� 0
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
      RAISE_APPLICATION_ERROR (-20419, '������ �� ����������. ' || SQLERRM);

end get_data_for_web;



--
-- ������� ������� � �������� � �����
--
PROCEDURE edit_truck_sale_del_inv
(
  p_id          in number,
  p_inv_id      in number
)
is
begin

  delete from truck_sale_data a
    where truck_sale_id = p_id
      and exists (select 1 from invoice_data z, truck_sale_invoices y where z.n_id = a.n_id and z.inv_id = y.inv_id and y.truck_sale_id = a.truck_sale_id and y.inv_id = p_inv_id )
      and not exists (select 1 from invoice_data z, truck_sale_invoices y where z.n_id = a.n_id and z.inv_id = y.inv_id and y.truck_sale_id = a.truck_sale_id and y.inv_id <> p_inv_id )
  ;
  delete from truck_sale_invoices where TRUCK_SALE_ID = p_id and INV_ID = p_inv_id;
  commit;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'truck_sale_pkg.edit_truck_sale_ins_inv', '');
        RAISE_APPLICATION_ERROR (-20903, '������ �� ����������. ' || SQLERRM);
end;


END;
/


-- End of DDL Script for Package Body CREATOR.TRUCK_SALE_PKG
