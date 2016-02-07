-- Start of DDL Script for View CREATOR.STORE_DOCDATA_VIEW
-- Generated 10.12.2011 18:18:15 from CREATOR@STARREG

CREATE OR REPLACE VIEW store_docdata_view (
   n_id,
   country,
   colour,
   spesification,
   fst_id,
   hol_sub_type,
   hol_type,
   h_code,
   f_type,
   f_sub_type,
   ft_id,
   full_name,
   code,
   s_name_ru,
   id_doc,
   quantity,
   quantity_now,
   store_type,
   gtd,
   price,
   quantity_price,
   price_percent,
   price_difference,
   sum_price_difference,
   price_list,
   store_type_name,
   our_code,
   compiled_name_otdel,
   id_office,
   brief )
AS
SELECT a.N_ID, a.country, a.colour, a.RUS_MARKS as spesification, a.fst_id, a.hol_sub_type, a.hol_type, a.H_CODE,
       a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.great_name_f as full_name,
       CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE,
       a.S_NAME_RU,
       b.id_doc, b.QUANTITY, b.QUANTITY_REAL as QUANTITY_NOW, b.store_type, b.GTD,
       b.PRICE, (b.PRICE * b.QUANTITY) as QUANTITY_PRICE,
       ROUND((100*( b.price - b.price_list ) / nvl(b.price_list,1)),0) as PRICE_Percent,
       (b.PRICE - b.PRICE_LIST) as price_difference,
       (b.quantity * (b.PRICE - b.PRICE_LIST)) as sum_price_difference,
       b.PRICE_list, c.name as store_type_name, to_char(a.CODE) as our_code,
       a.compiled_name_otdel
       , a.id_office, o.brief

  from NOMENCLATURE_MAT_VIEW a, store_doc_data b, store_type c, offices o
    where b.N_ID = a.N_ID
          and b.store_type = c.ID_STORE_TYPE
          and a.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON store_docdata_view TO new_role
/
create or replace public synonym store_docdata_view for creator.store_docdata_view
/
-- End of DDL Script for View CREATOR.STORE_DOCDATA_VIEW

