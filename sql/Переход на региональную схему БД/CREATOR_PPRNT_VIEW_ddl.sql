-- Start of DDL Script for View CREATOR.PPRNT_VIEW
-- Generated 10.12.2011 17:57:51 from CREATOR@STARREG

CREATE OR REPLACE VIEW pprnt_view (
   n_id,
   title,
   price,
   code,
   h_code,
   colour,
   f_name_ru,
   country,
   rus_marks,
   bar_code,
   print_code,
   pack_price,
   invoice_id )
AS
SELECT 
  N_ID, 
  TITLE, 
  PRICE, 
  CODE, 
  H_CODE, 
  COLOUR,  
  F_NAME_RU, 
  COUNTRY, 
  RUS_MARKS, 
  BAR_CODE, 
  PRINT_CODE, 
  PACK_PRICE
  , INVOICE_ID
FROM 
  PREPARE_PRINT PP
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON pprnt_view TO new_role
/

-- Comments for PPRNT_VIEW

COMMENT ON TABLE pprnt_view IS 'Для печати'
/
create or replace public synonym pprnt_view for creator.pprnt_view
/
-- End of DDL Script for View CREATOR.PPRNT_VIEW

