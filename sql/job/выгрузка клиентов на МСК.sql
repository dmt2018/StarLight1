declare jobno integer;
BEGIN
   DBMS_JOB.SUBMIT(jobno,'creator.sync_local_data.SYNC_CLIENTS;',TRUNC(SYSDATE)+1+2/24,'TRUNC(SYSDATE)+1+2/24');
END;

-- проверка
select * from dba_jobs;
