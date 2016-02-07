-- Start of DDL Script for View CREATOR.EMPLOYEES_VIEW
-- Generated 10.12.2011 1:12:44 from CREATOR@STARREG

CREATE OR REPLACE VIEW employees_view (
   nn,
   active,
   ccode,
   fio,
   id_clients,
   login,
   nick,
   staff,
   count,
   id_office,
   brief )
AS
select rownum as nn, ACTIVE, CCODE, FIO, ID_CLIENTS, LOGIN, NICK, STAFF, COUNT, id_office, brief from
(
SELECT ACTIVE, CCODE, UPPER(FIO) as fio, ID_CLIENTS, LOGIN, UPPER(NICK) as nick, STAFF, count, a.id_office, b.brief
    FROM CLIENTS a, offices b
    where a.staff in (0,1) and a.id_office = b.id_office
    order by a.FIO
) a
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON employees_view TO new_role
/

-- Comments for EMPLOYEES_VIEW

COMMENT ON TABLE employees_view IS '¬ьюха дл€ показа сотрудников фирмы'
/
create or replace public synonym employees_view for creator.employees_view
/
-- End of DDL Script for View CREATOR.EMPLOYEES_VIEW

