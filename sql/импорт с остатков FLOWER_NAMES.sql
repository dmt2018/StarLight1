SELECT distinct a.fn_id, a.f_name_ru, a.id_departments, a.name_code, a.fito_name
  FROM flower_names a, nomenclature_mat_view b, store_main c
  where a.fn_id = b.fn_id and b.n_id = c.n_id and c.quantity <> 0
