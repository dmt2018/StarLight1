select a.namecode||'.'||a.coler||'.'||a.len||'.'||a.pack||'.'||s22.hs_val||'.'||s25.hs_val||'.'||vd2.hs_val||'.'||a.remarks as art
, 'update nomenclature_mat_view set h_code='''||a.namecode||'.'||a.coler||'.'||a.len||'.'||a.pack||'.'||s22.hs_val||'.'||s25.hs_val||'.'||vd2.hs_val||'.'||a.remarks||''' where n_id='||a.n_id||';' as sq1
, 'update nomenclature set h_code='''||a.namecode||'.'||a.coler||'.'||a.len||'.'||a.pack||'.'||s22.hs_val||'.'||s25.hs_val||'.'||vd2.hs_val||'.'||a.remarks||''' where n_id='||a.n_id||';' as sq2
, 'update nomenclature set hol_color='''||a.coler||''' where n_id='||a.n_id||';' as sq3
, 'update nomenclature_mat_view set hol_color='''||a.coler||''' where n_id='||a.n_id||';' as sq4
, a.* from
(
SELECT 
substr(a.h_code,0,instr(a.h_code,'.')-1) as code1,
substr(a.h_code,instr(a.h_code,'.')+1,instr(a.h_code,'.',1,2)-instr(a.h_code,'.',1,1)-1) as coler,
 a.h_code, a.h_name, a.code, a.len, a.fn_id, a.n_id,
       a.pack, a.diameter, a.hol_type, a.weight, a.remarks,
        a.bar_code, a.cust_coef, a.photo, a.is_photo,
       a.colour, a.country, a.hol_marks, a.rus_marks,
       a.name_code, a.compiled_name_otdel,
        a.namecode, a.tnved, a.weightdry, a.hol_color
  FROM nomenclature_mat_view a
  where a.id_departments = 62
  -- and substr(a.h_code,0,instr(a.h_code,'.')-1) <> a.namecode
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
where  a.n_id = s22.n_id(+) and a.n_id = s25.n_id(+) and a.n_id = vd2.n_id(+)




/*  
  select a.h_namecode||'.'||c.colour||'.'||a.len||'.'||a.remarks||'.'||a.pack||'.'||s22.hs_val||'.'||s25.hs_val||'.'||vd2.hs_val as nnnn,
a.* 
from nomenclature a, flower_names b, colours c,
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
where a.fn_id = b.fn_id and b.id_departments = 62 and a.col_id = c.col_id
and a.n_id = s22.n_id(+) and a.n_id = s25.n_id(+) and a.n_id = vd2.n_id(+)
*/
