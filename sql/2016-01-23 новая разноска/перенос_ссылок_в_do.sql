insert into distributions_orders (
select a.dist_ind_id, a.id_orders from distributions_index a where a.id_orders is not null
);
commit;

