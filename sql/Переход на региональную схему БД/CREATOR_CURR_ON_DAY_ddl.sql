-- Start of DDL Script for View CREATOR.CURR_ON_DAY
-- Generated 10.12.2011 1:12:01 from CREATOR@STARREG

CREATE OR REPLACE VIEW curr_on_day (
   ddate,
   eur,
   eur_usd,
   shev_eur,
   shev_eur_usd,
   shev_usd,
   shev_usd_eur,
   usd,
   usd_eur )
AS
SELECT "DDATE","EUR","EUR_USD","SHEV_EUR","SHEV_EUR_USD","SHEV_USD","SHEV_USD_EUR","USD","USD_EUR" FROM (SELECT DDATE, EUR,
    EUR_USD, SHEV_EUR,
    SHEV_EUR_USD, SHEV_USD,
    SHEV_USD_EUR, USD,
    USD_EUR
    FROM CURRENCY 
    where ID_OFFICE = const_office
    ORDER BY DDATE DESC) WHERE ROWNUM =1
 WITH READ ONLY
/

-- Grants for View
GRANT SELECT ON curr_on_day TO new_role
/

-- Comments for CURR_ON_DAY

COMMENT ON TABLE curr_on_day IS 'Текущий курс валют'
/
create or replace public synonym curr_on_day for creator.curr_on_day
/
-- End of DDL Script for View CREATOR.CURR_ON_DAY

