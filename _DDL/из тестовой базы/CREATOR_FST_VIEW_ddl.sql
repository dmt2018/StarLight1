-- Start of DDL Script for View CREATOR.FST_VIEW
-- Generated 31-мар-2016 19:45:56 from CREATOR@ORCL

CREATE OR REPLACE VIEW fst_view (
   fst_id,
   f_sub_type,
   hol_sub_type,
   ft_id,
   f_type,
   double_name,
   ht_id,
   hol_type,
   id_departments,
   dept,
   ord,
   mnemo,
   sub_weight,
   id_office,
   price_prefix,
   tnved,
   sub_weight_dry )
AS
SELECT
FST.FST_ID,
FST.F_SUB_TYPE,
FST.HOL_SUB_TYPE,
FST.FT_ID,
FT.F_TYPE,
FST.F_SUB_TYPE || ' / ' || FST.HOL_SUB_TYPE DOUBLE_NAME,
FT.HT_ID,
FT.HOL_TYPE,
FT.ID_DEPARTMENTS,
FT.DEPT,
FT.ord,
FST.mnemo,
FST.sub_weight,
fst.id_office,
fst.price_prefix,
fst.tnved,
FST.sub_weight_dry
FROM FLOWER_SUBTYPES FST, FT_VIEW FT
WHERE
FT.FT_ID = FST.FT_ID
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON fst_view TO new_role
/

-- Comments for FST_VIEW

COMMENT ON TABLE fst_view IS 'Просмотр потипов и типов товара'
/

-- End of DDL Script for View CREATOR.FST_VIEW

