SELECT distinct a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_id,
       a.default_translation, a.remarks
  FROM flower_name_translations a, nomenclature_mat_view b, store_main c
  where a.fn_id = b.fn_id and b.n_id = c.n_id and c.quantity <> 0
