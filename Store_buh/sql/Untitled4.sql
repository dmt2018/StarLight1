SELECT /*+ NO_USE_MERGE(C,B,A) */ a.nds, a.id_doc_type, b.ID_DOC_DATA, b.ID_DOC, b.QUANTITY, b.PRICE, b.PRICE_OLD, b.GTD,
       c.F_NAME_RU, c.N_ID, c.LEN, c.PACK, c.COL_ID, c.COLOUR, c.F_TYPE, c.F_SUB_TYPE, c.FT_ID, c.FST_ID, c.COUNTRY, c.C_ID, c.H_CODE, c.rus_marks as spesification,

       CASE WHEN c.BAR_CODE is not null THEN c.BAR_CODE
       ELSE to_char(c.CODE) END CODE,

       b.quantity * (b.PRICE - b.PRICE_OLD) price_difference,
       ROUND(( b.PRICE * 100 / (100 + a.NDS)),2) as PRICE_BEZ_NDS,
       ((ROUND(( b.PRICE * 100 /(100 + a.NDS)),2)) * b.QUANTITY) as SUMM_BEZ_NDS,
       ROUND((((ROUND((b.PRICE * 100 / (100 + a.NDS)),2)) * b.QUANTITY)) * a.NDS / 100,2) as SUMM_NDS,

       c.F_NAME_RU || ' (' || c.rus_marks || ') ' as full_name

from BUH_DOC a, BUH_DOC_data b, NOMENCLATURE_MAT_VIEW c
where a.ID_DOC = b.ID_DOC
and b.N_ID = c.N_ID
