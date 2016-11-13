-- Start of DDL Script for View CREATOR.STORE_DOCDATATEMP_VIEW
-- Generated 13.11.2016 21:42:16 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW store_docdatatemp_view (
   n_id,
   code,
   h_code,
   f_type,
   f_sub_type,
   ft_id,
   fst_id,
   full_name,
   quantity_now,
   store_type_name,
   store_type,
   price,
   price_list,
   s_name_ru,
   compiled_name_otdel,
   price_difference,
   sum_price_difference,
   quantity,
   added,
   quantity_price,
   id_departments,
   spesification,
   hol_sub_type,
   hol_type,
   colour,
   country,
   price_percent,
   id_office,
   brief,
   photo,
   our_code,
   notuse,
   bar_code )
AS
select N_ID, CODE, H_CODE, F_TYPE, F_SUB_TYPE, FT_ID, FST_ID, full_name, QUANTITY_NOW,
       store_type_name, STORE_TYPE, price, price_list, s_name_ru, COMPILED_NAME_OTDEL,
       ( price - price_list ) as price_difference,
       ( price - price_list ) * QUANTITY as sum_price_difference,
       nvl(QUANTITY,0) as QUANTITY, added, (QUANTITY * price) as QUANTITY_PRICE,
       id_departments, spesification, hol_sub_type, hol_type, colour, country,
       ROUND((100*(price-price_list)/price_list),2) as price_percent
       , id_office, brief, photo, our_code, notuse, BAR_CODE
from
(
        select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.spesification,
               a.QUANTITY_NOW, a.store_type_name, a.STORE_TYPE, a.hol_type, a.hol_sub_type, a.s_name_ru,
               CASE WHEN b.price_list is not NULL THEN b.price_list else a.price_list end price_list,
               CASE WHEN b.price is not NULL THEN b.price ELSE a.price_list END price,
               b.QUANTITY, b.ID_DOC_DATA as added, a.ID_DEPARTMENTS as id_departments, a.colour, a.country
               , a.COMPILED_NAME_OTDEL, a.id_office, a.brief, a.photo, a.our_code, a.notuse, a.BAR_CODE
        from
        store_doc_data_temp b,
        (
          select a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FT_ID, a.FST_ID, a.full_name, a.photo,
                 a.ID_DEPARTMENTS, a.spesification, a.hol_sub_type, a.hol_type, a.colour, a.country, a.s_name_ru,
                 b.QUANTITY as QUANTITY_NOW,
                 c.NAME as store_type_name,
                 CASE WHEN b.STORE_TYPE is not NULL THEN b.STORE_TYPE ELSE 0 END STORE_TYPE,
                 CASE WHEN b.STORE_TYPE=1 THEN a.PRICE ELSE b.PRICE END price_list
                 , a.COMPILED_NAME_OTDEL
                 , a.id_office, a.brief, a.our_code, a.notuse, a.BAR_CODE
            from nomenclature_view_prices a, store_main b, store_type c
              where a.N_ID = b.N_ID
                    and b.store_type = c.ID_STORE_TYPE
        ) a
          where a.N_ID = b.N_ID(+)
                and a.STORE_TYPE = b.STORE_TYPE(+)
)
/

-- Grants for View
GRANT SELECT ON store_docdatatemp_view TO new_role
/

-- End of DDL Script for View CREATOR.STORE_DOCDATATEMP_VIEW

