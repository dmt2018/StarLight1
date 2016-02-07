-- Start of DDL Script for View CREATOR.SUPPLIERS_VIEW
-- Generated 10.12.2011 18:21:10 from CREATOR@STARREG

CREATE OR REPLACE VIEW suppliers_view (
   s_id,
   s_name_ru,
   c_id,
   need_cust,
   country,
   id_office )
AS
SELECT
  s.S_ID,
  s.S_NAME_RU,
  S.C_ID,
  s.NEED_CUST,
  c.COUNTRY,
  s.id_office
FROM
  SUPPLIERS S,
  COUNTRIES C
WHERE
  S.C_ID = C.C_ID
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON suppliers_view TO new_role
/
create or replace public synonym suppliers_view for creator.suppliers_view
/
-- End of DDL Script for View CREATOR.SUPPLIERS_VIEW

