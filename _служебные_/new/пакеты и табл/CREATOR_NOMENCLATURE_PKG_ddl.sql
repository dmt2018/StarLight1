-- Start of DDL Script for Package Body CREATOR.NOMENCLATURE_PKG
-- Generated 30.09.2016 17:13:49 from CREATOR@ORCL

CREATE OR REPLACE 
PACKAGE nomenclature_pkg
IS

TYPE ref_cursor is REF CURSOR; -- сюда будем подтягивать все данные
CNT       NUMBER;
RET_VAL   NUMBER;

--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature
(
  n_id_      in  number,
  v_office in  number,
  cursor_ out ref_cursor
);


--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature2
(
  n_id_      in  number,
  cursor_  out ref_cursor
);

/*
--
-- Функцмя для добавления названия, возвращает FN_ID либо NULL в случае неудачи
--
PROCEDURE ADD_NAME
(
  IN_F_NAME_RU      IN VARCHAR2,
  IN_ID_DEPARTMENTS IN NUMBER,
  IN_NAME_CODE      in varchar2,
  IN_ID             in out number,
  OUT_TEXT          OUT VARCHAR2
);


--
-- Функция редактирования названия возвращает 1/0 в зависимости от успеха
--
PROCEDURE UPDATE_NAME
(
  IN_FN_ID                   IN NUMBER,
  IN_NEW_NAME            IN VARCHAR2,
  IN_NAME_CODE       in varchar2,
  IN_ID              in OUT number,
    OUT_TEXT                     OUT VARCHAR2
);


--
--Функция удаления названия возвращает 1/0 в зависимости от успеха
--
PROCEDURE DELETE_NAME
(
  IN_FN_ID IN NUMBER,
  OUT_TEXT OUT VARCHAR2
);


--
-- Функцмя для добавления перевода, возвращает FNT_ID либо NULL в случае неудачи
--
PROCEDURE ADD_TRANSLATION
(
     IN_FN_ID                           IN NUMBER,
     IN_F_NAME                          IN VARCHAR2,
--   IN_NAME_CODE                   IN VARCHAR2,
   IN_ID_                 in out number,
     OUT_TEXT                           OUT VARCHAR2
);


--
-- Функция редактирования перевода возвращает 1/0 в зависимости от успеха
--
PROCEDURE UPDATE_TRANSLATION
    (
     IN_FNT_ID              IN NUMBER,
     IN_F_NAME              IN VARCHAR2,
--   IN_NAME_CODE       IN VARCHAR2,
   IN_ID_           IN OUT NUMBER,
     OUT_TEXT               OUT VARCHAR2
);


--
-- Функция удаления перевода возвращает 1/0 в зависимости от успеха
--
PROCEDURE DELETE_TRANSLATION
(
     IN_FNT_ID              IN NUMBER,
     OUT_TEXT               OUT VARCHAR2
);
*/

--
-- Функция устанавливает перевод по умолчанию*/
--
PROCEDURE SET_DEFAULT_TRANSLATION
(
  IN_FNT_ID IN NUMBER
);


--
-- Функция редактирования данных
--
PROCEDURE SAVE_DATA
(
     ID_            IN NUMBER,
     NAME_          IN VARCHAR2,
     NAME2_         IN VARCHAR2,
     mnemo_         in varchar2,
     FNT_ID         IN NUMBER,
     what_          in number,
     where_         in number,
     dep_           in number,
     digit_         in varchar2,
     in_id_         in out number,
     OUT_TEXT       OUT VARCHAR2
);


--
-- Функция удаления страны возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_COUNTRY
(
  C_ID_ IN NUMBER,
  OUT_TEXT OUT VARCHAR2
);


--
-- Функция по вставке поставщиков
--
PROCEDURE INSERT_SUPPLIERS
(
  S_NAME_RU_    IN VARCHAR2,
  C_ID_         IN NUMBER,
  NEED_CUST_    in number,
  ANALYZE_DAYS_ in number,
  IN_ID_        in out number,
  OUT_TEXT      OUT VARCHAR2
);


--
-- Функция по редактированию поставщиков
--
PROCEDURE UPDATE_SUPPLIERS
(
  S_ID_         in number,
  S_NAME_RU_    IN VARCHAR2,
  C_ID_         IN NUMBER,
  NEED_CUST_    in number,
  ANALYZE_DAYS_ in number,
  in_id_        in out number,
  OUT_TEXT      OUT VARCHAR2
);


--
--Функция удаления названия возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_SUPPLIERS
(
  S_ID_ IN NUMBER,
  OUT_TEXT OUT VARCHAR2
);


--
--Функция удаления типа товара возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_FTYPE
(
     FT_ID_             IN NUMBER,
     OUT_TEXT     OUT VARCHAR2
);


--
-- Функция по вставке подтипа
--
PROCEDURE INSERT_SUBTYPES (
    S_NAME_RU_    IN VARCHAR2,
    FT_ID_        IN NUMBER,
    HOL_SUB_TYPE_ in VARCHAR2,
    MNEMO_        in VARCHAR2,
    wight_        in NUMBER,
    prefix_       in VARCHAR2,
    vTnVed        in VARCHAR2,
    in_id_        in OUT number,
    OUT_TEXT      OUT VARCHAR2,
    wight_dry_        in number
);


--
-- Функция по редактированию подтипа
--
PROCEDURE EDIT_SUBTYPES
(
    S_NAME_RU_    IN VARCHAR2,
    FST_ID_       IN NUMBER,
    HOL_SUB_TYPE_ in VARCHAR2,
    MNEMO_        in VARCHAR2,
    wight_        in number,
    prefix_       in VARCHAR2,
    vTnVed        in VARCHAR2,
    in_id_        in OUT number,
    OUT_TEXT      OUT VARCHAR2,
    wight_dry_        in number
);


--
--Функция удаления подтипа товара возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_FSUBTYPE
(
     FST_ID_            IN NUMBER,
     OUT_TEXT     OUT VARCHAR2
);


--
--Функция смены типа у подтипа возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE CHANGE_FSUBTYPE
(
     FST_ID_            IN NUMBER,
     FT_ID_             in number
);


--
--Функция удаления опасного цветка возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_DANGF
(
     NAME_ IN VARCHAR2,
     OUT_TEXT OUT VARCHAR2
);


--
/*Вставляем цвет*/
--
procedure INSERT_COLOUR
(
    IN_COLOUR IN VARCHAR2,
    in_id_    in OUT number
);


--
/*Редактируем цвет*/
--
procedure EDIT_COLOUR
(
    IN_COL_ID IN NUMBER,
    IN_COLOUR IN VARCHAR2,
        OUT_TEXT OUT VARCHAR2
);


--
/*Удаляем цвет*/
--
procedure DELETE_COLOUR
(
    IN_COL_ID IN NUMBER,
    OUT_TEXT out varchar
);


--
/*Вставляем перевод*/
--
PROCEDURE INSERT_H_COLOUR
(
   IN_COL_ID  IN NUMBER,
   IN_HOL_COLOUR IN VARCHAR2,
   IN_ID_     IN OUT number
);


--
/*Редактируем перевод*/
--
procedure EDIT_H_COLOUR
(
    IN_H_COL_ID IN NUMBER,
    IN_HOL_COLOUR IN VARCHAR2,
    IN_ID_        IN OUT number
);


--
/*Удаляем перевод*/
--
procedure DELETE_HOL_COLOUR
(
    IN_H_COL_ID IN NUMBER
);


--
-- Добавляем редактируем спецификацию
--
procedure             EDIT_HOL_SPEC
(
   in_hs_id            IN   NUMBER,
   in_spec_code        IN   VARCHAR2,
   in_spec_name        IN   VARCHAR2,
   in_spec_hol_name    IN   VARCHAR2,
   in_addition         IN   VARCHAR2,
   in_russian_addition IN   VARCHAR2,
   in_need_translation IN   NUMBER,
   old_spec_code       IN   VARCHAR2,
   old_spec_name       IN   VARCHAR2,
   old_spec_hol_name   IN   VARCHAR2,
   old_addition        IN   VARCHAR2,
   old_russian_addition IN  VARCHAR2,
   old_need_translation IN  NUMBER,
   in_id_               in out number,
     out_text                           out varchar2
);


--
-- Удаляем спецификацию
--
procedure DELETE_HOL_SPEC
(
    HS_ID_ IN NUMBER
);


--
-- Добавляем редактируем перевод спецификации
--
PROCEDURE EDIT_TRANS_SPEC
(
   SC_ID_                          in           number,
   HS_ID_                IN         NUMBER,
   CONTENT_HOL_        IN           VARCHAR2,
   CONTENT_RUS_        IN           VARCHAR2,
   in_id_              in out   number,
     out_text                        out            varchar2
);


--
-- Удаляем перевод спецификации
--
procedure DELETE_TRANS_SPEC
(
    SC_ID_ IN NUMBER
);


--
-- Добавляем редактируем номенклатуру
--
PROCEDURE  EDIT_NOM
(
   N_ID_             in number,
   FN_ID_            in number,
   FST_ID_           in number,
   S_ID_             in number,
   C_ID_             in number,
   H_CODE_           in varchar2,
   H_NAME_           in varchar2,
   LEN_              in number,
   PACK_             in number,
   COL_ID_           in number,
   VBN_              in number,
   HOL_TYPE_         in varchar2,
   WEIGHT_           in number,
   weightdry_        in number,
   DIAMETER_         in number,
   BAR_CODE_         in varchar2,
   CUST_COEF_        in number,
   REMARKS_          in varchar2,
   IN_ID_            in out number,
   PHOTO_            in varchar2,
   code_             in varchar2,
   noprint_          in number,
   notuse_           in number,
   vTnVed            in varchar2,
   nom_new_          in number,
   nom_start_        in number,
   nom_end_          in number,
   name_code_        in varchar2,
   hol_color_        in varchar2,
   hol_pack_         in number,
   out_text          out varchar2
);


--
-- Добавляем спецификации к новой номенклатуре
--
PROCEDURE  INS_NOM_SPEC (
   N_ID_       in number,
   HS_ID_      in varchar2,
   HS_VAL_     in varchar2,
   SC_ID_      in number
);


---
--Функция удаления спецификации возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_SPEC
(
     N_ID_ IN NUMBER,
     OUT_TEXT OUT VARCHAR2
);


--
--Функция удаления спецификации возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_NOM_SPEC
(
     N_ID_    IN NUMBER,
     HS_IDS_  in number,
     SC_ID_   in number,
     OUT_TEXT OUT VARCHAR2
);


--
--  Копирование номенклатуры
--
PROCEDURE  COPY_NOMENCLATURE
(
  N_ID_IN IN NUMBER,
  N_ID_OUT OUT NUMBER
);


--
-- Выбираем названия
--
PROCEDURE  select_name (
   dep_                      in number,
   cursor_         in out ref_cursor
);


--
-- Выбираем тип
--
PROCEDURE  select_type (
   dep_                      in number,
   cursor_         in out ref_cursor
);


--
-- Выбираем подтип
--
PROCEDURE  select_subtype (
   ft_id_                    in number,
   cursor_         in out ref_cursor
);


--
-- Выбираем поставщика
--
PROCEDURE  select_supplier (
   cursor_         in out ref_cursor
);

--
-- Выбираем страну
--
PROCEDURE  select_country (
   cursor_         in out ref_cursor
);

--
-- Выбираем цвет
--
PROCEDURE  select_COLOURS (
   cursor_         in out ref_cursor
);


--
-- Выбираем гол.подтип
--
PROCEDURE  select_htype (
   cursor_         in out ref_cursor
);



--
-- Выбираем количетсво стеблей для подтипов
--
PROCEDURE  select_def_subtype (
   id_dep_      in number,
   cursor_      in out ref_cursor
);


--
-- Ставим количетсво стеблей для подтипов
--
PROCEDURE  set_def_subtype (
   id_subtype_  in number,
   id_dep_      in number,
   num_         in number--,
--   cursor_      in out ref_cursor
);


--
-- Функция по редактированию формул
--
PROCEDURE import_weight
(
    param_        IN VARCHAR2,
    value_        IN NUMBER,
    OUT_TEXT      OUT VARCHAR2
);


--
--  проверка наличия кода
--
PROCEDURE BAR_CODE_EXIST
(
  IN_BAR_CODE in VARCHAR2,
  IN_ID_      in out number
);


--
-- Редактируем параметры номенклатуры
--
PROCEDURE  UPDATE_PARAMS
(
     N_ID_IN            in number,
     FN_ID_IN           in number,
     FST_ID_IN          in number,
     C_ID_IN            in number,
     S_ID_IN            in number,
     COL_ID_IN          in number,
     LEN_IN             in number,
     PACK_IN            in number,
     PACK_HOL_IN        in number,
     HOL_TYPE_IN        in varchar2,
     WEIGTH_IN          in number,
     WEIGTHDRY_IN       in number,
     DIAMETR_IN         in number,
     COEF_IN            in number,
     VBN_IN             in number,
     PHOTO_IN           in varchar2,
     noprint_           in number,
     notuse_            in number,
     nom_new_           in number,
     nom_start_         in number,
     nom_end_           in number,
     TNVED_IN           in varchar2,
     CODENAME_IN        in varchar2,
     HOLCOLOR_IN        in varchar2,
     REMARKS_IN         in varchar2
);


--
-- Удаляем фотку
--
PROCEDURE  remove_img
(
   N_ID_                in number,
   tt_          in out number
);


--
-- Синхронизируем номенклатуру
--
PROCEDURE  sync_nomenclature ;


--
-- Прогоним фотки
--
PROCEDURE identfy_photo
(
   v_n_id        in number,
   v_photo       in varchar2
);


--
-- Проверим нет ли уже такого перевода в отделе
--
PROCEDURE CHECK_TRANSLATION
(
     IN_DEBT       IN NUMBER,
     IN_F_NAME     IN VARCHAR2,
     OUT_TEXT      OUT VARCHAR2
);



--
-- Изменим спецификацию номенклатуры
--
PROCEDURE UPDATE_SPECIFICATIONS
(
   N_ID_IN        in number,
   param_IN       in varchar2
);


--
--Функция смены подтипа на другой у номенклатуры
--
PROCEDURE CHANGE_SUBTYPE_FROM_TO
(
     v_FST_ID_FROM        IN NUMBER,
     v_FST_ID_TO          in number
);


END; -- Package nomenclature_pkg
/

-- Grants for Package
GRANT EXECUTE ON nomenclature_pkg TO new_role
/

CREATE OR REPLACE 
PACKAGE BODY nomenclature_pkg
IS

--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature
(
  n_id_      in  number,
  v_office in  number,
  cursor_  out ref_cursor
)
IS
BEGIN
  open cursor_ for
       SELECT /*+ NO_CPU_COSTING */ 0 as d_check, f_name, f_name_ru, f_sub_type, f_type, country, type_subtype
              , n_id, fn_id, ft_id, fst_id, s_id, c_id, col_id, h_code, h_name, code, len, pack, vbn, hol_type
              , weight, weightdry, s_name_ru, colour, is_photo, hol_marks, rus_marks, diameter, bar_code, cust_coef
              , REMARKS, photo, compiled_name_otdel, a.noprint, a.notuse, a.namecode
              , o.id_office, o.brief
       FROM nomenclature_mat_view a, offices o
       WHERE ID_DEPARTMENTS = n_id_ and (o.id_office in (1,v_office) or v_office = 0) and a.id_office = o.id_office
       order by compiled_name_otdel;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.get_nomenclature', '');
           RAISE_APPLICATION_ERROR (-20031, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;


--
-- Выбор номенклатуры
--
PROCEDURE get_nomenclature2
(
  n_id_      in  number,
  cursor_  out ref_cursor
)
IS
BEGIN
  open cursor_ for
       SELECT /*+ NO_CPU_COSTING */ 0 as d_check, f_name, f_name_ru, f_sub_type, f_type, country, type_subtype
              , n_id, fn_id, ft_id, fst_id, s_id, c_id, col_id, h_code, h_name
              , to_char(code) as code, len, pack, vbn, hol_type, weight, weightdry, s_name_ru, colour, is_photo
              , hol_marks, rus_marks, diameter, to_char(bar_code) as bar_code, cust_coef, REMARKS
              , photo, great_name_f, compiled_name_otdel, noprint, notuse, namecode
      FROM nomenclature_mat_view
      WHERE ID_DEPARTMENTS = n_id_
      order by compiled_name_otdel;

EXCEPTION
      WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.get_nomenclature', '');
           RAISE_APPLICATION_ERROR (-20031, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);
END;

/*
--
-- Функцмя для добавления названия, возвращает FN_ID либо NULL в случае неудачи
--
PROCEDURE ADD_NAME
(
  IN_F_NAME_RU      IN VARCHAR2,
  IN_ID_DEPARTMENTS IN NUMBER,
  IN_NAME_CODE      in varchar2,
  IN_ID             in OUT number,
  OUT_TEXT          OUT VARCHAR2
)
IS
  TMP_FN_ID   NUMBER;
BEGIN
  OUT_TEXT := '';

  /*Проверяем нет ли такого названия уже в базе!/
  SELECT COUNT(1) INTO CNT from dual where exists (
        SELECT 1 FROM FLOWER_NAMES where upper(F_NAME_RU) = upper(IN_F_NAME_RU) AND ID_DEPARTMENTS = IN_ID_DEPARTMENTS
  );

  IF CNT > 0 THEN
     OUT_TEXT := 'К сожалению, такое название уже есть в базе данных!';
     IN_ID    := 0;

     IF CNT = 1 THEN
        SELECT FN_ID INTO TMP_FN_ID FROM FLOWER_NAMES
            WHERE upper(F_NAME_RU) = upper(IN_F_NAME_RU) AND
                  ID_DEPARTMENTS = IN_ID_DEPARTMENTS;
        IN_ID := TMP_FN_ID;
     END IF;
  END IF;


  /*Проверяем нет ли такого кода поставщика уже в базе!/
  IF length(trim(IN_NAME_CODE)) > 0 THEN

      SELECT COUNT(1) INTO CNT from dual where exists (
          SELECT 1 FROM FLOWER_NAMES where upper(name_code) = upper(IN_NAME_CODE) AND
                      ID_DEPARTMENTS = IN_ID_DEPARTMENTS
      );

      IF CNT > 0 THEN
         OUT_TEXT := 'К сожалению, такой код поставщика уже есть в базе данных!';
         IN_ID    := 0;

         IF CNT = 1 THEN
              SELECT FN_ID INTO TMP_FN_ID FROM FLOWER_NAMES
                WHERE upper(name_code) = upper(IN_NAME_CODE) AND
                      ID_DEPARTMENTS = IN_ID_DEPARTMENTS;
              IN_ID := TMP_FN_ID;
         END IF;
      END IF;
  end if;

  IF (OUT_TEXT = '' or OUT_TEXT is null) THEN
        SELECT FN_ID.NEXTVAL INTO TMP_FN_ID FROM DUAL;
        INSERT INTO FLOWER_NAMES (FN_ID, ID_DEPARTMENTS, F_NAME_RU, NAME_CODE) VALUES (TMP_FN_ID, IN_ID_DEPARTMENTS, IN_F_NAME_RU, IN_NAME_CODE);
        COMMIT;
        IN_ID    := TMP_FN_ID;
  end if;

EXCEPTION
        WHEN others THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.ADD_NAME', '');
           RAISE_APPLICATION_ERROR (-20032, 'Запрос не выполнился. ' || SQLERRM);

END; --ADD_NAME;



--
-- Функция редактирования названия возвращает 1/0 в зависимости от успеха
--
PROCEDURE UPDATE_NAME
(
  IN_FN_ID           IN NUMBER,
  IN_NEW_NAME        IN VARCHAR2,
  IN_NAME_CODE       in varchar2,
  IN_ID              in OUT number,
  OUT_TEXT           OUT VARCHAR2
)
IS
    OLD_NAME            VARCHAR2(256);
    OLD_ID_DEPARTMENTS  NUMBER;

BEGIN
  SELECT COUNT(*) INTO CNT FROM dual where exists ( select 1 from FLOWER_NAMES WHERE FN_ID = IN_FN_ID );

  IF CNT <> 1 THEN
     OUT_TEXT := 'Искомая строка не найдена!';
     IN_ID := 0;
  END IF;

  /*Выбираем старое имя и отдел/
  SELECT  F_NAME_RU, ID_DEPARTMENTS INTO OLD_NAME, OLD_ID_DEPARTMENTS
     FROM FLOWER_NAMES
     WHERE FN_ID = IN_FN_ID;

  /*Проверяем нет ли такого названия уже в базе!/
  SELECT COUNT(*) INTO CNT from dual where exists
  (
      select 1 FROM FLOWER_NAMES
        WHERE upper(F_NAME_RU) = upper(IN_NEW_NAME)
          AND ID_DEPARTMENTS = OLD_ID_DEPARTMENTS
          and FN_ID <> IN_FN_ID
  );

  IF CNT > 0 THEN
     OUT_TEXT := 'К сожалению, такое название уже есть!';
     IN_ID := 0;
  else

     /*Проверяем нет ли такого кода поставщика уже в базе!/
     IF  length(trim(IN_NAME_CODE)) > 0 THEN

        SELECT COUNT(*) INTO CNT from dual where exists
        (
            select 1 FROM FLOWER_NAMES
            WHERE upper(name_code) = upper(IN_NAME_CODE)
              AND ID_DEPARTMENTS = OLD_ID_DEPARTMENTS
              and FN_ID <> IN_FN_ID
        );

        IF CNT > 0 THEN
           OUT_TEXT := 'К сожалению, такой код поставщика уже есть в базе данных!';
           IN_ID    := 0;
        else
           UPDATE FLOWER_NAMES SET F_NAME_RU = IN_NEW_NAME, NAME_CODE = IN_NAME_CODE
           WHERE FN_ID = IN_FN_ID;

           nomenclature2_pkg.sync_nomenclature_one(IN_FN_ID);

           COMMIT;
           OUT_TEXT := 'Обновление прошло успешно!';
           IN_ID := 1;
        END IF;
     else
           UPDATE FLOWER_NAMES SET F_NAME_RU = IN_NEW_NAME
           WHERE FN_ID = IN_FN_ID;

            nomenclature2_pkg.sync_nomenclature_one(IN_FN_ID);

           COMMIT;
           OUT_TEXT := 'Обновление прошло успешно!';
           IN_ID := 1;
     end if;

    END IF;

EXCEPTION
     WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_NAME', '');
           RAISE_APPLICATION_ERROR (-20033, 'Запрос не выполнился. ' || SQLERRM);

END UPDATE_NAME;



--
--Функция удаления названия возвращает 1/0 в зависимости от успеха/
--
PROCEDURE DELETE_NAME
(
     IN_FN_ID IN NUMBER,
     OUT_TEXT OUT VARCHAR2
)
IS
BEGIN
      SELECT COUNT(*) INTO CNT from dual where exists (
        SELECT 1 CNT FROM NOMENCLATURE WHERE FN_ID = IN_FN_ID
      );

      IF CNT > 0 THEN
        OUT_TEXT := 'Есть номенклатурные позиции, использующие данное название, удаление невозможно! Удалите сперва номенклатуры';
      else
        DELETE FROM FLOWER_NAMES WHERE FN_ID = IN_FN_ID;
        COMMIT;
      END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_NAME', '');
           RAISE_APPLICATION_ERROR (-20034, 'Запрос не выполнился. ' || SQLERRM);

END DELETE_NAME;
*/


--
-- Проверим нет ли уже такого перевода в отделе
--
PROCEDURE CHECK_TRANSLATION
(
     IN_DEBT       IN NUMBER,
     IN_F_NAME     IN VARCHAR2,
     OUT_TEXT      OUT VARCHAR2
)
IS
begin
      OUT_TEXT := '';

      SELECT COUNT(*) INTO CNT from dual where exists (
        SELECT 1 FROM FLOWER_NAME_TRANSLATIONS
                 WHERE upper(F_NAME) = upper(IN_F_NAME) AND ID_DEPARTMENTS = IN_DEBT and ID_OFFICE = const_office
      );

      IF CNT > 0 THEN
        OUT_TEXT := 'К сожалению, такой перевод уже есть!';
      end if;
end;


/*
--
-- Функцмя для добавления перевода, возвращает FNT_ID либо NULL в случае неудачи
--
PROCEDURE ADD_TRANSLATION
(
     IN_FN_ID               IN NUMBER,
     IN_F_NAME              IN VARCHAR2,
--   IN_NAME_CODE           IN VARCHAR2,
     IN_ID_                 in out number,
     OUT_TEXT               OUT VARCHAR2
)
IS
    TMP_ID_DEPARTMENTS  NUMBER;
    TMP_FNT_ID          NUMBER;
    TMP_DEFAULT         NUMBER;
BEGIN
null;

      SELECT COUNT(*) INTO CNT from dual where exists (
        SELECT 1 FROM FLOWER_NAMES WHERE FN_ID = IN_FN_ID
      );

      IF CNT <> 1 THEN
        OUT_TEXT := 'Искомое название не найдено!';
        IN_ID_ := 0;
      END IF;

      /*Выбираем отдел/
      SELECT ID_DEPARTMENTS INTO TMP_ID_DEPARTMENTS FROM FLOWER_NAMES WHERE FN_ID = IN_FN_ID;

      /*Проверяем нет ли такого перевода уже в базе (внутри отдела)!/
      SELECT COUNT(*) INTO CNT from dual where exists (
        SELECT 1 FROM FLOWER_NAME_TRANSLATIONS
                 WHERE upper(F_NAME) = upper(IN_F_NAME) AND ID_DEPARTMENTS = TMP_ID_DEPARTMENTS
      );

      IF CNT > 0 THEN
        OUT_TEXT := 'К сожалению, такой перевод уже есть!';
        IN_ID_ := 0;
      else
        /*Проверяем, есть ли перевод по умолчанию/

        SELECT COUNT(*) INTO CNT from dual where exists (
          SELECT  1 FROM FLOWER_NAME_TRANSLATIONS
                    WHERE DEFAULT_TRANSLATION = 1 AND FN_ID = IN_FN_ID
        );

        IF CNT = 0 THEN TMP_DEFAULT := 1;
                 ELSE TMP_DEFAULT := 0;
        END IF;

        SELECT FNT_ID.NextVal INTO TMP_FNT_ID FROM DUAL;

        INSERT INTO FLOWER_NAME_TRANSLATIONS (FN_ID,FNT_ID,F_NAME,ID_DEPARTMENTS, DEFAULT_TRANSLATION)
        VALUES (IN_FN_ID,TMP_FNT_ID,IN_F_NAME,TMP_ID_DEPARTMENTS, TMP_DEFAULT);
        COMMIT;

        IN_ID_ := TMP_FNT_ID;

      end if;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.ADD_TRANSLATION', '');
           RAISE_APPLICATION_ERROR (-20035, 'Запрос не выполнился. ' || SQLERRM);

END ADD_TRANSLATION;


--
-- Функция редактирования перевода возвращает 1/0 в зависимости от успеха/
--
PROCEDURE UPDATE_TRANSLATION
    (
     IN_FNT_ID              IN NUMBER,
     IN_F_NAME              IN VARCHAR2,
--   IN_NAME_CODE       IN VARCHAR2,
   IN_ID_           IN OUT NUMBER,
     OUT_TEXT               OUT VARCHAR2
)
IS
    OLD_TRANSLATION     VARCHAR2(256);
    OLD_ID_DEPARTMENTS  NUMBER;
BEGIN

      SELECT COUNT(*) INTO CNT FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID;

            IF CNT <> 1 THEN
        OUT_TEXT := 'Запись не найдена (нечего редактировать)!';
        IN_ID_ := 0;
      END IF;

      /*Выбираем старое имя и отдел/
      SELECT F_NAME, ID_DEPARTMENTS INTO OLD_TRANSLATION, OLD_ID_DEPARTMENTS FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID;

            /*Проверяем нет ли такого перевода уже в базе!/
            SELECT COUNT(*) INTO CNT FROM FLOWER_NAME_TRANSLATIONS
                 WHERE upper(F_NAME) = upper(IN_F_NAME) AND
                             ID_DEPARTMENTS = OLD_ID_DEPARTMENTS AND
                             FNT_ID <> IN_FNT_ID;

      IF CNT > 0 THEN
        OUT_TEXT := 'К сожалению, такое название уже есть!';
        IN_ID_ := 0;
      else

        UPDATE FLOWER_NAME_TRANSLATIONS SET F_NAME = IN_F_NAME --, NAME_CODE = IN_NAME_CODE
          WHERE FNT_ID = IN_FNT_ID;

        COMMIT;
        OUT_TEXT := '';
        IN_ID_ := 1;

      END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_TRANSLATION', '');
           RAISE_APPLICATION_ERROR (-20036, 'Запрос не выполнился. ' || SQLERRM);

END UPDATE_TRANSLATION;


--
-- Функция удаления перевода возвращает 1/0 в зависимости от успеха/
--
PROCEDURE DELETE_TRANSLATION
(
     IN_FNT_ID              IN NUMBER,
     OUT_TEXT               OUT VARCHAR2
)
IS
BEGIN

     DELETE FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID;
     COMMIT;

EXCEPTION
     WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_TRANSLATION', '');
           RAISE_APPLICATION_ERROR (-20037, 'Запрос не выполнился. ' || SQLERRM);

END DELETE_TRANSLATION;
*/

--
-- Функция редактирования данных
--
PROCEDURE SAVE_DATA
(
     ID_            IN NUMBER,
     NAME_          IN VARCHAR2,
     NAME2_         IN VARCHAR2,
     mnemo_         in varchar2,
     FNT_ID         IN NUMBER,
     what_          in number,
     where_         in number,
     dep_           in number,
     digit_         in varchar2,
     in_id_         in out number,
     OUT_TEXT       OUT VARCHAR2
)
is
     NEW_ID_ number;
     FNT_ID_ number;
begin
    NEW_ID_ := 0;

    -- Страны
    if (where_ = 0) then

       -- добавление
       if (what_ = 0) then
          SELECT COUNT(*) INTO CNT from dual where exists (
            SELECT 1 FROM COUNTRIES WHERE UPPER(COUNTRY_ENG) = upper(NAME2_)
          );

          if CNT > 0 then
             OUT_TEXT := 'К сожалению, такое название уже есть!';
             in_id_ := 0;
          else
             INSERT INTO COUNTRIES VALUES (get_office_unique('C_ID'), NAME_, NAME2_, digit_, mnemo_) returning c_id into NEW_ID_;
          end if;
       -- редактирование
       else
          SELECT COUNT(*) INTO CNT from dual where exists (
            SELECT 1 FROM COUNTRIES WHERE UPPER(COUNTRY) = upper(NAME_) AND NOT C_ID = ID_
          );

          if CNT > 0 then
             OUT_TEXT := 'К сожалению, такое название уже есть!';
             in_id_ := 0;
          else
             UPDATE COUNTRIES SET COUNTRY = NAME_, COUNTRY_ENG = NAME2_, BUH_CODE=digit_, mnemo=mnemo_ WHERE C_ID = ID_;
             NEW_ID_ := ID_;
          end if;
       end if;

    end if; -- Страны


    -- Типы цветов
    if (where_ = 2) then

       if FNT_ID is null or FNT_ID = '' then FNT_ID_ := 0;
       else FNT_ID_ := FNT_ID;
       end if;

       -- добавление
       if (what_ = 0) then
           SELECT COUNT(*) INTO CNT from dual where exists (
            SELECT 1 FROM flower_types WHERE UPPER(F_TYPE) = upper(NAME_) and id_departments = dep_ and ID_OFFICE = const_office
           );

           if CNT > 0 then
              OUT_TEXT := 'К сожалению, такое название уже есть!';
              in_id_ := 0;
           else
              INSERT INTO flower_types VALUES (get_office_unique('FT_ID'), NAME_, null, FNT_ID_, dep_, const_office, sysdate) returning ft_id into NEW_ID_;
           end if;
       -- редактирование
       else
           SELECT COUNT(*) INTO CNT from dual where exists (
             SELECT 1 FROM flower_types WHERE UPPER(F_TYPE) = upper(NAME_) and id_departments = dep_ AND NOT ft_id = ID_
           );

           if CNT > 0 then
              OUT_TEXT := 'К сожалению, такое название уже есть!';
              in_id_ := 0;
           else
              UPDATE FLOWER_TYPES SET F_TYPE = NAME_, HT_ID = FNT_ID_, date_change=sysdate WHERE FT_ID = ID_;
              NEW_ID_ := ID_;
           end if;
       end if;

    end if; -- Типы цветов

    commit;
    in_id_ := NEW_ID_;
/*
   1:suppliers,
   2:flower_types,
   3:flower_sub_types,
   4:dangerous_flowers
*/
EXCEPTION
     WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.SAVE_DATA', '');
           RAISE_APPLICATION_ERROR (-20038, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end SAVE_DATA;


--
-- Функция удаления страны возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_COUNTRY
(
  C_ID_ IN NUMBER,
  OUT_TEXT OUT VARCHAR2
)
IS
BEGIN
      SELECT COUNT(*) INTO CNT FROM NOMENCLATURE WHERE C_ID = C_ID_;
      IF CNT > 0 THEN
         OUT_TEXT := 'Есть номенклатурные позиции, использующие данного поставщика, удаление невозможно! Удалите сперва номенклатуры';
      else
         DELETE FROM COUNTRIES WHERE C_ID = C_ID_;
         COMMIT;
      END IF;

EXCEPTION
     WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_COUNTRY', '');
           RAISE_APPLICATION_ERROR (-20039, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_COUNTRY;




--
-- Функция устанавливает перевод по умолчанию*/
--
PROCEDURE SET_DEFAULT_TRANSLATION (IN_FNT_ID IN NUMBER)
AS
BEGIN

        UPDATE FLOWER_NAME_TRANSLATIONS SET DEFAULT_TRANSLATION = 0, date_change = sysdate
                     WHERE FN_ID = (SELECT FN_ID FROM FLOWER_NAME_TRANSLATIONS WHERE FNT_ID = IN_FNT_ID and id_office = const_office) and id_office = const_office;

        UPDATE FLOWER_NAME_TRANSLATIONS SET DEFAULT_TRANSLATION = 1, date_change = sysdate WHERE FNT_ID = IN_FNT_ID and id_office = const_office;
        COMMIT;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.SET_DEFAULT_TRANSLATION', '');
           RAISE_APPLICATION_ERROR (-20040, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END SET_DEFAULT_TRANSLATION;



--
-- Функция по вставке поставщиков
--
PROCEDURE INSERT_SUPPLIERS
(
  S_NAME_RU_    IN VARCHAR2,
  C_ID_         IN NUMBER,
  NEED_CUST_    in number,
  ANALYZE_DAYS_ in number,
  IN_ID_        in out number,
  OUT_TEXT      OUT VARCHAR2
)
IS
  S_ID_ number;
BEGIN
  S_ID_ := 0;

  /*Проверяем нет ли такого перевода уже в базе!*/
  SELECT COUNT(*) INTO CNT FROM SUPPLIERS
         WHERE upper(S_NAME_RU) = upper(S_NAME_RU_) and id_office = const_office;

  IF CNT > 0 THEN
    OUT_TEXT := 'К сожалению, такое название уже есть!';
    IN_ID_   := 0;
  else
    INSERT INTO SUPPLIERS VALUES(get_office_unique('S_ID'),S_NAME_RU_,C_ID_,NEED_CUST_, const_office, sysdate, ANALYZE_DAYS_) returning S_ID into S_ID_;
    COMMIT;
    IN_ID_ := S_ID_;
  END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.INSERT_SUPPLIERS', '');
           RAISE_APPLICATION_ERROR (-20041, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INSERT_SUPPLIERS;


--
-- Функция по редактированию поставщиков
--
PROCEDURE UPDATE_SUPPLIERS
(
  S_ID_         in number,
  S_NAME_RU_    IN VARCHAR2,
  C_ID_         IN NUMBER,
  NEED_CUST_    in number,
  ANALYZE_DAYS_ in number,
  in_id_        in out number,
  OUT_TEXT      OUT VARCHAR2
)
IS
BEGIN

  /*Проверяем нет ли такого перевода уже в базе!*/
  SELECT COUNT(*) INTO CNT FROM SUPPLIERS
       WHERE upper(S_NAME_RU) = upper(S_NAME_RU_) and not S_ID = S_ID_ and id_office = const_office;

  IF CNT > 0 THEN
    OUT_TEXT := 'К сожалению, такое название уже есть!';
    in_id_ := 0;
  else
    UPDATE SUPPLIERS SET S_NAME_RU = S_NAME_RU_, C_ID = C_ID_, NEED_CUST = NEED_CUST_, date_change = sysdate, ANALYZE_DAYS = ANALYZE_DAYS_ WHERE S_ID=S_ID_;
    COMMIT;
    in_id_ := S_ID_;
  END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_SUPPLIERS', '');
           RAISE_APPLICATION_ERROR (-20042, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END UPDATE_SUPPLIERS;


--
--Функция удаления названия возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_SUPPLIERS
(
     S_ID_              IN NUMBER,
     OUT_TEXT     OUT VARCHAR2
)
IS
BEGIN
      SELECT COUNT(*) INTO CNT FROM NOMENCLATURE WHERE S_ID = S_ID_;
      IF CNT > 0 THEN
        OUT_TEXT := 'Есть номенклатурные позиции, использующие данного поставщика, удаление невозможно! Удалите сперва номенклатуры';
      else
        DELETE FROM SUPPLIERS WHERE S_ID = S_ID_;
        COMMIT;
      END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_SUPPLIERS', '');
           RAISE_APPLICATION_ERROR (-20043, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_SUPPLIERS;



--
--Функция удаления типа товара возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_FTYPE
(
     FT_ID_             IN NUMBER,
     OUT_TEXT     OUT VARCHAR2
)
IS
BEGIN
      SELECT COUNT(*) INTO CNT FROM NOMENCLATURE WHERE FST_ID in (Select fst_id from FLOWER_SUBTYPES where FT_ID = FT_ID_);
      IF CNT > 0 THEN
        OUT_TEXT := 'Есть номенклатурные позиции, использующие данный тип, удаление невозможно! Удалите сперва номенклатуры';
      else
        SELECT COUNT(*) INTO CNT FROM FLOWER_SUBTYPES WHERE FT_ID = FT_ID_;
        IF CNT > 0 THEN
          OUT_TEXT := 'Есть подтипы товаров, использующие данный тип, удаление невозможно! Удалите сперва подтипы';
        else
          DELETE FROM FLOWER_TYPES WHERE FT_ID = FT_ID_;
          COMMIT;
        END IF;
      END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_FTYPE', '');
           RAISE_APPLICATION_ERROR (-20044, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_FTYPE;



--
-- Функция по вставке подтипа
--
PROCEDURE INSERT_SUBTYPES (
    S_NAME_RU_    IN VARCHAR2,
    FT_ID_        IN NUMBER,
    HOL_SUB_TYPE_ in VARCHAR2,
    MNEMO_        in VARCHAR2,
    wight_        in NUMBER,
    prefix_       in VARCHAR2,
    vTnVed        in VARCHAR2,
    in_id_        in OUT number,
    OUT_TEXT      OUT VARCHAR2,
    wight_dry_        in NUMBER
)
IS
    S_ID_ number;
BEGIN
      S_ID_ := 0;

            /*Проверяем нет ли такого перевода уже в базе!*/

            SELECT COUNT(*) INTO CNT FROM FLOWER_SUBTYPES
                 WHERE upper(F_SUB_TYPE) = upper(S_NAME_RU_) and FT_ID = FT_ID_;

      IF CNT > 0 THEN
        OUT_TEXT := 'К сожалению, такое название уже есть!';
        in_id_ := 0;
      else
            INSERT INTO FLOWER_SUBTYPES VALUES(get_office_unique('FST_ID'),S_NAME_RU_,FT_ID_,HOL_SUB_TYPE_,MNEMO_,wight_,const_office,sysdate, prefix_, vTnVed,wight_dry_) returning FST_ID into S_ID_;
        COMMIT;
        in_id_ := S_ID_;
      END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.INSERT_SUBTYPES', '');
           RAISE_APPLICATION_ERROR (-20045, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INSERT_SUBTYPES;



--
-- Функция по редактированию подтипа
--
PROCEDURE EDIT_SUBTYPES
(
    S_NAME_RU_    IN VARCHAR2,
    FST_ID_       IN NUMBER,
    HOL_SUB_TYPE_ in VARCHAR2,
    MNEMO_        in VARCHAR2,
    wight_        in number,
    prefix_       in VARCHAR2,
    vTnVed        in VARCHAR2,
    in_id_        in OUT number,
    OUT_TEXT      OUT VARCHAR2,
    wight_dry_        in number
)
IS
    S_ID_ number;
    FT_ID_ number;
BEGIN
      S_ID_ := 0;

            SELECT FT_ID INTO FT_ID_ FROM FLOWER_SUBTYPES
                 WHERE FST_ID = FST_ID_;

            /*Проверяем нет ли такого перевода уже в базе!*/
            SELECT COUNT(*) INTO CNT FROM FLOWER_SUBTYPES
                 WHERE upper(F_SUB_TYPE) = upper(S_NAME_RU_) and FT_ID = FT_ID_ and not FST_ID = FST_ID_  and id_office = const_office;

      IF CNT > 0 THEN
        OUT_TEXT := 'К сожалению, такое название уже есть!';
        in_id_ := 0;
      else
            UPDATE FLOWER_SUBTYPES SET F_SUB_TYPE = S_NAME_RU_, HOL_SUB_TYPE = HOL_SUB_TYPE_, MNEMO = mnemo_, sub_weight = wight_, date_change=sysdate, PRICE_PREFIX=prefix_, TnVed=vTnVed,sub_weight_dry = wight_dry_
            WHERE FST_ID = FST_ID_;
        COMMIT;
        in_id_ := FST_ID_;
      END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_SUBTYPES', '');
           RAISE_APPLICATION_ERROR (-20046, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END EDIT_SUBTYPES;



--
--Функция удаления подтипа товара возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_FSUBTYPE
(
     FST_ID_            IN NUMBER,
     OUT_TEXT     OUT VARCHAR2
)
IS
BEGIN
      SELECT COUNT(*) INTO CNT FROM NOMENCLATURE WHERE FST_ID = FST_ID_;
      IF CNT > 0 THEN
        OUT_TEXT := 'Есть номенклатурные позиции, использующие данный тип, удаление невозможно! Удалите сперва номенклатуры';
      else
        DELETE FROM FLOWER_SUBTYPES WHERE FST_ID = FST_ID_;
        COMMIT;
      END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_FSUBTYPE', '');
           RAISE_APPLICATION_ERROR (-20047, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_FSUBTYPE;



--
--Функция смены типа у подтипа возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE CHANGE_FSUBTYPE
(
     FST_ID_            IN NUMBER,
     FT_ID_             in number
)
IS
BEGIN

      UPDATE FLOWER_SUBTYPES SET FT_ID = FT_ID_, date_change = sysdate WHERE FST_ID = FST_ID_;
      COMMIT;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.CHANGE_FSUBTYPE', '');
           RAISE_APPLICATION_ERROR (-20048, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END CHANGE_FSUBTYPE;


--
--Функция удаления опасного цветка возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_DANGF
(
     NAME_ IN VARCHAR2,
     OUT_TEXT OUT VARCHAR2
)
IS
BEGIN
/*
      DELETE FROM DANGEROUS_FLOWERS WHERE F_NAME = NAME_;
      COMMIT;
*/
  NULL;
EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_DANGF', '');
           RAISE_APPLICATION_ERROR (-20049, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_DANGF;


--
/*Вставляем цвет*/
--
procedure INSERT_COLOUR
(
    IN_COLOUR IN VARCHAR2,
    in_id_    in OUT number
)
IS
    TMP_COL_ID NUMBER;
    CNT        NUMBER;
BEGIN

      /*Проверяем наличие такого-же цвета*/
    SELECT COUNT(*) INTO CNT FROM COLOURS WHERE UPPER(trim(COLOUR)) = UPPER(trim(IN_COLOUR)) and id_office=const_office;

    IF CNT > 0 THEN
      /*Возвращаем ID одинакого цвета*/
      SELECT COL_ID INTO TMP_COL_ID FROM COLOURS WHERE UPPER(trim(COLOUR)) = UPPER(trim(IN_COLOUR)) and id_office=const_office;
      in_id_ := TMP_COL_ID;
    else
      SELECT get_office_unique('COL_ID') INTO TMP_COL_ID from DUAL;
      INSERT INTO COLOURS (COL_ID, COLOUR, ORD, id_office, date_change) VALUES (TMP_COL_ID, IN_COLOUR, 0, const_office, sysdate);
      COMMIT;
      in_id_ := TMP_COL_ID;
    END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.INSERT_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20050, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INSERT_COLOUR;


--
/*Редактируем цвет*/
--
procedure EDIT_COLOUR
(
    IN_COL_ID IN NUMBER,
    IN_COLOUR IN VARCHAR2,
        OUT_TEXT OUT VARCHAR2
)
IS
    TMP_COL_ID NUMBER;
  BEGIN

      /*Проверяем наличие такого-же цвета*/
    SELECT COUNT(*) INTO CNT FROM COLOURS WHERE UPPER(COLOUR) = UPPER(IN_COLOUR) and col_id <> IN_COL_ID and id_office=const_office;

    IF CNT > 0 THEN
       OUT_TEXT := 'К сожалению, такое название уже есть!';
    else
      UPDATE COLOURS SET COLOUR = IN_COLOUR, date_change=sysdate WHERE COL_ID=IN_COL_ID;
      COMMIT;
    END IF;

EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20051, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END EDIT_COLOUR;


--
/*Удаляем цвет*/
--
procedure DELETE_COLOUR
(
    IN_COL_ID IN NUMBER,
    OUT_TEXT out varchar
)
IS
BEGIN

      SELECT COUNT(*) INTO CNT FROM NOMENCLATURE WHERE COL_ID = IN_COL_ID;
      IF CNT > 0 THEN
        OUT_TEXT := 'Есть номенклатурные позиции, использующие данный цвет, удаление невозможно! Удалите сперва номенклатуры';
      else
        DELETE FROM COLOURS WHERE COL_ID = IN_COL_ID;
        COMMIT;
      END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20052, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_COLOUR;


--
/*Вставляем перевод*/
--
PROCEDURE INSERT_H_COLOUR
(
   IN_COL_ID  IN NUMBER,
   IN_HOL_COLOUR IN VARCHAR2,
   IN_ID_     IN OUT number
)
IS
    TMP_H_COL_ID NUMBER;
    CNT        NUMBER;
BEGIN

      /*Проверяем наличие такого-же перевода*/
    SELECT COUNT(*) INTO CNT FROM H_COLOURS WHERE UPPER(trim(HOL_COLOUR)) = UPPER(trim(IN_HOL_COLOUR)) and id_office=const_office;

    /*Возвращаем ID одинакого перевода*/
    IF CNT > 0 THEN
             SELECT H_COL_ID INTO TMP_H_COL_ID FROM H_COLOURS WHERE UPPER(trim(HOL_COLOUR)) = UPPER(trim(IN_HOL_COLOUR)) and id_office=const_office;
       IN_ID_ := TMP_H_COL_ID;
    else
      SELECT get_office_unique('H_COL_ID') INTO TMP_H_COL_ID from DUAL;
      INSERT INTO H_COLOURS (COL_ID, H_COL_ID, HOL_COLOUR, id_office, date_change)
                   VALUES (IN_COL_ID, TMP_H_COL_ID, IN_HOL_COLOUR, const_office, sysdate);
      COMMIT;
      IN_ID_ := TMP_H_COL_ID;
    END IF;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.INSERT_H_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20053, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END INSERT_H_COLOUR;


--
/*Редактируем перевод*/
--
procedure EDIT_H_COLOUR
(
    IN_H_COL_ID   IN NUMBER,
    IN_HOL_COLOUR IN VARCHAR2,
    IN_ID_        IN OUT number
)
IS
    TMP_H_COL_ID NUMBER;
BEGIN

      /*Проверяем наличие такого-же перевода*/
    SELECT COUNT(*) INTO CNT FROM H_COLOURS WHERE UPPER(HOL_COLOUR) = UPPER(IN_HOL_COLOUR) and id_office=const_office;

    /*Возвращаем ID одинакого перевода*/
    IF CNT > 0 THEN
             SELECT H_COL_ID INTO TMP_H_COL_ID FROM H_COLOURS WHERE UPPER(HOL_COLOUR) = UPPER(IN_HOL_COLOUR) and id_office=const_office;
       IN_ID_ := TMP_H_COL_ID;
    else
      UPDATE H_COLOURS SET HOL_COLOUR = IN_HOL_COLOUR, date_change=sysdate WHERE H_COL_ID = IN_H_COL_ID;
      COMMIT;
      IN_ID_ := IN_H_COL_ID;
    end if;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_H_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20054, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END EDIT_H_COLOUR;


--
/*Удаляем перевод*/
--
procedure DELETE_HOL_COLOUR
(
    IN_H_COL_ID IN NUMBER
)
IS
BEGIN
    DELETE FROM H_COLOURS WHERE H_COL_ID = IN_H_COL_ID;
    COMMIT;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_HOL_COLOUR', '');
           RAISE_APPLICATION_ERROR (-20055, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_HOL_COLOUR;




--
-- Добавляем редактируем спецификацию
--
procedure             EDIT_HOL_SPEC
(
   in_hs_id            IN   NUMBER,
   in_spec_code        IN   VARCHAR2,
   in_spec_name        IN   VARCHAR2,
   in_spec_hol_name    IN   VARCHAR2,
   in_addition         IN   VARCHAR2,
   in_russian_addition IN   VARCHAR2,
   in_need_translation IN   NUMBER,
   old_spec_code       IN   VARCHAR2,
   old_spec_name       IN   VARCHAR2,
   old_spec_hol_name   IN   VARCHAR2,
   old_addition        IN   VARCHAR2,
   old_russian_addition IN  VARCHAR2,
   old_need_translation IN  NUMBER,
   in_id_               in out number,
     out_text                           out varchar2
)
IS
   outpt   NUMBER;

BEGIN
   outpt := 0;

   /*Проверяем наличие такого-же перевода*/
   SELECT COUNT(*) INTO CNT FROM hol_specifications WHERE UPPER(spec_code) = UPPER(in_spec_code) and (hs_id <> in_hs_id or in_hs_id = -1);

   /*Возвращаем ID одинакого перевода*/
   IF CNT > 0 THEN
             SELECT hs_id INTO in_id_ FROM hol_specifications WHERE UPPER(spec_code) = UPPER(in_spec_code) and (hs_id <> in_hs_id or in_hs_id = -1);
       out_text := 'Такое код уже существует';
   else

     IF in_hs_id = -1
     THEN --Добавление
        INSERT INTO hol_specifications
           VALUES (get_office_unique('hs_id') ,in_spec_code, in_spec_name, in_spec_hol_name, in_addition,in_russian_addition,in_need_translation)
                     returning hs_id into outpt;

     ELSE --Редактирование

        UPDATE hol_specifications
         SET spec_code = in_spec_code,
             spec_name = in_spec_name,
             spec_hol_name = in_spec_hol_name,
             addition = in_addition,
             russian_addition = in_russian_addition,
             need_translation = in_need_translation
         WHERE hs_id = in_hs_id;

        outpt := in_hs_id;
     END IF;

     COMMIT;
     in_id_ := outpt;

   end if;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_HOL_SPEC', '');
           RAISE_APPLICATION_ERROR (-20056, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;



--
-- Удаляем спецификацию
--
procedure DELETE_HOL_SPEC (
    HS_ID_ IN NUMBER)
AS
BEGIN

    delete from specification_content where HS_ID = HS_ID_;
    DELETE FROM HOL_SPECIFICATIONS WHERE HS_ID = HS_ID_;
    COMMIT;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_HOL_SPEC', '');
           RAISE_APPLICATION_ERROR (-20057, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_HOL_SPEC;





--
-- Добавляем редактируем перевод спецификации
--
PROCEDURE EDIT_TRANS_SPEC
(
   SC_ID_              in       number,
   HS_ID_              IN       NUMBER,
   CONTENT_HOL_        IN       VARCHAR2,
   CONTENT_RUS_        IN       VARCHAR2,
   in_id_              in out   number,
   out_text            out      varchar2
)
IS
   outpt   NUMBER;

BEGIN
   outpt := 0;

   IF SC_ID_ = -1
   THEN --Добавление
            insert into SPECIFICATION_CONTENT VALUES (get_office_unique('SC_ID'), HS_ID_, CONTENT_HOL_, CONTENT_RUS_) returning SC_ID into outpt;

   ELSE --Редактирование
            update SPECIFICATION_CONTENT set CONTENT_HOL = CONTENT_HOL_, CONTENT_RUS = CONTENT_RUS_ WHERE SC_ID = SC_ID_;

      outpt := SC_ID_;
   END IF;

   COMMIT;
   in_id_ := outpt;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC', '');
           RAISE_APPLICATION_ERROR (-20058, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;



--
-- Удаляем перевод спецификации
--
procedure DELETE_TRANS_SPEC
(
    SC_ID_ IN NUMBER
)
AS
BEGIN

    DELETE FROM SPECIFICATION_CONTENT WHERE SC_ID = SC_ID_;
    COMMIT;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_TRANS_SPEC', '');
           RAISE_APPLICATION_ERROR (-20059, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_TRANS_SPEC;





--
-- Добавляем редактируем номенклатуру
--
PROCEDURE  EDIT_NOM
(
     N_ID_             in number,
     FN_ID_            in number,
     FST_ID_           in number,
     S_ID_             in number,
     C_ID_             in number,
     H_CODE_           in varchar2,
     H_NAME_           in varchar2,
     LEN_              in number,
     PACK_             in number,
     COL_ID_           in number,
     VBN_              in number,
     HOL_TYPE_         in varchar2,
     WEIGHT_           in number,
     weightdry_        in number,
     DIAMETER_         in number,
     BAR_CODE_         in varchar2,
     CUST_COEF_        in number,
     REMARKS_          in varchar2,
     IN_ID_            in out number,
     PHOTO_            in varchar2,
     code_             in varchar2,
     noprint_          in number,
     notuse_           in number,
     vTnVed            in varchar2,
     nom_new_          in number,
     nom_start_        in number,
     nom_end_          in number,
     name_code_        in varchar2,
     hol_color_        in varchar2,
     hol_pack_         in number,
     out_text          out varchar2
)
IS
   outpt      NUMBER;
   sqlstr     varchar2(4096);
   bar_code12 varchar2(12);
   bar_code13 number;
BEGIN
   outpt := 0;

   IF N_ID_ = -1 then
        select count(*) into CNT from NOMENCLATURE
        where FN_ID = FN_ID_ and FST_ID = FST_ID_ and S_ID = S_ID_ and C_ID = C_ID_ and H_CODE = H_CODE_ and H_NAME = REPLACE(H_NAME_,'''','`') and
                        LEN = LEN_ and PACK = PACK_ and COL_ID = COL_ID_ and VBN = VBN_ and HOL_TYPE = HOL_TYPE_
                        and DIAMETER = DIAMETER_ and BAR_CODE = BAR_CODE_ and CUST_COEF = CUST_COEF_ and REMARKS = REMARKS_ and hol_pack = hol_pack_
                        and id_office=const_office;

            if CNT > 0 then
             select N_ID into outpt from NOMENCLATURE
                            where FN_ID = FN_ID_ and FST_ID = FST_ID_ and S_ID = S_ID_ and C_ID = C_ID_ and H_CODE = H_CODE_ and H_NAME = REPLACE(H_NAME_,'''','`') and
                                            LEN = LEN_ and PACK = PACK_ and COL_ID = COL_ID_ and VBN = VBN_ and HOL_TYPE = HOL_TYPE_ and WEIGHT = WEIGHT_
                                            and weightdry = weightdry_ and DIAMETER = DIAMETER_ and BAR_CODE = BAR_CODE_ and CUST_COEF = CUST_COEF_ and REMARKS = REMARKS_
                                            and id_office=const_office and hol_pack = hol_pack_;
          end if;
   else
        select count(*) into CNT from NOMENCLATURE
        where FN_ID = FN_ID_ and FST_ID = FST_ID_ and S_ID = S_ID_ and C_ID = C_ID_ and H_CODE = H_CODE_ and H_NAME = REPLACE(H_NAME_,'''','`') and
                        LEN = LEN_ and PACK = PACK_ and COL_ID = COL_ID_ and VBN = VBN_ and HOL_TYPE = HOL_TYPE_ and DIAMETER = DIAMETER_ and
                        BAR_CODE = BAR_CODE_ and CUST_COEF = CUST_COEF_ and REMARKS = REMARKS_ and N_ID <> N_ID_ and hol_pack = hol_pack_
                        and id_office=const_office;

            if CNT > 0 then
                 out_text := 'Такая номенклатурная позиция уже существует!';
                 outpt := N_ID_;
            end if;
   end if;

   if CNT = 0 then
   IF N_ID_ = -1
   THEN --Добавление
      out_text := '';
      select count(*) into CNT from NOMENCLATURE
      where S_ID = S_ID_ and BAR_CODE = BAR_CODE_ and bar_code is not null and id_office=const_office;
      if CNT > 0 then
         out_text := 'Такая номенклатурная позиция со штрих-кодом поставщка'||BAR_CODE_||' уже существует!';
         outpt := N_ID_;
      end if;

      if FN_ID_ = 0 or FN_ID_ is null then
         out_text := 'Не указано название для товара '||REPLACE(H_NAME_,'''','`');
         outpt := -1;
      end if;

      if COL_ID_ = 0 or COL_ID_ is null then
         out_text := 'Не указан цвет для товара '||REPLACE(H_NAME_,'''','`');
         outpt := -1;
      end if;

      if CNT = 0 then
          if code_ is not null and length(code_) = 13 then bar_code13 := code_;
          else
            select CODE_SEQ.NEXTVAL into bar_code12 from dual;
            bar_code13 := EAN12_TO_EAN13(bar_code12);
          end if;

                sqlstr := 'INSERT INTO NOMENCLATURE (N_ID, FN_ID, FST_ID, S_ID, C_ID, H_CODE, H_NAME, LEN, PACK, COL_ID, VBN, HOL_TYPE, WEIGHT, DIAMETER, BAR_CODE, code, CUST_COEF, REMARKS, PHOTO, ID_OFFICE, TnVed, weightdry, nom_new, nom_start, nom_end, H_NAMECODE, HOL_COLOR)
                VALUES (    N_ID.NEXTVAL, '||FN_ID_||', '||FST_ID_||', '||S_ID_||', '||C_ID_||', '||H_CODE_||', '||REPLACE(H_NAME_,'''','`')||', '||LEN_||', '||PACK_||', '||COL_ID_||', '||VBN_||', '||HOL_TYPE_||', '||WEIGHT_||', '||DIAMETER_||',
                                    '||BAR_CODE_||', '||bar_code13||', '||CUST_COEF_||', '||REMARKS_||', '||PHOTO_||','|| const_office ||','''||vTnVed||''','|| weightdry_ ||','|| nom_new_ ||','|| nom_start_ ||','|| nom_end_ ||','''||REPLACE(name_code_,'''','`')||''','''||hol_color_||''')';

--LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_NOM', sqlstr);

                INSERT INTO NOMENCLATURE (N_ID, FN_ID, FST_ID, S_ID, C_ID, H_CODE, H_NAME, LEN, PACK, COL_ID, VBN, HOL_TYPE, WEIGHT, DIAMETER,
                                        BAR_CODE, code, CUST_COEF, REMARKS, PHOTO, ID_OFFICE, noprint, notuse, TnVed, weightdry, nom_new, nom_start, nom_end, H_NAMECODE, HOL_COLOR, hol_pack)
                 VALUES (   get_office_unique('N_ID'), FN_ID_, FST_ID_, S_ID_, C_ID_, trim(H_CODE_), trim(REPLACE(H_NAME_,'''','`')), LEN_, PACK_, COL_ID_, VBN_, HOL_TYPE_, WEIGHT_, DIAMETER_,
                                    trim(BAR_CODE_), bar_code13, CUST_COEF_, REMARKS_,  PHOTO_, const_office, noprint_, notuse_, vTnVed, weightdry_, nom_new_, nom_start_, nom_end_, REPLACE(name_code_,'''','`'), hol_color_, hol_pack_
                                ) returning N_ID into outpt;

         insert into NOMENCLATURE_MAT_VIEW a (
           a.compiled_name, a.full_name, a.f_name, a.f_name_ru,
           a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id,
           a.hol_sub_type, a.sub_weight, a.ht_id, a.n_id, a.fn_id, a.fst_id,
           a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.len,
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.weightdry, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel, ID_OFFICE
           , a.noprint, a.notuse, a.namecode, a.TnVed
           , a.nom_new, a.nom_start, a.nom_end, a.hol_color, a.hol_pack
         )
         select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, b.sub_weight, b.ht_id, b.n_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.weightdry, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code

           , case when b.id_departments = 62 then
               decode(b.ft_id,113,'Роза ',115,'Роза Эквадор ',2,'Хризантема ','') || b.f_name_ru || decode(b.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','') || case when b.RUS_MARKS is null then null else '. ' || b.RUS_MARKS end
               --|| (case when b.col_id in (0,1639,2768,2915) then null else '. '||b.colour end)
             else
               b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else b.colour||'. ' end) || b.RUS_MARKS
           end compiled_name_otdel

          , const_office, b.noprint, b.notuse, b.flower_name_code, b.TnVed
          , nom_new_, nom_start_, nom_end_, b.hol_color, b.hol_pack
         from nomenclature_full_view b where b.n_id = outpt
         ;
      end if;

   ELSE --Редактирование

      select count(*) into CNT from NOMENCLATURE
      where S_ID = S_ID_ and BAR_CODE = BAR_CODE_ and bar_code is not null and id_office=const_office and n_id <> N_ID_;
      if CNT > 0 then
         out_text := 'Такая номенклатурная позиция со штрих-кодом поставщка'||BAR_CODE_||' уже существует!';
         outpt := N_ID_;
      end if;

      if CNT = 0 then
            UPDATE NOMENCLATURE SET FN_ID = FN_ID_, FST_ID = FST_ID_, S_ID = S_ID_, C_ID = C_ID_, H_CODE = trim(H_CODE_), H_NAME = trim(REPLACE(H_NAME_,'''','`')),
                             LEN = LEN_, PACK = PACK_, COL_ID = COL_ID_, VBN = VBN_, HOL_TYPE = HOL_TYPE_, WEIGHT = WEIGHT_, weightdry=weightdry_, DIAMETER = DIAMETER_,
                             BAR_CODE = trim(BAR_CODE_), CUST_COEF = CUST_COEF_, REMARKS = REMARKS_, noprint = noprint_, notuse = notuse_, TnVed = vTnVed
                             , nom_new = nom_new_, nom_start = nom_start_, nom_end = nom_end_, H_NAMECODE = REPLACE(name_code_,'''','`'), hol_color = hol_color_
                             , date_change = sysdate, hol_pack = hol_pack_
                             WHERE N_ID = N_ID_;

            nomenclature2_pkg.sync_nomenclature_one(N_ID_);
            outpt := N_ID_;
      end if;
   END IF;

   COMMIT;
   end if;

   IN_ID_ := outpt;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.EDIT_NOM', sqlstr);
           RAISE_APPLICATION_ERROR (-20060, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;




--
-- Добавляем спецификации к новой номенклатуре
--
PROCEDURE  INS_NOM_SPEC (
   N_ID_       in number,
   HS_ID_      in varchar2,
   HS_VAL_     in varchar2,
   SC_ID_      in number
)
is
begin
--  LOG_ERR('N_ID_='||N_ID_||' HS_ID_='||HS_ID_||' HS_VAL_='||HS_VAL_||' SC_ID_='||SC_ID_, 0, 'NOMENCLATURE_PKG.INS_NOM_SPEC', '');
  select count(*) into CNT from NOM_SPECIFICATIONS a where a.n_id = N_ID_ and HS_ID = HS_ID_ and nvl(HS_VAL,'-') = nvl(HS_VAL_,'-') and ID_OFFICE = const_office and nvl(sc_id,0) = nvl(sc_id_,0);
--  LOG_ERR('CNT='||CNT, 1, 'NOMENCLATURE_PKG.INS_NOM_SPEC', '');
  if CNT = 0 and HS_ID_ is not null then
    INSERT INTO NOM_SPECIFICATIONS (N_ID,HS_ID,HS_VAL,ORD, id_office, SC_ID)
                 VALUES(N_ID_,HS_ID_,HS_VAL_,(SELECT NVL(MAX(ORD),0)+1 FROM NOM_SPECIFICATIONS WHERE N_ID = N_ID_), const_office, SC_ID_);

    update nomenclature set date_change=sysdate where n_id = N_ID_;
    nomenclature2_pkg.sync_nomenclature_one(N_ID_);

    commit;
  end if;
EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.INS_NOM_SPEC', '');
           RAISE_APPLICATION_ERROR (-20061, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end INS_NOM_SPEC;


---
--Функция удаления спецификации возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_SPEC
(
     N_ID_ IN NUMBER,
     OUT_TEXT OUT VARCHAR2
)
IS
BEGIN

  select count(*) into CNT from store_doc_data a where a.n_id = N_ID_;
  if CNT > 0 then
     OUT_TEXT := 'Данная номенклатура уже продавалась. Удаление невозможно!';
  else
    delete from NOMENCLATURE_MAT_VIEW where N_ID = N_ID_;
    DELETE FROM NOMENCLATURE WHERE N_ID = N_ID_;
    COMMIT;
  end if;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_SPEC', '');
           RAISE_APPLICATION_ERROR (-20062, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_SPEC;


--
--Функция удаления спецификации возвращает 1/0 в зависимости от успеха*/
--
PROCEDURE DELETE_NOM_SPEC
(
     N_ID_    IN NUMBER,
     HS_IDS_  in number,
     SC_ID_   in number,
     OUT_TEXT OUT VARCHAR2
)
IS
BEGIN

  DELETE FROM NOM_SPECIFICATIONS WHERE N_ID = N_ID_ AND HS_ID = HS_IDS_ and nvl(SC_ID,0) = nvl(SC_ID_,0) and id_office=const_office;
  update nomenclature set date_change=sysdate where n_id=N_ID_;
  nomenclature2_pkg.sync_nomenclature_one(N_ID_);
  COMMIT;

EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.DELETE_NOM_SPEC', '');
           RAISE_APPLICATION_ERROR (-20063, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END DELETE_NOM_SPEC;


--
--  Копирование номенклатуры
--
PROCEDURE  COPY_NOMENCLATURE
(
  N_ID_IN IN NUMBER,
  N_ID_OUT OUT NUMBER
)
IS
  RET_VAL  NUMBER;
  bar_code12 varchar2(12);
  bar_code13 number;
BEGIN

  select CODE_SEQ.NEXTVAL into bar_code12 from dual;
  bar_code13 := EAN12_TO_EAN13(bar_code12);

  INSERT INTO NOMENCLATURE
      (SELECT get_office_unique('N_ID'), FN_ID, FST_ID, S_ID, C_ID, H_CODE, H_NAME, LEN, PACK, COL_ID, VBN, HOL_TYPE,
                WEIGHT, BAR_CODE, bar_code13, DIAMETER, CUST_COEF, REMARKS, PHOTO, H_NAMECODE, const_office, sysdate
                , noprint, notuse, TnVed, weightdry, nom_new, nom_start, nom_end, hol_color, HOL_PACK
                        FROM NOMENCLATURE WHERE N_ID = N_ID_IN
        );
  SELECT get_office_unique_curr('N_ID') INTO RET_VAL FROM DUAL;
  INSERT INTO NOM_SPECIFICATIONS (SELECT RET_VAL,
                                         HS_ID,
                                         HS_VAL,
                                         ORD
                                         , const_office
                                         , sysdate
                                         , sc_id
                                  FROM NOM_SPECIFICATIONS
                                  WHERE N_ID = N_ID_IN);
  N_ID_OUT := RET_VAL;

        insert into NOMENCLATURE_MAT_VIEW a (
           a.compiled_name, a.full_name, a.f_name, a.f_name_ru,
           a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id,
           a.hol_sub_type, a.sub_weight, a.ht_id, a.n_id, a.fn_id, a.fst_id,
           a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.len,
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.weightdry, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel
           , ID_OFFICE, a.noprint, a.notuse, a.namecode, a.TnVed
           , a.nom_new, a.nom_start, a.nom_end, a.hol_color, a.HOL_PACK
         )
         select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, b.sub_weight, b.ht_id, b.n_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.weightdry, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code
           , case when b.id_departments = 62 then
               b.f_name_ru || decode(b.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','') || case when b.RUS_MARKS is null then null else '. ' || b.RUS_MARKS end
               || (case when b.col_id in (0,1639,2768,2915) then null else '. '||b.colour end)
             else
               b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else b.colour||'. ' end) || b.RUS_MARKS
           end compiled_name_otdel

          , const_office, b.noprint, b.notuse, b.flower_name_code, b.TnVed
          , b.nom_new, b.nom_start, b.nom_end, b.hol_color, b.HOL_PACK

         from nomenclature_full_view b where b.n_id = N_ID_OUT
         ;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.COPY_NOMENCLATURE', '');
           RAISE_APPLICATION_ERROR (-20064, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END;



--
-- Выбираем названия
--
PROCEDURE  select_name (
   dep_                      in number,
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT FN_ID, F_NAME_RU, NAME_CODE, FITO_NAME, a.id_office, o.brief, FN_ID as FN_ID_
      FROM FLOWER_NAMES a, offices o WHERE ID_DEPARTMENTS = dep_ and a.id_office in (1,const_office) and a.id_office = o.id_office
        ORDER BY CASE WHEN FN_ID = 0 THEN FN_ID END, F_NAME_RU;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_name', '');
           RAISE_APPLICATION_ERROR (-20065, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_name;




--
-- Выбираем тип
--
PROCEDURE  select_type (
   dep_                      in number,
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
      SELECT a.FT_ID, a.F_TYPE, a.FT_ID as FT_ID_, a.id_office, o.brief, a.ht_id
      FROM /*FLOWER_SUBTYPES b,*/ FLOWER_TYPES a, offices o
        WHERE /*b.FT_ID = a.FT_ID and*/ a.ID_DEPARTMENTS = dep_ and a.id_office in (1,const_office) and a.id_office = o.id_office
         -- IN (SELECT FT_ID FROM FLOWER_SUBTYPES WHERE ID_DEPARTMENTS = dep_ )
          ORDER BY a.F_TYPE;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_type', '');
           RAISE_APPLICATION_ERROR (-20066, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_type;



--
-- Выбираем подтип
--
PROCEDURE  select_subtype (
   ft_id_                    in number,
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
      SELECT FST_ID, a.f_sub_type, a.id_office, o.brief
      FROM FST_VIEW a, offices o
        WHERE (FT_ID = ft_id_) AND FST_ID <> 0 and a.id_office in (1,const_office) and a.id_office = o.id_office
          order by a.f_sub_type;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_subtype', '');
           RAISE_APPLICATION_ERROR (-20067, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_subtype;


--
-- Выбираем поставщика
--
PROCEDURE  select_supplier (
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT S_ID, S_NAME_RU, a.id_office, o.brief
    FROM SUPPLIERS a, offices o
      where a.id_office in (1, const_office) and a.id_office = o.id_office
      ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_supplier', '');
           RAISE_APPLICATION_ERROR (-20068, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_supplier;


--
-- Выбираем страну
--
PROCEDURE  select_country (
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT C_ID,COUNTRY FROM COUNTRIES
      ORDER BY CASE WHEN C_ID = 0 THEN C_ID END, COUNTRY;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_country', '');
           RAISE_APPLICATION_ERROR (-20069, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_country;


--
-- Выбираем цвет
--
PROCEDURE  select_COLOURS (
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
      SELECT COL_ID,COLOUR, a.id_office, o.brief
      FROM COLOURS a, offices o
      where a.id_office in (1,const_office) and a.id_office = o.id_office
      ORDER BY CASE WHEN COL_ID = 0 THEN COL_ID END, COLOUR;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_COLOURS', '');
           RAISE_APPLICATION_ERROR (-20070, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_COLOURS;



--
-- Выбираем гол.подтип
--
PROCEDURE  select_htype (
   cursor_         in out ref_cursor
)
is
begin

  open cursor_ for
      SELECT HT_ID,HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1 ORDER BY ORD;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_htype', '');
           RAISE_APPLICATION_ERROR (-20071, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_htype;



--
-- Выбираем количетсво стеблей для подтипов
--
PROCEDURE  select_def_subtype (
   id_dep_      in number,
   cursor_      in out ref_cursor
)
is
begin

  open cursor_ for
    SELECT rownum as nn, a.fst_id, a.f_sub_type, a.hol_sub_type, a.ft_id, a.f_type,
           a.ht_id, a.hol_type, a.id_departments, b.quant
        FROM fst_view a, def_type_quant b
            WHERE a.id_departments = id_dep_ and a.id_office = const_office
                  and a.id_departments = b.id_dep(+)
                  and a.fst_id = b.fst_id(+)
              ORDER BY a.f_sub_type;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.select_def_subtype', '');
           RAISE_APPLICATION_ERROR (-20072, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end select_def_subtype;




--
-- Ставим количетсво стеблей для подтипов
--
PROCEDURE  set_def_subtype (
   id_subtype_  in number,
   id_dep_      in number,
   num_         in number--,
--   cursor_      in out ref_cursor
)
is
begin

  update def_type_quant a set a.quant = num_ where a.fst_id = id_subtype_;
  if sql%notfound then
     insert into def_type_quant values(id_subtype_, id_dep_, num_);
  end if;
  commit;

  EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.set_def_subtype', '');
           RAISE_APPLICATION_ERROR (-20073, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

end set_def_subtype;


--
-- Функция по редактированию формул
--
PROCEDURE import_weight
(
    param_        IN VARCHAR2,
    value_        IN NUMBER,
    OUT_TEXT      OUT VARCHAR2
)
IS

   S_ID_ number;

   cursor f_ is
            SELECT FST_ID FROM fst_view
                 WHERE id_departments = 62
             and upper(HOL_SUB_TYPE) = upper(param_)
             and hol_sub_type is not null;

  BEGIN
      S_ID_ := 0;
      OUT_TEXT := '';

            /*Проверяем нет ли такого перевода уже в базе!*/
            SELECT COUNT(*) INTO CNT FROM fst_view
                 WHERE id_departments = 62
             and upper(HOL_SUB_TYPE) = upper(param_)
             and hol_sub_type is not null;

      IF CNT = 0 THEN
        OUT_TEXT := param_;
      else

        open f_;
        loop
            fetch f_ into CNT;
            exit when f_%notfound;

                UPDATE FLOWER_SUBTYPES set sub_weight = value_, date_change=sysdate where FST_ID = CNT;

        end loop;
        close f_;

        COMMIT;
      END IF;

  EXCEPTION
        WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.import_weight', '');
           RAISE_APPLICATION_ERROR (-20074, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

  END import_weight;



--
--  проверка наличия кода
--
PROCEDURE BAR_CODE_EXIST
(
  IN_BAR_CODE in VARCHAR2,
  IN_ID_      in out number
)
IS
  cursor SEL_BAR_CODE is
    SELECT BAR_CODE FROM NOMENCLATURE_MAT_VIEW WHERE BAR_CODE = IN_BAR_CODE;
  sel_bcr SEL_BAR_CODE%rowtype;
begin
  OPEN SEL_BAR_CODE;
  FETCH SEL_BAR_CODE INTO sel_bcr;
  IF SEL_BAR_CODE%NOTFOUND THEN  IN_ID_ := 0;
                           ELSE  IN_ID_ := 1;
  END IF;
end;




--
-- Редактируем параметры номенклатуры
--
PROCEDURE  UPDATE_PARAMS
(
     N_ID_IN            in number,
     FN_ID_IN           in number,
     FST_ID_IN          in number,
     C_ID_IN            in number,
     S_ID_IN            in number,
     COL_ID_IN          in number,
     LEN_IN             in number,
     PACK_IN            in number,
     PACK_HOL_IN        in number,
     HOL_TYPE_IN        in varchar2,
     WEIGTH_IN          in number,
     WEIGTHDRY_IN       in number,
     DIAMETR_IN         in number,
     COEF_IN            in number,
     VBN_IN             in number,
     PHOTO_IN           in varchar2,
     noprint_           in number,
     notuse_            in number,
     nom_new_           in number,
     nom_start_         in number,
     nom_end_           in number,
     TNVED_IN           in varchar2,
     CODENAME_IN        in varchar2,
     HOLCOLOR_IN        in varchar2,
     REMARKS_IN         in varchar2
)
IS
  sql_str varchar(1024);
  p_id_dep  number;
BEGIN
  select id_departments into p_id_dep from nomenclature_mat_view a where a.n_id = N_ID_IN;

  sql_str := 'UPDATE NOMENCLATURE SET N_ID='||N_ID_IN;
   if FN_ID_IN > 0    then sql_str := sql_str || ', FN_ID = '||FN_ID_IN; end if;
   if FST_ID_IN > 0   then sql_str := sql_str || ', FST_ID = '||FST_ID_IN; end if;
   if C_ID_IN > 0     then sql_str := sql_str || ', C_ID = '||C_ID_IN; end if;
   if S_ID_IN > 0     then sql_str := sql_str || ', S_ID = '||S_ID_IN; end if;
   if COL_ID_IN > 0   then sql_str := sql_str || ', COL_ID = '||COL_ID_IN; end if;
   if LEN_IN > 0      then sql_str := sql_str || ', LEN = '||LEN_IN; end if;
   if PACK_IN > 0     then sql_str := sql_str || ', PACK = '||PACK_IN; end if;
   if PACK_HOL_IN > 0     then sql_str := sql_str || ', HOL_PACK = '||PACK_HOL_IN; end if;
   if HOL_TYPE_IN is not null then sql_str := sql_str || ', HOL_TYPE = '''||HOL_TYPE_IN||''''; end if;
   if DIAMETR_IN > 0  then sql_str := sql_str || ', DIAMETER = '||DIAMETR_IN; end if;
   if COEF_IN > 0     then sql_str := sql_str || ', CUST_COEF = '||COEF_IN; end if;
   if TNVED_IN > 0    then sql_str := sql_str || ', TNVED = '''||TNVED_IN||''''; end if;

   if VBN_IN > 0      then sql_str := sql_str || ', VBN = '||VBN_IN; end if;

   if CODENAME_IN > 0    then sql_str := sql_str || ', H_NAMECODE = '''||CODENAME_IN||''''; end if;
   if HOLCOLOR_IN > 0    then sql_str := sql_str || ', HOL_COLOR = '''||HOLCOLOR_IN||''''; end if;

   if noprint_ < 2 then sql_str := sql_str || ', noprint = '||noprint_; end if;
   if notuse_ < 2  then sql_str := sql_str || ', notuse = '||notuse_; end if;
   if nom_new_ < 2 then sql_str := sql_str || ', NOM_NEW = '||nom_new_; end if;
   if nom_start_ < 2 then sql_str := sql_str || ', NOM_START = '||nom_start_; end if;
   if nom_end_ < 2 then sql_str := sql_str || ', NOM_END = '||nom_end_; end if;

   if WEIGTH_IN > 0     then sql_str := sql_str || ', WEIGHT = '''||WEIGTH_IN||''''; end if;
   if WEIGTHDRY_IN > 0  then sql_str := sql_str || ', WEIGHTDRY = '''||WEIGTHDRY_IN||''''; end if;
   if REMARKS_IN is not null then sql_str := sql_str || ', REMARKS = '''||REMARKS_IN||''''; end if;

   sql_str := sql_str || ' , date_change=sysdate WHERE N_ID = '||N_ID_IN;
   --LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_PARAMS', sql_str);

   execute immediate sql_str;
   nomenclature2_pkg.sync_nomenclature_one(N_ID_IN);
   --nomenclature2_pkg.gen_h_code(N_ID_IN,p_id_dep);

   COMMIT;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_PARAMS', sql_str);
           RAISE_APPLICATION_ERROR (-20075, 'Запрос не выполнился. ' || sql_str);

END UPDATE_PARAMS;


--
-- Удаляем фотку
--
PROCEDURE  remove_img
(
   N_ID_                in number,
   tt_          in out number
)
IS
   str varchar2(50);
BEGIN

   select photo into str from NOMENCLATURE where n_id = n_id_;
   select count(*) into tt_ from NOMENCLATURE where photo = str and n_id <> n_id_ and id_office = const_office;

   update NOMENCLATURE set PHOTO = null, date_change=sysdate where n_id = n_id_;
   update NOMENCLATURE_MAT_VIEW a set photo = null, is_photo = 0, date_change=sysdate where n_id = n_id_;
   COMMIT;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.remove_img', '');
           RAISE_APPLICATION_ERROR (-20076, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END remove_img;



--
-- Синхронизируем номенклатуру
--
  PROCEDURE  sync_nomenclature
IS
BEGIN
         delete from NOMENCLATURE_MAT_VIEW where n_id not IN (select n_id from nomenclature_full_view)
         ;

        update NOMENCLATURE_MAT_VIEW a set (
           a.compiled_name, a.full_name, a.f_name, a.f_name_ru,
           a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id,
           a.hol_sub_type, a.sub_weight, a.ht_id, a.fn_id, a.fst_id,
           a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.len,
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.weightdry, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel
           , date_change, a.noprint, a.notuse, a.namecode, a.TnVed
           , a.nom_new, a.nom_start, a.nom_end, a.hol_color
        )
        = (select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, case when nvl(b.sub_weight_dry,0) > 0 then b.sub_weight_dry else nvl(b.sub_weight,0) end, b.ht_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.weightdry, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code

           , case when b.id_departments = 62 then
               decode(b.ft_id,113,'Роза ',115,'Роза Эквадор ', 10000167, 'Роза Кения ',2,'Хризантема ','') || b.f_name_ru || decode(b.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','') || case when b.RUS_MARKS is null then null else '. ' || b.RUS_MARKS end
               --|| (case when b.col_id in (0,1639,2768,2915) then null else '. '||b.colour end)
             else
               b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else b.colour||'. ' end) || b.RUS_MARKS
           end compiled_name_otdel

           , b.date_change, b.noprint, b.notuse, b.flower_name_code, b.TnVed
           , b.nom_new, b.nom_start, b.nom_end, b.hol_color
        from nomenclature_full_view b where b.n_id = a.N_ID)
        ;

        insert into NOMENCLATURE_MAT_VIEW a (
           a.compiled_name, a.full_name, a.f_name, a.f_name_ru,
           a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id,
           a.hol_sub_type, a.sub_weight, a.ht_id, a.n_id, a.fn_id, a.fst_id,
           a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.len,
           a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.weightdry, a.remarks,
           a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo,
           a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_marks,
           a.great_name, a.great_name_f, a.name_code, compiled_name_otdel
           , id_office, a.noprint, a.notuse, a.namecode, a.TnVed
           , a.nom_new, a.nom_start, a.nom_end, a.hol_color
         )
         select
           b.compiled_name, b.full_name, b.f_name, b.f_name_ru,
           b.f_sub_type, b.f_type, b.id_departments, b.dept, b.ft_id,
           b.hol_sub_type, case when nvl(b.sub_weight_dry,0) > 0 then b.sub_weight_dry else nvl(b.sub_weight,0) end, b.ht_id, b.n_id, b.fn_id, b.fst_id,
           b.s_id, b.c_id, b.col_id, b.h_code, b.h_name, b.code, b.len,
           b.pack, b.diameter, b.vbn, b.hol_type, b.weight, b.weightdry, b.remarks,
           b.s_name_ru, b.bar_code, b.cust_coef, b.photo, b.is_photo,
           b.colour, b.country, b.type_subtype, b.hol_marks, b.rus_marks,
           b.great_name, b.great_name_f, b.name_code

           , case when b.id_departments = 62 then
               decode(b.ft_id,113,'Роза ',115,'Роза Эквадор ',2,'Хризантема ','') || b.f_name_ru || decode(b.remarks,'VOORN','. ВОРН','MP','. МР','MK','. МК','AM','. АМ','') || case when b.RUS_MARKS is null then null else '. ' || b.RUS_MARKS end
               --|| (case when b.col_id in (0,1639,2768,2915) then null else '. '||b.colour end)
             else
               b.f_name_ru || '. ' || (case when b.col_id in (0,1639,2768,2915) then null else b.colour||'. ' end) || b.RUS_MARKS
           end compiled_name_otdel

           , const_office, b.noprint, b.notuse, b.flower_name_code, b.TnVed
           , b.nom_new, b.nom_start, b.nom_end, b.hol_color
         from nomenclature_full_view b where b.n_id not IN (select n_id from NOMENCLATURE_MAT_VIEW)
         ;

  commit;
EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.sync_nomenclature', '');
           RAISE_APPLICATION_ERROR (-20077, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END sync_nomenclature;



--
-- Прогоним фотки
--
PROCEDURE identfy_photo
(
   v_n_id        in number,
   v_photo       in varchar2
)
IS
BEGIN

    if v_n_id > 0 then
       UPDATE NOMENCLATURE SET PHOTO = v_photo, date_change=sysdate WHERE N_ID = v_n_id;
       UPDATE NOMENCLATURE_MAT_VIEW SET PHOTO = v_photo, IS_PHOTO = (case when v_photo is null then 0 else 1 end), date_change=sysdate WHERE N_ID = v_n_id;
    end if;

EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.identfy_photo', '');
           RAISE_APPLICATION_ERROR (-20078, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END identfy_photo;



--
-- Изменим спецификацию номенклатуры
--
PROCEDURE UPDATE_SPECIFICATIONS
(
   N_ID_IN        in number,
   param_IN       in varchar2
)
IS
BEGIN
  if param_IN = '1' then
    -- убрать спецификацию
    delete from nom_specifications a where a.n_id = N_ID_IN and HS_ID = const_8march;
  else
    insert into nom_specifications values(N_ID_IN, const_8march, '1', 1, const_office, sysdate, null);
  end if;
  nomenclature2_pkg.sync_nomenclature_one(N_ID_IN);
  commit;


EXCEPTION
   WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.UPDATE_SPECIFICATIONS', '');
           RAISE_APPLICATION_ERROR (-20079, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END UPDATE_SPECIFICATIONS;


--
--Функция смены подтипа на другой у номенклатуры
--
PROCEDURE CHANGE_SUBTYPE_FROM_TO
(
     v_FST_ID_FROM        IN NUMBER,
     v_FST_ID_TO          in number
)
IS
BEGIN
  UPDATE NOMENCLATURE SET FST_ID = v_FST_ID_TO, date_change = sysdate WHERE FST_ID = v_FST_ID_FROM;
  UPDATE NOMENCLATURE_MAT_VIEW SET FST_ID = v_FST_ID_TO, date_change = sysdate WHERE FST_ID = v_FST_ID_FROM;
  COMMIT;
EXCEPTION
      WHEN OTHERS THEN
           LOG_ERR(SQLERRM, SQLCODE, 'NOMENCLATURE_PKG.CHANGE_SUBTYPE_FROM_TO', '');
           RAISE_APPLICATION_ERROR (-20080, 'Запрос не выполнился. ' || SQLERRM || ' ' || DBMS_UTILITY.format_error_backtrace);

END CHANGE_SUBTYPE_FROM_TO;


END; -- nomenclature_pkg
/


-- End of DDL Script for Package Body CREATOR.NOMENCLATURE_PKG

