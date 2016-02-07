-- Start of DDL Script for Function CREATOR.DO_FORMULA
-- Generated 06.05.2012 21:18:40 from CREATOR@STAR_REG

CREATE OR REPLACE 
FUNCTION do_formula (NN_ID IN NUMBER)    RETURN INTEGER
AS
   ID_ORDERS_FORMULA INTEGER;
   HNAME        VARCHAR(40);
   FIELD_NO      VARCHAR2(20);
   FIELD_AND     VARCHAR2(20);
   IDD           INTEGER;
   TYPE curr_class IS REF CURSOR;
   curr curr_class;
   sqlstr varchar(1024);
BEGIN
   IDD := 0; -- Переменная, которая будет на выходе содержать ID формулы для расчета
   -- Если IDD = -1, то ошибка
   -- Если IDD = 0, то формула не найдена

   -- Шаг 1. Открываем формулы по названиям и пытаемся найти формулу
   OPEN curr FOR
      SELECT ID_ORDERS_FORMULA, HNAME, FIELD_NO, FIELD_AND 
      from ORDERS_FORMULA 
      WHERE HNAME is not null AND ACTIVE=1;

  	  loop
        fetch curr into ID_ORDERS_FORMULA,HNAME,FIELD_NO,FIELD_AND;
   		  exit when curr%notfound;

        begin
          sqlstr := 'select N_ID FROM NOMENCLATURE WHERE N_ID=' || CAST(NN_ID AS VARCHAR2) || ' AND H_NAME LIKE ''%' || HNAME || '%''';
          IF FIELD_AND is not null THEN sqlstr := sqlstr || ' AND H_NAME LIKE ''%' || FIELD_AND || '%'''; END IF;
          IF FIELD_NO is not null THEN sqlstr := sqlstr || ' AND NOT H_NAME LIKE ''%' || FIELD_NO || '%'''; END IF;
          execute immediate sqlstr INTO IDD;
          IF (IDD > 0) THEN RETURN ID_ORDERS_FORMULA; EXIT; END IF;
        EXCEPTION
        WHEN OTHERS THEN
          IDD := 0;
        END;
   
      end loop; -- Конец бега по курсору
   close curr;   
 
   -- Шаг 2. Открываем формулы по подтипам и пытемся найти формулу     
    begin
      SELECT ID_ORDERS_FORMULA 
      INTO ID_ORDERS_FORMULA
      from ORDERS_FORMULA 
      WHERE FST_ID = (SELECT FST_ID FROM NOMENCLATURE WHERE N_ID = NN_ID) AND ACTIVE=1;
      
      if (ID_ORDERS_FORMULA > 0)
      then 
         IDD := ID_ORDERS_FORMULA;
         RETURN IDD;
      end if;
    EXCEPTION
    WHEN OTHERS THEN
         IDD := 0;
    END;
   -- КОНЕЦ Шаг 2.


   -- Шаг 3. Открываем формулы по типам и пытемся найти формулу
      SELECT FT_ID INTO IDD FROM FLOWER_SUBTYPES WHERE FST_ID = (
      SELECT FST_ID FROM NOMENCLATURE WHERE N_ID = NN_ID);

    begin     
      SELECT ID_ORDERS_FORMULA 
      INTO ID_ORDERS_FORMULA 
      from ORDERS_FORMULA 
      WHERE FT_ID = IDD AND ACTIVE=1;
      
      if (ID_ORDERS_FORMULA > 0)
      then 
      BEGIN
         IDD := ID_ORDERS_FORMULA;
         RETURN IDD;
      END;
      end if;
    EXCEPTION
    WHEN OTHERS THEN
         IDD := 0;
    END;
   -- КОНЕЦ Шаг 3.

   -- Если ничего не нашли, то возвращаем 0
      if (ID_ORDERS_FORMULA < 1)
      then 
      BEGIN
         RETURN 0;
      END;
      end if;
  
        
   RETURN IDD;
EXCEPTION
   WHEN OTHERS THEN
         IDD := -1;
         RETURN IDD;
END;
/



-- End of DDL Script for Function CREATOR.DO_FORMULA

