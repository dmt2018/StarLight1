-- Start of DDL Script for Table CREATOR.ORDERS_CLIENTS
-- Generated 11.02.2016 1:17:46 from CREATOR@STAR_NEW

CREATE TABLE orders_clients
    (id_orders_clients              NUMBER(10,0) NOT NULL,
    id_orders                      NUMBER(10,0) ,
    id_clients                     NUMBER(8,0) NOT NULL,
    n_truck                        NUMBER(2,0) DEFAULT 0 NOT NULL,
    capacity                       NUMBER(10,4) DEFAULT 0.0 NOT NULL,
    d_date                         DATE NOT NULL,
    n_type                         NUMBER(1,0) DEFAULT 0 NOT NULL,
    status                         NUMBER(2,0),
    on_date                        DATE,
    active                         NUMBER(1,0) DEFAULT 0 NOT NULL,
    pack_                          NUMBER(1,0) DEFAULT 0,
    alpha                          VARCHAR2(2 BYTE),
    id_user                        NUMBER(8,0),
    id_office                      NUMBER(4,0) DEFAULT 1,
    date_change                    DATE DEFAULT sysdate,
    info                           VARCHAR2(500 BYTE),
    in_file                        VARCHAR2(50 BYTE),
    miss_code                      VARCHAR2(4000 BYTE),
    miss_code_short                VARCHAR2(2000 BYTE),
    priority                       NUMBER(2,0))
  TABLESPACE  starlight_t
/





-- Indexes for ORDERS_CLIENTS

CREATE INDEX ix_orders ON orders_clients
  (
    id_orders                       ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_order_uesr ON orders_clients
  (
    id_user                         ASC
  )
  TABLESPACE  starlight_i
/



-- Constraints for ORDERS_CLIENTS



ALTER TABLE orders_clients
ADD CONSTRAINT pk_orders_clients PRIMARY KEY (id_orders_clients)
USING INDEX
  TABLESPACE  starlight_t
/


-- Triggers for ORDERS_CLIENTS

CREATE OR REPLACE TRIGGER tr_i_orders_clients
 AFTER
  INSERT
 ON orders_clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'ORDERS_CLIENTS'
    , 'insert'
    , ''
    , 'ID_ORDERS='||:NEW.ID_ORDERS||chr(10)||'ID_CLIENTS='||:NEW.ID_CLIENTS||chr(10)||'D_DATE='||:NEW.D_DATE||chr(10)||'STATUS='||:NEW.STATUS||chr(10)||'ON_DATE='||:NEW.ON_DATE||chr(10)||'ACTIVE='||:NEW.ACTIVE||chr(10)||'PACK_='||:NEW.PACK_||chr(10)||'ALPHA='||:NEW.ALPHA||chr(10)||'ID_USER='||:NEW.ID_USER
    , user
    , :NEW.ID_ORDERS_CLIENTS
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_u_orders_clients
 AFTER
  UPDATE
 ON orders_clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'ORDERS_CLIENTS'
    , 'update'
    , 'ID_ORDERS='||:OLD.ID_ORDERS||chr(10)||'ID_CLIENTS='||:OLD.ID_CLIENTS||chr(10)||'D_DATE='||:OLD.D_DATE||chr(10)||'STATUS='||:OLD.STATUS||chr(10)||'ON_DATE='||:OLD.ON_DATE||chr(10)||'ACTIVE='||:OLD.ACTIVE||chr(10)||'PACK_='||:OLD.PACK_||chr(10)||'ALPHA='||:OLD.ALPHA||chr(10)||'ID_USER='||:OLD.ID_USER
    , 'ID_ORDERS='||:NEW.ID_ORDERS||chr(10)||'ID_CLIENTS='||:NEW.ID_CLIENTS||chr(10)||'D_DATE='||:NEW.D_DATE||chr(10)||'STATUS='||:NEW.STATUS||chr(10)||'ON_DATE='||:NEW.ON_DATE||chr(10)||'ACTIVE='||:NEW.ACTIVE||chr(10)||'PACK_='||:NEW.PACK_||chr(10)||'ALPHA='||:NEW.ALPHA||chr(10)||'ID_USER='||:NEW.ID_USER
    , user
    , :NEW.ID_ORDERS_CLIENTS
    );
 END;
/

CREATE OR REPLACE TRIGGER tr_d_orders_clients
 AFTER
  DELETE
 ON orders_clients
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN insert into user_logs values(
    SEQ_LOGS.nextval
    , sysdate
    , 'ORDERS_CLIENTS'
    , 'delete'
    , 'ID_ORDERS='||:OLD.ID_ORDERS||chr(10)||'ID_CLIENTS='||:OLD.ID_CLIENTS
    , ''
    , user
    , :OLD.ID_ORDERS_CLIENTS
    );
 END;
/


-- Comments for ORDERS_CLIENTS

COMMENT ON TABLE orders_clients IS 'Список клиентов в заказе\бронировании'
/
COMMENT ON COLUMN orders_clients.active IS 'Для имитации удаления. С дополнительными правами будут видны все'
/
COMMENT ON COLUMN orders_clients.alpha IS 'Дополнительная буква к заказу клиента если он не один заказ делает'
/
COMMENT ON COLUMN orders_clients.capacity IS 'Объем п полетах'
/
COMMENT ON COLUMN orders_clients.d_date IS 'Дата последней коррекции заказа'
/
COMMENT ON COLUMN orders_clients.id_orders_clients IS 'Уникальный номер'
/
COMMENT ON COLUMN orders_clients.id_user IS 'FK clients  (код сотрудника вводившего заказ)'
/
COMMENT ON COLUMN orders_clients.miss_code IS 'Текс с отсутствующим товаром по номенклатуре в заказе'
/
COMMENT ON COLUMN orders_clients.miss_code_short IS 'Текс с отсутствующим товаром по номенклатуре в заказе в виде код/кол'
/
COMMENT ON COLUMN orders_clients.n_truck IS '№ машины в которой находится заказ клиента'
/
COMMENT ON COLUMN orders_clients.n_type IS 'Тип бронирования 0 - с машины, 1 - со склада, 2 - добор'
/
COMMENT ON COLUMN orders_clients.on_date IS 'Только для бронирования. На какую дату бронь'
/
COMMENT ON COLUMN orders_clients.pack_ IS '1-пакуются отдельно'
/
COMMENT ON COLUMN orders_clients.priority IS 'Приоритет'
/
COMMENT ON COLUMN orders_clients.status IS 'Только для бронирования: 0-новый, 1-собран, 2-оплачен, 10-выполнен'
/

-- End of DDL Script for Table CREATOR.ORDERS_CLIENTS

-- Foreign Key
ALTER TABLE orders_clients
ADD CONSTRAINT fk_order_uesr FOREIGN KEY (id_user)
REFERENCES clients (id_clients)
/
ALTER TABLE orders_clients
ADD CONSTRAINT fk_orders FOREIGN KEY (id_orders)
REFERENCES orders (id_orders) ON DELETE CASCADE
/
-- End of DDL script for Foreign Key(s)

create public synonym orders_clients for creator.orders_clients
/


