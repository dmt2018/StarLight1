create type number_list_type as table of number;

create function get_list_elements(p_list varchar2)
return number_list_type
is v_num_list number_list_type;
begin
  execute immediate 'begin :1 := number_list_type('|| p_list ||'); end;' using out v_num_list;
  return v_num_list;
end;

create public synonym number_list_type for creator.number_list_type;

create public synonym get_list_elements for creator.get_list_elements;
grant execute on get_list_elements to new_role;

create public synonym sync_link_pkg for creator.sync_link_pkg;
grant execute on sync_link_pkg to new_role;



CREATE GLOBAL TEMPORARY TABLE CREATOR.TMP_EXP_DOC
  (
  id_doc NUMBER (10)
 )
 ON COMMIT DELETE ROWS 
/

create public synonym tmp_exp_doc for creator.tmp_exp_doc;
grant select, insert, delete on tmp_exp_doc to new_role;


