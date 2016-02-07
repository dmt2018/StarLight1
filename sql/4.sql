         SELECT decode(a.hol_country,'','Holland',a.hol_country) as hol_country, sum(a.units) as units, sum(STEM_WEIGHT*a.units) as netto
           , sum((case when UPACK = 'W' then weight_tank else weight_pack end)*PACKING_AMOUNT + STEM_WEIGHT*a.units) + nvl(max(e.telega)*const_customs_telega,0) + nvl(max(e.poddon)*const_customs_poddon,0) as brutto
           , nvl(t.MNEMO,a.hol_country) cntr
         FROM customs_inv_data_as_is a
           left outer join (
              select w.id, w.NAME_CAT, nvl(wf.fo_rule,0) fo_rule, wf.fo_value, wf.FO_NAME, w.CUST_REGN, nvl(wf.V_WEIGHT, w.STEM_WEIGHT) as STEM_WEIGHT
                     , w.weight_tank, w.weight_pack
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
           left outer join fito_category b on upper(b.name_eng) = upper(a.pd) and b.id_dep = 62 -- c.ID_DEP
           left outer join countries t on lower(t.country_eng) = lower(a.hol_country)
           left outer join customs_inv_equipment e on e.inv_id = a.inv_id and e.id = c.id and e.truck = to_number(a.TRUCKS)
         WHERE a.INV_ID = 2104 and to_number(a.TRUCKS) = 1
         group by decode(a.hol_country,'','Holland',a.hol_country), nvl(t.MNEMO,a.hol_country)
         order by decode(a.hol_country,'','Holland',a.hol_country)

