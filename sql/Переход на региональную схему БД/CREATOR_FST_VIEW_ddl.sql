-- Start of DDL Script for View CREATOR.FST_VIEW
-- Generated 10.12.2011 1:13:59 from CREATOR@STARREG

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
   id_office )
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
fst.id_office
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
create or replace public synonym fst_view for creator.fst_view
/
-- End of DDL Script for View CREATOR.FST_VIEW

