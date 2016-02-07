         SELECT decode(a.hol_country,'','Holland',a.hol_country) as hol_country, a.pd as hol_sub_type, sum(a.units) as units, sum(STEM_WEIGHT*a.units) as netto
           --, a.units, STEM_WEIGHT*a.units, PACKING_AMOUNT, UPACK, c.weight_pack, c.weight_tank, (case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT as brutto 
           , sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) as brutto 
           , NAME_RU, substr(CUST_REGN,1,4) as CUST_REGN, nvl(t.MNEMO,a.hol_country) cntr
         FROM customs_inv_data_as_is a
           left outer join customs_weight c on lower(c.name_cat) = lower(a.hol_sub_type) and c.ID_DEP = 62
           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = c.ID_DEP
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
         WHERE a.INV_ID = 47 and to_number(a.TRUCKS) = 1
         group by decode(a.hol_country,'','Holland',a.hol_country), a.pd, NAME_RU, CUST_REGN, nvl(t.MNEMO,a.hol_country)
         order by decode(a.hol_country,'','Holland',a.hol_country), a.pd


