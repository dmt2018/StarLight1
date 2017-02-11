-- Start of DDL Script for Package Body CREATOR.DISTRIBUTION_PKG
-- Generated 11.02.2017 18:46:45 from CREATOR@STAR_REG

CREATE OR REPLACE 
PACKAGE distribution_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные
tmp_cnt   NUMBER;

--
-- Выбор всех инвойсов
--
function get_list_inv
(
  IN_DIST_IND_ID  in number
) return varchar2;


--
-- Выбор всех заказов
--
function get_list_orders
(
         IN_DIST_IND_ID  in number
) return varchar2;

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
-- Выбор записанных распределений
--
PROCEDURE get_prep_distr
(
  DIST_IND_ID_  in number,
  vClient       in number,
  cursor_       out ref_cursor
);


--
-- Создаем распределение
--
PROCEDURE CREATE_DISTRIBUTION_INDEX
(
  IN_DIST_DATE          in DATE,
  IN_DIST_COMMENT       in VARCHAR2,
  IN_ID_DEPARTMENTS     in NUMBER
  , IN_DIST_ID          in out NUMBER
);


--
-- Изменяем распределение
--
PROCEDURE EDIT_DISTRIBUTION_INDEX
(
  IN_DIST_IND_ID    in NUMBER,
  IN_DIST_DATE      in DATE,
  IN_DIST_COMMENT   in VARCHAR2
);


--
--  Удаляем распределение
--
PROCEDURE DELETE_DISTRIBUTION_INDEX
(
  IN_DIST_IND_ID IN NUMBER
);


--
--  Подгружаем заказ в распределение
--
PROCEDURE SET_ORDER_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 IN_ID_ORDERS   IN NUMBER
);


--
-- Выбор клиентов в заказе
--
PROCEDURE get_order_list
(
 id_order_     in number,
 cursor_       out ref_cursor
);


--
-- Грузим сток в распределение
--
PROCEDURE LOAD_STOCK_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 id_ft_         in number,
 id_dep_        in number
);


--
-- Грузим инвойс в распределение
--
PROCEDURE LOAD_INVOICE_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 IN_INV_ID      IN NUMBER
);


--
--  Автоматическая разноска
--
PROCEDURE PROCEED_AUTOMATIC_DISTRIBUTION
(
 IN_DIST_IND_ID   IN NUMBER,
 OUT_TEXT         OUT VARCHAR2,
 inStok           in number,
 in_is_pack       in number
);


--
-- Удаляем запись из разноски
--
PROCEDURE DELETE_DIST_LINE
(
  IN_DIST_ID IN NUMBER
);


--
-- Добавляем запись в разноску
--
PROCEDURE CREATE_CUSTOM_DIST_LINE
(
  IN_PREP_DIST_ID   IN NUMBER,
  IN_ID_ORDERS_LIST IN NUMBER,
  IN_QUANTITY       IN NUMBER,
  OUT_RES           OUT NUMBER,
  OUT_TEXT          OUT VARCHAR2
);


--
-- Добавляем запись в разноску вручную
--
PROCEDURE CREATE_CUSTOM_DIST_LINE2
(
  IN_PREP_DIST_ID   IN NUMBER,
  IN_ID_ORDERS_LIST IN NUMBER,
  IN_QUANTITY       IN NUMBER,
  IN_DIST_ID        IN NUMBER
);

--
--  Добавляем запись в разноску по АВТОразноске
--
PROCEDURE CREATE_DISTRIB_LINE_BY_INV
(
  IN_PREP_DIST_ID     IN NUMBER,
  IN_n_id             IN NUMBER,
  in_units            in number,
  in_invoice_data_id  in number
);

--
-- Добавляем запись в разноску по АВТОразноске
--
PROCEDURE CREATE_DISTRIBUTION_LINE
(
  IN_PREP_DIST_ID   IN NUMBER,
  IN_ID_ORDERS_LIST IN NUMBER,
  in_is_pack        in number
);


--
-- Выбор позиций во всем заказе
--
PROCEDURE get_goods
(
  DIST_IND_ID_  in number,
  --id_order_     in number,
  vClient       in number,
  cursor_       out ref_cursor
);


--
-- Выбор клиентов в заказе по цветку
--
PROCEDURE get_order_list_nid
(
  --id_order_     in number,
  n_id_         in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
);


--
-- Удаляем запись из разноски
--
PROCEDURE DELETE_DIST_LINE_NID
(
  IN_DIST_ID IN NUMBER,
  N_ID_      IN NUMBER
);


--
-- Печать кубиков
--
PROCEDURE get_kubik_print
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- сток не входит в печать кубиков
  cursor_       out ref_cursor
);

--
-- Печать кубиков после разноски (для регионов)
--
PROCEDURE get_kubik_print2
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- сток не входит в печать кубиков
  cursor_       out ref_cursor
);


--
-- Печать разноски по товару часть 1 (по клиенту)
--
PROCEDURE get_print_p1
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- Определяем СТОК
  vSupplier     in number,
  cursor_       out ref_cursor
);


--
-- Печать разноски по товару часть 1 (по товару)
--
PROCEDURE get_print_p2
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- Определяем СТОК
  vSupplier     in number,
  cursor_       out ref_cursor
);


--
-- Печать клиентских заказов
--
PROCEDURE get_print_client
(
--  id_order_     in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
);

--
-- Подгружаем неразнесенные заказы
--
PROCEDURE load_order
(
  id_dep_       in number,
  cursor_       out ref_cursor
);


--
-- Подгружаем неразнесенные инвойсы
--
PROCEDURE load_invoice
(
  id_dep_       in number,
  cursor_       out ref_cursor
);


--
-- Выгружаем сток из распределения
--
PROCEDURE UNLOAD_STOCK_FROM_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER
);


--
-- Статистика по клиентам
--
PROCEDURE client_stat
(
  vDistIndId       in number,
  --vIdOrders        in number,
  cursor_          out ref_cursor
);


--
-- Статистика по клиентам
--
PROCEDURE client_stat_item
(
  vDistIndId       in number,
  --vIdOrders        in number,
  cursor_          out ref_cursor
);


--
-- Создание броней на каждого клиента
--
PROCEDURE make_reserv
(
  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number -- сток не входит в бронь
);



--
-- Изменение позиции в заказе при разноске
--
PROCEDURE modify_order
(
  vID_ORDERS_LIST   IN NUMBER,
  vQUANTITY         IN NUMBER
);


--
-- Выбор разносов по цветку
--
PROCEDURE get_distribution_list_nid
(
  n_id_         in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
);


function convert_client
(
  in_to_client  in varchar2
) RETURN number;


--
-- Печать клиентских заказов (предварительный инвойс)
--
PROCEDURE get_print_client_invoice
(
  id_order_     in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
);


--
-- Отображение разнесенных позиций
--
PROCEDURE get_InvoiceDetailList
(
  p_dist_ind_id  in number,
  p_n_id         in number,
  cursor_        out ref_cursor
);


--
-- Удаляем заказ из разноса
--
procedure remove_order_from_distribution
(
  IN_DIST_IND_ID    IN NUMBER,
  in_order_id       in number,
  res               in out varchar2
);


--
-- Ищем пропащие записи в инвойсе и добавим их в разнос
--
procedure check_missed_distributions
(
  IN_DIST_IND_ID    IN NUMBER,
  in_inv_id         in number,
  res               in out number
);


PROCEDURE INS_ORDERS
(
    ID_ORDERS_CLIENTS_   IN NUMBER,
    N_ID_                IN NUMBER,
    Q_NUM_               IN NUMBER,
    TRUCK_               IN NUMBER,
    sub_weight           IN NUMBER,
    v_site_data          in varchar2,
    v_id                 in out number
);


--
-- Добавляем запись в разноску по продажам с колес
--
PROCEDURE CREATE_CUSTOM_DIST_LINE_truck
(
  IN_PREP_DIST_ID       IN NUMBER,
  IN_ID_ORDERS_CLIENT   IN NUMBER,
  IN_N_ID               IN NUMBER,
  IN_QUANTITY           IN NUMBER,
  IN_DIST_ID            IN NUMBER,
  IN_PRICE              IN NUMBER,
  OUT_RES               OUT NUMBER,
  OUT_TEXT              OUT VARCHAR2
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON distribution_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY distribution_pkg
IS

--
-- Выбор всех инвойсов
--
function get_list_inv
(
         IN_DIST_IND_ID  in number
) return varchar2
is

  cursor s_ is
    select INV_ID FROM DISTRIBUTIONS_INVOICES
      WHERE DIST_IND_ID = IN_DIST_IND_ID;

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
-- Выбор всех заказов
--
function get_list_orders
(
         IN_DIST_IND_ID  in number
) return varchar2
is

  cursor s_ is
    select order_id FROM distributions_orders
      WHERE DIST_IND_ID = IN_DIST_IND_ID;

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
        SELECT a.dist_ind_id, a.description, a.dist_date, a.ready, /*b.date_truck_out, a.id_orders,*/ get_list_inv(dist_ind_id) as str_inv, get_list_orders(dist_ind_id) str_orders
               , nvl(s.outer_id, a.dist_ind_id) as distrib_seq
               , (select max(r.WAREHOUSE_SENDED_DATE) as WAREHOUSE_SENDED_DATE from invoice_register r, DISTRIBUTIONS_INVOICES d where r.inv_id = d.INV_ID and d.DIST_IND_ID = a.dist_ind_id) is_sended
                FROM DISTRIBUTIONS_INDEX a
                  --left outer join orders b on b.id_orders = a.id_orders
                  left outer join numeration_seq s on s.obj_id = a.dist_ind_id and s.entity = 'distribution'
                WHERE a.ID_DEPARTMENTS = id_dep_
                  and a.DIST_DATE between startDate and stopDate
                ORDER BY a.dist_ind_id DESC;

EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_distr_index', '');
        RAISE_APPLICATION_ERROR (-20500, 'Запрос не выполнился. ' || SQLERRM);
END get_distr_index;


--
-- Выбор записанных распределений
--
 PROCEDURE get_prep_distr
(
   DIST_IND_ID_  in number,
   vClient       in number,
   cursor_       out ref_cursor
)
IS
   vOrders number;
   vDep    number;
   vDate   date;
   v_price_koef number;
BEGIN
   begin
       select ID_ORDERS, ID_DEPARTMENTS, DIST_DATE into vOrders, vDep, vDate from DISTRIBUTIONS_INDEX where DIST_IND_ID = DIST_IND_ID_;
   exception when no_data_found then
       vOrders := 0;
       vDep    := 0;
   end;

  -- достанем коэф. предыдущего прайса
   begin
      select profit_coeffitient*PRIME_COAST_COEFFICIENT*EXCHANGE_RATE into v_price_koef from (
        select * from prepare_price_list_index a
          where a.id_departments = vDep
            and pack_id is not null
            and ppl_date > vDate-10 and ppl_date < vDate
          order by a.ppl_date desc
      ) where rownum = 1;
   exception when no_data_found then
       v_price_koef := 1;
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
                    DECODE(a.INVOICE_DATA_ID, NULL, 'сток', 'инвойс') AS WHERE_FLOWER_IS
                    , nvl(b.nbutton,0) as nbutton, a.hol_sub_type , a.F_NAME_RU
                    --, case when a.INVOICE_DATA_ID is null then 0 else nvl(o.qq,0) end stock
                    --, case when a.INVOICE_DATA_ID is null then 0 else nvl(oa.qq,0) end allorder
                    , nvl(b.nbutton,0) || ': ' || a.hol_type as hol_type, vOrders as OrderID
                    ,o.qq as qq1, oa.qq as qq2
                    , pp.price * v_price_koef as itog_price
                FROM PREP_DIST_VIEW a, buttons_set b
                    , (select sum(ol.QUANTITY) as qq, ol.n_id
                        from orders_list ol, orders_clients oc, distributions_orders a
                        where ol.ID_ORDERS_CLIENTS = oc.ID_ORDERS_CLIENTS and oc.ID_ORDERS = a.order_id and a.dist_ind_id = DIST_IND_ID_ and oc.ID_CLIENTS = vClient and ol.active=1 and oc.active=1
                        group by ol.n_id
                      ) o
                    , (select sum(nvl(d.quantity,ol.QUANTITY)) as qq, nvl(d.n_id,ol.n_id) as n_id
                        from orders_list ol, orders_clients oc, distributions_orders a, DISTRIBUTIONS d
                        where ol.ID_ORDERS_CLIENTS = oc.ID_ORDERS_CLIENTS and oc.ID_ORDERS = a.order_id and a.dist_ind_id = DIST_IND_ID_ and ol.active=1 and oc.active=1
                           and oc.ID_CLIENTS not in (const_dir,const_main) -- 2015-06-22 На совещании решили, что на директора и МАЙН не разносить и даже их не показывать
                           and ol.id_orders_list = d.id_orders_list --and ol.n_id = d.n_id
                        group by nvl(d.n_id,ol.n_id)
                      ) oa
                    , (select max(id.PRICE_PER_UNIT) as price, id.INVOICE_DATA_ID from invoice_data id, distributions_invoices di where id.inv_id = di.inv_id and DIST_IND_ID = DIST_IND_ID_ group by id.INVOICE_DATA_ID ) pp
                WHERE a.DIST_IND_ID = DIST_IND_ID_
                    and a.n_id = o.n_id(+)
                    and a.n_id = oa.n_id(+)
                    and a.fst_id =  b.fst_id(+)
                    and a.INVOICE_DATA_ID = pp.INVOICE_DATA_ID(+)
                order by a.compiled_name_otdel||' '||a.colour
        ) z;
EXCEPTION
   WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_prep_distr', '');
        RAISE_APPLICATION_ERROR (-20501, 'Запрос не выполнился. ' || SQLERRM);
END get_prep_distr;


--
-- Создаем распределение
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
        RAISE_APPLICATION_ERROR (-20502, 'Запрос не выполнился. ' || SQLERRM);
end CREATE_DISTRIBUTION_INDEX;


--
-- Изменяем распределение
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
        RAISE_APPLICATION_ERROR (-20503, 'Запрос не выполнился. ' || SQLERRM);
end EDIT_DISTRIBUTION_INDEX;


--
--  Удаляем распределение
--
PROCEDURE DELETE_DISTRIBUTION_INDEX
(
  IN_DIST_IND_ID IN NUMBER
)
IS
begin

  DELETE FROM distributions_invoices WHERE DIST_IND_ID = IN_DIST_IND_ID;
  DELETE FROM distributions_orders WHERE DIST_IND_ID = IN_DIST_IND_ID;
  DELETE FROM DISTRIBUTIONS_INDEX WHERE DIST_IND_ID = IN_DIST_IND_ID;
  delete from numeration_seq where obj_id = IN_DIST_IND_ID and entity = 'distribution';
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.DELETE_DISTRIBUTION_INDEX', '');
        RAISE_APPLICATION_ERROR (-20504, 'Запрос не выполнился. ' || SQLERRM);
end DELETE_DISTRIBUTION_INDEX;


--
--  Подгружаем заказ в распределение
--
PROCEDURE SET_ORDER_TO_DISTRIBUTION
(
 IN_DIST_IND_ID IN NUMBER,
 IN_ID_ORDERS   IN NUMBER
)
IS
BEGIN

  INSERT INTO distributions_orders (DIST_IND_ID, order_id)
    VALUES (IN_DIST_IND_ID, IN_ID_ORDERS);

/*
  UPDATE DISTRIBUTIONS_INDEX             --Меняем номер заказа в распределении
     SET ID_ORDERS = IN_ID_ORDERS
   WHERE DIST_IND_ID = IN_DIST_IND_ID;

  DELETE FROM DISTRIBUTIONS              --Стираем все распределения строк этого заказа.
        WHERE (DIST_IND_ID = IN_DIST_IND_ID);

  UPDATE PREPARE_DISTRIBUTION            --Ставим остатки равными начальной сумме.
     SET LEFT_QUANTITY = TOTAL_QUANTITY
   WHERE DIST_IND_ID = IN_DIST_IND_ID;
*/
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.SET_ORDER_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20505, 'Запрос не выполнился. ' || SQLERRM);
END SET_ORDER_TO_DISTRIBUTION;



--
-- Выбор клиентов в заказе
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
        RAISE_APPLICATION_ERROR (-20506, 'Запрос не выполнился. ' || SQLERRM);
end get_order_list;


--
-- Выбор позиций во всем заказе
--
PROCEDURE get_goods
(
    DIST_IND_ID_  in number,
    --id_order_     in number,
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
                    case when max(c.INVOICE_DATA_ID) is NULL then 'Сток' else 'Инвойс'end end
             from DISTRIBUTION_VIEW c where c.DIST_IND_ID=DIST_IND_ID_ and a.n_id=c.o_n_id --group by INVOICE_DATA_ID
            ) as WHERE_FLOWER_IS
            */
            , 0 as nbutton

         FROM ORDERS_LIST_VIEW a, orders_clients b, distributions_orders d
              , (select nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER, o_n_id
                        , case when SUM(c.DQ) is null then null else case when max(c.INVOICE_DATA_ID) is NULL then 'Сток' else 'Инвойс'end end as WHERE_FLOWER_IS
                    from DISTRIBUTION_VIEW c where c.DIST_IND_ID=DIST_IND_ID_ group by c.o_n_id ) z
         where a.id_orders_clients = b.id_orders_clients
              and d.dist_ind_id = DIST_IND_ID_
              and b.id_orders = d.order_id
              and b.active=1
              and a.QUANTITY > 0
              --and a.fst_id = c.fst_id(+)
              and a.n_id=z.o_n_id(+)
              and (b.pack_ = 0 or const_office > 1)
              and b.ID_CLIENTS not in (const_dir,const_main) -- 2015-06-22 На совещании решили, что на директора и МАЙН не разносить и даже их не показывать

         group by a.N_ID, a.COMPILED_NAME, compiled_name_otdel, a.colour, a.zatirka,
                a.ord, a.hol_type, a.f_sub_type, a.f_type, /*c.nbutton,*/ a.F_NAME_RU, a.ft_id, z.DISTRIBUTED_NUMBER, z.WHERE_FLOWER_IS
                 --, c.dist_ind_id
         order by /*a.ord,*/ a.compiled_name_otdel||' '||a.colour;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_goods', '');
        RAISE_APPLICATION_ERROR (-20513, 'Запрос не выполнился. ' || SQLERRM);
end get_goods;


--
-- Грузим сток в распределение
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
      WHERE DIST_IND_ID = IN_DIST_IND_ID AND ID_STORE_MAIN IS NOT NULL and TOTAL_QUANTITY = LEFT_QUANTITY;
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
      and not exists ( select 1 from PREPARE_DISTRIBUTION z WHERE z.DIST_IND_ID = IN_DIST_IND_ID AND z.ID_STORE_MAIN IS NOT NULL and z.TOTAL_QUANTITY <> z.LEFT_QUANTITY and z.n_id = a.n_id )
  );

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.LOAD_STOCK_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20507, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Выгружаем сток из распределения
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
        RAISE_APPLICATION_ERROR (-20507, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Грузим инвойс в распределение
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
    select d.PREP_DIST_ID, i.invoice_data_id, i.units, convert_client(i.TO_CLIENT)
    from PREPARE_DISTRIBUTION d, invoice_data a, invoice_data i
    where d.dist_ind_id = IN_DIST_IND_ID
      and d.invoice_data_id = a.invoice_data_id
      and a.inv_id = i.inv_id and a.n_id = i.n_id
      and i.storned_data <> 1 and i.to_client is not null and i.to_client <> 'MAIN 1'
  );
--    select d.PREP_DIST_ID, a.invoice_data_id, a.units, convert_client(a.TO_CLIENT) from PREPARE_DISTRIBUTION d, invoice_data a, invoice_data b
--    where d.dist_ind_id = IN_DIST_IND_ID and a.inv_id = b.inv_id and a.n_id = b.n_id and b.invoice_data_id = d.invoice_data_id and a.storned_data <> 1 and a.to_client is not null and a.to_client <> 'MAIN 1'

  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.LOAD_INVOICE_TO_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20508, 'Запрос не выполнился. ' || SQLERRM);
end;


/*
function orders_can_deleted
(
  in_to_client  in varchar2
) RETURN number
is
  v_id_client number;
  cnt number;
BEGIN

DISTRIBUTIONS
  return v_id_client;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.convert_client', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20508, 'Запрос не выполнился. ' || SQLERRM);
end convert_client;
*/


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

--LOG_ERR('поиск клиента', 1, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client||' in_to_client='||in_to_client);

  SELECT count(*) into cnt
  FROM clients a
  where instr(in_to_client, a.nick) > 0 and rownum = 1;
--LOG_ERR('поиск клиента', 2, 'distribution_pkg.convert_client', 'cnt='||cnt);

  if cnt > 0 then
    SELECT a.id_clients into v_id_client
    FROM clients a
    where instr(in_to_client, a.nick) > 0 and rownum = 1;
--LOG_ERR('поиск клиента', 31, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client);
  else
    SELECT count(*) into cnt
    FROM old_client_map a
    where instr(a.old_client, in_to_client) > 0 and rownum = 1;
--LOG_ERR('поиск клиента', 32, 'distribution_pkg.convert_client', 'cnt='||cnt);

    if cnt > 0 then
      SELECT a.id_client into v_id_client
      FROM old_client_map a
      where instr(a.old_client, in_to_client) > 0 and rownum = 1;
--LOG_ERR('поиск клиента', 33, 'distribution_pkg.convert_client', 'v_id_client='||v_id_client);
    end if;
  end if;

  return v_id_client;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.convert_client', DBMS_UTILITY.format_error_backtrace);
        RAISE_APPLICATION_ERROR (-20508, 'Запрос не выполнился. ' || SQLERRM);
end convert_client;


--
--  Автоматическая разноска
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
  ID_ORDERS_I     NUMBER;                      --ID Заказа
  ROW_COUNT       NUMBER;
  ORDER_ID_NULL   EXCEPTION;

  cursor sel_invoices_pack is
    select distinct d.PREP_DIST_ID, b.n_id, b.units, b.invoice_data_id
    from PREPARE_DISTRIBUTION d, PREPARE_DISTRIBUTION_TREE a, invoice_data b
    where d.dist_ind_id = IN_DIST_IND_ID and d.PREP_DIST_ID = a.PREP_DIST_ID and a.invoice_data_id = b.invoice_data_id and b.storned_data = 0 and b.TO_CLIENT is not null
    ;
  SIP_REC sel_invoices_pack%ROWTYPE;

  CURSOR SEL_ORDER_LIST (ID_ORD NUMBER) IS --Курсор для строчек заказа
    SELECT a.ID_ORDERS_LIST, a.N_ID, a.QUANTITY, a.ID_ORDERS_CLIENTS, a.TRUCK, a.WEIGHT
    FROM ORDERS_LIST_VIEW a, ORDERS_CLIENTS b, distributions_orders o
    where b.id_orders = o.order_id
        and o.dist_ind_id = IN_DIST_IND_ID
        and b.id_orders_clients = a.id_orders_clients
        and b.active = 1
        and b.n_type <> 2
        and a.quantity > 0
        --and b.pack_ = 0
        and (b.pack_ = 0 or const_office > 1)
        and b.ID_CLIENTS not in (const_dir,const_main)  -- 2015-06-22 На совещании решили, что на директора и МАЙН не разносить и даже их не показывать
    order by b.priority, decode(b.id_clients,inStok,99,1), decode(b.ID_CLIENTS,const_dir,98,const_main,99,1)
    ;
  SOL_REC SEL_ORDER_LIST%ROWTYPE;

  CURSOR SEL_PREP_DIST (N_ID_I NUMBER) IS --Курсор для распределяемых цветов
    SELECT p.PREP_DIST_ID, p.DIST_IND_ID, p.N_ID, p.INVOICE_DATA_ID, p.ID_STORE_MAIN, p.TOTAL_QUANTITY, p.LEFT_QUANTITY
    FROM PREP_DIST_VIEW p
        WHERE  p.DIST_IND_ID = IN_DIST_IND_ID
            AND p.LEFT_QUANTITY > 0
            AND p.N_ID = N_ID_I
         ORDER BY p.INVOICE_DATA_ID, p.ID_STORE_MAIN;

  SPD_REC SEL_PREP_DIST%ROWTYPE;

begin
  OUT_TEXT := '';

--проверки----------------------------------------------------------------------
  BEGIN
      --SELECT count(ID_ORDERS) INTO ID_ORDERS_I FROM DISTRIBUTIONS_INDEX WHERE DIST_IND_ID = IN_DIST_IND_ID;
      SELECT count(a.order_id) INTO ID_ORDERS_I FROM distributions_orders a where a.dist_ind_id = IN_DIST_IND_ID;

      IF ID_ORDERS_I IS NULL THEN
        RAISE ORDER_ID_NULL;
      END IF;
  EXCEPTION
      WHEN ORDER_ID_NULL THEN
        OUT_TEXT := 'У распределения не назначен заказ!';
        GOTO LAST_STEP;
      WHEN OTHERS THEN
        OUT_TEXT := 'Передан идентификатор несуществующего распределения!';
        GOTO LAST_STEP;
  END;

  SELECT COUNT(*) INTO ROW_COUNT FROM ORDERS_LIST_VIEW a, ORDERS_CLIENTS b, distributions_orders o WHERE o.dist_ind_id = IN_DIST_IND_ID and b.id_orders = o.order_id and a.id_orders_clients = b.id_orders_clients;
  IF ROW_COUNT = 0 THEN
    OUT_TEXT := 'В заказе нет ни одной строчки!';
    GOTO LAST_STEP;
  END IF;

  SELECT COUNT(*) INTO ROW_COUNT FROM PREP_DIST_VIEW WHERE DIST_IND_ID = IN_DIST_IND_ID;
  IF ROW_COUNT = 0 THEN
--    RET_CODE := -1;
    OUT_TEXT := 'В распределении нет строчек для распределения!';
    GOTO LAST_STEP;
  END IF;
--------------------------------------------------------------------------------

  if const_office = 1 then
    OPEN sel_invoices_pack;
    LOOP
      FETCH sel_invoices_pack INTO SIP_REC;

      IF sel_invoices_pack%NOTFOUND THEN
        EXIT;
      END IF;

      -- Заводим разноску
      CREATE_DISTRIB_LINE_BY_INV(SIP_REC.PREP_DIST_ID, SIP_REC.n_id, SIP_REC.units, SIP_REC.invoice_data_id);
    END LOOP;
    CLOSE sel_invoices_pack;
  end if;


  OPEN SEL_ORDER_LIST(ID_ORDERS_I);
  LOOP
    FETCH SEL_ORDER_LIST INTO SOL_REC;

    IF SEL_ORDER_LIST%NOTFOUND THEN    -- Больше уж и делать нечего
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

      IF SEL_PREP_DIST%NOTFOUND THEN    -- Нет такой номенклатуры для распределения.
        EXIT;
      END IF;

      -- Заводим разноску
      CREATE_DISTRIBUTION_LINE(SPD_REC.PREP_DIST_ID, SOL_REC.ID_ORDERS_LIST, in_is_pack);

    END LOOP;
    CLOSE SEL_PREP_DIST;
  END LOOP;
  CLOSE SEL_ORDER_LIST;

  OUT_TEXT := 'Разноска прошла успешно.';
  commit;

  <<LAST_STEP>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.PROCEED_AUTOMATIC_DISTRIBUTION', '');
        RAISE_APPLICATION_ERROR (-20509, 'Запрос не выполнился. ' || SQLERRM);
end PROCEED_AUTOMATIC_DISTRIBUTION;



--
--  Добавляем запись в разноску по АВТОразноске
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
  INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST, invoice_data_id)
         VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, in_units, IN_PREP_DIST_ID, null, in_invoice_data_id);

  UPDATE PREPARE_DISTRIBUTION
    SET LEFT_QUANTITY = LEFT_QUANTITY - in_units
                WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
end if;

--  <<THE_END>>
--  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIB_LINE_BY_INV', '');
        RAISE_APPLICATION_ERROR (-20512, 'Запрос не выполнился. ' || SQLERRM);
END CREATE_DISTRIB_LINE_BY_INV;


--
-- Добавляем запись в разноску вручную
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

  -- Удаляем запись если 0
--  if IN_QUANTITY = 0 then
--     DELETE_DIST_LINE(IN_DIST_ID);
--  else
    -- Пытаемся найти уже существующую запись
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
-- Добавляем запись в разноску
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
      OUT_TEXT := 'Неправильно указана строка подготовленного распределения!';
      GOTO THE_END;
  END;

  BEGIN
    SELECT QUANTITY INTO QUA_ORD
      FROM ORDERS_LIST_VIEW
                 WHERE ID_ORDERS_LIST = IN_ID_ORDERS_LIST;
  EXCEPTION
    WHEN OTHERS THEN
      OUT_RES := -1;
      OUT_TEXT := 'Неправильно указана строка заказа!';
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
  OUT_TEXT := 'Операция прошла успешно!';
  commit;

  <<THE_END>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_CUSTOM_DIST_LINE', '');
        RAISE_APPLICATION_ERROR (-20510, 'Запрос не выполнился. ' || SQLERRM);
END CREATE_CUSTOM_DIST_LINE;


--
-- Удаляем запись из разноски
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
        RAISE_APPLICATION_ERROR (-20511, 'Запрос не выполнился. ' || SQLERRM);
END DELETE_DIST_LINE;



--
-- Добавляем запись в разноску по АВТОразноске
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

-- Найдем все данные по инвойсу по этой позиции и попробуем найти клиента с ним совпадающего. Проверим кол-во инвойса и заказа.
-- Логика такая, что необходимо упакованному клиенту разнести столько, сколько положиди в инвойсе, не смотря на заказ
-- полученная QUA_PR должна быть скорректированна значением в инвойсе
/*
  if isPack = 1 then
      select sum(a.invoice_count) into cnt
      from PREPARE_DISTRIBUTION_TREE a, invoice_data c
      where a.prep_dist_id = IN_PREP_DIST_ID and a.order_count = idOrdCl and a.invoice_data_id = c.invoice_data_id and c.to_client is not null and c.storned_data = 0 --and a.invoice_count <> QUA_ORD
      ;
*/
--LOG_ERR('проверка упакованности клиента', 1, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', 'cnt='||cnt);
/*
    if cnt > 0 then
      select sum(a.invoice_count) into QUA_ORD
      from PREPARE_DISTRIBUTION_TREE a, invoice_data c
      where a.prep_dist_id = IN_PREP_DIST_ID and a.order_count = idOrdCl and a.invoice_data_id = c.invoice_data_id and c.to_client is not null and c.storned_data = 0 --and a.invoice_count <> QUA_ORD
      ;
    end if;
*/
/*
    if cnt <> QUA_ORD and cnt > 0 then QUA_ORD := cnt; end if;
--LOG_ERR('достанем кол-во с инвойса', 2, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', 'QUA_ORD='||QUA_ORD);

  end if;
*/


  if QUA_PR > 0 then
    -- сделаем проверку на кратность
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

    INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST, invoice_data_id)
           VALUES (DIST_IND_ID_PR, NEXT_DIST_ID, N_ID_PR, QUA, IN_PREP_DIST_ID, IN_ID_ORDERS_LIST, null);

    UPDATE PREPARE_DISTRIBUTION
      SET LEFT_QUANTITY = LEFT_QUANTITY - QUA
                  WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
  end if;

  <<THE_END>>
  NULL;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_DISTRIBUTION_LINE', '');
        RAISE_APPLICATION_ERROR (-20512, 'Запрос не выполнился. ' || SQLERRM);
END CREATE_DISTRIBUTION_LINE;


--
-- Выбор клиентов в заказе по цветку
--
PROCEDURE get_order_list_nid
(
  --id_order_     in number,
  n_id_         in number,
  dist_ind_id_  in number,
  cursor_               out ref_cursor
)
IS
BEGIN
  open cursor_ for
     SELECT a.ID_ORDERS_CLIENTS, a.ID_ORDERS, a.ID_CLIENTS, a.N_TRUCK, a.CAPACITY, a.D_DATE, a.pack_, a.alpha,
            a.N_TYPE, a.STATUS, a.ON_DATE, b.NICK || ' ' || a.alpha as NICK, b.FIO, a.id_orders_clients as id_orders_clients_,
            c.n_id, c.quantity
            , c.zatirka, c.id_orders_list, d.full_name, d.great_name, d.great_name_f, d.compiled_name_otdel||' '||d.colour as compiled_name_otdel_ord,
            case when (e.INVOICE_DATA_ID is NULL and e.DQ > 0) then 1 else 0 end is_stock,
            nvl(e.dq,0) as dq, case when e.DQ is null then 0 else 1 end dq_check,
            e.great_name as great_name2, e.great_name_f as great_name_f2, e.dist_id, e.compiled_name_otdel||' '||e.colour as compiled_name_otdel,
            (
              select nvl(SUM(o.DQ),0) from DISTRIBUTION_VIEW o where o.DIST_IND_ID = dist_ind_id_ and c.n_id=o.o_n_id AND o.id_clients = a.id_clients
            ) as DISTRIBUTED_NUMBER
            , e.PREP_DIST_ID, e.D_N_ID
            , a.priority
            , w.DIST_WEBSHOP_ID
     FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, distributions_orders z, distributions_webshop w
     WHERE z.dist_ind_id = dist_ind_id_
         and a.id_orders = z.order_id -- id_order_
         and a.active = 1
         --and a.pack_ = 0
         and (a.pack_ = 0 or const_office > 1)
         and decode(a.ID_CLIENTS,const_dir,const_main,a.ID_CLIENTS) = b.ID_CLIENTS
         --and a.ID_CLIENTS = b.ID_CLIENTS
         and a.id_orders_clients = c.id_orders_clients
         and (c.n_id = n_id_ or n_id_ = 0)
         and c.n_id = d.n_id
         and c.quantity > 0
         and a.ID_CLIENTS not in (const_dir,const_main) -- 2015-06-22 На совещании решили, что на директора и МАЙН не разносить и даже их не показывать
         and c.active = 1
         and c.id_orders_list = e.id_orders_list(+)
         and e.dist_ind_id(+) = dist_ind_id_
         and w.n_id = c.n_id(+) and w.DIST_IND_ID = z.dist_ind_id(+)
      order by a.priority, decode(a.pack_,1,1,2), decode(a.ID_CLIENTS,const_dir,98,const_main,99,1), NICK;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_order_list_nid', '');
        RAISE_APPLICATION_ERROR (-20514, 'Запрос не выполнился. ' || SQLERRM);
end get_order_list_nid;




--
-- Удаляем запись из разноски
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
        RAISE_APPLICATION_ERROR (-20516, 'Запрос не выполнился. ' || SQLERRM);
END DELETE_DIST_LINE_NID;



--
-- Печать кубиков
--
PROCEDURE get_kubik_print
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- сток не входит в печать кубиков
  cursor_       out ref_cursor
)
IS
BEGIN
    open cursor_ for
      select * from (
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.hol_type, d.compiled_name_otdel, t.ord,
               case when nvl(sum(e.dq),0) = c.quantity then 1 else 0 end dq_check, sum(nvl(e.dq,0)) as oq
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, hol_types t, distributions_orders z
        WHERE z.dist_ind_id = dist_ind_id_
              and a.id_orders = z.order_id
              and a.active = 1
              --and a.pack_ <> 1
              and (a.pack_ <> 1 or const_office > 1)
              and a.id_clients <> vMain
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.n_id = d.n_id
              and c.active = 1
              and c.quantity > 0
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
        RAISE_APPLICATION_ERROR (-20517, 'Запрос не выполнился. ' || SQLERRM);
END get_kubik_print;


--
-- Печать кубиков после разноски (для регионов)
--
PROCEDURE get_kubik_print2
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number, -- сток не входит в печать кубиков
  cursor_       out ref_cursor
)
IS
BEGIN
    open cursor_ for
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, c.quantity, c.zatirka, d.full_name, d.hol_type
                , nvl(new_d.compiled_name_otdel,d.compiled_name_otdel) compiled_name_otdel, t.ord,
               case when nvl(sum(e.dq),0) = c.quantity then 1 else 0 end dq_check, sum(nvl(e.dq,0)) as oq
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, hol_types t, nomenclature_mat_view new_d, distributions_orders z
        WHERE z.dist_ind_id = dist_ind_id_
              and a.id_orders = z.order_id
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
        RAISE_APPLICATION_ERROR (-20517, 'Запрос не выполнился. ' || SQLERRM);
END get_kubik_print2;



--
-- Печать разноски по товару часть 1 (по клиенту)
--
PROCEDURE get_print_p1
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- Определяем СТОК
  vSupplier     in number,
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

  delete from tmp_exp_doc;
  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(vFT_ID) as number_list_type)) );

  open cursor_ for
    select a.* from (
--      SELECT 1 as prime, e.PREP_DIST_ID, a.pack_, nvl(trim(nvl(inv.nick,b.NICK) || ' ' || a.alpha),'MAIN 1') as NICK, nvl(nvl(inv.fio,b.FIO),'ОБЩИЙ ЗАКАЗ (MAIN 1)') as FIO, c.n_id
      SELECT 1 as prime, e.PREP_DIST_ID, a.pack_, nvl(trim(b.nick || ' ' || a.alpha),'MAIN 1') as NICK, nvl(b.FIO,'ОБЩИЙ ЗАКАЗ (MAIN 1)') as FIO, c.n_id
            , inv_nom.compiled_name_otdel, nvl(e.QUANTITY,z.TOTAL_QUANTITY) as dq, nvl(c.QUANTITY, z.LEFT_QUANTITY) as OQ, z.hol_type
            , ord_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type
            , t.ord, z.s_name_ru
        FROM PREP_DIST_VIEW z
          --inner join distributions_orders doo on doo.dist_ind_id = z.DIST_IND_ID
          left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join DISTRIBUTIONS e on e.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join orders_list c on c.id_orders_list = e.id_orders_list
          left outer join NOMENCLATURE_MAT_VIEW ord_nom on ord_nom.n_id = c.N_ID
          left outer join ORDERS_CLIENTS a on /*a.id_orders = doo.order_id and*/ a.active = 1 and a.id_orders_clients = c.id_orders_clients
          left outer join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
          left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
          left outer join invoice_data i on i.invoice_data_id = e.invoice_data_id
          left outer join CLIENTS inv on inv.nick = i.to_client
          inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = dist_ind_id_
          --and z.invoice_data_id is not null
          and inv.id_clients is null
          and (z.ft_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or NVL(LENGTH(vFT_ID), 0) = 0)
          and (inv_nom.s_id = vSupplier or vSupplier = 0)

      union all

      SELECT 2 as prime, 0 as PREP_DIST_ID, 0 as pack_, 'MAIN 1' as NICK, 'ОБЩИЙ ЗАКАЗ (MAIN 1)' as FIO, z.n_id
            , inv_nom.compiled_name_otdel, z.LEFT_QUANTITY as dq,  z.LEFT_QUANTITY as OQ, z.hol_type
            , inv_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type, t.ord, z.s_name_ru
        FROM PREP_DIST_VIEW z
          left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
          inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = dist_ind_id_ and z.invoice_data_id is not null
           and (z.ft_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or NVL(LENGTH(vFT_ID), 0) = 0)
           and z.left_quantity > 0
           and (inv_nom.s_id = vSupplier or vSupplier = 0)
    ) a
    order by a.prime, a.nick, a.ord, a.s_name_ru, a.compiled_name_otdel
    ;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_p1', str);
        RAISE_APPLICATION_ERROR (-20518, 'Запрос не выполнился. ' || SQLERRM);
END; -- get_print_p1



--
-- Печать разноски по товару часть 1 (по товару)
--
PROCEDURE get_print_p2
(
--  id_order_     in number,
  dist_ind_id_  in number,
  vFT_ID        in varchar2,
  vMain         in number, -- Определяем СТОК
  vSupplier     in number,
  cursor_       out ref_cursor
)
IS
 str varchar2(2024);
 vNick varchar2(10);
 vFIO varchar2(200);
BEGIN
  select FIO, NICK into vFIO, vNick from clients where id_clients = vMain;

  delete from tmp_exp_doc;
  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(vFT_ID) as number_list_type)) );

  open cursor_ for
    select a.* from (
      SELECT 1 as prime, e.PREP_DIST_ID, a.pack_, nvl(trim(nvl(inv.nick,b.NICK) || ' ' || a.alpha),'MAIN 1') as NICK, nvl(nvl(inv.fio,b.FIO),'ОБЩИЙ ЗАКАЗ (MAIN 1)') as FIO, c.n_id
            , inv_nom.compiled_name_otdel, nvl(e.QUANTITY,z.TOTAL_QUANTITY) as dq, nvl(c.QUANTITY, z.LEFT_QUANTITY) as OQ, z.hol_type
            , ord_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type
            , t.ord, z.s_name_ru
        FROM PREP_DIST_VIEW z
          --inner join distributions_orders doo on doo.dist_ind_id = z.DIST_IND_ID
          left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join DISTRIBUTIONS e on e.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join orders_list c on c.id_orders_list = e.id_orders_list
          left outer join NOMENCLATURE_MAT_VIEW ord_nom on ord_nom.n_id = c.N_ID
          left outer join ORDERS_CLIENTS a on /*a.id_orders = doo.order_id and*/ a.active = 1 and a.id_orders_clients = c.id_orders_clients
          left outer join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
          left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
          left outer join invoice_data i on i.invoice_data_id = e.invoice_data_id
          left outer join CLIENTS inv on inv.nick = i.to_client
          inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = dist_ind_id_
          --and z.invoice_data_id is not null
          and inv.id_clients is null
          and (z.ft_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or NVL(LENGTH(vFT_ID), 0) = 0)
          and (inv_nom.s_id = vSupplier or vSupplier = 0)

      union all

      SELECT 2 as prime, 0 as PREP_DIST_ID, 0 as pack_, 'MAIN 1' as NICK, 'ОБЩИЙ ЗАКАЗ (MAIN 1)' as FIO, z.n_id
            , inv_nom.compiled_name_otdel, z.LEFT_QUANTITY as dq,  z.LEFT_QUANTITY as OQ, z.hol_type
            , inv_nom.compiled_name_otdel order_compiled_name_otdel
            , p.invoice_data_id, p.id_store_main, inv_nom.f_type, t.ord, z.s_name_ru
        FROM PREP_DIST_VIEW z
          left outer join PREPARE_DISTRIBUTION p on p.PREP_DIST_ID = z.PREP_DIST_ID
          left outer join HOL_TYPES t on upper(t.hol_type) = upper(z.hol_type)
          inner join NOMENCLATURE_MAT_VIEW inv_nom on inv_nom.n_id = z.N_ID
        WHERE z.dist_ind_id = dist_ind_id_ and z.invoice_data_id is not null
           and (z.ft_id in (SELECT ID_DOC FROM TMP_EXP_DOC) or NVL(LENGTH(vFT_ID), 0) = 0)
           and z.left_quantity > 0
           and (inv_nom.s_id = vSupplier or vSupplier = 0)
    ) a
    order by a.ord, a.s_name_ru, a.compiled_name_otdel, a.prime, a.nick
    ;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_print_p2', str);
        RAISE_APPLICATION_ERROR (-20518, 'Запрос не выполнился. ' || SQLERRM);
END; -- get_print_p2



--
-- Печать клиентских заказов
--
PROCEDURE get_print_client
(
--  id_order_     in number,
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
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, DISTRIBUTION_VIEW e, NOMENCLATURE_MAT_VIEW new_d, HOL_TYPES t, distributions_orders z
        WHERE z.dist_ind_id = dist_ind_id_
              and a.id_orders = z.order_id
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
        RAISE_APPLICATION_ERROR (-20518, 'Запрос не выполнился. ' || SQLERRM);
end get_print_client;



--
-- Печать клиентских заказов (предварительный инвойс)
--
PROCEDURE get_print_client_invoice
(
  id_order_     in number,
  dist_ind_id_  in number,
  cursor_       out ref_cursor
)
IS
BEGIN
/*
!!!!!!!!!!!!!
Такой запрос не дает инвойс для упакованных. Строить инвойсы надо через client_stat_item
!!!!!!!!!!!!!
*/
  open cursor_ for
        SELECT a.pack_, b.NICK || ' ' || a.alpha as NICK, b.FIO, c.n_id, e.invoice_data_id, e.id_store_main
            , nvl(e.dq,c.quantity) as dq, e.OQ, e.hol_type
            , e.D_N_ID as new_nid, nom.compiled_name_otdel as old_flower
            , case when new_d.compiled_name_otdel = nom.compiled_name_otdel then null when e.compiled_name_otdel is null then 'товар отсутствует' when new_d.compiled_name_otdel <> nom.compiled_name_otdel and new_d.compiled_name_otdel is not null then new_d.compiled_name_otdel end compiled_name_otdel
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
        RAISE_APPLICATION_ERROR (-20518, 'Запрос не выполнился. ' || SQLERRM);
end get_print_client_invoice;




--
-- Создание броней на каждого клиента
--
PROCEDURE make_reserv
(
  id_order_     in number,
  dist_ind_id_  in number,
  vMain         in number -- сток не входит в бронь
)
IS
  vNewReserv number;
  vCurClient number;
  idd        number;

  vOrderNum  number;
  vOrderDate date;

  vComments  varchar2(1000);

  vPPLI_ID   number;

  cursor c_list is
        SELECT distinct b.id_clients, b.NICK, b.FIO, max(DATE_TRUCK) as DATE_TRUCK, ID_DEPARTMENTS
        FROM ORDERS_CLIENTS a
          inner join CLIENTS b on b.ID_CLIENTS = a.ID_CLIENTS
          inner join orders o on o.id_orders = a.id_orders
          inner join DISTRIBUTIONS_ORDERS d on d.order_id = o.id_orders and d.DIST_IND_ID = dist_ind_id_
          left outer join numeration_seq s on s.obj_id = O.ID_ORDERS and s.entity = 'order'
        WHERE --a.id_orders = id_order_ and
              a.active = 1
              and a.id_clients <> vMain
              and (a.pack_ = 0 or const_office > 1)
              and exists (select 1 from orders_list z where z.id_orders_clients = a.id_orders_clients)
              and a.id_clients not in (const_dir,const_main)
        group by b.id_clients, b.NICK, b.FIO, ID_DEPARTMENTS
        ;

  CURSOR data_temp IS
    select a.n_id, sum(a.quantity) as quantity, sum(a.OQ) as OQ, a.price
    from (
        SELECT e.D_N_ID as n_id, e.dq as quantity, e.OQ, nvl(pc.spec_price,p.price) as price
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, DISTRIBUTION_VIEW e, price_list p, DISTRIBUTIONS_ORDERS d, ppl_client_price pc
        WHERE --a.id_orders = id_order_ and
              a.active = 1
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.id_orders_list = e.id_orders_list
              and e.dist_ind_id = dist_ind_id_
              and a.id_clients = vCurClient
              and e.D_N_ID = p.n_id(+)
              and a.id_clients not in (const_dir,const_main)
              and d.order_id = a.id_orders and d.DIST_IND_ID = e.dist_ind_id
              and e.D_N_ID = pc.n_id(+) and e.id_clients = pc.id_clients(+) and vPPLI_ID = pc.ppli_id(+)
    ) a
    group by a.n_id, a.price
    ;


  cursor c_list_packed is
    select distinct 0 as id_orders_clients, c.id_clients, c.NICK, c.FIO, o.DATE_TRUCK, z.ID_DEPARTMENTS, nvl(s.outer_id, O.ID_ORDERS) as order_seq
      FROM distributions_index z
        inner join (
          SELECT distinct a.dist_ind_id, a.prep_dist_id, inv.to_client as nick
            FROM prepare_distribution a
            inner join distributions b on b.prep_dist_id = a.prep_dist_id and b.invoice_data_id is not null
            inner join invoice_data inv on inv.invoice_data_id = b.invoice_data_id
              where a.dist_ind_id = dist_ind_id_
        ) s on s.dist_ind_id = z.dist_ind_id
        inner join distributions b on b.prep_dist_id = s.prep_dist_id and b.invoice_data_id is not null
        inner join invoice_data inv on inv.invoice_data_id = b.invoice_data_id and inv.to_client is not null
        inner join DISTRIBUTIONS_ORDERS d on d.DIST_IND_ID = z.dist_ind_id
        inner join orders o on o.id_orders = d.order_id
        left outer join numeration_seq s on s.obj_id = O.ID_ORDERS and s.entity = 'order'
        inner join clients c on c.nick = s.nick
    ;

  CURSOR data_temp_packed IS
    select a.n_id, sum(a.quantity) as quantity, sum(a.dq) as dq, a.price
    from (
      SELECT distinct a.n_id, inv.UNITS as quantity, b.quantity as dq, nvl(pp.SPEC_PRICE,p.price) price
        FROM prepare_distribution a
        inner join distributions b on b.prep_dist_id = a.prep_dist_id and b.invoice_data_id is not null
        inner join price_list p on p.n_id = a.n_id
        inner join invoice_data inv on inv.invoice_data_id = b.invoice_data_id
        inner join clients c on c.nick = inv.to_client and c.id_clients = vCurClient
        left outer join ppl_client_price pp on pp.n_id = a.n_id and pp.INVOICE_DATA_ID = inv.INVOICE_DATA_ID
          where a.dist_ind_id = dist_ind_id_
    ) a
    group by a.n_id, a.price
    ;


begin
  begin
    -- найдем прайс по инвосам разноса для добычи клиентских отдельных цен
    select ppli_id into vPPLI_ID from (
      select distinct p.ppli_id
      from distributions_invoices a, prepare_price_list_index p, invoice_register r
      where a.dist_ind_id = dist_ind_id_ and a.inv_id = r.inv_id and (r.inv_id = p.inv_id or r.ipp_id = p.pack_id)
    ) where rownum = 1
    ;
  EXCEPTION
    WHEN no_data_found THEN
      vPPLI_ID := 0;
  end;

  -- 2015-06-17 Удалим предыдущие брони
/* old version
2016-06-13
    select nvl(s.outer_id, O.ID_ORDERS) as order_seq, DATE_TRUCK into vOrderNum, vOrderDate
    from orders o
      left outer join numeration_seq s on s.obj_id = O.ID_ORDERS and s.entity = 'order'
    WHERE id_orders = id_order_;

    update store_main s set date_change=sysdate, reserv = reserv - (
      select sum(quantity) from orders_list ol, orders_clients oc where ol.id_orders_clients = oc.id_orders_clients and ol.n_id = s.n_id and oc.info = 'По заказу №'||vOrderNum||' от '||vOrderDate
    )
    where n_id in (
      select distinct n_id
      from orders_list ol, orders_clients oc
      where ol.id_orders_clients = oc.id_orders_clients and oc.info = 'По заказу №'||vOrderNum||' от '||vOrderDate
    );

    delete from ORDERS_LIST ol where ol.id_orders_clients in ( select oc.id_orders_clients from orders_clients oc where oc.info = 'По заказу №'||vOrderNum||' от '||vOrderDate );
    delete from orders_clients where info = 'По заказу №'||vOrderNum||' от '||vOrderDate;
*/


    execute immediate 'select ''По заказу №''||wm_concat(distinct nvl(s.outer_id, O.ID_ORDERS) )||'' от ''|| wm_concat(distinct DATE_TRUCK)
    from orders o
      left outer join numeration_seq s on s.obj_id = O.ID_ORDERS and s.entity = ''order''
      inner join DISTRIBUTIONS_ORDERS d on d.order_id = o.id_orders and d.DIST_IND_ID = :dist_ind_id_
      group by  d.DIST_IND_ID'
    into vComments using dist_ind_id_;

    update store_main s set date_change=sysdate, reserv = reserv - (
      select sum(quantity) from orders_list ol, orders_clients oc where ol.id_orders_clients = oc.id_orders_clients and ol.n_id = s.n_id and oc.info = vComments
    )
    where n_id in (
      select distinct n_id
      from orders_list ol, orders_clients oc
      where ol.id_orders_clients = oc.id_orders_clients and oc.info = vComments
    );
    delete from ORDERS_LIST ol where ol.id_orders_clients in ( select oc.id_orders_clients from orders_clients oc where oc.info = vComments );
    delete from orders_clients where info = vComments;


  -- Вставляем брони для простых клиентов в заказе
  FOR c_list_cursor IN c_list LOOP
    vNewReserv := 0;

    sales_pkg.RESERV_NEW(
        vNewReserv,
        c_list_cursor.id_clients,
        c_list_cursor.DATE_TRUCK,
        1, 0,
        c_list_cursor.ID_DEPARTMENTS
    );
    update ORDERS_CLIENTS set info = vComments, in_file = dist_ind_id_ --'По заказу №'||c_list_cursor.order_seq||' от '||c_list_cursor.DATE_TRUCK
    where ID_ORDERS_CLIENTS = vNewReserv;

    vCurClient := c_list_cursor.id_clients;

    FOR data_temp_cursor IN data_temp LOOP
        SELECT get_office_unique('ORDERS_LIST_SEQ') INTO idd FROM DUAL;

        INSERT INTO ORDERS_LIST
        VALUES(idd, data_temp_cursor.N_ID, data_temp_cursor.QUANTITY, vNewReserv, null, null, 1, 0, data_temp_cursor.PRICE, 1, const_office, sysdate, null, 1, null, 0, null);

        UPDATE STORE_MAIN SET RESERV = RESERV + data_temp_cursor.QUANTITY, date_change=sysdate
        WHERE n_id = data_temp_cursor.N_ID and store_type = 1 and id_office = const_office;
    end loop;
  end loop;


  -- Вставляем брони для УПАКОВАННЫХ клиентов в заказе
  FOR c_list_packed_cursor IN c_list_packed LOOP
    vNewReserv := 0;

    sales_pkg.RESERV_NEW(
        vNewReserv,
        c_list_packed_cursor.id_clients,
        c_list_packed_cursor.DATE_TRUCK,
        1, 0,
        c_list_packed_cursor.ID_DEPARTMENTS
    );
    update ORDERS_CLIENTS set info = 'По заказу №'||c_list_packed_cursor.order_seq||' от '||c_list_packed_cursor.DATE_TRUCK where ID_ORDERS_CLIENTS = vNewReserv;

    vCurClient := c_list_packed_cursor.id_clients;

    FOR data_temp_packed_cursor IN data_temp_packed LOOP
        SELECT get_office_unique('ORDERS_LIST_SEQ') INTO idd FROM DUAL;

        INSERT INTO ORDERS_LIST
        VALUES(idd, data_temp_packed_cursor.N_ID, data_temp_packed_cursor.QUANTITY, vNewReserv, null, null, 1, 0, data_temp_packed_cursor.PRICE, 1, const_office, sysdate, null, 1, null, 0, null);

        UPDATE STORE_MAIN SET RESERV = RESERV + data_temp_packed_cursor.QUANTITY, date_change=sysdate
        WHERE n_id = data_temp_packed_cursor.N_ID and store_type = 1 and id_office = const_office;
    end loop;
  end loop;


  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.make_reserv', '');
        RAISE_APPLICATION_ERROR (-20518, 'Запрос не выполнился. ' || SQLERRM);
end make_reserv;


--
-- Подгружаем неразнесенные заказы
--
PROCEDURE load_order
(
   id_dep_       in number,
   cursor_       out ref_cursor
)
IS
BEGIN
  open cursor_ for
      SELECT a.ID_ORDERS, nvl(s.OUTER_ID,a.ID_ORDERS) || ' : ' || a.ID_ORDERS || ' : ' || (TO_CHAR(DATE_TRUCK_OUT,'DD.MM.YYYY')) || ' : ' || (select count(id_orders_clients) from orders_clients where active = 1 and id_orders=a.ID_ORDERS) || ' : ' || b.s_name_ru ||' : '|| INFO  as ORDER_TITLE
         FROM ORDERS a
           left outer join suppliers b on b.s_id = a.s_id
           left outer join numeration_seq s on s.ENTITY = 'order' and s.OBJ_ID = a.ID_ORDERS
         WHERE a.ID_DEPARTMENTS = id_dep_ and N_TYPE = 0 and a.active=1
           and not exists (select 1 from distributions_orders b where b.order_id = a.id_orders)
           and a.date_truck_out between sysdate - 10 and sysdate + 10
--           and a.date_truck_out > sysdate - 30
         ORDER BY DATE_TRUCK_OUT desc, s_name_ru;
--         ORDER BY ID_ORDERS DESC;

/* 2015-07-07 По просьбе Ковалева поменя формат
      SELECT a.ID_ORDERS, a.ID_ORDERS || ' : ' || (TO_CHAR(DATE_TRUCK_OUT,'DD.MM.YYYY')) || ' ' || INFO ORDER_TITLE
         FROM ORDERS a --, DISTRIBUTIONS_INDEX b
         WHERE a.ID_DEPARTMENTS = id_dep_ and N_TYPE = 0 and a.active=1
         and not exists (select 1 from DISTRIBUTIONS_INDEX b where b.id_orders = a.id_orders)
--         and a.id_orders = b.id_orders(+) and b.id_orders is null
         ORDER BY ID_ORDERS DESC;
*/
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.load_order', '');
        RAISE_APPLICATION_ERROR (-20519, 'Запрос не выполнился. ' || SQLERRM);
end load_order;


--
-- Подгружаем неразнесенные инвойсы
--
PROCEDURE load_invoice
(
  id_dep_       in number,
  cursor_               out ref_cursor
)
IS
BEGIN
  open cursor_ for
      SELECT a.INV_ID, a.INV_ID || ' : ' || to_char(SUPPLIER_DATE,'dd.mm.yyyy') || ' : ' || b.s_name_ru || ' : ' || COMMENTS as names
         FROM INVOICE_REGISTER_FULL a, suppliers b
         WHERE SENDED_TO_WAREHOUSE = 0 AND ID_DEPARTMENTS = id_dep_
           and not exists (select 1 from DISTRIBUTIONS_INVOICES b where b.inv_id = a.inv_id)
           and a.status <> 1
           and not exists (select 1 from export_to_fillials z where z.ID_INVOICE = a.inv_id)
           and a.s_id_default = b.s_id(+)
         ORDER BY SUPPLIER_DATE DESC;
/*
      SELECT a.INV_ID, a.INV_ID || ' : ' || to_char(SUPPLIER_DATE,'dd.mm.yyyy') || ' : ' || COMMENTS as names
         FROM INVOICE_REGISTER_FULL a --, DISTRIBUTIONS_INVOICES b
         WHERE SENDED_TO_WAREHOUSE = 0 AND ID_DEPARTMENTS = id_dep_
         and not exists (select 1 from DISTRIBUTIONS_INVOICES b where b.inv_id = a.inv_id)
         and a.status <> 1
         and not exists (select 1 from export_to_fillials z where z.ID_INVOICE = a.inv_id)
--         and a.inv_id = b.inv_id(+) and b.inv_id is null
--         and (select min(RECOGNISED) from INVOICE_DATA_AS_IS b where b.inv_id = INV_ID) = 1
         ORDER BY SUPPLIER_DATE DESC;
*/
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.load_invoice', '');
        RAISE_APPLICATION_ERROR (-20520, 'Запрос не выполнился. ' || SQLERRM);
end load_invoice;



--
-- Статистика по клиентам
--
PROCEDURE client_stat
(
  vDistIndId       in number,
  --vIdOrders        in number,
  cursor_          out ref_cursor
)
IS
BEGIN
  open cursor_ for
    select a.*, case when quantity=dq then 1 else 0 end isdone from (
        SELECT t.ord, t.hol_type as htype, a.ID_CLIENTS, b.NICK || ' ' || a.alpha as NICK, b.FIO, sum(c.quantity) as quantity, sum(nvl(e.dq,0)) as dq, sum(nvl(w.dq,0)) as webshop
        FROM ORDERS_CLIENTS a, CLIENTS b, orders_list c, nomenclature_mat_view v, hol_types t, distributions_orders z
          , ( select sum(nvl(e.dq,0)) as dq, e.id_orders_list from DISTRIBUTION_VIEW e where e.dist_ind_id = vDistIndId group by e.id_orders_list ) e
          , ( select sum(nvl(e.quantity,0)) as dq, e.id_orders_list from distributions_webshop e where e.dist_ind_id = vDistIndId group by e.id_orders_list ) w
        WHERE z.dist_ind_id = vDistIndId
              and a.id_orders = z.order_id -- vIdOrders
              and a.active = 1
              --and a.pack_=0
              and (a.pack_ = 0 or const_office > 1)
              and a.ID_CLIENTS = b.ID_CLIENTS
              and a.id_orders_clients = c.id_orders_clients
              and c.n_id = v.n_id
              and v.ht_id = t.ht_id
              and c.active = 1
              and c.id_orders_list = e.id_orders_list(+)
              and c.id_orders_list = w.id_orders_list(+)
        group by a.ID_CLIENTS, b.NICK || ' ' || a.alpha, b.FIO, t.ord, t.hol_type
    ) a
    order by NICK, ord;
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.client_stat', '');
        RAISE_APPLICATION_ERROR (-20521, 'Запрос не выполнился. ' || SQLERRM);
end client_stat;


--
-- Статистика по клиентам
--
PROCEDURE client_stat_item
(
  vDistIndId       in number,
  --vIdOrders        in number,
  cursor_          out ref_cursor
)
IS
BEGIN
  open cursor_ for
  select a.*, DECODE(is_stock, 1, 'сток', 'инвойс') AS WHERE_FLOWER_IS from (
    select a.n_id, case when a.nnn = a.bbb then a.quantity else 0 end quantity, a.zatirka, a.id_orders_list, a.compiled_name_otdel, a.colour, a.is_stock, a.dq, a.dq_check, a.webshop, a.dist_id, a.compiled_name_otdel_razn, a.colour_razn, a.nick, a.id_clients, a.is_pack
    from (
      SELECT row_number() over(partition by a.id_orders_clients, c.n_id order by e.dist_id) as nnn,
         count(*) over(partition by a.id_orders_clients, c.n_id) as bbb,
         c.n_id, c.quantity, c.zatirka, c.id_orders_list, d.compiled_name_otdel||' '||d.colour as compiled_name_otdel, d.colour,
         case when (e.INVOICE_DATA_ID is NULL and e.DQ > 0) then 1 else 0 end is_stock,
         nvl(e.dq,0) as dq, case when e.DQ is null then 0 else 1 end dq_check, nvl(w.quantity,0) as webshop,
         e.dist_id
         , case when e.D_N_ID = c.n_id then null else e.compiled_name_otdel||' '||e.colour end compiled_name_otdel_razn, e.colour as colour_razn
         --, l.nick || ' ' || a.alpha as NICK
         , l.nick
         , l.id_clients
         , '1. Обычные клиенты' as is_pack
      FROM ORDERS_CLIENTS a, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, clients l, distributions_orders z, distributions_webshop w
      WHERE z.dist_ind_id = vDistIndId
        and a.id_orders = z.order_id  --vIdOrders
        and a.active = 1
        --and a.pack_=0
        and (a.pack_ = 0 or const_office > 1)
        --and a.ID_ORDERS_CLIENTS = :p_order_client
        and a.id_orders_clients = c.id_orders_clients
        and c.n_id = d.n_id
        and c.active = 1
        and c.id_orders_list = e.id_orders_list(+)
        and a.id_clients = l.id_clients
        and c.quantity > 0
        and a.id_clients not in (const_dir, const_main)
        and c.id_orders_list = w.id_orders_list(+)
    ) a

    union all

    SELECT distinct a.n_id, inv.UNITS as inv_quantity, 0 as zatirka, b.invoice_data_id as id_orders_list
           , n.compiled_name_otdel||' '||n.colour as compiled_name_otdel, n.colour
           , 0 as is_stock, b.quantity as dq
           , case when b.quantity = inv.UNITS then 1 else 0 end dq_check
           , 0 as webshop
           , 0 as dist_id
           , null as compiled_name_otdel_razn, null as colour_razn
           , inv.to_client as nick
           , 0 as id_clients
           , '2. Упакованные клиенты' as is_pack
      FROM prepare_distribution a
      inner join distributions b on b.prep_dist_id = a.prep_dist_id and b.invoice_data_id is not null
      inner join nomenclature_mat_view n on n.n_id = a.n_id
      left outer join invoice_data inv on inv.invoice_data_id = b.invoice_data_id
      --left outer join clients cl on cl.id_clients = distribution_pkg.convert_client( inv.to_client )
        where a.dist_ind_id = vDistIndId

    union all

    select a.n_id, case when a.nnn = a.bbb then a.quantity else 0 end quantity, a.zatirka, a.id_orders_list, a.compiled_name_otdel, a.colour, a.is_stock, a.dq, a.dq_check, 0 as webshop, a.dist_id, a.compiled_name_otdel_razn, a.colour_razn, a.nick, a.id_clients, a.is_pack
    from (
      SELECT row_number() over(partition by a.id_orders_clients, c.n_id order by e.dist_id) as nnn,
         count(*) over(partition by a.id_orders_clients, c.n_id) as bbb,
         c.n_id, c.quantity, c.zatirka, c.id_orders_list, d.compiled_name_otdel||' '||d.colour as compiled_name_otdel, d.colour,
         case when (e.INVOICE_DATA_ID is NULL and e.DQ > 0) then 1 else 0 end is_stock,
         nvl(e.dq,0) as dq, case when e.DQ is null then 0 else 1 end dq_check,
         e.dist_id
         , case when e.D_N_ID = c.n_id then null else e.compiled_name_otdel||' '||e.colour end compiled_name_otdel_razn, e.colour as colour_razn
         , l.nick || ' ' || a.alpha as NICK
         , l.id_clients
         , '3. Сток' as is_pack
      FROM ORDERS_CLIENTS a, orders_list c, nomenclature_mat_view d, DISTRIBUTION_VIEW e, clients l, distributions_orders z
      WHERE z.dist_ind_id = vDistIndId
        and a.id_orders = z.order_id  --vIdOrders
        and a.active = 1
        and a.pack_=0
        --and a.ID_ORDERS_CLIENTS = :p_order_client
        and a.id_orders_clients = c.id_orders_clients
        and c.n_id = d.n_id
        and c.active = 1
        and c.id_orders_list = e.id_orders_list(+)
        and a.id_clients = l.id_clients
        and c.quantity > 0
        and a.id_clients in (const_dir, const_main)
    ) a

    ) a
    order by a.nick, a.compiled_name_otdel, quantity desc;
EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.client_stat_item', '');
        RAISE_APPLICATION_ERROR (-20521, 'Запрос не выполнился. ' || SQLERRM);
end client_stat_item;

--
-- Изменение позиции в заказе при разноске
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
        RAISE_APPLICATION_ERROR (-20522, 'Запрос не выполнился. ' || SQLERRM);
end modify_order;



--
-- Выбор разносов по цветку
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
        RAISE_APPLICATION_ERROR (-20523, 'Запрос не выполнился. ' || SQLERRM);
end get_distribution_list_nid;


--
--  Достаем что в сыром инвойсе во временной таблице
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
       RAISE_APPLICATION_ERROR (-20524, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_translate;





--
-- Отображение разнесенных позиций
--
PROCEDURE get_InvoiceDetailList
(
  p_dist_ind_id  in number,
  p_n_id         in number,
  cursor_        out ref_cursor
)
IS
BEGIN
  open cursor_ for
    SELECT distinct a.n_id, z.tq as total_quantity, z.lq as left_quantity
       , n.COMPILED_NAME_OTDEL, n.colour
       , b.quantity
       , inv.UNITS as inv_quantity
       , inv.to_client as inv_client
       , trim(cl.nick || ' ' || oc.alpha) as ord_client
       , oc.pack_
       , nvl(ol.correction, ol.quantity) as ord_quantity
       , case when b.invoice_data_id is not null then 1 else oc.pack_ end as res_pack
       , case when b.invoice_data_id is null then trim(cl.nick || ' ' || oc.alpha) else inv.to_client end as res_client
       , case when b.invoice_data_id is null then nvl(ol.correction, ol.quantity) else inv.UNITS end as res_quantity
       , ol.n_id as order_n_id
       , case when ol.n_id <> a.n_id then ol_nom.COMPILED_NAME_OTDEL || ' ' || ol_nom.colour else '' end  order_COMPILED_NAME_OTDEL
       , w.DIST_WEBSHOP_ID
    FROM prepare_distribution a
      inner join (
        select sum(z.total_quantity) tq, sum(z.left_quantity) lq, z.dist_ind_id, z.n_id
          from prepare_distribution z
          where z.dist_ind_id = p_dist_ind_id
          group by z.dist_ind_id, z.n_id
        ) z on z.dist_ind_id = a.dist_ind_id and z.n_id = a.n_id
      left outer join distributions b on b.prep_dist_id = a.prep_dist_id
      inner join nomenclature_mat_view n on n.n_id = a.n_id
      left outer join invoice_data inv on inv.invoice_data_id = b.invoice_data_id
      left outer join orders_list ol on ol.id_orders_list = b.id_orders_list
      left outer join nomenclature_mat_view ol_nom on ol_nom.n_id = ol.n_id
      left outer join orders_clients oc on oc.id_orders_clients = ol.id_orders_clients and oc.ID_CLIENTS not in (const_dir,const_main)
      left outer join clients cl on cl.id_clients = oc.id_clients
      left outer join distributions_webshop w on w.n_id = a.n_id and w.DIST_IND_ID = a.dist_ind_id
    where a.dist_ind_id = p_dist_ind_id  and a.n_id = p_n_id
    order by case when b.invoice_data_id is not null then 1 else oc.pack_ end, case when b.invoice_data_id is null then trim(cl.nick || ' ' || oc.alpha) else inv.to_client end
  ;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.get_InvoiceDetailList', '');
        RAISE_APPLICATION_ERROR (-20525, 'Запрос не выполнился. ' || SQLERRM);
end get_InvoiceDetailList;



--
-- Удаляем заказ из разноса
--
procedure remove_order_from_distribution
(
  IN_DIST_IND_ID    IN NUMBER,
  in_order_id       in number,
  res               in out varchar2
)
is
begin

  select count(*) into tmp_cnt from DISTRIBUTIONS d, orders_clients c, orders_list l
  where d.DIST_IND_ID = IN_DIST_IND_ID and d.ID_ORDERS_LIST = l.id_orders_list and l.id_orders_clients = c.id_orders_clients and c.id_orders = in_order_id;
  if tmp_cnt > 0 then
    res := 'Имеются разнесенные позиции заказа ID='||in_order_id;
  else
    delete from distributions_orders a where a.DIST_IND_ID = IN_DIST_IND_ID and a.order_id = in_order_id;
    res := '';
    commit;
  end if;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.remove_order_from_distribution', '');
        RAISE_APPLICATION_ERROR (-20526, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Ищем пропащие записи в инвойсе и добавим их в разнос
--
procedure check_missed_distributions
(
  IN_DIST_IND_ID    IN NUMBER,
  in_inv_id         in number,
  res               in out number
)
is
begin
  SELECT count(*) into res
    FROM invoice_data a
    where inv_id = in_inv_id
      and not exists (select 1 from  prepare_distribution b , prepare_distribution_tree e where b.dist_ind_id = IN_DIST_IND_ID and b.prep_dist_id = e.prep_dist_id(+) and (b.invoice_data_id = a.invoice_data_id or e.invoice_data_id = a.invoice_data_id) )
      and not exists (select 1 from  prepare_distribution c where c.dist_ind_id = IN_DIST_IND_ID and c.n_id = a.n_id)
  ;

  INSERT INTO PREPARE_DISTRIBUTION (
    SELECT IN_DIST_IND_ID, a.n_id, a.invoice_data_id, null, a.units, 0, PREP_DIST_ID.nextval
      FROM invoice_data a
      where inv_id = in_inv_id
        and not exists (select 1 from  prepare_distribution b , prepare_distribution_tree e where b.dist_ind_id = IN_DIST_IND_ID and b.prep_dist_id = e.prep_dist_id(+) and (b.invoice_data_id = a.invoice_data_id or e.invoice_data_id = a.invoice_data_id) )
        and not exists (select 1 from  prepare_distribution c where c.dist_ind_id = IN_DIST_IND_ID and c.n_id = a.n_id)
  )
  ;
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.check_missed_distributions', '');
        RAISE_APPLICATION_ERROR (-20527, 'Запрос не выполнился. ' || SQLERRM);
end;








PROCEDURE INS_ORDERS
(
    ID_ORDERS_CLIENTS_   IN NUMBER,
    N_ID_                IN NUMBER,
    Q_NUM_               IN NUMBER,
    TRUCK_               IN NUMBER,
    sub_weight           IN NUMBER,
    v_site_data          in varchar2,
    v_id                 in out number
)
IS
   IDD_ number;
--   SQL_ VARCHAR2(1024);
/*
   SEQ_ number;
   ID_F_ NUMBER;
   FORMULA_ VARCHAR2(20);
   FORMULA_DRY_ VARCHAR2(20);
   PACK_ VARCHAR2(5);
   vPack number;
*/
BEGIN
  IDD_ := 0;

  -- Пытаемся найти такую же позицию в заказе
  BEGIN
    SELECT ID_ORDERS_LIST INTO IDD_ FROM ORDERS_LIST WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_ AND N_ID = N_ID_;
  EXCEPTION
    WHEN OTHERS THEN IDD_ := 0;
  END;


  -- Такой цветок уже есть в заказе
  if IDD_ > 0 THEN
     -- изменем кол-во заказа
     --select site_data into SQL_ from ORDERS_LIST where ID_ORDERS_LIST = IDD_;

     --UPDATE ORDERS_LIST SET QUANTITY = case when v_site_data is null then Q_NUM_ else (case when Q_NUM_=0 then Q_NUM_ else QUANTITY + Q_NUM_ end) end, TRUCK = TRUCK_, date_change=sysdate,
     --   count_data = case when v_site_data||chr(10) = site_data then count_data else nvl(count_data,0)+1 end,
     --   site_data  = case when v_site_data||chr(10) = site_data then site_data else site_data||v_site_data||chr(10) end
     --WHERE ID_ORDERS_LIST = IDD_;
     UPDATE ORDERS_LIST SET QUANTITY = QUANTITY + Q_NUM_, TRUCK = TRUCK_, date_change = sysdate
     WHERE ID_ORDERS_LIST = IDD_;

     --UPDATE ORDERS_LIST SET WEIGHT = QUANTITY * sub_weight, date_change = sysdate WHERE ID_ORDERS_LIST = IDD_;
     v_id := IDD_;
  ELSE
     SELECT ORDERS_LIST_SEQ.NEXTVAL INTO v_id FROM DUAL;
     -- добавляем новую позицию
     INSERT INTO ORDERS_LIST VALUES(v_id,N_ID_,Q_NUM_,ID_ORDERS_CLIENTS_,nvl(TRUCK_,0),(Q_NUM_ * sub_weight),1,0, null, 1, const_office, sysdate, null, 1, null, 0, null);
  END IF; -- N_ID_ > 0

  UPDATE ORDERS_CLIENTS SET D_DATE = sysdate, date_change = sysdate WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;
  commit;

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.INS_ORDERS', '');
        RAISE_APPLICATION_ERROR (-20528, 'Запрос не выполнился. ' || SQLERRM);

END INS_ORDERS; -- INS_RESERV







--
-- Добавляем запись в разноску по продажам с колес
--
PROCEDURE CREATE_CUSTOM_DIST_LINE_truck
(
  IN_PREP_DIST_ID       IN NUMBER,
  IN_ID_ORDERS_CLIENT   IN NUMBER,
  IN_N_ID               IN NUMBER,
  IN_QUANTITY           IN NUMBER,
  IN_DIST_ID            IN NUMBER,
  IN_PRICE              IN NUMBER,
  OUT_RES               OUT NUMBER,
  OUT_TEXT              OUT VARCHAR2
)
IS
  v_id_orders_list  number;
  NEXT_DIST_ID      NUMBER;

BEGIN

  -- Найдем заказ или создадим. Если найдем, то увеличим количество заказа
  select count(*) into tmp_cnt from ORDERS_LIST where ID_ORDERS_CLIENTS = IN_ID_ORDERS_CLIENT and active = 1 and PACK_ = 0 and n_id = IN_N_ID;
  if tmp_cnt = 0 then
    distribution_pkg.INS_ORDERS(IN_ID_ORDERS_CLIENT, IN_N_ID, IN_QUANTITY, 0, 0, '', v_id_orders_list);
  else
    select ID_ORDERS_LIST into v_id_orders_list from ORDERS_LIST where ID_ORDERS_CLIENTS = IN_ID_ORDERS_CLIENT and active = 1 and PACK_ = 0 and n_id = IN_N_ID;
    update ORDERS_LIST set QUANTITY = QUANTITY + IN_QUANTITY, DATE_CHANGE = sysdate where ID_ORDERS_LIST = v_id_orders_list;
  end if;


  -- Пытаемся найти уже существующую запись
  select count(*) into tmp_cnt from DISTRIBUTIONS
  where ID_ORDERS_LIST = v_id_orders_list and N_ID = IN_N_ID and PREP_DIST_ID = IN_PREP_DIST_ID;

  if tmp_cnt > 0 then
    update DISTRIBUTIONS set QUANTITY = QUANTITY + IN_QUANTITY
    where ID_ORDERS_LIST = v_id_orders_list and N_ID = IN_N_ID and PREP_DIST_ID = IN_PREP_DIST_ID;

    UPDATE PREPARE_DISTRIBUTION SET LEFT_QUANTITY = LEFT_QUANTITY - IN_QUANTITY
    WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
  else
    SELECT DIST_ID.NextVal INTO NEXT_DIST_ID FROM DUAL;

    INSERT INTO DISTRIBUTIONS (DIST_IND_ID, DIST_ID, N_ID, QUANTITY, PREP_DIST_ID, ID_ORDERS_LIST)
    VALUES (IN_DIST_ID, NEXT_DIST_ID, IN_N_ID, IN_QUANTITY, IN_PREP_DIST_ID, v_id_orders_list);

    UPDATE PREPARE_DISTRIBUTION SET LEFT_QUANTITY = LEFT_QUANTITY - IN_QUANTITY
    WHERE PREP_DIST_ID = IN_PREP_DIST_ID;
  end if;

  -- Добавим запись в разнос webshop
  select count(*) into tmp_cnt from distributions_webshop
  where ID_ORDERS_LIST = v_id_orders_list and N_ID = IN_N_ID and dist_ind_id = IN_DIST_ID;
  if tmp_cnt > 0 then
    update distributions_webshop set QUANTITY = QUANTITY + IN_QUANTITY
    where ID_ORDERS_LIST = v_id_orders_list and N_ID = IN_N_ID and dist_ind_id = IN_DIST_ID;
  else
    insert into distributions_webshop values(IN_DIST_ID, universal_id.nextval, IN_N_ID, IN_QUANTITY, IN_PRICE, v_id_orders_list);
  end if;

  OUT_RES := 1;
  OUT_TEXT := 'Операция прошла успешно!';

EXCEPTION
   WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'distribution_pkg.CREATE_CUSTOM_DIST_LINE_truck', '');
        RAISE_APPLICATION_ERROR (-20529, 'Запрос не выполнился. ' || SQLERRM);
END CREATE_CUSTOM_DIST_LINE_truck;


END;
/


-- End of DDL Script for Package Body CREATOR.DISTRIBUTION_PKG

