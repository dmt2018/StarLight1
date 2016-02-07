declare
  cursor f_ is
    select n_id, gtd, sum(quantity) as quantity from 
    (
    SELECT a.id_doc_data, a.id_doc, a.n_id, a.quantity, a.c_id, decode(a.gtd, '10130090/030715/0026710', '10130090/050715/0026847', a.gtd) gtd,
           a.price, a.price_old, a.id_office, a.date_change,
           a.compiled_name_otdel, a.gtd_country
      FROM buh_doc_data a
      where id_doc = 10341105
    )
    group by n_id, gtd
    having count(*) > 1;
   
  f_data  f_%rowtype;

  cursor g_ (nom_id number, gtd_str varchar2) is
    SELECT a.id_doc_data, a.id_doc, a.n_id, a.quantity, a.c_id, decode(a.gtd, '10130090/030715/0026710', '10130090/050715/0026847', a.gtd) gtd,
           a.price, a.price_old, a.id_office, a.date_change,
           a.compiled_name_otdel, a.gtd_country, rownum as nn
      FROM buh_doc_data a
      where id_doc = 10341105 and n_id = nom_id and decode(a.gtd, '10130090/030715/0026710', '10130090/050715/0026847', a.gtd) = gtd_str;

  g_data  g_%rowtype;
   
begin

   OPEN f_;
   LOOP
      FETCH f_ INTO f_data;
      EXIT WHEN f_%NOTFOUND;
      
      dbms_output.put_line(f_data.n_id);     

      OPEN g_(f_data.n_id, f_data.gtd);
      LOOP
          FETCH g_ INTO g_data;
          EXIT WHEN g_%NOTFOUND;

          dbms_output.put_line(g_data.id_doc_data);
          dbms_output.put_line(g_data.nn);
          
          if g_data.nn = 1 then
            -- первой записи увеличим количество
            update buh_doc_data set quantity = f_data.quantity, DATE_CHANGE = sysdate where id_doc_data = g_data.id_doc_data;
          else
            -- остальным обнулим количество, для дальнейшего удаления
            update buh_doc_data set quantity = 0, DATE_CHANGE = sysdate where id_doc_data = g_data.id_doc_data;
          end if;
      END LOOP;
      CLOSE g_;
      
      delete from buh_doc_data where id_doc = 10341105 and quantity = 0;
   END LOOP;
   CLOSE f_;

end;
