-- Start of DDL Script for Table CREATOR.INVOICE_DATA_AS_IS
-- Generated 28.10.2013 1:18:08 from CREATOR@STAR_NEW

CREATE GLOBAL TEMPORARY TABLE creator.invoice_data_as_is_temp
   (order_number                   NUMBER(10),
    order_markname                 VARCHAR2(30),
    packing_marks                  VARCHAR2(30),
    packing_code                   VARCHAR2(20),
    description                    VARCHAR2(150),
    units                          NUMBER(8),
    sku                            VARCHAR2(30),
    amount_in_the_pack             NUMBER(8),
    hol_colour                     VARCHAR2(50),
    hol_sub_type                   VARCHAR2(50),
    marks_content                  VARCHAR2(50),
    marks_names                    VARCHAR2(50),
    short_code                     VARCHAR2(20),
    short_name                     VARCHAR2(50),
    recognised                     NUMBER(1,0),
    bar_code                       VARCHAR2(15),
    translation                    VARCHAR2(1024),
    amount_per_unit                NUMBER(10,3),
    total_amount                   NUMBER(10,3),
    remarks                        VARCHAR2(256),
    spec_length                    NUMBER(10,2),
    spec_heads                     VARCHAR2(10),
    spec_heads_shrub               VARCHAR2(10),
    spec_vd2                       VARCHAR2(10),
    spec_width                     NUMBER(10,2),
    spec_hight                     NUMBER(10,2),
    trolley                        NUMBER(10,0),
    truck                          NUMBER(2,0),
    client                         VARCHAR2(30),
    src_trolley                    VARCHAR2(20),
    volume                         NUMBER(15,10),
    voldry                         NUMBER(15,10),
    NOM_NEW                        NUMBER(1,0) DEFAULT 0 NOT NULL,
    NOM_START                      NUMBER(1,0) DEFAULT 0 NOT NULL)
ON COMMIT DELETE ROWS
  NOPARALLEL

/







-- Comments for CREATOR.INVOICE_DATA_AS_IS

COMMENT ON TABLE creator.invoice_data_as_is_temp IS 'Временные сырые данные из подгруженного excel файла'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.amount_in_the_pack IS 'количество в коробке'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.amount_per_unit IS 'Цена'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.bar_code IS 'Штрих-код'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.client IS 'Клиент'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.description IS 'Название позиции'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.hol_colour IS 'цвет'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.hol_sub_type IS 'подтип'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.marks_content IS 'Значение пометок'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.marks_names IS 'Коды пометок'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.order_markname IS 'Пометки для упакованных клиентов'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.order_number IS 'Номер инвойса'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.packing_code IS 'Тип коробки'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.packing_marks IS '№ коробки'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.recognised IS 'Признак распознанного. 1-да, 0-нет'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.remarks IS 'Доп. значения'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.short_code IS 'Код названия'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.short_name IS 'Короткое название'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.sku IS 'код'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_heads IS 'S22 - Количество голов'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_heads_shrub IS 'S25 - Количество голов куст'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_hight IS 'S02 - Высота горшка'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_length IS 'S20 - Длина'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_vd2 IS 'VD2 - Количество в коробке'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.spec_width IS 'S01 - Размер горшка (диаметр)'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.src_trolley IS '№ тележки комбинированный'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.total_amount IS 'Сумма'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.translation IS 'Перевод'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.trolley IS 'Тележка'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.truck IS 'Машина'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.units IS 'Количество'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.NOM_NEW IS 'Признак новинки'
/
COMMENT ON COLUMN creator.invoice_data_as_is_temp.NOM_START IS 'Признак старта продаж'
/

-- End of DDL Script for Table CREATOR.INVOICE_DATA_AS_IS


