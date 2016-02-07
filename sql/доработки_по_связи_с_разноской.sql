/*
select c.d_n_id, nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER 
from DISTRIBUTION_VIEW c 
where c.DIST_IND_ID=59 and c.id_clients not in (7086,8060) and c.INVOICE_DATA_ID is not null
group by c.d_n_id
*/

/*
select max(ppli_id) from prepare_price_list_index a, invoice_register b
where a.id_departments = 62 and a.finished = 1 and a.inv_id = b.inv_id and b.sended_to_warehouse = 1 and b.minus_inv_id = 0
*/

    select max(d.DIST_IND_ID) -- into v_DIST_IND_ID
    from distributions_invoices d, invoice_register p
      where d.INV_ID = p.inv_id and p.sended_to_warehouse = 0 and p.id_departments = 62 
    ;

