-- Start of DDL Script for View CREATOR.CLAIMS_VIEW
-- Generated 11.12.2011 1:02:52 from CREATOR@STARREG

CREATE OR REPLACE VIEW claims_view (
   claims_id,
   ddate,
   n_track,
   dop_info,
   sended_to_warehouse,
   inv_minus,
   minus_inv_id,
   id_office,
   brief,
   inv_id,
   inv_date,
   supplier_date,
   supplier_number,
   id_departments,
   name,
   summ_inv,
   percent2 )
AS
select a.claims_id, a.ddate, a.n_track, a.dop_info, a.sended_to_warehouse, a.INV_MINUS, a.MINUS_INV_ID, a.id_office, a.brief, 
a.INV_ID, a.INV_DATE, a.supplier_date, a.supplier_number, a.ID_DEPARTMENTS, a.name, a.summ_inv, round( sum( ((b.QUANTITY*b.HFL - nvl(b.QUANTITY2*b.HFL2,0))/a.summ_inv)*100 ), 3) as percent2
from (
    select a.claims_id, a.ddate, a.n_track, a.dop_info, d.sended_to_warehouse, d.INV_MINUS, d.MINUS_INV_ID,
        r.INV_ID, r.INV_DATE, r.supplier_date, r.supplier_number, r.ID_DEPARTMENTS, c.name
        , o.id_office, o.brief 
        , ( select sum(d.TOTAL_SUM) from invoice_data d where d.inv_id = r.INV_ID ) as summ_inv
    from claims a, INVOICE_REGISTER r, books_departments c, INVOICE_REGISTER d, offices o
    where a.INV_ID = R.INV_ID and r.ID_DEPARTMENTS = c.ID_DEPARTMENTS and a.inv_id = d.inv_id and a.id_office = o.id_office
) a, claims_list b
where a.claims_id = b.claims_id(+)
group by a.claims_id, a.ddate, a.n_track, a.dop_info, a.INV_ID, a.INV_DATE, a.supplier_date,
         a.supplier_number, a.ID_DEPARTMENTS, a.name, a.summ_inv, a.sended_to_warehouse, a.INV_MINUS, a.MINUS_INV_ID
         , a.id_office, a.brief
ORDER BY a.DDATE DESC
/

-- Grants for View
GRANT SELECT ON claims_view TO new_role
/

-- Comments for CLAIMS_VIEW

COMMENT ON TABLE claims_view IS 'Просмотр претензий'
/
create or replace public synonym claims_view for creator.claims_view
/
--
-- End of DDL Script for View CREATOR.CLAIMS_VIEW

