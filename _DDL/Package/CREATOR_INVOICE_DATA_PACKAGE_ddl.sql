-- Start of DDL Script for Package Body CREATOR.INVOICE_DATA_PACKAGE
-- Generated 04.12.2016 0:45:21 from CREATOR@STAR_REG

CREATE OR REPLACE 
PACKAGE invoice_data_package
/*Пакет для рааботы с данными инвойса*/
AS
  PROCEDURE INSERT_DATA(
  /*Процедура добавляет новую позицию в инвойс, возвращант её ID*/
      IN_INV_ID                IN NUMBER,
      IN_INVOICE_DATA_AS_IS_ID IN NUMBER,
      IN_N_ID                  IN NUMBER,
      IN_UNITS                 IN NUMBER,
      IN_PRICE_PER_UNIT        IN NUMBER,
      IN_TOTAL_SUM             IN NUMBER,
      IN_AMOUNT_IN_THE_PACK    IN NUMBER DEFAULT NULL,
      IN_STORN                 IN NUMBER DEFAULT 0,
      IN_GTD                   IN varchar2 default null,
      IN_GTD_COUNTRY           IN NUMBER,
      IN_NEW                   IN NUMBER,
      IN_SPEC                  IN NUMBER,
      IN_CLIENT                IN varchar2,
      IN_parent                IN NUMBER,
      OUT_INVOICE_DATA_ID      OUT NUMBER
  );

  PROCEDURE DELETE_DATA(
  /*Процедура удаляет строку и инвойса и присваивает корреспондирующей строчке
  из сырого инвойса значение нераспознаной*/
      IN_INVOICE_DATA_ID       IN NUMBER,
      OUT_RES                  OUT NUMBER,
      OUT_TEXT                 OUT VARCHAR2
  );

  PROCEDURE UPDATE_DATA(
  /*Процедура производит сторнирование позиции инвойса и добавляет новую запись*/
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
END;
/

-- Grants for Package
GRANT EXECUTE ON invoice_data_package TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY invoice_data_package
AS
  CNT                         NUMBER;
  NEW_INVOICE_DATA_ID         NUMBER;
  TMP_INVOICE_DATA_AS_IS_ID   NUMBER;
  ERR_CODE                    NUMBER;
  ERR_MSG                     VARCHAR2(1024);
  TMP_INV_ID                  NUMBER;
  TMP_N_ID                    NUMBER;
  TMP_UNITS                   NUMBER;
  TMP_PRICE_PER_UNIT          NUMBER;
  TMP_TOTAL_SUM               NUMBER;
  TMP_AMOUNT                  NUMBER;
  TMP_GTD                     VARCHAR2(30);
  TMP_INV_DAT_ID              NUMBER;
  TMP_GTD_COUNTRY             NUMBER;
  TMP_IN_NEW                  NUMBER;
  TMP_IN_SPEC                 NUMBER;
  TMP_IN_CLIENT               VARCHAR2(30);


  /*Процедура добавляет новую позицию в инвойс, возвращант её ID*/
  PROCEDURE INSERT_DATA
  (
      IN_INV_ID                IN NUMBER,
      IN_INVOICE_DATA_AS_IS_ID IN NUMBER,
      IN_N_ID                  IN NUMBER,
      IN_UNITS                 IN NUMBER,
      IN_PRICE_PER_UNIT        IN NUMBER,
      IN_TOTAL_SUM             IN NUMBER,
      IN_AMOUNT_IN_THE_PACK    IN NUMBER DEFAULT NULL,
      IN_STORN                 IN NUMBER DEFAULT 0,
      IN_GTD                   IN varchar2 default null,
      IN_GTD_COUNTRY           IN NUMBER,
      IN_NEW                   IN NUMBER,
      IN_SPEC                  IN NUMBER,
      IN_CLIENT                IN varchar2,
      IN_parent                IN NUMBER,
      OUT_INVOICE_DATA_ID      OUT NUMBER
  )
  AS
      THE_STORN   NUMBER;
  BEGIN
      IF IN_STORN IS NULL THEN THE_STORN := 0;
                          ELSE THE_STORN := IN_STORN;
      END IF;

      -- Проверка на наличие в проверочных данных неотмеченной позиции. Если найдем, то автоматически отметим ее
      select count(*) into cnt from import_flowers_kov a, nomenclature n where a.nom_code = n.code and n.n_id = IN_N_ID and a.checked = 0;
      if cnt > 0 then
        update import_flowers_kov a set checked=1 where exists (select 1 from nomenclature n where a.nom_code = n.code and n.n_id = IN_N_ID and a.checked = 0);
      end if;
      --


      SELECT get_office_unique('INVOICE_DATA_ID') INTO NEW_INVOICE_DATA_ID FROM DUAL;

      INSERT INTO INVOICE_DATA (
        INVOICE_DATA_ID,
        INVOICE_DATA_AS_IS_ID,
        INV_ID,
        N_ID,
        UNITS,
        PRICE_PER_UNIT,
        TOTAL_SUM,
        AMOUNT_IN_THE_PACK,
        STORNED_DATA,
        GTD,
        id_office,
        GTD_COUNTRY,
        NOM_ADD,
        NOM_SPECIAL,
        TO_CLIENT,
        PARENT_ID)
      VALUES (
        NEW_INVOICE_DATA_ID,
        IN_INVOICE_DATA_AS_IS_ID,
        IN_INV_ID,
        IN_N_ID,
        IN_UNITS,
        IN_PRICE_PER_UNIT,
        IN_TOTAL_SUM,
        IN_AMOUNT_IN_THE_PACK,
        THE_STORN,
        IN_GTD,
        const_office,
        IN_GTD_COUNTRY,
        IN_NEW,
        IN_SPEC,
        IN_CLIENT,
        IN_parent);

      SELECT COUNT(*) INTO CNT FROM INVOICE_DATA_AS_IS WHERE INVOICE_DATA_AS_IS_ID = IN_INVOICE_DATA_AS_IS_ID;
      IF CNT > 0 THEN
        UPDATE INVOICE_DATA_AS_IS SET RECOGNISED = 1, date_change=sysdate WHERE INVOICE_DATA_AS_IS_ID = IN_INVOICE_DATA_AS_IS_ID;
      END IF;
      COMMIT;

      OUT_INVOICE_DATA_ID := NEW_INVOICE_DATA_ID;

  EXCEPTION
        WHEN OTHERS THEN
             LOG_ERR(SQLERRM, SQLCODE, 'INVOICE_DATA_PACKAGE.INSERT_DATA', '');
             RAISE_APPLICATION_ERROR (-20250, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

  END INSERT_DATA;


  /*Процедура сторнирует строку инвойса и присваивает корреспондирующей строчке
  из сырого инвойса значение нераспознаной*/
  PROCEDURE DELETE_DATA
  (
      IN_INVOICE_DATA_ID       IN NUMBER,
      OUT_RES                  OUT NUMBER,
      OUT_TEXT                 OUT VARCHAR2
  )
  AS
  BEGIN
      OUT_RES := 0;
      OUT_TEXT := 'Неизвестная ошибка!';

      SELECT COUNT(*) INTO CNT FROM INVOICE_DATA WHERE
        INVOICE_DATA_ID = IN_INVOICE_DATA_ID AND
        ((SENDED_TO_WAREHOUSE = 0) OR (SENDED_TO_WAREHOUSE IS NULL)) AND
        STORNED_DATA = 0;

      IF CNT = 0 THEN
        OUT_RES := 0;
        OUT_TEXT := 'Такой записи нет, либо запись отсторнирована, либо товар уже отправлен на склад!';
        GOTO LAST_STEP;
      END IF;

      BEGIN
        SELECT N_ID,UNITS,PRICE_PER_UNIT,TOTAL_SUM,AMOUNT_IN_THE_PACK,GTD,INVOICE_DATA_AS_IS_ID,INV_ID,GTD_COUNTRY,NOM_ADD,NOM_SPECIAL,TO_CLIENT
          INTO TMP_N_ID,TMP_UNITS,TMP_PRICE_PER_UNIT,TMP_TOTAL_SUM,TMP_AMOUNT,TMP_GTD,TMP_INVOICE_DATA_AS_IS_ID,TMP_INV_ID,TMP_GTD_COUNTRY,TMP_IN_NEW,TMP_IN_SPEC,TMP_IN_CLIENT
          FROM INVOICE_DATA
          WHERE INVOICE_DATA_ID = IN_INVOICE_DATA_ID;

          UPDATE INVOICE_DATA_AS_IS SET RECOGNISED = NULL, date_change=sysdate WHERE INVOICE_DATA_AS_IS_ID = TMP_INVOICE_DATA_AS_IS_ID;

          INSERT_DATA(IN_INV_ID               =>TMP_INV_ID,
                      IN_INVOICE_DATA_AS_IS_ID=>NULL,
                      IN_N_ID                 => TMP_N_ID,
                      IN_UNITS                =>-TMP_UNITS,
                      IN_PRICE_PER_UNIT       =>TMP_PRICE_PER_UNIT,
                      IN_TOTAL_SUM            =>-TMP_TOTAL_SUM,
                      IN_STORN                =>1,
                      IN_GTD                  =>TMP_GTD,
                      IN_GTD_COUNTRY          =>TMP_GTD_COUNTRY,
                      IN_NEW                  =>TMP_IN_NEW,
                      IN_SPEC                 =>TMP_IN_SPEC,
                      IN_CLIENT               =>TMP_IN_CLIENT,
                      IN_parent               =>null,
                      OUT_INVOICE_DATA_ID     =>TMP_INV_DAT_ID);

        /*Добавили отрицательную позицию*/
        UPDATE INVOICE_DATA
          SET
            STORNED_DATA = 1,
            INVOICE_DATA_AS_IS_ID = null,
            date_change = sysdate
          WHERE
            INVOICE_DATA_ID = IN_INVOICE_DATA_ID;
        COMMIT;

        OUT_RES := 1;
        OUT_TEXT := 'Запись успешно отсторнирована.';
      EXCEPTION
        WHEN OTHERS THEN
          ERR_CODE := SQLCODE;
          ERR_MSG  := SQLERRM(SQLCODE);
          OUT_RES  := 0;
          OUT_TEXT := ERR_MSG;
      END;
      <<LAST_STEP>>
      NULL;

  EXCEPTION
        WHEN OTHERS THEN
             LOG_ERR(SQLERRM, SQLCODE, 'INVOICE_DATA_PACKAGE.DELETE_DATA', '');
             RAISE_APPLICATION_ERROR (-20251, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

  END DELETE_DATA;



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
      TMP_INV_DAT_ID := 0;

      SELECT COUNT(*) INTO CNT FROM INVOICE_DATA WHERE
        INVOICE_DATA_ID = IN_INVOICE_DATA_ID AND
        ((SENDED_TO_WAREHOUSE = 0) OR (SENDED_TO_WAREHOUSE IS NULL)) AND
        STORNED_DATA = 0;

      IF CNT = 0 THEN
        OUT_RES := 0;
        OUT_TEXT := 'Такой записи нет, либо запись сторнирована, либо товар уже отправлен на склад!';
        GOTO LAST_STEP;
      END IF;

        SELECT N_ID    , UNITS,     PRICE_PER_UNIT,     TOTAL_SUM,     AMOUNT_IN_THE_PACK, GTD,     INVOICE_DATA_AS_IS_ID,     INV_ID,     GTD_COUNTRY, NOM_ADD,NOM_SPECIAL,TO_CLIENT
          INTO TMP_N_ID, TMP_UNITS, TMP_PRICE_PER_UNIT, TMP_TOTAL_SUM, TMP_AMOUNT,         TMP_GTD, TMP_INVOICE_DATA_AS_IS_ID, TMP_INV_ID, TMP_GTD_COUNTRY, TMP_IN_NEW,TMP_IN_SPEC,TMP_IN_CLIENT
          FROM INVOICE_DATA
          WHERE INVOICE_DATA_ID = IN_INVOICE_DATA_ID
        ;
      /*Добавили отрицательную позицию*/
        INSERT_DATA(IN_INV_ID               =>TMP_INV_ID,
                    IN_INVOICE_DATA_AS_IS_ID=>TMP_INVOICE_DATA_AS_IS_ID,
                    IN_N_ID                 =>TMP_N_ID,
                    IN_UNITS                =>(0-TMP_UNITS),
                    IN_PRICE_PER_UNIT       =>TMP_PRICE_PER_UNIT,
                    IN_TOTAL_SUM            =>(0-TMP_TOTAL_SUM),
                    IN_STORN                =>1,
                    IN_GTD                  =>TMP_GTD,
                    IN_GTD_COUNTRY          =>TMP_GTD_COUNTRY,
                    IN_NEW                  =>TMP_IN_NEW,
                    IN_SPEC                 =>TMP_IN_SPEC,
                    IN_CLIENT               =>TMP_IN_CLIENT,
                    IN_parent               =>null,
                    OUT_INVOICE_DATA_ID     =>TMP_INV_DAT_ID
        );

        /*Проставили признак сторнированности*/
        UPDATE INVOICE_DATA SET STORNED_DATA = 1, date_change=sysdate WHERE INVOICE_DATA_ID = IN_INVOICE_DATA_ID;

        /*Добавили новую позицию*/
        if IN_UNITS > 0 then
          INSERT_DATA(IN_INV_ID               =>TMP_INV_ID,
                    IN_INVOICE_DATA_AS_IS_ID=>TMP_INVOICE_DATA_AS_IS_ID,
                    IN_N_ID                 =>IN_N_ID,
                    IN_UNITS                =>IN_UNITS,
                    IN_PRICE_PER_UNIT       =>IN_PRICE_PER_UNIT,
                    IN_TOTAL_SUM            =>IN_TOTAL_SUM,
                    IN_GTD                  =>TMP_GTD,
                    IN_GTD_COUNTRY          =>TMP_GTD_COUNTRY,
                    IN_NEW                  =>TMP_IN_NEW,
                    IN_SPEC                 =>TMP_IN_SPEC,
                    IN_CLIENT               =>TMP_IN_CLIENT,
                    IN_parent               =>null,
                    OUT_INVOICE_DATA_ID     =>OUT_INVOICE_DATA_ID
          );
        end if;

        COMMIT;
        OUT_RES := 1;
        OUT_TEXT := 'Запись успешно сторнирована.';

    <<LAST_STEP>> NULL;

  EXCEPTION
        WHEN OTHERS THEN
             LOG_ERR(SQLERRM, SQLCODE, 'INVOICE_DATA_PACKAGE.UPDATE_DATA', '');
             RAISE_APPLICATION_ERROR (-20252, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

  END UPDATE_DATA;


END INVOICE_DATA_PACKAGE;
/


-- End of DDL Script for Package Body CREATOR.INVOICE_DATA_PACKAGE

