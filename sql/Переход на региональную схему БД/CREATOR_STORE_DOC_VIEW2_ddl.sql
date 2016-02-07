-- Start of DDL Script for View CREATOR.STORE_DOC_VIEW2
-- Generated 10.12.2011 18:17:46 from CREATOR@STARREG

CREATE OR REPLACE VIEW store_doc_view2 (
   id_doc,
   doc_number,
   id_doc_type,
   id_departments,
   department_name,
   operator_name,
   doc_date,
   doc_date_real,
   id_client,
   nick,
   fio,
   quantity_all,
   price_all,
   sum_price_old,
   sum_price_new,
   sum_price_difference,
   comments,
   inv_id,
   order_id,
   supplier_date,
   supplier_number,
   suplier,
   s_name_ru,
   id_office,
   brief )
AS
select a.ID_DOC,
       a.DOC_NUMBER,
       a.ID_DOC_TYPE,
       a.ID_DEPARTMENTS,
       d.name as department_name,
       a.OPERATOR_NAME,
       a.DOC_DATE,
       a.DOC_DATE_REAL,
       a.ID_CLIENT,
       c.NICK,
       c.FIO,
       count(b.ID_DOC_DATA) as QUANTITY_ALL,
--       count(b.id_doc_data) over (partition by b.n_id, b.price) as QUANTITY_ALL,
       CASE a.ID_DOC_TYPE WHEN 1 THEN sum(b.PRICE * b.QUANTITY)
                          WHEN 2 THEN sum(b.PRICE * b.QUANTITY)
                          WHEN 3 THEN sum(b.PRICE_LIST * b.QUANTITY) - sum(b.PRICE * b.QUANTITY)
                          WHEN 4 THEN sum(b.PRICE * b.QUANTITY)
                          WHEN 5 THEN sum(b.PRICE * b.QUANTITY) - sum(b.PRICE * b.QUANTITY_REAL)
                          ELSE sum(b.PRICE * b.QUANTITY) END PRICE_ALL,
       sum(b.PRICE_LIST * b.QUANTITY) sum_price_old,
       sum(b.PRICE * b.QUANTITY) sum_price_new,
       sum(b.PRICE * b.QUANTITY) - sum(b.PRICE_LIST * b.QUANTITY) sum_price_difference,
       a.COMMENTS,
       a.INV_ID,
       a.ORDER_ID,
       e.supplier_date,
       e.supplier_number,
       e.comments as suplier,
       f.s_name_ru,
       a.ID_OFFICE,
       o.brief
  FROM CLIENTS c,
       books_departments d,
       invoice_register e,
       store_doc_data b,
       STORE_DOC a,
       suppliers f,
       offices o
 WHERE a.ID_DOC = b.ID_DOC 
   AND a.ID_CLIENT = c.ID_CLIENTS(+)
   AND a.ID_DEPARTMENTS = d.ID_DEPARTMENTS
   AND a.inv_id = e.inv_id (+)
   and e.s_id_default = f.s_id(+)
   and a.id_office = o.id_office
 group by a.ID_DOC, a.DOC_NUMBER, a.ID_DOC_TYPE, a.ID_DEPARTMENTS, d.name, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL, a.ID_CLIENT,
          c.NICK, c.FIO, a.COMMENTS, a.INV_ID, a.ORDER_ID, e.supplier_date, e.supplier_number, e.comments, f.s_name_ru, a.ID_OFFICE, o.brief 
--          , b.n_id, b.price, b.id_doc_data
/

-- Grants for View
GRANT UPDATE ON store_doc_view2 TO new_role
/
create or replace public synonym store_doc_view2 for creator.store_doc_view2
/
-- End of DDL Script for View CREATOR.STORE_DOC_VIEW2

