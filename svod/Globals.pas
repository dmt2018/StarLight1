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
  DEF_SUPPLIER_ID, DEF_COUNTRY_ID : Integer;
  HIDE_MARKS : Boolean;
  ed, del, pr, add : boolean;
  def_OKUD, def_OKPO, def_title: string;

implementation

uses SysUtils, DB;


end.
