-- Start of DDL Script for View CREATOR.STORE_DOC_DATA_TEMP_VIEW_NOM
-- Generated 10.12.2011 18:17:21 from CREATOR@STARREG

CREATE OR REPLACE VIEW store_doc_data_temp_view_nom (
   n_id,
   code,
   h_code,
   s_name_ru,
   s_id,
   f_type,
   f_sub_type,
   country,
   colour,
   c_id,
   ft_id,
   fst_id,
   full_name,
   added,
   id_departments,
   gtd,
   spesification,
   price,
   quantity,
   quantity_price,
   price_list,
   compiled_name_otdel,
   id_office,
   brief )
AS
select
  a.N_ID,
  CASE
  WHEN a.BAR_CODE is null
  THEN to_char(a.CODE)
  ELSE a.BAR_CODE END CODE,
  a.H_CODE,
  a.S_NAME_RU,
  a.S_ID,
  a.F_TYPE,
  a.F_SUB_TYPE,
  a.COUNTRY,
  a.colour,
  a.C_ID,
  a.FT_ID,
  a.FST_ID,
  a.great_name_f full_name,
  b.ID_DOC_DATA as added,
  a.ID_DEPARTMENTS as id_departments,
  b.gtd,
  a.RUS_MARKS as spesification,
  b.PRICE,
  b.QUANTITY,
  b.PRICE*b.QUANTITY as QUANTITY_PRICE,
  c.PRICE as PRICE_list
        , case when a.id_departments = 62 then
                    (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else colour||'. ' end) || a.RUS_MARKS)
        else case when a.id_departments = 61 then
                    (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else colour||'. ' end) || a.RUS_MARKS /*decode(a.len,0,'',a.len) || case when a.diameter > 0 then '/'||a.diameter else null end*/)
        else
                    (a.f_name_ru || '. ' || (case when a.col_id in (0,1639,2768,2915) then null else colour||'. ' end) )
        end end compiled_name_otdel
  , c.id_office, o.brief
from
nomenclature_mat_view a,
store_doc_data_temp b,
PRICE_LIST c,
offices o
where a.N_ID = b.N_ID(+)
and a.N_ID = c.N_ID(+)
and c.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON store_doc_data_temp_view_nom TO new_role
/
create or replace public synonym store_doc_data_temp_view_nom for creator.store_doc_data_temp_view_nom
/
-- End of DDL Script for View CREATOR.STORE_DOC_DATA_TEMP_VIEW_NOM

