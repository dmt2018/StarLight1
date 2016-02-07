-- Start of DDL Script for Package Body CREATOR.PRICE_PKG
-- Generated 10.12.2011 20:56:06 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE price_pkg
IS

CNT   NUMBER;
TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные


PROCEDURE CREATE_PPL_INDEX
(
   in_ppl_comment               IN       VARCHAR2,
   in_prime_coast_coeffitient   IN       FLOAT,
   in_profit_coeffitient        IN       FLOAT,
   in_exchange_rate             IN       FLOAT,
   in_use_cust_coef             IN       NUMBER,
   in_id_departments            IN       NUMBER,
   out_ppli_id                  OUT      NUMBER,
   out_success                  OUT      NUMBER,
   mess_                        OUT      varchar2
);


--  Удаляем прайс
--
PROCEDURE del_price
(
   PPLI_ID_      IN       NUMBER,
   mess_         in oUT   varchar2
);


--
-- загружает указанный инвойс в предварительный прайс - лист.
--
PROCEDURE LOAD_INVOICE
(
  IN_INV_ID  IN NUMBER,
  IN_PPLI_ID IN NUMBER,
  IN_IPP_ID  in number
);


--
-- загружает сток в предварительный прайс - лист.
--
PROCEDURE LOAD_STOCK (
  IN_PPLI_ID        IN NUMBER,
  IN_ID_DEPARTMENTS IN NUMBER,
  IN_FT             IN NUMBER,
  IN_FST            IN NUMBER,
  IN_ID_STORE_TYPE  IN NUMBER
);


--
-- изменяем параметры прайс-листа
--
PROCEDURE change_params (
  PPL_COMMENT_              IN varchar2,
  PRIME_COAST_COEFFICIENT_  IN NUMBER,
  PROFIT_COEFFITIENT_       IN NUMBER,
  EXCHANGE_RATE_            IN NUMBER,
  USE_CUST_COEF_            IN NUMBER,
  PPLI_ID_                  IN NUMBER
);


--
-- Проверка на наличие разных цен на одни и те-же товары.
--
FUNCTION  TEST_PRICE_INDEX
(
  IN_PPLI_ID IN NUMBER
)
RETURN NUMBER;

--
-- Функция сохраняет приготовленные цены, возвращает 1 или 0 в зависимости от успешности
--
PROCEDURE  SAVE_PRICES
(
  IN_PPLI_ID IN NUMBER,
  OUT_RES    IN OUT VARCHAR2
);


--
-- Поставить цену на номенклатуру
--
PROCEDURE SET_PRICE
(
  IN_N_ID IN NUMBER,
  IN_PRICE IN FLOAT
);


--
-- Изменяем цены в соотв. с измененными параметрами
--
PROCEDURE UPDATE_PPL
(
  IN_PPLI_ID IN NUMBER
);



--
--  Статистика
--
PROCEDURE get_stat
(
   ID_           IN       NUMBER,
   id_dep_       in       number,
   date1_        in       date,
   date2_        in       date,
   v_office      in       number,
   cursor_       in out   ref_cursor
);


--
--  достаем данные по райс-листу
--
PROCEDURE get_ppl
(
   PPLI_ID_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  ищем инвойсы неоцененные
--
PROCEDURE get_price_stat
(
   id_dep_       IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  выводим прайс-лист
--
PROCEDURE get_price
(
   ID_DEPT       IN       NUMBER,
   vid_          in       number,
   v_office_     in       number,
   cursor_       in out   ref_cursor
);


--
-- Берем кол-во стикеров со склада
--
PROCEDURE COUNT_STICKERS;


--
-- Берем кол-во стикеров из инвойса
--
PROCEDURE COUNT_INVOICE_STICKERS
(
  IN_INV_ID IN NUMBER
);


--
-- Удаляем количество стикеров
--
PROCEDURE DELETE_STICKERS;


--
-- Берем кол-во стикеров со склада
--
PROCEDURE set_STICKERS
(
  IN_N_ID IN NUMBER,
  param_  in number
);


--
-- Подготавливаем к печати данные
--
PROCEDURE PRINT_PREPARE_ADD
(
 IN_N_ID in NUMBER
);

--
-- Подготавливаем к печати данные
--
PROCEDURE PRINT_PREPARE_ADD2
(
 IN_N_ID in NUMBER,
 IN_INVOICE_DATA_ID in NUMBER
);


--
-- Подготавливаем количество
--
PROCEDURE PRINT_PREPARE
(
 IN_N_ID       in NUMBER
 , IN_STICKERS in NUMBER
);


--
--  выводим список неподгруженных в цены инвойсов
--
PROCEDURE get_not_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  выводим список ценообразований
--
PROCEDURE get_prices
(
   ID_DEPT_      IN       NUMBER,
   v_office      in       number,
   cursor_       in out   ref_cursor
);


--
--  выводим список подгруженных в цены инвойсов
--
PROCEDURE get_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  выводим список ценообразований
--
PROCEDURE get_nacenka
(
   ID_DEPT_      IN       NUMBER,
   v_office      in       number,
   cursor_       in out   ref_cursor
);


--
--  выводим список типов/подтипов
--
PROCEDURE get_fst_view
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
);


--
--  Синхронизируем сток в ценах
--
PROCEDURE sync_ppli
(
   in_ppli_id      IN       NUMBER
);

--
-- апдейтит указанный инвойс в предварительный прайс - лист.
--
PROCEDURE update_INVOICE
(
  IN_PPLI_ID IN NUMBER
);


END;
/

-- Grants for Package
GRANT EXECUTE ON price_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY price_pkg
IS

PROCEDURE CREATE_PPL_INDEX
(
   in_ppl_comment               IN       VARCHAR2,
   in_prime_coast_coeffitient   IN       FLOAT,
   in_profit_coeffitient        IN       FLOAT,
   in_exchange_rate             IN       FLOAT,
   in_use_cust_coef             IN       NUMBER,
   in_id_departments            IN       NUMBER,
   out_ppli_id                  OUT      NUMBER,
   out_success                  OUT      NUMBER,
   mess_                        OUT      varchar2
)
IS
   new_id   NUMBER (15);
BEGIN

   SELECT get_office_unique('ppli_id') INTO new_id FROM DUAL;
   out_ppli_id := new_id;

BEGIN
   INSERT INTO prepare_price_list_index
               (ppli_id, ppl_comment, ppl_date,
                prime_coast_coefficient, profit_coeffitient,
                exchange_rate, finished,use_cust_coef,
                id_departments, id_office)
        VALUES (new_id, in_ppl_comment, TRUNC (CURRENT_DATE),
                in_prime_coast_coeffitient, in_profit_coeffitient,
                in_exchange_rate, 0, in_use_cust_coef,
                in_id_departments, const_office);
   commit;
   out_success := 1;
EXCEPTION
   WHEN OTHERS
   THEN
      out_success := 0;
      mess_ := SQLERRM;
      LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.CREATE_PPL_INDEX', '');
END;
END;


--
--  Удаляем прайс
--
PROCEDURE del_price
(
   PPLI_ID_      IN       NUMBER,
   mess_         in oUT   varchar2
)
IS
BEGIN

  DELETE FROM PREPARE_PRICE_LIST WHERE PPLI_ID = PPLI_ID_;
  DELETE FROM PREPARE_PRICE_LIST_INDEX WHERE PPLI_ID = PPLI_ID_;
  commit;
EXCEPTION
   WHEN OTHERS THEN
      mess_ := SQLERRM;
      LOG_ERR(SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.CREATE_PPL_INDEX', '');
END;


--
-- загружает указанный инвойс в предварительный прайс - лист.
--
PROCEDURE LOAD_INVOICE
(
  IN_INV_ID  IN NUMBER,
  IN_PPLI_ID IN NUMBER,
  IN_IPP_ID  IN NUMBER
)
as
    cursor invo_cur(cur_inv_id NUMBER) is
        select a.N_ID, a.INVOICE_DATA_ID, a.UNITS, a.PRICE_PER_UNIT, a.TOTAL_SUM, a.SENDED_TO_WAREHOUSE, nvl(b.quantity,0) as quantity
        from  invoice_data a, store_main b
        WHERE ( (a.INV_ID = cur_inv_id) or (IN_IPP_ID > 0 and a.INV_ID in (select inv_id from invoice_register c where c.ipp_id = IN_IPP_ID)) )
            AND a.STORNED_DATA = 0
            and a.n_id = b.n_id(+)
        ;
    invo_row invo_cur%rowtype;

    cursor inv_cur is
       select rownum as nn, c.inv_id  from invoice_register c where c.ipp_id = IN_IPP_ID
       ;
    inv_row inv_cur%rowtype;

    NEXT_PPL_ID NUMBER;
    EXCH_RATE NUMBER;
    PCC NUMBER;
    PC NUMBER;
    UCC NUMBER;
    INT_OLD_PRICE FLOAT;
    OLD_PRICE_COUNT INTEGER;
    FIN_PR FLOAT;
    CC FLOAT;

    v_old_inv_id number;
    v_is_minus   number;

begin
   /* Удалим старые данные при подгрузке нового инвойса */
   delete from PREPARE_PRICE_LIST where ppli_id = IN_PPLI_ID;

   /* Проверим, если минусовой инвойс то грузанем предыдущие параметры */
   select a.inv_minus, a.minus_inv_id into v_is_minus, v_old_inv_id from INVOICE_REGISTER a where a.inv_id = IN_INV_ID;
   if v_is_minus = 3 then
      UPDATE PREPARE_PRICE_LIST_INDEX a set (a.EXCHANGE_RATE,a.PROFIT_COEFFITIENT,a.PRIME_COAST_COEFFICIENT,a.USE_CUST_COEF, date_change) =
        (select b.EXCHANGE_RATE,b.PROFIT_COEFFITIENT,b.PRIME_COAST_COEFFICIENT,b.USE_CUST_COEF, sysdate from PREPARE_PRICE_LIST_INDEX b where b.inv_id = v_old_inv_id)
      where a.PPLI_ID = IN_PPLI_ID;
   end if;
   /* */

    SELECT EXCHANGE_RATE,PROFIT_COEFFITIENT,PRIME_COAST_COEFFICIENT,USE_CUST_COEF INTO EXCH_RATE,PC,PCC,UCC FROM PREPARE_PRICE_LIST_INDEX WHERE PPLI_ID = IN_PPLI_ID;
    open invo_cur(IN_INV_ID);
    LOOP
        FETCH invo_cur INTO invo_row;
        EXIT WHEN invo_cur%NOTFOUND;

        SELECT get_office_unique('PPL_ID') INTO NEXT_PPL_ID FROM DUAL;

        SELECT COUNT(*) INTO OLD_PRICE_COUNT FROM PRICE_LIST WHERE N_ID = invo_row.N_ID and id_office = const_office;
        IF OLD_PRICE_COUNT = 1 then
            SELECT PRICE INTO INT_OLD_PRICE FROM PRICE_LIST WHERE N_ID = invo_row.N_ID and id_office = const_office;
        else
            INT_OLD_PRICE := 0;
        end if;
        SELECT CUST_COEF INTO CC FROM NOMENCLATURE WHERE N_ID=invo_row.N_ID;
        IF UCC = 0
          THEN FIN_PR := round((EXCH_RATE*invo_row.PRICE_PER_UNIT*PCC*PC),2);
          ELSE FIN_PR := round((EXCH_RATE*invo_row.PRICE_PER_UNIT*PCC*PC*CC),2);
        END IF;
        INSERT INTO PREPARE_PRICE_LIST(PPLI_ID,    PPL_ID,      INVOICE_AMOUNT, N_ID,          HOL_PRICE,               RUBLE_PRICE, STOCK_AMOUNT, LEFT_AMOUNT, GIVEN_AMOUNT, PRICE_PCC, PRICE_PCC_PC, FINAL_PRICE, LAST_PRICE, INVOICE_DATA_ID, id_office)
                                VALUES(IN_PPLI_ID, NEXT_PPL_ID, invo_row.UNITS, invo_row.N_ID, invo_row.PRICE_PER_UNIT, round((EXCH_RATE*invo_row.PRICE_PER_UNIT),2), invo_row.quantity, invo_row.UNITS, 0, round((EXCH_RATE*invo_row.PRICE_PER_UNIT*PCC),2), round((EXCH_RATE*invo_row.PRICE_PER_UNIT*PCC*PC),2), FIN_PR,INT_OLD_PRICE, invo_row.INVOICE_DATA_ID, const_office);
    END LOOP;
    close invo_cur;

    if IN_IPP_ID = 0 then
        UPDATE prepare_price_list_index SET inv_id = IN_INV_ID, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID;
    else
        open inv_cur;
        LOOP
            FETCH inv_cur INTO inv_row;
            EXIT WHEN inv_cur%NOTFOUND;
            if (inv_row.nn = 1) then UPDATE prepare_price_list_index SET inv_id = inv_row.inv_id, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID; end if;
            if (inv_row.nn = 2) then UPDATE prepare_price_list_index SET inv_id2 = inv_row.inv_id, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID; end if;
            if (inv_row.nn = 3) then UPDATE prepare_price_list_index SET inv_id3 = inv_row.inv_id, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID; end if;
            if (inv_row.nn = 4) then UPDATE prepare_price_list_index SET inv_id4 = inv_row.inv_id, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID; end if;
        end loop;
        close inv_cur;
        update prepare_price_list_index SET PACK_ID = IN_IPP_ID, date_change=sysdate WHERE PPLI_ID = IN_PPLI_ID;
    end if;
    cnt := TEST_PRICE_INDEX(IN_PPLI_ID);
    commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.CREATE_PPL_INDEX', '');
      RAISE_APPLICATION_ERROR (-20400, 'Запрос не выполнился. ' || SQLERRM);

end LOAD_INVOICE;



--
-- апдейтит указанный инвойс в предварительный прайс - лист.
--
PROCEDURE update_INVOICE
(
  IN_PPLI_ID IN NUMBER
)
as
    EXCH_RATE NUMBER;
    PCC NUMBER;
    PC NUMBER;
    UCC NUMBER;

begin
  SELECT EXCHANGE_RATE,PROFIT_COEFFITIENT,PRIME_COAST_COEFFICIENT,USE_CUST_COEF
  INTO EXCH_RATE,PC,PCC,UCC
  FROM PREPARE_PRICE_LIST_INDEX WHERE PPLI_ID = IN_PPLI_ID;

  delete from PREPARE_PRICE_LIST a
  where a.ppli_id = IN_PPLI_ID and a.invoice_data_id is not null
      and a.invoice_data_id not in (select b.invoice_data_id from invoice_data b where b.STORNED_DATA=0 and b.INV_ID in
        (
            select inv_id from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id2 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id3 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id4 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
        )
     )
  ;


  insert into PREPARE_PRICE_LIST a (PPLI_ID, PPL_ID, INVOICE_AMOUNT, N_ID, HOL_PRICE, RUBLE_PRICE, STOCK_AMOUNT, LEFT_AMOUNT, GIVEN_AMOUNT, PRICE_PCC, PRICE_PCC_PC, FINAL_PRICE, LAST_PRICE, INVOICE_DATA_ID, id_office)
  (
    select IN_PPLI_ID, get_office_unique('PPL_ID'), a.UNITS, a.N_ID, a.PRICE_PER_UNIT, round((EXCH_RATE * a.PRICE_PER_UNIT),2)
        , nvl(b.quantity, 0), a.UNITS, 0, round((EXCH_RATE * a.PRICE_PER_UNIT * PCC),2)
        , round((EXCH_RATE * a.PRICE_PER_UNIT * PCC * PC),2)
        , case when e.CUST_COEF = 0 then round((EXCH_RATE*a.PRICE_PER_UNIT*PCC*PC),2) else round((EXCH_RATE*a.PRICE_PER_UNIT*PCC*PC*e.CUST_COEF),2) end
        , nvl(d.PRICE, 0), a.INVOICE_DATA_ID, const_office
    from invoice_data a, store_main b, PREPARE_PRICE_LIST c, PRICE_LIST d, NOMENCLATURE e
    where a.STORNED_DATA=0 and a.INV_ID in
        (
            select inv_id from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id2 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id3 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
            union
            select inv_id4 from prepare_price_list_index c where c.ppli_id = IN_PPLI_ID
        )
        and a.n_id = b.n_id and a.n_id = e.n_id and a.n_id = d.n_id(+)
        and a.invoice_data_id = c.INVOICE_DATA_ID(+) and c.INVOICE_DATA_ID is null
  );
  commit;

end;


--
-- загружает сток в предварительный прайс - лист.
--
PROCEDURE LOAD_STOCK (
  IN_PPLI_ID        IN NUMBER,
  IN_ID_DEPARTMENTS IN NUMBER,
  IN_FT             IN NUMBER,
  IN_FST            IN NUMBER,
  IN_ID_STORE_TYPE  IN NUMBER
)
as
  cursor store_cur is
      select a.N_ID, a.QUANTITY
        from store_main a, NOMENCLATURE_MAT_VIEW b
          WHERE a.QUANTITY > 0 and a.id_office = const_office AND a.N_ID = b.n_id
                and b.ID_DEPARTMENTS = IN_ID_DEPARTMENTS
                and (b.ft_id = IN_FT or IN_FT = 0)
                and (b.fst_id = IN_FST or IN_FST = 0)
                and a.store_type = IN_ID_STORE_TYPE
                and a.n_id not in (select p.n_id from PREPARE_PRICE_LIST p where PPLI_ID=IN_PPLI_ID )
                ;

    store_row store_cur%rowtype;
    NEXT_PPL_ID NUMBER;
    INT_OLD_PRICE FLOAT;
    OLD_PRICE_COUNT INTEGER;

begin
    open store_cur;
    LOOP
        FETCH store_cur INTO store_row;
        EXIT WHEN store_cur%NOTFOUND;

        SELECT get_office_unique('PPL_ID') INTO NEXT_PPL_ID FROM DUAL;

        SELECT COUNT(*) INTO OLD_PRICE_COUNT FROM PRICE_LIST WHERE N_ID = store_row.N_ID;
        IF OLD_PRICE_COUNT = 1 then
            SELECT PRICE INTO INT_OLD_PRICE FROM PRICE_LIST WHERE N_ID = store_row.N_ID;
        else
            INT_OLD_PRICE := 0;
        end if;
        INSERT INTO PREPARE_PRICE_LIST(PPLI_ID,    PPL_ID,      INVOICE_AMOUNT, N_ID,           HOL_PRICE, RUBLE_PRICE, STOCK_AMOUNT,       LEFT_AMOUNT,        GIVEN_AMOUNT, PRICE_PCC, PRICE_PCC_PC, FINAL_PRICE,   LAST_PRICE,    id_office)
                                VALUES(IN_PPLI_ID, NEXT_PPL_ID, 0,              store_row.N_ID, 0,         0,           store_row.QUANTITY, store_row.QUANTITY, 0,            0,         0,            INT_OLD_PRICE, INT_OLD_PRICE, const_office);
    END LOOP;
    commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.LOAD_STOCK', '');
      RAISE_APPLICATION_ERROR (-20401, 'Запрос не выполнился. ' || SQLERRM);

end LOAD_STOCK;



--
-- изменяем параметры прайс-листа
--
PROCEDURE change_params (
  PPL_COMMENT_              IN varchar2,
  PRIME_COAST_COEFFICIENT_  IN NUMBER,
  PROFIT_COEFFITIENT_       IN NUMBER,
  EXCHANGE_RATE_            IN NUMBER,
  USE_CUST_COEF_            IN NUMBER,
  PPLI_ID_                  IN NUMBER
)
as
begin

  UPDATE PREPARE_PRICE_LIST_INDEX SET
    PPL_COMMENT = PPL_COMMENT_,
    PRIME_COAST_COEFFICIENT = PRIME_COAST_COEFFICIENT_,
    PROFIT_COEFFITIENT = PROFIT_COEFFITIENT_,
    EXCHANGE_RATE = EXCHANGE_RATE_,
    USE_CUST_COEF = USE_CUST_COEF_,
    date_change = sysdate
      WHERE PPLI_ID = PPLI_ID_;

  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.change_params', '');
      RAISE_APPLICATION_ERROR (-20402, 'Запрос не выполнился. ' || SQLERRM);

end change_params;



--
-- Проверка на наличие разных цен на одни и те-же товары.
--
FUNCTION  TEST_PRICE_INDEX
(
  IN_PPLI_ID IN NUMBER
)
RETURN NUMBER
AS
BEGIN

    SELECT COUNT (*) INTO CNT
    FROM
      PREPARE_PRICE_LIST PPL1,
      PREPARE_PRICE_LIST PPL2
    WHERE
      PPL1.PPLI_ID = IN_PPLI_ID AND
      PPL2.PPLI_ID = IN_PPLI_ID AND
      PPL1.N_ID = PPL2.N_ID AND
      PPL1.FINAL_PRICE <> PPL2.FINAL_PRICE;
    UPDATE PREPARE_PRICE_LIST SET COL = NULL WHERE PPLI_ID = IN_PPLI_ID;

    IF CNT = 0
    THEN
      RETURN 1;
    ELSE
      /*Отмечаем позиции у кот. одинаковая номенклатура, но разная цена цветом*/
      UPDATE PREPARE_PRICE_LIST PPL
      SET
        COL = 6871293
      WHERE
        PPLI_ID = IN_PPLI_ID AND
        N_ID IN (SELECT N_ID FROM PREPARE_PRICE_LIST
                  WHERE PPL_ID <> PPL.PPL_ID AND
                        FINAL_PRICE <> PPL.FINAL_PRICE AND
                        N_ID = PPL.N_ID AND
                        PPLI_ID = PPL.PPLI_ID);
      COMMIT;
      RETURN 0;
    END IF;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.TEST_PRICE_INDEX', '');
      RAISE_APPLICATION_ERROR (-20403, 'Запрос не выполнился. ' || SQLERRM);

END TEST_PRICE_INDEX;




--
-- Функция сохраняет приготовленные цены, возвращает 1 или 0 в зависимости от успешности
--
PROCEDURE  SAVE_PRICES
(
  IN_PPLI_ID IN NUMBER,
  OUT_RES    IN OUT VARCHAR2
)
IS
    cursor prices (CUR_ppli_id NUMBER) is
    SELECT N_ID,FINAL_PRICE FROM PREPARE_PRICE_LIST WHERE PPLI_ID = CUR_ppli_id;

    prices_row prices%rowtype;
begin

    IF TEST_PRICE_INDEX(IN_PPLI_ID) = 0 THEN
      OUT_RES := 'В прайс-листе есть разные цены на одинаковые позиции! Запись цен невозможна!';
    else
      open prices(IN_PPLI_ID);
      LOOP
          FETCH prices INTO prices_row;
          EXIT WHEN prices%NOTFOUND;
          SET_PRICE(prices_row.N_ID, prices_row.FINAL_PRICE);
      END LOOP;

      UPDATE PREPARE_PRICE_LIST_INDEX
        SET FINISHED = 1, date_change = sysdate
          WHERE PPLI_ID = IN_PPLI_ID;

      COMMIT;
      OUT_RES := 'Операция прошла успешно!';
    END IF;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.SAVE_PRICES', '');
      RAISE_APPLICATION_ERROR (-20404, 'Запрос не выполнился. ' || SQLERRM);

end SAVE_PRICES;



--
-- Поставить цену на номенклатуру
--
PROCEDURE SET_PRICE
(
  IN_N_ID IN NUMBER,
  IN_PRICE IN FLOAT
)
as
  quantity_st       number;
    last_price_st       number;
    store_type_st     number;
    SP_OTDEL                number;
    SP_OPERATOR_NAME varchar2(50);
begin

    INSERT INTO PRICE_LIST_ALL (N_ID,PRICE,PRICE_DATE,id_office) VALUES (IN_N_ID,ROUND(IN_PRICE,2),SYSDATE,const_office);

end SET_PRICE;



--
-- Изменяем цены в соотв. с измененными параметрами
--
PROCEDURE UPDATE_PPL
(
  IN_PPLI_ID IN NUMBER
)
as
  PCC FLOAT;
  PC  FLOAT;
  ER  FLOAT;
  UCC NUMBER;
begin

  SELECT PRIME_COAST_COEFFICIENT,PROFIT_COEFFITIENT,EXCHANGE_RATE,USE_CUST_COEF
    INTO PCC,PC,ER,UCC
    FROM PREPARE_PRICE_LIST_INDEX
    WHERE PPLI_ID = IN_PPLI_ID;

  IF UCC = 1 THEN
    UPDATE PREPARE_PRICE_LIST
      SET
        RUBLE_PRICE = round(HOL_PRICE*ER,2),
        PRICE_PCC = round(HOL_PRICE*ER*PCC,2),
        PRICE_PCC_PC = round(HOL_PRICE*ER*PCC*PC,2),
        FINAL_PRICE = round(HOL_PRICE*ER*PCC*PC*(SELECT CUST_COEF FROM NOMENCLATURE WHERE N_ID=PREPARE_PRICE_LIST.N_ID),2),
        date_change = sysdate
      WHERE
          (PPLI_ID = IN_PPLI_ID)
      AND (INVOICE_AMOUNT > 0);
  ELSE
    UPDATE PREPARE_PRICE_LIST
      SET
        RUBLE_PRICE = round(HOL_PRICE*ER,2),
        PRICE_PCC = round(HOL_PRICE*ER*PCC,2),
        PRICE_PCC_PC = round(HOL_PRICE*ER*PCC*PC,2),
        FINAL_PRICE = round(HOL_PRICE*ER*PCC*PC,2),
        date_change = sysdate
      WHERE
          (PPLI_ID = IN_PPLI_ID)
      AND (INVOICE_AMOUNT > 0);
  END IF;
  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.UPDATE_PPL', '');
      RAISE_APPLICATION_ERROR (-20405, 'Запрос не выполнился. ' || SQLERRM);

end UPDATE_PPL;


--
--  Статистика
--
PROCEDURE get_stat
(
   ID_           IN       NUMBER,
   id_dep_       in       number,
   date1_        in       date,
   date2_        in       date,
   v_office      in       number,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select
    -- списание
    (
    SELECT sum(a.price_all)
        FROM store_doc_view2 a
          where a.id_departments = id_dep_ and id_office = v_office
                and trunc(a.doc_date) between date1_ and date2_
                and a.ID_DOC_TYPE = 2
    ) spis_sim,
    -- уценка
    (
    SELECT sum(a.price_all)
        FROM store_doc_view2 a
          where a.id_departments = id_dep_ and id_office = v_office
                and trunc(a.doc_date) between date1_ and date2_
                and a.ID_DOC_TYPE = 3
    ) uc_sum

    ,(
        SELECT sum( stok_total_profit) from ( select distinct n_id, stok_total_profit FROM ppl_view  WHERE PPLI_ID = ID_ )
    ) reprice_profit

    , b.*
    from
    (
      SELECT SUM(hol_sum) HOL_PAY, SUM(RUBLE_SUM) RUB_SUM
        , SUM(inv_total_sum) total_sum
        , SUM(total_profit) PROFIT
        , sum(pcc_sum) pcc_sum
        --, sum(stok_total_profit) as reprice_profit
        , sum(inv_total_profit) as inv_profit
        FROM PPL_VIEW WHERE PPLI_ID = ID_
    ) b;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.UPDATE_PPL', '');
      RAISE_APPLICATION_ERROR (-20406, 'Запрос не выполнился. ' || SQLERRM);

end get_stat;



--
--  достаем данные по райс-листу
--
PROCEDURE get_ppl
(
   PPLI_ID_      IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amount,
       left_amount, given_amount, hol_price, ruble_price, last_price,
       price_pcc, price_pcc_pc, n_id, final_price,
       compiled_name, total_sum,total_profit,cust_coef, h_code, nvl(COL,0) as col
  FROM ppl_view
  WHERE
    PPLI_ID = PPLI_ID_;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_ppl', '');
      RAISE_APPLICATION_ERROR (-20407, 'Запрос не выполнился. ' || SQLERRM);

end get_ppl;




--
--  ищем инвойсы неоцененные
--
PROCEDURE get_price_stat
(
   id_dep_       IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.inv_id, a.inv_date, a.comments, a.inv_sum, a.ipp_id, a.ipp_comment, a.id_departments, a.dept_name, a.inv_minus, a.minus_inv_id, a.is_minus, a.id_office, a.brief
    from invoice_register_full a
    where a.inv_id in (
        select a.inv_id
        from invoice_register a where a.ID_DEPARTMENTS = id_dep_ and a.inv_minus in (0,3) and id_office = const_office
        minus
        select b.inv_id from prepare_price_list_index b where b.ID_DEPARTMENTS = id_dep_ and id_office = const_office
      )
      and (select count(*) from INVOICE_DATA_AS_IS b where b.inv_id = a.inv_id) = 0
    ORDER BY a.inv_date desc;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_price_stat', '');
      RAISE_APPLICATION_ERROR (-20408, 'Запрос не выполнился. ' || SQLERRM);

end get_price_stat;




--
--  выводим прайс-лист
--
PROCEDURE get_price
(
   ID_DEPT       IN       NUMBER,
   vid_          in       number,
   v_office_     in       number,
   cursor_       in out   ref_cursor
)
IS
BEGIN
  if vid_ = 1 then
    open cursor_ for
      select 0 as d_checked, N_ID, PRICE, trunc(PRICE_DATE) as PRICE_DATE, COMPILED_NAME, FT_ID, F_TYPE, FST_ID, F_SUB_TYPE,
           LEN, S_ID, S_NAME_RU, COL_ID, COLOUR, CODE, BAR_CODE, C_ID,COUNTRY, ID_DEPARTMENTS,
           DEPT, FN_ID, F_NAME_RU, QUANTITY, PACK, H_CODE, STICKERS, great_name, GREAT_NAME_F, IS_PHOTO, PHOTO, compiled_name_pot
           , case when IS_PHOTO=1 then const_picture_path||ID_DEPT||'/tm/'||PHOTO else '' end pics
           , case when id_departments=62 then
             case when hol_type = 'RO' then 1 else
             case when hol_type = 'EC' then 2 else
             case when hol_type = 'CH' then 3 else
             case when hol_type = 'GR' then 4 else
             case when hol_type = 'CA' then 5 else
             case when hol_type = 'LI' then 6 else
             case when hol_type = 'OT' then 7 else
             case when hol_type = 'none' then 8 else null
             end end end end end end end end
           else 0 end ord
           , id_office, brief
      from PRICE_LIST_VIEW
        WHERE ID_DEPARTMENTS = ID_DEPT and id_office = v_office_
          ORDER BY F_TYPE, F_SUB_TYPE, H_CODE;
  else
    open cursor_ for
      select 0 as d_checked, N_ID, PRICE, trunc(PRICE_DATE) as PRICE_DATE, COMPILED_NAME, FT_ID, F_TYPE, FST_ID, F_SUB_TYPE,
           LEN, S_ID, S_NAME_RU, COL_ID, COLOUR, CODE, BAR_CODE, C_ID,COUNTRY, ID_DEPARTMENTS,
           DEPT, FN_ID, F_NAME_RU, QUANTITY, PACK, H_CODE, STICKERS, great_name, GREAT_NAME_F, IS_PHOTO, PHOTO,  compiled_name_pot
           , case when IS_PHOTO=1 then const_picture_path||ID_DEPT||'/tm/'||PHOTO else '' end pics
           , case when id_departments=62 then
             case when hol_type = 'RO' then 1 else
             case when hol_type = 'EC' then 2 else
             case when hol_type = 'CH' then 3 else
             case when hol_type = 'GR' then 4 else
             case when hol_type = 'CA' then 5 else
             case when hol_type = 'LI' then 6 else
             case when hol_type = 'OT' then 7 else
             case when hol_type = 'none' then 8 else null
             end end end end end end end end
           else 0 end ord
           , id_office, brief
      from PRICE_LIST_VIEW
        WHERE ID_DEPARTMENTS = ID_DEPT and id_office = v_office_
          ORDER BY ord, F_TYPE, F_SUB_TYPE, compiled_name_pot;
  end if;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_price', '');
      RAISE_APPLICATION_ERROR (-20409, 'Запрос не выполнился. ' || SQLERRM);

end get_price;


--
-- Берем кол-во стикеров со склада
--
PROCEDURE COUNT_STICKERS
IS
BEGIN
  DELETE FROM STICKERS_TO_PRINT;
  INSERT INTO STICKERS_TO_PRINT (SELECT N_ID, TRUNC(NVL(QUANTITY,0)/(CASE WHEN PACK IS NULL THEN 1 WHEN PACK = 0 THEN 1 ELSE PACK END)) STICKERS, null FROM PRICE_LIST_VIEW);
  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.COUNT_STICKERS', '');
      RAISE_APPLICATION_ERROR (-20410, 'Запрос не выполнился. ' || SQLERRM);

END COUNT_STICKERS;


--
-- Берем кол-во стикеров из инвойса
--
PROCEDURE COUNT_INVOICE_STICKERS
(
  IN_INV_ID IN NUMBER
)
IS
BEGIN
  DELETE FROM STICKERS_TO_PRINT;
  INSERT INTO STICKERS_TO_PRINT
    (SELECT N_ID, TRUNC(NVL(SUM(UNITS),0)/(CASE WHEN PACK IS NULL THEN 1 WHEN PACK = 0 THEN 1 ELSE PACK END)) STICKERS, null
     FROM INVOICE_DATA_FULL
     WHERE INV_ID = IN_INV_ID
     GROUP BY N_ID,PACK);
  INSERT INTO STICKERS_TO_PRINT (SELECT N_ID, 0 STICKERS, null FROM PRICE_LIST_VIEW WHERE N_ID NOT IN (SELECT N_ID FROM STICKERS_TO_PRINT) and id_office=const_office);
  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.COUNT_INVOICE_STICKERS', '');
      RAISE_APPLICATION_ERROR (-20411, 'Запрос не выполнился. ' || SQLERRM);

END COUNT_INVOICE_STICKERS;


--
-- Удаляем количество стикеров
--
PROCEDURE DELETE_STICKERS
IS
BEGIN
  DELETE FROM STICKERS_TO_PRINT;
  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.DELETE_STICKERS', '');
      RAISE_APPLICATION_ERROR (-20412, 'Запрос не выполнился. ' || SQLERRM);

END DELETE_STICKERS;




--
-- Берем кол-во стикеров со склада
--
PROCEDURE set_STICKERS
(
  IN_N_ID IN NUMBER,
  param_  in number
)
IS
BEGIN
--   UPDATE STICKERS_TO_PRINT SET d_checked = param_ where n_id = in_n_id;
NULL;
EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.set_STICKERS', '');
      RAISE_APPLICATION_ERROR (-20413, 'Запрос не выполнился. ' || SQLERRM);

END set_STICKERS;


--
-- Подготавливаем к печати данные
--
PROCEDURE PRINT_PREPARE_ADD
(
 IN_N_ID in NUMBER
)
AS
  ST_TO_P NUMBER;
  CNT     NUMBER;
  CURSOR sel_pp_cur (C_N_ID NUMBER) is
    SELECT
      NOM.N_ID N_ID,
      COMPILED_NAME TITLE,
      PRICE,
      CODE,
      nom.H_CODE,
      DECODE(nom.colour,'   ',NULL,' ',NULL,NULL,NULL, 'цв. ' || nom.colour) colour,
      nom.f_name_ru,
      nom.country,
      GET_RUS_MARKS(NOM.N_ID) rus_marks,
      --null as rus_marks,
      BAR_CODE,
      DECODE(nom.BAR_CODE,
         NULL,nom.CODE,
         nom.BAR_CODE) PRINT_CODE,
      PL.PRICE * DECODE(nom.PACK,NULL,1,0,1,PACK) PACK_PRICE
    FROM
      nomenclature_mat_view NOM,
      PRICE_LIST PL
    WHERE NOM.N_ID = C_N_ID
          AND NOM.N_ID = PL.N_ID(+);

  sel_pp_row sel_pp_cur%rowtype;

begin
  SELECT COUNT(*) INTO CNT FROM STICKERS_TO_PRINT WHERE N_ID = IN_N_ID;

  IF CNT = 0 THEN GOTO LAST_STEP; END IF;

  SELECT STICKERS INTO ST_TO_P FROM STICKERS_TO_PRINT WHERE N_ID = IN_N_ID;

  OPEN sel_pp_cur(IN_N_ID);
    FETCH sel_pp_cur INTO sel_pp_row;

    CNT := 0;
    LOOP
      EXIT WHEN CNT = ST_TO_P;

        INSERT INTO PREPARE_PRINT
          (N_ID, TITLE, PRICE, CODE, H_CODE, COLOUR, F_NAME_RU, COUNTRY, RUS_MARKS, BAR_CODE, PRINT_CODE, PACK_PRICE)
        VALUES (
           sel_pp_row.N_ID,
           sel_pp_row.TITLE,
           sel_pp_row.PRICE,
           sel_pp_row.CODE,
           sel_pp_row.H_CODE,
           sel_pp_row.COLOUR,
           sel_pp_row.F_NAME_RU,
           sel_pp_row.COUNTRY,
           sel_pp_row.RUS_MARKS,
           sel_pp_row.BAR_CODE,
           sel_pp_row.PRINT_CODE,
           sel_pp_row.PACK_PRICE
        );
        CNT := CNT + 1;

      END LOOP;

  CLOSE sel_pp_cur;

  <<LAST_STEP>>
  NULL;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.PRINT_PREPARE_ADD', '');
      RAISE_APPLICATION_ERROR (-20414, 'Запрос не выполнился. ' || SQLERRM);

end PRINT_PREPARE_ADD;




--
-- Подготавливаем к печати данные
--
PROCEDURE PRINT_PREPARE_ADD2
(
 IN_N_ID in NUMBER,
 IN_INVOICE_DATA_ID in NUMBER
)
AS
  ST_TO_P NUMBER;
  CNT     NUMBER;
  CURSOR sel_pp_cur (C_N_ID NUMBER) is
    SELECT
      NOM.N_ID N_ID,
      COMPILED_NAME TITLE,
      PRICE,
      CODE,
      nom.H_CODE,
      DECODE(nom.colour,'   ',NULL,' ',NULL,NULL,NULL, 'oa. ' || nom.colour) colour,
      nom.f_name_ru,
      nom.country,
      GET_RUS_MARKS(NOM.N_ID) rus_marks,
      --null as rus_marks,
      BAR_CODE,
      DECODE(nom.BAR_CODE,
         NULL,nom.CODE,
         nom.BAR_CODE) PRINT_CODE,
      PL.PRICE * DECODE(nom.PACK,NULL,1,0,1,PACK) PACK_PRICE
    FROM
      nomenclature_mat_view NOM,
      PRICE_LIST PL
    WHERE NOM.N_ID = C_N_ID
          AND NOM.N_ID = PL.N_ID(+);

  sel_pp_row sel_pp_cur%rowtype;

begin
  SELECT COUNT(*) INTO CNT FROM STICKERS_TO_PRINT WHERE N_ID = IN_N_ID and INVOICE_DATA = IN_INVOICE_DATA_ID;

  IF CNT = 0 THEN GOTO LAST_STEP; END IF;

  SELECT STICKERS INTO ST_TO_P FROM STICKERS_TO_PRINT WHERE N_ID = IN_N_ID and INVOICE_DATA = IN_INVOICE_DATA_ID;

  OPEN sel_pp_cur(IN_N_ID);
    FETCH sel_pp_cur INTO sel_pp_row;

    CNT := 0;
    LOOP
      EXIT WHEN CNT = ST_TO_P;

        INSERT INTO PREPARE_PRINT
          (N_ID, TITLE, PRICE, CODE, H_CODE, COLOUR, F_NAME_RU, COUNTRY, RUS_MARKS, BAR_CODE, PRINT_CODE, PACK_PRICE, INVOICE_ID)
        VALUES (
           sel_pp_row.N_ID,
           sel_pp_row.TITLE,
           sel_pp_row.PRICE,
           sel_pp_row.CODE,
           sel_pp_row.H_CODE,
           sel_pp_row.COLOUR,
           sel_pp_row.F_NAME_RU,
           sel_pp_row.COUNTRY,
           sel_pp_row.RUS_MARKS,
           sel_pp_row.BAR_CODE,
           sel_pp_row.PRINT_CODE,
           sel_pp_row.PACK_PRICE
           , IN_INVOICE_DATA_ID
        );
        CNT := CNT + 1;

      END LOOP;

  CLOSE sel_pp_cur;


  SELECT COUNT(*) INTO CNT FROM PREPARE_PRINT WHERE N_ID = IN_N_ID and INVOICE_ID = IN_INVOICE_DATA_ID;
  LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, CNT, '');


  <<LAST_STEP>>
  NULL;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.PRINT_PREPARE_ADD2', '');
      RAISE_APPLICATION_ERROR (-20414, 'Запрос не выполнился. ' || SQLERRM);

end PRINT_PREPARE_ADD2;



--
-- Подготавливаем количество
--
PROCEDURE PRINT_PREPARE
(
 IN_N_ID       in NUMBER
 , IN_STICKERS in NUMBER
)
AS
begin
  delete from STICKERS_TO_PRINT where n_id = IN_N_ID;
  if IN_STICKERS > 0 then
    insert into STICKERS_TO_PRINT values (IN_N_ID, IN_STICKERS, null);
  end if;
  commit;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.PRINT_PREPARE', '');
      RAISE_APPLICATION_ERROR (-20415, 'Запрос не выполнился. ' || SQLERRM);

end;




--
--  выводим список неподгруженных в цены инвойсов
--
PROCEDURE get_not_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.inv_id, a.inv_date, a.comments, a.inv_sum, a.ipp_id, a.ipp_comment, a.total_sum
            , a.id_departments, a.dept_name, a.inv_minus, a.minus_inv_id, a.is_minus, a.s_name_ru
            , a.past_num
    from invoice_register_full a
    where a.inv_id in (
        select a.inv_id
        from invoice_register a where a.ID_DEPARTMENTS = ID_DEPT_ and a.inv_minus in (0,3) and id_office = const_office
        minus
        select b.inv_id from prepare_price_list_index b where b.ID_DEPARTMENTS = ID_DEPT_  and id_office = const_office
      )
      and (select count(*) from INVOICE_DATA_AS_IS b where b.inv_id = a.inv_id and b.RECOGNISED = 0) = 0
    ORDER BY a.inv_date desc;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_not_loaded_inv', '');
      RAISE_APPLICATION_ERROR (-20416, 'Запрос не выполнился. ' || SQLERRM);

end get_not_loaded_inv;



--
--  выводим список подгруженных в цены инвойсов
--
PROCEDURE get_loaded_inv
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.inv_id, a.inv_date, a.comments, a.inv_sum, a.ipp_id, a.ipp_comment, a.total_sum
            , a.id_departments, a.dept_name, a.inv_minus, a.minus_inv_id, a.is_minus, a.s_name_ru
    from invoice_register_full a
        WHERE a.id_departments = ID_DEPT_  and id_office = const_office
              and a.inv_minus in (0,3)
              and a.price_done = 1
                ORDER BY inv_date desc;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_not_loaded_inv', '');
      RAISE_APPLICATION_ERROR (-20416, 'Запрос не выполнился. ' || SQLERRM);

end get_loaded_inv;


--
--  выводим список ценообразований
--
PROCEDURE get_prices
(
   ID_DEPT_      IN       NUMBER,
   v_office      in       number,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select /*+ FIRST_ROWS */
        a.PPLI_ID, a.PPL_COMMENT, a.PPL_DATE, a.PRIME_COAST_COEFFICIENT, a.PROFIT_COEFFITIENT, a.EXCHANGE_RATE,
        a.FINISHED, a.USE_CUST_COEF, a.ID_DEPARTMENTS,
        a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4, a.PACK_ID
        , a.inv_id || decode(a.inv_id2,null,'',', '||a.inv_id2) || decode(a.inv_id3,null,'',', '||a.inv_id3) || decode(a.inv_id4,null,'',', '||a.inv_id4) all_inv
        , b.INV_DATE, b.SENDED_TO_WAREHOUSE, case when b.minus_inv_id is null or b.minus_inv_id = 0 then 0 else 1 end is_minus, b.comments
        , c.S_NAME_RU
    from PREPARE_PRICE_LIST_INDEX a, INVOICE_REGISTER b, suppliers c
    where  a.ID_DEPARTMENTS = ID_DEPT_ and a.id_office = v_office
        and a.inv_id = b.inv_id(+)
        and a.PPL_DATE > sysdate - 120
        and b.S_ID_DEFAULT = c.s_id(+)
    ORDER BY a.FINISHED, a.PPL_DATE DESC;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_prices', '');
      RAISE_APPLICATION_ERROR (-20417, 'Запрос не выполнился. ' || SQLERRM);

end get_prices;



--
--  выводим список ценообразований
--
PROCEDURE get_nacenka
(
   ID_DEPT_      IN       NUMBER,
   v_office      in       number,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select a.*
           , case when price_pcc = 0 then 0 else 100*round(price/price_pcc, 2) - 100 end procent
    from (
        select d.name as store_name, b.STORE_TYPE, b.ID_DEPARTMENTS, a.great_name as full_name, a.F_NAME, a.F_NAME_RU, a.F_TYPE, a.F_SUB_TYPE
            , CASE WHEN a.BAR_CODE is not null THEN a.BAR_CODE ELSE to_char(a.CODE) END CODE
            , a.H_CODE, a.LEN, a.PACK, a.COLOUR, a.COL_ID, a.FT_ID, a.FST_ID, a.FN_ID, a.S_ID, a.C_ID, a.H_NAME
            , a.S_NAME_RU, a.COUNTRY, b.QUANTITY, b.N_ID, b.reserv
            , CASE WHEN b.STORE_TYPE=1 THEN c.PRICE ELSE b.PRICE END price
            , a.RUS_MARKS as spesification
            , get_price_pcc(b.N_ID) as price_pcc
        from NOMENCLATURE_MAT_VIEW a, STORE_MAIN b, PRICE_LIST c, store_type d
        where a.ID_DEPARTMENTS = ID_DEPT_
              and a.N_ID = b.N_ID and b.id_office = v_office
              and a.N_ID = c.N_ID
              and b.store_type = d.id_store_type
    ) a
    ;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_nacenka', '');
      RAISE_APPLICATION_ERROR (-20418, 'Запрос не выполнился. ' || SQLERRM);

end get_nacenka;


--
--  выводим список типов/подтипов
--
PROCEDURE get_fst_view
(
   ID_DEPT_      IN       NUMBER,
   cursor_       in out   ref_cursor
)
IS
BEGIN

  open cursor_ for
    select * from (
        select 0 as ft_id, 0 as fst_id, 'Все' as f_sub_type, null as f_type from dual
        union all
        select a.ft_id, 0 as fst_id, a.f_type as f_sub_type, a.f_type from flower_types a where a.id_departments = ID_DEPT_ and id_office = const_office
        union all
        select b.ft_id, b.fst_id, '    '||b.f_sub_type as f_sub_type, a.f_type from flower_types a, flower_subtypes b where a.id_departments = ID_DEPT_ and a.ft_id = b.ft_id and a.id_office = const_office
    )
    order by f_type nulls first, fst_id, f_sub_type
    ;

EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.get_fst_view', '');
      RAISE_APPLICATION_ERROR (-20419, 'Запрос не выполнился. ' || SQLERRM);

end get_fst_view;


--
--  Синхронизируем сток в ценах
--
PROCEDURE sync_ppli
(
   in_ppli_id      IN       NUMBER
)
IS
BEGIN
  -- удалим записи, где уже нет остатков на складе
  delete from PREPARE_PRICE_LIST a
    where a.ppli_id = IN_PPLI_ID
        and ppl_id in (select ppl_id from ppl_view v where v.ppli_id = IN_PPLI_ID and v.stock_amount = 0 and v.INVOICE_DATA_ID is null);

  -- изменим оставшиеся остатки
  update PREPARE_PRICE_LIST a set a.stock_amount = (select distinct stock_amount from ppl_view v where v.ppli_id = IN_PPLI_ID and v.n_id = a.n_id), date_change = sysdate
    where a.ppli_id = IN_PPLI_ID;

  commit;
EXCEPTION
   WHEN OTHERS
   THEN
      LOG_ERR(SQLERRM|| ' ' || DBMS_UTILITY.format_error_backtrace, SQLCODE, 'price_pkg.sync_ppli', '');
      RAISE_APPLICATION_ERROR (-20420, 'Запрос не выполнился. ' || SQLERRM);

end sync_ppli;


END;
/

create or replace public synonym price_pkg for creator.price_pkg
/
-- End of DDL Script for Package Body CREATOR.PRICE_PKG

