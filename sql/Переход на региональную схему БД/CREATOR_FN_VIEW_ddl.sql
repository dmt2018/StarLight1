-- Start of DDL Script for View CREATOR.FN_VIEW
-- Generated 10.12.2011 1:13:10 from CREATOR@STARREG

CREATE OR REPLACE VIEW fn_view (
   fn_id,
   f_name_ru,
   f_name,
   name_code,
   id_departments,
   dept,
   full_f_name,
   fito_name,
   fito_perevod,
   id_office )
AS
SELECT
  FN.FN_ID,
  FN.F_NAME_RU,
  FNT.F_NAME,
  FN.NAME_CODE,
  FN.ID_DEPARTMENTS,
  BD.NAME DEPT,
  FN.F_NAME_RU || ' / ' || FNT.F_NAME FULL_F_NAME,
  FN.fito_name,
  nvl(FN.fito_name, FN.F_NAME_RU) as fito_perevod,
  fn.id_office
FROM
  FLOWER_NAMES FN,
  BOOKS_DEPARTMENTS BD,
  FLOWER_NAME_TRANSLATIONS FNT
WHERE
  FN.ID_DEPARTMENTS = BD.ID_DEPARTMENTS AND
  FN.FN_ID = FNT.FN_ID AND
  FNT.DEFAULT_TRANSLATION = 1
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON fn_view TO new_role
/

-- Comments for FN_VIEW

COMMENT ON TABLE fn_view IS 'Просмотр названий товаров'
/
create or replace public synonym fn_view for creator.fn_view
/
-- End of DDL Script for View CREATOR.FN_VIEW

