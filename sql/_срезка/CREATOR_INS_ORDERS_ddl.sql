-- Start of DDL Script for Procedure CREATOR.INS_ORDERS
-- Generated 10.05.2012 0:41:53 from CREATOR@STARREG

CREATE OR REPLACE 
PROCEDURE ins_orders
(
    ID_ORDERS_CLIENTS_   IN NUMBER,
    N_ID_                IN NUMBER,
    Q_NUM_               IN NUMBER,
    TRUCK_               IN NUMBER,
    sub_weight           IN NUMBER
)
IS
   ID_F_ NUMBER;
   IDD_ number;
   SEQ_ number;
   FORMULA_ VARCHAR2(20);
   FORMULA_DRY_ VARCHAR2(20);
   PACK_ VARCHAR2(5);
   SQL_ VARCHAR2(1024);

BEGIN
    IDD_ := 0;

    -- ≈сли введено количество то примен€ем формулу и делаем ввод данных
    if (Q_NUM_ is not null) then

        -- ≈сли есть расчетное значение дл€ веса подтипа товара
        if (sub_weight <> 0 and sub_weight is not null) then
          -- ѕытаемс€ найти такую же позицию в заказе
          BEGIN
            SELECT ID_ORDERS_LIST INTO IDD_
                FROM ORDERS_LIST
                    WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_ AND N_ID=N_ID_;
          EXCEPTION
            WHEN OTHERS THEN IDD_ := 0;
          END;

          -- “акой цветок уже есть в заказе
          if IDD_ > 0 THEN
            -- изменем кол-во заказа
            UPDATE ORDERS_LIST SET QUANTITY = Q_NUM_, TRUCK = TRUCK_, date_change=sysdate WHERE ID_ORDERS_LIST = IDD_;
            UPDATE ORDERS_LIST SET WEIGHT= Q_NUM_ * sub_weight, date_change=sysdate WHERE ID_ORDERS_LIST=IDD_;
          ELSE
            -- добавл€ем новую позицию
            INSERT INTO ORDERS_LIST VALUES(ORDERS_LIST_SEQ.NEXTVAL,N_ID_,Q_NUM_,ID_ORDERS_CLIENTS_,nvl(TRUCK_,0),(Q_NUM_ * sub_weight),1,0, null, 1, const_office, sysdate);
          END IF; -- N_ID_ > 0

        -- »щем формулу
        else
          -- ѕытаемс€ найти формулы
          BEGIN
            SELECT DO_FORMULA(N_ID_) INTO ID_F_ FROM DUAL;

             IF ( ID_F_ > 0 ) THEN
                 -- ƒостаем параметры формулы
                 SELECT FORMULA, FORMULA_DRY, PACK
                      INTO FORMULA_, FORMULA_DRY_, PACK_
                 FROM ORDERS_FORMULA
                 WHERE ID_ORDERS_FORMULA = ID_F_;
             ELSE
                 FORMULA_         := '/1';
                 FORMULA_DRY_ := '/1';
                 PACK_                := '0';
             END IF;

          EXCEPTION
            WHEN OTHERS THEN
                ID_F_ := 0;
                raise;
          END;

          -- ѕытаемс€ найти такую же позицию в заказе
          BEGIN
            SELECT ID_ORDERS_LIST INTO IDD_
                FROM ORDERS_LIST
                  WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_ AND N_ID=N_ID_;
          EXCEPTION
            WHEN OTHERS THEN IDD_ := 0;
          END;

          -- “акой цветок уже есть в заказе
          if IDD_ > 0 THEN
            -- изменем кол-во заказа
            UPDATE ORDERS_LIST SET QUANTITY = Q_NUM_, TRUCK = TRUCK_, date_change=sysdate
            WHERE ID_ORDERS_LIST = IDD_;

            sql_ := 'UPDATE ORDERS_LIST SET date_change=sysdate, WEIGHT=';

            -- —читаем сначала формулу обычную, если формулы нет, то втавл€ем 0
            IF FORMULA_ = '' THEN sql_ := sql_ || '0 WHERE ID_ORDERS_LIST='||IDD_;
            ELSE
              if PACK_ <> '0' then
                   sql_ := sql_ || '(('||Q_NUM_||FORMULA_||')+('||FORMULA_||'*'||PACK_||'/100)) WHERE ID_ORDERS_LIST='||IDD_;
              else
                   sql_ := sql_ || '('||Q_NUM_||FORMULA_||') WHERE ID_ORDERS_LIST='||IDD_;
              end if;
            END IF;

            -- ≈сли есть доп. формула, то пытаемс€ посчитать по ней
            if FORMULA_DRY_ <> '' then
               if PACK_ <> '0' then
                   sql_ := sql_ || '(('||Q_NUM_||FORMULA_DRY_||')+('||FORMULA_DRY_||'*'||PACK_||'/100)) WHERE ID_ORDERS_LIST='||IDD_;
               else
                   sql_ := sql_ || '('||Q_NUM_||FORMULA_DRY_||') WHERE ID_ORDERS_LIST='||IDD_;
               end if;
            END IF;

            execute immediate sql_;

          ELSE
            -- добавл€ем новую позицию
            SELECT ORDERS_LIST_SEQ.NEXTVAL
            INTO SEQ_
            FROM DUAL;

            sql_ := 'INSERT INTO ORDERS_LIST VALUES(ORDERS_LIST_SEQ.NEXTVAL,'||N_ID_||','||Q_NUM_||','||ID_ORDERS_CLIENTS_||','|| nvl(TRUCK_,0) ||',';

            -- —читаем сначала формулу обычную, если формулы нет, то втавл€ем 0
            IF FORMULA_ = '' THEN sql_ := sql_ || '0, 1, 0, null, null, const_office, sysdate )';
            ELSE
                     if PACK_ <> '0' then
                        sql_ := sql_ || '(('||Q_NUM_||FORMULA_||')+('||FORMULA_||'*'||PACK_||'/100))), 1, 0, null, null, const_office, sysdate )';
                     else
                        sql_ := sql_ || '('||Q_NUM_||FORMULA_||'), 1, 0, null, null, const_office, sysdate )';
                     end if;
            END IF;

            -- ≈сли есть доп. формула, то пытаемс€ посчитать по ней
            if FORMULA_DRY_ <> '' then
                  if PACK_ <> '0' then
                     sql_ := sql_ || '(('||Q_NUM_||FORMULA_DRY_||')+('||FORMULA_DRY_||'*'||PACK_||'/100))), 1, 0, null, null, const_office, sysdate )';
                  else
                     sql_ := sql_ || '('||Q_NUM_||FORMULA_DRY_||'), 1, 0, null, null, const_office, sysdate )';
                  end if;
            END IF;

            execute immediate sql_;

          END IF; -- N_ID_ > 0
        end if; -- if (sub_weight <> 0 and sub_weight is not null) then

        UPDATE ORDERS_CLIENTS SET D_DATE=sysdate, date_change=sysdate WHERE ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS_;

    end if; --if (Q_NUM_ is not null) then

END; -- INS_RESERV
/

-- Grants for Procedure
GRANT EXECUTE ON ins_orders TO new_role
/
create public synonym ins_orders for creator.ins_orders
/
-- End of DDL Script for Procedure CREATOR.INS_ORDERS

