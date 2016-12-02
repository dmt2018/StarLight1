-- Start of DDL Script for Table CREATOR.CLIENTS
-- Generated 2-дек-2016 17:27:34 from CREATOR@ORCL

CREATE TABLE clients
    (id_clients                     NUMBER(8,0) NOT NULL,
    fio                            VARCHAR2(255 BYTE) NOT NULL,
    nick                           VARCHAR2(20 BYTE) NOT NULL,
    ccode                          VARCHAR2(13 BYTE) NOT NULL,
    region                         NUMBER(8,0) NOT NULL,
    address                        VARCHAR2(1024 BYTE),
    u_address                      VARCHAR2(1024 BYTE),
    phone                          VARCHAR2(1024 BYTE),
    passport                       VARCHAR2(1024 BYTE),
    contact                        VARCHAR2(100 BYTE),
    cont_phone                     VARCHAR2(1024 BYTE),
    email                          VARCHAR2(50 BYTE),
    www                            VARCHAR2(50 BYTE),
    inn                            VARCHAR2(50 BYTE),
    reg_svid                       VARCHAR2(50 BYTE),
    kpp                            VARCHAR2(20 BYTE),
    okato                          VARCHAR2(20 BYTE),
    bank                           VARCHAR2(1024 BYTE),
    agreement                      VARCHAR2(50 BYTE) NOT NULL,
    advertisment                   NUMBER(8,0) NOT NULL,
    ddate                          DATE NOT NULL,
    block1                         NUMBER(1,0) DEFAULT 0 NOT NULL,
    block2                         NUMBER(1,0) DEFAULT 0 NOT NULL,
    flowers                        NUMBER(1,0) DEFAULT 0 NOT NULL,
    plants                         NUMBER(1,0) DEFAULT 0 NOT NULL,
    mark                           VARCHAR2(10 BYTE) DEFAULT '0,0,0,0,0' NOT NULL,
    ttype                          NUMBER(8,0) NOT NULL,
    id_clients_groups              NUMBER(8,0) DEFAULT 1 NOT NULL,
    corrector                      VARCHAR2(20 BYTE),
    date_cor                       DATE,
    corrector_cor                  VARCHAR2(20 BYTE),
    duties                         VARCHAR2(1024 BYTE),
    insurance                      VARCHAR2(50 BYTE),
    date_in                        DATE,
    date_out                       DATE,
    l_service                      VARCHAR2(10 BYTE),
    staff                          NUMBER(1,0) DEFAULT 0,
    active                         NUMBER(1,0) DEFAULT 1,
    login                          VARCHAR2(20 BYTE),
    info                           VARCHAR2(1024 BYTE),
    reg_type                       NUMBER(1,0) DEFAULT 0 NOT NULL,
    count                          NUMBER(2,0) DEFAULT 0 NOT NULL,
    dostavka                       NUMBER(1,0) DEFAULT 0,
    id_office                      NUMBER(4,0) DEFAULT 1,
    date_change                    DATE DEFAULT sysdate,
    prefix                         VARCHAR2(5 BYTE),
    id_city                        NUMBER(8,0),
    key_interests                  VARCHAR2(1024 BYTE))
  PCTFREE     10
  INITRANS    1
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     5242880
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
  NOCACHE
  MONITORING
  ENABLE ROW MOVEMENT
  NOPARALLEL
  LOGGING
/





-- Indexes for CLIENTS

CREATE INDEX ix_clientgroup ON clients
  (
    id_clients_groups               ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     262144
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX ix_nick ON clients
  (
    nick                            ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     262144
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX ix_client_advert ON clients
  (
    advertisment                    ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX ix_client_region ON clients
  (
    region                          ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX ix_client_ttype ON clients
  (
    ttype                           ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_i
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE INDEX ix_login ON clients
  (
    UPPER("LOGIN") ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/

CREATE UNIQUE INDEX u_nick ON clients
  (
    LOWER("NICK") ASC,
    id_office                       ASC
  )
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     327680
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
NOPARALLEL
LOGGING
/



-- Constraints for CLIENTS





ALTER TABLE clients
ADD CONSTRAINT u_code UNIQUE (ccode)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     393216
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/

ALTER TABLE clients
ADD CONSTRAINT pk_clients PRIMARY KEY (id_clients)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     262144
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/

ALTER TABLE clients
ADD CONSTRAINT u_nick2 UNIQUE (nick, id_office)
USING INDEX
  PCTFREE     10
  INITRANS    2
  MAXTRANS    255
  TABLESPACE  starlight_t
  STORAGE   (
    INITIAL     65536
    NEXT        1048576
    MINEXTENTS  1
    MAXEXTENTS  2147483645
  )
/


-- Triggers for CLIENTS

CREATE OR REPLACE TRIGGER tr_u_clients
 AFTER
  UPDATE
 ON clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'clients'
    , 'update'
    
    , 'ID_CLIENTS='||:OLD.ID_CLIENTS||chr(10)||'FIO='||:OLD.FIO||chr(10)||'NICK='||:OLD.NICK||chr(10)||'CCODE='||:OLD.CCODE||chr(10)||'REGION='||:OLD.REGION
        ||chr(10)||'ADDRESS='||:OLD.ADDRESS||chr(10)||'U_ADDRESS='||:OLD.U_ADDRESS||chr(10)||'PHONE='||:OLD.PHONE||chr(10)||'PASSPORT='||:OLD.PASSPORT
        ||chr(10)||'CONTACT='||:OLD.CONTACT||chr(10)||'CONT_PHONE='||:OLD.CONT_PHONE||chr(10)||'EMAIL='||:OLD.EMAIL||chr(10)||'WWW='||:OLD.WWW||chr(10)||'INN='||:OLD.INN
        ||chr(10)||'REG_SVID='||:OLD.REG_SVID||chr(10)||'KPP='||:OLD.KPP||chr(10)||'OKATO='||:OLD.OKATO||chr(10)||'BANK='||:OLD.BANK||chr(10)||'AGREEMENT='||:OLD.AGREEMENT
        ||chr(10)||'ADVERTISMENT='||:OLD.ADVERTISMENT||chr(10)||'DDATE='||:OLD.DDATE||chr(10)||'BLOCK1='||:OLD.BLOCK1||chr(10)||'BLOCK2='||:OLD.BLOCK2
        ||chr(10)||'FLOWERS='||:OLD.FLOWERS||chr(10)||'PLANTS='||:OLD.PLANTS||chr(10)||'MARK='||:OLD.MARK||chr(10)||'TTYPE='||:OLD.TTYPE
        ||chr(10)||'ID_CLIENTS_GROUPS='||:OLD.ID_CLIENTS_GROUPS||chr(10)||'CORRECTOR='||:OLD.CORRECTOR||chr(10)||'DATE_COR='||:OLD.DATE_COR
        ||chr(10)||'CORRECTOR_COR='||:OLD.CORRECTOR_COR||chr(10)||'DUTIES='||:OLD.DUTIES||chr(10)||'INSURANCE='||:OLD.INSURANCE||chr(10)||'DATE_IN='||:OLD.DATE_IN
        ||chr(10)||'DATE_OUT='||:OLD.DATE_OUT||chr(10)||'L_SERVICE='||:OLD.L_SERVICE||chr(10)||'STAFF='||:OLD.STAFF||chr(10)||'ACTIVE='||:OLD.ACTIVE
        ||chr(10)||'LOGIN='||:OLD.LOGIN||chr(10)||'INFO='||:OLD.INFO||chr(10)||'REG_TYPE='||:OLD.REG_TYPE||chr(10)||'COUNT='||:OLD.COUNT||chr(10)||'DOSTAVKA='||:OLD.DOSTAVKA
    , 'ID_CLIENTS='||:NEW.ID_CLIENTS||chr(10)||'FIO='||:NEW.FIO||chr(10)||'NICK='||:NEW.NICK||chr(10)||'CCODE='||:NEW.CCODE||chr(10)||'REGION='||:NEW.REGION
        ||chr(10)||'ADDRESS='||:NEW.ADDRESS||chr(10)||'U_ADDRESS='||:NEW.U_ADDRESS||chr(10)||'PHONE='||:NEW.PHONE||chr(10)||'PASSPORT='||:NEW.PASSPORT
        ||chr(10)||'CONTACT='||:NEW.CONTACT||chr(10)||'CONT_PHONE='||:NEW.CONT_PHONE||chr(10)||'EMAIL='||:NEW.EMAIL||chr(10)||'WWW='||:NEW.WWW||chr(10)||'INN='||:NEW.INN
        ||chr(10)||'REG_SVID='||:NEW.REG_SVID||chr(10)||'KPP='||:NEW.KPP||chr(10)||'OKATO='||:NEW.OKATO||chr(10)||'BANK='||:NEW.BANK||chr(10)||'AGREEMENT='||:NEW.AGREEMENT
        ||chr(10)||'ADVERTISMENT='||:NEW.ADVERTISMENT||chr(10)||'DDATE='||:NEW.DDATE||chr(10)||'BLOCK1='||:NEW.BLOCK1||chr(10)||'BLOCK2='||:NEW.BLOCK2
        ||chr(10)||'FLOWERS='||:NEW.FLOWERS||chr(10)||'PLANTS='||:NEW.PLANTS||chr(10)||'MARK='||:NEW.MARK||chr(10)||'TTYPE='||:NEW.TTYPE
        ||chr(10)||'ID_CLIENTS_GROUPS='||:NEW.ID_CLIENTS_GROUPS||chr(10)||'CORRECTOR='||:NEW.CORRECTOR||chr(10)||'DATE_COR='||:NEW.DATE_COR
        ||chr(10)||'CORRECTOR_COR='||:NEW.CORRECTOR_COR||chr(10)||'DUTIES='||:NEW.DUTIES||chr(10)||'INSURANCE='||:NEW.INSURANCE||chr(10)||'DATE_IN='||:NEW.DATE_IN
        ||chr(10)||'DATE_OUT='||:NEW.DATE_OUT||chr(10)||'L_SERVICE='||:NEW.L_SERVICE||chr(10)||'STAFF='||:NEW.STAFF||chr(10)||'ACTIVE='||:NEW.ACTIVE
        ||chr(10)||'LOGIN='||:NEW.LOGIN||chr(10)||'INFO='||:NEW.INFO||chr(10)||'REG_TYPE='||:NEW.REG_TYPE||chr(10)||'COUNT='||:NEW.COUNT||chr(10)||'DOSTAVKA='||:NEW.DOSTAVKA
    , user
    , :NEW.id_clients
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_i_clients
 AFTER
  INSERT
 ON clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'clients'
    , 'insert'
    , ''
    , 'ID_CLIENTS='||:NEW.ID_CLIENTS||chr(10)||'FIO='||:NEW.FIO||chr(10)||'NICK='||:NEW.NICK||chr(10)||'CCODE='||:NEW.CCODE||chr(10)||'REGION='||:NEW.REGION||chr(10)||'ADDRESS='||:NEW.ADDRESS||chr(10)||'U_ADDRESS='||:NEW.U_ADDRESS||chr(10)||'PHONE='||:NEW.PHONE||chr(10)||'PASSPORT='||:NEW.PASSPORT||chr(10)||'CONTACT='||:NEW.CONTACT||chr(10)||'CONT_PHONE='||:NEW.CONT_PHONE||chr(10)||'EMAIL='||:NEW.EMAIL||chr(10)||'WWW='||:NEW.WWW||chr(10)||'INN='||:NEW.INN||chr(10)||'REG_SVID='||:NEW.REG_SVID||chr(10)||'KPP='||:NEW.KPP||chr(10)||'OKATO='||:NEW.OKATO||chr(10)||'BANK='||:NEW.BANK||chr(10)||'AGREEMENT='||:NEW.AGREEMENT||chr(10)||'ADVERTISMENT='||:NEW.ADVERTISMENT||chr(10)||'DDATE='||:NEW.DDATE||chr(10)||'BLOCK1='||:NEW.BLOCK1||chr(10)||'BLOCK2='||:NEW.BLOCK2||chr(10)||'FLOWERS='||:NEW.FLOWERS||chr(10)||'PLANTS='||:NEW.PLANTS||chr(10)||'MARK='||:NEW.MARK||chr(10)||'TTYPE='||:NEW.TTYPE||chr(10)||'ID_CLIENTS_GROUPS='||:NEW.ID_CLIENTS_GROUPS||chr(10)||'CORRECTOR='||:NEW.CORRECTOR||chr(10)||'DATE_COR='||:NEW.DATE_COR||chr(10)||'CORRECTOR_COR='||:NEW.CORRECTOR_COR||chr(10)||'DUTIES='||:NEW.DUTIES||chr(10)||'INSURANCE='||:NEW.INSURANCE||chr(10)||'DATE_IN='||:NEW.DATE_IN||chr(10)||'DATE_OUT='||:NEW.DATE_OUT||chr(10)||'L_SERVICE='||:NEW.L_SERVICE||chr(10)||'STAFF='||:NEW.STAFF||chr(10)||'ACTIVE='||:NEW.ACTIVE||chr(10)||'LOGIN='||:NEW.LOGIN||chr(10)||'INFO='||:NEW.INFO||chr(10)||'REG_TYPE='||:NEW.REG_TYPE||chr(10)||'COUNT='||:NEW.COUNT||chr(10)||'DOSTAVKA='||:NEW.DOSTAVKA
    , user
    , :NEW.id_clients
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_clients
 AFTER
  DELETE
 ON clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'clients'
    , 'delete'
    , 'ID_CLIENTS='||:OLD.ID_CLIENTS||chr(10)||'FIO='||:OLD.FIO||chr(10)||'NICK='||:OLD.NICK||chr(10)||'CCODE='||:OLD.CCODE||chr(10)||'REGION='||:OLD.REGION||chr(10)||'ADDRESS='||:OLD.ADDRESS||chr(10)||'U_ADDRESS='||:OLD.U_ADDRESS||chr(10)||'PHONE='||:OLD.PHONE||chr(10)||'PASSPORT='||:OLD.PASSPORT||chr(10)||'CONTACT='||:OLD.CONTACT||chr(10)||'CONT_PHONE='||:OLD.CONT_PHONE||chr(10)||'EMAIL='||:OLD.EMAIL||chr(10)||'WWW='||:OLD.WWW||chr(10)||'INN='||:OLD.INN||chr(10)||'REG_SVID='||:OLD.REG_SVID||chr(10)||'KPP='||:OLD.KPP||chr(10)||'OKATO='||:OLD.OKATO||chr(10)||'BANK='||:OLD.BANK||chr(10)||'AGREEMENT='||:OLD.AGREEMENT||chr(10)||'ADVERTISMENT='||:OLD.ADVERTISMENT||chr(10)||'DDATE='||:OLD.DDATE||chr(10)||'BLOCK1='||:OLD.BLOCK1||chr(10)||'BLOCK2='||:OLD.BLOCK2||chr(10)||'FLOWERS='||:OLD.FLOWERS||chr(10)||'PLANTS='||:OLD.PLANTS||chr(10)||'MARK='||:OLD.MARK||chr(10)||'TTYPE='||:OLD.TTYPE||chr(10)||'ID_CLIENTS_GROUPS='||:OLD.ID_CLIENTS_GROUPS||chr(10)||'CORRECTOR='||:OLD.CORRECTOR||chr(10)||'DATE_COR='||:OLD.DATE_COR||chr(10)||'CORRECTOR_COR='||:OLD.CORRECTOR_COR||chr(10)||'DUTIES='||:OLD.DUTIES||chr(10)||'INSURANCE='||:OLD.INSURANCE||chr(10)||'DATE_IN='||:OLD.DATE_IN||chr(10)||'DATE_OUT='||:OLD.DATE_OUT||chr(10)||'L_SERVICE='||:OLD.L_SERVICE||chr(10)||'STAFF='||:OLD.STAFF||chr(10)||'ACTIVE='||:OLD.ACTIVE||chr(10)||'LOGIN='||:OLD.LOGIN||chr(10)||'INFO='||:OLD.INFO||chr(10)||'REG_TYPE='||:OLD.REG_TYPE||chr(10)||'COUNT='||:OLD.COUNT||chr(10)||'DOSTAVKA='||:OLD.DOSTAVKA
    , ''
    , user
    , :OLD.id_clients
    );
 END;
/


-- Comments for CLIENTS

COMMENT ON TABLE clients IS 'Таблица с клиентами фирмы и сотрудниками'
/
COMMENT ON COLUMN clients.active IS 'Активный или нет'
/
COMMENT ON COLUMN clients.address IS 'Адрес'
/
COMMENT ON COLUMN clients.advertisment IS 'FK источник рекламы'
/
COMMENT ON COLUMN clients.agreement IS 'Договор с фирмой'
/
COMMENT ON COLUMN clients.bank IS 'Банковские реквизиты'
/
COMMENT ON COLUMN clients.block1 IS 'Заблокирован кредитом'
/
COMMENT ON COLUMN clients.block2 IS 'Заблокирован бухгалтерией'
/
COMMENT ON COLUMN clients.ccode IS 'Штрих-код'
/
COMMENT ON COLUMN clients.cont_phone IS 'Контактный телефон'
/
COMMENT ON COLUMN clients.contact IS 'Контактное лицо'
/
COMMENT ON COLUMN clients.corrector IS 'Код сотрудника, вводившего данные'
/
COMMENT ON COLUMN clients.corrector_cor IS 'Код сотрудника, изменившего данные'
/
COMMENT ON COLUMN clients.count IS 'Количество печатаемых штрих-кодов'
/
COMMENT ON COLUMN clients.date_cor IS 'Дата ввода информации'
/
COMMENT ON COLUMN clients.date_in IS 'Дата принятия на работу'
/
COMMENT ON COLUMN clients.date_out IS 'Дата увольнения'
/
COMMENT ON COLUMN clients.ddate IS 'Дата регистрации'
/
COMMENT ON COLUMN clients.dostavka IS 'Доставка 0-самовывоз'
/
COMMENT ON COLUMN clients.duties IS 'Обязанности сотрудника'
/
COMMENT ON COLUMN clients.email IS 'Email'
/
COMMENT ON COLUMN clients.fio IS 'ФИО'
/
COMMENT ON COLUMN clients.flowers IS 'Специализация - срез'
/
COMMENT ON COLUMN clients.id_clients IS 'PK'
/
COMMENT ON COLUMN clients.id_clients_groups IS 'FK Код группы'
/
COMMENT ON COLUMN clients.info IS 'Дополнительная информаци'
/
COMMENT ON COLUMN clients.inn IS 'ИНН'
/
COMMENT ON COLUMN clients.insurance IS 'Пенсионка'
/
COMMENT ON COLUMN clients.kpp IS 'КПП'
/
COMMENT ON COLUMN clients.l_service IS 'Стаж работы (д.м.г.)'
/
COMMENT ON COLUMN clients.login IS 'Логин сотрудника в систему'
/
COMMENT ON COLUMN clients.mark IS 'Признак просмотра прайс-листа'
/
COMMENT ON COLUMN clients.nick IS 'Код'
/
COMMENT ON COLUMN clients.okato IS 'ОКАТО'
/
COMMENT ON COLUMN clients.passport IS 'Паспорт'
/
COMMENT ON COLUMN clients.phone IS 'Телефон'
/
COMMENT ON COLUMN clients.plants IS 'Специализация - горшки'
/
COMMENT ON COLUMN clients.prefix IS 'признак для клиента'
/
COMMENT ON COLUMN clients.reg_svid IS 'Свидетельство о регистрации'
/
COMMENT ON COLUMN clients.reg_type IS '1-клиент "Старлайт Кэш Керри"  0-клиент "Старлайт"'
/
COMMENT ON COLUMN clients.region IS 'FK Код региона'
/
COMMENT ON COLUMN clients.staff IS 'Не штат - 0, штат - 1, клиент - 9'
/
COMMENT ON COLUMN clients.ttype IS 'FK типы клиентов'
/
COMMENT ON COLUMN clients.u_address IS 'Юредический адрес'
/
COMMENT ON COLUMN clients.www IS 'WWW'
/

-- End of DDL Script for Table CREATOR.CLIENTS

-- Foreign Key
ALTER TABLE clients
ADD CONSTRAINT fk_client_ttype FOREIGN KEY (ttype)
REFERENCES books_client_types (id_client_types)
/
ALTER TABLE clients
ADD CONSTRAINT fk_client_region FOREIGN KEY (region)
REFERENCES books_regions (id_regions)
/
ALTER TABLE clients
ADD CONSTRAINT fk_client_advert FOREIGN KEY (advertisment)
REFERENCES books_advertisments (id_advertisments)
/
ALTER TABLE clients
ADD CONSTRAINT fk_client_group FOREIGN KEY (id_clients_groups)
REFERENCES clients_groups (id_clients_groups)
/
-- End of DDL script for Foreign Key(s)
