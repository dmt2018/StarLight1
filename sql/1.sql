SELECT a.id_orders_list, a.n_id, a.quantity, a.id_orders_clients,
       a.truck, a.weight, a.active, a.zatirka, a.price, a.store_type,
       a.id_office, a.date_change, a.site_data, a.count_data, a.remarks,
       a.pack_, a.correction
  FROM orders_list a, orders_clients b
  where a.id_orders_clients = b.id_orders_clients and b.id_orders = 458
  
 -- update orders_list set quantity = 0 where id_orders_list = 1123429
  
