SELECT a.n_id, a.hs_id, a.hs_val, a.ord
  FROM nom_specifications a, store_main c
  where a.n_id = c.n_id and c.quantity <> 0
