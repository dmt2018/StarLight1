-- Start of DDL Script for View CREATOR.NOMENCLATURE_FULL_VIEW
-- Generated 10.12.2011 17:55:05 from CREATOR@STARREG

CREATE OR REPLACE VIEW nomenclature_full_view (
   compiled_name,
   full_name,
   f_name,
   n_id,
   fn_id,
   fst_id,
   s_id,
   c_id,
   col_id,
   h_code,
   h_name,
   code,
   len,
   pack,
   diameter,
   vbn,
   hol_type,
   weight,
   remarks,
   bar_code,
   cust_coef,
   photo,
   is_photo,
   name_code,
   f_name_ru,
   f_sub_type,
   f_type,
   id_departments,
   dept,
   ft_id,
   hol_sub_type,
   sub_weight,
   type_subtype,
   ht_id,
   s_name_ru,
   colour,
   country,
   hol_marks,
   rus_marks,
   great_name,
   great_name_f )
AS
SELECT DECODE(a.LEN, NULL, FNV.F_NAME_RU, 0, FNV.F_NAME_RU, FNV.F_NAME_RU || ' (' || LEN || ')') as COMPILED_NAME,
       FNV.F_NAME_RU || ' / ' || a.H_NAME as FULL_NAME,
--       (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else colour||'. ' end) || a.RUS_MARKS as compiled_name_otdel
       a.H_NAME as F_NAME, a.N_ID, a.FN_ID, a.FST_ID, a.S_ID, a.C_ID, a.COL_ID,
       a.H_CODE, a.H_NAME, a.CODE, a.LEN, a.PACK, a.DIAMETER, a.VBN, a.HOL_TYPE,
       a.WEIGHT, a.REMARKS, a.BAR_CODE, a.CUST_COEF, a.photo,
       case when photo is null then 0 else 1 end is_photo,
       a.h_namecode as name_code,
       --
       FNV.F_NAME_RU,
       --
       fst.F_SUB_TYPE, ft.F_TYPE, ft.ID_DEPARTMENTS, ft.id_departments DEPT, fst.FT_ID,
       null as hol_sub_type, fst.sub_weight,
       ft.F_TYPE || ' / ' || fst.F_SUB_TYPE as TYPE_SUBTYPE,
       DECODE(ft.HT_ID, NULL, 0, ft.HT_ID) as HT_ID,
       --
       s.S_NAME_RU,
       --
       c.COLOUR,
       --
       b.COUNTRY,
       --
       GET_HOL_MARKS(N_ID) as HOL_MARKS,
       GET_RUS_MARKS(N_ID) as RUS_MARKS,
       --
       null as GREAT_NAME,
       null as GREAT_NAME_F
  FROM NOMENCLATURE a,
       flower_names fnv,
       flower_types ft,
       flower_subtypes fst,
       COUNTRIES b,
       SUPPLIERS s,
       COLOURS c
 WHERE a.FN_ID = FNV.FN_ID and a.fst_id = fst.fst_id and fst.ft_id = ft.ft_id
    and a.c_id = b.C_ID and a.S_ID = s.S_ID and a.COL_ID = c.COL_ID
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON nomenclature_full_view TO new_role
/

-- Comments for NOMENCLATURE_FULL_VIEW

COMMENT ON TABLE nomenclature_full_view IS 'Просмотр номенклатуры'
/
create or replace public synonym nomenclature_full_view for creator.nomenclature_full_view
/
-- End of DDL Script for View CREATOR.NOMENCLATURE_FULL_VIEW

