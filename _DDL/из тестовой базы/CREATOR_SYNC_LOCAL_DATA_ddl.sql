-- Start of DDL Script for Package Body CREATOR.SYNC_LOCAL_DATA
-- Generated 31-мар-2016 19:47:26 from CREATOR@ORCL

CREATE OR REPLACE 
PACKAGE sync_local_data
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2012-06-08 */
/* Изменение: */
/* Для синхронизации по присланным данным */
/* Данным по номенклатуре падают в локальные временные таблицы.  */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data;


--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS;


--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE(isOne number);


--
--  Синхронизация клиентов
--
PROCEDURE SYNC_CLIENTS;


--
--  Синхронизация клиентов (запись)
--
PROCEDURE SYNC_CLIENTS_SAVE;


--
--  Синхронизация кассы
--
PROCEDURE SYNC_cash;

--
--  Синхронизация кассы (запись)
--
PROCEDURE SYNC_CASH_SAVE;



END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON sync_local_data TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY sync_local_data
IS


--
--  Очистим временные данные
--
PROCEDURE clear_tmp_data
is
begin
  execute immediate 'truncate table SYNC_FLOWER_TYPES';
  execute immediate 'truncate table SYNC_flower_subtypes';
  execute immediate 'truncate table SYNC_FLOWER_NAMES';
  execute immediate 'truncate table SYNC_flower_name_translations';
  execute immediate 'truncate table SYNC_colours';
  execute immediate 'truncate table SYNC_countries';
  execute immediate 'truncate table SYNC_suppliers';
  execute immediate 'truncate table sync_hol_specifications';

  execute immediate 'truncate table SYNC_nom_specifications';
  execute immediate 'truncate table sync_nomenclature';
end;


--
--  Синхронизация справочников под номенклатуру
--
PROCEDURE SYNC_ALL_DICTS
is
begin

  update nomenclature set fn_id = 0 where fn_id in (select fn_id from FLOWER_NAMES a where not exists (select 1 from SYNC_FLOWER_NAMES z WHERE z.fn_id=a.fn_id ) and a.fn_id <> 0 and a.id_office = 1 and a.id_departments in (select distinct id_departments from SYNC_FLOWER_NAMES));

  /* Блок удаление лишних начений */
  delete from colours a where not exists (select 1 from SYNC_colours z WHERE z.col_id=a.col_id )  and a.id_office = 1;
  delete from flower_name_translations a where not exists (select 1 from SYNC_flower_name_translations z WHERE z.fnt_id=a.fnt_id )  and a.id_office = 1 and a.id_departments in (select distinct id_departments from SYNC_flower_name_translations);
  delete from FLOWER_NAMES a where not exists (select 1 from SYNC_FLOWER_NAMES z WHERE z.fn_id=a.fn_id ) and a.fn_id <> 0 and a.id_office = 1 and a.id_departments in (select distinct id_departments from SYNC_FLOWER_NAMES);

  merge into FLOWER_TYPES z using
  (
    SELECT A2.FT_ID, A2.F_TYPE, A2.FT_MASK, A2.HT_ID, A2.ID_DEPARTMENTS, A2.ID_OFFICE, a2.date_change
    FROM SYNC_FLOWER_TYPES A2
  ) s
  on (z.FT_ID = s.FT_ID)
  when matched THEN update set z.F_TYPE = s.F_TYPE, z.FT_MASK=s.FT_MASK, z.HT_ID=s.HT_ID, z.ID_DEPARTMENTS=s.ID_DEPARTMENTS, z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.FT_ID, z.F_TYPE, z.FT_MASK, z.HT_ID, z.ID_DEPARTMENTS, z.ID_OFFICE, z.date_change)
     VALUES (s.FT_ID, s.F_TYPE, s.FT_MASK, s.HT_ID, s.ID_DEPARTMENTS, s.ID_OFFICE, s.date_change)
  ;
--------------------------------------------------------------------------------

  merge into flower_subtypes z using
  (
    SELECT a2.fst_id, a2.f_sub_type, a2.ft_id, a2.hol_sub_type, a2.mnemo, a2.sub_weight, a2.id_office, a2.date_change, a2.PRICE_PREFIX, a2.tnved,a2.sub_weight_dry
    FROM SYNC_flower_subtypes A2
  ) s
  on (z.fst_id = s.fst_id)
  when matched THEN update set z.f_sub_type = s.f_sub_type, z.ft_id=s.ft_id, z.hol_sub_type=s.hol_sub_type, z.mnemo=s.mnemo,
        z.sub_weight=s.sub_weight, z.sub_weight_dry=s.sub_weight_dry, z.date_change=s.date_change, z.id_office=s.id_office, z.PRICE_PREFIX=s.PRICE_PREFIX, z.tnved=s.tnved
  WHEN NOT MATCHED THEN INSERT (z.fst_id, z.f_sub_type, z.ft_id, z.hol_sub_type, z.mnemo, z.sub_weight,z.sub_weight_dry,z.ID_OFFICE, z.date_change, z.PRICE_PREFIX, z.tnved)
     VALUES (s.fst_id, s.f_sub_type, s.ft_id, s.hol_sub_type, s.mnemo, s.sub_weight, s.sub_weight_dry, s.ID_OFFICE, s.date_change, s.PRICE_PREFIX, s.tnved)
  ;
--------------------------------------------------------------------------------

  merge into FLOWER_NAMES z using
  (
    SELECT a2.fn_id, replace(a2.f_name_ru,chr(39),chr(39)||chr(39)) as f_name_ru, a2.id_departments, a2.name_code, replace(a2.fito_name,chr(39),chr(39)||chr(39)) as fito_name, a2.id_office, a2.date_change
    FROM SYNC_FLOWER_NAMES A2
  ) s
  on (z.fn_id = s.fn_id)
  when matched THEN update set z.f_name_ru = s.f_name_ru, z.id_departments=s.id_departments, z.name_code=s.name_code, z.fito_name=s.fito_name,
        z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.fn_id, z.f_name_ru, z.id_departments, z.name_code, z.fito_name, z.ID_OFFICE, z.date_change)
     VALUES (s.fn_id, s.f_name_ru, s.id_departments, s.name_code, s.fito_name, s.ID_OFFICE, s.date_change)
  ;
--------------------------------------------------------------------------------

  merge into flower_name_translations z using
  (
    SELECT a2.fn_id, replace(a2.f_name,chr(39),chr(39)||chr(39)) as f_name, a2.name_code, a2.id_departments, a2.fnt_id, a2.default_translation, a2.remarks, a2.id_office, a2.date_change
    FROM SYNC_flower_name_translations A2
  ) s
  on (z.fnt_id = s.fnt_id)
  when matched THEN update set z.fn_id = s.fn_id, z.f_name=s.f_name, z.name_code=s.name_code, z.id_departments=s.id_departments, z.default_translation=s.default_translation,
        z.remarks=s.remarks, z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.fnt_id, z.fn_id, z.f_name, z.id_departments, z.name_code, z.default_translation, z.remarks, z.ID_OFFICE, z.date_change)
     VALUES (s.fnt_id, s.fn_id, s.f_name, s.id_departments, s.name_code, s.default_translation, s.remarks, s.ID_OFFICE, s.date_change)
  ;
--------------------------------------------------------------------------------

  merge into colours z using
  (
    SELECT a2.col_id, a2.colour, a2.ord, a2.id_office, a2.date_change
    FROM SYNC_colours A2
  ) s
  on (z.col_id = s.col_id)
  when matched THEN update set z.colour = s.colour, z.ord=s.ord, z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.col_id, z.colour, z.ord, z.ID_OFFICE, z.date_change)
     VALUES (s.col_id, s.colour, s.ord, s.ID_OFFICE, s.date_change)
  ;
--------------------------------------------------------------------------------

  merge into countries z using
  (
    SELECT a2.c_id, a2.country, a2.country_eng, a2.buh_code
    FROM SYNC_countries A2
  ) s
  on (z.c_id = s.c_id)
  when matched THEN update set z.country = s.country, z.country_eng=s.country_eng, z.buh_code=s.buh_code
  WHEN NOT MATCHED THEN INSERT (z.c_id, z.country, z.country_eng, z.buh_code)
     VALUES (s.c_id, s.country, s.country_eng, s.buh_code)
  ;
--------------------------------------------------------------------------------

  merge into suppliers z using
  (
    SELECT a2.s_id, a2.s_name_ru, a2.c_id, a2.need_cust, a2.id_office, a2.date_change, a2.ANALYZE_DAYS
    FROM SYNC_suppliers A2
  ) s
  on (z.s_id = s.s_id)
  when matched THEN update set z.s_name_ru = s.s_name_ru, z.c_id=s.c_id, z.need_cust=s.need_cust, z.date_change=s.date_change, z.id_office=s.id_office, z.ANALYZE_DAYS=s.ANALYZE_DAYS
  WHEN NOT MATCHED THEN INSERT (z.s_id, z.s_name_ru, z.c_id, z.need_cust, z.ID_OFFICE, z.date_change)
     VALUES (s.s_id, s.s_name_ru, s.c_id, s.need_cust, s.ID_OFFICE, s.date_change)
  ;

--------------------------------------------------------------------------------

  merge into hol_specifications z using
  (
    SELECT a2.hs_id, a2.spec_code, a2.spec_name, a2.spec_hol_name, a2.addition, a2.russian_addition, a2.need_translation
    FROM SYNC_hol_specifications A2
  ) s
  on (z.hs_id = s.hs_id)
  when matched THEN update set z.spec_code = s.spec_code, z.spec_name=s.spec_name, z.spec_hol_name=s.spec_hol_name, z.addition=s.addition, z.russian_addition=s.russian_addition, z.need_translation=s.need_translation
  WHEN NOT MATCHED THEN INSERT (z.hs_id, z.spec_code, z.spec_name, z.spec_hol_name, z.addition, z.russian_addition, z.need_translation)
     VALUES (s.hs_id, s.spec_code, s.spec_name, s.spec_hol_name, s.addition, s.russian_addition, s.need_translation)
  ;

  commit;
end;



--
--  Синхронизация номенклатуры
--
PROCEDURE SYNC_ALL_NOMENCLATURE(isOne number)
is
begin

  merge into nomenclature z using
  (
    SELECT a2.n_id, a2.fn_id, a2.fst_id, a2.s_id, a2.c_id, a2.h_code, replace(replace(a2.h_name,chr(39),chr(39)||chr(39)),chr(10),'') as h_name,
           a2.len, a2.pack, a2.col_id, a2.vbn, a2.hol_type, a2.weight, a2.bar_code,
           a2.code, a2.diameter, a2.cust_coef, a2.remarks, a2.photo, a2.h_namecode, a2.id_office, a2.date_change, a2.NOPRINT, a2.NOTUSE, a2.tnved, a2.WEIGHTDRY
           , a2.NOM_NEW, a2.NOM_START, a2.NOM_END, a2.HOL_COLOR
    FROM SYNC_nomenclature A2
  ) s
  on (z.n_id = s.n_id)
  when matched THEN update set z.fn_id = s.fn_id, z.fst_id=s.fst_id, z.s_id=s.s_id, z.c_id=s.c_id, z.h_name=s.h_name, z.H_CODE=s.H_CODE, z.len=s.len,
     z.pack=s.pack, z.col_id=s.col_id, z.vbn=s.vbn, z.hol_type=s.hol_type, z.weight=s.weight, z.bar_code=s.bar_code, z.code=s.code,
     z.diameter=s.diameter, z.cust_coef=s.cust_coef, z.remarks=s.remarks, z.photo=s.photo, z.H_NAMECODE=s.H_NAMECODE, z.date_change=s.date_change,
     z.id_office=s.id_office, z.NOPRINT=s.NOPRINT, z.NOTUSE=s.NOTUSE, z.tnved=s.tnved, z.WEIGHTDRY=s.WEIGHTDRY
     , z.NOM_NEW=s.NOM_NEW, z.NOM_START=s.NOM_START, z.NOM_END=s.NOM_END, z.HOL_COLOR=s.HOL_COLOR
  WHEN NOT MATCHED THEN INSERT (z.n_id, z.fn_id, z.fst_id, z.s_id, z.c_id, z.h_code, z.h_name,
           z.len, z.pack, z.col_id, z.vbn, z.hol_type, z.weight, z.bar_code,
           z.code, z.diameter, z.cust_coef, z.remarks, z.photo, z.h_namecode, z.id_office, z.date_change, z.NOPRINT, z.NOTUSE, z.tnved, z.WEIGHTDRY, z.NOM_NEW, z.NOM_START, z.NOM_END, z.HOL_COLOR)
     VALUES (s.n_id, s.fn_id, s.fst_id, s.s_id, s.c_id, s.h_code, s.h_name,
           s.len, s.pack, s.col_id, s.vbn, s.hol_type, s.weight, s.bar_code,
           s.code, s.diameter, s.cust_coef, s.remarks, s.photo, s.h_namecode, s.id_office, s.date_change, s.NOPRINT, s.NOTUSE, s.tnved, s.WEIGHTDRY, s.NOM_NEW, s.NOM_START, s.NOM_END, s.HOL_COLOR)
  ;
--------------------------------------------------------------------------------

  delete from nom_specifications a where exists (select 1 from SYNC_nomenclature b where b.n_id = a.n_id and b.id_office=a.id_office );
  insert into nom_specifications (select z.n_id, z.hs_id, z.hs_val, z.ord, z.ID_OFFICE, z.date_change, z.sc_id from SYNC_nom_specifications z);

  if isOne = 0 then
     nomenclature_pkg.sync_nomenclature;
  else
     nomenclature2_pkg.sync_nomenclature_one(isOne);
  end if;

  commit;
end SYNC_ALL_NOMENCLATURE;


--
--  Синхронизация клиентов
--
PROCEDURE SYNC_CLIENTS
is
  dt date;
  v_idd number;
begin
   select const_office into v_idd from dual;

   INSERT INTO SYNC_clients_groups@orcl ( select * from clients_groups WHERE id_office=v_idd and date_change > sysdate-1 );
   INSERT INTO SYNC_clients@orcl ( select * from clients WHERE id_office=v_idd and length(ccode)=13 and date_change > sysdate-1 );
--   commit;

   creator.sync_local_data.SYNC_CLIENTS_save@orcl;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_local_data.SYNC_CLIENTS', '');

end SYNC_CLIENTS;


--
--  Синхронизация клиентов (запись)
--
PROCEDURE SYNC_CLIENTS_SAVE
is
  v_idd number;
begin
  insert into SYNC_LOG values(sysdate, null, 'clients_groups', (select count(*) from SYNC_clients_groups), null, universal_id.nextval);

  merge into clients_groups z using
  (
    SELECT a2.ID_CLIENTS_GROUPS, a2.NAME, a2.INFO, a2.id_office, a2.date_change
    FROM SYNC_clients_groups A2
  ) s
  on (z.ID_CLIENTS_GROUPS = s.ID_CLIENTS_GROUPS)
  when matched THEN update set z.NAME = s.NAME, z.INFO=s.INFO, z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.ID_CLIENTS_GROUPS, z.NAME, z.INFO, z.id_office, z.date_change)
     VALUES (s.ID_CLIENTS_GROUPS, s.NAME, s.INFO, s.id_office, s.date_change)
  ;

  insert into SYNC_LOG values(sysdate, sysdate, 'clients_groups', 0, null, universal_id.nextval);
  insert into SYNC_LOG values(sysdate, null, 'clients', (select count(*) from SYNC_clients), null, universal_id.nextval);

  merge into clients z using
  (
    SELECT a2.id_clients, a2.fio, a2.nick, a2.ccode, a2.region, a2.address,
       a2.u_address, a2.phone, a2.passport, a2.contact, a2.cont_phone,
       a2.email, a2.www, a2.inn, a2.reg_svid, a2.kpp, a2.okato, a2.bank,
       a2.agreement, a2.advertisment, a2.ddate, a2.block1, a2.block2,
       a2.flowers, a2.plants, a2.mark, a2.ttype, a2.id_clients_groups,
       a2.corrector, a2.date_cor, a2.corrector_cor, a2.duties, a2.insurance,
       a2.date_in, a2.date_out, a2.l_service, a2.staff, a2.active, a2.login,
       a2.info, a2.reg_type, a2.count, a2.dostavka, a2.id_office,
       a2.date_change, a2.prefix, a2.id_city
    FROM SYNC_clients A2
  ) s
  on (z.id_clients = s.id_clients)
  when matched THEN update set z.fio = s.fio, z.nick=s.nick, z.ccode=s.ccode, z.region=s.region, z.address=s.address, z.u_address=s.u_address,
  z.phone=s.phone, z.passport=s.passport, z.contact=s.contact, z.cont_phone=s.cont_phone, z.email=s.email, z.www=s.www, z.inn=s.inn, z.reg_svid=s.reg_svid,
  z.kpp=s.kpp, z.okato=s.okato, z.bank=s.bank, z.agreement=s.agreement, z.advertisment=s.advertisment, z.ddate=s.ddate, z.block1=s.block1, z.block2=s.block2,
  z.flowers=s.flowers, z.plants=s.plants, z.mark=s.mark, z.ttype=s.ttype, z.id_clients_groups=s.id_clients_groups, z.corrector=s.corrector,
  z.date_cor=s.date_cor, z.corrector_cor=s.corrector_cor, z.duties=s.duties, z.insurance=s.insurance, z.date_in=s.date_in, z.date_out=s.date_out,
  z.l_service=s.l_service, z.staff=s.staff, z.active=s.active, z.login=s.login, z.info=s.info, z.reg_type=s.reg_type, z.count=s.count, z.dostavka=s.dostavka,
  z.prefix=s.prefix, z.id_city=s.id_city, z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.id_clients, z.fio, z.nick, z.ccode, z.region, z.address,
       z.u_address, z.phone, z.passport, z.contact, z.cont_phone,
       z.email, z.www, z.inn, z.reg_svid, z.kpp, z.okato, z.bank,
       z.agreement, z.advertisment, z.ddate, z.block1, z.block2,
       z.flowers, z.plants, z.mark, z.ttype, z.id_clients_groups,
       z.corrector, z.date_cor, z.corrector_cor, z.duties, z.insurance,
       z.date_in, z.date_out, z.l_service, z.staff, z.active, z.login,
       z.info, z.reg_type, z.count, z.dostavka, z.id_office,
       z.date_change, z.prefix, z.id_city)
     VALUES (s.id_clients, s.fio, s.nick, s.ccode, s.region, s.address,
       s.u_address, s.phone, s.passport, s.contact, s.cont_phone,
       s.email, s.www, s.inn, s.reg_svid, s.kpp, s.okato, s.bank,
       s.agreement, s.advertisment, s.ddate, s.block1, s.block2,
       s.flowers, s.plants, s.mark, s.ttype, s.id_clients_groups,
       s.corrector, s.date_cor, s.corrector_cor, s.duties, s.insurance,
       s.date_in, s.date_out, s.l_service, s.staff, s.active, s.login,
       s.info, s.reg_type, s.count, s.dostavka, s.id_office,
       s.date_change, s.prefix, s.id_city)
  ;

  insert into SYNC_LOG values(sysdate, sysdate, 'clients', 0, null, universal_id.nextval);
  execute immediate 'truncate table SYNC_clients_groups';
  execute immediate 'truncate table SYNC_clients';
  commit;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_local_data.SYNC_CLIENTS_SAVE', '');

end SYNC_CLIENTS_SAVE;



--
--  Синхронизация кассы
--
PROCEDURE SYNC_cash
is
  dt date;
  v_idd number;
begin
   select const_office into v_idd from dual;

   INSERT INTO SYNC_cash@orcl ( select * from cash WHERE id_office=v_idd and date_change > sysdate-1 );
   creator.sync_local_data.SYNC_cash_save@orcl;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_local_data.SYNC_cash', '');

end SYNC_cash;


--
--  Синхронизация кассы (запись)
--
PROCEDURE SYNC_CASH_SAVE
is
  v_idd number;
begin
  insert into SYNC_LOG values(sysdate, null, 'cash', (select count(*) from SYNC_cash), null, universal_id.nextval);

  merge into cash z using
  (
    SELECT a2.id_cash, a2.id_clients, a2.paydesk, a2.operation, a2.invoice,
       a2.summ, a2.in_rub, a2.out_rub, a2.in_usd, a2.out_usd, a2.in_eu,
       a2.out_eu, a2.info, a2.corrector, a2.ddate_in, a2.ddate_done,
       a2.r_ddate, a2.d_checked, a2.r_paydesk, a2.corrector2, a2.cor_date,
       a2.id_office, a2.date_change
    FROM sync_cash A2
    where exists (select 1 from clients where id_clients = a2.id_clients)
  ) s
  on (z.id_cash = s.id_cash)
  when matched THEN update set z.id_clients = s.id_clients, z.paydesk=s.paydesk, z.operation=s.operation, z.invoice=s.invoice,
    z.summ=s.summ, z.in_rub=s.in_rub, z.out_rub=s.out_rub, z.in_usd=s.in_usd, z.out_usd=s.out_usd, z.in_eu=s.in_eu,
    z.out_eu = s.out_eu, z.info=s.info, z.corrector=s.corrector, z.ddate_in=s.ddate_in, z.ddate_done=s.ddate_done,
    z.r_ddate=s.r_ddate, z.d_checked=s.d_checked, z.r_paydesk=s.r_paydesk, z.corrector2=s.corrector2, z.cor_date=s.cor_date,
    z.date_change=s.date_change, z.id_office=s.id_office
  WHEN NOT MATCHED THEN INSERT (z.id_cash, z.id_clients, z.paydesk, z.operation, z.invoice,
       z.summ, z.in_rub, z.out_rub, z.in_usd, z.out_usd, z.in_eu,
       z.out_eu, z.info, z.corrector, z.ddate_in, z.ddate_done,
       z.r_ddate, z.d_checked, z.r_paydesk, z.corrector2, z.cor_date,
       z.id_office, z.date_change)
     VALUES (s.id_cash, s.id_clients, s.paydesk, s.operation, s.invoice,
       s.summ, s.in_rub, s.out_rub, s.in_usd, s.out_usd, s.in_eu,
       s.out_eu, s.info, s.corrector, s.ddate_in, s.ddate_done,
       s.r_ddate, s.d_checked, s.r_paydesk, s.corrector2, s.cor_date,
       s.id_office, s.date_change)
  ;

  insert into SYNC_LOG values(sysdate, sysdate, 'cash', 0, null, universal_id.nextval);

  execute immediate 'truncate table SYNC_cash';
  commit;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'sync_local_data.SYNC_CASH_SAVE', '');

end SYNC_CASH_SAVE;



END;
/


-- End of DDL Script for Package Body CREATOR.SYNC_LOCAL_DATA

