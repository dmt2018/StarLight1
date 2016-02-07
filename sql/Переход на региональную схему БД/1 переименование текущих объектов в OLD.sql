
select distinct 'rename '||a.object_name||' to old_'||a.object_name||';' from dba_procedures a
where a.owner = 'CREATOR' and a.object_type <> 'TRIGGER' 


