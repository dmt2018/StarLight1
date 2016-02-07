-- Start of DDL Script for View CREATOR.OLD_ORDERS_CLIENTS_VIEW
-- Generated 7-май-2012 14:32:28 from CREATOR@STARNEW

CREATE OR REPLACE VIEW orders_clients_view (
   id_orders_clients,
   id_orders,
   id_clients,
   n_truck,
   capacity,
   d_date,
   n_type,
   status,
   on_date,
   nick,
   fio )
AS
SELECT
  ID_ORDERS_CLIENTS,
  ID_ORDERS,
  OC.ID_CLIENTS,
  N_TRUCK,
  CAPACITY,
  D_DATE,
  N_TYPE,
  STATUS,
  ON_DATE,
  NICK,
  FIO
FROM
  ORDERS_CLIENTS OC,
  CLIENTS CL
WHERE
  OC.ID_CLIENTS = CL.ID_CLIENTS(+)
 WITH READ ONLY
/

GRANT select ON orders_clients_view TO new_role
/
create public synonym orders_clients_view for creator.orders_clients_view
/
-- End of DDL Script for View CREATOR.OLD_ORDERS_CLIENTS_VIEW

