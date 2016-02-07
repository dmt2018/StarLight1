-- Start of DDL Script for Package Body CREATOR.INVOICE2_PKG
-- Generated 10.12.2011 20:54:04 from CREATOR@STARREG

CREATE OR REPLACE 
PACKAGE invoice2_pkg
IS

/* *************************************************************************** */
/* Автор: Клепов А.В. */
/* Создание: 2011-06-16 */
/* Изменение: */
/* Для работы с таблицами по инвойсам */
/* *************************************************************************** */


-- служебная переменная для подсчето
tmp_cnt   NUMBER;
-- служебная переменная для логов
tmp_sql   varchar2(4000);
-- курсор
TYPE ref_cursor is REF CURSOR;


-- Проверка на наличие нераспознанных позиций в инвойсе
PROCEDURE check_asis
(
   IN_INV_ID      IN number
   , IN_IPP_ID    IN number
   , out_cnt      IN OUT number
   , out_errmsg   IN OUT varchar2
);

-- Копирование оставшихся сырых записей в новый инвойс
PROCEDURE copy_asis
(
   IN_INV_ID      IN number
   , IN_IPP_ID    IN number
   , out_errmsg   IN OUT varchar2
);

--
--  Достаем номенклатуру по ID
--
PROCEDURE GET_NOMENCLATURE_ID
(
    ID_DEPARTMENTS_   in number,
    n_id_             in number,
    inv_id_           in number,
    cursor_           out ref_cursor
);

END;
/

-- Grants for Package
GRANT EXECUTE ON invoice2_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY invoice2_pkg
IS


-- Проверка на наличие нераспознанных позиций в инвойсе
PROCEDURE check_asis
(
   IN_INV_ID      IN number
   , IN_IPP_ID    IN number
   , out_cnt      IN OUT number
   , out_errmsg   IN OUT varchar2
)
IS
BEGIN

   tmp_sql    :=  'select count(1) from INVOICE_DATA_AS_IS a, INVOICE_REGISTER b where a.recognised <> 1 and a.inv_id = b.inv_id and (b.inv_id = '||IN_INV_ID||' or b.ipp_id = '||IN_IPP_ID||')';
   out_errmsg := '';

   select count(1) into out_cnt from INVOICE_DATA_AS_IS a, INVOICE_REGISTER b
     where (a.recognised is null or a.recognised = 0) and a.inv_id = b.inv_id and (b.inv_id = IN_INV_ID or b.ipp_id = IN_IPP_ID)
   ;

EXCEPTION WHEN OTHERS THEN
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'invoice2_pkg.check_asis', tmp_sql);
END check_asis;


-- Копирование оставшихся сырых записей в новый инвойс
PROCEDURE copy_asis
(
   IN_INV_ID      IN number
   , IN_IPP_ID    IN number
   , out_errmsg   IN OUT varchar2
)
IS
    cursor f_ is
        select * from INVOICE_REGISTER a where (a.inv_id = IN_INV_ID or a.ipp_id = IN_IPP_ID) and rownum = 1
        ;
    f_arr f_%ROWTYPE;
    tmp_new_inv_id  number;

BEGIN

   out_errmsg := '';

   select count(1) into tmp_cnt from INVOICE_DATA_AS_IS a, INVOICE_REGISTER b
     where (a.recognised is null or a.recognised = 0) and a.inv_id = b.inv_id and (b.inv_id = IN_INV_ID or b.ipp_id = IN_IPP_ID)
   ;
   if (tmp_cnt > 0) then
        open f_;
        fetch f_ into f_arr;

        tmp_new_inv_id := 0;
        creator.invoice_pkg.INV_REG_INSERT(f_arr.INV_DATE, 'Остатки от инв.№'||f_arr.INV_ID, f_arr.SUPPLIER_DATE, f_arr.SUPPLIER_NUMBER, f_arr.ID_DEPARTMENTS, 0, f_arr.S_ID_DEFAULT, tmp_new_inv_id, null, f_arr.id_office);
        close f_;

        if (tmp_new_inv_id = 0) then
            out_errmsg := 'Невозможно создать новый инвойс!'||Chr(10)||'Попробуйте еще раз';
            rollback;
        else

            insert into invoice_data_as_is (
                SELECT tmp_new_inv_id, a.order_number, a.order_markname, a.packing_marks,
                       a.packing_code, a.description, a.units, a.sku,
                       a.amount_in_the_pack, get_office_unique('INVOICE_DATA_AS_IS_ID'), a.hol_colour,
                       a.hol_sub_type, a.marks_content, a.marks_names, a.short_code,
                       a.short_name, a.recognised, a.bar_code, a.translation,
                       a.amount_per_unit, a.total_amount, a.remarks, a.spec_length,
                       a.spec_heads, a.spec_heads_shrub, a.spec_vd2, a.spec_width,
                       a.spec_hight, a.trolley, a.truck, a.client, a.src_trolley, b.id_office, sysdate
                  FROM invoice_data_as_is a, INVOICE_REGISTER b
                    WHERE a.inv_id = b.inv_id and (b.inv_id = IN_INV_ID or b.ipp_id = IN_IPP_ID)
                        AND (recognised is null or recognised = 0)
            );
            commit;
        end if;
   end if;

EXCEPTION WHEN OTHERS THEN
      out_errmsg := 'Произошла ошибка'||chr(10)||SQLERRM||chr(10)||'при выполнении запроса:'||tmp_sql;
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'invoice2_pkg.copy_asis', tmp_sql);
END copy_asis;



--
--  Достаем номенклатуру по ID
--
PROCEDURE GET_NOMENCLATURE_ID
(
    ID_DEPARTMENTS_   in number,
    n_id_             in number,
    inv_id_           in number,
    cursor_           out ref_cursor
)
is
begin

  if ( n_id_ <= 0 ) then
    open cursor_ for
       SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, NOM.N_ID, FN_ID, FT_ID, FST_ID, S_ID, C_ID,
              COL_ID, H_CODE, H_NAME, CODE, BAR_CODE, LEN, PACK, VBN, HOL_TYPE, WEIGHT, S_NAME_RU, COLOUR, COUNTRY,
              TYPE_SUBTYPE, F_NAME_RU || ' / ' || F_NAME F_NAMES, CUST_COEF, DIAMETER, HT_ID
              , is_photo, photo, remarks, nom.rus_marks
              , nom.compiled_name_otdel
              , units, id_office
         FROM NOMENCLATURE_MAT_VIEW NOM, (select sum(units) as units, n_id from invoice_data where inv_id = inv_id_ group by n_id) id
              WHERE nom.ID_DEPARTMENTS = ID_DEPARTMENTS_
                and nom.n_id = id.n_id(+)
              order by compiled_name_otdel
         ;
  else
    open cursor_ for
       SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, NOM.N_ID, FN_ID, FT_ID, FST_ID, S_ID, C_ID,
              COL_ID, H_CODE, H_NAME, CODE, BAR_CODE, LEN, PACK, VBN, HOL_TYPE, WEIGHT, S_NAME_RU, COLOUR, COUNTRY,
              TYPE_SUBTYPE, F_NAME_RU || ' / ' || F_NAME F_NAMES, CUST_COEF, DIAMETER, HT_ID
              , is_photo, photo, remarks, nom.rus_marks
              , nom.compiled_name_otdel
              , units, id_office
         FROM NOMENCLATURE_MAT_VIEW NOM, (select sum(units) as units, n_id from invoice_data where inv_id = inv_id_ group by n_id) id
              WHERE ID_DEPARTMENTS = ID_DEPARTMENTS_
                and nom.n_id = id.n_id(+)
                and nom.n_id = n_id_
         ;
  end if;

EXCEPTION WHEN OTHERS THEN
      LOG_ERR(SQLERRM||chr(10)||dbms_utility.format_error_backtrace, SQLCODE, 'invoice2_pkg.GET_NOMENCLATURE_ID', tmp_sql);

end GET_NOMENCLATURE_ID;



END;
/

create or replace public synonym invoice2_pkg for creator.invoice2_pkg
/
-- End of DDL Script for Package Body CREATOR.INVOICE2_PKG

