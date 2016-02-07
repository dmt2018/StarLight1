SELECT max(a.prep_dist_id)
  FROM prepare_distribution a
  
  
  declare
    loop_counter number;
    aa number;
  begin
  FOR loop_counter IN 1 .. 3000
  loop
    select prep_dist_id.nextval into aa from dual;
  end loop;
  end;
  
