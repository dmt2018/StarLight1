-- Start of DDL Script for View CREATOR.ERROR_VIEW
-- Generated 16.05.2016 22:42:31 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW error_view (
   office,
   id,
   error_message,
   error_code,
   error_time,
   object_name,
   sql_str )
AS
SELECT 'MSK' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs a
union all
SELECT 'CHEREP' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs@cherep a
union all
SELECT 'KAZAN' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs@kazan a
union all
SELECT 'SAMARA' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs@samara a
union all
SELECT 'UFA' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs@ufa a
union all
SELECT 'EBURG' office, a.id, a.error_message, a.error_code, a.error_time, a.object_name, a.sql_str FROM err_logs@eburg a
/


-- End of DDL Script for View CREATOR.ERROR_VIEW

