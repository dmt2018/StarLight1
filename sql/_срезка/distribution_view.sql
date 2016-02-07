-- Start of DDL Script for View CREATOR.OLD_DISTRIBUTION_VIEW
-- Generated 7-май-2012 14:27:55 from CREATOR@STARNEW

CREATE OR REPLACE VIEW distribution_view (
   dist_ind_id,
   dist_id,
   d_n_id,
   dq,
   prep_dist_id,
   id_orders_list,
   oq,
   o_n_id,
   great_name,
   great_name_f,
   compiled_name_otdel,
   hol_type,
   f_sub_type,
   ord,
   ft_id,
   invoice_data_id,
   id_store_main,
   id_clients,
   id_orders,
   invoice_data_as_is_id,
   order_markname,
   packing_marks )
AS
SELECT
  DIST.DIST_IND_ID,
  DIST_ID,
  DIST.N_ID D_N_ID,
  DIST.QUANTITY DQ,
  DIST.PREP_DIST_ID,
  DIST.ID_ORDERS_LIST,
  OLV.QUANTITY OQ,
  OLV.N_ID O_N_ID,
  NOM.GREAT_NAME,
  NOM.GREAT_NAME_F,
  nom.compiled_name_otdel,
  NOM.hol_type,
  nom.f_sub_type,
  0 as ord,
  nom.ft_id,
  PREPD.INVOICE_DATA_ID,
  PREPD.ID_STORE_MAIN,
  OCV.ID_CLIENTS,
  OCV.ID_ORDERS,
  INVD.INVOICE_DATA_AS_IS_ID,
  INVDAI.order_markname,
  INVDAI.PACKING_MARKS
FROM
  DISTRIBUTIONS DIST,
  ORDERS_LIST_VIEW OLV,
  NOMENCLATURE_MAT_VIEW NOM,
  PREPARE_DISTRIBUTION PREPD,
  ORDERS_CLIENTS_VIEW OCV,
  INVOICE_DATA INVD,
  INVOICE_DATA_AS_IS INVDAI
WHERE
  OLV.ID_ORDERS_LIST = DIST.ID_ORDERS_LIST AND
  NOM.N_ID = DIST.N_ID AND
  PREPD.PREP_DIST_ID = DIST.PREP_DIST_ID AND
  OCV.ID_ORDERS_CLIENTS = OLV.ID_ORDERS_CLIENTS AND
  INVD.INVOICE_DATA_ID(+) = PREPD.INVOICE_DATA_ID AND
  INVDAI.INVOICE_DATA_AS_IS_ID(+) = INVD.INVOICE_DATA_AS_IS_ID
 WITH READ ONLY
/

GRANT select ON distribution_view TO new_role
/
create or replace public synonym distribution_view for creator.distribution_view
/
-- End of DDL Script for View CREATOR.OLD_DISTRIBUTION_VIEW

