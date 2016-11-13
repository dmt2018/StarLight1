-- Start of DDL Script for View CREATOR.NOMENCLATURE_VIEW_PRICES
-- Generated 13.11.2016 21:41:49 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW nomenclature_view_prices (
   n_id,
   f_name,
   f_name_ru,
   f_type,
   f_sub_type,
   code,
   our_code,
   bar_code,
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
   photo,
   price,
   id_office,
   brief,
   notuse )
AS
select
a.N_ID,
a.F_NAME,
a.F_NAME_RU,
a.F_TYPE,
a.F_SUB_TYPE,

--В СРЕЗКЕ и В ГОРШКАХ при распечатке стикеров должен отображаться только ш-код твоей программы.
--Напоминаю: СРЕЗКА + ГОРШКИ = наш ш-код, АКСЕССУАРЫ - при наличии - ш-код поставщика, если его нет - наш ш-код
--CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
case when ID_DEPARTMENTS = 121 then nvl(a.BAR_CODE,to_char(a.CODE)) else to_char(a.CODE) end CODE,

to_char(a.CODE) as our_code,
a.BAR_CODE,
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
a.photo,
b.PRICE
, b.id_office, o.brief, a.notuse
from
NOMENCLATURE_MAT_VIEW a,
PRICE_LIST b, offices o
where a.N_ID = b.N_ID and b.id_office = o.id_office --and notuse <> 1
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON nomenclature_view_prices TO new_role
/

-- End of DDL Script for View CREATOR.NOMENCLATURE_VIEW_PRICES

