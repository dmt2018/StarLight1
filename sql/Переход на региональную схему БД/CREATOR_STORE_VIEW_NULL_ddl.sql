-- Start of DDL Script for View CREATOR.STORE_VIEW_NULL
-- Generated 10.12.2011 18:20:44 from CREATOR@STARREG

CREATE OR REPLACE VIEW store_view_null (
   store_type,
   id_departments,
   full_name,
   f_name,
   f_name_ru,
   f_type,
   f_sub_type,
   hol_type,
   hol_sub_type,
   code,
   h_code,
   our_code,
   len,
   pack,
   colour,
   col_id,
   ft_id,
   fst_id,
   fn_id,
   s_id,
   c_id,
   h_name,
   s_name_ru,
   country,
   quantity,
   n_id,
   reserv,
   price,
   spesification,
   is_photo,
   photo,
   compiled_name_otdel,
   id_office,
   brief )
AS
select b.STORE_TYPE, b.ID_DEPARTMENTS, a.great_name as full_name, a.F_NAME, a.F_NAME_RU, a.F_TYPE, a.F_SUB_TYPE, a.hol_type, a.hol_sub_type,
        CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
        a.H_CODE, to_char(a.CODE) as our_code, a.LEN, a.PACK, a.COLOUR, a.COL_ID, a.FT_ID, a.FST_ID, a.FN_ID, a.S_ID, a.C_ID,
        a.H_NAME, a.S_NAME_RU, a.COUNTRY, b.QUANTITY, b.N_ID, b.reserv,
        CASE WHEN b.STORE_TYPE=1 THEN c.PRICE ELSE b.PRICE END price,
        a.RUS_MARKS as spesification
        , a.is_photo, a.photo
        , a.compiled_name_otdel
        , a.id_office, o.brief
from
NOMENCLATURE_MAT_VIEW a,
STORE_MAIN b,
PRICE_LIST c,
offices o

where a.N_ID=b.N_ID
      and c.N_ID = b.N_ID
      and a.id_office = o.id_office
      and b.quantity is not null
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON store_view_null TO new_role
/
create or replace public synonym store_view_null for creator.store_view_null
/
-- End of DDL Script for View CREATOR.STORE_VIEW_NULL

