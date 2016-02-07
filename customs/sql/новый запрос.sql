        SELECT /*+ NO_CPU_COSTING */ a.inv_id, a.invoice_data_as_is_id, a.order_number, a.height, a.diametr, a.trucks, a.title, a.packing_amount
           , a.amount_in_the_pack, a.units, a.packing_marks, a.description, a.hol_country, a.price, a.summ
           , decode(upper(a.hol_country), '', 'Ieaa?eaiau', e.country) as county_ru
           , case when (0=1 and 61 = 62 and lower(a.hol_sub_type) = 'roses') then a.hol_sub_type || (case when instr(a.description,' ECUA ') > 0 then ' ECUADOR' else ' DUTCH' end ) else a.hol_sub_type end hol_sub_type
           , a.recognised, a.date_in, a.trolley, a.h_code, a.UPACK

           , a.src_trolley, a.SRC_NAME
           , dense_rank() over(PARTITION by trucks order by trolley, src_trolley) as trolley_calc

           , a.pd, b.name_ru as pd_ru, b.id
           , c.id as ft_id, c.STEM_WEIGHT, c.CUST_REGN
           , case when (0=1 and 61 = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end orderby
           , case when (0=1 and 61 = 62 and lower(a.hol_sub_type) = 'roses') then c.name_cat_ru || (case when instr(a.description,' ECUA ') > 0 then ' yeaaai?' else ' aieeaiaey' end ) else c.name_cat_ru end f_type
--           , d.FN_ID, case when a.h_code = 0 then e.fito_name else d.F_NAME_RU end as f_name_ru
--           , d.firma_name
, y.firma_name, y.f_name_ru
           , y.flower_name 
           , invoice_pkg.show_weight_formula(c.id,a.description,a.height,0) as type_dop

        FROM customs_inv_data_as_is a, countries e
            , fito_category b, customs_weight c
            , (select z.flower_name, z.trans_id, z.fito_id, y.f_name_ru as firma_name
                , case when y.fito_name is null then y.f_name_ru else y.fito_name end f_name_ru
                from supplier_names z, translate_names y where z.id_dep = 61 and z.is_active = 1 and z.trans_id = y.fn_id
            ) y
--            , (select FN_ID, case when fito_name is null then F_NAME_RU else fito_name end F_NAME_RU, NAME_CODE, F_NAME_RU as firma_name from FLOWER_NAMES where ID_DEPARTMENTS = 61) d
--            , (select fito_id, F_NAME, fito_name from FLOWER_FITO_NAMES where ID_DEP = 61) e
        where a.INV_ID = 95
            and lower(a.hol_country) = lower(e.country_eng(+))
            and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(+) = 61
            and lower(a.hol_sub_type) = lower(c.name_cat(+)) and c.id_dep(+) = 61
            and lower(a.title) = lower(y.flower_name(+))
--            and a.h_code = d.NAME_CODE(+)
--            and upper(a.SRC_NAME) = upper(e.F_NAME(+))
        order by
            case when (0=1 and 61 = 62 and lower(a.hol_sub_type) = 'roses') then c.orderby + (case when instr(a.description,' ECUA ') > 0 then 0.2 else 0.1 end ) else c.orderby end
            , a.description

