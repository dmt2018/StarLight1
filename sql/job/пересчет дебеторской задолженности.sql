declare jobno integer;
BEGIN
   DBMS_JOB.SUBMIT(jobno,'creator.SET_CHART;',TRUNC(SYSDATE)+1/24,'TRUNC(SYSDATE)+1+1/24');
END;

-- проверка
select * from dba_jobs;
