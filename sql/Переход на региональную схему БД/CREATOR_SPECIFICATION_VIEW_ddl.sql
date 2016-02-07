-- Start of DDL Script for View CREATOR.SPECIFICATION_VIEW
-- Generated 10.12.2011 18:16:31 from CREATOR@STARREG

CREATE OR REPLACE VIEW specification_view (
   n_id,
   hs_id,
   sc_id,
   hs_val,
   ord,
   spec_code,
   spec_name,
   spec_hol_name,
   addition,
   russian_addition,
   need_translation,
   content_hol,
   content_rus )
AS
SELECT /*+ FIRST_ROWS */ ns.n_id, ns.hs_id, null sc_id,  ns.hs_val, ns.ord, hs.spec_code, hs.spec_name, hs.spec_hol_name, hs.addition, hs.russian_addition, hs.need_translation,
       ns.hs_val || ' ' || hs.addition as content_hol,
       ns.hs_val || ' ' || hs.russian_addition as content_rus
FROM nom_specifications ns, hol_specifications hs--, specification_content sc
WHERE ns.hs_id = hs.hs_id
and hs.need_translation = 0

union all

SELECT /*+ FIRST_ROWS */ ns.n_id, ns.hs_id, sc.sc_id,  ns.hs_val, ns.ord, hs.spec_code, hs.spec_name, hs.spec_hol_name, hs.addition, hs.russian_addition, hs.need_translation,
        sc.content_hol as content_hol,
        sc.content_rus as content_rus
FROM nom_specifications ns, hol_specifications hs, specification_content sc
WHERE ns.hs_id = hs.hs_id
  and hs.need_translation = 1
   AND ns.hs_id = sc.hs_id
   AND (ns.hs_val) = (sc.content_hol)
/

-- Grants for View
GRANT SELECT ON specification_view TO new_role
/

-- Comments for SPECIFICATION_VIEW

COMMENT ON TABLE specification_view IS 'Просмотр спецификаций и перевода со значениями'
/
create or replace public synonym specification_view for creator.specification_view
/
-- End of DDL Script for View CREATOR.SPECIFICATION_VIEW

