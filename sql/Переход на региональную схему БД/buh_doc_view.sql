-- Start of DDL Script for View CREATOR.BUH_DOC_VIEW
-- Generated 10.12.2011 1:06:10 from CREATOR@STARREG



CREATE OR REPLACE VIEW buh_doc_view (
   id_doc,
   doc_number,
   id_client,
   id_departments,
   operator_name,
   doc_date,
   doc_date_real,
   number_full,
   comments,
   nds,
   discount,
   id_doc_type,
   doc_number_add,
   id_company,
   id_banc,
   id_clients_groups,
   group_name,
   store_doc_number,
   ttype_name,
   reg_svid_print,
   ttype,
   agreement,
   id_clients,
   reg_svid,
   nick,
   fio,
   inn,
   kpp,
   okato,
   address,
   bank,
   phone,
   buh_doc_type_name,
   company_name,
   banc_name,
   sum_price_old,
   sum_price_new,
   sum_price_difference,
   quantity_all,
   price_all,
   id_office,
   brief )
AS
select a.ID_DOC, a.DOC_NUMBER, a.ID_CLIENT, a.ID_DEPARTMENTS, a.OPERATOR_NAME, a.DOC_DATE, a.DOC_DATE_REAL,
    CASE WHEN a.DOC_NUMBER_ADD is not null THEN a.DOC_NUMBER||'/'||a.DOC_NUMBER_ADD
    ELSE to_char(a.DOC_NUMBER) END NUMBER_FULL
    , a.COMMENTS, a.NDS, a.DISCOUNT, a.ID_DOC_TYPE, a.DOC_NUMBER_ADD, a.ID_company, a.ID_BANC, d.ID_CLIENTS_GROUPS
    , y.name as group_name
    , b.DOC_NUMBER as STORE_DOC_NUMBER
    , c.NAME AS TTYPE_NAME, c.t_type as reg_svid_print
    , d.TTYPE, d.AGREEMENT, d.ID_CLIENTS, d.reg_svid, d.NICK, d.FIO, d.INN, d.KPP, d.OKATO, d.ADDRESS, d.BANK, d.PHONE
    , e.NAME as buh_doc_type_name
    , f.COMPANY_NAME
    , g.BANC_NAME
    , sum_price_old, sum_price_new, (sum_price_new - sum_price_old) as sum_price_difference, QUANTITY_ALL, --case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else PRICE_ALL end PRICE_ALL
    a.id_office, o.brief, 
    case WHEN a.ID_DOC_TYPE = 4 THEN sum_price_new else
   (select
    sum(
      (
        (
          (
            ROUND( (PRICE*100 / (100+a.NDS) ),2)
          ) * QUANTITY
        ) +
        ROUND( (((ROUND((PRICE*100 / (100+a.NDS)),2)) * QUANTITY)) * a.NDS/100,2)
      )
    ) from BUH_DOC_data where ID_DOC = a.ID_DOC)
    end PRICE_ALL

FROM
   BUH_DOC a,
   STORE_DOC b,
   books_client_TYPES c,
   CLIENTS d, clients_groups y,
   buh_doc_type e,
   buh_company f,
   buh_banc g,
   offices o,
   (select ID_DOC,
    sum(PRICE_OLD * QUANTITY) sum_price_old,
    sum(PRICE * QUANTITY) sum_price_new,
    count(ID_DOC_DATA) as QUANTITY_ALL
     from BUH_DOC_data
     group by ID_DOC
   ) z
WHERE
a.ID_CLIENT = d.ID_CLIENTS
and c.ID_CLIENT_TYPES = d.TTYPE
and a.STORE_DOC_ID = b.ID_DOC(+)
and a.ID_DOC_TYPE = e.ID_DOC_TYPE
and a.ID_company = f.company_id(+)
and a.ID_BANC = g.BANC_ID(+)
and a.ID_DOC = z.ID_DOC(+)
and d.ID_CLIENTS_GROUPS = y.ID_CLIENTS_GROUPS(+)
and a.id_office = o.id_office
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON buh_doc_view TO new_role
/

create or replace public synonym buh_doc_view for creator.buh_doc_view
/
-- End of DDL Script for View CREATOR.BUH_DOC_VIEW

