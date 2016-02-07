-- Start of DDL Script for View CREATOR.FT_VIEW
-- Generated 10.12.2011 1:15:01 from CREATOR@STARREG

CREATE OR REPLACE VIEW ft_view (
   ft_id,
   f_type,
   ft_mask,
   ht_id,
   id_departments,
   hol_type,
   ord,
   dept,
   full_ft_name,
   id_office )
AS
SELECT
FT.FT_ID,
FT.F_TYPE,
FT.FT_MASK,
FT.HT_ID,
FT.ID_DEPARTMENTS,
HT.HOL_TYPE,
HT.ord,
BD.NAME DEPT,
FT.F_TYPE || ' (' || HT.HOL_TYPE || ')' FULL_FT_NAME
, ft.id_office
FROM FLOWER_TYPES FT,
     HOL_TYPES HT,
     BOOKS_DEPARTMENTS BD
WHERE
FT.HT_ID = HT.HT_ID AND
FT.ID_DEPARTMENTS = BD.ID_DEPARTMENTS
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON ft_view TO new_role
/

-- Comments for FT_VIEW

COMMENT ON TABLE ft_view IS 'Просмотр типов товара'
/
create or replace public synonym ft_view for creator.ft_view
/
-- End of DDL Script for View CREATOR.FT_VIEW

