-- Start of DDL Script for View CREATOR.PREP_DIST_VIEW
-- Generated 12.06.2016 19:54:59 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW prep_dist_view (
   prep_dist_id,
   dist_ind_id,
   n_id,
   invoice_data_id,
   id_store_main,
   total_quantity,
   left_quantity,
   compiled_name,
   great_name,
   great_name_f,
   compiled_name_otdel,
   f_sub_type,
   f_type,
   fst_id,
   ft_id,
   hol_sub_type,
   hol_type,
   ord,
   f_name_ru,
   colour,
   s_name_ru )
AS
SELECT
  DIST.PREP_DIST_ID,
  DIST.DIST_IND_ID,
  DIST.N_ID,
  DIST.INVOICE_DATA_ID,
  DIST.ID_STORE_MAIN,
  DIST.TOTAL_QUANTITY,
  DIST.LEFT_QUANTITY,
  NOM.COMPILED_NAME,
  NOM.GREAT_NAME,
  NOM.great_name_f,
  NOM.compiled_name_otdel,
  NOM.f_sub_type,
  NOM.f_type,
  NOM.fst_id,
  NOM.ft_id,
  NOM.hol_sub_type,
  nom.hol_type,
0 as ord,
  nom.F_NAME_RU,
  nom.colour,
  nom.s_name_ru
FROM
  PREPARE_DISTRIBUTION DIST,
  NOMENCLATURE_mat_view NOM
WHERE
  NOM.N_ID = DIST.N_ID
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON prep_dist_view TO new_role
/

-- End of DDL Script for View CREATOR.PREP_DIST_VIEW

