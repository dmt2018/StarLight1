-- Start of DDL Script for View CREATOR.NOMENCLATURE_VIEW_PRICES
-- Generated 10.12.2011 17:55:37 from CREATOR@STARREG

CREATE OR REPLACE VIEW nomenclature_view_prices (
   n_id,
   f_name,
   f_name_ru,
   f_type,
   f_sub_type,
   code,
   hol_sub_type,
   hol_type,
   len,
   pack,
   colour,
   col_id,
   ft_id,
   fst_id,
   fn_id,
   s_id,
   c_id,
   h_code,
   h_name,
   s_name_ru,
   country,
   id_departments,
   spesification,
   full_name,
   compiled_name_otdel,
   price,
   id_office,
   brief )
AS
select
a.N_ID,
a.F_NAME,
a.F_NAME_RU,
a.F_TYPE,
a.F_SUB_TYPE,
CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
a.hol_sub_type,
a.hol_type,
a.LEN,
a.PACK,
a.COLOUR,
a.COL_ID,
a.FT_ID,
a.FST_ID,
a.FN_ID,
a.S_ID,
a.C_ID,
a.H_CODE,
a.H_NAME,
a.S_NAME_RU,
a.COUNTRY,
a.ID_DEPARTMENTS,
a.RUS_MARKS as spesification,
a.great_name_f as full_name,
a.compiled_name_otdel,
b.PRICE
, b.id_office, o.brief
from
NOMENCLATURE_MAT_VIEW a,
PRICE_LIST b, offices o
where a.N_ID = b.N_ID and b.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON nomenclature_view_prices TO new_role
/
create or replace public synonym nomenclature_view_prices for creator.nomenclature_view_prices
/
-- End of DDL Script for View CREATOR.NOMENCLATURE_VIEW_PRICES

