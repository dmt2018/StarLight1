MOL-IMPORT2.1   RU1 RU1 5072013 T2/SAMAR_C      @#S     2                                               
            105535      1   10                      ANASTASIA D GREEN 1HD   S20     S22     S25     VD2 


select 'MOL-IMPORT2.1;RU1;RU1;05072013;T1/KAZAN_R;;@#K;;1;;;;;;;;;;;;;;;;;' from dual
UNION all
select ';;;'||a.namecode||';;1;1;;'||a.remarks||';;;'||a.compiled_name_otdel||';'||a.h_name||';S20;'||a.len||';S22;'||s22.hs_val||';S25;'||s25.hs_val||';VD2;'||vd2.hs_val
from nomenclature_mat_view a, 
(
SELECT  s22.hs_val, s22.n_id
  FROM nom_specifications s22
  where hs_id = 16
) s22,  
(
SELECT  s25.hs_val, s25.n_id
  FROM nom_specifications s25
  where hs_id = 17
) s25,  
(
SELECT  vd2.hs_val, vd2.n_id
  FROM nom_specifications vd2
  where hs_id = 10000072
) vd2  
where a.id_departments = 62 and a.n_id = s22.n_id(+) and a.n_id = s25.n_id(+) and a.n_id = vd2.n_id(+)


;;;13520;;1;100;;;;;;AKITO 50CM;S20;50;S22;;S25;;VD2;;                                                                                                                                                                                                   
;;;108760;;1;20;;;;;;ALL 4 LOVE 80CM;S20;80;S22;;S25;;VD2;;                                                                                                                                                                                              
;;;108194;;1;20;;;;;;ALMAS+ 60CM;S20;60;S22;;S25;;VD2;;                                                                                                                                                                                                  
;;;26024;;1;20;;;;;;AMALIA 60CM;S20;60;S22;;S25;;VD2;;                                                                                                                                                                                                   
;;;17075;;1;20;;;;;;AQUA! 50CM;S20;50;S22;;S25;;VD2;;                                                                                                                                                                                                    
;;;28736;;1;20;;;;;;ATHENA 50CM;S20;50;S22;;S25;;VD2;;                                                                                                                                                                                                   
;;;28736;;1;20;;;;;;ATHENA 70CM;S20;70;S22;;S25;;VD2;;                                                                                                                                                                                                   
;;;16207;;1;60;;MR;;;;AVALANCHE+ 50CM MR;S20;50;S22;;S25;;VD2;;  
