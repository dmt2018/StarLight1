-- Start of DDL Script for View CREATOR.SERVICE_SHOW_NOMS
-- Generated 09.07.2016 4:02:24 from CREATOR@STAR_NEW

CREATE OR REPLACE VIEW service_show_noms (
   server,
   flower_type,
   flower_subtypes,
   flower_names,
   flower_name_translations,
   colours,
   countries,
   suppliers,
   hol_specifications,
   nomenclature,
   nomenclature_mat_view,
   nom_specifications )
AS
select 'MSK' server,
 (select count(*) from FLOWER_TYPES) as flower_type,
 (select count(*) from flower_subtypes) as flower_subtypes,
 (select count(*) from FLOWER_NAMES) as FLOWER_NAMES,
 (select count(*) from flower_name_translations) as flower_name_translations,
 (select count(*) from colours) as colours,
 (select count(*) from countries) as countries,
 (select count(*) from suppliers) as suppliers,
 (select count(*) from hol_specifications) as hol_specifications,
 (select count(*) from nomenclature) as nomenclature,
 (select count(*) from nomenclature_mat_view) as nomenclature_mat_view,
 (select count(*) from nom_specifications) as nom_specifications
from dual
union all
select 'samara' server,
 (select count(*) from FLOWER_TYPES@samara) as flower_type,
 (select count(*) from flower_subtypes@samara) as flower_subtypes,
 (select count(*) from FLOWER_NAMES@samara) as FLOWER_NAMES,
 (select count(*) from flower_name_translations@samara) as flower_name_translations,
 (select count(*) from colours@samara) as colours,
 (select count(*) from countries@samara) as countries,
 (select count(*) from suppliers@samara) as suppliers,
 (select count(*) from hol_specifications@samara) as hol_specifications,
 (select count(*) from nomenclature@samara) as nomenclature,
 (select count(*) from nomenclature_mat_view@samara) as nomenclature_mat_view,
 (select count(*) from nom_specifications@samara) as nom_specifications
from dual
union all
select 'kazan' server,
 (select count(*) from FLOWER_TYPES@kazan) as flower_type,
 (select count(*) from flower_subtypes@kazan) as flower_subtypes,
 (select count(*) from FLOWER_NAMES@kazan) as FLOWER_NAMES,
 (select count(*) from flower_name_translations@kazan) as flower_name_translations,
 (select count(*) from colours@kazan) as colours,
 (select count(*) from countries@kazan) as countries,
 (select count(*) from suppliers@kazan) as suppliers,
 (select count(*) from hol_specifications@kazan) as hol_specifications,
 (select count(*) from nomenclature@kazan) as nomenclature,
 (select count(*) from nomenclature_mat_view@kazan) as nomenclature_mat_view,
 (select count(*) from nom_specifications@kazan) as nom_specifications
from dual
union all
select 'ufa' server,
 (select count(*) from FLOWER_TYPES@ufa) as flower_type,
 (select count(*) from flower_subtypes@ufa) as flower_subtypes,
 (select count(*) from FLOWER_NAMES@ufa) as FLOWER_NAMES,
 (select count(*) from flower_name_translations@ufa) as flower_name_translations,
 (select count(*) from colours@ufa) as colours,
 (select count(*) from countries@ufa) as countries,
 (select count(*) from suppliers@ufa) as suppliers,
 (select count(*) from hol_specifications@ufa) as hol_specifications,
 (select count(*) from nomenclature@ufa) as nomenclature,
 (select count(*) from nomenclature_mat_view@ufa) as nomenclature_mat_view,
 (select count(*) from nom_specifications@ufa) as nom_specifications
from dual
union all
select 'cherep' server,
 (select count(*) from FLOWER_TYPES@cherep) as flower_type,
 (select count(*) from flower_subtypes@cherep) as flower_subtypes,
 (select count(*) from FLOWER_NAMES@cherep) as FLOWER_NAMES,
 (select count(*) from flower_name_translations@cherep) as flower_name_translations,
 (select count(*) from colours@cherep) as colours,
 (select count(*) from countries@cherep) as countries,
 (select count(*) from suppliers@cherep) as suppliers,
 (select count(*) from hol_specifications@cherep) as hol_specifications,
 (select count(*) from nomenclature@cherep) as nomenclature,
 (select count(*) from nomenclature_mat_view@cherep) as nomenclature_mat_view,
 (select count(*) from nom_specifications@cherep) as nom_specifications
from dual
/*
union all
select 'eburg' server,
 (select count(*) from FLOWER_TYPES@eburg) as flower_type,
 (select count(*) from flower_subtypes@eburg) as flower_subtypes,
 (select count(*) from FLOWER_NAMES@eburg) as FLOWER_NAMES,
 (select count(*) from flower_name_translations@eburg) as flower_name_translations,
 (select count(*) from colours@eburg) as colours,
 (select count(*) from countries@eburg) as countries,
 (select count(*) from suppliers@eburg) as suppliers,
 (select count(*) from hol_specifications@eburg) as hol_specifications,
 (select count(*) from nomenclature@eburg) as nomenclature,
 (select count(*) from nomenclature_mat_view@eburg) as nomenclature_mat_view,
 (select count(*) from nom_specifications@eburg) as nom_specifications
from dual
*/
/


-- End of DDL Script for View CREATOR.SERVICE_SHOW_NOMS

