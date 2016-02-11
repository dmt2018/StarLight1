-- Start of DDL Script for Package Body CREATOR.PACK_ORDERS
-- Generated 11.02.2016 23:55:51 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE pack_orders
IS

CNT    NUMBER;
tmp_id number;
TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные

--
-- Выбор списка формул в зависимости от отдела
--
PROCEDURE get_formula
(
    debt_ in number,
    cursor_ out ref_cursor
);


--
-- Добавление, редактирование формулы
--
PROCEDURE save_formula
(
    id_         in out number,
    P0          in number,
    P1          in number,
    P2          in varchar2,
    P3          in varchar2,
    P4          in varchar2,
    P5          in number,
    P6          in varchar2,
    P7          in varchar2,
    P8          in varchar2,
    P9          in number,
    state_      in number
);


--
-- Добавление, редактирование нового резерва
--
PROCEDURE save_new_reserv
(
    id_         in out number,
    P1          in number,
    P2          in date,
    P3          in number,
    P4          in number,
    P5          in date,
    state_      in number,
    id_dep_     in number
);


--
-- Проверка на последние данные при редактировании заказа
--
PROCEDURE check_order
(
    p0      in number,
    P1      in number,
    P2      in date,
    P3      in date,
    num_    in out number
);


--
-- Проверка на последние данные при редактировании брони
--
PROCEDURE check_reserv
(
    p0      in number,
    P1      in number,
    P2      in number,
    P3      in date,
    p4      in number,
    num_    in out number
);


--
-- Добавление, редактирование нового заказа
--
PROCEDURE save_order
(
    id_         in out number,
    p0          in date,
    p1          in date,
    p2          in varchar2,
    p3          in number,
    state_      in number,
    p4          in date,
    pS_ID       in number,
    p_old_price in number
);


--
-- Выбор статистики по интенсивности покупателей по часам
--
PROCEDURE get_weight
(
    id_     in number,
    cursor_ out ref_cursor
);


--
-- Проверка на последние данные при редактировании заказа
--
PROCEDURE move_truck
(
    p0      in number,
    P3      in number,
    nn      in number,
    num_    in out number
);


--
-- Удаление из заказа позиции
--
PROCEDURE del_order
(
    ID_    in number,
    ID_L_  in number,
    DDATE_ in date
);


--
-- Удаление заказа клиента
--
PROCEDURE delete_orderClient(
  vID_ORDERS_CLIENTS number
);


--
-- Выбираем номенклатуру для заказа
--
PROCEDURE get_nomenclature
(
    addit_          in number,
    id_dep_         in number,
    ID_CL_          in number,
    id_             in number,
    spec_           in number,
    truc_date_      in date,
    button_         in number,
    in_invoice_1_   out date,
    in_invoice_2_   out date,
    in_stock_1_     out date,
    in_stock_2_     out date,
    cursor_         out ref_cursor
);


--
-- Выбор брони
--
PROCEDURE get_reserv
(
    ID_ORDERS_CLIENTS_ in number,
    ID_DEP_            in number,
    type_              in number,
    cursor_            out ref_cursor
);


--
-- Запись кнопки
--
PROCEDURE set_button
(
    FST_ID_ in number,
    ID_DEP_ in number,
    but_    in number,
    FT_ID_  in number
);


--
-- Убирание кнопки
--
PROCEDURE remove_button
(
    FST_ID_ in number,
    ID_DEP_ in number,
    but_    in number,
    FT_ID_  in number
);


--
-- Добавление нового клиента в заказ
--
PROCEDURE save_new_order
(
    id_             in out number,
    ID_ORDERS_F_    in number,
    ID_CLIENT_      in number,
    DDATE_          in date,
    user_           in varchar2,
    NN_             in number,
    v_file          in varchar2
--    ,v_info          in varchar2
);


--
-- Добавляем строку поиска на кнопку
--
PROCEDURE change_s
(
    dep_        in number,
    button_     in number,
    char_       in varchar2,
    all_        in number,
    fst_id_     in number
);


--
-- Выбор 10 последних заказов
--
PROCEDURE get_top_order
(
    debt_     in number,
    cursor_   out ref_cursor
);


--
-- Выбираем заказ клиента
--
PROCEDURE get_show_order
(
    id_dep_   in number,
    ID_CL_    in number,
    id_       in number,
    cursor_   out ref_cursor
);


--
-- Выбираем статистику
--
PROCEDURE get_stat
(
    id_dep_      in number,
    id_order_    in number,
    id_client_   in number,
    id_fst_      in number,
    fst_         in varchar2,
    zatir_       in number,
    n_id_        in number,
    cursor_      out ref_cursor
);


--
-- Выбираем статистику
--
PROCEDURE get_stat_region
(
    id_order_        in number,
    cursor_          out ref_cursor
);


--
-- Добавляем REMARKS к названию
--
PROCEDURE EDIT_REMARKS
(
  id_orders_  in number,
  ID_ORDERS_CLIENTS_ in number,
  N_ID_       in number,
  Q_NUM_      in number,
  REMARKS_    in varchar2
);


--
-- Меняем признак паковки
--
PROCEDURE change_pack
(
    ID_ORDERS_CLIENTS_    in number,
    IS_PACK_              in number
);


--
-- Выбираем статистику + загрузку по машинам
--
PROCEDURE get_stat2
(
    id_dep_       in number,
    id_order_     in number,
    id_client_    in number,
    id_fst_       in number,
    fst_          in varchar2,
    without_pack_ in number,
    cursor_       out ref_cursor
);


--
-- Достаем грузовики
--
PROCEDURE get_truck
(
    id_order_    in number,
    cursor_      in out ref_cursor
);


--
-- Меняем машину
--
PROCEDURE insert_into_truck
(
    TRUCK_           in number,
    OLD_ID_ORDERS_   in number,
    OLD_N_ID_        in number
);


--
-- Меняем машину
--
PROCEDURE insert_into_truck_fst
(
    TRUCK_           in number,
    OLD_ID_ORDERS_   in number,
    OLD_N_ID_        in number
);


--
-- Меняем машину
--
PROCEDURE insert_into_truck_ft
(
    TRUCK_           in number,
    OLD_ID_ORDERS_   in number,
    OLD_N_ID_        in number
);


--
-- Найдем вес заказ для выгрузки в МСК
--
PROCEDURE get_order_for_msk
(
    id_order_    in number,
    cursor_      in out ref_cursor
);


-- Добавление позиции заказа к заказу клиента
PROCEDURE INS_ORDERS
(
    ID_ORDERS_CLIENTS_   IN NUMBER,
    N_ID_                IN NUMBER,
    Q_NUM_               IN NUMBER,
    TRUCK_               IN NUMBER,
    sub_weight           IN NUMBER,
    v_site_data          in varchar2,
    REMARKS_             in varchar2
);


-- Объединение отмеченных инвойсов в новый заказ для дальнейшей разноски
PROCEDURE join_orders
(
    vOrders   IN varchar2,
    vOutID    IN out NUMBER
);


--
-- Найдем статистику по бронированию позиции
--
PROCEDURE get_reserv_stat
(
    vN_ID    in number,
    cursor_  in out ref_cursor
);


-- Объединение заказов клиента
PROCEDURE join_clients_order
(
    vCurOrderClient  IN number,
    vNewPrifix       IN varchar2
);


-- Объединение заказов клиента
PROCEDURE SEPERATE_ORDER
(
    pID_ORDERS_CLIENTS  IN number
);


-- Генерация новой буквы заказа клиента
PROCEDURE new_alpha
(
    pID_ORDER   IN number,
    pID_CLIENT  IN number,
    pNewAlpha   in out varchar2
);


-- Генерация новой буквы заказа клиента
PROCEDURE csv_export
(
    pID_ORDER_CLIENT    IN number,
    p_hol_type          IN varchar2,
    p_prefix            in varchar2,
    cursor_             in out ref_cursor
);


--
-- Добавляем/изменяем название для Дины
--
PROCEDURE EDIT_NAME
(
    N_ID_    in number,
    vName    in varchar2
);



--
-- Добавляем в признак проверки номенклатуры
--
PROCEDURE ins_import_flowers_kov
(
    N_ID_    in number
);


--
-- Поиск клиентов заказавших товар по критерию
--
PROCEDURE get_clients_statistic
(
    p_id_orders in number,
    p_fst_id    in number,
    p_ft_id     in number,
    p_n_id      in number,
    cursor_     in out ref_cursor
);


--
-- Редактирование клиентов заказавших товар по критерию
--
PROCEDURE edit_clients_statistic
(
    p_id_orders_clients in number,
    p_id_orders         in number,
    p_n_id              in number,
    p_corr              in number
);



--
-- Редактирование данных по товару товар по критерию
--
PROCEDURE edit_clients_data
(
    p_id_orders in number,
    p_n_id      in number,
    p_corr      in number
);


--
-- Редактирование данных по товару товар по критерию
--
PROCEDURE edit_clients_data2
(
    p_id_orders in number,
    p_n_id      in number,
    p_remarks   in varchar2,
    p_corr      in number
);


-- подсчет веса
function calc_weight
(
  p_n_id   in NUMBER
) return number;


--
-- Редактирование клиентов заказавших товар по критерию
--
PROCEDURE clear_all_corrections
(
    p_id_orders         in number
);


--
-- Обнуление машин
--
PROCEDURE clear_all_trucks
(
    p_id_orders         in number
);


--
-- Обнуление затирки и коррекции по позиции
--
PROCEDURE clear_curr_corrections
(
    p_id_orders in number,
    p_n_id      in number
);


--
-- Произведем изменение CORRECTION в заказах клиентов
--
function calc_change_tovar
(
    p_counter   in number,
    p_n_id      in number,
    p_id_orders in number,
    p_remarks   in varchar2
) return number;


-- Выбор настройки для клиента при формировании файла экспорта
PROCEDURE get_csv_prefix_parameter
(
    p_ID_CLIENT    IN number,
    cursor_        in out ref_cursor
);


-- Разбивка заказа по поставщикам
PROCEDURE seperate_order_by_supplier
(
    pOrder    IN number
);


-- Синхронизация остатков склада для заказа
PROCEDURE sync_store
(
    vIdOrder    IN number
);


-- Выводим список неиспользуемой номенклатуры в заказе
PROCEDURE get_not_use_noms
(
    p_ID_OD_CL    IN number,
    cursor_       in out ref_cursor
);


END;
/

-- Grants for Package
GRANT EXECUTE ON pack_orders TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY pack_orders
IS

--
-- Выбор статистики по интенсивности покупателей по часам
--
PROCEDURE get_formula
(
    debt_ in number,
    cursor_ out ref_cursor
)
IS
BEGIN
    open cursor_ for
         SELECT rownum as nn, a.* from (
            SELECT F.*, T.F_TYPE, ST.F_SUB_TYPE
            FROM ORDERS_FORMULA F, FLOWER_TYPES T, FLOWER_SUBTYPES ST
            WHERE F.FT_ID=T.FT_ID(+)
                  AND F.FST_ID=ST.FST_ID(+)
                  AND F.ID_DEPARTMENTS = debt_
            ORDER BY T.F_TYPE, ST.F_SUB_TYPE, F.HNAME
         ) a;

    EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_formula', '');
        RAISE_APPLICATION_ERROR (-20111, 'Запрос не выполнился. ' || SQLERRM);
END;  -- get_formula


--
-- Добавление, редактирование формулы
--
PROCEDURE save_formula
(
    id_      in out number,
    P0       in number,
    P1       in number,
    P2       in varchar2,
    P3       in varchar2,
    P4       in varchar2,
    P5       in number,
    P6       in varchar2,
    P7       in varchar2,
    P8       in varchar2,
    P9       in number,
    state_   in number
)
IS
BEGIN
    if state_ = 1 then
       INSERT INTO ORDERS_FORMULA
       VALUES(ORDERS_ID_ORDERS_FORMULA.nextval, P0, P1, P2, P3, P4, P5, P6, P7, P8, P9)
       returning ID_ORDERS_FORMULA into id_;
    else
       UPDATE ORDERS_FORMULA SET FT_ID=P0, FST_ID=P1, HNAME=P2, FORMULA=P3, FORMULA_DRY=P4, ACTIVE=P5, PACK=P6, FIELD_NO=P7, FIELD_AND=P8
       WHERE ID_ORDERS_FORMULA=id_;
    end if;

    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.save_formula', '');
        RAISE_APPLICATION_ERROR (-20112, 'Запрос не выполнился. ' || SQLERRM);
END;  -- save_formula


-- подсчет веса
function calc_weight
(
  p_n_id   in NUMBER
) return number
is
  vWeight      number;
  vSubWeight   number;
begin
  select a.sub_weight into vSubWeight from nomenclature_mat_view a where a.n_id = p_n_id;

  -- Определяем вес найти формулы
  BEGIN
    select case when nvl(a.WEIGHTDRY,0) > 0 then a.WEIGHTDRY else nvl(a.WEIGHT,0) end into vWeight
    from nomenclature a where a.n_id = p_n_id;
  EXCEPTION
    WHEN OTHERS THEN
      vWeight := 0;
  END;
  if nvl(vWeight,0) = 0 then vWeight := vSubWeight; end if;

  return vWeight;
  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.calc_weight', '');
      RAISE_APPLICATION_ERROR (-20142, 'Запрос не выполнился. ' || SQLERRM);
end calc_weight;



--
-- Добавление, редактирование нового резерва
--
PROCEDURE save_new_reserv
(
    id_       in out number,
    P1        in number,
    P2        in date,
    P3        in number,
    P4        in number,
    P5        in date,
    state_    in number,
    id_dep_   in number
)
IS
    id_orders_                   integer;
BEGIN
    if state_ = 1 then
       SELECT ID_ORDERS into id_orders_ FROM ORDERS WHERE id_departments = id_dep_ and N_TYPE=1; -- and id_office = const_office;

       INSERT INTO ORDERS_CLIENTS(ID_ORDERS_CLIENTS,ID_ORDERS,ID_CLIENTS,D_DATE,N_TYPE,STATUS,ON_DATE,active,id_office)
       VALUES(ORDERS_CLIENTS_SEQ.NEXTVAL, id_orders_, P1, P2, P3, P4, P5, P3, const_office)
       returning ID_ORDERS_CLIENTS into id_;
    else
       UPDATE ORDERS_CLIENTS SET ID_CLIENTS=P1, STATUS=P4, ON_DATE=P5, D_DATE=P2, date_change=sysdate
       WHERE ID_ORDERS_CLIENTS = id_;
    end if;

    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.save_new_reserv', '');
        RAISE_APPLICATION_ERROR (-20113, 'Запрос не выполнился. ' || SQLERRM);
END;  -- save_new_reserv


--
-- Проверка на последние данные при редактировании заказа
--
PROCEDURE check_order
(
    p0       in number,
    P1       in number,
    P2       in date,
    P3       in date,
    num_     in out number
)
IS
BEGIN
    SELECT count(ID_ORDERS) into num_
    FROM ORDERS
    WHERE ID_ORDERS=P0
          AND (DATE_TRUCK=P2 OR DATE_TRUCK IS NULL)
          AND D_DATE=P3;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.check_order', '');
        RAISE_APPLICATION_ERROR (-20114, 'Запрос не выполнился. ' || SQLERRM);
END;  -- check_order


--
-- Проверка на последние данные при редактировании брони
--
PROCEDURE check_reserv
(
    p0        in number,
    P1        in number,
    P2        in number,
    P3        in date,
    p4        in number,
    num_      in out number
)
IS
BEGIN
    SELECT count(ID_ORDERS_CLIENTS) into num_
    FROM ORDERS_CLIENTS
         WHERE ID_ORDERS_CLIENTS=P0
               AND ID_CLIENTS=P1
                   AND STATUS=P2
                   AND ON_DATE=P3
                   AND N_TYPE=P4;
   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.check_order', '');
        RAISE_APPLICATION_ERROR (-20114, 'Запрос не выполнился. ' || SQLERRM);
END;  -- check_reserv


--
-- Добавление, редактирование нового заказа
--
PROCEDURE save_order
(
    id_         in out number,
    p0          in date,
    p1          in date,
    p2          in varchar2,
    p3          in number,
    state_      in number,
    p4          in date,
    pS_ID       in number,
    p_old_price in number
)
IS
    id_orders_                   integer;
BEGIN
    if state_ = 1 then
       select ORDERS_SEQ.NEXTVAL into id_orders_ from dual;
       INSERT INTO ORDERS VALUES(id_orders_, p0, p1, p3, 0, p2, 1, p4, const_office, sysdate, pS_ID, p_old_price) returning ID_ORDERS into id_;
       insert into numeration_seq values(id_orders_, 'order', case when p3 = 121 then year_order_seq_121.nextval when p3 = 62 then year_order_seq_62.nextval when p3 = 61 then year_order_seq_61.nextval else null end );
    else
        UPDATE ORDERS SET DATE_TRUCK = p0, DATE_TRUCK_out = p4, D_DATE = p1, INFO = p2, date_change=sysdate, S_ID = pS_ID, old_price = p_old_price WHERE ID_ORDERS = id_;
    end if;
    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.save_order', '');
        RAISE_APPLICATION_ERROR (-20115, 'Запрос не выполнился. ' || SQLERRM);
END;  -- save_new_reserv


--
-- Выбор статистики по интенсивности покупателей по часам
--
PROCEDURE get_weight
(
    id_ in number,
    cursor_ out ref_cursor
)
IS
BEGIN
   open cursor_ for
        SELECT SUM(a.WEIGHT) AS SS,  sum(nvl(a.correction,a.quantity)) as quant
          , SUM(case when a.pack_=1 then a.WEIGHT else 0 end) AS sum_pack,  sum(case when a.pack_=1 then nvl(a.correction,a.quantity) else 0 end) as quant_pack
          , nvl(TRUCK,0) as TRUCK
        FROM ORDERS_LIST a, ORDERS_CLIENTS c, NOMENCLATURE d, orders o
        WHERE a.active = 1 and a.id_orders_clients = c.id_orders_clients and c.id_orders = id_ and c.active = 1
            and a.n_id = d.n_id and nvl(a.correction,a.quantity) <> 0 and a.zatirka = 0
            and c.id_orders = o.id_orders and ((d.s_id = o.s_id and const_office = 1) or const_office > 1)
            and d.notuse = 0
            and c.n_type < 2
       group by nvl(TRUCK,0)
        order by truck;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_weight', '');
        RAISE_APPLICATION_ERROR (-20116, 'Запрос не выполнился. ' || SQLERRM);
END;  -- get_weight


--
-- Проверка на последние данные при редактировании заказа
--
PROCEDURE move_truck
(
    p0     in number,
    P3     in number,
    nn     in number,
    num_   in out number
)
IS
BEGIN
    SELECT count(ID_ORDERS_CLIENTS) into num_
    FROM ORDERS_CLIENTS
    WHERE ID_ORDERS_CLIENTS = P0
          AND N_TRUCK = P3;

    if num_ > 0 then
       UPDATE ORDERS_CLIENTS SET N_TRUCK = nn, date_change=sysdate WHERE ID_ORDERS_CLIENTS = p0;
       UPDATE ORDERS_LIST SET TRUCK= nn, date_change=sysdate WHERE ID_ORDERS_CLIENTS = p0;
       commit;
    end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.move_truck', '');
        RAISE_APPLICATION_ERROR (-20117, 'Запрос не выполнился. ' || SQLERRM);
END;  -- move_truck


--
-- Удаление из заказа позиции
--
PROCEDURE del_order
(
    ID_     in number,
    ID_L_   in number,
    DDATE_  in date
)
IS
BEGIN
    UPDATE ORDERS_CLIENTS SET D_DATE = DDATE_, date_change=sysdate WHERE ID_ORDERS_CLIENTS = ID_;
    DELETE FROM ORDERS_LIST WHERE ID_ORDERS_LIST = ID_L_;
end; -- del_order


--
-- Удаление заказа клиента
--
PROCEDURE delete_orderClient(
  vID_ORDERS_CLIENTS number
)
is
    cnt number;
begin

  select count(*) into cnt from orders_list where ID_ORDERS_CLIENTS = vID_ORDERS_CLIENTS;
  if cnt = 0 then
    DELETE FROM ORDERS_CLIENTS WHERE ID_ORDERS_CLIENTS = vID_ORDERS_CLIENTS;
  else
    UPDATE ORDERS_CLIENTS SET ACTIVE=0 WHERE ID_ORDERS_CLIENTS = vID_ORDERS_CLIENTS;
    update orders_list SET ACTIVE=0 WHERE ID_ORDERS_CLIENTS = vID_ORDERS_CLIENTS;
  end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.delete_orderClient', '');
        RAISE_APPLICATION_ERROR (-20117, 'Запрос не выполнился. ' || SQLERRM);
end delete_orderClient;


--
-- Выбираем номенклатуру для заказа
--
PROCEDURE get_nomenclature
(
    addit_          in number,
    id_dep_         in number,
    ID_CL_          in number,
    id_             in number,
    spec_           in number, -- теперь это кол-во дней
    truc_date_      in date,
    button_         in number,
    in_invoice_1_   out date,
    in_invoice_2_   out date,
    in_stock_1_     out date,
    in_stock_2_     out date,
    cursor_         out ref_cursor
)
IS
    TYPE EmpCurTyp IS  REF CURSOR;
    c_ EmpCurTyp;
    v_prev_price_list  number;
    v_DIST_IND_ID      number;
    v_distributor      number;
    v_distributor_days number;
BEGIN
    begin
      select o.S_ID, nvl(s.analyze_days,3) into v_distributor, v_distributor_days
      from orders o, suppliers s
      where o.id_orders = id_ and o.s_id = s.s_id(+);
    exception when NO_DATA_FOUND then
      v_distributor      := 0;
      v_distributor_days := 3;
    end;

    if addit_ = 1 then
      -- достанем предыдущий прайс-лист, который подгружен на склад
      -- с него возьмем замороженный на момент рассценок сток
      -- покажем его (prev_stock_amount) в графе Сток/Предыдущий
      select old_price into v_prev_price_list from orders where id_orders = id_;

      if v_prev_price_list is null or v_prev_price_list = 0 then
        select max(ppli_id) into v_prev_price_list
          from prepare_price_list_index a, invoice_register b, suppliers s
          where a.id_departments = id_dep_
            and a.finished = 1
            and (b.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or b.ipp_id = a.pack_id)
            and b.sended_to_warehouse = 1
            and b.minus_inv_id = 0
            and b.s_id_default = s.s_id
            and ((b.s_id_default = v_distributor and const_office = 1) or const_office > 1)
            and a.ppl_date >= trunc(sysdate-s.analyze_days) and a.ppli_id_old is not null;
      end if;

      begin
        v_DIST_IND_ID := 0;
/*
        select max(ppli_id) into v_DIST_IND_ID
        from prepare_price_list_index a, invoice_register b
        where a.id_departments = id_dep_ and a.finished = 1 and a.inv_id = b.inv_id and b.sended_to_warehouse = 0 and b.minus_inv_id = 0 and b.s_id_default = v_distributor;
*/
/*
        select max(d.DIST_IND_ID) into v_DIST_IND_ID
        from distributions_invoices d, invoice_register p
          where d.INV_ID = p.inv_id and p.sended_to_warehouse = 0 and p.id_departments = id_dep_ and p.s_id_default = v_distributor
        ;
*/
      exception when NO_DATA_FOUND then
        v_DIST_IND_ID := 0;
      end;

       -- Достаем РАСШИРЕННЫЙ набор данных по наменклатуре товара на складе
       open cursor_ for
SELECT /*+ USE_MERGE(INV_DONE,DISTR_DONE) ORDERED */ A1.*,
       NVL(b.nbutton, 99) AS nbutton,
       NVL(distr.destribution_quantity, 0) AS client_distribution,
       CASE WHEN NVL(inv.invoice_quantity, 0) < NVL(distr.destribution_quantity, 0) THEN 0
            ELSE NVL(inv.invoice_quantity, 0) - NVL(distr.destribution_quantity, 0) END stock_distribution,
       NVL(distr_done.destribution_quantity, 0) AS client_distribution_done,
       CASE WHEN NVL(inv_done.invoice_quantity, 0) < NVL(distr_done.destribution_quantity, 0) THEN 0
            ELSE NVL(inv_done.invoice_quantity, 0) - NVL(distr_done.destribution_quantity, 0) END stock_distribution_done
  FROM (SELECT nom.compiled_name_otdel,
               nom.h_name AS h_name_f,
               nom.h_name AS h_name,
               nom.f_name,
               nom.F_SUB_TYPE,
               nom.F_TYPE,
               nom.N_ID,
               nom.LEN,
               nom.PACK,
               nom.VBN,
               nom.WEIGHT,
               nom.FST_ID,
               nom.FT_ID,
               nom.C_ID,
               nom.S_ID,
               nom.S_NAME_RU,
               nom.COLOUR,
               nom.COL_ID,
               nom.fn_id,
               nom.COUNTRY,
               nom.ID_DEPARTMENTS,
               nom.sub_weight,
               nom.rus_marks,
               nom.h_code,
               nom.remarks,
               bbb.remarks AS remarks_tmp,
               nom.HT_ID,
               NVL(nom.hol_type, 'none') AS hol_type,
               nom.bar_code,
               nom.code,
               ht.ord,
               CASE WHEN m.store_quantity < 0 THEN 0
                    ELSE NVL(m.store_quantity, 0) END store_all,
               0 reserv,
               ID_CL_ AS id_orders_clients,
               aaa.fl_orders_all,
               bbb.fl_orders,
               bbb.id_orders_list,
               nom.hol_sub_type,
               bbb.zatirka,
               bbb.truck,
               store_spis,
               store_ucen,
               store_prod,
               bbb.COUNT_DATA,
               L1.price,
               NVL(bbb.pack_, 0) AS pack_,
               nom.nom_new,
               nom.nom_start,
               nom.nom_end,
               nom.DIAMETER,
               nom.WEIGHTDRY,
               nom.CUST_COEF,
               nom.NOPRINT,
               nom.NOTUSE,
               nom.PHOTO,
               nom.TNVED,
               nom.name_code,
               nom.HOL_COLOR,
               nom.id_office,
               INSTR(nom.h_code, '!') AS spec,
               NVL(PPL1.stock_amount, 0) AS prev_stock_amount,
               bbb.correction
          FROM NOMENCLATURE_MAT_VIEW nom,
               orders_store m,
               price_list L1,
               orders_name o,
               hol_types ht,
               (SELECT MAX(CASE WHEN stock_amount > 0 THEN stock_amount
                                ELSE 0 END) AS stock_amount,
                       n_id
                  FROM prepare_price_list PPL2
                 WHERE PPL2.ppli_id = v_prev_price_list
                 GROUP BY PPL2.n_id) PPL1,
               (SELECT SUM(NVL(L2.correction, L2.QUANTITY)) fl_orders_all,
                       n_id
                  FROM orders_list L2,
                       orders_clients CL1
                 WHERE L2.active = 1
                   AND L2.ID_ORDERS_CLIENTS = CL1.id_orders_clients
                   AND CL1.active = 1
                   AND CL1.id_orders = id_
                   AND CL1.n_type < 2
                 GROUP BY n_id) aaa,
               (SELECT SUM(NVL(L3.correction, L3.QUANTITY)) fl_orders,
                       SUM(NVL(L3.correction, L3.quantity)) correction,
                       L3.n_id,
                       L3.id_orders_list,
                       L3.zatirka,
                       L3.truck,
                       L3.COUNT_DATA,
                       L3.remarks,
                       L3.pack_
                  FROM orders_list L3,
                       orders_clients CL2
                 WHERE L3.active = 1
                   AND L3.ID_ORDERS_CLIENTS = ID_CL_
                   AND CL2.id_orders_clients = L3.ID_ORDERS_CLIENTS
                   AND CL2.n_type < 2
                 GROUP BY L3.n_id, L3.id_orders_list, L3.zatirka, L3.truck, L3.COUNT_DATA, L3.remarks, L3.pack_) bbb,
               (SELECT dd.n_id,
                       SUM(CASE WHEN D1.id_doc_type = 2 THEN dd.quantity
                                ELSE 0 END) store_spis,
                       SUM(CASE WHEN D1.id_doc_type = 3 THEN dd.quantity
                                ELSE 0 END) store_ucen,
                       SUM(CASE WHEN D1.id_doc_type = 4 THEN dd.quantity
                                ELSE 0 END) store_prod
                  FROM store_doc_data dd,
                       store_doc D1
                 WHERE dd.id_doc = D1.id_doc
                   AND D1.id_doc_type IN (2, 3, 4)
                   AND D1.doc_date > TRUNC(SYSDATE - v_distributor_days)
                   AND D1.ID_DEPARTMENTS = id_dep_
                   AND D1.id_office = const_office
                 GROUP BY dd.n_id) store_stat
         WHERE 1 = 1
           AND nom.ID_DEPARTMENTS = id_dep_
           AND (nom.s_id = v_distributor
                AND const_office = 1
                 OR const_office > 1)
           AND nom.NOTUSE = 0
           AND nom.N_ID = m.n_id (+)
           AND m.id_orders (+) = id_
           AND nom.n_id = aaa.n_id (+)
           AND nom.n_id = bbb.n_id (+)
           AND nom.n_id = store_stat.n_id (+)
           AND nom.n_id = L1.n_id (+)
           AND nom.n_id = o.n_id (+)
           AND nom.hol_type = ht.hol_type (+)
           AND nom.n_id = PPL1.n_id (+)) A1
       LEFT OUTER JOIN (SELECT A2.fst_id,
                               A2.nbutton,
                               A2.f_char
                          FROM buttons_set A2
                         WHERE id_dep = id_dep_) b
         ON b.fst_id = A1.fst_id
       LEFT OUTER JOIN (SELECT A3.n_id,
                               SUM(CASE WHEN OC1.id_clients IN(const_dir, const_main) THEN 0
                                        ELSE A3.quantity END) destribution_quantity
                          FROM distributions A3
                               LEFT OUTER JOIN orders_list OL1
                                 ON OL1.id_orders_list = A3.id_orders_list
                               LEFT OUTER JOIN orders_clients OC1
                                 ON OC1.id_orders_clients = OL1.id_orders_clients
                                    AND OC1.n_type < 2
                         WHERE A3.DIST_IND_ID IN (SELECT DISTINCT D2.DIST_IND_ID
                                                    FROM distributions_invoices D2,
                                                         invoice_register P1
                                                   WHERE D2.INV_ID = P1.inv_id
                                                     AND P1.sended_to_warehouse = 0
                                                     AND P1.id_departments = id_dep_
                                                     AND (P1.s_id_default = v_distributor
                                                          AND const_office = 1
                                                           OR const_office > 1))
                         GROUP BY A3.n_id) distr
         ON distr.n_id = A1.n_id
       LEFT OUTER JOIN (SELECT A4.n_id,
                               SUM(A4.units) AS invoice_quantity
                          FROM invoice_data A4,
                               invoice_register P2,
                               distributions_invoices D3
                         WHERE A4.INV_ID = P2.inv_id
                           AND D3.INV_ID = P2.inv_id
                           AND P2.sended_to_warehouse = 0
                           AND P2.id_departments = id_dep_
                           AND (P2.s_id_default = v_distributor
                                AND const_office = 1
                                 OR const_office > 1)
                         GROUP BY A4.n_id) inv
         ON inv.n_id = A1.n_id
       LEFT OUTER JOIN (SELECT A5.n_id,
                               SUM(CASE WHEN OC2.id_clients IN(const_dir, const_main) THEN 0
                                        ELSE A5.quantity END) destribution_quantity
                          FROM distributions A5
                               LEFT OUTER JOIN orders_list OL2
                                 ON OL2.id_orders_list = A5.id_orders_list
                               LEFT OUTER JOIN orders_clients OC2
                                 ON OC2.id_orders_clients = OL2.id_orders_clients
                                    AND OC2.n_type < 2
                         WHERE A5.DIST_IND_ID IN (SELECT DISTINCT D4.DIST_IND_ID
                                                    FROM distributions_invoices D4,
                                                         invoice_register P3,
                                                         prepare_price_list_index I1
                                                   WHERE D4.INV_ID = P3.inv_id
                                                     AND P3.sended_to_warehouse = 1
                                                     AND P3.id_departments = id_dep_
                                                     AND (P3.s_id_default = v_distributor
                                                          AND const_office = 1
                                                           OR const_office > 1)
                                                     AND (P3.inv_id IN (I1.inv_id, I1.inv_id2, I1.inv_id3, I1.inv_id4)
             OR P3.ipp_id = I1.pack_id)
            AND I1.ppl_date >= TRUNC (SYSDATE - v_distributor_days)) GROUP BY A5.n_id) distr_done
         ON distr_done.n_id = A1.n_id
       LEFT OUTER JOIN (SELECT A6.n_id,
                               SUM(A6.units) AS invoice_quantity
                          FROM invoice_data A6,
                               invoice_register P4,
                               distributions_invoices D5,
                               prepare_price_list_index I2
                         WHERE A6.INV_ID = P4.inv_id
                           AND D5.INV_ID = P4.inv_id
                           AND P4.sended_to_warehouse = 1
                           AND P4.id_departments = id_dep_
                           AND (P4.s_id_default = v_distributor
                                AND const_office = 1
                                 OR const_office > 1)
                           AND (P4.inv_id IN (I2.inv_id, I2.inv_id2, I2.inv_id3, I2.inv_id4)
             OR P4.ipp_id = I2.pack_id)
            AND I2.ppl_date >= TRUNC (SYSDATE - v_distributor_days) GROUP BY A6.n_id) inv_done
         ON inv_done.n_id = A1.n_id
 WHERE /*Filter*/ 1 = 1
   AND (b.nbutton = button_
         OR 0 = button_);
/*
                SELECT a.*, nvl(b.nbutton,99) as nbutton
                  , nvl(distr.destribution_quantity,0) as client_distribution
                  , case when nvl(inv.invoice_quantity,0) <  nvl(distr.destribution_quantity,0) then 0 else nvl(inv.invoice_quantity,0) - nvl(distr.destribution_quantity,0) end stock_distribution

                  , nvl(distr_done.destribution_quantity,0) as client_distribution_done
                  , case when nvl(inv_done.invoice_quantity,0) <  nvl(distr_done.destribution_quantity,0) then 0 else nvl(inv_done.invoice_quantity,0) - nvl(distr_done.destribution_quantity,0) end stock_distribution_done
                   --, nvl(stock_distribution,0) as stock_distribution, nvl(DISTRIBUTED_NUMBER,0)-nvl(stock_distribution,0) as client_distribution
                   --, case when b.f_char is null then a.h_name_f else trim(substr(a.h_name_f, length(trim(b.f_char))+1, length(a.h_name_f) )) end h_name
                FROM (
                    SELECT nom.compiled_name_otdel, nom.h_name  as h_name_f
                        , nom.h_name as h_name, -- пока Дина сказала прикрыть nvl(o.eng_name,nom.h_name) as h_name,
                        nom.f_name, nom.F_SUB_TYPE, nom.F_TYPE, nom.N_ID,
                        nom.LEN, nom.PACK, nom.VBN, nom.WEIGHT, nom.FST_ID, nom.FT_ID, nom.C_ID, nom.S_ID,
                        nom.S_NAME_RU, nom.COLOUR, nom.COL_ID, nom.fn_id, nom.COUNTRY, nom.ID_DEPARTMENTS, nom.sub_weight,
                        nom.rus_marks, nom.h_code, nom.remarks,
                        bbb.remarks as remarks_tmp,
                        nom.HT_ID, nvl(nom.hol_type,'none') as hol_type, nom.bar_code, nom.code, ht.ord,

                        case when m.store_quantity < 0 then 0 else nvl(m.store_quantity,0) end store_all,
                        --case when m.reserv < 0 then 0 else m.reserv end reserv,
                        0 reserv,
                        ID_CL_ as id_orders_clients, aaa.fl_orders_all, bbb.fl_orders, bbb.id_orders_list,
                        nom.hol_sub_type, bbb.zatirka, bbb.truck, store_spis, store_ucen, store_prod
                        , bbb.COUNT_DATA, l.price
                        , nvl(bbb.pack_,0) as pack_
                        ,nom.nom_new,nom.nom_start,nom.nom_end,nom.DIAMETER,nom.WEIGHTDRY,nom.CUST_COEF,nom.NOPRINT,nom.NOTUSE,nom.PHOTO,nom.TNVED,nom.name_code,nom.HOL_COLOR,nom.id_office
                        , instr(nom.h_code,'!') as spec
                        , nvl(ppl.stock_amount,0) as prev_stock_amount
                        , bbb.correction
                    FROM NOMENCLATURE_MAT_VIEW nom, orders_store m, price_list l, orders_name o, hol_types ht,
                        (select max(case when stock_amount > 0 then stock_amount else 0 end) as stock_amount, n_id from prepare_price_list ppl where ppl.ppli_id = v_prev_price_list group by ppl.n_id) ppl,
--                        (select sum(nvl(stock_amount,0) + nvl(INVOICE_AMOUNT,0)) as stock_amount, n_id from prepare_price_list ppl where ppl.ppli_id = v_prev_price_list group by ppl.n_id) ppl,

                    -- заказнные товары клиентами всего в этом заказе (Если нужно будет им, то открыть)
--                        (select sum(l.QUANTITY) fl_orders_all, n_id from orders_list l where active = 1 and l.ID_ORDERS_CLIENTS in
--                                (select id_orders_clients from orders_clients where active = 1 and id_orders = id_ ) group by n_id ) aaa,

                        ( select sum(nvl(l.correction, l.QUANTITY)) fl_orders_all, n_id from orders_list l, orders_clients cl
                          where l.active = 1 and l.ID_ORDERS_CLIENTS = cl.id_orders_clients and cl.active = 1 and cl.id_orders = id_ and cl.n_type < 2
                          group by n_id
                        ) aaa,

                    -- заказнные товары клиентом
                        (select sum(nvl(l.correction, l.QUANTITY)) fl_orders, sum(nvl(l.correction,l.quantity)) correction, l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_
                          from orders_list l
                            inner join orders_clients cl on cl.id_orders_clients = l.ID_ORDERS_CLIENTS and cl.n_type < 2
                            --left outer join orders_remarks r on r.id_orders = cl.id_orders and r.n_id = l.n_id
                          where l.active = 1 and l.ID_ORDERS_CLIENTS = ID_CL_
                          group by l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_
                        ) bbb,

                        (
                            select dd.n_id,
                                  sum(case when d.id_doc_type = 2 then dd.quantity else 0 end) store_spis,
                                  sum(case when d.id_doc_type = 3 then dd.quantity else 0 end) store_ucen,
                                  sum(case when d.id_doc_type = 4 then dd.quantity else 0 end) store_prod
                            from store_doc_data dd, store_doc d
                            where dd.id_doc = d.id_doc and d.id_doc_type in (2,3,4) and d.doc_date > trunc(sysdate-spec_) and d.ID_DEPARTMENTS = id_dep_ and d.id_office = const_office
                            group by dd.n_id
                        ) store_stat
                    WHERE /*Filter/ 1=1
                        AND nom.ID_DEPARTMENTS= id_dep_
                        --and (nom.s_id = v_distributor or v_distributor is null)
                        and ((nom.s_id = v_distributor and const_office = 1) or const_office > 1)
                        and nom.NOTUSE = 0
                       -- and ( instr(nom.h_code,'!') = 0 or nom.fn_id in (10014030,10014031) )
                        AND nom.N_ID = m.n_id(+) and m.id_orders(+) = id_ --and m.id_office(+) = const_office and m.STORE_TYPE(+) <> 2
                        and nom.n_id = aaa.n_id(+)
                        and nom.n_id = bbb.n_id(+)
                        --and nom.n_id = prih_p.n_id(+)
                        --and nom.n_id = prih_f.n_id(+)
                        and nom.n_id = store_stat.n_id(+)
                        and nom.n_id = l.n_id(+)
                        and nom.n_id = o.n_id(+)
                        and nom.hol_type = ht.hol_type(+)
                        and nom.n_id = ppl.n_id(+)
                ) a
                left outer join (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b on b.fst_id = a.fst_id


/* Выборка всех разнесенных позиций за минусам майна по всем разносам неподгруженных в склад инвойсах /
                left outer join
                (
                  SELECT a.n_id, sum(case when oc.id_clients in (const_dir,const_main) then 0 else a.quantity end) destribution_quantity
                    FROM distributions a
                    left outer join orders_list ol on ol.id_orders_list = a.id_orders_list
                    left outer join orders_clients oc on oc.id_orders_clients = ol.id_orders_clients and oc.n_type < 2
                    where a.DIST_IND_ID in (
                      select distinct d.DIST_IND_ID
                        from distributions_invoices d, invoice_register p
                        where d.INV_ID = p.inv_id and p.sended_to_warehouse = 0 and p.id_departments = id_dep_
                          --and p.s_id_default = v_distributor
                          and ((p.s_id_default = v_distributor and const_office = 1) or const_office > 1)
                   )
                    group by a.n_id
                ) distr on distr.n_id = a.n_id

/* Выборка всех позиций разнесенных инвойсов которые не подгруженны на склад /
                left outer join
                (
                    SELECT a.n_id, sum(a.units) as invoice_quantity
                      from invoice_data a, invoice_register p, distributions_invoices d
                      where a.INV_ID = p.inv_id and d.INV_ID = p.inv_id and p.sended_to_warehouse = 0 and p.id_departments = id_dep_
                        --and p.s_id_default = v_distributor
                        and ((p.s_id_default = v_distributor and const_office = 1) or const_office > 1)
                      group by a.n_id
                ) inv on inv.n_id = a.n_id


/* Выборка всех разнесенных позиций за минусам майна по всем разносам подгруженных в склад инвойсах /
                left outer join
                (
                  SELECT a.n_id, sum(case when oc.id_clients in (const_dir,const_main) then 0 else a.quantity end) destribution_quantity
                    FROM distributions a
                    left outer join orders_list ol on ol.id_orders_list = a.id_orders_list
                    left outer join orders_clients oc on oc.id_orders_clients = ol.id_orders_clients and oc.n_type < 2
                    where a.DIST_IND_ID in (
                      select distinct d.DIST_IND_ID
                        from distributions_invoices d, invoice_register p, prepare_price_list_index i
                        where d.INV_ID = p.inv_id and p.sended_to_warehouse = 1 and p.id_departments = id_dep_
                          --and p.s_id_default = v_distributor
                          and ((p.s_id_default = v_distributor and const_office = 1) or const_office > 1)
                          and (p.inv_id in (i.inv_id, i.inv_id2, i.inv_id3, i.inv_id4) or p.ipp_id = i.pack_id)
                          and i.ppl_date >= trunc( sysdate - v_distributor_days )
                    )
                    group by a.n_id
                ) distr_done on distr_done.n_id = a.n_id

/* Выборка всех позиций разнесенных инвойсов которые подгруженны на склад /
                left outer join
                (
                    SELECT a.n_id, sum(a.units) as invoice_quantity
                      from invoice_data a, invoice_register p, distributions_invoices d, prepare_price_list_index i
                      where a.INV_ID = p.inv_id and d.INV_ID = p.inv_id and p.sended_to_warehouse = 1 and p.id_departments = id_dep_
                          --and p.s_id_default = v_distributor
                          and ((p.s_id_default = v_distributor and const_office = 1) or const_office > 1)
                          and (p.inv_id in (i.inv_id, i.inv_id2, i.inv_id3, i.inv_id4) or p.ipp_id = i.pack_id)
                          and i.ppl_date >= trunc( sysdate - v_distributor_days )
                      group by a.n_id
                ) inv_done on inv_done.n_id = a.n_id



                WHERE /*Filter/ 1=1
                and (b.nbutton = button_ or button_=0)
                ;
*/
    else
       -- Достаем простой набор данных по наменклатуре товара на складе
       open cursor_ for
            select a.*, 0 as stock_distribution, 0 as client_distribution, 0 as stock_distribution_done, 0 as client_distribution_done from (
                SELECT nvl(b.nbutton,99) as nbutton, nom.compiled_name_otdel, nom.h_name as h_name_f
                    , nom.h_name as h_name, -- пока Дина сказала прикрыть nvl(o.eng_name,nom.h_name) as h_name,
                    --case when b.f_char is null then nom.h_name else trim(substr(nom.h_name, length(trim(b.f_char))+1, length(nom.h_name) )) end h_name,
                    nom.f_name, nom.fn_id, nom.F_SUB_TYPE, nom.F_TYPE, nom.N_ID, nom.LEN, nom.PACK, nom.VBN, nom.WEIGHT,
                    nom.FST_ID, nom.FT_ID, nom.C_ID, nom.S_ID, nom.S_NAME_RU, nom.COLOUR, nom.COL_ID, nom.COUNTRY,
                    nom.ID_DEPARTMENTS, nom.hol_sub_type, nom.remarks, bbb.remarks as remarks_tmp,
                    nom.HT_ID, nom.rus_marks, ht.ord, nom.bar_code, nom.code, nom.h_code, nom.hol_type, nom.sub_weight,
                    -- на складе
/*
                        case when m.quantity = 0 then 0 else
                         case when (m.quantity - m.reserv) is null then 0 else (m.quantity - m.reserv) end
                        end as store_all,
*/
                    case when m.store_quantity < 0 then 0 else nvl(m.store_quantity,0) end store_all,
                    --case when m.reserv < 0 then 0 else m.reserv end reserv,
                    0 as reserv,
                    ID_CL_ as id_orders_clients, aaa.fl_orders_all, bbb.fl_orders, bbb.id_orders_list, bbb.zatirka, bbb.truck
                    , 0 as store_spis, 0 as store_ucen, 0 as store_prod
                    , bbb.COUNT_DATA, l.price
                    , nvl(bbb.pack_,0) as pack_
                    ,nom.nom_new,nom.nom_start,nom.nom_end,nom.DIAMETER,nom.WEIGHTDRY,nom.CUST_COEF,nom.NOPRINT,nom.NOTUSE,nom.PHOTO,nom.TNVED,nom.name_code,nom.HOL_COLOR,nom.id_office
                    , instr(nom.h_code,'!') as spec
                    , 0 as prev_stock_amount
                    , bbb.correction
                FROM NOMENCLATURE_MAT_VIEW nom, orders_store m, price_list l, orders_name o, hol_types ht,
                    (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b,
                    -- заказнные товары клиентами всего в этом заказе (Если нужно будет им, то открыть)
--                    (select sum(l.QUANTITY) fl_orders_all, n_id from orders_list l where l.active = 1 and l.ID_ORDERS_CLIENTS in
--                        (select id_orders_clients from orders_clients where active = 1 and id_orders = id_ ) group by n_id ) aaa,

                    (
                      select sum(nvl(l.correction, l.QUANTITY)) fl_orders_all, l.n_id
                        from orders_list l
                          inner join orders_clients cl on cl.id_orders_clients = l.ID_ORDERS_CLIENTS and cl.active = 1 and cl.id_orders = id_ and cl.n_type < 2
                        where l.active = 1
                        group by l.n_id
                    ) aaa,

                    -- заказнные товары клиентом
                    (
                      select sum(nvl(l.correction, l.QUANTITY)) fl_orders, sum(nvl(l.correction,l.quantity)) correction, l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_
                        from orders_list l
                          inner join orders_clients cl on cl.id_orders_clients = l.ID_ORDERS_CLIENTS and cl.n_type < 2
                          --left outer join orders_remarks r on r.id_orders = cl.id_orders and r.n_id = l.n_id
                        where l.ID_ORDERS_CLIENTS = ID_CL_
                        group by l.n_id, l.id_orders_list, l.zatirka, l.truck, l.COUNT_DATA, l.remarks, l.pack_
                    ) bbb
                WHERE /*Filter*/ 1=1
                    and nom.ID_DEPARTMENTS= id_dep_
                    --and (nom.s_id = v_distributor or v_distributor is null)
                    and ((nom.s_id = v_distributor and const_office = 1) or const_office > 1)
                    and nom.NOTUSE = 0
                   -- and ( instr(nom.h_code,'!') = 0 or nom.fn_id in (10014030,10014031) )
                    and (nom.fst_id = b.fst_id(+) and (b.nbutton = button_ or button_=0))
                    AND nom.N_ID = m.n_id(+) and m.id_orders(+) = id_ --and m.id_office(+) = const_office and m.STORE_TYPE(+) <> 2
                    and nom.n_id = aaa.n_id(+)
                    and nom.n_id = bbb.n_id(+)
                    and nom.n_id = l.n_id(+)
                    and nom.n_id = o.n_id(+)
                    and nom.hol_type = ht.hol_type(+)
                ) a
                ;
         end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.check_order', '');
        RAISE_APPLICATION_ERROR (-20118, 'Запрос не выполнился. ' || SQLERRM);
end;  -- get_nomenclature


--
-- Выбор брони
--
PROCEDURE get_reserv
(
    ID_ORDERS_CLIENTS_  in number,
    ID_DEP_             in number,
    type_               in number,
    cursor_             out ref_cursor
)
IS
BEGIN
  if ( type_ = 0 ) then
     open cursor_ for
          SELECT a.store_type, a.id_departments, a.full_name, a.f_name, a.f_name_ru, a.f_type,a.f_sub_type, a.code, a.len,
                a.pack, a.colour, a.col_id, a.ft_id, a.fst_id, a.fn_id, a.s_id, a.c_id, a.h_code, a.h_name, a.s_name_ru,
                a.country, a.n_id, a.price, a.reserv, (a.quantity-a.reserv) as itogo, a.compiled_name_otdel,
                b.ID_ORDERS_LIST, b.QUANTITY, b.QUANTITY * a.price as aaa,
                ID_ORDERS_CLIENTS_ as ID_ORDERS_CLIENTS,
                null as spesification,
                type_ as ttt
          FROM store_view a,
            ( select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active
              from ORDERS_LIST OCO
              where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_
            ) b
          WHERE /*Filter*/ 1=1 and a.id_departments = id_dep_ and a.n_id = b.n_id(+) and a.id_office = const_office
          ORDER BY a.F_TYPE, a.F_SUB_TYPE, a.F_NAME_RU;

  else
     open cursor_ for
          SELECT a.store_type, a.id_departments, a.full_name, a.f_name, a.f_name_ru, a.f_type, a.f_sub_type, a.code, a.len,
                a.pack, a.colour, a.col_id, a.ft_id, a.fst_id, a.fn_id, a.s_id, a.c_id, a.h_code, a.h_name, a.s_name_ru,
                a.country, a.n_id, a.price, a.reserv, (a.quantity-a.reserv) as itogo, a.compiled_name_otdel,
                b.ID_ORDERS_LIST, b.QUANTITY, b.QUANTITY * a.price as aaa,
                ID_ORDERS_CLIENTS_ as ID_ORDERS_CLIENTS,
                spesification,
                type_ as ttt
          FROM store_view a,
            ( select OCO.ID_ORDERS_LIST, OCO.QUANTITY, OCO.ID_ORDERS_CLIENTS, oco.n_id, oco.active
              from ORDERS_LIST OCO
              where oco.active = 1 AND ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_
            ) b
          WHERE /*Filter*/ 1=1 and a.id_departments = id_dep_ and a.n_id = b.n_id(+) and a.id_office = const_office
          ORDER BY a.F_TYPE, a.F_SUB_TYPE, a.F_NAME_RU;
   end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_reserv', '');
        RAISE_APPLICATION_ERROR (-20119, 'Запрос не выполнился. ' || SQLERRM);
end;  -- get_reserv


--
-- Запись кнопки
--
PROCEDURE set_button
(
    FST_ID_ in number,
    ID_DEP_ in number,
    but_ in number,
    FT_ID_ in number
)
IS
BEGIN
   if (FT_ID_ = 0) then
      delete from BUTTONS_SET where FST_ID = FST_ID_ and ID_DEP = ID_DEP_;
      insert into BUTTONS_SET values(FST_ID_, ID_DEP_, but_, null);
   else
      delete from BUTTONS_SET where FST_ID in (select FST_ID from fst_view where ft_id = FT_ID_) and ID_DEP = ID_DEP_;
      insert into BUTTONS_SET ( select FST_ID, ID_DEP_, but_, null from fst_view where ft_id = FT_ID_ and id_departments = ID_DEP_ );
   end if;

   commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.set_button', '');
        RAISE_APPLICATION_ERROR (-20120, 'Запрос не выполнился. ' || SQLERRM);
end;  -- set_button


--
-- Убирание кнопки
--
PROCEDURE remove_button
(
    FST_ID_ in number,
    ID_DEP_ in number,
    but_    in number,
    FT_ID_  in number
)
IS
BEGIN
    if (FT_ID_ = 0) then
        delete from BUTTONS_SET where fst_id = FST_ID_ and ID_DEP = ID_DEP_ and nbutton = but_;
    else
        delete from BUTTONS_SET where fst_id in (select fst_id from fst_view where ft_id = FT_ID_ and id_departments = ID_DEP_ ) and ID_DEP = ID_DEP_ and nbutton = but_;
    end if;

    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.remove_button', '');
        RAISE_APPLICATION_ERROR (-20121, 'Запрос не выполнился. ' || SQLERRM);
end;  -- remove_button


--
-- Добавление нового клиента в заказ
--
PROCEDURE save_new_order
(
    id_             in out number,
    ID_ORDERS_F_    in number,
    ID_CLIENT_      in number,
    DDATE_          in date,
    user_           in varchar2,
    NN_             in number,
    v_file          in varchar2
--    , v_info          in varchar2
)
IS
  id_user_ number;
  vAlpha varchar2(2);
BEGIN
    select id_clients into id_user_ from clients where login = user_ and id_office = const_office;

    if (id_user_ is null or id_user_ = 0) then
         RAISE_APPLICATION_ERROR (-20901, 'Ненайден код сотрудника!');
    else
       new_alpha(ID_ORDERS_F_,ID_CLIENT_,vAlpha);
/*
       INSERT INTO ORDERS_CLIENTS
       VALUES(ORDERS_CLIENTS_SEQ.NEXTVAL, ID_ORDERS_F_, ID_CLIENT_, 0, 0, DDATE_, 0, null, null, 1, NN_,
              (SELECT decode(count(*),0,null,1,'A',2,'B',3,'C',4,'D',5,'E',6,'F',7,'G',8,'H',9,'I',10,'J') ALPHA FROM ORDERS_CLIENTS WHERE ID_ORDERS=ID_ORDERS_F_ AND ID_CLIENTS=ID_CLIENT_ and ACTIVE=1),
              id_user_, const_office, sysdate, null, v_file, null, null
              )
       returning ID_ORDERS_CLIENTS into id_;
*/
       INSERT INTO ORDERS_CLIENTS
         VALUES(ORDERS_CLIENTS_SEQ.NEXTVAL, ID_ORDERS_F_, ID_CLIENT_, 0, 0, DDATE_, 0, null, null, 1, NN_, vAlpha, id_user_, const_office, sysdate, null, v_file, null, null, null)
         returning ID_ORDERS_CLIENTS into id_;
    end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.save_new_order', '');
        RAISE_APPLICATION_ERROR (-20122, 'Запрос не выполнился. ' || SQLERRM);
END;  -- save_new_order


--
-- Добавляем строку поиска на кнопку
--
PROCEDURE change_s
(
    dep_     in number,
    button_  in number,
    char_    in varchar2,
    all_     in number,
    fst_id_  in number
)
IS
BEGIN
    if (all_ = 1) then
        update BUTTONS_SET set f_char = char_ where ID_DEP = dep_ and NBUTTON = button_;
    else
        update BUTTONS_SET set f_char = char_ where ID_DEP = dep_ and NBUTTON = button_ and fst_id = fst_id_;
    end if;
    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.change_s', '');
        RAISE_APPLICATION_ERROR (-20123, 'Запрос не выполнился. ' || SQLERRM);
END;  -- change_s


--
-- Выбор 10 последних заказов
--
PROCEDURE get_top_order
(
    debt_   in number,
    cursor_ out ref_cursor
)
is
begin
    open cursor_ for
        select a.* from (
          SELECT O.ID_ORDERS, O.ID_ORDERS || ' ' || O.DATE_TRUCK as date_truck
          FROM ORDERS O
          WHERE O.N_TYPE=0 AND ACTIVE=1 AND O.ID_DEPARTMENTS=debt_ and o.id_office = const_office
          ORDER BY O.ID_ORDERS, O.DATE_TRUCK DESC
        ) a
        where ROWNUM < 11;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.check_order', '');
        RAISE_APPLICATION_ERROR (-20124, 'Запрос не выполнился. ' || SQLERRM);
end;


--
-- Выбираем заказ клиента
--
PROCEDURE get_show_order
(
    id_dep_     in number,
    ID_CL_      in number,
    id_         in number,
    cursor_     out ref_cursor
)
IS
begin
    open cursor_ for
        SELECT nom.COMPILED_NAME, nom.f_name, nom.F_NAME_RU, nom.F_SUB_TYPE, nom.F_TYPE, nom.N_ID, nom.LEN,
            nom.PACK, nom.VBN, nom.WEIGHT, nom.FST_ID, nom.FT_ID, nom.C_ID, nom.S_ID, nom.S_NAME_RU, nom.COLOUR,
            nom.COUNTRY, nom.ID_DEPARTMENTS, nom.rus_marks, nom.h_code, nom.remarks,
            nom.h_name,
            --case when b.f_char is null then nom.h_name else trim(substr(nom.h_name, length(trim(b.f_char))+1, length(nom.h_name) )) end h_name,
            nom.compiled_name_otdel, l.QUANTITY, o.id_orders_clients, nom.hol_type, nom.hol_sub_type
            , b.nbutton, ht.ord
        FROM
            ORDERS_CLIENTS o, orders_list l, NOMENCLATURE_MAT_VIEW nom, hol_types ht
            , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a where id_dep = id_dep_) b
        WHERE /*Filter*/ 1=1
            and o.ID_ORDERS = id_
            --and o.ID_CLIENTS = ID_CL_
            and o.ID_ORDERS_CLIENTS = ID_CL_
            and o.ID_ORDERS_CLIENTS = l.ID_ORDERS_CLIENTS
            and l.n_id = nom.n_id and nom.notuse = 0
            and o.n_type < 2
            and nom.ID_DEPARTMENTS= id_dep_
            and nom.fst_id = b.fst_id(+)
            and nom.hol_type = ht.hol_type(+)
        ;
end;


--
-- Выбираем статистику
--
PROCEDURE get_stat
(
    id_dep_          in number,
    id_order_        in number,
    id_client_       in number,
    id_fst_          in number,
    fst_             in varchar2,
    zatir_           in number,
    n_id_            in number,
    cursor_          out ref_cursor
)
IS
begin
    open cursor_ for
        select a.hh, a.nbutton, a.h_category, nvl(a.weight,0) weight, nvl(a.quant, 0) quant, qq, nvl(a.weight_p,0) weight_p, nvl(a.quant_p, 0) quant_p, qq_p, price from (
          select '1 :: группы цветов' hh, c.nbutton,
                 case when c.nbutton = 1 then 'DUTCH' else
                 case when c.nbutton = 2 then 'EQUADOR' else
                 case when c.nbutton = 3 then 'CHRYS' else
                 case when c.nbutton = 4 then 'GREENS' else
                 case when c.nbutton = 6 then 'CARN' else
                 case when c.nbutton = 7 then 'LILY' else
                 case when c.nbutton = 5 then 'OTHERS' else ''
                 end end end end end end end h_category,
                 nvl(a.weight,0) weight, nvl(a.quant, 0) quant, qq,
                 nvl(a.weight_p,0) weight_p, nvl(a.quant_p, 0) quant_p, qq_p
                 , price
               from (
                select nvl(t.ht_id,0) as nbutton, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq
                        , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                        , sum(nvl(a.correction,a.quantity)*p.price) as price
                      from orders_list a, orders_clients b, buttons_set c, FST_VIEW d, NOMENCLATURE N, price_list p, hol_types t, orders o
                      where a.id_orders_clients = b.id_orders_clients
                            and b.id_orders = id_order_
                            and a.active = 1
                            and b.active = 1
                            and (b.id_orders_clients = id_client_ or id_client_ = 0)
                            and a.N_ID = N.N_ID and a.active = 1 AND n.Fst_Id = d.FST_ID and d.FT_ID <> 114
                            and d.FST_ID = c.Fst_Id(+) and id_dep_ = c.id_dep(+)
                            and nvl(a.correction,a.quantity) <> 0
                            and (a.zatirka = zatir_ or zatir_ = -1)
                            and a.n_id = p.n_id(+)
                            and n.hol_type = t.hol_type(+)
                            and n.NOTUSE = 0
                            and b.n_type < 2
                            and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)
                              group by t.ht_id -- c.nbutton
                  ) a, (
                     select 1 as nbutton from dual
                     union all
                     select 2 from dual
                     union all
                     select 3 from dual
                     union all
                     select 4 from dual
                     union all
                     select 5 from dual
                     union all
                     select 6 from dual
                     union all
                     select 7 from dual
                     --   SELECT distinct a.nbutton FROM buttons_set a WHERE a.id_dep = id_dep_
                     ) c
                     where a.nbutton(+) = c.nbutton

              union all

              select '1 :: группы цветов' hh, 10 as nbutton, 'TULIPS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FT_ID = 114
                and nvl(a.correction,a.quantity) <> 0
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)

              union all

              select '2 :: всего' hh, 20 as nbutton, 'TOTAL STEMS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and nvl(a.correction,a.quantity) <> 0
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)

              union all

              select '2 :: всего' hh, 21 as nbutton, 'WITH DRY TULIPS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FT_ID = 114  -- тюльпаны
                and nvl(a.correction,a.quantity) <> 0
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)

              union all

              select '2 :: всего' hh, 21 as nbutton, 'WITH TULIPS ON WATER' as h_category, sum(nvl(n.weight,0)*nvl(a.correction,a.quantity)) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then nvl(n.WEIGHTDRY,0)*a.quantity else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FT_ID = 114  -- тюльпаны
                and nvl(a.correction,a.quantity) <> 0
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)

              union all

              select '3 :: подтип цветов' hh, 32 as nbutton, fst_ as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FST_ID = id_fst_  -- выделенный подтип
                and nvl(a.correction,a.quantity) <> 0
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)

              union all

              select '4 :: позиция' hh, 41 as nbutton, n.h_name as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, count(*) as qq --, b.id_orders
                , sum(case when a.pack_=1 then a.weight else 0 end) as weight_p, sum(case when a.pack_=1 then a.quantity else 0 end) as quant_p, sum(case when a.pack_=1 then 1 else 0 end) as qq_p
                , sum(nvl(a.correction,a.quantity)*p.price) as price
              from orders_list a, orders_clients b, NOMENCLATURE N, price_list p, orders o
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                and nvl(a.correction,a.quantity) <> 0
                and a.n_id = n_id_
                and (a.zatirka = zatir_ or zatir_ = -1)
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)
              group by n.h_name


              ) a
              order by nbutton;

end;


--
-- Выбираем статистику
--
PROCEDURE get_stat_region
(
    id_order_        in number,
    cursor_          out ref_cursor
)
IS
begin
    open cursor_ for
        select 'Всего по заказу' hh, 20 as nbutton, sum(nvl(a.correction,a.quantity)) as quant, count(distinct a.n_id) as nn,  sum(nvl(a.correction,a.quantity)*p.price) as price
            from orders_list a, orders_clients b, NOMENCLATURE N, price_list p, orders o
            where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                --and (b.id_orders_clients = 0 or 0 = 0)
                and a.N_ID = N.N_ID
                and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                and nvl(a.correction,a.quantity) <> 0
                and a.n_id = p.n_id(+)
                and b.id_orders = o.id_orders and ((n.s_id = o.s_id and const_office = 1) or const_office > 1)
        union all
        select 'Всего по ошибкам' hh, 30 as nbutton, get_orders_error(id_order_,0) as quant, get_orders_error(id_order_,1) as nn, null as price
            from dual;

end get_stat_region;



--
-- Выбираем статистику + загрузку по машинам
--
PROCEDURE get_stat2
(
    id_dep_        in number,
    id_order_      in number,
    id_client_     in number,
    id_fst_        in number,
    fst_           in varchar2,
    without_pack_  in number,
    cursor_        out ref_cursor
)
IS
begin
   open cursor_ for
        select a.hh, a.nbutton, a.h_category, nvl(a.weight,0) weight, nvl(a.quant, 0) quant,
        nvl(tr1_w,0) tr1_w, nvl(tr1_q,0) tr1_q,
        nvl(tr2_w,0) tr2_w, nvl(tr2_q,0) tr2_q,
        nvl(tr3_w,0) tr3_w, nvl(tr3_q,0) tr3_q,
        nvl(tr4_w,0) tr4_w, nvl(tr4_q,0) tr4_q,
        nvl(tr5_w,0) tr5_w, nvl(tr5_q,0) tr5_q,
        nvl(tr6_w,0) tr6_w, nvl(tr6_q,0) tr6_q,
        nvl(tr7_w,0) tr7_w, nvl(tr7_q,0) tr7_q,
        nvl(tr8_w,0) tr8_w, nvl(tr8_q,0) tr8_q,
        nvl(tr0_w,0) tr0_w, nvl(tr0_q,0) tr0_q
         from (
          select '1 :: группы цветов' hh, c.nbutton,
                 case when c.nbutton = 1 then 'DUTCH' else
                 case when c.nbutton = 2 then 'EQUADOR' else
                 case when c.nbutton = 3 then 'CHRYS' else
                 case when c.nbutton = 4 then 'GREENS' else
                 case when c.nbutton = 6 then 'CARN' else
                 case when c.nbutton = 7 then 'LILY' else
                 case when c.nbutton = 5 then 'OTHERS' else ''
                 end end end end end end end h_category, nvl(sum(a.weight),0) weight, nvl(sum(a.quant), 0) quant,
                 sum(case when a.truck = 1 then nvl(a.weight,0) else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(a.quant,0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(a.weight,0) else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(a.quant,0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(a.weight,0) else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(a.quant,0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(a.weight,0) else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(a.quant,0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(a.weight,0) else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(a.quant,0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(a.weight,0) else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(a.quant,0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(a.weight,0) else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(a.quant,0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(a.weight,0) else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(a.quant,0) else 0 end) tr8_q,
                 sum(case when a.truck = 0 then nvl(a.weight,0) else 0 end) tr0_w,
                 sum(case when a.truck = 0 then nvl(a.quant,0) else 0 end) tr0_q
               from (
                select nvl(t.ht_id,0) as nbutton, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant, nvl(a.truck,0) as truck
                      from orders_list a
                        inner join orders_clients b on b.id_orders_clients = a.id_orders_clients and b.n_type < 2 and b.id_orders = id_order_ and b.active = 1 and (b.pack_ = without_pack_ or without_pack_ = 1) and (b.id_orders_clients = id_client_ or id_client_ = 0)
                        inner join NOMENCLATURE N on N.N_ID = a.N_ID and n.NOTUSE = 0
                        inner join FST_VIEW d on d.FST_ID = n.Fst_Id and d.FT_ID <> 114
                        left outer join buttons_set c on c.Fst_Id = d.FST_ID and c.id_dep = id_dep_
                        left outer join hol_types t on t.hol_type = n.hol_type
                      where a.active = 1
                            and a.quantity <> 0
                            and a.zatirka = 0
                      group by t.ht_id, a.truck
                      --group by c.nbutton, a.truck
                  ) a,
                    (
                     select 1 as nbutton from dual
                     union all
                     select 2 from dual
                     union all
                     select 3 from dual
                     union all
                     select 4 from dual
                     union all
                     select 5 from dual
                     union all
                     select 6 from dual
                     union all
                     select 7 from dual
                     --   SELECT distinct a.nbutton FROM buttons_set a WHERE a.id_dep = id_dep_
                    ) c
                     where a.nbutton(+) = c.nbutton
                  group by c.nbutton
              union all

              select '1 :: группы цветов' hh, 10 as nbutton, 'TULIPS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant,
                 sum(case when a.truck = 1 then nvl(a.weight,0) else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(a.weight,0) else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(a.weight,0) else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(a.weight,0) else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(a.weight,0) else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(a.weight,0) else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(a.weight,0) else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(a.weight,0) else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr8_q,
                 sum(case when nvl(a.truck,0) = 0 then nvl(a.weight,0) else 0 end) tr0_w,
                 sum(case when nvl(a.truck,0) = 0 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr0_q
              from orders_list a
                inner join orders_clients b on b.id_orders_clients = a.id_orders_clients and b.id_orders = id_order_ and b.n_type < 2 and (b.id_orders_clients = id_client_ or id_client_ = 0) and (b.pack_ = without_pack_ or without_pack_ = 1) and b.active = 1
                inner join NOMENCLATURE N on n.N_ID = a.N_ID and n.NOTUSE = 0
                inner join FST_VIEW d on d.FST_ID = n.Fst_Id and d.FT_ID = 114
              where a.active = 1
                and a.quantity <> 0
                and a.zatirka = 0

              union all

              select '2 :: всего' hh, 20 as nbutton, 'TOTAL STEMS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant,
                 sum(case when a.truck = 1 then nvl(a.weight,0) else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(a.weight,0) else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(a.weight,0) else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(a.weight,0) else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(a.weight,0) else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(a.weight,0) else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(a.weight,0) else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(a.weight,0) else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr8_q,
                 sum(case when nvl(a.truck,0) = 0 then nvl(a.weight,0) else 0 end) tr0_w,
                 sum(case when nvl(a.truck,0) = 0 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr0_q
              from orders_list a
                inner join orders_clients b on b.id_orders_clients = a.id_orders_clients and b.id_orders = id_order_ and b.n_type < 2 and (b.id_orders_clients = id_client_ or id_client_ = 0) and (b.pack_ = without_pack_ or without_pack_ = 1) and b.active = 1
                inner join NOMENCLATURE N on n.N_ID = a.N_ID and n.NOTUSE = 0
                inner join FST_VIEW d on d.FST_ID = n.Fst_Id
              where a.active = 1
                and a.quantity <> 0
                and a.zatirka = 0

              union all

              select '2 :: всего' hh, 21 as nbutton, 'WITH DRY TULIPS' as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant,
                 sum(case when a.truck = 1 then nvl(a.weight,0) else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(a.weight,0) else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(a.weight,0) else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(a.weight,0) else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(a.weight,0) else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(a.weight,0) else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(a.weight,0) else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(a.weight,0) else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr8_q,
                 sum(case when nvl(a.truck,0) = 0 then nvl(a.weight,0) else 0 end) tr0_w,
                 sum(case when nvl(a.truck,0) = 0 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr0_q
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and (b.pack_ = without_pack_ or without_pack_ = 1)
                and a.N_ID = N.N_ID and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FT_ID = 114  -- тюльпаны
                and a.quantity <> 0
                and a.zatirka = 0

              union all

              select '2 :: всего' hh, 21 as nbutton, 'WITH TULIPS ON WATER' as h_category, sum(nvl(n.weight,0)*a.quantity) as weight, sum(nvl(a.correction,a.quantity)) as quant,
                 sum(case when a.truck = 1 then nvl(n.weight,0)*a.quantity else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(n.weight,0)*a.quantity else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(n.weight,0)*a.quantity else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(n.weight,0)*a.quantity else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(n.weight,0)*a.quantity else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(n.weight,0)*a.quantity else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(n.weight,0)*a.quantity else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(n.weight,0)*a.quantity else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr8_q,
                 sum(case when nvl(a.truck,0) = 0 then nvl(n.weight,0)*a.quantity else 0 end) tr0_w,
                 sum(case when nvl(a.truck,0) = 0 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr0_q
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and (b.pack_ = without_pack_ or without_pack_ = 1)
                and a.N_ID = N.N_ID and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FT_ID = 114  -- тюльпаны
                and a.quantity <> 0
                and a.zatirka = 0

              union all
              select '3 :: подтип цветов' hh, 32 as nbutton, fst_ as h_category, sum(a.weight) as weight, sum(nvl(a.correction,a.quantity)) as quant,
                 sum(case when a.truck = 1 then nvl(a.weight,0) else 0 end) tr1_w,
                 sum(case when a.truck = 1 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr1_q,
                 sum(case when a.truck = 2 then nvl(a.weight,0) else 0 end) tr2_w,
                 sum(case when a.truck = 2 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr2_q,
                 sum(case when a.truck = 3 then nvl(a.weight,0) else 0 end) tr3_w,
                 sum(case when a.truck = 3 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr3_q,
                 sum(case when a.truck = 4 then nvl(a.weight,0) else 0 end) tr4_w,
                 sum(case when a.truck = 4 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr4_q,
                 sum(case when a.truck = 5 then nvl(a.weight,0) else 0 end) tr5_w,
                 sum(case when a.truck = 5 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr5_q,
                 sum(case when a.truck = 6 then nvl(a.weight,0) else 0 end) tr6_w,
                 sum(case when a.truck = 6 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr6_q,
                 sum(case when a.truck = 7 then nvl(a.weight,0) else 0 end) tr7_w,
                 sum(case when a.truck = 7 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr7_q,
                 sum(case when a.truck = 8 then nvl(a.weight,0) else 0 end) tr8_w,
                 sum(case when a.truck = 8 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr8_q,
                 sum(case when nvl(a.truck,0) = 0 then nvl(a.weight,0) else 0 end) tr0_w,
                 sum(case when nvl(a.truck,0) = 0 then nvl(nvl(a.correction,a.quantity),0) else 0 end) tr0_q
              from orders_list a, orders_clients b, FST_VIEW d, NOMENCLATURE N
              where a.id_orders_clients = b.id_orders_clients
                and b.id_orders = id_order_
                and (b.id_orders_clients = id_client_ or id_client_ = 0)
                and (b.pack_ = without_pack_ or without_pack_ = 1)
                and a.N_ID = N.N_ID and n.NOTUSE = 0
                and a.active = 1
                and b.active = 1
                and b.n_type < 2
                AND n.Fst_Id = d.FST_ID
                and d.FST_ID = id_fst_  -- выделенный подтип
                and a.quantity <> 0
                and a.zatirka = 0

              ) a
              order by nbutton;


end;


--
-- Добавляем REMARKS к названию
--
PROCEDURE EDIT_REMARKS
(
  id_orders_  in number,
  ID_ORDERS_CLIENTS_ in number,
  N_ID_       in number,
  Q_NUM_       in number,
  REMARKS_    in varchar2
)
IS
  sql_str  varchar2(2000);
  vWeight      number;
  IDD_         number;
  vSubWeight   number;
  vPack  number;
  vTruck number;
BEGIN



    vWeight := 0;
    IDD_ := 0;

     -- Пытаемся найти такую же позицию в заказе
     BEGIN
        sql_str := 'SELECT ID_ORDERS_LIST FROM ORDERS_LIST WHERE ID_ORDERS_CLIENTS='||ID_ORDERS_CLIENTS_||' AND N_ID='||N_ID_||' and trim(upper(nvl(remarks,''-''))) = trim(upper(mvl('''||REMARKS_||''',''-'')))';
        SELECT ID_ORDERS_LIST INTO IDD_
        FROM ORDERS_LIST
        WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_ AND N_ID=N_ID_ and trim(upper(nvl(remarks,''-''))) = trim(upper(nvl(REMARKS_,'-')));
     EXCEPTION
        WHEN OTHERS THEN IDD_ := -1;
     END;

     select nvl(pack_,0), nvl(N_TRUCK,0) into vPack, vTruck from ORDERS_CLIENTS WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;

     vWeight := calc_weight(N_ID_);

     -- Такой цветок уже есть в заказе
     if IDD_ > 0 THEN
/*
        -- изменем кол-во заказа
        UPDATE ORDERS_LIST SET QUANTITY = case when v_site_data is null then Q_NUM_ else (case when Q_NUM_=0 then Q_NUM_ else QUANTITY + Q_NUM_ end) end, TRUCK = TRUCK_, date_change=sysdate,
                --count_data = case when v_site_data||chr(10) = site_data then count_data else nvl(count_data,0)+(case when length(v_site_data) < 5 then 0 else 1 end) end,
                site_data  = case when v_site_data||chr(10) = site_data then site_data else site_data||v_site_data||chr(10) end,
                correction  = case when Q_NUM_=0 then null else correction end
        WHERE ID_ORDERS_LIST = IDD_;
        update ORDERS_LIST set WEIGHT = vWeight * QUANTITY WHERE ID_ORDERS_LIST = IDD_;
*/
        NULL;
     ELSE
        sql_str := 'INSERT INTO ORDERS_LIST VALUES(ORDERS_LIST_SEQ.NEXTVAL,'||N_ID_||','||nvl(Q_NUM_,0)||','||ID_ORDERS_CLIENTS_||','||vTruck||','||vWeight*Q_NUM_||',1,0,null,null,const_office,sysdate,'''',0,'||REMARKS_||','||vPack||',null)';
        INSERT INTO ORDERS_LIST VALUES(ORDERS_LIST_SEQ.NEXTVAL,N_ID_,nvl(Q_NUM_,0),ID_ORDERS_CLIENTS_, vTruck, vWeight*Q_NUM_, 1, 0, null, null, const_office, sysdate, '', 0, REMARKS_, vPack, null);
     END IF; -- N_ID_ > 0

     UPDATE ORDERS_CLIENTS SET D_DATE=sysdate, date_change=sysdate WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;


/* Е.В. просила не менять номенклатуру. Теперь будет remarks принадлежать одному заказу
   update NOMENCLATURE a set a.Remarks = REMARKS_, a.date_change=sysdate
   where a.n_id = N_ID_;
   nomenclature2_pkg.sync_nomenclature_one(n_id_);
   commit;
*/
--   update ORDERS_LIST set remarks = REMARKS_, date_change=sysdate where ID_ORDERS_LIST = N_ID_;  -- N_ID_- чтобы параметры не менять, а так это ID_ORDERS_LIST


   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.EDIT_REMARKS', '');
        RAISE_APPLICATION_ERROR (-20125, 'Запрос не выполнился. ' || SQLERRM);
END;  -- EDIT_REMARKS


--
-- Меняем признак паковки
--
PROCEDURE change_pack
(
    ID_ORDERS_CLIENTS_    in number,
    IS_PACK_              in number
)
IS
BEGIN
   update ORDERS_CLIENTS a set a.PACK_ = case when IS_PACK_ = 1 then 0 else 1 end, date_change=sysdate
   where a.ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;

   update orders_list a set a.PACK_ = case when IS_PACK_ = 1 then 0 else 1 end, date_change=sysdate
   where a.ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;
   --commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.change_pack', '');
        RAISE_APPLICATION_ERROR (-20126, 'Запрос не выполнился. ' || SQLERRM);
END;  -- change_pack


--
-- Достаем грузовики
--
PROCEDURE get_truck
(
    id_order_    in number,
    cursor_      in out ref_cursor
)
IS
BEGIN
   open cursor_ for
      select distinct a.truck
      from orders_list a, orders_clients b
      where a.id_orders_clients = b.id_orders_clients and b.id_orders = id_order_ and a.truck > 0 and b.n_type < 2;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_truck', '');
        RAISE_APPLICATION_ERROR (-20127, 'Запрос не выполнился. ' || SQLERRM);

END;  -- get_truck


--
-- Меняем машину
--
PROCEDURE insert_into_truck
(
    TRUCK_           in number,
    OLD_ID_ORDERS_   in number,
    OLD_N_ID_        in number
)
IS
BEGIN

      UPDATE ORDERS_LIST SET TRUCK = TRUCK_, date_change=sysdate
        WHERE N_ID = OLD_N_ID_ and zatirka = 0
              AND ID_ORDERS_CLIENTS IN (SELECT ID_ORDERS_CLIENTS FROM ORDERS_CLIENTS WHERE ID_ORDERS = OLD_ID_ORDERS_ and pack_ = 0 and n_type < 2);
/*
      UPDATE ORDERS_CLIENTS SET N_TRUCK = 0, date_change=sysdate
        WHERE ID_ORDERS = OLD_ID_ORDERS_
              AND ID_ORDERS_CLIENTS IN (SELECT ID_ORDERS_CLIENTS FROM ORDERS_LIST WHERE N_ID = OLD_N_ID_);
*/
      commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.insert_into_truck', '');
        RAISE_APPLICATION_ERROR (-20128, 'Запрос не выполнился. ' || SQLERRM);

END;  -- insert_into_truck


--
-- Меняем машину
--
PROCEDURE insert_into_truck_fst
(
  TRUCK_           in number,
  OLD_ID_ORDERS_   in number,
  OLD_N_ID_        in number
)
IS
BEGIN
  UPDATE ORDERS_LIST a SET a.TRUCK = TRUCK_, a.date_change=sysdate
  WHERE a.active=1 and exists ( SELECT 1 FROM NOMENCLATURE n WHERE n.FST_ID = OLD_N_ID_ and n.n_id = a.n_id )
        AND ID_ORDERS_CLIENTS IN ( SELECT ID_ORDERS_CLIENTS FROM ORDERS_CLIENTS WHERE ID_ORDERS = OLD_ID_ORDERS_ and PACK_ = 0 and n_type < 2);

/*
  UPDATE ORDERS_CLIENTS SET N_TRUCK = 0, date_change=sysdate
  WHERE ID_ORDERS = OLD_ID_ORDERS_
        AND ID_ORDERS_CLIENTS IN (
          SELECT ID_ORDERS_CLIENTS FROM ORDERS_LIST WHERE N_ID IN (
            SELECT N_ID FROM NOMENCLATURE WHERE FST_ID = OLD_N_ID_
          )
       );
*/
  commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.insert_into_truck_fst', '');
      RAISE_APPLICATION_ERROR (-20129, 'Запрос не выполнился. ' || SQLERRM);
END;  -- insert_into_truck_fst


--
-- Меняем машину
--
PROCEDURE insert_into_truck_ft
(
  TRUCK_           in number,
  OLD_ID_ORDERS_   in number,
  OLD_N_ID_        in number
)
IS
BEGIN
  UPDATE ORDERS_LIST a SET a.TRUCK = TRUCK_, a.date_change=sysdate
  WHERE a.active=1 and exists ( SELECT 1 FROM NOMENCLATURE_MAT_VIEW n WHERE n.FT_ID = OLD_N_ID_ and n.n_id = a.n_id )
        AND ID_ORDERS_CLIENTS IN ( SELECT ID_ORDERS_CLIENTS FROM ORDERS_CLIENTS WHERE ID_ORDERS = OLD_ID_ORDERS_ and PACK_ = 0 and n_type < 2);
/*
  UPDATE ORDERS_CLIENTS SET N_TRUCK = 0, date_change=sysdate
  WHERE ID_ORDERS = OLD_ID_ORDERS_
        AND ID_ORDERS_CLIENTS IN (
          SELECT ID_ORDERS_CLIENTS FROM ORDERS_LIST WHERE N_ID IN (
            SELECT N_ID FROM NOMENCLATURE_MAT_VIEW WHERE FT_ID = OLD_N_ID_
          )
        );
*/
  commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.insert_into_truck_ft', '');
      RAISE_APPLICATION_ERROR (-20130, 'Запрос не выполнился. ' || SQLERRM);

END;  -- insert_into_truck_ft



--
-- Найдем вес заказ для выгрузки в МСК
--
PROCEDURE get_order_for_msk
(
    id_order_    in number,
    cursor_      in out ref_cursor
)
IS
BEGIN
   open cursor_ for
    select dept, code, COMPILED_NAME_OTDEL, 0 as price, sum(quantity) as quantity, 0 as summ
    from (
        select n.hol_type, h_name, a.quantity, n.code as code
            , case when length(a.SITE_DATA) < 2 then n.namecode||'.'||n.bar_code||'.'||'...'||n.len||'.'||n.h_name else substr(a.SITE_DATA,1,instr(a.SITE_DATA,';')-1) end zakaz
            , decode(n.ID_DEPARTMENTS,121,1,61,2,62,3,0) as dept
            , n.COMPILED_NAME_OTDEL
        from orders_list a, orders_clients b, nomenclature_mat_view n
        where a.id_orders_clients = b.id_orders_clients
            and b.id_orders = id_order_
            and a.active = 1 and a.zatirka = 0
            and a.n_id = n.n_id and n.notuse = 0
            and b.active = 1
            and b.n_type < 2
        ) a
    group by a.dept, a.code, a.COMPILED_NAME_OTDEL, a.hol_type
    order by decode(a.hol_type, 'RO', 1, 'EC', 2, 'CH', 3, 'GR', 4, 'CA', 5, 'LI', 6, 'OT', 7, 8), a.COMPILED_NAME_OTDEL
    ;
/*
    select substr(a.zakaz,instr(a.zakaz,'.',1,6)+1,length(a.zakaz)) aa, sum(a.quantity) as quantity, a.code, a.zakaz, a.hol_type
    from (
        select n.hol_type, h_name, a.quantity, nvl(n.bar_code,n.code) as code, case when length(a.SITE_DATA) < 2 then n.namecode||'.'||n.bar_code||'.'||'...'||n.len||'.'||n.h_name else substr(a.SITE_DATA,1,instr(a.SITE_DATA,';')-1) end zakaz
        from orders_list a, orders_clients b, nomenclature_mat_view n
        where a.id_orders_clients = b.id_orders_clients
            and b.id_orders = id_order_
            and a.active = 1 and a.zatirka = 0
            and a.n_id = n.n_id
            and b.active = 1
        ) a
    group by a.hol_type, a.code, a.zakaz
    order by decode(a.hol_type, 'RO', 1, 'EC', 2, 'CH', 3, 'GR', 4, 'CA', 5, 'LI', 6, 'OT', 7, 8), substr(a.zakaz,instr(a.zakaz,'.',1,6)+1,length(a.zakaz))
    ;
*/
/*
    select a.n_id, sum(a.quantity) as quantity, nvl(n.bar_code,n.code) as code, substr(a.SITE_DATA,1,instr(a.SITE_DATA,';')-1) zakaz
    from orders_list a, orders_clients b, nomenclature n
    where a.id_orders_clients = b.id_orders_clients
        and b.id_orders = id_order_
        and a.active = 1 and a.zatirka = 0
        and a.n_id = n.n_id
        and b.active = 1
--    group by a.n_id,  n.code, a.SITE_DATA
    group by a.n_id, nvl(n.bar_code,n.code), a.SITE_DATA, n.hol_type, n.h_name
    order by decode(n.hol_type, 'RO', 1, 'EC', 2, 'CH', 3, 'GR', 4, 'CA', 5, 'LI', 6, 'OT', 7, 8), substr(a.SITE_DATA,instr(a.SITE_DATA,'.',1,6)+1,length(a.SITE_DATA))
--    order by decode(n.hol_type, 'RO', 1, 'EC', 2, 'CH', 3, 'GR', 4, 'CA', 5, 'LI', 6, 'OT', 7, 8), n.h_name
    ;
*/
   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_order_for_msk', '');
        RAISE_APPLICATION_ERROR (-20131, 'Запрос не выполнился. ' || SQLERRM);
END;  -- get_order_for_msk




-- Добавление позиции заказа к заказу клиента
PROCEDURE INS_ORDERS
(
    ID_ORDERS_CLIENTS_   IN NUMBER,
    N_ID_                IN NUMBER,
    Q_NUM_               IN NUMBER,
    TRUCK_               IN NUMBER,
    sub_weight           IN NUMBER,
    v_site_data          in varchar2,
    REMARKS_             in varchar2
)
IS
   vWeight      number;
   IDD_         number;
   vSubWeight   number;
   sqlstr varchar2(1000);
   vPack  number;
   vTruck number;

BEGIN
    vWeight := 0;
    IDD_ := 0;
/*
    SELECT count(*) into IDD_ FROM ORDERS_LIST
    WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_ AND N_ID=N_ID_ and trim(upper(nvl(remarks,'-'))) = trim(upper(nvl(REMARKS_,'-')));
    LOG_ERR('Всего записей найдено! IDD_'||IDD_, 10, 'pack_orders.INS_ORDERS', 'ID_ORDERS_CLIENTS_='||ID_ORDERS_CLIENTS_||' N_ID_='||N_ID_||' Q_NUM_='||Q_NUM_||' TRUCK_='||TRUCK_||' sub_weight='||sub_weight||' v_site_data='||v_site_data||' REMARKS_='||REMARKS_);
*/
     -- Пытаемся найти такую же позицию в заказе
     BEGIN
        sqlstr := 'SELECT ID_ORDERS_LIST FROM ORDERS_LIST WHERE ID_ORDERS_CLIENTS='||ID_ORDERS_CLIENTS_||' AND N_ID='||N_ID_||' and trim(upper(nvl(remarks,''-''))) = trim(upper(nvl('''||REMARKS_||''',''-'')))';
        SELECT ID_ORDERS_LIST INTO IDD_
        FROM ORDERS_LIST
        WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_ AND N_ID=N_ID_ and trim(upper(nvl(remarks,'-'))) = trim(upper(nvl(REMARKS_,'-')));
     EXCEPTION WHEN OTHERS THEN
        IDD_ := -1;
     END;

     select nvl(pack_,0), nvl(N_TRUCK,0) into vPack, vTruck from ORDERS_CLIENTS WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_;
     vWeight := calc_weight(N_ID_);

     -- Такой цветок уже есть в заказе
     if IDD_ > 0 THEN
        -- изменем кол-во заказа
        UPDATE ORDERS_LIST SET QUANTITY = case when v_site_data is null then Q_NUM_ else (case when Q_NUM_=0 then Q_NUM_ else QUANTITY + Q_NUM_ end) end, TRUCK = TRUCK_, date_change=sysdate,
                --count_data = case when v_site_data||chr(10) = site_data then count_data else nvl(count_data,0)+(case when length(v_site_data) < 5 then 0 else 1 end) end,
                site_data  = case when v_site_data||chr(10) = site_data then site_data else site_data||v_site_data||chr(10) end,
                correction  = case when Q_NUM_=0 then null else correction end
        WHERE ID_ORDERS_LIST = IDD_;
        update ORDERS_LIST set WEIGHT = vWeight * QUANTITY WHERE ID_ORDERS_LIST = IDD_;
     ELSE
        INSERT INTO ORDERS_LIST
        VALUES(ORDERS_LIST_SEQ.NEXTVAL,N_ID_,nvl(Q_NUM_,0),ID_ORDERS_CLIENTS_, vTruck, vWeight*Q_NUM_, 1, 0, null, null, const_office, sysdate, v_site_data||chr(10), 0, REMARKS_, vPack, null)
        returning id_orders_list into tmp_id;
     END IF; -- N_ID_ > 0

     UPDATE ORDERS_CLIENTS SET D_DATE = sysdate, date_change = sysdate WHERE ID_ORDERS_CLIENTS = ID_ORDERS_CLIENTS_;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.INS_ORDERS', '');
        RAISE_APPLICATION_ERROR (-20132, 'Запрос не выполнился. ' || SQLERRM);

END; -- INS_ORDERS


-- Объединение отмеченных инвойсов в новый заказ для дальнейшей разноски
PROCEDURE join_orders
(
    vOrders   IN varchar2,
    vOutID    IN out NUMBER
)
IS
  sqlstr varchar2(512);
  idDep number;
  idOC number;
  vS_ID number;
begin

  insert into tmp_exp_doc ( select * from table(cast(get_list_elements(vOrders) as number_list_type)) );

  select distinct s_id into vS_ID from ORDERS where ID_ORDERS in (select * from tmp_exp_doc) and rownum = 1;

  select ORDERS_SEQ.NEXTVAL into vOutID from dual;
  sqlstr  := 'select distinct ID_DEPARTMENTS from ORDERS where ID_ORDERS in ('||vOrders||') and rownum=1';
  execute immediate sqlstr into idDep;

  INSERT INTO ORDERS VALUES(vOutID, sysdate, sysdate, idDep, 0, 'Объединенный заказ по номерам '||vOrders, 1, sysdate, const_office, sysdate, vS_ID, null);

  for data in (select distinct id_clients from orders_clients b where b.ID_ORDERS in (select * from tmp_exp_doc) and b.n_type < 2)
  LOOP
    select orders_clients_seq.NEXTVAL into idOC from dual;

    sqlstr := 'insert into orders_clients (select '||idOC||', '||vOutID||', '||data.id_clients||', 0,
       sum(a.capacity), sysdate, 0, null, null, 1, 0, null, max(a.id_user), const_office, sysdate, null, null, null, null
       from orders_clients a where a.ID_ORDERS in (sqlstr) and a.id_clients = '||data.id_clients||' and a.active=1
       group by a.id_clients)';
    insert into orders_clients (select idOC, vOutID, data.id_clients, 0,
       sum(a.capacity), sysdate, 0, null, null, 1, 0, null, max(a.id_user), const_office, sysdate, null, null, null, null, a.priority
       from orders_clients a where a.ID_ORDERS in (select * from tmp_exp_doc) and a.id_clients = data.id_clients and a.active=1 and a.n_type < 2
       group by a.id_clients)
    ;

    insert into orders_list (select orders_list_seq.nextval as id_orders_list, z.* from ( select a.n_id, sum(a.quantity) as quantity, idOC as id_orders_clients,
       0 as truck, 0 as weight, 1 as active, 0 as zatirka, null as price, 1 as store_type, const_office as id_office, sysdate as date_change,
       null as site_data, null as count_data, a.remarks, a.pack_, null
       from orders_clients b, orders_list a
       where a.active = 1 and a.ID_ORDERS_CLIENTS = b.ID_ORDERS_CLIENTS and b.id_clients = data.id_clients and b.active=1 and b.ID_ORDERS in (select * from tmp_exp_doc) and b.n_type < 2
       group by a.n_id, a.remarks,  a.pack_) z
    );

--    RAISE_APPLICATION_ERROR (-20133, data.id_clients);
  end loop;
  commit;

  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.join_orders', sqlstr);
        RAISE_APPLICATION_ERROR (-20133, 'Запрос не выполнился. ' || SQLERRM);
end join_orders;



--
-- Найдем статистику по бронированию позиции
--
PROCEDURE get_reserv_stat
(
    vN_ID    in number,
    cursor_  in out ref_cursor
)
IS
BEGIN
   open cursor_ for
    SELECT b.id_orders, a.on_date, c.nick, l.quantity
        FROM orders_list l, orders_clients a, orders b, clients c
        where l.n_id = vN_ID and l.id_orders_clients = a.id_orders_clients and a.status = 0 and a.id_orders = b.id_orders
            and c.id_clients = a.id_clients
        order by a.on_date
    ;
   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_reserv_stat', '');
        RAISE_APPLICATION_ERROR (-20134, 'Запрос не выполнился. ' || SQLERRM);

end get_reserv_stat;




-- Объединение заказов клиента
PROCEDURE join_clients_order
(
    vCurOrderClient  IN number,
    vNewPrifix       IN varchar2
)
IS
  sqlstr varchar2(512);
  idClient number;
  idOrder number;
  idNewOrder number;
begin

  -- Найдем заказ куда будем копировать по новому коду клиента и префикса
  select ID_CLIENTS, ID_ORDERS into idClient, idOrder from orders_clients where ID_ORDERS_CLIENTS=vCurOrderClient;
  sqlstr := ' select ID_CLIENTS, ID_ORDERS from orders_clients where ID_ORDERS_CLIENTS='||vCurOrderClient;

  begin
      sqlstr := 'select ID_ORDERS_CLIENTS from orders_clients where ID_CLIENTS='||idClient||' and active=1 and ID_ORDERS_CLIENTS<>'||vCurOrderClient||' and ID_ORDERS='||idOrder||' and (ALPHA = '||vNewPrifix||' or (ALPHA is null and '||vNewPrifix||' is null))';
      select ID_ORDERS_CLIENTS into idNewOrder from orders_clients where ID_CLIENTS=idClient and active=1 and ID_ORDERS_CLIENTS<>vCurOrderClient and n_type < 2 and ID_ORDERS=idOrder and (ALPHA = vNewPrifix or (ALPHA is null and vNewPrifix is null));
  exception when no_data_found then
    update orders_clients set  ALPHA = vNewPrifix where ID_ORDERS_CLIENTS=vCurOrderClient;
    commit;
    idNewOrder := 0;
  end;

  --LOG_ERR('idNewOrder=' || idNewOrder, 0, 'join_clients_order', sqlstr);
  if idNewOrder > 0 then
    for data in (select N_ID, QUANTITY, TRUCK, remarks from orders_list b where b.ID_ORDERS_CLIENTS=vCurOrderClient )
    LOOP
        --LOG_ERR('idNewOrder='||idNewOrder||' data.N_ID='||data.N_ID||' data.quantity='||data.quantity, 1, 'join_clients_order', '');
        INS_ORDERS(idNewOrder, data.N_ID, data.quantity, data.TRUCK, null, data.quantity, data.remarks);
    end loop;
    delete from orders_list where ID_ORDERS_CLIENTS=vCurOrderClient;
    delete from orders_clients where ID_ORDERS_CLIENTS=vCurOrderClient;
    commit;
  end if;


  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.join_clients_order', sqlstr);
        RAISE_APPLICATION_ERROR (-20135, 'Запрос не выполнился. ' || SQLERRM);
end join_clients_order;


-- Объединение заказов клиента
PROCEDURE SEPERATE_ORDER
(
    pID_ORDERS_CLIENTS  IN number
)
IS
  vNN       number;
  vClients  number;
  vPack     number;
  vCurOrder number;
  vIDtmp    number;
  vAlpha    varchar2(2);
  cnt number;
begin
    vIDtmp := 0;

    select ID_ORDERS, PACK_, ALPHA, ID_CLIENTS into vCurOrder, vPack, vAlpha, vClients
    from orders_clients where ID_ORDERS_CLIENTS = pID_ORDERS_CLIENTS;

    select count(*) as nn, sum(pack_) as pack
        into vNN, vPack
    from orders_list where ID_ORDERS_CLIENTS = pID_ORDERS_CLIENTS;

    -- Разбить заказ на 2
    if vNN <> vPack and vPack > 0 then
       save_new_order(vIDtmp, vCurOrder, vClients, sysdate, user, 0, null);

       select count(*) into cnt from orders_clients where ID_ORDERS = vCurOrder and ID_CLIENTS = vClients and pack_ = 0 and active = 1 and n_type < 2;
--       select count(*) into cnt from orders_clients where ID_ORDERS = vCurOrder and ID_CLIENTS = vClients and pack_ = 1;
       if cnt > 1 then
          new_alpha(vCurOrder,vClients,vAlpha);
          --update orders_clients set ALPHA = decode(cnt,2,'A',3,'B',4,'C',5,'D',6,'E',7,'F','Z') where ID_ORDERS_CLIENTS = vIDtmp;
          update orders_clients set ALPHA = vAlpha where ID_ORDERS_CLIENTS = vIDtmp;
       end if;

       insert into orders_list b (
            select ORDERS_LIST_SEQ.NEXTVAL, a.n_id,  a.quantity, vIDtmp,
                a.truck, a.weight, a.active, a.zatirka, a.price, a.store_type,
                a.id_office, sysdate, a.site_data, a.count_data, a.remarks, a.pack_, null
            from orders_list a where a.ID_ORDERS_CLIENTS = pID_ORDERS_CLIENTS and pack_ = 0
       );
       delete from orders_list a where a.ID_ORDERS_CLIENTS = pID_ORDERS_CLIENTS and pack_ = 0;
       update orders_clients set pack_=1 where ID_ORDERS_CLIENTS = pID_ORDERS_CLIENTS;
       commit;

    end if;

  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.SEPERATE_ORDER', '');
        RAISE_APPLICATION_ERROR (-20136, 'Запрос не выполнился. ' || SQLERRM);
end SEPERATE_ORDER;


-- Генерация новой буквы заказа клиента
PROCEDURE new_alpha
(
    pID_ORDER   IN number,
    pID_CLIENT  IN number,
    pNewAlpha   in out varchar2
)
is
begin
    select case when count(*) = 0 then null else decode(max(alpha),null,'A','A','B', 'B','C', 'C','D', 'D','E', 'E','F', 'F','G', 'G','H','') end into pNewAlpha
    from orders_clients where id_orders = pID_ORDER and active = 1 and id_clients = pID_CLIENT;

  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.new_alpha', '');
        RAISE_APPLICATION_ERROR (-20136, 'Запрос не выполнился. ' || SQLERRM);
end new_alpha;



-- Генерация новой буквы заказа клиента
PROCEDURE csv_export
(
    pID_ORDER_CLIENT    IN number,
    p_hol_type          IN varchar2,
    p_prefix            in varchar2,
    cursor_             in out ref_cursor
)
is
    vNTruck varchar2(4);
    vDateTruck varchar2(10);
    vNick varchar2(20);
begin

  select a.N_TRUCK, to_char(b.date_truck_out,'ddmmyyyy'), c.nick into vNTruck, vDateTruck, vNick
    from orders_clients a, orders b, clients c
    where a.id_orders = b.id_orders and a.id_orders_clients = pID_ORDER_CLIENT and a.id_clients = c.id_clients
    ;

  open cursor_ for
    --select 'MOL-IMPORT2.1;RU1;RU1;'||vDateTruck||';T'||vNTruck||'/'||vNick||';;'||p_prefix||';;1;;;;;;;;;;;;;;;;;' as str from dual
    select 'MOL-IMPORT2.1;RU1;RU1;'||vDateTruck||';T'||vNTruck||'/'||vNick||'_'||decode(p_hol_type,'CA','OT','LI','OT','none','OT',null,'OT',p_hol_type)||';;'||p_prefix||';;'||vNTruck||';;;;;;;;;;;;;;;;;;' as str from dual
    UNION all
    select * from (
    select ';;;'||a.name_code||';;1;'||nvl(b.correction, b.quantity)||';;'||a.remarks||';;;;'||a.h_name||';S20;'||a.len||';S22;'||s22.hs_val||';S25;'||s25.hs_val||';VD2;'||vd2.hs_val
        from nomenclature_mat_view a, orders_list b,  hol_types ht,
        (
        SELECT  s22.hs_val, s22.n_id
          FROM nom_specifications s22
          where hs_id = 16
        ) s22,
        (
        SELECT  s25.hs_val, s25.n_id
          FROM nom_specifications s25
          where hs_id = 17
        ) s25,
        (
        SELECT  vd2.hs_val, vd2.n_id
          FROM nom_specifications vd2
          where hs_id = 10000072
        ) vd2
        where a.n_id = b.n_id and b.active = 1 and a.NOTUSE = 0
          and b.id_orders_clients = pID_ORDER_CLIENT
          and a.n_id = s22.n_id(+)
          and a.n_id = s25.n_id(+)
          and a.n_id = vd2.n_id(+)
          and a.hol_type = ht.hol_type(+)
          --and (a.hol_type = p_hol_type or p_hol_type is null)
          and ( decode(a.hol_type,'CA','OT','LI','OT','none','OT',null,'OT',a.hol_type) = p_hol_type or p_hol_type is null)
          and nvl(b.correction, b.quantity) > 0
        order by ht.ord, a.h_name
    )
    ;
/*
RO
EC
CH
GR
OT
CA
LI
*/
  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.csv_export', '');
        RAISE_APPLICATION_ERROR (-20137, 'Запрос не выполнился. ' || SQLERRM);
end csv_export;
/*
-- Генерация новой буквы заказа клиента
PROCEDURE csv_export
(
    pID_ORDER_CLIENT    IN number,
    cursor_             in out ref_cursor
)
is
    vNTruck varchar2(4);
    vDateTruck varchar2(10);
    vNick varchar2(20);
begin

  select a.N_TRUCK, to_char(b.date_truck_out,'ddmmyyyy'), c.nick into vNTruck, vDateTruck, vNick
    from orders_clients a, orders b, clients c
    where a.id_orders = b.id_orders and a.id_orders_clients = pID_ORDER_CLIENT and a.id_clients = c.id_clients
    ;

  open cursor_ for
    select 'MOL-IMPORT2.1;RU1;RU1;'||vDateTruck||';T'||vNTruck||'/'||vNick||';;@#K;;1;;;;;;;;;;;;;;;;;' as str from dual
    UNION all
    select * from (
    select ';;;'||a.namecode||';;1;'||nvl(b.correction, b.quantity)||';;'||a.remarks||';;;'||a.compiled_name_otdel||';'||a.h_name||';S20;'||a.len||';S22;'||s22.hs_val||';S25;'||s25.hs_val||';VD2;'||vd2.hs_val
        from nomenclature_mat_view a, orders_list b,  hol_types ht,
        (
        SELECT  s22.hs_val, s22.n_id
          FROM nom_specifications s22
          where hs_id = 16
        ) s22,
        (
        SELECT  s25.hs_val, s25.n_id
          FROM nom_specifications s25
          where hs_id = 17
        ) s25,
        (
        SELECT  vd2.hs_val, vd2.n_id
          FROM nom_specifications vd2
          where hs_id = 10000072
        ) vd2
        where a.n_id = b.n_id
          and b.id_orders_clients = pID_ORDER_CLIENT
          and a.n_id = s22.n_id(+)
          and a.n_id = s25.n_id(+)
          and a.n_id = vd2.n_id(+)
          and a.hol_type = ht.hol_type(+)
        order by ht.ord, a.h_name
    )
    ;

  EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.csv_export', '');
        RAISE_APPLICATION_ERROR (-20137, 'Запрос не выполнился. ' || SQLERRM);
end csv_export;
*/



--
-- Добавляем/изменяем название для Дины
--
PROCEDURE EDIT_NAME
(
    N_ID_    in number,
    vName    in varchar2
)
IS
    cnt number;
BEGIN

    select count(*) into cnt from orders_name where n_id = n_id_;
    if cnt > 0 then
        update orders_name set ENG_NAME = vName where n_id = N_ID_;
    else
        insert into orders_name values(n_id_, vName);
    end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.EDIT_NAME', '');
        RAISE_APPLICATION_ERROR (-20138, 'Запрос не выполнился. ' || SQLERRM);
END EDIT_NAME;




--
-- Добавляем в признак проверки номенклатуры
--
PROCEDURE ins_import_flowers_kov
(
    N_ID_    in number
)
IS
    cnt number;
BEGIN

    select count(*) into cnt from import_flowers_kov a where exists (select 1 from nomenclature b where b.code = a.NOM_CODE and b.code = n_id_);
    if cnt > 0 then
        update import_flowers_kov a set checked = 0 where exists (select 1 from nomenclature b where b.code = a.NOM_CODE and b.code = n_id_);
    else
        insert into import_flowers_kov (select bar_code, code, 0 from nomenclature where n_id = n_id_ );
    end if;
    commit;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.ins_import_flowers_kov', '');
        RAISE_APPLICATION_ERROR (-20139, 'Запрос не выполнился. ' || SQLERRM);
END ins_import_flowers_kov;


--
-- Поиск клиентов заказавших товар по критерию
--
PROCEDURE get_clients_statistic
(
    p_id_orders in number,
    p_fst_id    in number,
    p_ft_id     in number,
    p_n_id      in number,
    cursor_     in out ref_cursor
)
is
begin

  open cursor_ for
    select d.nick || ' ' ||b.alpha as nick, sum(a.quantity) as quantity, sum(a.weight) as weight, sum(a.CORRECTION) as CORRECTION
           , d.nick as src_nick, b.alpha as src_alpha, b.ID_ORDERS_CLIENTS, p_n_id as n_id
           , b.pack_, a.zatirka, b.id_orders
           , a.truck
    FROM orders_list a, orders_clients b, NOMENCLATURE N, FST_VIEW c, clients d
    WHERE  a.id_orders_clients = b.id_orders_clients
      and b.id_orders = p_id_orders
      and a.N_ID = N.N_ID and n.notuse = 0
      AND n.Fst_Id = c.FST_ID
      and a.active=1
      and b.active = 1
      and b.n_type < 2
      and a.quantity <> 0
      and b.id_clients = d.id_clients
      and (p_n_id is null or (a.n_id = p_n_id and p_n_id is not null))
      and (p_ft_id is null or (c.ft_id = p_ft_id and p_ft_id is not null))
      and (p_fst_id is null or (c.fst_id = p_fst_id and p_fst_id is not null))
    group by d.nick, b.alpha, b.ID_ORDERS_CLIENTS, b.pack_, a.zatirka, b.id_orders, a.truck
    order by d.nick || ' ' ||b.alpha
  ;


   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_clients_statistic', '');
        RAISE_APPLICATION_ERROR (-20140, 'Запрос не выполнился. ' || SQLERRM);
END get_clients_statistic;


--
-- Редактирование клиентов заказавших товар по критерию
--
PROCEDURE edit_clients_statistic
(
    p_id_orders_clients in number,
    p_id_orders         in number,
    p_n_id              in number,
    p_corr              in number
)
is
  new_id    number;
  vWeight   number;
  --vOrderID  number;
begin
  vWeight := calc_weight(p_n_id);
  if p_id_orders_clients > 0 then
    update orders_list a set CORRECTION = p_corr, weight = vWeight*nvl(p_corr,quantity), DATE_CHANGE = sysdate where id_orders_clients = p_id_orders_clients and n_id = p_n_id;
  else
    --select id_orders into vOrderID from orders_clients where id_orders_clients = p_id_orders_clients;
    save_new_order(new_id, p_id_orders, const_main, sysdate, user, 0, '');
    INS_ORDERS(new_id, p_n_id, p_corr, 0, null, null, null);
  end if;

   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.edit_clients_statistic', '');
        RAISE_APPLICATION_ERROR (-20141, 'Запрос не выполнился. ' || SQLERRM);
END edit_clients_statistic;





--
-- Редактирование данных по товару товар по критерию
--
PROCEDURE edit_clients_data2
(
    p_id_orders in number,
    p_n_id      in number,
    p_remarks   in varchar2,
    p_corr      in number
)
is
  tmp_id_clients     number;
  tmp_id_orders_list number;
  tmp_QUANTITY       number;
  vWeight            number; -- вес стебля
  curr_quanty        number; -- сумма скорректированных значение
  itog_quanty        number; -- сколько в итоге стеблей
  curr_correction    number; -- сколько коррекции
  counter            number;
begin
  -- если обнуляем позицию
  if p_corr = 0 then
--LOG_ERR('p_corr=' || p_corr ||' p_remarks=' || p_remarks || ' p_n_id=' || p_n_id || ' p_id_orders='||p_id_orders, 0, 'pack_orders.edit_clients_data2', '0');

     delete from orders_list a where a.n_id = p_n_id and a.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_clients = const_main and b.id_orders = p_id_orders and b.n_type < 2);
     update orders_list a set a.CORRECTION = 0, weight = 0, DATE_CHANGE = sysdate
     where a.n_id = p_n_id and a.active = 1 and nvl(a.remarks,'-') = nvl(p_remarks,'-')
       AND a.id_orders_clients in (
         select b.id_orders_clients from orders_clients b
         where b.id_orders = p_id_orders and b.active = 1
         and b.pack_ = 0 and b.n_type < 2
     );
  else
  -- если надо провести изменения
    vWeight := calc_weight(p_n_id);
    select sum( case when correction = 0 then 0 else QUANTITY-nvl(correction,0) end), sum(nvl(correction,QUANTITY)), sum(nvl(correction,0))
      into curr_quanty, itog_quanty, curr_correction
      from orders_list a, orders_clients b
      where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.n_type < 2
        and nvl(a.remarks,'-') = nvl(p_remarks,'-')
    ;
--LOG_ERR('p_corr=' || p_corr ||' curr_correction=' || curr_correction || ' curr_quanty=' || curr_quanty || ' itog_quanty='||itog_quanty ||' p_remarks=' || p_remarks, 1, 'pack_orders.edit_clients_data2', '100');

    if p_corr > itog_quanty then
      -- увеличение
      counter := p_corr - itog_quanty;
--LOG_ERR('counter=' || counter, 51, 'pack_orders.edit_clients_data2', '200');

      -- если есть коррекция, то попробуем вернуть товар в изменениях
      counter := calc_change_tovar(counter, p_n_id, p_id_orders, p_remarks);
--LOG_ERR('counter=' || counter, 52, 'pack_orders.edit_clients_data2', '300');
      if counter > 0 then
         -- добавляем заказ MAIN


         select count(*) into cnt
         from orders_list a, orders_clients b
         where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2 and nvl(a.remarks,'-') = nvl(p_remarks,'-');

         if cnt = 0 then
--LOG_ERR('new', 500, 'pack_orders.edit_clients_data2', '500');
            select count(*) into cnt from orders_clients b
            where b.active = 1 and b.pack_ = 0 and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2;

            if cnt = 0 then
               -- если нет еще MAIN, то добавим клиента
               save_new_order(tmp_id_clients,p_id_orders,const_main,sysdate,user,0,'');
            else
               select b.id_orders_clients into tmp_id_clients from orders_clients b
               where b.active = 1 and b.pack_ = 0 and b.id_orders = p_id_orders and b.id_clients = const_main and b.alpha is null and rownum=1 and b.n_type < 2;
            end if;

            -- Добавим заказ
            tmp_id := 0;
            INS_ORDERS(tmp_id_clients,p_n_id,counter,0,null,'',p_remarks);
--LOG_ERR('tmp_id='||tmp_id, 500, 'pack_orders.edit_clients_data2', '500');
            tmp_id_orders_list := tmp_id;

--            select id_orders_list into tmp_id_orders_list
--            from orders_list a, orders_clients b
--            where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2 and nvl(a.remarks,'-') = nvl(p_remarks,'-');

            update orders_list set CORRECTION = counter, weight=vWeight*(counter), DATE_CHANGE = sysdate, remarks = p_remarks where id_orders_list = tmp_id_orders_list;
         ELSE
--LOG_ERR('edit', 600, 'pack_orders.edit_clients_data2', '600');
            -- если есть заказ и такой цветок, то просто внесем изменения
            select id_orders_list, quantity into tmp_id_orders_list, tmp_QUANTITY
            from orders_list a, orders_clients b
              where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2 and nvl(a.remarks,'-') = nvl(p_remarks,'-');
            tmp_QUANTITY := tmp_QUANTITY + counter;
--LOG_ERR('tmp_QUANTITY='||tmp_QUANTITY, 700, 'pack_orders.edit_clients_data2', '700');
            update orders_list set CORRECTION = tmp_QUANTITY, quantity = tmp_QUANTITY, weight=vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
         end if;






      end if;
    else
      counter := itog_quanty - p_corr;
--LOG_ERR('counter=' || counter, 61, 'pack_orders.edit_clients_data2', '800');
      -- уменьшение
      counter := calc_change_tovar(-1*counter, p_n_id, p_id_orders, p_remarks);
    end if;
  end if;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.edit_clients_data2', '');
      RAISE_APPLICATION_ERROR (-20143, 'Запрос не выполнился. ' || SQLERRM);

END edit_clients_data2;





--
-- Произведем изменение CORRECTION в заказах клиентов
--
function calc_change_tovar
(
    p_counter   in number,
    p_n_id      in number,
    p_id_orders in number,
    p_remarks   in varchar2
) return number
is
  new_id             number;
  tmp_id_orders_list number;
  tmp_id_clients     number;
  tmp_QUANTITY       number;
  tmp_CORRECTION     number;
  tmp_counter        number;
  vWeight            number; -- вес стебля

  cursor f_ is
    select a.id_orders_list, b.id_clients, a.QUANTITY, a.correction
    from orders_list a, orders_clients b
    where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.n_type < 2
       and nvl(a.remarks,'-') = nvl(p_remarks,'-')
    order by decode(b.id_clients,const_main,1,const_dir,2,3)
    ;

begin
  tmp_counter := p_counter;
  vWeight := calc_weight(p_n_id);

  open f_;
  loop
    fetch f_ into tmp_id_orders_list, tmp_id_clients, tmp_QUANTITY, tmp_CORRECTION;
    exit when f_%notfound or tmp_counter = 0;
--LOG_ERR ('tmp_QUANTITY=' || tmp_QUANTITY || ' tmp_CORRECTION=' ||tmp_CORRECTION ||', p_counter=' ||p_counter, 1000, 'pack_orders.calc_change_tovar', '1000');

        -- если обнуляем корректировку
        if p_counter is null then
--LOG_ERR('p_counter=' || p_counter, 1100, 'pack_orders.calc_change_tovar', '1100');
          if tmp_id_clients = const_main then
            delete from orders_list where id_orders_list = tmp_id_orders_list;
          else
            update orders_list set CORRECTION = null, weight = (vWeight * tmp_QUANTITY), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
          end if;
        end if;

        -- если надо убрать товар
        if p_counter < 0 then
--LOG_ERR('p_counter=' || p_counter || ' tmp_QUANTITY='||tmp_QUANTITY||' tmp_CORRECTION='||tmp_CORRECTION, 1200, 'pack_orders.calc_change_tovar', '1200');
          tmp_counter := abs(p_counter);
          if tmp_counter >= tmp_QUANTITY or nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter = 0 then
--LOG_ERR('p_counter=' || p_counter || ' tmp_counter='||tmp_counter, 1210, 'pack_orders.calc_change_tovar', '1210');
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = 0, quantity=0, weight = 0, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = 0, weight = 0, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            tmp_counter := tmp_counter - tmp_QUANTITY;
--LOG_ERR('p_counter=' || p_counter|| ' tmp_counter='||tmp_counter, 1215, 'pack_orders.calc_change_tovar', '1215');
          else
--LOG_ERR('p_counter=' || p_counter, 1220, 'pack_orders.calc_change_tovar', '1220');
            if nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter > 0 then
--LOG_ERR('p_counter=' || p_counter, 1230, 'pack_orders.calc_change_tovar', '1230');
              if tmp_id_clients = const_main then
                update orders_list set CORRECTION = nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter, QUANTITY = nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter, weight=vWeight*(nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
              else
                update orders_list set CORRECTION = nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter, weight=vWeight*(nvl(tmp_CORRECTION,tmp_QUANTITY)-tmp_counter), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
              end if;
            end if;
            tmp_counter := 0;
          end if;
        end if;

        -- если надо положить товар
        if tmp_CORRECTION is not null and p_counter > 0 then
--LOG_ERR('p_counter=' || p_counter, 1300, 'pack_orders.calc_change_tovar', '1300');
          if tmp_counter > (tmp_QUANTITY-tmp_CORRECTION) then
             if tmp_id_clients = const_main then
                update orders_list set CORRECTION = CORRECTION+tmp_QUANTITY, quantity=tmp_QUANTITY, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
             else
                update orders_list set CORRECTION = null, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
             end if;
--LOG_ERR('tmp_counter=' || tmp_counter || ' tmp_QUANTITY=' || tmp_QUANTITY || ' tmp_CORRECTION=' || tmp_CORRECTION, 1310, 'pack_orders.calc_change_tovar', '1310');
             tmp_counter := tmp_counter - (tmp_QUANTITY - tmp_CORRECTION);
          else
             if tmp_id_clients = const_main then
                update orders_list set CORRECTION = CORRECTION+tmp_counter, QUANTITY = QUANTITY+tmp_counter, weight=vWeight*(tmp_counter), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
             else
                update orders_list set CORRECTION = CORRECTION+tmp_counter, weight=vWeight*(tmp_counter), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
             end if;
             tmp_counter := 0;
--LOG_ERR('tmp_counter=' || tmp_counter, 1320, 'pack_orders.calc_change_tovar', '1320');
          end if;
        end if;

  end loop;
  close f_;

  return tmp_counter;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.calc_change_tovar', '');
      RAISE_APPLICATION_ERROR (-20143, 'Запрос не выполнился. ' || SQLERRM);

END calc_change_tovar;





--
-- Редактирование данных по товару товар по критерию
--
PROCEDURE edit_clients_data
(
    p_id_orders in number,
    p_n_id      in number,
    p_corr      in number
)
is
  new_id             number;
  tmp_id_orders_list number;
  tmp_id_clients     number;
  tmp_QUANTITY       number;
  tmp_CORRECTION     number;
  curr_quanty        number;
  itog_quanty        number;
  vWeight            number;
  curr_correction    number;
  cursor f_ is
    select a.id_orders_list, b.id_clients, a.QUANTITY, a.correction
    from orders_list a, orders_clients b
    where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.n_type < 2
    order by decode(b.id_clients,const_main,1,const_dir,2,3)
    ;

begin
  select sum( case when correction = 0 then 0 else QUANTITY-nvl(correction,0) end), sum(nvl(correction,QUANTITY)), sum(nvl(correction,0)) into curr_quanty, itog_quanty, curr_correction
  from orders_list a, orders_clients b
  where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 /*and b.pack_ = 0*/ and a.n_id = p_n_id and b.id_orders = p_id_orders and b.n_type < 2
  ;

  curr_correction := p_corr; -- - curr_correction;
  vWeight := calc_weight(p_n_id);

--  LOG_ERR('p_corr=' || p_corr ||' curr_correction=' || curr_correction || ' curr_quanty=' || curr_quanty || ' itog_quanty='||itog_quanty, 1, 'pack_orders.edit_clients_data', '');

  if curr_correction > curr_quanty then
  -- если увеличиваем данные

     curr_quanty := curr_correction-itog_quanty;
--  LOG_ERR('curr_quanty=' || curr_quanty, 11, 'pack_orders.edit_clients_data', '');
      open f_;
      loop
        fetch f_ into tmp_id_orders_list, tmp_id_clients, tmp_QUANTITY, tmp_CORRECTION;
        exit when f_%notfound;
--  LOG_ERR('tmp_QUANTITY=' || tmp_QUANTITY || ' tmp_CORRECTION=' ||tmp_CORRECTION, 15, 'pack_orders.edit_clients_data', '');
        if tmp_CORRECTION is not null then
        if curr_quanty > (tmp_QUANTITY-tmp_CORRECTION) then
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = CORRECTION+tmp_QUANTITY, quantity=tmp_QUANTITY, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = null, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := curr_quanty - tmp_QUANTITY - tmp_CORRECTION;
--  LOG_ERR('curr_quanty=' || curr_quanty, 16, 'pack_orders.edit_clients_data', '');
        else
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = CORRECTION+curr_quanty, QUANTITY = QUANTITY+curr_quanty, weight=vWeight*(curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = CORRECTION+curr_quanty, weight=vWeight*(curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := 0;
--  LOG_ERR('curr_quanty=' || curr_quanty, 17, 'pack_orders.edit_clients_data', '');
        end if;
        end if;
      end loop;
      close f_;

  if curr_quanty > 0 then
    select count(*) into cnt
    from orders_list a, orders_clients b
    where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2;

    if cnt = 0 then
    --если не нашли данных по цветку и MAIN
      select count(*) into cnt
      from orders_clients b
      where b.active = 1 and b.pack_ = 0 and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2;

--  LOG_ERR('cnt=' || cnt, 2, 'pack_orders.edit_clients_data', '');
      if cnt = 0 then
        -- если нет еще MAIN, то добавим клиента
        save_new_order(tmp_id_clients,p_id_orders,const_main,sysdate,user,0,'');
--  LOG_ERR('tmp_id_clients=' || tmp_id_clients, 3, 'pack_orders.edit_clients_data', '');
      else
        select b.id_orders_clients into tmp_id_clients
        from orders_clients b
        where b.active = 1 and b.pack_ = 0 and b.id_orders = p_id_orders and b.id_clients = const_main and b.alpha is null and rownum=1 and b.n_type < 2;
--  LOG_ERR('tmp_id_clients=' || tmp_id_clients, 4, 'pack_orders.edit_clients_data', '');
      end if;

      -- Добавим заказ
      INS_ORDERS(tmp_id_clients,p_n_id,curr_quanty,0,null,'', null);

      select id_orders_list into tmp_id_orders_list
      from orders_list a, orders_clients b
      where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2;

--curr_quanty := curr_correction-curr_quanty;
      update orders_list set CORRECTION = curr_quanty, weight=vWeight*(curr_correction-curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
    ELSE
    -- если есть заказ и такой цветок, то просто внесем изменения
      select id_orders_list into tmp_id_orders_list
      from orders_list a, orders_clients b
      where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1 and b.pack_ = 0 and a.n_id = p_n_id and b.id_orders = p_id_orders and b.id_clients = const_main and b.n_type < 2;
--curr_quanty := curr_correction-curr_quanty;
--  LOG_ERR('tmp_id_orders_list=' || tmp_id_orders_list, 6, 'pack_orders.edit_clients_data', '');

      update orders_list set CORRECTION = curr_quanty, quantity = curr_quanty, weight=vWeight*(curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
    end if;
  end if;

  else
   if curr_correction > itog_quanty then
   -- Значит надо немного вернуть из того, что затерли

      curr_quanty := curr_correction-itog_quanty;
--  LOG_ERR('curr_quanty=' || curr_quanty, 20, 'pack_orders.edit_clients_data', '');
      open f_;
      loop
        fetch f_ into tmp_id_orders_list, tmp_id_clients, tmp_QUANTITY, tmp_CORRECTION;
        exit when f_%notfound;
--  LOG_ERR('tmp_QUANTITY=' || tmp_QUANTITY || ' tmp_CORRECTION=' ||tmp_CORRECTION, 20, 'pack_orders.edit_clients_data', '');

        if curr_quanty > (tmp_QUANTITY-tmp_CORRECTION) then
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = CORRECTION+tmp_QUANTITY, quantity=tmp_QUANTITY, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = null, weight = vWeight*tmp_QUANTITY, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := curr_quanty - tmp_QUANTITY - tmp_CORRECTION;
--  LOG_ERR('curr_quanty=' || curr_quanty, 21, 'pack_orders.edit_clients_data', '');
        else
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = CORRECTION+curr_quanty, QUANTITY = QUANTITY+curr_quanty, weight=vWeight*(curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = CORRECTION+curr_quanty, weight=vWeight*(curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := 0;
--  LOG_ERR('curr_quanty=' || curr_quanty, 22, 'pack_orders.edit_clients_data', '');
        end if;

      end loop;
      close f_;

   else
   -- если уменьшаем данные
    if p_corr = 0 then
      update orders_list a set a.CORRECTION = 0, weight = 0, DATE_CHANGE = sysdate
      where a.n_id = p_n_id and a.active = 1
      AND a.id_orders_clients in (
        select b.id_orders_clients from orders_clients b
        where b.id_orders = p_id_orders and b.active = 1
        and b.pack_ = 0 and b.n_type < 2
      );
    else
      curr_quanty := itog_quanty - curr_correction;
--  LOG_ERR('curr_quanty=' || curr_quanty, 8, 'pack_orders.edit_clients_data', '');
      open f_;
      loop
        fetch f_ into tmp_id_orders_list, tmp_id_clients, tmp_QUANTITY, tmp_CORRECTION;
        exit when f_%notfound;
--  LOG_ERR('tmp_QUANTITY=' || tmp_QUANTITY || ' tmp_CORRECTION=' ||tmp_CORRECTION, 80, 'pack_orders.edit_clients_data', '');

        if curr_quanty > 0 then
          if curr_quanty > tmp_QUANTITY then
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = 0, quantity=0, weight = 0, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = 0, weight = 0, DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := curr_quanty - tmp_QUANTITY;
          else
            if tmp_id_clients = const_main then
              update orders_list set CORRECTION = tmp_QUANTITY-curr_quanty, QUANTITY = tmp_QUANTITY-curr_quanty, weight=vWeight*(tmp_QUANTITY-curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            else
              update orders_list set CORRECTION = tmp_QUANTITY-curr_quanty, weight=vWeight*(tmp_QUANTITY-curr_quanty), DATE_CHANGE = sysdate where id_orders_list = tmp_id_orders_list;
            end if;
            curr_quanty := 0;
          end if;
        end if;

      end loop;
      close f_;
    end if;
   end if;
  end if;

--  commit;


   EXCEPTION
      WHEN others THEN
        LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.edit_clients_data', '');
        RAISE_APPLICATION_ERROR (-20143, 'Запрос не выполнился. ' || SQLERRM);
END edit_clients_data;



--
-- Обнуление затирки и коррекции по заказу
--
PROCEDURE clear_all_corrections
(
    p_id_orders         in number
)
is
begin
  delete from orders_list a where a.correction = a.quantity and a.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_clients = const_main and b.id_orders = p_id_orders and b.n_type < 2);

  UPDATE orders_list p SET (CORRECTION, weight, DATE_CHANGE, zatirka) =
    (SELECT null, calc_weight(q.n_id)*q.quantity, sysdate, 0 FROM orders_list q WHERE p.id_orders_list = q.id_orders_list)
  WHERE p.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_orders = p_id_orders);
commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.clear_all_corrections', '');
      RAISE_APPLICATION_ERROR (-20144, 'Запрос не выполнился. ' || SQLERRM);
END clear_all_corrections;


--
-- Обнуление машин
--
PROCEDURE clear_all_trucks
(
    p_id_orders         in number
)
is
begin
  UPDATE orders_list p SET truck=0
  WHERE p.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_orders = p_id_orders and b.pack_ = 0 and b.n_type < 2);
commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.clear_all_trucks', '');
      RAISE_APPLICATION_ERROR (-20145, 'Запрос не выполнился. ' || SQLERRM);
END clear_all_trucks;



--
-- Обнуление затирки и коррекции по позиции
--
PROCEDURE clear_curr_corrections
(
    p_id_orders in number,
    p_n_id      in number
)
is
begin
--  UPDATE orders_list p SET CORRECTION=NULL, weight=calc_weight(p.n_id)*p.quantity, DATE_CHANGE=sysdate, zatirka=0 where p.id_orders_list = p_id_orders_list;
  delete from orders_list a where a.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_clients = const_main and b.id_orders = p_id_orders and b.n_type < 2) and a.n_id = p_n_id;
  UPDATE orders_list p SET (CORRECTION, weight, DATE_CHANGE, zatirka) =
    (SELECT null, calc_weight(q.n_id)*q.quantity, sysdate, 0 FROM orders_list q WHERE p.id_orders_list = q.id_orders_list)
  WHERE p.id_orders_clients in (select id_orders_clients from orders_clients b where b.id_orders = p_id_orders and b.n_type < 2) and p.n_id = p_n_id;
  commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.clear_curr_corrections', '');
      RAISE_APPLICATION_ERROR (-20146, 'Запрос не выполнился. ' || SQLERRM);
END clear_curr_corrections;




-- Выбор настройки для клиента при формировании файла экспорта
PROCEDURE get_csv_prefix_parameter
(
    p_ID_CLIENT    IN number,
    cursor_        in out ref_cursor
)
is
begin
  open cursor_ for
    select * from (
      select 'M URLO' as code, '@#U' as prefix, 1 as export_type, 13482 as idd from dual
      union all
      select '16 KAZN', '@#K', 1, 14942 from dual
      union all
      select 'D SPKK', '@#S', 1, 12173 from dual
      union all
      select '35 CHER', '@#H', 1, 10016216 from dual
      union all
      select '02 UFFA', '@#F', 1, 10016343 from dual
      union all
      select '59 PEER', '@#P', 1, 13890 from dual
    ) a
    where idd = p_ID_CLIENT;


  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_csv_prefix_parameter', '');
      RAISE_APPLICATION_ERROR (-20147, 'Запрос не выполнился. ' || SQLERRM);
END get_csv_prefix_parameter;


-- Разбивка заказа по поставщикам
PROCEDURE seperate_order_by_supplier
(
    pOrder    IN number
)
is
  cursor f_ is
    select distinct n.s_id, o.DATE_TRUCK_OUT, o.DATE_TRUCK, o.ID_DEPARTMENTS, o.old_price
    from orders_list a, orders_clients b, nomenclature n, orders o
    where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1
      and a.n_id = n.n_id and b.id_orders = pOrder and b.id_orders = o.id_orders and n.s_id <> o.s_id
      and b.n_type < 2
    ;
  cursor g_ is
        SELECT distinct a.id_clients, a.pack_, a.in_file, a.id_orders_clients
          FROM orders_clients a, orders_list b, nomenclature n, orders o
          where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1
            and b.n_id = n.n_id and a.id_orders = pOrder and a.id_orders = o.id_orders and n.s_id <> o.s_id
            and a.n_type < 2
    ;

  curSupplier       number;
  curDATE_TRUCK_OUT date;
  curDATE_TRUCK     date;
  curID_DEPARTMENTS number;
  newOrder          number;
  curOLD_PRICE      number;

  newClientOrder    number;
  curClient         number;
  curPack           number;
  curFile           Varchar2(255);
  oldIdOrdCl        number;
begin

  open f_;
  loop
    fetch f_ into curSupplier, curDATE_TRUCK_OUT, curDATE_TRUCK, curID_DEPARTMENTS, curOLD_PRICE;
    exit when f_%notfound;

    select count(*) into cnt
      from orders a
      where a.s_id = curSupplier and a.DATE_TRUCK_OUT = curDATE_TRUCK_OUT and a.id_orders <> pOrder and a.active = 1;

    newOrder := 0;
    if cnt = 0 then
      save_order(newOrder, curDATE_TRUCK, sysdate, '', curID_DEPARTMENTS, 1, curDATE_TRUCK_OUT, curSupplier, curOLD_PRICE);
    ELSE
      select a.id_orders into newOrder
        from orders a
        where a.s_id = curSupplier and a.DATE_TRUCK_OUT = curDATE_TRUCK_OUT and a.id_orders <> pOrder and a.active = 1 and rownum=1;
    end if;

    if newOrder > 0 then
      open g_;
      loop
        fetch g_ into curClient, curPack, curFile, oldIdOrdCl;
        exit when g_%notfound;

        save_new_order(newClientOrder, newOrder, curClient, sysdate, user, curPack, curFile);

        if newClientOrder > 0 then

          insert into orders_list (
            SELECT orders_list_seq.nextval, a.n_id, a.quantity, newClientOrder,
                   a.truck, a.weight, a.active, a.zatirka, a.price, a.store_type,
                   a.id_office, sysdate, a.site_data, a.count_data, a.remarks,
                   a.pack_, a.correction
              FROM orders_list a, orders_clients b, nomenclature n, orders o
                where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1
                  and a.n_id = n.n_id and b.id_orders = pOrder and b.id_orders = o.id_orders and b.id_orders_clients = oldIdOrdCl and n.s_id = curSupplier
                  and b.n_type < 2
          );

          delete from orders_list z where z.id_orders_list in (
            select a.id_orders_list
            from orders_list a, orders_clients b, nomenclature n, orders o
            where a.id_orders_clients = b.id_orders_clients and a.active = 1 and b.active = 1
              and a.n_id = n.n_id and b.id_orders = pOrder and b.id_orders = o.id_orders and n.s_id = curSupplier and b.id_orders_clients = oldIdOrdCl
          );

          select count(*) into cnt from orders_list a where a.active = 1 and a.id_orders_clients = oldIdOrdCl;
          if cnt = 0 then
            delete from orders_clients where id_orders_clients = oldIdOrdCl;
          end if;
        end if;

      end loop;
      close g_;
    end if;

  end loop;
  close f_;

  commit;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.seperate_order_by_supplier', '');
      RAISE_APPLICATION_ERROR (-20148, 'Запрос не выполнился. ' || SQLERRM);

END seperate_order_by_supplier;




-- Синхронизация остатков склада для заказа
PROCEDURE sync_store
(
    vIdOrder    IN number
)
is
begin
  delete from orders_store a where a.id_orders = vIdOrder;
  insert into orders_store (
    select vIdOrder, m.n_id, m.quantity from store_main m where m.store_type = 1 and m.id_departments = (select o.id_departments from orders o where o.id_orders = vIdOrder) and m.quantity > 0
  );

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.sync_store', '');
      RAISE_APPLICATION_ERROR (-20149, 'Запрос не выполнился. ' || SQLERRM);
END sync_store;



-- Выводим список неиспользуемой номенклатуры в заказе
PROCEDURE get_not_use_noms
(
    p_ID_OD_CL    IN number,
    cursor_       in out ref_cursor
)
is
begin
  open cursor_ for
    'select WM_CONCAT(distinct n.h_name || '', '' || n.code) from orders_list ol, nomenclature n
    where ol.id_orders_clients = '||p_ID_OD_CL||' and
      ol.active = 1 and ol.n_id = n.n_id and n.notuse = 1'
    ;

  EXCEPTION
    WHEN others THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'pack_orders.get_not_use_noms', '');
      RAISE_APPLICATION_ERROR (-20150, 'Запрос не выполнился. ' || SQLERRM);
END get_not_use_noms;


END;
/


-- End of DDL Script for Package Body CREATOR.PACK_ORDERS

