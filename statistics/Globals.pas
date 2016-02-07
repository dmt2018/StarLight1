unit Globals;

interface

VAR
  INPUT_DEPT_ID : Variant;
  CUR_DEPT_ID, CUR_DEPT_NAME : Variant;
  SPEC_SHOW : Boolean;
  ora_db_path, username, password, creator, def_folder : string;
  ed, del, pr, add : boolean;
//  procedure SetAll(ed : boolean; del: boolean; pr : boolean);

implementation

uses Variants;

end.
