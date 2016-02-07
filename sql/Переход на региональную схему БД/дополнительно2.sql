CREATE UNIQUE INDEX u_nick ON clients
  (
    LOWER("NICK") ASC,
    id_office                       ASC
  )
  TABLESPACE  starlight_index
/

ALTER TABLE creator.price_list
ADD CONSTRAINT pl_n_id_unic UNIQUE (n_id, id_office)
USING INDEX
  TABLESPACE  starlight_index
/

CREATE INDEX ix_debetorclient ON debetors
  (
    id_clients                      ASC
  )
  TABLESPACE  starlight_index
/

