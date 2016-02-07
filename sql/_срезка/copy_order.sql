-- Start of DDL Script for Procedure CREATOR.COPY_ORDER
-- Generated 16.05.2012 0:40:30 from CREATOR@STAR

CREATE OR REPLACE 
PROCEDURE copy_order (
   id_order      IN   NUMBER,                      -- ID номера заказа
   id_cl_order   IN   NUMBER,                      -- ID номера заказа клиента
   user_         IN   varchar2
)
IS
   idd                     NUMBER;
   id_orders_clients_new   NUMBER;
   id_user_                number;

BEGIN
   SELECT orders_clients_seq.NEXTVAL
     INTO idd
     FROM DUAL;

   select id_clients into id_user_ from clients where login = user_;

   -- Вставляем новый заказ клиента в новый заказ
   INSERT INTO orders_clients
      (SELECT idd, id_order, id_clients, n_truck, capacity, d_date, n_type,
              status, on_date, active, pack_, alpha, id_user_, const_office, sysdate, info
         FROM orders_clients
        WHERE id_orders_clients = id_cl_order);

   COMMIT;

   -- Выбираем его уникальный номер
   SELECT orders_clients_seq.CURRVAL
     INTO id_orders_clients_new
     FROM DUAL;

   -- Вставляем позиции номенклатуры в заказ клиента
   INSERT INTO orders_list
      (
             SELECT orders_list_seq.NEXTVAL, n_id, quantity, id_orders_clients_new, NULL, weight, active, zatirka, null, 1, const_office, sysdate
       FROM orders_list
       WHERE id_orders_clients = id_cl_order and active=1
            );

   COMMIT;
END copy_order;
/

GRANT execute ON copy_order TO new_role
/
create or replace public synonym copy_order for creator.copy_order
/

-- End of DDL Script for Procedure CREATOR.COPY_ORDER

