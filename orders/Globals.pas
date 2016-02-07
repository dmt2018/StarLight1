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
  ora_db_path,creator : String;
  username, password : String;
  Recogniser : array of TRecogniseIt;
  BegEndArr : array of TBegEnd;
  DEF_SUPPLIER_ID, DEF_COUNTRY_ID : Integer;
  HIDE_MARKS : Boolean;
  procedure FillRecogniser();
  procedure FillBegEndArr();
  procedure ReadIni();

implementation

uses RegExpr, SysUtils;

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
  SetLength(Recogniser,5);
  Recogniser[0].Name := 'Артикул';
  Recogniser[0].column := -1;
  Recogniser[1].Name := 'Штрих-код';
  Recogniser[1].column := -1;
  Recogniser[2].Name := 'Назкание';
  Recogniser[2].column := -1;
  Recogniser[3].Name := 'Цена';
  Recogniser[3].column := -1;
  Recogniser[4].Name := 'Количество';
  Recogniser[4].column := -1;
End;

procedure ReadIni();
VAR
  Ini : TIniFile;
Begin
  ProgPath := GetCurrentDir;
  Ini := TIniFile.Create(ProgPath + '\connections\Paths.ini' );
  try
    OLD_DICT_PATH := Ini.ReadString('paths','OldDict','???');
  finally
    Ini.Free;
  end;
End;

end.
