-- Start of DDL Script for View CREATOR.INVOICE_DATA_FULL
-- Generated 10.12.2011 17:53:17 from CREATOR@STARREG

CREATE OR REPLACE VIEW invoice_data_full (
   inv_id,
   n_id,
   units,
   price_per_unit,
   total_sum,
   amount_in_the_pack,
   invoice_data_id,
   invoice_data_as_is_id,
   full_name,
   f_name,
   f_name_ru,
   len,
   colour,
   country,
   s_name_ru,
   inv_marks,
   rus_marks,
   diameter,
   ft_id,
   f_type,
   fst_id,
   f_sub_type,
   cust_coef,
   gtd,
   h_code,
   sended_to_warehouse,
   pack,
   storned_data,
   storned_text,
   remarks,
   code,
   bar_code,
   is_photo,
   photo,
   id_office )
AS
SELECT --/USE_MERGE(NOM,IND)/
  inv_id,
  ind.n_id,
  units,
  price_per_unit,
  total_sum,
  amount_in_the_pack,
  invoice_data_id,
  invoice_data_as_is_id,
  full_name,
  F_NAME,
  F_NAME_RU,
  len,
  colour,
  country,
  s_name_ru,
  hol_marks as inv_marks,
  rus_marks,
  diameter,
  FT_ID,
  f_type,
  FST_ID,
  f_sub_type,
  cust_coef,
  gtd,
  nom.h_code,
  sended_to_warehouse,
  PACK,
  STORNED_DATA,
  DECODE(STORNED_DATA,0,'Не сторнировано','Сторнировано') STORNED_TEXT,
  REMARKS,
  CODE,
  BAR_CODE
  , is_photo, photo
  , ind.id_office
FROM
  invoice_data ind,
  nomenclature_mat_view nom
WHERE ind.n_id = nom.n_id
 WITH READ ONLY
/

-- Grants for View
GRANT UPDATE ON invoice_data_full TO new_role
/

-- Comments for INVOICE_DATA_FULL

COMMENT ON TABLE invoice_data_full IS 'Просмотр распознанных позиций'
/
create or replace public synonym invoice_data_full for creator.invoice_data_full
/
-- End of DDL Script for View CREATOR.INVOICE_DATA_FULL

