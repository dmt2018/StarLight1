-- Start of DDL Script for View CREATOR.BUH_DOCDATA_VIEW
-- Generated 5.12.2015 16:39:21 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW buh_docdata_view (
   id_doc_type,
   id_doc_data,
   id_doc,
   quantity,
   price,
   price_old,
   gtd,
   f_name_ru,
   n_id,
   len,
   pack,
   col_id,
   colour,
   f_type,
   f_sub_type,
   ft_id,
   fst_id,
   country,
   c_id,
   h_code,
   spesification,
   code,
   price_difference,
   price_bez_nds,
   summ_bez_nds,
   summ_nds,
   full_name,
   compiled_name_otdel,
   buh_code,
   country_gtd,
   price_quantity,
   nsi_name,
   unit_code,
   symbol_national,
   bezndsminus )
AS
select a.ID_DOC_TYPE,a.ID_DOC_DATA,a.ID_DOC,a.QUANTITY,a.PRICE,a.PRICE_OLD,a.GTD,a.F_NAME_RU,a.N_ID,a.LEN,a.PACK,a.COL_ID,a.COLOUR,a.F_TYPE,a.F_SUB_TYPE,a.FT_ID,a.FST_ID,
a.COUNTRY,a.C_ID,a.H_CODE,a.SPESIFICATION,a.CODE,a.PRICE_DIFFERENCE,a.PRICE_BEZ_NDS,a.SUMM_BEZ_NDS,a.SUMM_NDS,a.FULL_NAME, compiled_name_otdel, buh_code, country_gtd,
       CASE WHEN a.id_doc_type in (1,4) THEN a.PRICE * a.QUANTITY
       ELSE SUMM_BEZ_NDS + SUMM_NDS
       END PRICE_QUANTITY
       , a.nsi_name, a.unit_code, a.symbol_national, a.BEZNDSMINUS
from (
SELECT /*+ NO_USE_MERGE(C,B,A) */ a.id_doc_type, b.ID_DOC_DATA, b.ID_DOC, b.QUANTITY, b.PRICE, b.PRICE_OLD, b.GTD,
       c.F_NAME_RU, c.N_ID, c.LEN, c.PACK, c.COL_ID, c.COLOUR, c.F_TYPE, c.F_SUB_TYPE, c.FT_ID, c.FST_ID
       , nvl(b.name_country, c.COUNTRY) as country
--       , b.name_country as country
       , c.C_ID, c.H_CODE, c.rus_marks as spesification,
       CASE WHEN c.BAR_CODE is not null THEN c.BAR_CODE
       ELSE to_char(c.CODE) END CODE,
       b.quantity * (b.PRICE - b.PRICE_OLD) price_difference,
       ROUND(( b.PRICE * 100 / (100 + a.NDS)),2) as PRICE_BEZ_NDS,
       ((ROUND(( b.PRICE * 100 /(100 + a.NDS)),2)) * b.QUANTITY) as SUMM_BEZ_NDS,
       ROUND((((ROUND((b.PRICE * 100 / (100 + a.NDS)),2)) * b.QUANTITY)) * a.NDS / 100,2) as SUMM_NDS,
       c.F_NAME_RU || ' (' || c.rus_marks || ') ' /*|| ' ' || H_CODE*/ as full_name
       , nvl(b.compiled_name_otdel,c.compiled_name_otdel) as compiled_name_otdel
       , s.buh_code
       , c_gtd.country as country_gtd
       , u.nsi_name, u.unit_code, u.symbol_national
       , a.BEZNDSMINUS
from BUH_DOC a, BUH_DOC_data b, NOMENCLATURE_MAT_VIEW c, countries s, countries c_gtd, nsi_units u
where a.ID_DOC = b.ID_DOC
and b.N_ID = c.N_ID
and c.c_id = s.c_id
and b.gtd_country = c_gtd.c_id(+)
and c.vbn = u.nsi_units_id(+)
) a
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON buh_docdata_view TO new_role
/

-- End of DDL Script for View CREATOR.BUH_DOCDATA_VIEW

