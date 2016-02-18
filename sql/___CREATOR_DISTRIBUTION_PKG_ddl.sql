-- Start of DDL Script for Package Body CREATOR.DISTRIBUTION_PKG
-- Generated 29.03.2015 21:54:25 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE BODY distribution_pkg
IS

--
-- ����� ���� ��������
--
function get_list_inv
(
         IN_DIST_IND_ID  in number
) return varchar2
is

  cursor s_ is
    select INV_ID FROM DISTRIBUTIONS_INVOICES
      WHERE DIST_IND_ID = IN_DIST_IND_ID;

  str_ varchar2(100);
  id_  varchar2(10);
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
-- ����� ���������� �������������
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
        SELECT a.dist_ind_id, a.description, a.dist_date, a.ready, b.date_truck_out, a.id_orders, get_list_inv(dist_ind_id) as str_inv
               , nvl(s.outer_id, a.dist_ind_id) as distrib_seq
                FROM DISTRIBUTIONS_INDEX a
                  left outer join orders b on b.id_orders = a.id_orders
                  left outer join numeration_seq s on s.obj_id = a.dist_ind_id and s.entity = 'distribution'
                WHERE a.ID_DEPARTMENTS = id_dep_
                  and a.DIST_DATE between startDate and stopDate
                ORDER BY a.dist_ind_id DESC;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_distr_index', '');
        RAISE_APPLICATION_ERROR (-20500, '������ �� ����������. ' || SQLERRM);
END get_distr_index;


--
-- ����� ���������� �������������
--
 PROCEDURE get_prep_distr
(
   DIST_IND_ID_  in number,
   vClient       in number,
   cursor_       out ref_cursor
)
IS
   vOrders number;
BEGIN
   begin
       select ID_ORDERS into vOrders from DISTRIBUTIONS_INDEX where DIST_IND_ID = DIST_IND_ID_;
   exception when no_data_found then
       vOrders := 0;
   end;

   open cursor_ for
        select z.*
               , case when z.INVOICE_DATA_ID is null or z.nn > 1 then 0 else nvl(z.qq1,0) end stock
               , case when z.INVOICE_DATA_ID is null or z.nn > 1 then 0 else nvl(z.qq2,0) end allorder
               , TOTAL_QUANTITY || ' / ' || LEFT_QUANTITY as saldo
               , 0 as editable
        from (
            SELECT row_number() over(PARTITION by a.n_id order by a.INVOICE_DATA_ID) as nn,
                    a.PREP_DIST_ID, a.DIST_IND_ID, a.N_ID, a.INVOICE_DATA_ID, a.ID_STORE_MAIN, a.TOTAL_QUANTITY,
                    a.LEFT_QUANTITY, a.COMPILED_NAME, a.compiled_name_otdel||' '||a.colour as compiled_name_otdel, a.ft_id, a.fst_id, a.f_type,
                    DECODE(a.INVOICE_DATA_ID, NULL, '����', '������') AS WHERE_FLOWER_IS
                    , nvl(b.nbutton,0) as nbutton, a.hol_sub_type , a.F_NAME_RU
                    --, case when a.INVOICE_DATA_ID is null then 0 else nvl(o.qq,0) end stock
                    --, case when a.INVOICE_DATA_ID is null then 0 else nvl(oa.qq,0) end allorder
                    , nvl(b.nbutton,0) || ': ' || a.hol_type as hol_type, vOrders as OrderID
                    ,o.qq as qq1, oa.qq as qq2
                FROM PREP_DIST_VIEW a, buttons_set b
                    , (select sum(ol.QUANTITY) as qq, ol.n_id
                        from orders_list ol, orders_clients oc
                        where ol.ID_ORDERS_CLIENTS = oc.ID_ORDERS_CLIENTS and oc.ID_ORDERS = vOrders and oc.ID_CLIENTS = vClient and ol.active=1 and oc.active=1
                        group by ol.n_id
                      ) o
                    , (select sum(ol.QUANTITY) as qq, ol.n_id
                        from orders_list ol, orders_clients oc
                        where ol.ID_ORDERS_CLIENTS = oc.ID_ORDERS_CLIENTS and oc.ID_ORDERS = vOrders and ol.active=1 and oc.active=1
                        group by ol.n_id
                      ) oa
                WHERE a.DIST_IND_ID = DIST_IND_ID_
                    and a.n_id = o.n_id(+)
                    and a.n_id = oa.n_id(+)
                    and a.fst_id =  b.fst_id(+)
                order by a.compiled_name_otdel||' '||a.colour
        ) z;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_prep_distr', '');
        RAISE_APPLICATION_ERROR (-20501, '������ �� ����������. ' || SQLERRM);
END get_prep_distr;


--
-- ������� �������������
--
PROCEDURE CREATE_DISTRIBUTION_INDEX
(
  IN_DIST_DATE                  in DATE,
  IN_DIST_COMMENT               in VARCHAR2,
  IN_ID_DEPARTMENTS     in NUMBER
  , IN_DIST_ID          in out NUMBER
)
is
  NEW_DIST_IND_ID NUMBER;
begin

  SELECT DIST_IND_ID.NEXTVAL
     INTO IN_DIST_ID
     FROM DUAL;

  INSERT INTO DISTRIBUTIONS_INDEX (DIST_IND_ID,DESCRIPTION,DIST_DATE,ID_DEPARTMENTS)
                            VALUES(IN_DIST_ID,IN_DIST_COMMENT,IN_DIST_DATE,IN_ID_DEPARTMENTS);
  insert into numeration_seq values(IN_DIST_ID, 'distribution', case when IN_ID_DEPARTMENTS = 121 then year_distrib_seq_121.nextval when IN_ID_DEPARTMENTS = 62 then year_distrib_seq_62.nextval when IN_ID_DEPARTMENTS = 61 then year_distrib_seq_61.nextval else null end );
  COMMIT;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIBUTION_INDEX', '');
        RAISE_APPLICATION_ERROR (-20502, '������ �� ����������. ' || SQLERRM);
end CREATE_DISTRIBUTION_INDEX;


--
-- �������� �������������
--
PROCEDURE EDIT_DISTRIBUTION_INDEX
(
  IN_DIST_IND_ID                in NUMBER,
  IN_DIST_DATE                  in DATE,
  IN_DIST_COMMENT           in VARCHAR2
)
is
begin

    UPDATE DISTRIBUTIONS_INDEX SET
      DESCRIPTION = IN_DIST_COMMENT,
      DIST_DATE=IN_DIST_DATE
    WHERE DIST_IND_ID = IN_DIST_IND_ID;

    COMMIT;

  EXCEPTION
    WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.EDIT_DISTRIBUTION_INDEX', '');
        RAISE_APPLICATION_ERROR (-20503, '������ �� ����������. ' || SQLERRM);
end EDIT_DISTRIBUTION_INDEX;


--
--  ������� �������������
--
PROCEDURE DELETE_DISTRIBUTION_INDEX
(
  IN_DIST_IND_ID IN NUMBER
)
IS
begin

  DELETE FROM distributions_invoices WHERE DIST_IND_ID = IN_DIST_IND_ID;
  DELETE FROM DISTRIBUTIONS_INDEX WHERE DIST_IND_ID = IN_DIST_IND_ID;
  delete from numeration_seq where obj_id = IN_DIST_IND_ID and entity = 'distribution';
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.DELETE_DISTRIBUTION_INDEX', '');
        RAISE_APPLICATION_ERROR (-20504, '������ �� ����������. ' || SQLERRM);
end DELETE_DISTRIBUTION_INDEX;


--
--  ���������� ����� � �������������
--
PROCEDURE SET_ORDER_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 IN_ID_ORDERS   IN NUMBER
)
IS
BEGIN
  UPDATE DISTRIBUTIONS_INDEX             --������ ����� ������ � �������������
     SET ID_ORDERS = IN_ID_ORDERS
   WHERE DIST_IND_ID = IN_DIST_IND_ID;

  DELETE FROM DISTRIBUTIONS              --������� ��� ������������� ����� ����� ������.
        WHERE (DIST_IND_ID = IN_DIST_IND_ID);

  UPDATE PREPARE_DISTRIBUTION            --������ ������� ������� ��������� �����.
     SET LEFT_QUANTITY = TOTAL_QUANTITY
   WHERE DIST_IND_ID = IN_DIST_IND_ID;

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.SET_ORDER_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20505, '������ �� ����������. ' || SQLERRM);
END SET_ORDER_TO_DISTRIBUTION;



--
-- ����� �������� � ������
--
PROCEDURE get_order_list
(
    id_order_    in number,
    cursor_      out ref_cursor
)
IS
BEGIN
    open cursor_ for
                SELECT a.ID_ORDERS_CLIENTS, a.ID_ORDERS, a.ID_CLIENTS, a.N_TRUCK, a.CAPACITY, a.D_DATE, a.pack_, a.alpha,
                   a.N_TYPE, a.STATUS, a.ON_DATE, b.NICK || ' ' || a.alpha as NICK, b.FIO, a.id_orders_clients as id_orders_clients_
            FROM ORDERS_CLIENTS a, CLIENTS b
                WHERE a.id_orders = id_order_
                      and a.active = 1 and a.ID_CLIENTS = b.ID_CLIENTS;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_order_list', '');
        RAISE_APPLICATION_ERROR (-20506, '������ �� ����������. ' || SQLERRM);
end get_order_list;


--
-- ����� ������� �� ���� ������
--
PROCEDURE get_goods
(
    DIST_IND_ID_  in number,
    id_order_     in number,
    vClient       in number,
    cursor_       out ref_cursor
)
IS
BEGIN
    open cursor_ for
         SELECT DIST_IND_ID_ as DIST_IND_ID, a.N_ID, a.N_ID as n_id_,
            sum(a.QUANTITY) as QUANTITY,
            sum(case when b.ID_CLIENTS = vClient then a.QUANTITY else 0 end) qq,
            a.COMPILED_NAME, a.compiled_name_otdel||' '||a.colour as compiled_name_otdel, a.F_NAME_RU, a.ft_id,
            a.zatirka, a.ord || ': ' || a.hol_type as hol_type, a.f_sub_type, a.f_type

            , nvl(z.DISTRIBUTED_NUMBER,0) as DISTRIBUTED_NUMBER
            , WHERE_FLOWER_IS
            /*
            (select nvl(SUM(c.DQ),0) from DISTRIBUTION_VIEW c where c.DIST_IND_ID=DIST_IND_ID_ and a.n_id=c.o_n_id
            ) as DISTRIBUTED_NUMBER,

            (select case when SUM(c.DQ) is null then null else
                    case when max(c.INVOICE_DATA_ID) is NULL then '����' else '������'end end
             from DISTRIBUTION_VIEW c where c.DIST_IND_ID=DIST_IND_ID_ and a.n_id=c.o_n_id --group by INVOICE_DATA_ID
            ) as WHERE_FLOWER_IS
            */
            , 0 as nbutton

         FROM ORDERS_LIST_VIEW a, orders_clients b --, buttons_set c
              , (select nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER, o_n_id
                        , case when SUM(c.DQ) is null then null else case when max(c.INVOICE_DATA_ID) is NULL then '����' else '������'end end as WHERE_FLOWER_IS
                    from DISTRIBUTION_VIEW c where c.DIST_IND_ID=DIST_IND_ID_ group by c.o_n_id ) z
         where a.id_orders_clients = b.id_orders_clients
              and b.id_orders = id_order_
              and b.active=1
              --and a.fst_id = c.fst_id(+)
              and a.n_id=z.o_n_id(+)

         group by a.N_ID, a.COMPILED_NAME, compiled_name_otdel, a.colour, a.zatirka,
                a.ord, a.hol_type, a.f_sub_type, a.f_type, /*c.nbutton,*/ a.F_NAME_RU, a.ft_id, z.DISTRIBUTED_NUMBER, z.WHERE_FLOWER_IS
                 --, c.dist_ind_id
         order by /*a.ord,*/ a.compiled_name_otdel||' '||a.colour;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_goods', '');
        RAISE_APPLICATION_ERROR (-20513, '������ �� ����������. ' || SQLERRM);
end get_goods;


--
-- ������ ���� � �������������
--
PROCEDURE LOAD_STOCK_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 id_ft_         in number,
 id_dep_        in number
)
is
begin
  if id_ft_ = 0 then
    DELETE FROM PREPARE_DISTRIBUTION
      WHERE DIST_IND_ID = IN_DIST_IND_ID AND ID_STORE_MAIN IS NOT NULL;
  end if;

  INSERT INTO PREPARE_DISTRIBUTION (
    SELECT
      IN_DIST_IND_ID DIST_IND_ID,
      a.N_ID,
      NULL INVOICE_DATA_ID,
      a.ID_STORE_MAIN,
      a.QUANTITY TOTAL_QUANTITY,
      a.QUANTITY LEFT_QUANTITY,
      PREP_DIST_ID.nextval PREP_DIST_ID
    FROM STORE_MAIN a, nomenclature_mat_view b
    where a.id_departments = id_dep_
      and a.n_id = b.n_id
      and (b.ft_id = id_ft_ or id_ft_ = 0)
  );

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.LOAD_STOCK_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20507, '������ �� ����������. ' || SQLERRM);
end;


--
-- ��������� ���� �� �������������
--
PROCEDURE UNLOAD_STOCK_FROM_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER
)
is
begin
  DELETE FROM PREPARE_DISTRIBUTION
  WHERE DIST_IND_ID = IN_DIST_IND_ID AND ID_STORE_MAIN IS NOT NULL and TOTAL_QUANTITY = LEFT_QUANTITY;
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.UNLOAD_STOCK_FROM_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20507, '������ �� ����������. ' || SQLERRM);
end;


--
-- ������ ������ � �������������
--
PROCEDURE LOAD_INVOICE_TO_DISTRIBUTION
(
  IN_DIST_IND_ID IN NUMBER,
  IN_INV_ID      IN NUMBER
)
is
begin

  DELETE FROM DISTRIBUTIONS_INVOICES
    WHERE DIST_IND_ID = IN_DIST_IND_ID AND INV_ID = IN_INV_ID;

  INSERT INTO DISTRIBUTIONS_INVOICES (DIST_IND_ID,INV_ID)
    VALUES (IN_DIST_IND_ID,IN_INV_ID);

  DELETE FROM PREPARE_DISTRIBUTION
  WHERE DIST_IND_ID = IN_DIST_IND_ID AND
    INVOICE_DATA_ID IN (SELECT INVOICE_DATA_ID FROM INVOICE_DATA WHERE INV_ID = IN_INV_ID);

  INSERT INTO PREPARE_DISTRIBUTION (
    select a.DIST_IND_ID, a.N_ID, a.INVOICE_DATA_ID, a.ID_STORE_MAIN, a.TOTAL_QUANTITY, a.LEFT_QUANTITY, PREP_DIST_ID.nextval PREP_DIST_ID
    from (
      SELECT IN_DIST_IND_ID as DIST_IND_ID, N_ID, max(INVOICE_DATA_ID) as INVOICE_DATA_ID, NULL ID_STORE_MAIN, sum(UNITS) TOTAL_QUANTITY, sum(UNITS) LEFT_QUANTITY
      FROM INVOICE_DATA
      WHERE INV_ID = IN_INV_ID and storned_data <> 1
      group by n_id
    ) a
/*
    SELECT IN_DIST_IND_ID DIST_IND_ID, N_ID, INVOICE_DATA_ID, NULL ID_STORE_MAIN, UNITS TOTAL_QUANTITY,
      UNITS LEFT_QUANTITY, PREP_DIST_ID.nextval PREP_DIST_ID
    FROM INVOICE_DATA
    WHERE INV_ID = IN_INV_ID
*/
  );

  INSERT INTO PREPARE_DISTRIBUTION_TREE (
    select d.PREP_DIST_ID, a.invoice_data_id, a.units, convert_client(a.TO_CLIENT) from PREPARE_DISTRIBUTION d, invoice_data a, invoice_data b
    where d.dist_ind_id = IN_DIST_IND_ID and a.inv_id = b.inv_id and a.n_id = b.n_id and b.invoice_data_id = d.invoice_data_id and a.storned_data <> 1 and a.to_client is not null and a.to_client <> 'MAIN 1'
  );

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.LOAD_INVOICE_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20508, '������ �� ����������. ' || SQLERRM);
end;


function convert_client
(
  in_to_client  in varchar2
) RETURN number
is
  v_id_client number;
  cnt number;
BEGIN
  v_id_client := NULL;
  cnt := 0;

--LOG_ERR('����� �������', 1, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client);

  SELECT count(*) into cnt
  FROM clients a
  where instr(in_to_client, a.nick) > 0 and rownum = 1;
--LOG_ERR('����� �������', 2, 'distribution_pkg.convert_client', 'cnt='||cnt);

  if cnt > 0 then
    SELECT a.id_clients into v_id_client
    FROM clients a
    where instr(in_to_client, a.nick) > 0 and rownum = 1;
--LOG_ERR('����� �������', 31, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client);
  else
    SELECT count(*) into cnt
    FROM old_client_map a
    where instr(a.old_client, in_to_client) > 0 and rownum = 1;
--LOG_ERR('����� �������', 32, 'distribution_pkg.convert_client', 'cnt='||cnt);

    if cnt > 0 then
      SELECT a.id_client into v_id_client
      FROM old_client_map a
      where instr(in_to_client, a.old_client) > 0 and rownum = 1;
--LOG_ERR('����� �������', 33, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client);
    end if;
  end if;

  return v_id_client;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.convert_client', '');
        RAISE_APPLICATION_ERROR (-20508, '������ �� ����������. ' || SQLERRM);
end convert_client;


--
--  �������������� ��������
--
PROCEDURE PROCEED_AUTOMATIC_DISTRIBUTION
(
 IN_DIST_IND_ID     IN NUMBER,
 OUT_TEXT           OUT VARCHAR2,
 inStok             in number,
 in_is_pack         in number
)
IS
  RET_CODE        NUMBER;
  ID_ORDERS_I     NUMBER;                      --ID ������
  ROW_COUNT       NUMBER;
  ORDER_ID_NULL   EXCEPTION;

  cursor sel_invoices_pack is
    select d.PREP_DIST_ID, b.n_id, b.units, b.invoice_data_id
    from PREPARE_DISTRIBUTION d, PREPARE_DISTRIBUTION_TREE a, invoice_data b
    where d.dist_ind_id = IN_DIST_IND_ID and d.PREP_DIST_ID = a.PREP_DIST_ID and a.invoice_data_id = b.invoice_data_id and b.storned_data = 0 and instr(b.TO_CLIENT,'_',-1) > 0
    ;
  SIP_REC sel_invoices_pack%ROWTYPE;

  CURSOR SEL_ORDER_LIST (ID_ORD NUMBER) IS --������ ��� ������� ������
    SELECT a.ID_ORDERS_LIST, a.N_ID, a.QUANTITY, a.ID_ORDERS_CLIENTS, a.TRUCK, a.WEIGHT
    FROM ORDERS_LIST_VIEW a, ORDERS_CLIENTS b
    where b.id_orders = ID_ORD
        and b.id_orders_clients = a.id_orders_clients
        and b.active = 1
        --and b.pack_ = 0
    order by decode(b.id_clients,inStok,99,1), decode(b.ID_CLIENTS,const_dir,98,const_main,99,1)
    ;
  SOL_REC SEL_ORDER_LIST%ROWTYPE;

  CURSOR SEL_PREP_DIST (N_ID_I NUMBER) IS --������ ��� �������������� ������
    SELECT p.PREP_DIST_ID, p.DIST_IND_ID, p.N_ID, p.INVOICE_DATA_ID, p.ID_STORE_MAIN, p.TOTAL_QUANTITY, p.LEFT_QUANTITY
    FROM PREP_DIST_VIEW p
        WHERE  p.DIST_IND_ID = IN_DIST_IND_ID
            AND p.LEFT_QUANTITY > 0
            AND p.N_ID = N_ID_I
         ORDER BY p.INVOICE_DATA_ID, p.ID_STORE_MAIN;

  SPD_REC SEL_PREP_DIST%ROWTYPE;

begin
  OUT_TEXT := '';

--��������----------------------------------------------------------------------
  BEGIN
      SELECT ID_ORDERS INTO ID_ORDERS_I FROM DISTRIBUTIONS_INDEX WHERE DIST_IND_ID = IN_DIST_IND_ID;

      IF ID_ORDERS_I IS NULL THEN
        RAISE ORDER_ID_NULL;
      END IF;
  EXCEPTION
      WHEN ORDER_ID_NULL THEN
        OUT_TEXT := '� ������������� �� �������� �����!';
        GOTO LAST_STEP;
      WHEN OTHERS THEN
        OUT_TEXT := '������� ������������� ��������������� �������������!';
        GOTO LAST_STEP;
  END;

  SELECT COUNT(*) INTO ROW_COUNT FROM ORDERS_LIST_VIEW a, ORDERS_CLIENTS b WHERE b.id_orders = ID_ORDERS_I and a.id_orders_clients = b.id_orders_clients;
  IF ROW_COUNT = 0 THEN
    OUT_TEXT := '� ������ ��� �� ����� �������!';
    GOTO LAST_STEP;
  END IF;

  SELECT COUNT(*) INTO ROW_COUNT FROM PREP_DIST_VIEW WHERE DIST_IND_ID = IN_DIST_IND_ID;
  IF ROW_COUNT = 0 THEN
--    RET_CODE := -1;
    OUT_TEXT := '� ������������� ��� ������� ��� �������������!';
    GOTO LAST_STEP;
  END IF;
--------------------------------------------------------------------------------

/* �������� ����� �� �������. ���� �� �����. ����� �������
  OPEN sel_invoices_pack;
  LOOP
    FETCH sel_invoices_pack INTO SIP_REC;

    IF sel_invoices_pack%NOTFOUND THEN
      EXIT;
    END IF;

    -- ������� ��������
    CREATE_DISTRIB_LINE_BY_INV(SIP_REC.PREP_DIST_ID, SIP_REC.n_id, SIP_REC.units, SIP_REC.invoice_data_id);
  END LOOP;
  CLOSE sel_invoices_pack;
*/


  OPEN SEL_ORDER_LIST(ID_ORDERS_I);
  LOOP
    FETCH SEL_ORDER_LIST INTO SOL_REC;

    IF SEL_ORDER_LIST%NOTFOUND THEN    -- ������ �� � ������ ������
      EXIT;
    END IF;
/*
    if SOL_REC.N_ID = 10039163 then
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', 'ID_ORDERS_LIST='||SOL_REC.ID_ORDERS_LIST||' ID_ORDERS_CLIENTS='||SOL_REC.ID_ORDERS_CLIENTS||' QUANTITY='||SOL_REC.QUANTITY||' INVOICE_DATA_ID='||SPD_REC.INVOICE_DATA_ID);
    end if;
*/
    OPEN SEL_PREP_DIST(SOL_REC.N_ID);
    LOOP
      FETCH SEL_PREP_DIST INTO SPD_REC;

      IF SEL_PREP_DIST%NOTFOUND THEN    -- ��� ����� ������������ ��� �������������.
        EXIT;
      END IF;

      -- ������� ��������
      CREATE_DISTRIBUTION_LINE(SPD_REC.PREP_DIST_ID, SOL_REC.ID_ORDERS_LIST, in_is_pack);

    END LOOP;
    CLOSE SEL_PREP_DIST;
  END LOOP;
  CLOSE SEL_ORDER_LIST;

  OUT_TEXT := '�������� ������ �������.';
  commit;

  <<LAST_STEP>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20509, '������ �� ����������. ' || SQLERRM);
end PROCEED_AUTOMATIC_DISTRIBUTION;



--
--  ��������� ������ � �������� �� ������������
--
PROCEDURE CREATE_DISTRIB_LINE_BY_INV
(
  IN_PREP_DIST_ID     IN NUMBER,
  IN_n_id             IN NUMBER,
  in_units            in number,
  in_invoice_data_id  in number
)
IS
  DIST_IND_ID_PR NUMBER;
  QUA_PR        NUMBER;
  N_ID_PR       NUMBER;

  NEXT_DIST_ID  NUMBER;

--  QUA_ORD       NUMBER;
--  QUA_DIST      NUMBER;
--  QUA           NUMBER;
--  vPack         number;
--  maxPack       number;
BEGIN

  SELECT DIST_ID.NextVal INTO NEXT_DIST_ID FROM DUAL;

  SELECT DIST_IND_ID,LEFT_QUANTITY,N_ID INTO DIST_IND_ID_PR,QUA_PR,N_ID_PR
    FROM PREPARE_DISTRIBUTION
                 WHERE PREP_DIST_ID = IN_PREP_DIST_ID;

--  SELECT QUANTITY INTO QUA_ORD
--    FROM ORDERS_LIST_VIEW
--                 WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;


if QUA_PR >= in_units then



/*
  SELECT SUM(QUANTITY) INTO QUA_DIST
    FROM DISTRIBUTIONS
    WHERE PREP_DIST_ID = IN_ID_ORDERS_LIST;

  IF QUA_DIST is null THEN QUA_DIST := 0; END IF;

  IF QUA_DIST >= QUA_ORD
    THEN GOTO THE_END;
  END IF;

  IF QUA_ORD - QUA_DIST > QUA_PR
    THEN QUA := QUA_PR;
    ELSE QUA := QUA_ORD - QUA_DIST;
  END IF;
*/
/*
if in_n_id = 10039948 then
  LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIB_LINE_BY_INV', 'in_n_id = 10039948, N_ID_PR='||N_ID_PR||' in_units='||in_units);
end if;
*/
  INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST)
         VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, in_units, IN_PREP_DIST_ID, null);

  UPDATE PREPARE_DISTRIBUTION
    SET LEFT_QUANTITY = LEFT_QUANTITY - in_units
                WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
end if;

--  <<THE_END>>
--  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIB_LINE_BY_INV', '');
        RAISE_APPLICATION_ERROR (-20512, '������ �� ����������. ' || SQLERRM);
END CREATE_DISTRIB_LINE_BY_INV;


--
-- ��������� ������ � �������� �������
--
PROCEDURE CREATE_CUSTOM_DIST_LINE2
(
  IN_PREP_DIST_ID   IN NUMBER,
  IN_ID_ORDERS_LIST IN NUMBER,
  IN_QUANTITY       IN NUMBER,
  IN_DIST_ID        IN NUMBER
)
IS
  NEXT_DIST_ID    NUMBER;
  DIST_IND_ID_PR  NUMBER;
  QUA_PR          NUMBER;
  N_ID_PR         NUMBER;
  cnt             number;
begin

  SELECT DIST_IND_ID, LEFT_QUANTITY, N_ID INTO DIST_IND_ID_PR, QUA_PR, N_ID_PR
      FROM PREPARE_DISTRIBUTION
                 WHERE PREP_DIST_ID = IN_PREP_DIST_ID;

--  LOG_ERR('QUA_PR='||QUA_PR||' IN_QUANTITY='||IN_QUANTITY, 0, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', '');
  if QUA_PR >= IN_QUANTITY then QUA_PR := IN_QUANTITY;
  end if;

  -- ������� ������ ���� 0
--  if IN_QUANTITY = 0 then
--     DELETE_DIST_LINE(IN_DIST_ID);
--  else
    -- �������� ����� ��� ������������ ������
    select count(*) into cnt from DISTRIBUTIONS
    where ID_ORDERS_LIST = IN_ID_ORDERS_LIST and N_ID = N_ID_PR and PREP_DIST_ID = IN_PREP_DIST_ID;

    if cnt > 0 then
      select a.quantity into cnt from DISTRIBUTIONS a
      where ID_ORDERS_LIST = IN_ID_ORDERS_LIST and N_ID = N_ID_PR and PREP_DIST_ID = IN_PREP_DIST_ID;

--  LOG_ERR('QUA_PR='||QUA_PR||' IN_QUANTITY='||IN_QUANTITY||' cnt='||cnt, 0, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', '');
      if (QUA_PR+cnt) >= IN_QUANTITY then QUA_PR := IN_QUANTITY; end if;

      update DISTRIBUTIONS set QUANTITY = QUA_PR
      where ID_ORDERS_LIST = IN_ID_ORDERS_LIST and N_ID = N_ID_PR and PREP_DIST_ID = IN_PREP_DIST_ID;

--      LOG_ERR('update DISTRIBUTIONS set QUANTITY='||QUA_PR||' where ID_ORDERS_LIST='||IN_ID_ORDERS_LIST||' and N_ID='||N_ID_PR||' and PREP_DIST_ID='||IN_PREP_DIST_ID, 0, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', '');

      UPDATE PREPARE_DISTRIBUTION
        SET LEFT_QUANTITY = LEFT_QUANTITY + cnt - QUA_PR
                WHERE PREP_DIST_ID = IN_PREP_DIST_ID;

    else
      SELECT DIST_ID.NextVal INTO NEXT_DIST_ID FROM DUAL;

      INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST)
      VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, QUA_PR, IN_PREP_DIST_ID, IN_ID_ORDERS_LIST);

      UPDATE PREPARE_DISTRIBUTION
        SET LEFT_QUANTITY = LEFT_QUANTITY - QUA_PR
                WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
    end if;
--  end if;
  commit;
end;


--
-- ��������� ������ � ��������
--
PROCEDURE CREATE_CUSTOM_DIST_LINE
(
  IN_PREP_DIST_ID       IN NUMBER,
  IN_ID_ORDERS_LIST     IN NUMBER,
  IN_QUANTITY           IN NUMBER,
  OUT_RES               OUT NUMBER,
  OUT_TEXT              OUT VARCHAR2
)
IS
  NEXT_DIST_ID  NUMBER;
  QUA_PR        NUMBER;
  QUA_ORD       NUMBER;
  QUA_DIST      NUMBER;
  N_ID_PR       NUMBER;
  DIST_IND_ID_PR NUMBER;
  QUA           NUMBER;
BEGIN

  SELECT DIST_ID.NextVal INTO NEXT_DIST_ID FROM DUAL;

  BEGIN
    SELECT DIST_IND_ID, LEFT_QUANTITY, N_ID INTO DIST_IND_ID_PR, QUA_PR, N_ID_PR
      FROM PREPARE_DISTRIBUTION
                 WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
  EXCEPTION
    WHEN OTHERS THEN
      OUT_RES := -1;
      OUT_TEXT := '����������� ������� ������ ��������������� �������������!';
      GOTO THE_END;
  END;

  BEGIN
    SELECT QUANTITY INTO QUA_ORD
      FROM ORDERS_LIST_VIEW
                 WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;
  EXCEPTION
    WHEN OTHERS THEN
      OUT_RES := -1;
      OUT_TEXT := '����������� ������� ������ ������!';
      GOTO THE_END;
  END;

  if QUA_PR >= IN_QUANTITY then QUA_PR := IN_QUANTITY;
  end if;

  INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST)
  VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, QUA_PR, IN_PREP_DIST_ID, IN_ID_ORDERS_LIST);

  UPDATE PREPARE_DISTRIBUTION
    SET LEFT_QUANTITY = LEFT_QUANTITY - QUA_PR
                WHERE PREP_DIST_ID = IN_PREP_DIST_ID;

  OUT_RES := 1;
  OUT_TEXT := '�������� ������ �������!';
  commit;

  <<THE_END>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_CUSTOM_DIST_LINE', '');
        RAISE_APPLICATION_ERROR (-20510, '������ �� ����������. ' || SQLERRM);
END CREATE_CUSTOM_DIST_LINE;


--
-- ������� ������ �� ��������
--
PROCEDURE DELETE_DIST_LINE
(
  IN_DIST_ID    IN NUMBER
)
IS
  PREP_DIST_ID_I    NUMBER;
  ID_ORDERS_LIST_I  NUMBER;
  QUA               NUMBER;
  sqlstr varchar2(1000);
BEGIN
    sqlstr := 'SELECT PREP_DIST_ID, ID_ORDERS_LIST, QUANTITY  FROM DISTRIBUTIONS  WHERE DIST_ID = '||IN_DIST_ID;

    SELECT PREP_DIST_ID, ID_ORDERS_LIST, QUANTITY
        INTO PREP_DIST_ID_I, ID_ORDERS_LIST_I, QUA
    FROM DISTRIBUTIONS
    WHERE DIST_ID = IN_DIST_ID;

    sqlstr := 'UPDATE PREPARE_DISTRIBUTION SET LEFT_QUANTITY = LEFT_QUANTITY + QUA WHERE PREP_DIST_ID = '||PREP_DIST_ID_I;

    UPDATE PREPARE_DISTRIBUTION
      SET LEFT_QUANTITY = LEFT_QUANTITY + QUA
                WHERE PREP_DIST_ID = PREP_DIST_ID_I;

    sqlstr := 'DELETE FROM DISTRIBUTIONS  WHERE DIST_ID = '||IN_DIST_ID;

    DELETE FROM DISTRIBUTIONS
    WHERE DIST_ID = IN_DIST_ID;

    COMMIT;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.DELETE_DIST_LINE', sqlstr);
        RAISE_APPLICATION_ERROR (-20511, '������ �� ����������. ' || SQLERRM);
END DELETE_DIST_LINE;



--
-- ��������� ������ � �������� �� ������������
--
PROCEDURE CREATE_DISTRIBUTION_LINE
(
  IN_PREP_DIST_ID   IN NUMBER,
  IN_ID_ORDERS_LIST IN NUMBER,
  in_is_pack        in number
)
IS
  NEXT_DIST_ID  NUMBER;
  QUA_PR        NUMBER;
  QUA_ORD       NUMBER;
  QUA_DIST      NUMBER;
  N_ID_PR       NUMBER;
  DIST_IND_ID_PR NUMBER;
  QUA           NUMBER;
  vPack         number;
  maxPack       number;
  isPack        number;
  idOrdCl       number;
  cnt           number;
BEGIN
  cnt := 0;

  SELECT DIST_ID.NextVal INTO NEXT_DIST_ID FROM DUAL;

  SELECT DIST_IND_ID,LEFT_QUANTITY,N_ID INTO DIST_IND_ID_PR, QUA_PR, N_ID_PR
    FROM PREPARE_DISTRIBUTION
                 WHERE PREP_DIST_ID = IN_PREP_DIST_ID;

  SELECT a.QUANTITY, b.pack_, b.id_clients INTO QUA_ORD, isPack, idOrdCl
    FROM ORDERS_LIST_VIEW a, orders_clients b
                 WHERE a.ID_ORDERS_LIST = IN_ID_ORDERS_LIST and a.ID_ORDERS_CLIENTS = b.ID_ORDERS_CLIENTS;

--LOG_ERR('begin', 0, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', 'ID_ORDERS_LIST='||IN_ID_ORDERS_LIST||' QUA_ORD='||QUA_ORD||' isPack='||isPack||' idOrdCl='||idOrdCl);

-- ������ ��� ������ �� ������� �� ���� ������� � ��������� ����� ������� � ��� ������������. �������� ���-�� ������� � ������.
-- ������ �����, ��� ���������� ������������ ������� �������� �������, ������� �������� � �������, �� ������ �� �����
-- ���������� QUA_PR ������ ���� ���������������� ��������� � �������
  if isPack = 1 then
      select sum(a.invoice_count) into cnt
      from PREPARE_DISTRIBUTION_TREE a, invoice_data c
      where a.prep_dist_id = IN_PREP_DIST_ID and a.order_count = idOrdCl and a.invoice_data_id = c.invoice_data_id and c.to_client is not null and c.storned_data = 0 --and a.invoice_count <> QUA_ORD
      ;
--LOG_ERR('�������� ������������� �������', 1, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', 'cnt='||cnt);
/*
    if cnt > 0 then
      select sum(a.invoice_count) into QUA_ORD
      from PREPARE_DISTRIBUTION_TREE a, invoice_data c
      where a.prep_dist_id = IN_PREP_DIST_ID and a.order_count = idOrdCl and a.invoice_data_id = c.invoice_data_id and c.to_client is not null and c.storned_data = 0 --and a.invoice_count <> QUA_ORD
      ;
    end if;
*/
    if cnt <> QUA_ORD and cnt > 0 then QUA_ORD := cnt; end if;
--LOG_ERR('�������� ���-�� � �������', 2, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', 'QUA_ORD='||QUA_ORD);

  end if;



  if QUA_PR > 0 then

    -- ������� �������� �� ���������
    if in_is_pack = 1 and cnt = 0 then
      select a.pack into vPack from nomenclature a where a.n_id = N_ID_PR;
      if QUA_ORD < vPack then
        QUA_ORD := vPack;
        update ORDERS_LIST set QUANTITY = vPack WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;
      else
        select ceil(QUA_ORD/decode(vPack,null,1,0,1,vPack)) into maxPack from dual;
        if maxPack*vPack > QUA_ORD then
          QUA_ORD := maxPack*vPack;
          update ORDERS_LIST set QUANTITY = maxPack*vPack WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;
        end if;
      end if;
    end if;

    SELECT SUM(QUANTITY) INTO QUA_DIST
      FROM DISTRIBUTIONS
      WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;

    IF QUA_DIST is null THEN QUA_DIST := 0; END IF;

    IF QUA_DIST >= QUA_ORD
      THEN GOTO THE_END;
    END IF;

    IF QUA_ORD - QUA_DIST > QUA_PR
      THEN QUA := QUA_PR;
      ELSE QUA := QUA_ORD - QUA_DIST;
    END IF;

    INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST)
           VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, QUA, IN_PREP_DIST_ID, IN_ID_ORDERS_LIST);

    UPDATE PREPARE_DISTRIBUTION
      SET LEFT_QUANTITY = LEFT_QUANTITY - QUA
                  WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
  end if;

  <<THE_END>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', '');
        RAISE_APPLICATION_ERROR (-20512, '������ �� ����������. ' || SQLERRM);
END CREATE_DISTRIBUTION_LINE;


--
-- ����� �������� � ������ �� ������
--
PROCEDURE get_order_list_nid
(
  id_order_     in number,
  n_id_         in number,
  dist_ind_id_  in number,
  cursor_               out ref_cursor
)
IS
BEGIN
  open cursor_ for
                SELECT a.ID_ORDERS_CLIENTS, a.ID_ORDERS, a.ID_CLIENTS, a.N_TRUCK, a.CAPACITY, a.D_DATE, a.pack_, a.alpha,
                   a.N_TYPE, a.STATUS, a.ON_DATE, b.NICK || ' ' || a.alpha as NICK, b.FIO, a.id_orders_clients as id_orders_clients_,
                   c.n_id
                   --, case when a.PACK_ = 1 then e.units else c.quantity end quantity
                   , c.quantity
                   , c.zatirka, c.id_orders_list, d.full_name, d.great_name, d.great_name_f, d.compiled_name_otdel||' '||d.colour as compiled_name_otdel_ord,
               case when (e.INVOICE_DATA_ID is NULL and e.DQ > 0) then 1 else 0 end is_stock,
               nvl(e.dq,0) as dq, case when e.DQ is null then 0 else 1 end dq_check,
               e.great_name as great_name2, e.great_name_f as great_name_f2, e.dist_id, e.compiled_name_otdel||' '||e.colour as compiled_name_otdel,
               (
                 select nvl(SUM(o.DQ),0) from DISTRIBUTION_VIEW o where o.DIST_IND_ID = dist_ind_id_ and c.n_id=o.o_n_id AND o.id_clients = a.id_clients
               ) as DISTRIBUTED_NUMBER
               , e.PREP_DIST_ID, e.D_N_ID
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e
                WHERE a.id_orders = id_order_
                      and a.active = 1
                      and decode(a.ID_CLIENTS,const_dir,const_main,a.ID_CLIENTS) = b.ID_CLIENTS
                      --and a.ID_CLIENTS = b.ID_CLIENTS
                      and a.id_orders_clients = c.id_orders_clients
                      and (c.n_id = n_id_ or n_id_ = 0)
                      and c.n_id = d.n_id
              and c.active = 1
              and c.id_orders_list = e.id_orders_list(+)
              and e.dist_ind_id(+) = dist_ind_id_
        order by decode(a.pack_,1,1,2), decode(a.ID_CLIENTS,const_dir,98,const_main,99,1), NICK;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_order_list_nid', '');
        RAISE_APPLICATION_ERROR (-20514, '������ �� ����������. ' || SQLERRM);
end get_order_list_nid;




--
-- ������� ������ �� ��������
--
PROCEDURE DELETE_DIST_LINE_NID
(
  IN_DIST_ID IN NUMBER,
  N_ID_      IN NUMBER
)
IS

  cursor c_list is
    SELECT distinct DIST_ID
      FROM DISTRIBUTION_VIEW a
                 WHERE a.dist_ind_id = IN_DIST_ID and a.o_n_id = n_id_;

  PREP_DIST_ID_I    NUMBER;
  ID_ORDERS_LIST_I  NUMBER;
  QUA               NUMBER;
  IN_DIST_ID_       NUMBER;

BEGIN

  open c_list;
  loop
    fetch c_list into IN_DIST_ID_;

    IF c_list%NOTFOUND THEN
      EXIT;
    END IF;

    SELECT PREP_DIST_ID, ID_ORDERS_LIST, QUANTITY
                         INTO PREP_DIST_ID_I, ID_ORDERS_LIST_I, QUA
    FROM DISTRIBUTIONS
    WHERE DIST_ID = IN_DIST_ID_;

    UPDATE PREPARE_DISTRIBUTION
      SET LEFT_QUANTITY = LEFT_QUANTITY + QUA
                WHERE PREP_DIST_ID = PREP_DIST_ID_I;

    DELETE FROM DISTRIBUTIONS
    WHERE DIST_ID = IN_DIST_ID_;

  end loop;
  close c_list;

  COMMIT;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.DELETE_DIST_LINE_NID', '');
        RAISE_APPLICATION_ERROR (-20516, '������ �� ����������. ' || SQLERRM);
END DELETE_DIST_LINE_NID;



--
-- ������ �������
--
PROCEDURE get_kubik_print
(
  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- ���� �� ������ � ������ �������
  cursor_       out ref_cursor
)
IS
BEGIN
    open cursor_ for
      select * from (
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.hol_type, d.compiled_name_otdel, t.ord,
               case when nvl(sum(e.dq),0) = c.quantity then 1 else 0 end dq_check, sum(nvl(e.dq,0)) as oq
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, hol_types t
        WHERE a.id_orders = id_order_
              and a.active = 1
              and a.pack_ <> 1
              and a.id_clients <> vMain
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.n_id = d.n_id
              and c.active = 1
              and c.id_orders_list = e.id_orders_list(+)
              and e.dist_ind_id(+) = dist_ind_id_
              and upper(d.hol_type) = upper(t.hol_type(+))
        group by a.pack_, b.NICK,a.alpha, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.compiled_name_otdel, d.hol_type, t.ord

        union all

        SELECT 0 as pack_, c.NICK, c.FIO, a.n_id, a.left_quantity as quantity, 0 as zatirka, a.compiled_name_otdel as full_name, b.hol_type, a.compiled_name_otdel, b.ord, 0 as dq_check, a.left_quantity as oq
        FROM PREP_DIST_VIEW a, hol_types b, (select c.nick, c.fio from clients c where c.id_clients = CONST_MAIN) c
        WHERE a.DIST_IND_ID = dist_ind_id_
              and a.INVOICE_DATA_ID is not null
              and a.left_quantity > 0
              and upper(a.hol_type) = upper(b.hol_type(+))
        ) a
        order by  a.ord, a.compiled_name_otdel, a.nick;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_kubik_print', '');
        RAISE_APPLICATION_ERROR (-20517, '������ �� ����������. ' || SQLERRM);
END get_kubik_print;


--
-- ������ ������� ����� �������� (��� ��������)
--
PROCEDURE get_kubik_print2
(
  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- ���� �� ������ � ������ �������
  cursor_       out ref_cursor
)
IS
BEGIN
    open cursor_ for
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.hol_type
                , nvl(new_d.compiled_name_otdel,d.compiled_name_otdel) compiled_name_otdel, t.ord,
               case when nvl(sum(e.dq),0) = c.quantity then 1 else 0 end dq_check, sum(nvl(e.dq,0)) as oq
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, hol_types t, nomenclature_mat_view new_d
        WHERE a.id_orders = id_order_
              and a.active = 1
              --and a.pack_ <> 1
              --and a.id_clients <> vMain
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.n_id = d.n_id
              and c.active = 1
              and c.id_orders_list = e.id_orders_list(+)
              and e.dist_ind_id(+) = dist_ind_id_
              and upper(d.hol_type) = upper(t.hol_type(+))
              and e.D_N_ID = new_d.n_id(+)
        group by a.pack_, b.NICK,a.alpha, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.compiled_name_otdel, d.hol_type, t.ord,  new_d.compiled_name_otdel
        order by  t.ord, nvl(new_d.compiled_name_otdel,d.compiled_name_otdel);

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_kubik_print', '');
        RAISE_APPLICATION_ERROR (-20517, '������ �� ����������. ' || SQLERRM);
END get_kubik_print2;



--
-- ������ �������� �� ������ ����� 1 (�� �������)
--
PROCEDURE get_print_p1
(
  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- ���������� ����
  cursor_       out ref_cursor
)
IS
 str varchar2(2024);
 vNick varchar2(10);
 vFIO varchar2(200);
BEGIN
  begin
    select FIO, NICK into vFIO, vNick from clients where id_clients = vMain;
  EXCEPTION WHEN OTHERS THEN
    vFIO  := 'none';
    vNick := 'none';
  end;

  str := 'SELECT e.PREP_DIST_ID, a.pack_, nvl(trim(b.NICK || '' '' || a.alpha),'''||vNick||''') as NICK, nvl(b.FIO,'''||vFIO||''') as FIO, c.n_id
            , inv_nom.compiled_name_otdel, nvl(e.QUANTITY,z.TOTAL_QUANTITY) as dq, nvl(c.QUANTITY, z.LEFT_QUANTITY) as OQ, z.hol_type
            , ord_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type
        FROM PREP_DIST_VIEW z
        left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
        left outer join DISTRIBUTIONS e on e.PREP_DIST_ID = z.PREP_DIST_ID
        left outer join orders_list c on c.id_orders_list = e.id_orders_list
        left outer join NOMENCLATURE_MAT_VIEW ord_nom on ord_nom.n_id = c.N_ID
        left outer join ORDERS_CLIENTS a on a.id_orders = '||id_order_||' and a.active = 1 and a.id_orders_clients = c.id_orders_clients
        left outer join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
        left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
        inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = '||dist_ind_id_||' and z.invoice_data_id is not null
  ';
  if length(vFT_ID) > 0 then
    str := str || ' and z.ft_id in ('||vFT_ID||')';
  end if;
  str := str || ' order by NICK || '' '' || a.alpha, t.ord, inv_nom.compiled_name_otdel';
  open cursor_ for str;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_p1', str);
        RAISE_APPLICATION_ERROR (-20518, '������ �� ����������. ' || SQLERRM);
END; -- get_print_p1



--
-- ������ �������� �� ������ ����� 1 (�� ������)
--
PROCEDURE get_print_p2
(
  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- ���������� ����
  cursor_       out ref_cursor
)
IS
 str varchar2(2024);
 vNick varchar2(10);
 vFIO varchar2(200);
BEGIN
    select FIO, NICK into vFIO, vNick from clients where id_clients = vMain;

  str := 'SELECT e.PREP_DIST_ID, a.pack_, nvl(trim(b.NICK || '' '' || a.alpha),'''||vNick||''') as NICK, nvl(b.FIO,'''||vFIO||''') as FIO, c.n_id
            , inv_nom.compiled_name_otdel, nvl(e.QUANTITY,z.TOTAL_QUANTITY) as dq, nvl(c.QUANTITY, z.LEFT_QUANTITY) as OQ, z.hol_type
            , ord_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type
        FROM PREP_DIST_VIEW z
        left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
        left outer join DISTRIBUTIONS e on e.PREP_DIST_ID = z.PREP_DIST_ID
        left outer join orders_list c on c.id_orders_list = e.id_orders_list
        left outer join NOMENCLATURE_MAT_VIEW ord_nom on ord_nom.n_id = c.N_ID
        left outer join ORDERS_CLIENTS a on a.id_orders = '||id_order_||' and a.active = 1 and a.id_orders_clients = c.id_orders_clients
        left outer join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
        left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
        inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = '||dist_ind_id_||' and z.invoice_data_id is not null
  ';
  if length(vFT_ID) > 0 then
    str := str || ' and z.ft_id in ('||vFT_ID||')';
  end if;
  str := str || ' order by t.ord, inv_nom.compiled_name_otdel, NICK || '' '' || a.alpha';
  open cursor_ for str;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_p2', str);
        RAISE_APPLICATION_ERROR (-20518, '������ �� ����������. ' || SQLERRM);
END; -- get_print_p2



--
-- ������ ���������� �������
--
PROCEDURE get_print_client
(
  id_order_     in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, e.invoice_data_id, e.id_store_main
            , nvl(new_d.compiled_name_otdel, e.compiled_name_otdel) compiled_name_otdel, e.dq, e.OQ, e.hol_type
            , e.D_N_ID as new_nid, e.compiled_name_otdel as old_flower
            , b.id_clients
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, DISTRIBUTION_VIEW e, NOMENCLATURE_MAT_VIEW new_d, HOL_TYPES t
        WHERE a.id_orders = id_order_
              and a.active = 1
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.id_orders_list = e.id_orders_list
              and e.dist_ind_id = dist_ind_id_
              and e.O_N_ID = new_d.n_id(+)
              and upper(e.hol_type) = upper(t.hol_type(+))
        order by b.NICK || ' ' || a.alpha, t.ord, nvl(new_d.compiled_name_otdel, e.compiled_name_otdel);

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_client', '');
        RAISE_APPLICATION_ERROR (-20518, '������ �� ����������. ' || SQLERRM);
end get_print_client;



--
-- ������ ���������� ������� (��������������� ������)
--
PROCEDURE get_print_client_invoice
(
  id_order_     in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for

        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, e.invoice_data_id, e.id_store_main
            , nvl(e.dq,c.quantity) as dq, e.OQ, e.hol_type
            , e.D_N_ID as new_nid, nom.compiled_name_otdel as old_flower
            , case when new_d.compiled_name_otdel = nom.compiled_name_otdel then null when e.compiled_name_otdel is null then '����� �����������' when new_d.compiled_name_otdel <> nom.compiled_name_otdel and new_d.compiled_name_otdel is not null then new_d.compiled_name_otdel end compiled_name_otdel
            , b.id_clients
        FROM ORDERS_CLIENTS a
          inner join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
          inner join orders_list c on c.id_orders_clients = a.id_orders_clients
          inner join NOMENCLATURE_MAT_VIEW nom on nom.n_id = c.N_ID
          left outer join DISTRIBUTION_VIEW e on e.id_orders_list = c.id_orders_list and e.dist_ind_id = dist_ind_id_
          left outer join NOMENCLATURE_MAT_VIEW new_d on new_d.n_id = e.O_N_ID
          left outer join HOL_TYPES t on upper(t.hol_type) =  upper(nom.hol_type)
        WHERE a.id_orders = id_order_
              and a.active = 1
        order by b.NICK || ' ' || a.alpha, t.ord, nom.compiled_name_otdel;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_client_invoice', '');
        RAISE_APPLICATION_ERROR (-20518, '������ �� ����������. ' || SQLERRM);
end get_print_client_invoice;




--
-- �������� ������ �� ������� �������
--
PROCEDURE make_reserv
(
  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number -- ���� �� ������ � �����
)
IS
  cursor c_list is
        SELECT a.id_orders_clients, b.id_clients, b.NICK || ' ' || a.alpha as NICK, b.FIO, DATE_TRUCK, ID_DEPARTMENTS
        FROM ORDERS_CLIENTS a, CLIENTS b, orders o
        WHERE a.id_orders = id_order_
              and a.active = 1
              and a.id_orders = o.id_orders
              and a.id_clients <> vMain
              and a.ID_CLIENTS = b.ID_CLIENTS
              and (select count(1) from orders_list z where z.id_orders_clients = a.id_orders_clients) > 0
              and a.id_clients not in (const_dir,const_main)
        ;

  vNewReserv number;
  vCurClient number;
  idd        number;

  CURSOR data_temp IS
        SELECT e.D_N_ID as n_id, e.dq as quantity, e.OQ, p.price
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, DISTRIBUTION_VIEW e, price_list p
        WHERE a.id_orders = id_order_
              and a.active = 1
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.id_orders_list = e.id_orders_list
              and e.dist_ind_id = dist_ind_id_
              and a.id_clients = vCurClient
              and e.D_N_ID = p.n_id(+)
              and a.id_clients not in (const_dir,const_main)
        ;

begin

  FOR c_list_cursor IN c_list LOOP
    vNewReserv := 0;

    sales_pkg.RESERV_NEW(
        vNewReserv,
        c_list_cursor.id_clients,
        c_list_cursor.DATE_TRUCK,
        1, 0,
        c_list_cursor.ID_DEPARTMENTS
    );

    vCurClient := c_list_cursor.id_clients;

    FOR data_temp_cursor IN data_temp LOOP
        -- ��������� ����� �������
        SELECT get_office_unique('ORDERS_LIST_SEQ') INTO idd FROM DUAL;

        INSERT INTO ORDERS_LIST
        VALUES(idd, data_temp_cursor.N_ID, data_temp_cursor.QUANTITY, vNewReserv, null, null, 1, 0, data_temp_cursor.PRICE, 1, const_office, sysdate, null, 1, null, 0, null);

        UPDATE STORE_MAIN SET RESERV = RESERV + data_temp_cursor.QUANTITY, date_change=sysdate
        WHERE n_id = data_temp_cursor.N_ID and store_type = 1 and id_office = const_office;
    end loop;

  end loop;

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.make_reserv', '');
        RAISE_APPLICATION_ERROR (-20518, '������ �� ����������. ' || SQLERRM);
end make_reserv;

--
-- ���������� ������������� ������
--
PROCEDURE load_order
(
   id_dep_       in number,
   cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for
      SELECT a.ID_ORDERS, a.ID_ORDERS || ' : ' || (TO_CHAR(DATE_TRUCK_OUT,'DD.MM.YYYY')) || ' ' || INFO ORDER_TITLE
         FROM ORDERS a --, DISTRIBUTIONS_INDEX b
         WHERE a.ID_DEPARTMENTS = id_dep_ and N_TYPE = 0 and a.active=1
         and not exists (select 1 from DISTRIBUTIONS_INDEX b where b.id_orders = a.id_orders)
--         and a.id_orders = b.id_orders(+) and b.id_orders is null
         ORDER BY ID_ORDERS DESC;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.load_order', '');
        RAISE_APPLICATION_ERROR (-20519, '������ �� ����������. ' || SQLERRM);
end load_order;


--
-- ���������� ������������� �������
--
PROCEDURE load_invoice
(
  id_dep_       in number,
  cursor_               out ref_cursor
)
IS
BEGIN
  open cursor_ for
      SELECT a.INV_ID, a.INV_ID || ' : ' || to_char(SUPPLIER_DATE,'dd.mm.yyyy') || ' : ' || COMMENTS as names
         FROM INVOICE_REGISTER_FULL a --, DISTRIBUTIONS_INVOICES b
         WHERE SENDED_TO_WAREHOUSE = 0 AND ID_DEPARTMENTS = id_dep_
         and not exists (select 1 from DISTRIBUTIONS_INVOICES b where b.inv_id = a.inv_id)
         and a.status <> 1
         and not exists (select 1 from export_to_fillials z where z.ID_INVOICE = a.inv_id)
--         and a.inv_id = b.inv_id(+) and b.inv_id is null
--         and (select min(RECOGNISED) from INVOICE_DATA_AS_IS b where b.inv_id = INV_ID) = 1
         ORDER BY SUPPLIER_DATE DESC;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.load_invoice', '');
        RAISE_APPLICATION_ERROR (-20520, '������ �� ����������. ' || SQLERRM);
end load_invoice;



--
-- ���������� �� ��������
--
PROCEDURE client_stat
(
  vDistIndId       in number,
  vIdOrders        in number,
  cursor_          out ref_cursor
)
IS
BEGIN
  open cursor_ for
    select a.*, case when quantity=dq then 1 else 0 end isdone from (
        SELECT t.ord, t.hol_type as htype, a.ID_CLIENTS, b.NICK || ' ' || a.alpha as NICK, b.FIO, sum(c.quantity) as quantity, sum(nvl(e.dq,0)) as dq
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, DISTRIBUTION_VIEW e, nomenclature_mat_view v, hol_types t
        WHERE a.id_orders = vIdOrders
              and a.active = 1
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.n_id = v.n_id
              and v.ht_id = t.ht_id
              and c.active = 1
              and c.id_orders_list = e.id_orders_list(+)
              and e.dist_ind_id(+) = vDistIndId
        group by a.ID_CLIENTS, b.NICK || ' ' || a.alpha, b.FIO, t.ord, t.hol_type
    ) a
    order by NICK, ord;
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.client_stat', '');
        RAISE_APPLICATION_ERROR (-20521, '������ �� ����������. ' || SQLERRM);
end client_stat;


--
-- ���������� �� ��������
--
PROCEDURE client_stat_item
(
--  vDistIndId       in number,
  vIdOrders        in number,
  cursor_          out ref_cursor
)
IS
BEGIN
  open cursor_ for
    SELECT c.n_id, c.quantity, c.zatirka, c.id_orders_list, d.compiled_name_otdel||' '||d.colour as compiled_name_otdel, d.colour,
       case when (e.INVOICE_DATA_ID is NULL and e.DQ > 0) then 1 else 0 end is_stock,
       nvl(e.dq,0) as dq, case when e.DQ is null then 0 else 1 end dq_check,
       e.dist_id
       , case when e.D_N_ID = c.n_id then null else e.compiled_name_otdel||' '||e.colour end compiled_name_otdel_razn, e.colour as colour_razn
       , l.nick, l.id_clients
    FROM ORDERS_CLIENTS a, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, clients l
    WHERE a.id_orders = vIdOrders
      and a.active = 1
      --and a.ID_ORDERS_CLIENTS = :p_order_client
      and a.id_orders_clients = c.id_orders_clients
      and c.n_id = d.n_id
      and c.active = 1
      and c.id_orders_list = e.id_orders_list(+)
      and a.id_clients = l.id_clients
    order by l.nick, d.compiled_name_otdel;
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.client_stat_item', '');
        RAISE_APPLICATION_ERROR (-20521, '������ �� ����������. ' || SQLERRM);
end client_stat_item;

--
-- ��������� ������� � ������ ��� ��������
--
PROCEDURE modify_order
(
  vID_ORDERS_LIST   IN NUMBER,
  vQUANTITY         IN NUMBER
)
IS
  vCruQ  NUMBER;
BEGIN
  if vID_ORDERS_LIST > 0 then
     select QUANTITY into vCruQ from ORDERS_LIST a where ID_ORDERS_LIST = vID_ORDERS_LIST;
     if vCruQ <> vQUANTITY then
        update ORDERS_LIST set QUANTITY=vQUANTITY where ID_ORDERS_LIST = vID_ORDERS_LIST;
     end if;
  end if;
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.modify_order', '');
        RAISE_APPLICATION_ERROR (-20522, '������ �� ����������. ' || SQLERRM);
end modify_order;



--
-- ����� �������� �� ������
--
PROCEDURE get_distribution_list_nid
(
  n_id_         in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for
    SELECT a.f_sub_type, a.compiled_name_otdel, a.colour, a.dq, a.oq, b.nick || ' ' || o.ALPHA as nick, c.quantity, d.compiled_name_otdel as or_compiled_name_otdel, d.colour as or_colour
      FROM distribution_view a
        left outer join orders_list c on c.id_orders_list = a.id_orders_list and c.active = 1
        left outer join ORDERS_CLIENTS o on o.id_orders_clients = c.id_orders_clients and o.active = 1
        left outer join CLIENTS b on b.id_clients = o.id_clients
        left outer join nomenclature_mat_view d on d.n_id = c.n_id
      where dist_ind_id = dist_ind_id_ and d_n_id = n_id_
      order by decode(a.ID_CLIENTS,const_dir,98,const_main,99,1), NICK;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_distribution_list_nid', '');
        RAISE_APPLICATION_ERROR (-20523, '������ �� ����������. ' || SQLERRM);
end get_distribution_list_nid;


--
--  ������� ��� � ����� ������� �� ��������� �������
--
PROCEDURE get_translate
(
  p_invoice_id    in number,
  cursor_         out ref_cursor
)
is
begin

  open cursor_ for
    SELECT a.*, n.n_id, n.COMPILED_NAME_OTDEL, n.code, n.h_code, n.remarks as nom_remarks
      , n.ID_OFFICE, n.FN_ID, n.FT_ID, n.FST_ID, n.C_ID, n.S_ID, n.COL_ID, n.LEN, n.PACK, n.HT_ID, n.DIAMETER
      , n.WEIGHT, n.WEIGHTDRY, n.CUST_COEF, n.VBN, n.H_NAME, n.TNVED, n.HOL_TYPE
      FROM invoice_data_as_is a
      inner join invoice_register r on r.inv_id = a.inv_id
      --left outer join invoice_data b on b.INVOICE_DATA_AS_IS_ID = a.INVOICE_DATA_AS_IS_ID
      --left outer join nomenclature_mat_view n on n.H_NAME = a.DESCRIPTION and ((n.remarks = a.REMARKS) or (n.remarks is null and a.REMARKS is null))
      left outer join H_COLOURS c on c.HOL_COLOUR = a.HOL_COLOUR
      left outer join FST_VIEW f on f.hol_sub_type like '%'||a.HOL_SUB_TYPE||'%' and f.DEPT = r.ID_DEPARTMENTS
      left outer join nomenclature_mat_view n on n.namecode = a.short_code and n.remarks = a.REMARKS and n.LEN = a.SPEC_LENGTH and n.col_id = c.COL_ID and n.fst_id = f.fst_id --and n.PACK = a.NOM_PACK
      ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_translate', '');
       RAISE_APPLICATION_ERROR (-20248, '������ �� ����������. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_translate;

END;
/

-- Grants for Package Body
GRANT EXECUTE ON distribution_pkg TO new_role
/


-- End of DDL Script for Package Body CREATOR.DISTRIBUTION_PKG
