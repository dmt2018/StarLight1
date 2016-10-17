-- Start of DDL Script for Package Body CREATOR.INVOICE_PKG
-- Generated 18.10.2016 2:00:48 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE invoice_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные


--
--  Добавляем основную информацию о новом сыром инвойсе
--
PROCEDURE INV_REG_INSERT
(
  IN_INV_DATE            IN DATE,
  IN_COMMENTS            IN VARCHAR2,
  IN_SUP_INV_DATE        IN DATE,
  IN_SUP_NUMBER          IN VARCHAR2,
  IN_ID_DEPARTMENTS      IN INTEGER,
  IN_INV_MINUS           in number,
  IN_S_ID                in number,
  in_INV_ID              in out integer
  , IN_FILE_             IN VARCHAR2
  , IN_OFFICE_ID         in number
  , IN_country_gtd       in number
)
;


--
--  Добавляем данные нового сырого инвойса
--
PROCEDURE INV_REG_INSERT_DATA
(
    INV_ID_             in number,
    ORDER_NUMBER_       in number,
    ORDER_MARKNAME_     in varchar2,
    PACKING_MARKS_      in varchar2,
    PACKING_CODE_       in varchar2,
    DESCRIPTION_        in varchar2,
    UNITS_              in number,
    SKU_                in varchar2,
    AMOUNT_IN_THE_PACK_ in number,
    HOL_COLOUR_         in varchar2,
    HOL_SUB_TYPE_       in varchar2,
    MARKS_CONTENT_      in varchar2,
    MARKS_NAMES_        in varchar2,
    SHORT_CODE_         in varchar2,
    SHORT_NAME_         in varchar2,
    BAR_CODE_           in varchar2,
    TRANSLATION_        in varchar2,
    AMOUNT_PER_UNIT_    in number,
    TOTAL_AMOUNT_       in number,
    REMARKS_            in varchar2,
    SPEC_LENGTH_        in number,
    SPEC_HEADS_         in varchar2,
    SPEC_HEADS_SHRUB_   in varchar2,
    SPEC_VD2_           in varchar2,
    SPEC_WIDTH_         in number,
    SPEC_HIGHT_         in number,
    TROLLEY_            in varchar2,
    TRUCK_              in varchar2,
    CLIENT_             in varchar2,
    VOLUME_             in number,
    VOLDRY_             in number,
    NOM_NEW_            in varchar2,
    NOM_START_          in varchar2,
    COUNTRY_            in varchar2,
    NOM_END_            in varchar2,
    NOM_ADD_            in varchar2,
    NOM_SPEC_           in varchar2,
    NOM_PACK_           in number,
    NOM_PACK_HOL_       in number,
    replacement_        in varchar2
);


--
--  Сохраняем персональные настройки для пользоватедя
--
PROCEDURE CHANGE_PERSONAL_SETTINGS
(
  IN_HIDE_MARKS IN NUMBER
);


--
--  Удаляем инвойс
--
PROCEDURE delete_invoice
(
  INV_ID_ IN NUMBER
);


--
-- Редактирование инвойса
--
PROCEDURE INV_REG_UPDATE
(
  IN_INV_ID         IN OUT NUMBER,
  IN_INV_DATE       IN DATE,
  IN_COMMENTS       IN VARCHAR2,
  IN_SUP_INV_DATE   IN DATE,
  IN_SUP_NUMBER     IN VARCHAR2,
  IN_S_ID           in number,
  IN_ID_DEPARTMENTS IN INTEGER,
  IN_country_gtd    in integer
)
;


--
--  Установка значений по умолчанию для разбора инвойса
--
PROCEDURE SET_DEFAULT
(
    INV_ID_                         in number,
        DEF_COUNTRY_ID_         in number,
        DEF_SUPPLIER_ID_        in number
);



--
--  Выбор наличия перевода у спецификации
--
PROCEDURE NEED_TRANSLATION_SPEC
(
    SPEC_CODE_  in varchar2,
    cursor_     out ref_cursor
);


--
--  Достаем мправочник по названиям цветка
--
PROCEDURE get_fn_view
(
    ID_DEPARTMENTS_   in number,
    cursor_           out ref_cursor
);


--
--  Достаем номер инвойса
--
PROCEDURE get_inv_data_id
(
    INVOICE_DATA_AS_IS_ID     in number,
    cursor_                 out ref_cursor
);


--
--  Достаем номенклатуру
--
PROCEDURE get_nomenclature
(
    ID_DEPARTMENTS_   in number,
    v_office          in number,
    cursor_           out ref_cursor
);


--
--  Выбор содержания спецификации
--
PROCEDURE GET_SPECIFICATION_CONTENT
(
    HS_ID_       in number,
    CONTENT_HOL_ in varchar2,
    cursor_      out ref_cursor
);



--
--  Проверка новой спецификации и добалвение
--
PROCEDURE CheckSpecifications
(
    SPEC_CODE_  in varchar2,
    MARK_V_     in varchar2,
    text_str    out varchar2,
    cursor_     out ref_cursor
);



--
--  Достаем инвойсы
--
PROCEDURE get_inv_register
(
    ID_DEPARTMENTS_  in number,
    SHOW_SHORT_      in number,
    v_office         in number,
    cursor_          out ref_cursor
);


--
--  Достаем что в инвойсе сыром
--
PROCEDURE get_inv_register_asis
(
    INV_ID_  in integer,
    cursor_  out ref_cursor
);



--
--  Достаем что в инвойсе разобранном
--
PROCEDURE get_inv_register_done
(
    INV_ID_  in integer,
    cursor_  out ref_cursor
);


--
--  Добавление спецификации к новой номенклатуре
--
PROCEDURE ADD_SPEC_TO_NEW_NOM
(
    SPEC_CODE_  in varchar2,
    N_ID_       in number,
    HS_VAL_     in varchar2,
    ORD_        in number,
    text_str    out varchar2
);


--
--  Удаление сырого инвойса
--
PROCEDURE DEL_INV_SOURCE
(
    INVOICE_DATA_AS_IS_ID_  in number
);



--
--  Достаем спецификации к номенклатуре
--
PROCEDURE get_spec_view
(
    N_ID_    in integer,
    cursor_  out ref_cursor
);


--
--  Добавление спецификации к новой номенклатуре
--
PROCEDURE ADD_SPEC_TO_NEW_NOM2
(
    HS_ID_      in number,
    N_ID_       in number,
    HS_VAL_     in varchar2,
    ORD_        in number,
    text_str    out varchar2
);



--
--  Добавляем пачку для инвойсов
--
PROCEDURE ADD_PRICE_PACK
(
  IPP_COMMENT_              IN VARCHAR2,
  in_id_              in out number
);


--
--  Удаляем пачку для инвойсов
--
PROCEDURE DEL_PRICE_PACK
(
  IPP_ID_                    IN NUMBER
);


--
--  Проставляем инвойсам значения
--
PROCEDURE SET_TO_INV_DONE
(
  GTD_                  IN varchar2,
  CUST_COEF_            IN NUMBER,
  SENDED_TO_WAREHOUSE_  IN NUMBER,
  c_def_                IN NUMBER,
  id_str_               in varchar2
);


--
--  Достаем номенклатуру по ID
--
PROCEDURE GET_NOMENCLATURE_ID
(
    ID_DEPARTMENTS_   in number,
    n_id_             in number,
    cursor_           out ref_cursor
);


  /*Процедура производит сторнирование позиции инвойса*/
  PROCEDURE UPDATE_DATA
  (
      IN_INVOICE_DATA_ID       IN NUMBER,
      IN_N_ID                  IN NUMBER,
      IN_UNITS                 IN NUMBER,
      IN_PRICE_PER_UNIT        IN NUMBER,
      IN_TOTAL_SUM             IN NUMBER,
      IN_AMOUNT_IN_THE_PACK    IN NUMBER DEFAULT NULL,
      OUT_INVOICE_DATA_ID      OUT NUMBER,
      OUT_RES                  OUT NUMBER,
      OUT_TEXT                 OUT VARCHAR2
  );


--
--  Доделаем клейм
--
PROCEDURE INV_DONE_MINUS
(
  in_INV_ID         in number
  , in_INV_PRIME    in number
  , OUT_RES         OUT NUMBER
  , OUT_TEXT        OUT VARCHAR2
);


--
--  Достаем инвойсы
--
PROCEDURE get_inv_register_new
(
    ID_DEPARTMENTS_  in number,
    SHOW_SHORT_      in number,
    pARCHIVE         in number,
    v_office         in number,
    pNom             in varchar2,
    cursor_          out ref_cursor
);


--
--  Печать прихода по инвойсу
--
PROCEDURE print_invoice
(
    v_inv_id  in integer,
    cursor_   out ref_cursor
);


--
--  Добавим вбронирование позиции
--
PROCEDURE move_to_reserv
(
    v_n_id  in number,
    v_quant in number,
    v_from  in number,
    v_inv   in number
);


--
--  Достанем пачки инвойсов
--
PROCEDURE get_ipp_list
(
    V_OFFICE  in number,
    cursor_   in out ref_cursor
);


--
--  Вставим пачку инвойсам
--
PROCEDURE SET_INV_TO_PACK
(
  V_IPP_ID      IN NUMBER
  , V_PARAM     in number
  , V_INV_ID    IN NUMBER
);


--
--  Добавляем данные нового сырого инвойса во временную таблицу
--
PROCEDURE INV_REG_INSERT_DATA_TEMP
(
    ORDER_NUMBER_       in number,
    ORDER_MARKNAME_     in varchar2,
    PACKING_MARKS_      in varchar2,
    PACKING_CODE_       in varchar2,
    DESCRIPTION_        in varchar2,
    UNITS_              in number,
    SKU_                in varchar2,
    AMOUNT_IN_THE_PACK_ in number,
    HOL_COLOUR_         in varchar2,
    HOL_SUB_TYPE_       in varchar2,
    MARKS_CONTENT_      in varchar2,
    MARKS_NAMES_        in varchar2,
    SHORT_CODE_         in varchar2,
    SHORT_NAME_         in varchar2,
    BAR_CODE_           in varchar2,
    TRANSLATION_        in varchar2,
    AMOUNT_PER_UNIT_    in number,
    TOTAL_AMOUNT_       in number,
    REMARKS_            in varchar2,
    SPEC_LENGTH_        in number,
    SPEC_HEADS_         in varchar2,
    SPEC_HEADS_SHRUB_   in varchar2,
    SPEC_VD2_           in varchar2,
    SPEC_WIDTH_         in number,
    SPEC_HIGHT_         in number,
    TROLLEY_            in varchar2,
    TRUCK_              in varchar2,
    CLIENT_             in varchar2,
    VOLUME_             in number,
    VOLDRY_             in number,
    NOM_NEW_            in varchar2,
    NOM_START_          in varchar2,
    country_            in varchar2,
    NOM_END_            in varchar2,
    NOM_ADD_            in varchar2,
    NOM_SPEC_           in varchar2,
    NOM_PACK_           in number
);


--
--  Достаем что в сыром инвойсе во временной таблице
--
PROCEDURE get_src
(
  p_inv_id    in number,
  cursor_  out ref_cursor
);


--
-- Выбор неоприходованных инвойсов
--
PROCEDURE select_invoices
(
   id_dep_      in number,
   cursor_      in out ref_cursor
);


--
-- Копирование исходной строки
--
PROCEDURE copy_asis
(
   p_INVOICE_DATA_AS_IS_ID   in out number,
   p_inv_id                  in number
);


--
--  Замена текущей страны цветка исходным значением из сырца
--
PROCEDURE change_country_by_asis
(
  p_INVOICE_DATA_ID  in integer
);


--
--  Замена текущего цветка другим
--
PROCEDURE change_nid_by_another
(
  p_INVOICE_DATA_ID  in integer,
  p_new_n_id         in integer
);


END; -- Package spec
/

-- Grants for Package
GRANT EXECUTE ON invoice_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY invoice_pkg
IS
cnt_ number;


--
--  Добавляем основную информацию о новом сыром инвойсе
--
PROCEDURE INV_REG_INSERT
(
  IN_INV_DATE            IN DATE,
  IN_COMMENTS            IN VARCHAR2,
  IN_SUP_INV_DATE        IN DATE,
  IN_SUP_NUMBER          IN VARCHAR2,
  IN_ID_DEPARTMENTS      IN INTEGER,
  IN_INV_MINUS           in number,
  IN_S_ID                in number,
  in_INV_ID              in out integer
  , IN_FILE_             IN VARCHAR2
  , IN_OFFICE_ID         in number
  , IN_country_gtd       in number
)
as
    v_idd  number;
begin

  SELECT get_office_unique('INV_ID') INTO v_idd FROM DUAL;
  if (v_idd > 0) then
     INSERT INTO INVOICE_REGISTER (INV_ID,INV_DATE,SENDED_TO_WAREHOUSE,COMMENTS,ID_DEPARTMENTS,SUPPLIER_DATE,SUPPLIER_NUMBER,INV_MINUS,s_id_default,minus_inv_id,IN_FILE,id_office, country_gtd)
            VALUES(v_idd,TRUNC(IN_INV_DATE),0,IN_COMMENTS,IN_ID_DEPARTMENTS,TRUNC(IN_SUP_INV_DATE),IN_SUP_NUMBER,IN_INV_MINUS,IN_S_ID,in_INV_ID,IN_FILE_,IN_OFFICE_ID, IN_country_gtd);
     commit;
    end if;
  in_INV_ID := v_idd;

  EXCEPTION WHEN OTHERS THEN
      in_INV_ID := -1;
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.INV_REG_INSERT', '');
      RAISE_APPLICATION_ERROR (-20200, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end INV_REG_INSERT;



--
--  Добавляем данные нового сырого инвойса
--
PROCEDURE INV_REG_INSERT_DATA
(
    INV_ID_             in number,
    ORDER_NUMBER_       in number,
    ORDER_MARKNAME_     in varchar2,
    PACKING_MARKS_      in varchar2,
    PACKING_CODE_       in varchar2,
    DESCRIPTION_        in varchar2,
    UNITS_              in number,
    SKU_                in varchar2,
    AMOUNT_IN_THE_PACK_ in number,
    HOL_COLOUR_         in varchar2,
    HOL_SUB_TYPE_       in varchar2,
    MARKS_CONTENT_      in varchar2,
    MARKS_NAMES_        in varchar2,
    SHORT_CODE_         in varchar2,
    SHORT_NAME_         in varchar2,
    BAR_CODE_           in varchar2,
    TRANSLATION_        in varchar2,
    AMOUNT_PER_UNIT_    in number,
    TOTAL_AMOUNT_       in number,
    REMARKS_            in varchar2,
    SPEC_LENGTH_        in number,
    SPEC_HEADS_         in varchar2,
    SPEC_HEADS_SHRUB_   in varchar2,
    SPEC_VD2_           in varchar2,
    SPEC_WIDTH_         in number,
    SPEC_HIGHT_         in number,
    TROLLEY_            in varchar2,
    TRUCK_              in varchar2,
    CLIENT_             in varchar2,
    VOLUME_             in number,
    VOLDRY_             in number,
    NOM_NEW_            in varchar2,
    NOM_START_          in varchar2,
    COUNTRY_            in varchar2,
    NOM_END_            in varchar2,
    NOM_ADD_            in varchar2,
    NOM_SPEC_           in varchar2,
    NOM_PACK_           in number,
    NOM_PACK_HOL_       in number,
    replacement_        in varchar2
)
IS
  INVOICE_DATA_AS_IS_ID_ number;
  v_truck    varchar2(2);
  v_trolley  number;
  cc         number;
  pack_quantity number;
BEGIN
  pack_quantity := 0;
  select case when instr(TRUCK_, 'T1') > 0 or instr(TRUCK_, 'TR1') > 0 or instr(TRUCK_, 'TRUCK 1') > 0 or TRUCK_ = '1' then 1 else
         case when instr(TRUCK_, 'T2') > 0 or instr(TRUCK_, 'TR2') > 0 or instr(TRUCK_, 'TRUCK 2') > 0 or TRUCK_ = '2' then 2 else
         case when instr(TRUCK_, 'T3') > 0 or instr(TRUCK_, 'TR3') > 0 or instr(TRUCK_, 'TRUCK 3') > 0 or TRUCK_ = '3' then 3 else
         case when instr(TRUCK_, 'T4') > 0 or instr(TRUCK_, 'TR4') > 0 or instr(TRUCK_, 'TRUCK 4') > 0 or TRUCK_ = '4' then 4 else
         case when instr(TRUCK_, 'T5') > 0 or instr(TRUCK_, 'TR5') > 0 or instr(TRUCK_, 'TRUCK 5') > 0 or TRUCK_ = '5' then 5 else
         case when instr(TRUCK_, 'T6') > 0 or instr(TRUCK_, 'TR6') > 0 or instr(TRUCK_, 'TRUCK 6') > 0 or TRUCK_ = '6' then 6 else
         case when instr(TRUCK_, 'T7') > 0 or instr(TRUCK_, 'TR7') > 0 or instr(TRUCK_, 'TRUCK 7') > 0 or TRUCK_ = '7' then 7 else
         case when instr(TRUCK_, 'T8') > 0 or instr(TRUCK_, 'TR8') > 0 or instr(TRUCK_, 'TRUCK 8') > 0 or TRUCK_ = '8' then 8 else 0
         end end end end end end end end
  into v_truck from dual;

  pack_quantity := NOM_PACK_;
  -- попробуем найти упаковку по настройке гол.подтипов
  if NOM_PACK_ is null or NOM_PACK_ = 0 then
    begin
      select QUANTITY into pack_quantity from hol_subtype_def_pack where upper(HOL_SUBTYPE) = upper(HOL_SUB_TYPE_);
    EXCEPTION WHEN no_data_found THEN
      pack_quantity := 0;
    end;
  end if;

  -- попробуем найти упаковку по настройке гол.подтипов
  if pack_quantity is null or pack_quantity = 0 then
    begin
      select max(QUANT) into pack_quantity from def_type_quant d, flower_subtypes s where d.fst_id = s.fst_id and upper(s.hol_sub_type) like upper('%'||HOL_SUB_TYPE_||'%');
--      LOG_ERR('', 0,'pack_quantity=' || pack_quantity || ', ' || HOL_SUB_TYPE_, '');
    EXCEPTION WHEN no_data_found THEN
      pack_quantity := 0;
    end;
  end if;

  -- 2015-01-15 по требованию Е.В., если в ремарке естоит Xnn, то это значение надо взять за упаковку
  if REMARKS_ is not null and ( instr(REMARKS_,'X25')>0 or instr(REMARKS_,'X5')>0 or instr(REMARKS_,'X10')>0 or instr(REMARKS_,'X15')>0 or instr(REMARKS_,'X20')>0 or instr(REMARKS_,'X50')>0 ) then
    select case when instr(REMARKS_,'X5')>0 then 5
                when instr(REMARKS_,'X10')>0 then 10
                when instr(REMARKS_,'X15')>0 then 15
                when instr(REMARKS_,'X20')>0 then 20
                when instr(REMARKS_,'X25')>0 then 25
                when instr(REMARKS_,'X50')>0 then 50
                else 0 end into pack_quantity from dual;
  end if;

  v_trolley := 0;
  begin
      if (length(TROLLEY_) > 0) then
        -- 2013-01-10 при сложных коробках 103514.10.102-103 получается большое число, вместо одного места
        --v_trolley := to_number(substr(REPLACE(TROLLEY_,'-',''), instr(REPLACE(TROLLEY_,'-',''),'.', -1)+1, length(REPLACE(TROLLEY_,'-',''))));

        cc := instr(TROLLEY_,'-')-1;
        if cc = 0 then cc := length(TROLLEY_); end if;
        v_trolley := to_number( substr(TROLLEY_, instr(TROLLEY_,'.', -1)+1, cc-instr(TROLLEY_,'.', -1) ) );

      end if;
  EXCEPTION WHEN OTHERS THEN
      v_trolley := 0;
  end;

  SELECT get_office_unique('INVOICE_DATA_AS_IS_ID') INTO INVOICE_DATA_AS_IS_ID_ FROM DUAL;


  INSERT INTO INVOICE_DATA_AS_IS
  VALUES (
    INV_ID_, ORDER_NUMBER_, ORDER_MARKNAME_, PACKING_MARKS_, PACKING_CODE_, DESCRIPTION_,
    UNITS_, SKU_, AMOUNT_IN_THE_PACK_, INVOICE_DATA_AS_IS_ID_, HOL_COLOUR_,
    HOL_SUB_TYPE_, MARKS_CONTENT_, MARKS_NAMES_, SHORT_CODE_, SHORT_NAME_, null, BAR_CODE_,
    TRANSLATION_, AMOUNT_PER_UNIT_, TOTAL_AMOUNT_, REMARKS_,
    SPEC_LENGTH_, SPEC_HEADS_, SPEC_HEADS_SHRUB_, SPEC_VD2_, SPEC_WIDTH_, SPEC_HIGHT_, v_trolley, v_truck, CLIENT_, TROLLEY_
    , const_office, sysdate, VOLUME_, VOLDRY_, decode(NOM_NEW_, NULL, 0, 1), decode(NOM_START_, NULL, 0, 1), country_
    , decode(NOM_END_, NULL, 0, 1), decode(NOM_ADD_, NULL, 0, 1), decode(NOM_SPEC_, NULL, 0, 1), pack_quantity, NOM_PACK_HOL_
    , replacement_
    );
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.INV_REG_INSERT_DATA', '');
      RAISE_APPLICATION_ERROR (-20201, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INV_REG_INSERT_DATA;


--
--  Сохраняем персональные настройки для пользоватедя
--
PROCEDURE CHANGE_PERSONAL_SETTINGS
(
  IN_HIDE_MARKS IN NUMBER
)
AS
BEGIN

  SELECT COUNT(*) INTO cnt_ FROM PERSONAL_SETTINGS WHERE DB_USER=USER;
  IF cnt_ =0
    THEN INSERT INTO PERSONAL_SETTINGS (DB_USER,HIDE_MARKS) VALUES(USER,IN_HIDE_MARKS);
    ELSE UPDATE PERSONAL_SETTINGS SET HIDE_MARKS=IN_HIDE_MARKS WHERE DB_USER=USER;
  END IF;
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.CHANGE_PERSONAL_SETTINGS', '');
      RAISE_APPLICATION_ERROR (-20202, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END CHANGE_PERSONAL_SETTINGS;


--
--  Удаляем инвойс
--
PROCEDURE delete_invoice
(
  INV_ID_ IN NUMBER
)
AS
BEGIN
  select a.inv_minus into cnt_ from INVOICE_REGISTER a WHERE a.INV_ID = INV_ID_;
  if (cnt_ = 1) then
      DELETE FROM CLAIMS b WHERE b.inv_id = INV_ID_ and b.id_office = const_office;
  end if;

  select count(*) into cnt_ from prepare_price_list_index a
  WHERE a.INV_ID = INV_ID_ and a.inv_id2 is null and a.inv_id3 is null and a.inv_id4 is null and a.finished = 0 and a.id_office = const_office;
  if (cnt_ = 1) then
      select a.ppli_id into cnt_ from prepare_price_list_index a
      WHERE a.INV_ID = INV_ID_ and a.inv_id2 is null and a.inv_id3 is null and a.inv_id4 is null and a.finished = 0 and a.id_office = const_office;

      DELETE FROM prepare_price_list b WHERE b.ppli_id = cnt_;
      DELETE FROM prepare_price_list_index b WHERE b.ppli_id = cnt_;
  end if;

  DELETE FROM INVOICE_REGISTER WHERE INV_ID = INV_ID_ and id_office = const_office;
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.delete_invoice', '');
      RAISE_APPLICATION_ERROR (-20203, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end delete_invoice;


--
-- Редактирование инвойса
--
PROCEDURE INV_REG_UPDATE
(
  IN_INV_ID         IN OUT NUMBER,
  IN_INV_DATE       IN DATE,
  IN_COMMENTS       IN VARCHAR2,
  IN_SUP_INV_DATE   IN DATE,
  IN_SUP_NUMBER     IN VARCHAR2,
  IN_S_ID           in number,
  IN_ID_DEPARTMENTS IN INTEGER,
  IN_country_gtd    in integer
)
as
begin

    UPDATE INVOICE_REGISTER SET
      INV_DATE = TRUNC(IN_INV_DATE),
      COMMENTS = IN_COMMENTS,
      SUPPLIER_DATE = TRUNC(IN_SUP_INV_DATE),
      SUPPLIER_NUMBER = IN_SUP_NUMBER,
      s_id_default = IN_S_ID,
      date_change = sysdate,
      country_gtd = IN_country_gtd
    WHERE
      INV_ID = IN_INV_ID;
    commit;

  EXCEPTION
  WHEN OTHERS THEN
       IN_INV_ID := -1;
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.INV_REG_UPDATE', '');
       RAISE_APPLICATION_ERROR (-20204, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end INV_REG_UPDATE;


--
--  Установка значений по умолчанию для разбора инвойса
--
PROCEDURE SET_DEFAULT
(
    INV_ID_                 in number,
    DEF_COUNTRY_ID_         in number,
    DEF_SUPPLIER_ID_        in number
)
is
begin

  UPDATE INVOICE_REGISTER SET S_ID_DEFAULT = DEF_SUPPLIER_ID_, C_ID_DEFAULT = DEF_COUNTRY_ID_, date_change=sysdate
  WHERE INV_ID = INV_ID_;
  commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.SET_DEFAULT', '');
       RAISE_APPLICATION_ERROR (-20205, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end SET_DEFAULT;


--
--  Достаем номер инвойса
--
PROCEDURE get_inv_data_id
(
    INVOICE_DATA_AS_IS_ID     in number,
    cursor_                 out ref_cursor
)
is
begin

  open cursor_ for
    SELECT INVOICE_DATA_ID FROM INVOICE_DATA WHERE INVOICE_DATA_AS_IS_ID = INVOICE_DATA_AS_IS_ID AND STORNED_DATA = 0;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_inv_data_id', '');
       RAISE_APPLICATION_ERROR (-20206, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_inv_data_id;



--
--  Достаем номенклатуру
--
PROCEDURE get_nomenclature
(
    ID_DEPARTMENTS_   in number,
    v_office          in number,
    cursor_           out ref_cursor
)
is
begin

  open cursor_ for
       SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, NOM.N_ID, FN_ID, FT_ID, FST_ID, S_ID, C_ID,
              COL_ID, H_CODE, H_NAME, CODE, BAR_CODE, LEN, PACK, VBN, HOL_TYPE, WEIGHT, WEIGHTDRY, S_NAME_RU, COLOUR, COUNTRY,
              TYPE_SUBTYPE, F_NAME_RU || ' / ' || F_NAME F_NAMES, CUST_COEF, pl.PRICE, PRICE_DATE, DIAMETER, HT_ID,
              is_photo, photo, nom.remarks, nom.compiled_name_otdel as compiled_name_pot
--              , (nom.f_name_ru || '. ' || (case when nom.col_id in (0,1639,2768,2915) then null else nom.colour||'. ' end) || nom.RUS_MARKS) compiled_name_pot
              , s.QUANTITY
              , nom.compiled_name_otdel
              , nom.id_office
              , tnved, NOM_NEW, NOM_START, NOM_END
              , nom.hol_color, nom.NAME_CODE, nom.hol_pack
              , u.nsi_name
         FROM NOMENCLATURE_MAT_VIEW NOM, PRICE_LIST PL, store_main s, nsi_units u
              WHERE nom.ID_DEPARTMENTS = ID_DEPARTMENTS_ and (nom.id_office in (1,v_office))
                    AND NOM.N_ID = PL.N_ID(+)
                    and nom.n_id = s.n_id(+) and s.store_type(+) = 1
                    and nom.vbn = u.nsi_units_id(+)
                    and nom.notuse = 0 and nom.fst_id not in (const_cargo, const_cargo_62)
              order by compiled_name_otdel, QUANTITY
                    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_nomenclature', '');
       RAISE_APPLICATION_ERROR (-20207, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_nomenclature;



--
--  Достаем мправочник по названиям цветка
--
PROCEDURE get_fn_view
(
    ID_DEPARTMENTS_   in number,
    cursor_           out ref_cursor
)
is
begin

  open cursor_ for
       SELECT FN_ID, F_NAME_RU FROM FN_VIEW
       WHERE ID_DEPARTMENTS =ID_DEPARTMENTS_ and ID_OFFICE=const_office
       ORDER BY F_NAME_RU;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_fn_view', '');
       RAISE_APPLICATION_ERROR (-20208, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_fn_view;





--
--  Выбор наличия перевода у спецификации
--
PROCEDURE NEED_TRANSLATION_SPEC
(
    SPEC_CODE_  in varchar2,
    cursor_     out ref_cursor
)
is
begin

  open cursor_ for
    SELECT HS_ID, NEED_TRANSLATION NT, SPEC_NAME
    FROM HOL_SPECIFICATIONS
    WHERE SPEC_CODE = SPEC_CODE_;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.NEED_TRANSLATION_SPEC', '');
       RAISE_APPLICATION_ERROR (-20209, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END NEED_TRANSLATION_SPEC;


--
--  Выбор содержания спецификации
--
PROCEDURE GET_SPECIFICATION_CONTENT
(
    HS_ID_       in number,
    CONTENT_HOL_ in varchar2,
    cursor_      out ref_cursor
)
is
begin

  open cursor_ for
    SELECT sc_id, hs_id, content_hol, content_rus
    FROM SPECIFICATION_CONTENT
    WHERE HS_ID = HS_ID_ AND CONTENT_HOL = CONTENT_HOL_;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.GET_SPECIFICATION_CONTENT', '');
       RAISE_APPLICATION_ERROR (-20210, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END GET_SPECIFICATION_CONTENT;




--
--  Проверка новой спецификации и добалвение
--
PROCEDURE CheckSpecifications
(
    SPEC_CODE_  in varchar2,
    MARK_V_     in varchar2,
    text_str    out varchar2,
    cursor_     out ref_cursor
)
is
  HS_ID_       number;
  NT_          number;
  SPEC_NAME_   varchar2(50);

  sc_id_       number;
  content_hol_ varchar2(255);
  content_rus_ varchar2(255);

  cursor f_ is
    SELECT HS_ID, NEED_TRANSLATION NT, SPEC_NAME FROM HOL_SPECIFICATIONS WHERE SPEC_CODE = SPEC_CODE_;

  cursor c_ is
    SELECT sc_id, content_hol, content_rus FROM SPECIFICATION_CONTENT
      WHERE HS_ID = HS_ID_ AND CONTENT_HOL = MARK_V_;

begin
  text_str := '';

  -- Проверяем наличие перевода
    open f_;
    fetch f_ into HS_ID_, NT_, SPEC_NAME_;
    close f_;

  -- Если нет ошибки и спецификация требует перевода
  if ( text_str = '' and NT_ > 0) then
    open c_;
    fetch c_ into sc_id_, content_hol_, content_rus_;
    close c_;
  end if;

end CheckSpecifications;



--
--  Достаем инвойсы
--
PROCEDURE get_inv_register
(
    ID_DEPARTMENTS_  in number,
    SHOW_SHORT_      in number,
    v_office         in number,
    cursor_          out ref_cursor
)
is
begin

  if (SHOW_SHORT_ = 1) then
    open cursor_ for
      select a.*, 0 as d_check,
         case when AS_IS_POS = 0 and (done_num > 0 or ready_pos > 0) then 100 else
              case when done_num = 0 then 0 else round( (done_num / AS_IS_POS) * 100, 2 )
              end end procent_d
      from (
        SELECT IRF.INV_ID, IRF.INV_ID as INV_ID_, IRF.INV_DATE, IRF.COMMENTS, IRF.INV_SUM, IRF.SENDED_TO_WAREHOUSE, IRF.WAREHOUSE_SENDED_DATE, IRF.IPP_ID,
               IRF.IPP_COMMENT, IRF.READY_POS, IRF.AS_IS_POS, IRF.S_ID_DEFAULT, IRF.C_ID_DEFAULT, IRF.SUPPLIER_DATE, IRF.SUPPLIER_NUMBER,
               IRF.TOTAL_SUM, IRF.AS_IS_UNITS, IRF.READY_UNITS, IRF.DONE_NUM, IRF.PAST_NUM, IRF.inv_minus, IRF.S_NAME_RU, is_minus, minus_inv_id
               , price, price_done, BRIEF, id_office
         FROM INVOICE_REGISTER_FULL IRF
          WHERE IRF.ID_DEPARTMENTS = ID_DEPARTMENTS_ and (irf.id_office = v_office or v_office = 0)
                and IRF.SENDED_TO_WAREHOUSE = 0
      ) a
      ORDER BY a.INV_DATE DESC;
  else
    open cursor_ for
      select a.*, 0 as d_check,
         case when AS_IS_POS = 0 and (done_num > 0 or ready_pos > 0) then 100 else
              case when done_num = 0 then 0 else round( (done_num / AS_IS_POS) * 100, 2 )
              end end procent_d
      from (
        SELECT IRF.INV_ID, IRF.INV_ID as INV_ID_, IRF.INV_DATE, IRF.COMMENTS, IRF.INV_SUM, IRF.SENDED_TO_WAREHOUSE, IRF.WAREHOUSE_SENDED_DATE, IRF.IPP_ID,
               IRF.IPP_COMMENT, IRF.READY_POS, IRF.AS_IS_POS, IRF.S_ID_DEFAULT, IRF.C_ID_DEFAULT, IRF.SUPPLIER_DATE, IRF.SUPPLIER_NUMBER,
               IRF.TOTAL_SUM, IRF.AS_IS_UNITS, IRF.READY_UNITS, IRF.DONE_NUM, IRF.PAST_NUM, IRF.inv_minus, IRF.S_NAME_RU, is_minus, minus_inv_id
               , price, price_done, BRIEF, id_office
         FROM INVOICE_REGISTER_FULL IRF
          WHERE IRF.ID_DEPARTMENTS = ID_DEPARTMENTS_ and (irf.id_office = v_office or v_office = 0)
                --and IRF.SENDED_TO_WAREHOUSE = (1 - SHOW_SHORT_)
      ) a
      ORDER BY a.INV_DATE DESC;
  end if;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_inv_register', '');
       RAISE_APPLICATION_ERROR (-20211, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_inv_register;



--
--  Достаем инвойсы
--
PROCEDURE get_inv_register_new
(
    ID_DEPARTMENTS_  in number,
    SHOW_SHORT_      in number,
    pARCHIVE         in number,
    v_office         in number,
    pNom             in varchar2,
    cursor_          out ref_cursor
)
is
begin

  open cursor_ for
    select a.*, 0 as d_check
          , a.inv_id as inv_id_
          , (AS_IS_POS - READY_POS) as past_num
          , case when AS_IS_POS = 0 then 100 else
                case when READY_POS = 0 then 0 else round( (READY_POS / AS_IS_POS) * 100, 2 )
                    end end procent_d
    from (
        select a.*
              , case when b.ppli_id is null then 0 else 1 end as price
              , nvl(b.finished,0) as price_done
/*
              , case when nvl(b.INV_ID,( nvl(b2.INV_ID2, ( nvl(b3.INV_ID3, b4.inv_id4) )) )) is null then 0 else 1 end price
              , case when b.INV_ID is not null and b.finished =1 then 1 else
                case when b2.INV_ID2 is not null and b2.finished =1 then 1 else
                case when b3.INV_ID3 is not null and b3.finished =1 then 1 else
                case when b4.INV_ID4 is not null and b4.finished =1 then 1 else
                0 end end end end price_done
*/
              -- as_is
              , ( select count(1) from invoice_data_as_is z where z.inv_id = a.inv_id ) as AS_IS_POS
              , ( select count(1) from invoice_data_as_is z where z.inv_id = a.inv_id and z.recognised=1 ) as READY_POS
              , case when const_office=1 then ( select sum(z.total_amount) from invoice_data_as_is z where z.inv_id = a.inv_id ) else 0 end TOTAL_SUM_AS_IS
              -- to_be
              , ( select count(1) from invoice_data y where y.inv_id = a.inv_id ) as TO_BE_POS
              , ( select sum(y.TOTAL_SUM) from invoice_data y where y.inv_id = a.inv_id ) as TOTAL_SUM_TO_BE
              , case when minus_inv_id > 0 then ( select sum(c.units*c.price_per_unit - nvl(b.units,0)*nvl(b.price_per_unit,0)) as profit
                        from invoice_data c, invoice_data b where c.inv_id = a.inv_id and b.inv_id(+) = a.minus_inv_id and c.n_id = b.n_id(+)
                ) else 0 end TOTAL_SUM_FROM_MINUS
        from (
            SELECT IR.INV_ID, IR.INV_DATE, IR.COMMENTS, IR.INV_SUM, IR.SENDED_TO_WAREHOUSE,
                  IR.WAREHOUSE_SENDED_DATE, IR.SUPPLIER_DATE, IR.SUPPLIER_NUMBER, IR.IPP_ID,
                  IR.ID_DEPARTMENTS, IR.inv_minus, IR.in_file, case when IR.in_file is null then 0 else 1 end is_file,
                  case when IR.inv_minus = 0 then 0 else 1 end is_minus,
                  IR.COMMENTS || ' (' || TO_CHAR(IR.INV_DATE,'DD.MM.YYYY') || ')' INVOICE_TITLE,
                  IR.S_ID_DEFAULT, IR.C_ID_DEFAULT, IR.minus_inv_id
                  , s.s_name_ru
                  , ipp.IPP_COMMENT
                  , ir.id_office, o.brief
                  , e.office
                  , ir.status as iArchive
                  , ir.country_gtd
            FROM INVOICE_REGISTER IR, SUPPLIERS S, INVOICE_PRICE_PACK IPP, offices o, (select distinct office, id_doc, id_invoice from export_to_fillials) e
            WHERE ir.id_departments = ID_DEPARTMENTS_ and (ir.id_office = v_office or v_office = 0)
                  and (ir.SENDED_TO_WAREHOUSE = 0 or SHOW_SHORT_ = 0)
                  and ir.s_id_default = s.s_id
                  and ir.ipp_id = ipp.IPP_ID(+)
                  and ir.id_office = o.id_office
                  and ir.inv_id = e.ID_INVOICE(+)
                  and (ir.status = pARCHIVE)
                  and (
                    pNom is null
                    or exists (select z.n_id from invoice_data z, nomenclature_mat_view nom
                                where z.inv_id = ir.inv_id
                                  and z.n_id=nom.n_id
                                  and (
                                    lower(nom.compiled_name_otdel) like '%'||lower(pNom)||'%'
                                    or nvl(nom.bar_code,nom.code) like '%'||pNom||'%'
                                    or lower(nom.h_code) like '%'||lower(pNom)||'%'
                                  )
                              )
                  )
        ) a
        left outer join PREPARE_PRICE_LIST_INDEX b on a.inv_id in (b.inv_id, b.inv_id2, b.inv_id3, b.inv_id4) or b.PACK_ID = a.IPP_ID
/*
        , PREPARE_PRICE_LIST_INDEX b, PREPARE_PRICE_LIST_INDEX b2, PREPARE_PRICE_LIST_INDEX b3, PREPARE_PRICE_LIST_INDEX b4
        where a.inv_id = b.inv_id(+)
            and a.inv_id = b2.inv_id2(+)
            and a.inv_id = b3.inv_id3(+)
            and a.inv_id = b4.inv_id4(+)
*/
    ) a
    order by inv_id desc
    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_inv_register_new', '');
       RAISE_APPLICATION_ERROR (-20212, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_inv_register_new;


--
--  Достаем что в инвойсе сыром
--
PROCEDURE get_inv_register_asis
(
    INV_ID_  in integer,
    cursor_  out ref_cursor
)
is
begin

  open cursor_ for
    SELECT a.*
      FROM INVOICE_DATA_AS_IS a
        WHERE a.INV_ID = INV_ID_
             -- AND (recognised is null or recognised = 0)
        ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_inv_register_asis', '');
       RAISE_APPLICATION_ERROR (-20212, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_inv_register_asis;



--
--  Достаем что в инвойсе разобранном
--
PROCEDURE get_inv_register_done
(
    INV_ID_  in integer,
    cursor_  out ref_cursor
)
is
begin

  open cursor_ for
    SELECT 0 as D_CHECK, ind.inv_id, ind.n_id, ind.units, ind.price_per_unit, ind.total_sum, ind.amount_in_the_pack, ind.invoice_data_id, ind.invoice_data_as_is_id, full_name,
        F_NAME, F_NAME_RU, len, colour, nom.country, s_name_ru, hol_marks as inv_marks,  rus_marks, diameter, FT_ID, f_type, FST_ID, f_sub_type,
        cust_coef, ind.gtd, nom.h_code, ind.sended_to_warehouse, nvl(nom.PACK,ind.amount_in_the_pack) as PACK, nom.hol_pack, ind.STORNED_DATA,
        DECODE(ind.STORNED_DATA,0,'Не сторнировано','Сторнировано') STORNED_TEXT,
        nom.REMARKS, CODE, nom.BAR_CODE, is_photo, photo
        , count(nom.n_id) over(partition by nom.n_id, ind.STORNED_DATA) as nn
        , src.truck, src.trolley
        --, src.SRC_TROLLEY
        , case when nom.id_departments=61 then src.order_number||'.'||src.src_trolley else src.src_trolley end src_trolley
        , src.CLIENT
        , dense_rank() over(PARTITION by src.truck order by src.order_number, src.trolley, src.src_trolley) as trolley_calc
        , ind.units / decode(nvl(nom.PACK,ind.amount_in_the_pack),null,1,0,1,nvl(nom.PACK,ind.amount_in_the_pack)) as units_print
        , nom.compiled_name_otdel, nom.h_name, nom.NOPRINT, nom.NOTUSE
        , nom.fn_id, nom.c_id, nom.s_id, nom.col_id, nom.ht_id,nom.WEIGHT, nom.WEIGHTDRY, nom.VBN, nom.TNVED, nom.hol_type
        , ind.GTD_COUNTRY
        , c.country as gtd_country_name
--        , nom.DIAMETER, nom.CUST_COEF, nom.REMARKS
        , src.NOM_NEW, src.NOM_START, src.NOM_END, ind.NOM_ADD, ind.NOM_SPECIAL
        , id.inv_id as parent, nom.hol_color, nom.name_code
        , u.nsi_name
    FROM invoice_data ind, invoice_data_as_is src,
         nomenclature_mat_view nom, COUNTRIES c, invoice_data id, nsi_units u
    WHERE ind.inv_id = INV_ID_
          and ind.n_id = nom.n_id
          and ind.invoice_data_as_is_id  = src.invoice_data_as_is_id(+)
          and ind.GTD_COUNTRY = c.c_id(+)
          and ind.INVOICE_DATA_ID = id.PARENT_ID(+)
          and nom.vbn = u.nsi_units_id(+)
    order by n_id, STORNED_DATA, abs(units);

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_inv_register_done', '');
       RAISE_APPLICATION_ERROR (-20213, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_inv_register_done;




--
--  Добавление спецификации к новой номенклатуре
--
PROCEDURE ADD_SPEC_TO_NEW_NOM
(
    SPEC_CODE_  in varchar2,
    N_ID_       in number,
    HS_VAL_     in varchar2,
    ORD_        in number,
    text_str    out varchar2
)
is
  HS_ID_       number;

  cursor f_ is
    SELECT HS_ID FROM HOL_SPECIFICATIONS WHERE SPEC_CODE = SPEC_CODE_;

begin
  text_str := '';

  begin
  -- Проверяем наличие перевода
    open f_;
    fetch f_ into HS_ID_;
    close f_;

  EXCEPTION
       WHEN NO_DATA_FOUND
       THEN
         text_str := 'У данного параметра нет голландского перевода! Операция невозможна!';
         raise;
       WHEN TOO_MANY_ROWS
       THEN
         text_str := 'У данного параметра выбраны несколько переводов! Операция невозможна!';
         raise;
  END;

  begin
      INSERT INTO NOM_SPECIFICATIONS (N_ID,HS_ID,HS_VAL,ORD,id_office,date_change) VALUES (N_ID_, HS_ID_, HS_VAL_, ORD_, const_office, sysdate);
      nomenclature2_pkg.sync_nomenclature_one(N_ID_);
      commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.ADD_SPEC_TO_NEW_NOM', '');
       RAISE_APPLICATION_ERROR (-20214, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  end;

end ADD_SPEC_TO_NEW_NOM;




--
--  Удаление сырого инвойса
--
PROCEDURE DEL_INV_SOURCE
(
    INVOICE_DATA_AS_IS_ID_  in number
)
IS
begin

  DELETE FROM INVOICE_DATA_AS_IS
  WHERE INVOICE_DATA_AS_IS_ID = INVOICE_DATA_AS_IS_ID_;
  commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.DEL_INV_SOURCE', '');
       RAISE_APPLICATION_ERROR (-20215, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end DEL_INV_SOURCE;



--
--  Достаем спецификации к номенклатуре
--
PROCEDURE get_spec_view
(
    N_ID_    in integer,
    cursor_  out ref_cursor
)
is
begin

  open cursor_ for
    SELECT N_ID, HS_ID, SC_ID, HS_VAL, ORD, SPEC_CODE, SPEC_NAME, SPEC_HOL_NAME,
            ADDITION, RUSSIAN_ADDITION, NEED_TRANSLATION, CONTENT_HOL, CONTENT_RUS
      FROM SPECIFICATION_VIEW
        WHERE N_ID = N_ID_;

  EXCEPTION
  WHEN OTHERS THEN
         LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_spec_view', '');
       RAISE_APPLICATION_ERROR (-20216, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_spec_view;



--
--  Добавление спецификации к новой номенклатуре
--
PROCEDURE ADD_SPEC_TO_NEW_NOM2
(
    HS_ID_      in number,
    N_ID_       in number,
    HS_VAL_     in varchar2,
    ORD_        in number,
    text_str    out varchar2
)
is

begin
  text_str := '';

  INSERT INTO NOM_SPECIFICATIONS (N_ID,HS_ID,HS_VAL,ORD,id_office,date_change) VALUES (N_ID_, HS_ID_, HS_VAL_, ORD_, const_office, sysdate);
  nomenclature2_pkg.sync_nomenclature_one(N_ID_);
  commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.ADD_SPEC_TO_NEW_NOM2', '');
       RAISE_APPLICATION_ERROR (-20217, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end ADD_SPEC_TO_NEW_NOM2;




--
--  Добавляем пачку для инвойсов
--
PROCEDURE ADD_PRICE_PACK
(
  IPP_COMMENT_        IN VARCHAR2,
  in_id_              in out number
)
is
  NEW_IPP_ID INTEGER;

begin

  SELECT get_office_unique('IPP_ID') INTO NEW_IPP_ID FROM DUAL;
  if (NEW_IPP_ID > 0) then
     INSERT INTO INVOICE_PRICE_PACK VALUES (NEW_IPP_ID, sysdate, IPP_COMMENT_, const_office, sysdate);
     in_id_ := NEW_IPP_ID;
     commit;
    end if;

EXCEPTION WHEN OTHERS THEN
      in_id_ := -1;
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.ADD_PRICE_PACK', '');
      RAISE_APPLICATION_ERROR (-20218, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end ADD_PRICE_PACK;


--
--  Удаляем пачку для инвойсов
--
PROCEDURE DEL_PRICE_PACK
(
  IPP_ID_                    IN NUMBER
)
is
begin

  UPDATE INVOICE_REGISTER SET IPP_ID = NULL, date_change=sysdate WHERE IPP_ID = IPP_ID_;
  DELETE FROM INVOICE_PRICE_PACK WHERE IPP_ID = IPP_ID_;
  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.DEL_PRICE_PACK', '');
      RAISE_APPLICATION_ERROR (-20219, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end DEL_PRICE_PACK;



--
--  Проставляем инвойсам значения
--
PROCEDURE SET_TO_INV_DONE
(
  GTD_                  IN varchar2,
  CUST_COEF_            IN NUMBER,
  SENDED_TO_WAREHOUSE_  IN NUMBER,
  c_def_                IN NUMBER,
  id_str_               in varchar2
)
is
begin

  if GTD_ is not null then
    execute immediate 'UPDATE INVOICE_DATA SET GTD=:p1, GTD_COUNTRY=:p2, date_change=sysdate WHERE INVOICE_DATA_ID IN ('||id_str_||')' using GTD_, c_def_;
  end if;

  if CUST_COEF_ <> 0 then
    execute immediate 'UPDATE NOMENCLATURE SET CUST_COEF = :p1, date_change=sysdate WHERE N_ID IN (SELECT DISTINCT N_ID FROM INVOICE_DATA WHERE INVOICE_DATA_ID IN ('||id_str_||'))' using CUST_COEF_;
    execute immediate 'UPDATE NOMENCLATURE_MAT_VIEW SET CUST_COEF = :p1 WHERE N_ID IN (SELECT DISTINCT N_ID FROM INVOICE_DATA WHERE INVOICE_DATA_ID IN ('||id_str_||'))' using CUST_COEF_;
  end if;

  if SENDED_TO_WAREHOUSE_ is not null and SENDED_TO_WAREHOUSE_ <> 0 then
    execute immediate 'UPDATE INVOICE_DATA SET SENDED_TO_WAREHOUSE = :p1, date_change=sysdate WHERE N_ID IN (SELECT DISTINCT N_ID FROM INVOICE_DATA WHERE INVOICE_DATA_ID IN ('||id_str_||'))' using SENDED_TO_WAREHOUSE_;
  end if;

  commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.SET_TO_INV_DONE', '');
      RAISE_APPLICATION_ERROR (-20220, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end SET_TO_INV_DONE;



--
--  Достаем номенклатуру по ID
--
PROCEDURE GET_NOMENCLATURE_ID
(
    ID_DEPARTMENTS_   in number,
    n_id_             in number,
    cursor_           out ref_cursor
)
is
begin

  if ( n_id_ <= 0 ) then
    open cursor_ for
       SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, NOM.N_ID, FN_ID, FT_ID, FST_ID, S_ID, C_ID,
              COL_ID, H_CODE, H_NAME, CODE, BAR_CODE, LEN, PACK, VBN, HOL_TYPE, WEIGHT, WEIGHTDRY, S_NAME_RU, COLOUR, COUNTRY,
              TYPE_SUBTYPE, F_NAME_RU || ' / ' || F_NAME F_NAMES, CUST_COEF, DIAMETER, HT_ID
              , is_photo, photo, remarks, nom.rus_marks
              , nom.compiled_name_otdel, 0 as units, id_office, tnved
              , NOM_NEW, NOM_START, NOM_END, nom.hol_color, nom.NAME_CODE, nom.HOL_PACK
         FROM NOMENCLATURE_MAT_VIEW NOM
              WHERE ID_DEPARTMENTS = ID_DEPARTMENTS_ and (id_office in (1,const_office))
                    and nom.notuse = 0 and nom.fst_id not in (const_cargo, const_cargo_62)
              order by compiled_name_otdel
              ;
  else
    open cursor_ for
       SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, NOM.N_ID, FN_ID, FT_ID, FST_ID, S_ID, C_ID,
              COL_ID, H_CODE, H_NAME, CODE, BAR_CODE, LEN, PACK, VBN, HOL_TYPE, WEIGHT, WEIGHTDRY, S_NAME_RU, COLOUR, COUNTRY,
              TYPE_SUBTYPE, F_NAME_RU || ' / ' || F_NAME F_NAMES, CUST_COEF, DIAMETER, HT_ID
              , is_photo, photo, remarks, nom.rus_marks
              , nom.compiled_name_otdel, 0 as units, id_office, tnved
              , NOM_NEW, NOM_START, NOM_END, nom.hol_color, nom.NAME_CODE, nom.HOL_PACK
         FROM NOMENCLATURE_MAT_VIEW NOM
              WHERE ID_DEPARTMENTS = ID_DEPARTMENTS_ and nom.n_id = n_id_;
  end if;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.GET_NOMENCLATURE_ID', '');
       RAISE_APPLICATION_ERROR (-20221, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end GET_NOMENCLATURE_ID;



  /*Процедура производит сторнирование позиции инвойса*/
  PROCEDURE UPDATE_DATA
  (
      IN_INVOICE_DATA_ID       IN NUMBER,
      IN_N_ID                  IN NUMBER,
      IN_UNITS                 IN NUMBER,
      IN_PRICE_PER_UNIT        IN NUMBER,
      IN_TOTAL_SUM             IN NUMBER,
      IN_AMOUNT_IN_THE_PACK    IN NUMBER DEFAULT NULL,
      OUT_INVOICE_DATA_ID      OUT NUMBER,
      OUT_RES                  OUT NUMBER,
      OUT_TEXT                 OUT VARCHAR2
  )
  AS
  BEGIN
      OUT_RES := 0;
      OUT_TEXT := 'Неизвестная ошибка!';

      UPDATE INVOICE_DATA SET UNITS=IN_UNITS, PRICE_PER_UNIT=IN_PRICE_PER_UNIT, TOTAL_SUM=IN_TOTAL_SUM, date_change=sysdate
      WHERE INVOICE_DATA_ID = IN_INVOICE_DATA_ID;
      OUT_INVOICE_DATA_ID := IN_INVOICE_DATA_ID;
      commit;
        OUT_RES := 1;
        OUT_TEXT := 'Запись успешно отсторнирована.';

  EXCEPTION
        WHEN OTHERS THEN
             creator.LOG_ERR(SQLERRM, SQLCODE, 'INVOICE_PKG.UPDATE_DATA', '');
             RAISE_APPLICATION_ERROR (-20222, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

  END UPDATE_DATA;


--
--  Доделаем клейм
--
PROCEDURE INV_DONE_MINUS
(
  in_INV_ID         in number
  , in_INV_PRIME    in number
  , OUT_RES         OUT NUMBER
  , OUT_TEXT        OUT VARCHAR2
)
as
    v_sended    number;
    v_ppli_id   number;
    v_finished  number;
    v_s_id      number;
    v_id_claim  number;

    EXCH_RATE   NUMBER;
    PCC         NUMBER;
    PC          NUMBER;
    UCC         NUMBER;
    OLD_PRICE_COUNT number;
    INT_OLD_PRICE   number;
    FIN_PR      number;
    CC          number;

    v_param1    number;
    v_var1      number;

    cursor f_ is
        SELECT a.n_id, a.units, a.price_per_unit, a.total_sum, a.amount_in_the_pack,
               a.invoice_data_id, a.sended_to_warehouse, a.gtd, a.storned_data, a.gtd_country,
               a.NOM_ADD, a.NOM_SPECIAL, a.TO_CLIENT, a.parent_id
        FROM invoice_data a
        where a.inv_id = in_INV_ID and a.storned_data = 0
        ;
    curr_f                   f_%rowtype;

begin
    v_id_claim := 0;

    /* проверим есть ли цены и завершены ли они на родительский инвойс */
    --select count(1) into cnt_ from PREPARE_PRICE_LIST_INDEX where INV_ID = in_INV_PRIME;
    select count(1) into cnt_
      from PREPARE_PRICE_LIST_INDEX p, invoice_register r
      where  in_INV_PRIME   = r.inv_id
        and ( r.inv_id in (p.inv_id, p.inv_id2, p.inv_id3, p.inv_id4) or r.ipp_id = p.pack_id );

    if (cnt_ = 1) then
--        select a.ppli_id, a.finished into v_ppli_id, v_finished
--        from PREPARE_PRICE_LIST_INDEX a where a.INV_ID = in_INV_PRIME;
      select p.ppli_id, p.finished into v_ppli_id, v_finished
        from PREPARE_PRICE_LIST_INDEX p, invoice_register r
        where  in_INV_PRIME   = r.inv_id
          and ( r.inv_id in (p.inv_id, p.inv_id2, p.inv_id3, p.inv_id4) or r.ipp_id = p.pack_id );
    else
        v_ppli_id  := 0;
        v_finished := 0;
    end if;

    /* 1-й этап. Нет ни цен ни загрузки на склад. Делаем сторнирование у родительского инвойса */
    if (v_sended = 0 and v_ppli_id = 0 and v_finished = 0) then

        claims_pkg.claims_edit(v_id_claim,in_INV_ID,sysdate(),0,NULL,OUT_RES, OUT_TEXT);
        if (OUT_RES >= 0) then
            open f_;
            loop
               fetch f_ into curr_f;
               exit when f_%notfound;

               select count(1) into cnt_ from invoice_data b where b.inv_id = in_INV_PRIME and b.n_id = curr_f.n_id and b.storned_data = 0 and b.invoice_data_id = curr_f.parent_id;
               /* Если брак, или недосдача, или нет товара */
               if (cnt_ = 1) then
                   select b.invoice_data_id, b.units into cnt_, v_var1
                   from invoice_data b
                   where b.inv_id = in_INV_PRIME and b.n_id = curr_f.n_id and b.storned_data = 0 and b.invoice_data_id = curr_f.parent_id;
                   INVOICE_DATA_PACKAGE.UPDATE_DATA(cnt_, curr_f.n_id, curr_f.UNITS, curr_f.PRICE_PER_UNIT, curr_f.TOTAL_SUM, curr_f.AMOUNT_IN_THE_PACK, v_param1, OUT_RES, OUT_TEXT);

                   v_param1 := 0;
                   -- ID_CLIENTS = 7064  - 76 клиент
                   claims_pkg.claims_edit_list(v_param1,curr_f.n_id,v_id_claim,2,v_s_id,7064,
                   (v_var1-curr_f.UNITS),
                   curr_f.PRICE_PER_UNIT,1,NULL,0,0,0,NULL,NULL,OUT_RES,OUT_TEXT);
               end if;

               /* Есди нет товара */
               if (cnt_ = 0) then
                   v_param1 := 0;
                   INVOICE_DATA_PACKAGE.INSERT_DATA(in_INV_PRIME,NULL,curr_f.n_id,curr_f.UNITS,curr_f.PRICE_PER_UNIT,curr_f.TOTAL_SUM,curr_f.AMOUNT_IN_THE_PACK,0,NULL,v_param1,curr_f.gtd_country, curr_f.NOM_ADD, curr_f.NOM_SPECIAL, curr_f.TO_CLIENT, curr_f.parent_id);

                   -- ID_CLIENTS = 7064  - 76 клиент
                   v_param1 := 0;
                   claims_pkg.claims_edit_list(v_param1,curr_f.n_id,v_id_claim,2,v_s_id,7064,curr_f.UNITS,curr_f.PRICE_PER_UNIT,1,NULL,0,0,0,NULL,NULL,OUT_RES,OUT_TEXT);
               end if;


            end loop;
            close f_;
            update invoice_register a set a.inv_minus = 1, date_change=sysdate where a.inv_id = in_INV_ID;
            commit;
            OUT_RES := 1;
            OUT_TEXT := 'Позиции в родительском инвойсе сторнированы. Создан клейм ';
        end if;
    end if;
    /* *************************************************************************************** */


    /* 2-й этап. Есть цены, но нет загрузки на склад. Делаем сторнирование у родительского инвойса */
    if (v_sended = 0 and v_ppli_id > 0) then
        OUT_RES := -1;
        OUT_TEXT := 'Нельзя оформить клейм во время создания цен. Дождитест пока инвойс будет подгружен на склад и повторите операцию!';
    end if;

    if (v_sended = 1 and v_ppli_id > 0) then

        claims_pkg.claims_edit(v_id_claim,in_INV_ID,sysdate(),0,NULL,OUT_RES, OUT_TEXT);
        if (OUT_RES >= 0) then
            open f_;
            loop
               fetch f_ into curr_f;
               exit when f_%notfound;

               select count(1) into cnt_ from invoice_data b where b.inv_id = in_INV_PRIME and b.n_id = curr_f.n_id and b.storned_data = 0;
               /* Если брак, или недосдача, или нет товара */
               if (cnt_ = 1) then
                   select b.invoice_data_id, b.units into cnt_, v_var1 from invoice_data b where b.inv_id = in_INV_PRIME and b.n_id = curr_f.n_id and b.storned_data = 0;
                   v_param1 := 0;
                   claims_pkg.claims_edit_list(v_param1,curr_f.n_id,v_id_claim,2,v_s_id,7064,
                   (v_var1-curr_f.UNITS),
                   curr_f.PRICE_PER_UNIT,1,NULL,0,0,0,NULL,NULL,OUT_RES,OUT_TEXT);
               end if;

               /* Есди нет товара */
               if (cnt_ = 0) then
                   v_param1 := 0;
                   -- ID_CLIENTS = 7064  - 76 клиент
                   v_param1 := 0;
                   claims_pkg.claims_edit_list(v_param1,curr_f.n_id,v_id_claim,2,v_s_id,7064,curr_f.UNITS,curr_f.PRICE_PER_UNIT,1,NULL,0,0,0,NULL,NULL,OUT_RES,OUT_TEXT);
               end if;

            end loop;
            close f_;
            OUT_RES := 1;
            OUT_TEXT := 'Позиции в родительском инвойсе сторнированы. Создан клейм ';

            update invoice_register a set a.inv_minus = 3 where a.inv_id = in_INV_ID;
            commit;
        end if;


        commit;
        OUT_RES := 1;
        OUT_TEXT := 'Создан клейм. Данный инвойс необходимо загрузить в цены и на склад.';
    end if;
    /* *************************************************************************************** */


  EXCEPTION
        WHEN OTHERS THEN
             creator.LOG_ERR(SQLERRM, SQLCODE, 'INVOICE_PKG.INV_DONE_MINUS', '');
             RAISE_APPLICATION_ERROR (-20223, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
end INV_DONE_MINUS;










--
--  Печать прихода по инвойсу
--
PROCEDURE print_invoice
(
    v_inv_id  in integer,
    cursor_   out ref_cursor
)
is
begin

  open cursor_ for
    select a.* from (
    SELECT nom.n_id, ind.units, F_NAME, F_NAME_RU, colour, country, s_name_ru, rus_marks, nom.h_code, nom.BAR_CODE,
           nvl(a.trolley,0) as trolley, nvl(a.truck,0) as truck, case when nom.id_departments=61 then a.order_number||'.'||a.src_trolley else a.src_trolley end src_trolley
           , dense_rank() over(PARTITION by a.truck order by a.order_number, a.trolley, a.src_trolley) as trolley_calc
           , nom.F_TYPE, nom.F_SUB_TYPE, nom.ID_DEPARTMENTS
    FROM invoice_data ind,
         nomenclature_mat_view nom,
         invoice_data_as_is a
    WHERE ind.inv_id = v_inv_id
          and ind.n_id = nom.n_id
          and ind.invoice_data_as_is_id = a.invoice_data_as_is_id(+)
          and ind.storned_data = 0
    ) a
    order by case when a.ID_DEPARTMENTS = 62 then 0 else trolley_calc end, src_trolley, F_NAME_RU
    ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.print_invoice', '');
       RAISE_APPLICATION_ERROR (-20238, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end print_invoice;

--
--  Добавим вбронирование позиции
--
PROCEDURE move_to_reserv
(
    v_n_id  in number,
    v_quant in number,
    v_from  in number,
    v_inv   in number
)
as
    p_price_list    number;
begin
  p_price_list := 0;
  if v_from = 0 then
    -- Найдем на складе
    select price into p_price_list from price_list where n_id = v_n_id;
  else
    -- Найдем в ценах
    select max(a.final_price) into p_price_list
    from prepare_price_list a, prepare_price_list_index b
    where b.inv_id = v_inv and a.ppli_id = b.ppli_id and a.n_id = v_n_id;
  end if;

  delete from STORE_DOC_DATA_TEMP where n_id = v_n_id;
  if (v_quant <> 0 and p_price_list <> 0) then
    INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, store_type, PRICE, PRICE_LIST)
    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, v_n_id, v_quant, 1, p_price_list, p_price_list)
    ;
  end if;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.move_to_reserv', '');
       RAISE_APPLICATION_ERROR (-20243, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end move_to_reserv;


--
--  Достанем пачки инвойсов
--
PROCEDURE get_ipp_list
(
    V_OFFICE  in number,
    cursor_   in out ref_cursor
)
is
begin
  open cursor_ for
    select a.IPP_ID, a.IPP_COMMENT from (
        SELECT distinct a.IPP_ID, TO_CHAR(a.IPP_DATE,'DD.MM.YYYY') || ' / ' || IPP_COMMENT as IPP_COMMENT, IPP_DATE
        FROM INVOICE_PRICE_PACK a, invoice_register b
        where a.ipp_id = b.ipp_id(+) and b.INV_MINUS(+) = 0 and SENDED_TO_WAREHOUSE(+) = 0 and a.id_office = V_OFFICE
        ORDER by IPP_DATE desc
    ) a
  ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_ipp_list', '');
       RAISE_APPLICATION_ERROR (-20244, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_ipp_list;


--
--  Вставим пачку инвойсам
--
PROCEDURE SET_INV_TO_PACK
(
  V_IPP_ID      IN NUMBER
  , V_PARAM     in number
  , V_INV_ID    IN NUMBER
)
is
begin

  UPDATE INVOICE_REGISTER SET IPP_ID = decode(V_IPP_ID,0,null,V_IPP_ID), date_change=sysdate WHERE INV_ID = V_INV_ID;
--  commit;

  EXCEPTION WHEN OTHERS THEN
        LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.SET_INV_TO_PACK', '');
      RAISE_APPLICATION_ERROR (-20245, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end SET_INV_TO_PACK;




--
--  Добавляем данные нового сырого инвойса во временную таблицу
--
PROCEDURE INV_REG_INSERT_DATA_TEMP
(
    ORDER_NUMBER_       in number,
    ORDER_MARKNAME_     in varchar2,
    PACKING_MARKS_      in varchar2,
    PACKING_CODE_       in varchar2,
    DESCRIPTION_        in varchar2,
    UNITS_              in number,
    SKU_                in varchar2,
    AMOUNT_IN_THE_PACK_ in number,
    HOL_COLOUR_         in varchar2,
    HOL_SUB_TYPE_       in varchar2,
    MARKS_CONTENT_      in varchar2,
    MARKS_NAMES_        in varchar2,
    SHORT_CODE_         in varchar2,
    SHORT_NAME_         in varchar2,
    BAR_CODE_           in varchar2,
    TRANSLATION_        in varchar2,
    AMOUNT_PER_UNIT_    in number,
    TOTAL_AMOUNT_       in number,
    REMARKS_            in varchar2,
    SPEC_LENGTH_        in number,
    SPEC_HEADS_         in varchar2,
    SPEC_HEADS_SHRUB_   in varchar2,
    SPEC_VD2_           in varchar2,
    SPEC_WIDTH_         in number,
    SPEC_HIGHT_         in number,
    TROLLEY_            in varchar2,
    TRUCK_              in varchar2,
    CLIENT_             in varchar2,
    VOLUME_             in number,
    VOLDRY_             in number,
    NOM_NEW_            in varchar2,
    NOM_START_          in varchar2,
    country_            in varchar2,
    NOM_END_            in varchar2,
    NOM_ADD_            in varchar2,
    NOM_SPEC_           in varchar2,
    NOM_PACK_           in number
)
IS
  INVOICE_DATA_AS_IS_ID_ number;
  v_truck    varchar2(2);
v_sql varchar2(4000);
  v_trolley  number;
  cc         number;
BEGIN
  select case when instr(TRUCK_, 'T1') > 0 or instr(TRUCK_, 'TR1') > 0 or instr(TRUCK_, 'TRUCK 1') > 0 or TRUCK_ = '1' then 1 else
         case when instr(TRUCK_, 'T2') > 0 or instr(TRUCK_, 'TR2') > 0 or instr(TRUCK_, 'TRUCK 2') > 0 or TRUCK_ = '2' then 2 else
         case when instr(TRUCK_, 'T3') > 0 or instr(TRUCK_, 'TR3') > 0 or instr(TRUCK_, 'TRUCK 3') > 0 or TRUCK_ = '3' then 3 else
         case when instr(TRUCK_, 'T4') > 0 or instr(TRUCK_, 'TR4') > 0 or instr(TRUCK_, 'TRUCK 4') > 0 or TRUCK_ = '4' then 4 else
         case when instr(TRUCK_, 'T5') > 0 or instr(TRUCK_, 'TR5') > 0 or instr(TRUCK_, 'TRUCK 5') > 0 or TRUCK_ = '5' then 5 else
         case when instr(TRUCK_, 'T6') > 0 or instr(TRUCK_, 'TR6') > 0 or instr(TRUCK_, 'TRUCK 6') > 0 or TRUCK_ = '6' then 6 else
         case when instr(TRUCK_, 'T7') > 0 or instr(TRUCK_, 'TR7') > 0 or instr(TRUCK_, 'TRUCK 7') > 0 or TRUCK_ = '7' then 7 else
         case when instr(TRUCK_, 'T8') > 0 or instr(TRUCK_, 'TR8') > 0 or instr(TRUCK_, 'TRUCK 8') > 0 or TRUCK_ = '8' then 8 else 0
         end end end end end end end end
  into v_truck from dual;

  v_trolley := 0;
  begin
    if (length(TROLLEY_) > 0) then
      cc := instr(TROLLEY_,'-')-1;
      if cc = 0 then cc := length(TROLLEY_); end if;
      v_trolley := to_number( substr(TROLLEY_, instr(TROLLEY_,'.', -1)+1, cc-instr(TROLLEY_,'.', -1) ) );
    end if;
  EXCEPTION WHEN OTHERS THEN
    v_trolley := 0;
  end;

v_sql := 'INSERT INTO creator.invoice_data_as_is_temp VALUES ('''||ORDER_NUMBER_||''', '''||ORDER_MARKNAME_||''', '''||PACKING_MARKS_||''', '''||PACKING_CODE_||''', '''||DESCRIPTION_||''', '''||UNITS_||''',';
v_sql := v_sql || ' '''||SKU_||''', '''||AMOUNT_IN_THE_PACK_||''', '''||HOL_COLOUR_||''', '''||HOL_SUB_TYPE_||''', '''||MARKS_CONTENT_||''', '''||MARKS_NAMES_||''', '''||SHORT_CODE_||''',';
v_sql := v_sql || ' '''||SHORT_NAME_||''', null, '''||BAR_CODE_||''', '''||TRANSLATION_||''', '''||AMOUNT_PER_UNIT_||''', '''||TOTAL_AMOUNT_||''', '''||REMARKS_||''', '''||SPEC_LENGTH_||''',';
v_sql := v_sql || ' '''||SPEC_HEADS_||''', '''||SPEC_HEADS_SHRUB_||''', '''||SPEC_VD2_||''', '''||SPEC_WIDTH_||''', '''||SPEC_HIGHT_||''', '''||v_trolley||''', '''||v_truck||''',';
v_sql := v_sql || ' '''||CLIENT_||''', '''||TROLLEY_||''', '''||VOLUME_||''', '''||VOLDRY_||''', decode('''||NOM_NEW_||''', NULL, 0, 1), decode('''||NOM_START_||''', NULL, 0, 1), '''||country_||''' );';

  INSERT INTO creator.invoice_data_as_is_temp
  VALUES (
    ORDER_NUMBER_, ORDER_MARKNAME_, PACKING_MARKS_, PACKING_CODE_, DESCRIPTION_, UNITS_, SKU_, AMOUNT_IN_THE_PACK_, HOL_COLOUR_,
    HOL_SUB_TYPE_, MARKS_CONTENT_, MARKS_NAMES_, SHORT_CODE_, SHORT_NAME_, null, BAR_CODE_, TRANSLATION_, AMOUNT_PER_UNIT_,
    TOTAL_AMOUNT_, REMARKS_, SPEC_LENGTH_, SPEC_HEADS_, SPEC_HEADS_SHRUB_, SPEC_VD2_, SPEC_WIDTH_, SPEC_HIGHT_, v_trolley, v_truck,
    CLIENT_, TROLLEY_, VOLUME_, VOLDRY_, decode(NOM_NEW_, NULL, 0, 1), decode(NOM_START_, NULL, 0, 1), country_,
    universal_id.nextval
    , decode(NOM_END_, NULL, 0, 1), decode(NOM_ADD_, NULL, 0, 1), decode(NOM_SPEC_, NULL, 0, 1), decode(NOM_PACK_, NULL, 0, NOM_PACK_)
    );

--  LOG_ERR(v_trolley, cc, 'invoice_pkg.INV_REG_INSERT_DATA_TEMP', v_sql);

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.INV_REG_INSERT_DATA_TEMP', v_sql);
      RAISE_APPLICATION_ERROR (-20246, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INV_REG_INSERT_DATA_TEMP;



--
--  Достаем что в сыром инвойсе во временной таблице
--
PROCEDURE get_src
(
  p_inv_id    in number,
  cursor_  out ref_cursor
)
is
begin

  open cursor_ for
    SELECT row_number() over(partition by a.invoice_data_as_is_id order by a.invoice_data_as_is_id desc) as nn,
       a.inv_id, a.order_number, a.order_markname, a.packing_marks,
       a.packing_code, a.description, a.units, -- a.sku,
        -- гол. упаковка
       nvl(a.sku, a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK_HOL||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks) as sku,
        -- наша упаковка
       --nvl(a.sku, a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks) as sku,
       a.amount_in_the_pack, a.invoice_data_as_is_id, a.hol_colour,
       a.hol_sub_type, a.marks_content, a.marks_names, a.short_code,
       a.short_name, a.recognised, a.bar_code, a.translation,
       a.amount_per_unit, a.total_amount, a.remarks, a.spec_length,
       a.spec_heads, a.spec_heads_shrub, a.spec_vd2, a.spec_width,
       a.spec_hight, a.trolley, a.truck, a.client, a.src_trolley,
       a.id_office, a.date_change, a.volume, a.voldry, a.nom_new,
       a.nom_start, a.country_, a.nom_end, a.nom_add, a.nom_special,
       a.nom_pack, a.nom_pack_hol, a.replacement
       , case when a.replacement is null then 0 else ( select count(*) from nomenclature z where z.H_NAME = a.replacement ) end replacement_is_find
       , n.n_id
       , nvl(n.COMPILED_NAME_OTDEL, nvl(nom.COMPILED_NAME_OTDEL,nom2.COMPILED_NAME_OTDEL)) as COMPILED_NAME_OTDEL
       , nvl(n.code, nvl(nom.code,nom2.code)) as code
       , nvl(n.h_code, nvl(nom.h_code,nom2.h_code)) as h_code
       , nvl(n.remarks, nvl(nom.remarks,nom2.remarks)) as nom_remarks
       , nvl(n.ID_OFFICE, nvl(nom.ID_OFFICE,nom2.ID_OFFICE)) as ID_OFFICE
       , nvl(n.FN_ID, nvl(nom.FN_ID,nom2.FN_ID)) as FN_ID
       , nvl(n.FT_ID, nvl(nom.FT_ID,nom2.FT_ID)) as FT_ID
       , nvl(n.FST_ID, nvl(nom.FST_ID,nom2.FST_ID)) as FST_ID
       , nvl(n.C_ID, nvl(nom.C_ID,nom2.C_ID)) as C_ID
       , nvl(n.S_ID, nvl(nom.S_ID,nom2.S_ID)) as S_ID
       , nvl(n.COL_ID, nvl(nom.COL_ID,nom2.COL_ID)) as COL_ID
       , nvl(n.LEN, nvl(nom.LEN,nom2.LEN)) as LEN
       , nvl(n.PACK, nvl(nom.PACK,nom2.PACK)) as PACK
       , nvl(n.HT_ID, nvl(nom.HT_ID,nom2.HT_ID)) as HT_ID
       , nvl(n.DIAMETER, nvl(nom.DIAMETER,nom2.DIAMETER)) as DIAMETER
       , nvl(n.WEIGHT, nvl(nom.WEIGHT,nom2.WEIGHT)) as WEIGHT
       , nvl(n.WEIGHTDRY, nvl(nom.WEIGHTDRY,nom2.WEIGHTDRY)) as WEIGHTDRY
       , nvl(n.CUST_COEF, nvl(nom.CUST_COEF,nom2.CUST_COEF)) as CUST_COEF
       , nvl(n.VBN, nvl(nom.VBN,nom2.VBN)) as VBN
       , nvl(n.H_NAME, nvl(nom.H_NAME,nom2.H_NAME)) as H_NAME
       , nvl(n.TNVED, nvl(nom.TNVED,nom2.TNVED)) as TNVED
       , nvl(n.HOL_TYPE, nvl(nom.HOL_TYPE,nom2.HOL_TYPE)) as HOL_TYPE
       , nvl(n.IS_PHOTO, nvl(nom.IS_PHOTO,nom2.IS_PHOTO)) as IS_PHOTO
       , nvl(n.PHOTO, nvl(nom.PHOTO,nom2.PHOTO)) as PHOTO
--       , nom.n_id as n_id_desc
       , nvl(nom.n_id, repl.AS_IS_N_ID) as n_id_desc
       , d.INVOICE_DATA_ID
       , kov.checked
      FROM invoice_data_as_is a
        left outer join invoice_data d on d.INVOICE_DATA_AS_IS_ID = a.INVOICE_DATA_AS_IS_ID
        left outer join invoice_data_as_is_map map on map.invoice_data_as_is_id = a.invoice_data_as_is_id
        left outer join nomenclature_mat_view n on n.n_id = map.n_id
        -- гол. упаковка
        --left outer join nomenclature_mat_view nom on nom.notuse = 0 and upper(nom.H_CODE) = upper(a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK_HOL||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks)
        left outer join (select distinct AS_IS_HCODE, n_id as AS_IS_N_ID from INVOICE_DATA_AS_IS_MAP c where c.replacement = 1) repl on repl.AS_IS_HCODE = a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK_HOL||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks
        -- наша упаковка
        --left outer join (select distinct AS_IS_HCODE, n_id as AS_IS_N_ID from INVOICE_DATA_AS_IS_MAP c where c.replacement = 1) repl on repl.AS_IS_HCODE = a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks

        --left outer join nomenclature_mat_view nom on nom.notuse = 0 and upper(nom.H_CODE) = upper(a.short_code||'.'||a.hol_colour||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks)
        left outer join nomenclature_mat_view nom on nom.notuse = 0 and upper(replace(nom.H_CODE,'NA','')) = upper(a.short_code||'.'||decode(a.hol_colour,'NA','',a.hol_colour)||'.'||nvl(a.spec_length,0)||'.'||a.NOM_PACK_HOL||'.'||a.SPEC_HEADS||'.'||a.SPEC_HEADS_SHRUB||'.'||a.SPEC_VD2||'.'||a.remarks)

        left outer join import_flowers_kov kov on kov.nom_code = nom.code and kov.checked = 0
        left outer join nomenclature_mat_view nom2 on nom2.notuse = 0 and nom2.n_id = repl.AS_IS_N_ID

      where a.inv_id = p_inv_id
      ;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.get_src', '');
       RAISE_APPLICATION_ERROR (-20247, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end get_src;


--
-- Выбор неоприходованных инвойсов
--
PROCEDURE select_invoices
(
   id_dep_      in number,
   cursor_      in out ref_cursor
)
IS
BEGIN

  open cursor_ for
    SELECT a.inv_id, inv_date, comments, inv_sum, ipp_id, a.comments as ipp_comment
            , a.id_departments, a.SUPPLIER_DATE, a.SUPPLIER_NUMBER, a.TOTAL_SUM, a.is_minus, a.s_name_ru
            , case when (select min(z.UNITS) from invoice_data z where z.inv_id = a.inv_id ) < 0 and a.is_minus = 0 then 1 else 0 end lowq
            , a.COUNTRY_GTD, a.S_ID_DEFAULT, a.C_ID_DEFAULT, a.AS_IS_POS
      FROM invoice_register_full a
        WHERE a.id_departments = id_dep_
              and a.inv_date > sysdate - 30
              and a.sended_to_warehouse = 0
              and a.inv_minus in (0,3)
              and a.price_done = 0
              and a.id_office = const_office
                ORDER BY inv_date desc;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'invoice_pkg.select_invoices', '');
       RAISE_APPLICATION_ERROR (-20248, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end select_invoices;



--
-- Копирование исходной строки
--
PROCEDURE copy_asis
(
   p_INVOICE_DATA_AS_IS_ID   in out number,
   p_inv_id                  in number
)
IS
  INVOICE_DATA_AS_IS_ID_ number;
BEGIN
  if p_INVOICE_DATA_AS_IS_ID > 0 then

    SELECT get_office_unique('INVOICE_DATA_AS_IS_ID') INTO INVOICE_DATA_AS_IS_ID_ FROM DUAL;

    INSERT INTO INVOICE_DATA_AS_IS
    (
      SELECT p_inv_id, a.order_number, a.order_markname, a.packing_marks,
             a.packing_code, a.description, a.units, a.sku,
             a.amount_in_the_pack, INVOICE_DATA_AS_IS_ID_, a.hol_colour,
             a.hol_sub_type, a.marks_content, a.marks_names, a.short_code,
             a.short_name, a.recognised, a.bar_code, a.translation,
             a.amount_per_unit, a.total_amount, a.remarks, a.spec_length,
             a.spec_heads, a.spec_heads_shrub, a.spec_vd2, a.spec_width,
             a.spec_hight, a.trolley, a.truck, a.client, a.src_trolley,
             a.id_office, sysdate, a.volume, a.voldry, a.nom_new,
             a.nom_start, a.country_, a.nom_end, a.nom_add, a.nom_special,
             a.nom_pack, a.nom_pack_hol, a.replacement
        FROM invoice_data_as_is a
        where a.invoice_data_as_is_id = p_INVOICE_DATA_AS_IS_ID
    );

    p_INVOICE_DATA_AS_IS_ID := INVOICE_DATA_AS_IS_ID_;
  end if;

EXCEPTION
  WHEN others THEN
       LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'invoice_pkg.copy_asis', '');
       RAISE_APPLICATION_ERROR (-20249, 'Запрос не выполнился. ' || SQLERRM||chr(10)||dbms_utility.format_error_backtrace);

end copy_asis;



--
--  Замена текущей страны цветка исходным значением из сырца
--
PROCEDURE change_country_by_asis
(
  p_INVOICE_DATA_ID  in integer
)
is
  v_country_id  number;
  v_n_id        number;
begin
  begin
    select a.c_id into v_country_id
    from countries a, invoice_data b, invoice_data_as_is c
      where c.invoice_data_as_is_id = b.invoice_data_as_is_id and b.invoice_data_id = p_INVOICE_DATA_ID and trim(lower(c.country_)) = lower(a.country_eng);
  EXCEPTION WHEN no_data_found THEN
    v_country_id := 0;
  end;

  select n_id into v_n_id from invoice_data where invoice_data_id = p_INVOICE_DATA_ID;

  if v_country_id > 0 then
    update nomenclature set c_id = v_country_id where n_id = v_n_id;
    nomenclature2_pkg.sync_nomenclature_one(v_n_id);
  end if;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.change_country_by_asis', '');
       RAISE_APPLICATION_ERROR (-20250, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end change_country_by_asis;


--
--  Замена текущего цветка другим
--
PROCEDURE change_nid_by_another
(
  p_INVOICE_DATA_ID  in integer,
  p_new_n_id         in integer
)
is
  v_n_id        number;
begin
  select n_id into v_n_id from invoice_data where invoice_data_id = p_INVOICE_DATA_ID;
  update invoice_data set n_id = p_new_n_id where INVOICE_DATA_ID = p_INVOICE_DATA_ID;
  update PREPARE_PRICE_LIST set n_id = p_new_n_id where INVOICE_DATA_ID = p_INVOICE_DATA_ID;
  commit;

  EXCEPTION
  WHEN OTHERS THEN
       LOG_ERR(SQLERRM, SQLCODE, 'invoice_pkg.change_nid_by_another', '');
       RAISE_APPLICATION_ERROR (-20251, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end change_nid_by_another;

END; -- invoice_pkg
-- End of DDL Script for Package Body CREATOR.BOOKS
/


-- End of DDL Script for Package Body CREATOR.INVOICE_PKG

