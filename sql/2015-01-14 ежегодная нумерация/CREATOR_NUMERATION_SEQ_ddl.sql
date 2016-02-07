-- Start of DDL Script for Table CREATOR.NUMERATION_SEQ
-- Generated 15.01.2015 0:58:11 from CREATOR@STAR_NEW

CREATE TABLE numeration_seq
    (obj_id                         NUMBER(15,0),
    entity                         VARCHAR2(30 BYTE),
    outer_id                       NUMBER(15,0))
  TABLESPACE  starlight_t
/





-- Indexes for NUMERATION_SEQ

CREATE INDEX ix_numseq_objid ON numeration_seq
  (
    obj_id                          ASC
  )
  TABLESPACE  starlight_i
/

CREATE INDEX ix_numseq_outerid ON numeration_seq
  (
    outer_id                        ASC
  )
  TABLESPACE  starlight_i
/



-- Comments for NUMERATION_SEQ

COMMENT ON TABLE numeration_seq IS 'Таблица для хранения отчетных номеров, которые уникальны в течении года'
/
COMMENT ON COLUMN numeration_seq.entity IS 'Название сущности'
/
COMMENT ON COLUMN numeration_seq.obj_id IS 'Уникальный ключ сущности'
/
COMMENT ON COLUMN numeration_seq.outer_id IS 'Годовая последовательность'
/

create public synonym numeration_seq for creator.numeration_seq
/

grant select, insert, update, delete on numeration_seq to new_role
/
-- End of DDL Script for Table CREATOR.NUMERATION_SEQ

