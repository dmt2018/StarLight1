select a.*, rule_name ||' '||decode(fo_rule,0,null,fo_rule_name) as compile_rule_name from (
select a.*, 
  case 
    when fo_rule = 2 and cust_regn = '0603110000' then 'ÄËÈÍÍÀ ÑÒÅÁËß: 40-65 ÑÌ' 
    when fo_rule = 3 and cust_regn = '0603110000' then 'ÄËÈÍÍÀ ÑÒÅÁËß: 70-100 ÑÌ'
    when fo_rule = 0 then FO_NAME
    else ''
  end fo_rule_name  
  ,case 
    when cust_regn = '0603110000' then 'ÊÎÄ ÒÎÂÀÐÀ - '||cust_regn||' ÑÂÅÆÈÅ ÐÎÇÛ ('||COUNTRY||')' 
    when cust_regn = '0603105000' then 'ÊÎÄ ÒÎÂÀÐÀ - '||cust_regn||' ÑÂÅÆÈÅ ÕÐÈÇÀÍÒÅÌÛ ('||COUNTRY||')' 
    when cust_regn = '0603103000' then 'ÊÎÄ ÒÎÂÀÐÀ - '||cust_regn||' ÑÂÅÆÈÅ ÎÐÕÈÄÅÈ ('||COUNTRY||')' 
    else ''
  end rule_name  
  , case when fo_rule > 0 then 'ÐÎÑÒ '||height||' ÑÌ –' else fo_name end logo_name
from (
  SELECT CUST_REGN, a.TRUCKS, NAME_CAT_RU, fo_rule, t.COUNTRY, orderby, nvl(FO_NAME,'Âåòêè') as fo_name
    , decode(a.hol_country,'','Holland',a.hol_country) as hol_country
    --, max(a.height) as max_height, min(a.height) as min_height
    , sum(a.units) as units
    , height
  FROM customs_inv_data_as_is a
    left outer join (
       select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
              , w.weight_tank, w.weight_pack, NAME_CAT_RU, w.orderby
         from customs_weight w
             left outer join customs_weight_formula wf on wf.id_w = w.id --and wf.fo_rule > 0
         where w.ID_DEP = 62
       ) c on lower(c.NAME_CAT) = lower(a.hol_sub_type)
           and (
             (c.fo_rule = 3 and c.fo_value <= a.height)
             or
             (c.fo_rule = 2 and c.fo_value > a.height)
             or
             (c.fo_rule = 0 and c.cust_regn = '0603103000')
             or
             (c.fo_rule = 0 and instr(a.title,c.fo_value) > 0 )
       )
    left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = 62
    left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
    left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)

  WHERE a.INV_ID = 876 and to_number(a.TRUCKS) = 1
    and CUST_REGN in ('0603110000', '0603105000', '0603103000')
  group by a.TRUCKS, CUST_REGN, orderby, NAME_CAT_RU, decode(a.hol_country,'','Holland',a.hol_country), fo_rule, t.COUNTRY, nvl(FO_NAME,'Âåòêè'), height
) a ) a
order by TRUCKS, orderby, NAME_CAT_RU, country, fo_rule, height
