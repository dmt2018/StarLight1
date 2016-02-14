declare jobno integer;
BEGIN
   DBMS_JOB.SUBMIT(jobno,'creator.sync_local_data.SYNC_CASH;',TRUNC(SYSDATE)+1+2.5/24,'TRUNC(SYSDATE)+1+2.5/24');
END;

-- проверка
select * from dba_jobs;

