-- Сиквенс для кассы
CREATE SEQUENCE year_cash_seq
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_cash_seq for creator.year_cash_seq
/
grant select on year_cash_seq to new_role
/



-- Сиквенс для заказов
CREATE SEQUENCE year_order_seq_61
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_order_seq_61 for creator.year_order_seq_61
/
grant select on year_order_seq_61 to new_role
/

CREATE SEQUENCE year_order_seq_62
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_order_seq_62 for creator.year_order_seq_62
/
grant select on year_order_seq_62 to new_role
/

CREATE SEQUENCE year_order_seq_121
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_order_seq_121 for creator.year_order_seq_121
/
grant select on year_order_seq_121 to new_role
/



-- Сиквенс для расзноса
CREATE SEQUENCE year_distrib_seq_61
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_distrib_seq_61 for creator.year_distrib_seq_61
/
grant select on year_distrib_seq_61 to new_role
/



-- Сиквенс для расзноса
CREATE SEQUENCE year_distrib_seq_62
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_distrib_seq_62 for creator.year_distrib_seq_62
/
grant select on year_distrib_seq_62 to new_role
/


-- Сиквенс для расзноса
CREATE SEQUENCE year_distrib_seq_121
  INCREMENT BY 1
  START WITH 1
  MINVALUE 1
  MAXVALUE 9999999999999999999999999999
  NOCYCLE
  NOORDER
  CACHE 20
/
create public synonym year_distrib_seq_121 for creator.year_distrib_seq_121
/
grant select on year_distrib_seq_121 to new_role
/


