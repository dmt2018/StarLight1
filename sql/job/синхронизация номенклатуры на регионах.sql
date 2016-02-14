DECLARE v_job NUMBER;
BEGIN
  dbms_job.submit(job => v_job,
                  what => '
                  declare 
                    res varchar2(1000);
                  begin 
                    creator.SYNC_LINK_PKG.SYNC_ALL_NOMENCLATURE(res);
                  end;
                  ',               -- здесь имя вызываемой процедуры.
                  next_date => to_date('14.02.2016 05:00:00', 'dd.mm.yyyy hh24:mi:ss'), -- дата старта
                  INTERVAL => 'trunc(sysdate)+1+5/24'                                   -- интервал
  );
  commit;
END;

-- проверка
select * from dba_jobs;

