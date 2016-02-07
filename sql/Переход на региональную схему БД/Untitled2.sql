

select n.compiled_name_otdel, n.s_name_ru, n.country, a.*, nvl(z.quantity,0) as rashod 
from nomenclature_mat_view n,  ( 
select a.n_id, sum(a.quantity) as prihod
from store_doc_data a, store_doc b
where a.id_doc = b.id_doc
and b.doc_date between sysdate-50 and sysdate and b.id_doc_type = 1 and b.id_office = const_office
group by a.n_id
) a,
(select c.n_id, sum(c.quantity) as quantity from store_doc_data c where c.id_doc in (123,456) group by c.n_id ) z
where n.n_id =  a.n_id and a.n_id = z.n_id(+)


