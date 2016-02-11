-- Start of DDL Script for Procedure CREATOR.COPY_ORDER
-- Generated 11.02.2016 1:09:46 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PROCEDURE copy_order (
   id_order      IN   NUMBER,                      -- ID номера заказа
   id_cl_order   IN   NUMBER,                      -- ID номера заказа клиента
   user_         IN   varchar2,
   isJoin        in   number
)
IS
   idd                     NUMBER;
   id_orders_clients_new   NUMBER;
   id_user_                number;
   vAlpha                  varchar2(2);
   vCurOrder               number;
   vClients                number;
   vPack                   number;

BEGIN
   SELECT id_order, id_clients, pack_ into vCurOrder, vClients, vPack
     FROM orders_clients
       WHERE id_orders_clients = id_cl_order
   ;

   idd := 0;
   -- Если объединение заказа, то найдем ИД и добавим к нему
   if isJoin = 1 then
     select ID_ORDERS_CLIENTS into idd from orders_clients where ID_ORDERS=id_order and ID_CLIENTS=vClients and pack_=vPack and ROWNUM=1;
     vAlpha := null;
     id_orders_clients_new := idd;
   end if;
   if idd = 0 then
     SELECT orders_clients_seq.NEXTVAL
       INTO idd
       FROM DUAL;
     pack_orders.new_alpha(vCurOrder,vClients,vAlpha);

     select id_clients into id_user_ from clients where login = user_ and id_office = const_office;
     -- Вставляем новый заказ клиента в новый заказ
     INSERT INTO orders_clients
        (SELECT idd, id_order, id_clients, 0, capacity, d_date, n_type,
                status, on_date, active, pack_, vAlpha, id_user_, const_office, sysdate, info, in_file, MISS_CODE, MISS_CODE_SHORT, null
           FROM orders_clients
          WHERE id_orders_clients = id_cl_order);

     COMMIT;

     -- Выбираем его уникальный номер
     id_orders_clients_new := idd;

     -- Вставляем позиции номенклатуры в заказ клиента
     INSERT INTO orders_list
     (
        SELECT orders_list_seq.NEXTVAL, n_id, quantity, id_orders_clients_new, NULL, weight, active, zatirka, null, 1, const_office, sysdate, site_data, 0, remarks, pack_, null
        FROM orders_list
        WHERE id_orders_clients = id_cl_order and active=1 and /*nvl(correction, quantity) > 0*/ quantity > 0 and ZATIRKA=0
     );

     COMMIT;

   end if;

END copy_order;
/

-- Grants for Procedure
GRANT EXECUTE ON copy_order TO new_role
/

create public synonym copy_order for creator.copy_order
/

-- End of DDL Script for Procedure CREATOR.COPY_ORDER

