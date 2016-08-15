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
  ProgPath : String;
  ora_db_path, creator : String;
  username, password : String;
  Recogniser : array of TRecogniseIt;
  BegEndArr : array of TBegEnd;
  DEF_SUPPLIER_ID, DEF_COUNTRY_ID : Integer;
  HIDE_MARKS : Boolean;
  ed, del, pr, add : boolean;
  procedure FillRecogniser();
  procedure FillBegEndArr();
  procedure ReadIni();

implementation

uses SysUtils, DB;

procedure FillBegEndArr();
Begin
  SetLength(BegEndArr,2);
  BegEndArr[0].Name := 'Начало';
  BegEndArr[0].row := -1;
  BegEndArr[1].Name := 'Конец';
  BegEndArr[1].row := -1;
End;

procedure FillRecogniser();
Begin
  SetLength(Recogniser,20);
  Recogniser[0].Name := '№ Заказа';
  Recogniser[0].column := -1;
  Recogniser[1].Name := 'Машина';
  Recogniser[1].column := -1;
  Recogniser[2].Name := 'Тип упаковки';
  Recogniser[2].column := -1;
  Recogniser[3].Name := 'Кол. коробок';
  Recogniser[3].column := -1;
  Recogniser[4].Name := 'Кол. в коробке';
  Recogniser[4].column := -1;
  Recogniser[5].Name := 'Общее кол.';
  Recogniser[5].column := -1;
  Recogniser[6].Name := 'Цена';
  Recogniser[6].column := -1;
  Recogniser[7].Name := 'Сумма';
  Recogniser[7].column := -1;
  Recogniser[8].Name := 'Название';
  Recogniser[8].column := -1;
  Recogniser[9].Name := 'Название полное';
  Recogniser[9].column := -1;
  Recogniser[10].Name := 'Страна';
  Recogniser[10].column := -1;
  Recogniser[11].Name := 'Голандский подтип';
  Recogniser[11].column := -1;
  Recogniser[12].Name := 'ФИТО тип';
  Recogniser[12].column := -1;
  Recogniser[13].Name := 'Диаметр';
  Recogniser[13].column := -1;
  Recogniser[14].Name := 'Высота';
  Recogniser[14].column := -1;
  Recogniser[15].Name := 'Тележка';
  Recogniser[15].column := -1;
  Recogniser[16].Name := 'Код названия';
  Recogniser[16].column := -1;
  Recogniser[17].Name := 'Упаковка';
  Recogniser[17].column := -1;
  Recogniser[18].Name := 'Название (src)';
  Recogniser[18].column := -1;
  Recogniser[19].Name := 'Ремарк';
  Recogniser[19].column := -1;
End;

procedure ReadIni();
VAR
  Ini : TIniFile;
Begin
  ProgPath := GetCurrentDir;
{
  Ini := TIniFile.Create(ProgPath + '\ini\Paths.ini' );
  try
    OLD_DICT_PATH := Ini.ReadString('paths','OldDict','???');
  finally
    Ini.Free;
  end;
}  
End;

end.
