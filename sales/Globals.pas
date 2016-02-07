unit Globals;

interface

VAR
  INPUT_DEPT_ID : Variant;
  CUR_DEPT_ID, CUR_DEPT_NAME : Variant;
  CUR_DATE: TDateTime;
  SPEC_SHOW : Boolean;
  ora_db_path, username, password, creator, operator_name, operator_id, def_folder : string;
  ed, del, pr, add, print_dot : boolean;
//  procedure SetAll(ed : boolean; del: boolean; pr : boolean);

implementation

uses Variants;
{
  procedure SetAll(ed : boolean; del: boolean; pr : boolean);
    Begin
      CUR_DEPT_ID := NULL;
      CUR_DEPT_NAME := NULL;
      SPEC_SHOW := true;
      if not ed then
        Begin
          EditForm.BitBtn10.Enabled := false;
          EditForm.BitBtn11.Enabled := false;
          DictsEdit.BitBtn1.Enabled := false;
          DictsEdit.BitBtn2.Enabled := false;
          DictsEdit.BitBtn4.Enabled := false;
          DictsEdit.BitBtn5.Enabled := false;
          DictsEdit.BitBtn7.Enabled := false;
          DictsEdit.BitBtn8.Enabled := false;
          DictsEdit.BitBtn10.Enabled := false;
          DictsEdit.BitBtn11.Enabled := false;
          DictsEdit.BitBtn14.Enabled := false;
          DictsEdit.BitBtn15.Enabled := false;
          DictsEdit.BitBtn17.Enabled := false;
          //DictsEdit.BitBtn18.Enabled := false;
        End;
      if not del then
        Begin
          EditForm.BitBtn12.Enabled := false;
          DictsEdit.BitBtn3.Enabled := false;
          DictsEdit.BitBtn6.Enabled := false;
          DictsEdit.BitBtn9.Enabled := false;
          DictsEdit.BitBtn12.Enabled := false;
          DictsEdit.BitBtn16.Enabled := false;
          DictsEdit.BitBtn19.Enabled := false;
        End;
    End;
}
end.
