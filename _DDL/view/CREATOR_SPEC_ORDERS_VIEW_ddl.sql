-- Start of DDL Script for View CREATOR.SPEC_ORDERS_VIEW
-- Generated 05.08.2016 0:22:55 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW spec_orders_view (
   spec_orders_id,
   n_id,
   start_date,
   end_date,
   is_active,
   price,
   cur_price,
   price_date )
AS
SELECT a.SPEC_ORDERS_ID, a.n_id, a.start_date, a.end_date, a.is_active, a.price, p.price as cur_price, p.price_date
  FROM spec_orders a
  left outer join price_list p on p.n_id = a.n_id
/


create public synonym spec_orders_view for creator.spec_orders_view
/

grant select on spec_orders_view to new_role
/
-- End of DDL Script for View CREATOR.SPEC_ORDERS_VIEW

