-- Start of DDL Script for Package Body CREATOR.SALES_PKG
-- Generated 24.03.2017 0:28:29 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE sales_pkg
  IS

TYPE ref_cursor is REF CURSOR; -- ���� ����� ����������� ��� ������


/* ******************************** */
/* ����� ��� ������ ��������� SALES */
/* ******************************** */

--
-- ����� ������
--
PROCEDURE get_sklad
(
   store_       in number,
   id_dep_      in number,
   price_part_  in number,
   button_      in number,
   quantity_    in number,
   v_office     in number,
   v_client     in number,
   cursor_      in out ref_cursor
);


--
-- �������� ������
--
PROCEDURE get_store_view
(
   id_dep_      in number,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- ����������, �������������� �������
--
PROCEDURE RESERV_NEW
(
    id_         in out number,
    id_clients_ in number,
    d_date_     in date,
    state_      in number,
    status_     in number,
    id_dep_     in number
);


--
-- ����������, �������������� ������ �� �������
--
PROCEDURE RESERV_DATA
(
    ID_ORDERS_CLIENTS_ in number
);


--
-- �������� ������
--
PROCEDURE get_orders_view
(
   id_dep_      in number,
   status_      in number,
   id_          in number,
   v_office     in number,
   cursor_      out ref_cursor
);


--
-- ����� �����
--
PROCEDURE get_reserv
(
         ID_ORDERS_CLIENTS_ in number,
         ID_DEP_                                                in number,
   cursor_                                              out ref_cursor
);


--
-- ������ �����
--
PROCEDURE remove_reserv
(
    ID_ORDERS_CLIENTS_ in number
);


--
-- �������������� �����
--
PROCEDURE edit_reserv
(
    ID_ORDERS_CLIENTS_ in number
);


--
-- ����� ������
--
PROCEDURE get_sklad_sale
(
   id_dep_      in number,
   price_part_  in number,
   v_office     in number,
   v_client     in number,
   cursor_      in out ref_cursor
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON sales_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY sales_pkg
IS

/* ******************************** */
/* ����� ��� ������ ��������� SALES */
/* ******************************** */

--
-- ����� ������
--
PROCEDURE get_sklad
(
   store_       in number,
   id_dep_      in number,
   price_part_  in number,
   button_      in number,
   quantity_    in number,
   v_office     in number,
   v_client     in number,
   cursor_      in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.spesification,
           a.QUANTITY_NOW, a.store_type_name, a.STORE_TYPE, a.hol_type, a.hol_sub_type, a.price_list,
           a.QUANTITY, a.added, a.id_departments, a.colour, a.country, reserv
           , ( price - price_list ) as price_difference
           , ( price - price_list ) * QUANTITY as sum_price_difference
           , case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part_ / 100),2)) ELSE price END price
           , case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part_ / 100),2)) * QUANTITY ELSE ( QUANTITY * price ) END QUANTITY_PRICE
           , case WHEN a.added = 0 or a.added is null THEN price_part_ ELSE ROUND((100*(price-price_list)/price_list),1) END price_percent
           , TO_NUMBER(0,9) as nbutton, '���' but_name
           , a.our_code, a.is_photo, a.photo, compiled_name_otdel, a.id_office, a.brief, a.notuse
           , v_client as cur_client
           , a.SPEC_PRICE, a.fio
    from (
        select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.spesification,
               a.QUANTITY_NOW, a.store_type_name, a.STORE_TYPE, a.hol_type, a.hol_sub_type,
               CASE WHEN b.price_list is NULL THEN a.price_list else b.price_list end price_list,
               CASE WHEN b.price is NULL THEN a.price_list ELSE b.price END price,
               b.QUANTITY, b.ID_DOC_DATA as added, a.ID_DEPARTMENTS as id_departments, a.colour, a.country, reserv
               , a.our_code, a.is_photo, a.photo, compiled_name_otdel, a.id_office, a.brief, a.notuse
               , a.SPEC_PRICE, a.fio
        from store_doc_data_temp b,
          (
            select a.N_ID, a.F_NAME, a.F_NAME_RU, a.F_TYPE, a.F_SUB_TYPE,
                    CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
                    a.hol_sub_type, a.hol_type, a.LEN, a.PACK, a.COLOUR, a.COL_ID, a.FT_ID, a.FST_ID,
                    a.FN_ID, a.S_ID, a.C_ID, a.H_CODE, a.H_NAME, a.S_NAME_RU, a.COUNTRY, a.ID_DEPARTMENTS,
                    a.RUS_MARKS as spesification, a.great_name_f as full_name
                    , b.QUANTITY as QUANTITY_NOW, b.STORE_TYPE
                    , c.NAME as store_type_name
                    --, CASE WHEN b.STORE_TYPE=1 THEN nvl(s.SPEC_PRICE, p.PRICE) ELSE b.PRICE END price_list
                    , CASE WHEN b.STORE_TYPE=1 THEN p.PRICE ELSE b.PRICE END price_list
                    , reserv
                    , to_char(a.code) as our_code, a.is_photo, a.photo
                    , a.compiled_name_otdel
                    , b.id_office, o.brief, a.notuse
                    , p.SPEC_PRICE
                    , l.fio
            from NOMENCLATURE_MAT_VIEW a,
                 PRICE_LIST p, store_main b, store_type c, offices o, clients l
                 --, ppl_client_price_current s
            where a.ID_DEPARTMENTS = id_dep_
                and a.N_ID = p.N_ID
                and p.PRICE > 0
                and (b.store_type = store_ or store_ = 0)
                and ((b.quantity <> 0 and quantity_ = 0) or (quantity_ = 1 and b.quantity = 0))
                and a.N_ID = b.N_ID
                and b.store_type = c.ID_STORE_TYPE
                and b.id_office = p.id_office
                and b.id_office = o.id_office
                and (b.id_office in (1, v_office) or v_office = 0)
                --and a.n_id = s.n_id(+) and v_client = s.ID_CLIENTS(+)
                and l.id_clients = v_client
        ) a
      where a.N_ID = b.N_ID(+)
            and a.STORE_TYPE = b.STORE_TYPE(+)
    ) a
    order by a.F_TYPE, a.f_sub_type, a.compiled_name_otdel;


EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.get_sklad', '');
       RAISE_APPLICATION_ERROR (-20701, '������ �� ����������. ' || SQLERRM);

END get_sklad;






--
-- ����� ������
--
PROCEDURE get_sklad_sale
(
   id_dep_      in number,
   price_part_  in number,
   v_office     in number,
   v_client     in number,
   cursor_      in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.spesification,
           a.QUANTITY_NOW, a.store_type_name, a.STORE_TYPE, a.hol_type, a.hol_sub_type, a.price_list,
           a.QUANTITY, a.added, a.id_departments, a.colour, a.country, reserv
           , ( price - price_list ) as price_difference
           , ( price - price_list ) * QUANTITY as sum_price_difference
           , case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part_ / 100),2)) ELSE price END price
           , case WHEN a.added = 0 or a.added is null THEN (a.price_list + round((a.price_list*price_part_ / 100),2)) * QUANTITY ELSE ( QUANTITY * price ) END QUANTITY_PRICE
           , case WHEN a.added = 0 or a.added is null THEN price_part_ ELSE ROUND((100*(price-price_list)/price_list),1) END price_percent
           , TO_NUMBER(nbutton,9) as nbutton, '���' but_name, compiled_name_otdel
           , a.our_code, a.is_photo, a.photo
           , a.id_office, a.brief, a.notuse
           , a.SPEC_PRICE, a.fio
           , v_client as cur_client
    from (
        select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.spesification,
               a.QUANTITY_NOW, a.store_type_name, a.STORE_TYPE, a.hol_type, a.hol_sub_type,
               CASE WHEN b.price_list is NULL THEN a.price_list else b.price_list end price_list,
               CASE WHEN b.price is NULL THEN a.price_list ELSE b.price END price,
               b.QUANTITY, b.ID_DOC_DATA as added, a.ID_DEPARTMENTS as id_departments, a.colour, a.country, reserv
               , a.our_code, a.is_photo, a.photo, compiled_name_otdel, nbutton, a.id_office, a.brief, a.notuse
               , a.SPEC_PRICE, a.fio
        from store_doc_data_temp b,
          (
            select a.N_ID, a.F_NAME, a.F_NAME_RU, a.F_TYPE, a.F_SUB_TYPE,
                    CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
                    a.hol_sub_type, a.hol_type, a.LEN, a.PACK, a.COLOUR, a.COL_ID, a.FT_ID, a.FST_ID,
                    a.FN_ID, a.S_ID, a.C_ID, a.H_CODE, a.H_NAME, a.S_NAME_RU, a.COUNTRY, a.ID_DEPARTMENTS,
                    a.RUS_MARKS as spesification, a.great_name_f as full_name
                    , b.QUANTITY as QUANTITY_NOW, b.STORE_TYPE
                    , c.NAME as store_type_name
                    , CASE WHEN b.STORE_TYPE=1 THEN p.PRICE ELSE b.PRICE END price_list
                    , reserv
                    , to_char(a.code) as our_code, a.is_photo, a.photo
                    , 0 as nbutton
                    , a.compiled_name_otdel
                    , b.id_office, o.brief, a.notuse
                    , p.SPEC_PRICE
                    , l.fio
/*
                    , case when id_dep_ = 62 then
                        (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else a.colour||'. ' end) || a.RUS_MARKS)
                      else case when id_dep_ = 61 then (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else a.colour||'. ' end) || a.RUS_MARKS )
                         else (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else a.colour||'. ' end) /*|| a.RUS_MARKS/) end end compiled_name_otdel
*/
            from NOMENCLATURE_MAT_VIEW a,
                 PRICE_LIST p, store_main b, store_type c, offices o --, buttons_set_sale n
                 , clients l
            where a.ID_DEPARTMENTS = id_dep_
                and a.N_ID = p.N_ID
                and p.PRICE > 0
                and a.N_ID = b.N_ID
                and b.store_type = c.ID_STORE_TYPE
                and b.id_office = o.id_office
                and b.id_office = p.id_office
                and (b.id_office in (1, v_office) or v_office = 0)
                and l.id_clients = v_client
                --and a.ft_id = n.ft_id(+)
        ) a
      where a.N_ID = b.N_ID
            and a.STORE_TYPE = b.STORE_TYPE(+)
    ) a
    order by nbutton, compiled_name_otdel;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.get_sklad_sale', '');
       RAISE_APPLICATION_ERROR (-20712, '������ �� ����������. ' || SQLERRM);

END get_sklad_sale;




--
-- �������� ������
--
PROCEDURE get_store_view
(
   id_dep_      in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.N_ID, a.great_name as full_name, a.F_TYPE, a.F_SUB_TYPE
          , CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE
          , a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COUNTRY, b.QUANTITY
          , CASE WHEN b.STORE_TYPE=1 THEN c.PRICE ELSE b.PRICE END price
          , a.FT_ID, a.FST_ID, a.C_ID, a.COL_ID, a.S_ID, a.S_NAME_RU,
           (b.QUANTITY * CASE WHEN b.STORE_TYPE=1 THEN c.PRICE ELSE b.PRICE END) as QUANTITY_PRICE, TO_NUMBER(nbutton,9) as nbutton,
           b.reserv, a.RUS_MARKS as spesification, a.hol_type, a.hol_sub_type
           ,'���' but_name
           , case when b.store_type = 1 then '' else '������' end store_type_name
           , to_char(a.code) as our_code, a.is_photo, a.photo
           , a.compiled_name_otdel, b.id_office, o.brief, a.notuse
           , CASE WHEN b.STORE_TYPE=1 THEN c.PRICE*((100+p.PROC)/100) ELSE b.PRICE*((100+p.PROC)/100) END price_rozn
        FROM NOMENCLATURE_MAT_VIEW a,
          STORE_MAIN b,
          PRICE_LIST c,
          buttons_set_sale n,
          offices o,
          sale_percenet p
        where a.N_ID=b.N_ID
            and c.N_ID = b.N_ID
            and a.id_departments = id_dep_
            and a.ft_id = n.ft_id(+)
            and b.id_office = c.id_office
            and b.id_office = o.id_office
            and (b.id_office in (1, v_office) or v_office = 0)
            and a.id_departments = p.id_departments(+)
                  order by nbutton, compiled_name_otdel;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.get_store_view', '');
       RAISE_APPLICATION_ERROR (-20702, '������ �� ����������. ' || SQLERRM);

end get_store_view;




--
-- ����������, �������������� �������
--
PROCEDURE RESERV_NEW
(
    id_         in out number,
    id_clients_ in number,
    d_date_     in date,
    state_      in number,
    status_     in number,
    id_dep_     in number
)
IS
  id_orders_            integer;
  SP_OPERATOR_NAME      varchar2(100);
  SP_OPERATOR_ID        integer;
BEGIN
    select a.fio, a.id_clients into SP_OPERATOR_NAME, SP_OPERATOR_ID
        from clients a
            where a.login = user and id_office = const_office;

    if state_ = 1 then
        SELECT ID_ORDERS into id_orders_ FROM ORDERS WHERE id_departments = id_dep_ and N_TYPE=1;

        INSERT INTO ORDERS_CLIENTS(ID_ORDERS_CLIENTS,ID_ORDERS,ID_CLIENTS,D_DATE,N_TYPE,STATUS,ON_DATE,active, id_office, id_user)
        VALUES(get_office_unique('ORDERS_CLIENTS_SEQ'), id_orders_, id_clients_, sysdate, 1, status_, d_date_, 1, const_office, SP_OPERATOR_ID)
        returning ID_ORDERS_CLIENTS into id_;
     else
        UPDATE ORDERS_CLIENTS SET ID_CLIENTS=id_clients_, STATUS=status_, ON_DATE=d_date_, D_DATE=sysdate, date_change=sysdate
        WHERE ID_ORDERS_CLIENTS = id_;
     end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.RESERV_NEW', '');
       RAISE_APPLICATION_ERROR (-20703, '������ �� ����������. ' || SQLERRM);
END;  -- RESERV_NEW



--
-- ����������, �������������� ������ �� �������
--
PROCEDURE RESERV_DATA
(
    ID_ORDERS_CLIENTS_ in number
)
IS
  ID  number;
  IDD number;
  NUM_OLD_ number;

  CURSOR data_temp IS
    select a.N_ID, a.QUANTITY, a.QUANTITY_REAL, a.PRICE, nvl(a.PRICE_LIST,p.price) as PRICE_LIST, a.store_type, a.GTD
      from STORE_DOC_DATA_TEMP a
        left outer join price_list p on p.n_id = a.n_id
      where QUANTITY is not NULL
    ;

  CURSOR data_temp2 IS
    SELECT a.N_ID, a.QUANTITY, a.store_type, a.id_orders_list
      FROM ORDERS_LIST a, STORE_DOC_DATA_TEMP b
        WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ AND a.N_ID = b.N_ID(+) and b.id_doc_data is null
    ;

begin

  FOR data_temp_cursor IN data_temp LOOP
    ID  := 0;
    IDD := 0;
    NUM_OLD_ := 0;

    if (data_temp_cursor.QUANTITY is not null) then

      -- �������� ����� ����� �� ������� � ������
      BEGIN
        SELECT ID_ORDERS_LIST INTO ID
            FROM ORDERS_LIST
                WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ AND N_ID = data_temp_cursor.N_ID and store_type = data_temp_cursor.store_type;
      EXCEPTION
        WHEN OTHERS THEN ID := 0;
      END;
--      LOG_ERR('', 1, 'sales_pkg.RESERV_DATA', data_temp_cursor.QUANTITY || ' '|| data_temp_cursor.N_ID);

      if ID > 0
      THEN
--      LOG_ERR('', 2, 'sales_pkg.RESERV_DATA', data_temp_cursor.PRICE||'-'||data_temp_cursor.PRICE_LIST);
        SELECT QUANTITY INTO NUM_OLD_
            FROM ORDERS_LIST
                WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ AND N_ID = data_temp_cursor.N_ID and store_type = data_temp_cursor.store_type;

        -- ���� ������� �� ����������� ���-�� �����
        UPDATE ORDERS_LIST SET QUANTITY = data_temp_cursor.QUANTITY, price = nvl(data_temp_cursor.PRICE,data_temp_cursor.PRICE_LIST), store_type = data_temp_cursor.store_type, date_change=sysdate
        WHERE ID_ORDERS_LIST = ID;

        UPDATE STORE_MAIN SET RESERV = RESERV - NUM_OLD_ + data_temp_cursor.QUANTITY, date_change=sysdate
        WHERE n_id = data_temp_cursor.N_ID and store_type = data_temp_cursor.store_type and id_office = const_office;

      ELSE
--      LOG_ERR('', 3, 'sales_pkg.RESERV_DATA', data_temp_cursor.PRICE||' '||data_temp_cursor.PRICE_LIST);
        -- ��������� ����� �������
        SELECT get_office_unique('ORDERS_LIST_SEQ') INTO idd FROM DUAL;

        INSERT INTO ORDERS_LIST
        VALUES(idd, data_temp_cursor.N_ID, data_temp_cursor.QUANTITY, ID_ORDERS_CLIENTS_, null, null, 1, 0, data_temp_cursor.PRICE, data_temp_cursor.store_type, const_office, sysdate, null, 1, null, 0, 0);

        UPDATE STORE_MAIN SET RESERV = RESERV + data_temp_cursor.QUANTITY, date_change=sysdate
        WHERE n_id = data_temp_cursor.N_ID and store_type = data_temp_cursor.store_type and id_office = const_office;

      END IF; -- N_ID_ > 0

    end if;  -- if (Q_NUM_ is not null) then

  end loop;

/* 2014-02-23 ��������. ���� �� �������, ������ ������ � �������. � ��� ������� ������ ���� */
  FOR data_temp_cursor2 IN data_temp2 LOOP
    UPDATE STORE_MAIN SET RESERV = RESERV - data_temp_cursor2.QUANTITY, date_change=sysdate
    WHERE n_id = data_temp_cursor2.N_ID and store_type = data_temp_cursor2.store_type and id_office = const_office;

    delete from ORDERS_LIST a where a.id_orders_list = data_temp_cursor2.id_orders_list;
  end loop;

  delete from STORE_DOC_DATA_TEMP;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.RESERV_DATA', '');
       RAISE_APPLICATION_ERROR (-20704, '������ �� ����������. ' || SQLERRM);
END;  -- RESERV_DATA



--
-- �������� ������
--
PROCEDURE get_orders_view
(
   id_dep_      in number,
   status_      in number,
   id_          in number,
   v_office     in number,
   cursor_      out ref_cursor
)
IS
BEGIN

  open cursor_ for
  select rownum as nn, a.* from (
    SELECT R.ID_ORDERS_CLIENTS, R.ID_ORDERS_CLIENTS as ID_ORDERS_CLIENTS_, R.ID_ORDERS, R.ID_CLIENTS, R.D_DATE, R.ON_DATE, R.STATUS, R.N_TYPE,
        case when R.N_TYPE=0 then '������' when R.N_TYPE=1 then '�����' end as N_TYPE_NAME,
        r.ID_USER, rcl.FIO as ins_fio, r.info,
        C.NICK, C.FIO,
        case when R.STATUS=0 then '�����' when R.STATUS=1 then '������' when R.STATUS=2 then '�������' when R.STATUS=10 then '��������' end as STATUS_NAME
        , ( select sum(l.quantity) from ORDERS_LIST L where l.active=1 and r.id_orders_clients=l.id_orders_clients ) as kol
        , ( select sum(l.quantity*l.price) from ORDERS_LIST L where l.active=1 and r.id_orders_clients=l.id_orders_clients ) as price_all
        , o.id_office, s.brief
        , nvl(s.outer_id, o.id_orders) as order_seq
        , nvl((select max(pack_) from orders_list l where l.id_orders_clients = r.id_orders_clients ), 0) as pack_
    FROM ORDERS_CLIENTS R
      inner join ORDERS O on o.id_orders = r.id_orders and o.id_departments = id_dep_ AND O.N_TYPE=1 and (o.id_office = v_office or v_office = 0)
      inner join CLIENTS C on C.ID_CLIENTS = R.ID_CLIENTS
      inner join offices s on s.id_office = o.id_office
      left outer join CLIENTS rcl on rcl.ID_CLIENTS = r.id_user
      left outer join numeration_seq s on s.obj_id = o.id_orders and s.entity = 'order'
    WHERE  (r.id_orders_clients = id_ or id_ = 0)
      AND R.STATUS < status_
      AND R.ACTIVE=1
      and ((R.STATUS = 10 and R.ON_DATE > sysdate-30) or R.STATUS < 10)
    ORDER BY R.STATUS, R.ON_DATE
  ) a;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.get_orders_view', '');
       RAISE_APPLICATION_ERROR (-20705, '������ �� ����������. ' || SQLERRM);
END;  -- get_orders_view


--
-- ����� �����
--
 PROCEDURE get_reserv
(
    ID_ORDERS_CLIENTS_ in number,
    ID_DEP_            in number,
    cursor_            out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT b.store_type, s.id_departments, a.full_name, a.f_name, a.f_name_ru, a.f_type, a.f_sub_type,
           CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
           a.len, a.pack, a.colour, a.col_id, a.ft_id, a.fst_id, a.fn_id, a.s_id, a.c_id, a.h_code,
           a.h_name, a.s_name_ru, a.country, a.n_id, nvl(s.price,l.price) as price_list, s.reserv, ( nvl(s.quantity,0) - nvl(s.reserv,0) ) as itogo,
           b.ID_ORDERS_LIST, b.QUANTITY, b.QUANTITY * b.price as quantity_price, ID_ORDERS_CLIENTS_ as ID_ORDERS_CLIENTS, b.price
           , case when nvl(s.price,l.price) is null then 0 else ROUND((100*(b.price - nvl(nvl(s.price,l.price),0) )/ nvl(nvl(s.price,l.price),0) ),0) end as price_percent
           , a.RUS_MARKS as spesification
           , c.name as store_type_name
           , a.compiled_name_otdel
           , to_char(a.CODE) as our_code
           , s.QUANTITY as store
           , a.notuse
           , b.PACK_
    FROM nomenclature_mat_view a
      inner join
          (
             select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type, oco.PACK_
              from ORDERS_LIST OCO
              where oco.active = 1
                AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_
          ) b on b.n_id = a.n_id
      left outer join store_main s on s.n_id = a.n_id and s.STORE_TYPE = b.store_type
      left outer join store_type c on c.ID_STORE_TYPE = s.store_type
      left outer join price_list l on l.n_id = a.n_id
    WHERE /*Filter*/ 1=1
            and a.id_departments = id_dep_
          ORDER BY a.compiled_name_otdel;

/*
    SELECT b.store_type, a.id_departments, a.full_name, a.f_name, a.f_name_ru, a.f_type, a.f_sub_type,
           a.code, a.len, a.pack, a.colour, a.col_id, a.ft_id, a.fst_id, a.fn_id, a.s_id, a.c_id, a.h_code,
           a.h_name, a.s_name_ru, a.country, a.n_id, a.price as price_list, a.reserv, (a.quantity-a.reserv) as itogo,
           b.ID_ORDERS_LIST, b.QUANTITY, b.QUANTITY * b.price as quantity_price, ID_ORDERS_CLIENTS_ as ID_ORDERS_CLIENTS, b.price
           , ROUND((100*(b.price-a.price)/a.price),0) as price_percent
           , spesification
           , c.name as store_type_name
           , a.compiled_name_otdel
           , a.our_code
           , a.QUANTITY as store
           , a.notuse
    FROM store_view_null a, store_type c,
        (
           select OCO.ID_ORDERS_LIST,     OCO.QUANTITY,   OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active, oco.price, oco.store_type
            from ORDERS_LIST OCO
            where oco.active = 1    AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_
        ) b
    WHERE /Filter/ 1=1
            and a.id_departments = id_dep_
            and a.n_id = b.n_id
            and b.store_type = c.ID_STORE_TYPE
            and a.store_type = b.store_type
    ORDER BY a.compiled_name_otdel; -- a.F_TYPE, a.F_SUB_TYPE, a.F_NAME_RU;
*/

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.get_reserv', '');
       RAISE_APPLICATION_ERROR (-20706, '������ �� ����������. ' || SQLERRM);

end;  -- get_reserv



--
-- ������ �����
--
PROCEDURE remove_reserv
(
    ID_ORDERS_CLIENTS_ in number
)
IS
  CURSOR data_temp IS
        SELECT a.N_ID, a.quantity
            FROM ORDERS_LIST a
                WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;
begin

  FOR data_temp_cursor IN data_temp LOOP
        UPDATE STORE_MAIN SET RESERV = RESERV - data_temp_cursor.QUANTITY, date_change = sysdate
        WHERE n_id = data_temp_cursor.N_ID and id_office = const_office;
  end loop;

  delete from ORDERS_LIST WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;
  delete from ORDERS_CLIENTS WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;
  commit;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.remove_reserv', '');
       RAISE_APPLICATION_ERROR (-20708, '������ �� ����������. ' || SQLERRM);

end remove_reserv;


--
-- �������������� �����
--
PROCEDURE edit_reserv
(
    ID_ORDERS_CLIENTS_ in number
)
IS
begin

  insert into STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, price, price_list)
  ( select STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, o.n_id, o.QUANTITY, o.store_type, o.price, p.price
      from ORDERS_LIST o, price_list p
      where o.ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ and o.active = 1 and o.n_id = p.n_id(+) );

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'SALES_PKG.edit_reserv', '');
       RAISE_APPLICATION_ERROR (-20709, '������ �� ����������. ' || SQLERRM);

end edit_reserv;


END;
/


-- End of DDL Script for Package Body CREATOR.SALES_PKG

