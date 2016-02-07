select a.* 
from (
  SELECT a.h_code, a.h_name, a.code, a.len, a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.remarks,
         a.colour, a.country, a.name_code, a.compiled_name_otdel, a.namecode, a.hol_color, a.n_id
    FROM nomenclature_mat_view a
    where a.id_departments = 62
) a,
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
where a.n_id = s22.n_id(+) and a.n_id = s25.n_id(+) and a.n_id = vd2.n_id(+)

