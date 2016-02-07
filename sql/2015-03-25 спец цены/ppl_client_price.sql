-- Start of DDL Script for Table CREATOR.PPL_CLIENT_PRICE
-- Generated 26.03.2015 1:10:30 from CREATOR@STAR_NEW


CREATE TABLE ppl_client_price
    (pplcp_id                       NUMBER(15,0) NOT NULL,
    n_id                           NUMBER(15,0) NOT NULL,
    id_clients                     NUMBER(15,0) NOT NULL,
    quantity                       NUMBER(10,0) NOT NULL,
    spec_price                     NUMBER(15,2),
    ppli_id                        NUMBER(10,0),
    price_date                     DATE)
  TABLESPACE  starlight_t
/





-- Constraints for PPL_CLIENT_PRICE

ALTER TABLE ppl_client_price
ADD CONSTRAINT pplcp_id_p_key PRIMARY KEY (pplcp_id)
USING INDEX
  TABLESPACE  starlight_t
/


-- Comments for PPL_CLIENT_PRICE

COMMENT ON COLUMN ppl_client_price.ppli_id IS 'FK prepare_price_index'
/
COMMENT ON COLUMN ppl_client_price.price_date IS 'Дата прайса. Проставляется в момент подгурзки на склад, для поиска цены при продаже'
/
COMMENT ON COLUMN ppl_client_price.spec_price IS 'Спец. цена, если null то как всем!'
/

-- End of DDL Script for Table CREATOR.PPL_CLIENT_PRICE

