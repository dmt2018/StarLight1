-- Start of DDL Script for View CREATOR.PRICE_LIST_VIEW
-- Generated 10.12.2011 18:15:00 from CREATOR@STARREG

CREATE OR REPLACE VIEW price_list_view (
   n_id,
   price,
   price_date,
   great_name_f,
   compiled_name,
   ft_id,
   fst_id,
   f_type,
   f_sub_type,
   len,
   s_id,
   s_name_ru,
   col_id,
   colour,
   code,
   bar_code,
   c_id,
   country,
   id_departments,
   dept,
   fn_id,
   f_name_ru,
   pack,
   h_code,
   quantity,
   great_name,
   hol_type,
   stickers,
   is_photo,
   photo,
   compiled_name_pot,
   id_office,
   brief )
AS
SELECT NOM.N_ID,
  NVL(PL.PRICE,0) PRICE, PL.PRICE_DATE, nom.great_name_f,
  NOM.COMPILED_NAME, NOM.FT_ID, NOM.FST_ID, NOM.F_TYPE, NOM.F_SUB_TYPE, NOM.LEN,
  NOM.S_ID, NOM.S_NAME_RU, NOM.COL_ID, NOM.COLOUR, NOM.CODE, NOM.BAR_CODE,
  NOM.C_ID, NOM.COUNTRY, NOM.ID_DEPARTMENTS, NOM.DEPT, NOM.FN_ID, NOM.F_NAME_RU,
  NOM.PACK, NOM.H_CODE, sm.QUANTITY, nom.great_name, nom.hol_type,
  DECODE(STP.STICKERS,NULL,0,STP.STICKERS) STICKERS
  , is_photo, photo
  , nom.compiled_name_otdel as compiled_name_pot
  , pl.ID_OFFICE
  , o.brief  
FROM  NOMENCLATURE_MAT_VIEW NOM,
     STORE_MAIN SM,
     PRICE_LIST PL,
     STICKERS_TO_PRINT STP,
     offices o
WHERE NOM.N_ID = sm.n_id(+) and sm.store_type(+) = 1
      and NOM.N_ID = PL.N_ID
      AND NOM.N_ID = STP.N_ID(+)
      and pl.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT UPDATE ON price_list_view TO new_role
/

-- Comments for PRICE_LIST_VIEW

COMMENT ON TABLE price_list_view IS 'Прайс лист '
/
create or replace public synonym price_list_view for creator.price_list_view
/
-- End of DDL Script for View CREATOR.PRICE_LIST_VIEW

