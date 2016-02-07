-- Start of DDL Script for Procedure CREATOR.SET_DEBT_ON_DEBETORS
-- Generated 10.12.2011 18:53:32 from CREATOR@STARREG

CREATE OR REPLACE 
PROCEDURE set_debt_on_debetors(ID_DEBT NUMBER) is
  money NUMBER;
begin
  select nvl(sum(ROUND(DEBET/RATE,2)),0) INTO money FROM CLIENT_DEBT WHERE ID_DEBETORS = ID_DEBT and active > 0;

  UPDATE DEBETORS SET DEBET=money, date_change=sysdate WHERE ID_DEBETORS=ID_DEBT;
  commit;
end SET_DEBT_ON_DEBETORS;
/

-- Grants for Procedure
GRANT EXECUTE ON set_debt_on_debetors TO new_role
/

create or replace public synonym set_debt_on_debetors for creator.set_debt_on_debetors
/
-- End of DDL Script for Procedure CREATOR.SET_DEBT_ON_DEBETORS

