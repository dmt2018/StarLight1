unit GlobalsU;

interface

VAR
  ora_db_path, username, password, creator, curdir : string;
  ed, del, pr, add, inv_done : boolean;
  CUR_DEPT_ID,CUR_DEPT_NAME : Variant;
  CUR_DIST_IND_ID, CUR_DIST_DESCRIPTION, CUR_DIST_DATE, CUR_DIST_NUM : Variant;
  CUR_ID_ORDERS, CUR_CLIENT : Variant;

procedure BeforeStart;
  
implementation

uses SysUtils;

procedure BeforeStart;
Begin
  curdir := GetCurrentDir;
End;


end.
