-- Start of DDL Script for View CREATOR.VIEW_DEBETORS
-- Generated 10.12.2011 18:21:32 from CREATOR@STARREG

CREATE OR REPLACE VIEW view_debetors (
   nick,
   fio,
   dostavka,
   id_debetors,
   id_clients,
   last_ddate,
   state,
   beznal,
   mark,
   debet,
   credit_days,
   info,
   ddate,
   rubl,
   chart,
   block1,
   block2,
   phone,
   region,
   group_name,
   id_clients_groups,
   kkk,
   mark_kol,
   max_date,
   chart2,
   is_lock,
   lock_for,
   lock_client,
   sales,
   ww,
   chart_group,
   chart_for_group,
   id_office,
   brief )
AS
select a.NICK, a.FIO, a.DOSTAVKA, a.ID_DEBETORS, a.ID_CLIENTS, a.LAST_DDATE, a.STATE, a.BEZNAL, a.MARK, a.DEBET, a.CREDIT_DAYS, a.INFO, a.DDATE,
       a.RUBL, a.CHART, a.BLOCK1, a.BLOCK2, a.PHONE, a.REGION, a.GROUP_NAME, a.ID_CLIENTS_GROUPS, a.KKK, a.mark_kol, a.max_date, a.CHART2, is_lock, lock_for, lock_client, sales
       , a.kkk as ww
       , sum(case when a.ID_CLIENTS_GROUPS > 2 then a.CHART2 else 0 end) over (partition by a.ID_CLIENTS_GROUPS) as chart_group
       , sum(case when a.ID_CLIENTS_GROUPS > 2 then a.chart else 0 end) over (partition by a.ID_CLIENTS_GROUPS) as chart_for_group
       , ID_OFFICE, brief
from (
  SELECT C.NICK, C.FIO, c.dostavka, d.id_debetors, d.id_clients, d.last_ddate, d.state, d.beznal, d.mark,
        d.debet, d.credit_days, d.info, d.ddate, d.rubl, d.chart, c.block1, c.block2,
        C.PHONE, C.REGION, G.NAME AS GROUP_NAME, g.ID_CLIENTS_GROUPS
        , substr(trim(nick),0,INSTR(trim(nick), ' ')-1) as kkk
        , is_lock, lock_for
        , case when lock_for is null then '' else (select c3.nick from DEBETORS D2, CLIENTS C3 where d2.id_clients = c3.id_clients and d2.id_debetors = d.lock_for) end lock_client
        , case when (select count(z.id) from CLIENTS_SALES z where z.ID_EMPLOYEES = C.ID_CLIENTS and z.sale_status = 1 and (z.notime = 1 or (z.date1 >= sysdate and z.date2 <= sysdate))) > 0 then 1 else 0 end sales

        , (select count(*) from client_debt b where b.id_debetors = d.id_debetors AND b.ACTIVE = 2) as mark_kol
        , (select max(d_date) from client_debt b where b.id_debetors = d.id_debetors and b.active >= 1) as max_date
        , (select sum(ROUND(DEBET/RATE,2)) FROM CLIENT_DEBT WHERE ID_DEBETORS = d.id_debetors and active >= 1) as CHART2

        , d.ID_OFFICE, o.brief
    FROM DEBETORS D, CLIENTS C, CLIENTS_GROUPS G, offices o
      WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=G.ID_CLIENTS_GROUPS and d.id_office = o.ID_OFFICE
) a
/

-- Grants for View
GRANT SELECT ON view_debetors TO new_role
/
create or replace public synonym view_debetors for creator.view_debetors
/
-- End of DDL Script for View CREATOR.VIEW_DEBETORS

