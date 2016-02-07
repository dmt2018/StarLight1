
select 'rename '||a.view_name||' to old_'||a.view_name||';' from dba_views a
where a.owner = 'CREATOR'


