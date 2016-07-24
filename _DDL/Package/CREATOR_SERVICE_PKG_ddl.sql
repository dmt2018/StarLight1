-- Start of DDL Script for Package Body CREATOR.SERVICE_PKG
-- Generated 25.07.2016 1:25:11 from CREATOR@STAR_NEW

CREATE OR REPLACE 
PACKAGE service_pkg
IS
  TYPE ref_cursor is REF CURSOR; -- n?aa aoaai iiaoyaeaaou ana aaiiua

  -- Обнуление счетчиков ГТД при 0-ле на складе товара
  PROCEDURE close_gtd_counter;


  -- Исправление расходованных ГТД если их счетчик больше счетчика пришедших ГТД
  PROCEDURE repair_output_gtd_counter;


  -- Исправление расходованных ГТД через уменьшение счетчикка
  PROCEDURE repair_gtd_counter_by_step(
    in_nid  number
  );


  -- Поиск невалидных ГТД для последующей корректировки
  PROCEDURE select_notvalid_gtd;


  -- Просмотр где номенклатура засветилась в системе
  -- Выдает просто спиок. где она участвовала
  PROCEDURE list_nom_moving
  (
    in_nid  number,
    cursor_ out ref_cursor
  );


  --
  --  Сохранение пользовательских настроек
  --
  procedure save_user_setting (
    p_key  in varchar2,
    p_val  in varchar2
  );


  --
  --  Удаление всех пользовательских настроек
  --
  procedure clear_user_setting;


  --
  --  Получение всех пользовательских настроек
  --
  procedure get_user_setting (
    cursor_ out ref_cursor
  );


end;
/

-- Grants for Package
GRANT EXECUTE ON service_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY service_pkg
IS
  -- Обнуление счетчиков ГТД при 0-ле на складе товара
  PROCEDURE close_gtd_counter
  IS
    cursor f_ is
      select 'update store_gtd a set a.output_store=a.input where n_id = '||a.n_id as sqlstr
      from (
        SELECT a.n_id, sum( a.input-a.output_store ) as quantity
          FROM store_gtd a
          group by n_id
        ) a, store_main b
      where a.n_id = b.n_id and a.quantity <> b.quantity and b.quantity = 0;

    curr_f  varchar2(4000);
  BEGIN
    open f_;
    loop
      fetch f_ into curr_f;
      exit when f_%notfound;

      EXECUTE IMMEDIATE curr_f;
    end loop;
    close f_;
  EXCEPTION
    WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.close_gtd_counter', curr_f);
        RAISE_APPLICATION_ERROR (-20900, 'Запрос не выполнился. ' || SQLERRM);
  end close_gtd_counter;


  -- Исправление расходованных ГТД если их счетчик больше счетчика пришедших ГТД
  PROCEDURE repair_output_gtd_counter
  IS
    cursor f_ is
      SELECT 'update store_gtd a set a.output_store=a.input where a.id_gtd = '||a.id_gtd as sqlstr
      FROM store_gtd a
      where a.output_store > a.input and a.input > 0;

    curr_f  varchar2(4000);
  BEGIN
    open f_;
    loop
      fetch f_ into curr_f;
      exit when f_%notfound;

      EXECUTE IMMEDIATE curr_f;
    end loop;
    close f_;
  EXCEPTION
    WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.repair_output_gtd_counter', curr_f);
        RAISE_APPLICATION_ERROR (-20901, 'Запрос не выполнился. ' || SQLERRM);
  end repair_output_gtd_counter;


  -- Исправление расходованных ГТД через уменьшение счетчикка
  PROCEDURE repair_gtd_counter_by_step(
    in_nid  number
  )
  IS
    cursor f_ is
      SELECT a.id_gtd, a.ddate, a.input, a.output_store
      FROM store_gtd a
      where n_id = in_nid
      order by a.ddate desc;

    curr_f          f_%rowtype;
    cur_store_value number;
    set_value       number;
  BEGIN
    select quantity into cur_store_value from store_main where n_id = in_nid and store_type=1;
    if cur_store_value > 0 then

      open f_;
      loop
        fetch f_ into curr_f;
        exit when f_%notfound;

        -- Если уже сравняли ГТД, то последующие счетчики надо обнулить
        if curr_f.output_store <> curr_f.input and cur_store_value = 0 then
           update store_gtd set output_store = input where id_gtd = curr_f.id_gtd;
        end if;

        -- Основная логика изменения счетчика ГТД
        if curr_f.output_store <= curr_f.input and curr_f.input > 0 and cur_store_value > 0 then
           if curr_f.input >= cur_store_value then
             -- приход покрывает остатки склада
             set_value := curr_f.input - cur_store_value;
             cur_store_value := 0;
           else
             -- приход НЕ покрывает остатки склада, будет еще один цикл по следующему ГТД из списка
             set_value := 0;
             cur_store_value := cur_store_value - curr_f.input;
           end if;

           update store_gtd set output_store = set_value where id_gtd = curr_f.id_gtd;
        end if;

      end loop;
      close f_;

    end if;

  EXCEPTION
    WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.repair_gtd_counter_by_step', curr_f.id_gtd);
        RAISE_APPLICATION_ERROR (-20902, 'Запрос не выполнился. ' || SQLERRM);
  end repair_gtd_counter_by_step;


  -- Поиск невалидных ГТД для последующей корректировки
  PROCEDURE select_notvalid_gtd
  IS
    cursor f_ is
      select b.n_id, b.quantity, a.quantity as gtd_counter
      from (
        SELECT a.n_id, sum( a.input-a.output_store ) as quantity
        FROM store_gtd a
        group by n_id
      ) a, store_main b
      where a.n_id = b.n_id and a.quantity <> b.quantity
      and b.quantity > 0
      ;
    vNID     number;
    vStoreQ  number;
    vGTDQ    number;
  begin
    open f_;
    loop
      fetch f_ into vNID, vStoreQ, vGTDQ;
      exit when f_%notfound;

      repair_gtd_counter_by_step(vNID);
    end loop;
    close f_;
  EXCEPTION
    WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.select_notvalid_gtd', vNID);
        RAISE_APPLICATION_ERROR (-20903, 'Запрос не выполнился. ' || SQLERRM);
  end select_notvalid_gtd;


  -- Просмотр где номенклатура засветилась в системе
  -- Выдает просто спиок. где она участвовала
  PROCEDURE list_nom_moving
  (
    in_nid  number,
    cursor_ out ref_cursor
  )
  IS
  begin

  open cursor_ for
    select 0, compiled_name_otdel ||' '|| s_name_ru as dvigenie from nomenclature_mat_view where n_id = in_nid
    union all
    select quantity, 'Кол-во на складе' as dvigenie from store_main where n_id = in_nid
    union all
    select count(*), 'ГТД' as dvigenie from store_gtd where n_id = in_nid
    union all
    select count(*), 'Склад' as dvigenie from store_doc_data where n_id = in_nid
    union all
    select count(*), 'Бух-рия' as dvigenie from buh_doc_data where n_id = in_nid
    union all
    select count(*), 'Инвойс' as dvigenie from invoice_data where n_id = in_nid
    union all
    select count(*), 'Разнос' as dvigenie from distributions where n_id = in_nid
    union all
    select count(*), 'Заказ' as dvigenie from orders_list where n_id = in_nid
    union all
    select count(*), 'Цены' as dvigenie from price_list_all where n_id = in_nid;

  EXCEPTION
    WHEN others THEN
        LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.list_nom_moving', in_nid);
        RAISE_APPLICATION_ERROR (-20904, 'Запрос не выполнился. ' || SQLERRM);
  end list_nom_moving;


  --
  --  Сохранение пользовательских настроек
  --
  procedure save_user_setting (
    p_key  in varchar2,
    p_val  in varchar2
  ) as
    cnt_ number(10);
  begin

    SELECT COUNT(*) INTO cnt_ FROM user_settings WHERE DB_USER = USER and stg_key = p_key;
    IF cnt_ = 0
      THEN INSERT INTO user_settings (DB_USER, stg_key, stg_value) VALUES(USER, p_key, p_val);
      ELSE UPDATE user_settings SET stg_value = p_val WHERE DB_USER = USER and stg_key = p_key;
    END IF;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.save_user_setting', '');
      RAISE_APPLICATION_ERROR (-20905, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END save_user_setting;


  --
  --  Удаление всех пользовательских настроек
  --
  procedure clear_user_setting
  as
  begin

    delete FROM user_settings WHERE DB_USER = USER;
    commit;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.clear_user_setting', '');
      RAISE_APPLICATION_ERROR (-20906, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END clear_user_setting;


  --
  --  Получение всех пользовательских настроек
  --
  procedure get_user_setting (
    cursor_ out ref_cursor
  ) as
  begin

    open cursor_ for
      select db_user, stg_key, stg_value FROM user_settings WHERE DB_USER = USER;

  EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM, SQLCODE, 'service_pkg.get_user_setting', '');
      RAISE_APPLICATION_ERROR (-20907, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
  END get_user_setting;


END;
/


-- End of DDL Script for Package Body CREATOR.SERVICE_PKG

