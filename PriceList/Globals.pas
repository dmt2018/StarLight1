unit Globals;

interface

uses
Contnrs,Ora,StdCtrls,Classes;

VAR
  ora_db_path,creator : String;
  username, password : String;
  CUR_DEPT_ID, CUR_DEPT_NAME : Variant;
  StartDir, def_folder, title_name : String;
  INPUT_DEPT_ID : Variant;
  ed, del, pr, addit : boolean;
  is_minus_ : integer;

procedure BeforeStartup();

implementation

uses SysUtils;

procedure BeforeStartup();
Begin
  StartDir := GetCurrentDir;
End;

end.
