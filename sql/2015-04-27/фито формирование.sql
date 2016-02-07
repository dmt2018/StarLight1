select a.*, 
  case 
    when fo_rule = 2 and cust_regn = 0603110000 then 'ÄËÈÍÍÀ ÑÒÅÁËß ÎÒ 40 ÄÎ 60 ÑÌ' 
    when fo_rule = 3 and cust_regn = 0603110000 then 'ÄËÈÍÍÀ ÑÒÅÁËß ÎÒ 70 ÄÎ 100 ÑÌ' 
    else ''
  end fo_rule_name  
from (
  SELECT CUST_REGN, a.TRUCKS, NAME_CAT_RU, fo_rule, t.COUNTRY, orderby
    , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
    , WM_CONCAT( distinct n.fito_name) AS fito_names
  FROM customs_inv_data_as_is a
    left outer join (
       select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
              , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
         from customs_weight w
             left outer join customs_weight_formula wf on wf.id_w = w.id and wf.fo_rule > 0
         where w.ID_DEP = 62
       ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
           and (
             (c.fo_rule = 3 and c.fo_value <= a.height)
             or
             (c.fo_rule = 2 and c.fo_value > a.height)
             or
             (c.fo_rule = 0)
       )
    left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = 62
    left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
    left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
    left outer join (SELECT distinct fn.f_name_ru, fn.f_name FROM fn_view fn where fn.id_departments = 62) nom on upper(nom.f_name) = upper(a.title)
    left outer join (select fito_id, F_NAME, fito_name, name_code from FLOWER_FITO_ALL_NAMES where ID_DEP = 62) n on upper(n.F_NAME) = upper(a.title) and upper(n.name_code) = upper(a.h_code)

  WHERE a.INV_ID = 876 --and to_number(a.TRUCKS) = 1
  group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, fo_rule, decode(a.hol_country,'','Holland',a.hol_country), t.COUNTRY
) a
order by TRUCKS, orderby, NAME_CAT_RU, fo_rule, country
