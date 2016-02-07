-- Start of DDL Script for View CREATOR.OLD_ORDERS_LIST_VIEW
-- Generated 7-май-2012 14:15:56 from CREATOR@STARNEW

CREATE OR REPLACE VIEW orders_list_view (
   id_orders_list,
   n_id,
   quantity,
   id_orders_clients,
   truck,
   weight,
   zatirka,
   compiled_name,
   great_name,
   great_name_f,
   compiled_name_otdel,
   hol_type,
   f_sub_type,
   ord,
   fst_id,
   f_name_ru )
AS
SELECT
  ol.ID_ORDERS_LIST,
  OL.N_ID,
  ol.QUANTITY,
  ol.ID_ORDERS_CLIENTS,
  ol.TRUCK,
  OL.WEIGHT,
  ol.zatirka,
  nom.compiled_name,
  nom.great_name,
  nom.great_name_f,
  nom.compiled_name_otdel,
  nom.hol_type,
  nom.f_sub_type,
  0 as ord,
  nom.fst_id,
  nom.F_NAME_RU
FROM
  ORDERS_LIST OL,
  NOMENCLATURE_MAT_VIEW NOM
WHERE
  NOM.N_ID = OL.N_ID
 WITH READ ONLY
/


GRANT select ON orders_list_view TO new_role
/
create public synonym orders_list_view for creator.orders_list_view
/
-- End of DDL Script for View CREATOR.OLD_ORDERS_LIST_VIEW

