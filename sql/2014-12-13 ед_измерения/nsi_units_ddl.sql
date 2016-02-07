
CREATE TABLE nsi_units
    (nsi_units_id                  NUMBER(10,0) NOT NULL,
    unit_code                      number(4,0) NOT NULL,
    nsi_name                       VARCHAR2(50),
    symbol_national                VARCHAR2(50),
    symbol_international           VARCHAR2(50),
    code_lettering_national        VARCHAR2(50),
    code_lettering_international   VARCHAR2(50)
  )  
  TABLESPACE  starlight_t
/


ALTER TABLE nsi_units
ADD CONSTRAINT u_nsi_units PRIMARY KEY (nsi_units_id)
USING INDEX
  TABLESPACE  starlight_i
/


create public synonym nsi_units for creator.nsi_units
/

grant select, insert, update, delete on nsi_units to new_role
/


