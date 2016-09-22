-- Start of DDL Script for View CREATOR.CLIENTS_VIEW2
-- Generated 21.09.2016 17:55:10 from CREATOR@ORCL

CREATE OR REPLACE VIEW clients_view2 (
   d_check,
   id_clients,
   nick,
   fio,
   ddate,
   ccode,
   region,
   ttype,
   id_clients_groups,
   regions_name,
   group_name,
   ttype_name,
   corrector,
   phone,
   block1,
   block2,
   count,
   reg_type_name,
   sales,
   email,
   address,
   id_office,
   brief,
   prefix,
   city,
   mark,
   id_office_src,
   inn,
   interes )
AS
SELECT 0 as d_check, C.ID_CLIENTS, UPPER(C.NICK) as NICK, UPPER(C.FIO) as FIO, C.DDATE, C.CCODE,
       C.REGION, C.TTYPE, C.ID_CLIENTS_GROUPS, r.name as regions_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, c.corrector, c.phone,
       c.block1, c.block2, c.count,
       case when c.id_office > 1 then o.OFFICE_NAME else case when c.reg_type = 0 then 'Старлайт' else 'Старлайт Кэш & Керри' end end as reg_type_name,
       case when (select count(id) from CLIENTS_SALES where ID_EMPLOYEES = C.ID_CLIENTS) > 0 then 1 else 0 end sales
       , c.email, c.address
       , decode(c.id_office,7,1,c.id_office) as id_office, o.brief
       , c.prefix
       , s.city
       , c.mark
       , c.id_office as id_office_src
       , c.inn
       , c.INTERES
   FROM CLIENTS C, CLIENTS_GROUPS G, books_regions r, books_client_TYPES T, offices o, books_cities s
   WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS
        AND C.REGION = R.ID_REGIONS
        AND C.TTYPE = T.ID_CLIENT_TYPES
        and c.id_office = o.ID_OFFICE
        and c.id_city = s.id_city(+)
        --and c.staff in (1,9)
        AND (C.ACTIVE=1 or C.active is NULL)
/

-- Grants for View
GRANT SELECT ON clients_view2 TO new_role
/

-- Comments for CLIENTS_VIEW2

COMMENT ON TABLE clients_view2 IS 'Просмотр всех клиентов, но без сотрудников
Служебная группа отображается

Вьюха для программы регистрации'
/

-- End of DDL Script for View CREATOR.CLIENTS_VIEW2

