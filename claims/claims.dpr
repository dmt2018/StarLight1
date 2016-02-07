program claims;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  main_f in 'main_f.pas' {main},
  editor_f in 'editor_f.pas' {editor},
  edit_claim_f in 'edit_claim_f.pas' {edit_claim},
  claim_list_f in 'claim_list_f.pas' {claim_list},
  claim_show_f in 'claim_show_f.pas' {claim_show},
  DataM in 'DataM.pas' {DM: TDataModule},
  help_f in 'help_f.pas' {help};

{$R *.res}
VAR
  i, DeptID: Integer;
  addit, print, delete, edit: boolean;
  ora_db_path: string;
  username, password: string;
begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit   := false;
  Delete := false;
  Print  := false;
  Addit  := false;

  for i := 1 to ParamCount do
  begin
    // Логин
    if LowerCase(ParamStr(i)) = '-l' then
      if ParamCount >= i+1 then
        Begin
          username := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Пароль
    if LowerCase(ParamStr(i)) = '-p' then
      if ParamCount >= i+1 then
        Begin
          Password := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Путь к БД
    if LowerCase(ParamStr(i)) = '-d' then
      if ParamCount >= i+1 then
        Begin
          ora_db_path := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Отдел
    if LowerCase(ParamStr(i)) = '-otd' then
      if ParamCount >= i+1 then
        Begin
          DeptID := StrToInt(AnsiLowerCase(ParamStr(i+1)));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Редактирование
    if LowerCase(ParamStr(i)) = '-e' then edit := true;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-a' then addit := true;
  end;

  Application.Initialize;
  Application.Title := 'Претензии';
  Application.CreateForm(TDM, DM);
  DM.b_edit    := edit;
  DM.b_delete  := delete;
  DM.b_print   := print;
  DM.b_addit   := addit;
  DM.curr_dep_id := DeptID;
  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server := ora_db_path;
  DM.OraSession1.Connect;

  Application.CreateForm(Tmain, main);

  Application.Run;
end.
