SELECT a.n_id, a.fn_id, a.fst_id, 1 as s_id, a.c_id, a.h_code, a.h_name,
       a.len, a.pack, a.col_id, a.vbn, a.hol_type, a.weight, a.bar_code,
       a.code, a.diameter, a.cust_coef, a.remarks, a.photo,
       a.h_namecode
  FROM nomenclature a, store_main c
  where a.n_id = c.n_id and c.quantity <> 0
