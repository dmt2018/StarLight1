unit Globals;

interface

uses
Contnrs,Ora,StdCtrls,Classes,IniFiles;

type
  TComboRecord = class(TObject)
  Ind : Integer;
  Cont : String;
  End;

type
  TRecogniseIt = record
    Name : String;
    column : integer;
    tag: integer;
  end;

type
  TBegEnd = record
    Name : String;
    row : integer;
  end;

VAR
  INPUT_DEPT_ID : Variant;
  CUR_DEPT_ID, CUR_DEPT_NAME : Variant;
  OLD_DICT_PATH : String;
  ProgPath, def_folder, OLD_LIST_DB : String;
  ora_db_path,creator : String;
  username, password : String;
  Recogniser : array of TRecogniseIt;
  Recogniser_new : array of TRecogniseIt;
  BegEndArr : array of TBegEnd;
  DEF_SUPPLIER_ID, DEF_COUNTRY_ID : Integer;
  HIDE_MARKS : Boolean;
  ed, del, pr, add : boolean;
  procedure FillRecogniser();
  procedure FillRecogniser_new();
  procedure FillBegEndArr();
  procedure ReadIni();

implementation

uses RegExpr, SysUtils, DataModule, DB;

procedure FillBegEndArr();
Begin
  SetLength(BegEndArr,2);
  BegEndArr[0].Name := 'Начало';
  BegEndArr[0].row := -1;
  BegEndArr[1].Name := 'Конец';
  BegEndArr[1].row := -1;
End;

procedure FillRecogniser_new();
var i: integer;
Begin
  SetLength(Recogniser_new,41);
  Recogniser_new[0].Name := '№ Заказа';
  Recogniser_new[0].column := -1;
  Recogniser_new[0].tag := 0;

  Recogniser_new[1].Name := 'Артикул';
  Recogniser_new[1].column := -1;
  Recogniser_new[1].tag := 8;

  Recogniser_new[2].Name := 'Вес';
  Recogniser_new[2].column := -1;
  Recogniser_new[2].tag := 30;

  Recogniser_new[3].Name := 'Вес (вода)';
  Recogniser_new[3].column := -1;
  Recogniser_new[3].tag := 31;

  Recogniser_new[4].Name := 'Голандский подтип';
  Recogniser_new[4].column := -1;
  Recogniser_new[4].tag := 12;

  Recogniser_new[5].Name := 'Добавка';
  Recogniser_new[5].column := -1;
  Recogniser_new[5].tag := 36;

  Recogniser_new[6].Name := 'Значение доп. кодов';
  Recogniser_new[6].column := -1;
  Recogniser_new[6].tag := 15;

  Recogniser_new[7].Name := 'Клиент';
  Recogniser_new[7].column := -1;
  Recogniser_new[7].tag := 29;

  Recogniser_new[8].Name := 'Код названия';
  Recogniser_new[8].column := -1;
  Recogniser_new[8].tag := 14;

  Recogniser_new[9].Name := 'Кол. в коробке';
  Recogniser_new[9].column := -1;
  Recogniser_new[9].tag := 4;

  Recogniser_new[10].Name := 'Кол. коробок';
  Recogniser_new[10].column := -1;
  Recogniser_new[10].tag := 3;

  Recogniser_new[11].Name := 'Конец сезона';
  Recogniser_new[11].column := -1;
  Recogniser_new[11].tag := 35;

  Recogniser_new[12].Name := 'Машина';
  Recogniser_new[12].column := -1;
  Recogniser_new[12].tag := 28;

  Recogniser_new[13].Name := 'Название без префиксов';
  Recogniser_new[13].column := -1;
  Recogniser_new[13].tag := 17;

  Recogniser_new[14].Name := 'Название заказа';
  Recogniser_new[14].column := -1;
  Recogniser_new[14].tag := 1;

  Recogniser_new[15].Name := 'Название полное';
  Recogniser_new[15].column := -1;
  Recogniser_new[15].tag := 9;

  Recogniser_new[16].Name := 'Новинка';
  Recogniser_new[16].column := -1;
  Recogniser_new[16].tag := 32;

  Recogniser_new[17].Name := 'Номер коробки';
  Recogniser_new[17].column := -1;
  Recogniser_new[17].tag := 2;

  Recogniser_new[18].Name := 'Общее кол.';
  Recogniser_new[18].column := -1;
  Recogniser_new[18].tag := 5;

  Recogniser_new[19].Name := 'Описание доп. кодов';
  Recogniser_new[19].column := -1;
  Recogniser_new[19].tag := 16;

  Recogniser_new[20].Name := 'Перевод';
  Recogniser_new[20].column := -1;
  Recogniser_new[20].tag := 19;

  Recogniser_new[21].Name := 'Поставщик';
  Recogniser_new[21].column := -1;
  Recogniser_new[21].tag := 7;

  Recogniser_new[22].Name := 'Ремаркс';
  Recogniser_new[22].column := -1;
  Recogniser_new[22].tag := 20;

  Recogniser_new[23].Name := 'Спец.предложение';
  Recogniser_new[23].column := -1;
  Recogniser_new[23].tag := 37;

  Recogniser_new[24].Name := 'Старт сезона';
  Recogniser_new[24].column := -1;
  Recogniser_new[24].tag := 33;

  Recogniser_new[25].Name := 'Стеблей в пачке';
  Recogniser_new[25].column := -1;
  Recogniser_new[25].tag := 38;

  Recogniser_new[26].Name := 'Страна';
  Recogniser_new[26].column := -1;
  Recogniser_new[26].tag := 34;

  Recogniser_new[27].Name := 'Сумма';
  Recogniser_new[27].column := -1;
  Recogniser_new[27].tag := 11;

  Recogniser_new[28].Name := 'Тип упаковки';
  Recogniser_new[28].column := -1;
  Recogniser_new[28].tag := 6;

  Recogniser_new[29].Name := 'Тележка';
  Recogniser_new[29].column := -1;
  Recogniser_new[29].tag := 27;

  Recogniser_new[30].Name := 'Цвет';
  Recogniser_new[30].column := -1;
  Recogniser_new[30].tag := 13;

  Recogniser_new[31].Name := 'Цена';
  Recogniser_new[31].column := -1;
  Recogniser_new[31].tag := 10;

  Recogniser_new[32].Name := 'Штрих-код';
  Recogniser_new[32].column := -1;
  Recogniser_new[32].tag := 18;

  Recogniser_new[33].Name := 'S20 Длина';
  Recogniser_new[33].column := -1;
  Recogniser_new[33].tag := 21;

  Recogniser_new[34].Name := 'S22 Кол. голов';
  Recogniser_new[34].column := -1;
  Recogniser_new[34].tag := 22;

  Recogniser_new[35].Name := 'S25 Кол. голов куст.';
  Recogniser_new[35].column := -1;
  Recogniser_new[35].tag := 23;

  Recogniser_new[36].Name := 'VD2 Кол-во в коробке';
  Recogniser_new[36].column := -1;
  Recogniser_new[36].tag := 24;

  Recogniser_new[37].Name := 'S01 Диаметр горшка';
  Recogniser_new[37].column := -1;
  Recogniser_new[37].tag := 25;

  Recogniser_new[38].Name := 'S02 Высота горшка';
  Recogniser_new[38].column := -1;
  Recogniser_new[38].tag := 26;

  Recogniser_new[39].Name := 'Паковка поставщика';
  Recogniser_new[39].column := -1;
  Recogniser_new[39].tag := 39;

  Recogniser_new[40].Name := 'Замена';
  Recogniser_new[40].column := -1;
  Recogniser_new[40].tag := 40;
End;


procedure FillRecogniser();
var i: integer;
Begin
  SetLength(Recogniser,39);
  Recogniser[0].Name := '№ Заказа';
  Recogniser[0].column := -1;
  Recogniser[1].Name := 'Название заказа';
  Recogniser[1].column := -1;
  Recogniser[2].Name := 'Номер коробки';
  Recogniser[2].column := -1;
  Recogniser[3].Name := 'Кол. коробок';
  Recogniser[3].column := -1;
  Recogniser[4].Name := 'Кол. в коробке';
  Recogniser[4].column := -1;
  Recogniser[5].Name := 'Общее кол.';
  Recogniser[5].column := -1;
  Recogniser[6].Name := 'Тип упаковки';
  Recogniser[6].column := -1;
  Recogniser[7].Name := 'Поставщик';
  Recogniser[7].column := -1;
  Recogniser[8].Name := 'Артикул';
  Recogniser[8].column := -1;
  Recogniser[9].Name := 'Название полное';
  Recogniser[9].column := -1;
  Recogniser[10].Name := 'Цена';
  Recogniser[10].column := -1;
  Recogniser[11].Name := 'Сумма';
  Recogniser[11].column := -1;
  Recogniser[12].Name := 'Голандский подтип';
  Recogniser[12].column := -1;
  Recogniser[13].Name := 'Цвет';
  Recogniser[13].column := -1;
  Recogniser[14].Name := 'Код названия';
  Recogniser[14].column := -1;
  Recogniser[15].Name := 'Значение доп. кодов';
  Recogniser[15].column := -1;
  Recogniser[16].Name := 'Описание доп. кодов';
  Recogniser[16].column := -1;
  Recogniser[17].Name := 'Название без префиксов';
  Recogniser[17].column := -1;
  Recogniser[18].Name := 'Штрих-код';
  Recogniser[18].column := -1;
  Recogniser[19].Name := 'Перевод';
  Recogniser[19].column := -1;
  Recogniser[20].Name := 'Ремаркс';
  Recogniser[20].column := -1;
  Recogniser[21].Name := 'Длина (S20)';
  Recogniser[21].column := -1;
  Recogniser[22].Name := 'Кол. голов (S22)';
  Recogniser[22].column := -1;
  Recogniser[23].Name := 'Кол. голов куст. (S25)';
  Recogniser[23].column := -1;
  Recogniser[24].Name := 'Кол-во в коробке (VD2)';
  Recogniser[24].column := -1;
  Recogniser[25].Name := 'Диаметр горшка (S01)';
  Recogniser[25].column := -1;
  Recogniser[26].Name := 'Высота горшка (S02)';
  Recogniser[26].column := -1;
  Recogniser[27].Name := 'Тележка';
  Recogniser[27].column := -1;
  Recogniser[28].Name := 'Машина';
  Recogniser[28].column := -1;
  Recogniser[29].Name := 'Клиент';
  Recogniser[29].column := -1;
  Recogniser[30].Name := 'Вес';
  Recogniser[30].column := -1;
  Recogniser[31].Name := 'Вес (вода)';
  Recogniser[31].column := -1;
  Recogniser[32].Name := 'Новинка';
  Recogniser[32].column := -1;
  Recogniser[33].Name := 'Старт сезона';
  Recogniser[33].column := -1;
  Recogniser[34].Name := 'Страна';
  Recogniser[34].column := -1;
  Recogniser[35].Name := 'Конец сезона';
  Recogniser[35].column := -1;
  Recogniser[36].Name := 'Добавка';
  Recogniser[36].column := -1;
  Recogniser[37].Name := 'Спец.предложение';
  Recogniser[37].column := -1;
  Recogniser[38].Name := 'Стеблей в пачке';
  Recogniser[38].column := -1;

End;

procedure ReadIni();
VAR
  Ini : TIniFile;
Begin
  ProgPath := GetCurrentDir;
  Ini := TIniFile.Create(ProgPath + '\connections\Paths.ini' );
  try
    OLD_DICT_PATH := Ini.ReadString('paths','OldDict','???');
    def_folder    := Ini.ReadString('folder', 'Value', '..');
    OLD_LIST_DB   := Ini.ReadString('list','value','???');
  finally
    Ini.Free;
  end;
{
  with DM.SelQ do
    Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM PERSONAL_SETTINGS WHERE DB_USER=USER AND HIDE_MARKS=1');
      Open;
      if IsEmpty then
        Begin
          HIDE_MARKS:=false;
          DM.InvoiceData.SQL.LoadFromFile(ProgPath + '\SQL\SelInvDatMarks.sql');
        End
      else
        Begin
          HIDE_MARKS:=true;
          DM.InvoiceData.SQL.LoadFromFile(ProgPath + '\SQL\SelInvDatNoMarks.sql');
        End;
    End;
}    
End;

end.
