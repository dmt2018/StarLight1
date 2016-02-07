update ADMIN_EMPLOYEES_ROLE_GROUPS set ID_OFFICE = null
/
ALTER TABLE ADMIN_EMPLOYEES_ROLE_GROUPS 
 modify (
  ID_OFFICE NUMBER(4,0) default 1
 )
/
update ADMIN_PROGRAMS_ROLE_GROUPS set ID_OFFICE = null
/
ALTER TABLE ADMIN_PROGRAMS_ROLE_GROUPS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update ADMIN_ROLE_GROUPS set ID_OFFICE = null
/
ALTER TABLE ADMIN_ROLE_GROUPS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BOOKS_ADVERTISMENTS set ID_OFFICE = null
/
ALTER TABLE BOOKS_ADVERTISMENTS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BOOKS_CLIENT_TYPES set ID_OFFICE = null
/
ALTER TABLE BOOKS_CLIENT_TYPES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BOOKS_DEPARTMENTS set ID_OFFICE = null
/
ALTER TABLE BOOKS_DEPARTMENTS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BOOKS_JOB_TITLES set ID_OFFICE = null
/
ALTER TABLE BOOKS_JOB_TITLES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BOOKS_REGIONS set ID_OFFICE = null
/
ALTER TABLE BOOKS_REGIONS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BUH_DOC set ID_OFFICE = null
/
ALTER TABLE BUH_DOC 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BUH_DOC_CARGO set ID_OFFICE = null
/
ALTER TABLE BUH_DOC_CARGO 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update BUH_DOC_DATA set ID_OFFICE = null
/
ALTER TABLE BUH_DOC_DATA 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CASH set ID_OFFICE = null
/
ALTER TABLE CASH 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CASH_DELETED set ID_OFFICE = null
/
ALTER TABLE CASH_DELETED 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CASH_TMP set ID_OFFICE = null
/
ALTER TABLE CASH_TMP 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLAIMS set ID_OFFICE = null
/
ALTER TABLE CLAIMS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLAIMS_LIST set ID_OFFICE = null
/
ALTER TABLE CLAIMS_LIST 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLIENT_DEBT set ID_OFFICE = null
/
ALTER TABLE CLIENT_DEBT 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLIENTS set ID_OFFICE = null
/
ALTER TABLE CLIENTS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLIENTS_GROUPS set ID_OFFICE = null
/
ALTER TABLE CLIENTS_GROUPS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CLIENTS_SALES set ID_OFFICE = null
/
ALTER TABLE CLIENTS_SALES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update COLOURS set ID_OFFICE = null
/
ALTER TABLE COLOURS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update CURRENCY set ID_OFFICE = null
/
ALTER TABLE CURRENCY 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update DEBETORS set ID_OFFICE = null
/
ALTER TABLE DEBETORS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update EMPLOYEES_DEPARTMENTS set ID_OFFICE = null
/
ALTER TABLE EMPLOYEES_DEPARTMENTS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update EMPLOYEES_JOB_TITLES set ID_OFFICE = null
/
ALTER TABLE EMPLOYEES_JOB_TITLES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update FLOWER_NAME_TRANSLATIONS set ID_OFFICE = null
/
ALTER TABLE FLOWER_NAME_TRANSLATIONS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update FLOWER_NAMES set ID_OFFICE = null
/
ALTER TABLE FLOWER_NAMES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update FLOWER_SUBTYPES set ID_OFFICE = null
/
ALTER TABLE FLOWER_SUBTYPES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update FLOWER_TYPES set ID_OFFICE = null
/
ALTER TABLE FLOWER_TYPES 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update H_COLOURS set ID_OFFICE = null
/
ALTER TABLE H_COLOURS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update INVOICE_DATA set ID_OFFICE = null
/
ALTER TABLE INVOICE_DATA 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update INVOICE_DATA_AS_IS set ID_OFFICE = null
/
ALTER TABLE INVOICE_DATA_AS_IS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update INVOICE_PRICE_PACK set ID_OFFICE = null
/
ALTER TABLE INVOICE_PRICE_PACK 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update INVOICE_REGISTER set ID_OFFICE = null
/
ALTER TABLE INVOICE_REGISTER 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update NOM_SPECIFICATIONS set ID_OFFICE = null
/
ALTER TABLE NOM_SPECIFICATIONS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/



update NOMENCLATURE set ID_OFFICE = null
/
ALTER TABLE NOMENCLATURE 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update OPERATIONS set ID_OFFICE = null
/
ALTER TABLE OPERATIONS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update ORDERS set ID_OFFICE = null
/
ALTER TABLE ORDERS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update ORDERS_CLIENTS set ID_OFFICE = null
/
ALTER TABLE ORDERS_CLIENTS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update ORDERS_LIST set ID_OFFICE = null
/
ALTER TABLE ORDERS_LIST 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update PREPARE_PRICE_LIST set ID_OFFICE = null
/
ALTER TABLE PREPARE_PRICE_LIST 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update PREPARE_PRICE_LIST_INDEX set ID_OFFICE = null
/
ALTER TABLE PREPARE_PRICE_LIST_INDEX 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update PRICE_LIST set ID_OFFICE = null
/
ALTER TABLE PRICE_LIST 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update PRICE_LIST_ALL set ID_OFFICE = null
/
ALTER TABLE PRICE_LIST_ALL 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update STORE_DOC set ID_OFFICE = null
/
ALTER TABLE STORE_DOC 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update STORE_DOC_DATA set ID_OFFICE = null
/
ALTER TABLE STORE_DOC_DATA 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update STORE_GTD set ID_OFFICE = null
/
ALTER TABLE STORE_GTD 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update STORE_MAIN set ID_OFFICE = null
/
ALTER TABLE STORE_MAIN 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update SUPPLIERS set ID_OFFICE = null
/
ALTER TABLE SUPPLIERS 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/
update NOMENCLATURE_MAT_VIEW set ID_OFFICE = null
/
ALTER TABLE NOMENCLATURE_MAT_VIEW 
 modify (
  ID_OFFICE  NUMBER(4,0) default 1
 )
/

