    SELECT a.ID_ORDERS_LIST, a.N_ID, a.QUANTITY, a.ID_ORDERS_CLIENTS, a.TRUCK, a.WEIGHT
    FROM ORDERS_LIST_VIEW a, ORDERS_CLIENTS b
    where b.id_orders = 458
        and b.id_orders_clients = a.id_orders_clients
        and b.active = 1
        and b.n_type < 2
        --and b.pack_ = 0
        and (b.pack_ = 0 or const_office > 1)
        and b.ID_CLIENTS not in (const_dir,const_main)  -- 2015-06-22 На совещании решили, что на директора и МАЙН не разносить и даже их не показывать
    --order by decode(b.id_clients,inStok,99,1), decode(b.ID_CLIENTS,const_dir,98,const_main,99,1)

