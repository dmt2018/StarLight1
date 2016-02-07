 
insert into  flower_names@STAR a (select * from flower_names b where not exists(select 1 from flower_names@STAR c where b.fn_id = c.fn_Id))
insert into  flower_name_translations@STAR a (select * from flower_name_translations b where not exists(select 1 from flower_name_translations@STAR c where b.fnt_id = c.fnt_Id))

insert into  flower_types@STAR a (select * from flower_types b where not exists(select 1 from flower_types@STAR c where b.ft_id = c.ft_Id))
insert into  flower_subtypes@STAR a (select * from flower_subtypes b where not exists(select 1 from flower_subtypes@STAR c where b.fst_id = c.fst_Id))


select * from countries b where not exists(select 1 from countries@STAR c where b.c_id = c.c_Id)
insert into  colours@STAR a (select * from colours b where not exists(select 1 from colours@STAR c where b.col_id = c.col_Id))

insert into  h_colours@STAR a (select * from h_colours b where not exists(select 1 from h_colours@STAR c where b.H_COL_ID = c.H_COL_ID))


insert into  suppliers@STAR a (
select * from suppliers b where not exists(select 1 from suppliers@STAR c where b.s_ID = c.s_ID)
)


update flower_names set f_name_ru = f_name_ru||'1' where fn_id in (
select b.fn_id from flower_names@STAR a, flower_names b where upper(a.f_name_ru) = upper(b.f_name_ru) and a.fn_id <> b.fn_id
)

select b.*, a.fn_id, a.f_name_ru from flower_names@STAR a, flower_names b where upper(a.f_name_ru) = upper(b.f_name_ru) and a.fn_id <> b.fn_id

insert into nomenclature@STAR (
SELECT a.n_id, a.fn_id, a.fst_id, a.s_id, a.c_id, a.h_code, a.h_name,
       a.len, a.pack, a.col_id, a.vbn, a.hol_type, a.weight, a.bar_code,
       a.code, a.diameter, a.cust_coef, a.remarks, a.photo,
       a.h_namecode, a.id_office, a.date_change
  FROM nomenclature a where not exists(select 1 from nomenclature@STAR b where a.n_id = b.n_Id)
)  


insert into nom_specifications@STAR (
select * from nom_specifications b where not exists(select 1 from nom_specifications@STAR c where b.n_ID = c.n_ID)
)
