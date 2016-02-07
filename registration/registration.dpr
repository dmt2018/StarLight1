program registration;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  main_form in 'main_form.pas' {main},
  edit_form in 'edit_form.pas' {edits},
  info in 'info.pas' {u_info},
  DataM in 'DataM.pas' {DM: TDataModule},
  graphic in 'graphic.pas' {statistic},
  editor_f in 'editor_f.pas' {editor},
  edit_e_form in 'edit_e_form.pas' {edits_e},
  empl_info in 'empl_info.pas' {e_info},
  help_f in 'help_f.pas' {help},
  UClientSale in 'UClientSale.pas' {frmClientSales},
  UCityEditor in 'UCityEditor.pas' {frmCityEditor},
  client_choos in 'client_choos.pas' {clientchoosForm};

{$R *.res}
VAR
  i: Integer;
  print, delete, edit, addit: boolean;
  ora_db_path : string;
  username, password : string;
begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit    := false;
  Delete  := false;
  Print   := false;
  addit   := false;

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

    // Редактирование
    if LowerCase(ParamStr(i)) = '-e' then edit := true;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print := true;
    // Супер возможности
    if LowerCase(ParamStr(i)) = '-a' then addit := true;
  end;


  Application.Initialize;
  Application.Title := 'Регистрация';
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tedits, edits);
  Application.CreateForm(Tu_info, u_info);
  Application.CreateForm(Tstatistic, statistic);
  Application.CreateForm(Teditor, editor);
  Application.CreateForm(Tedits_e, edits_e);
  Application.CreateForm(Te_info, e_info);
  Application.CreateForm(Thelp, help);
  main.corrector := Username;
  main.ed_      :=  Edit;
  main.del_     :=  delete;
  main.print_   :=  print;
  main.addit_   :=  addit;

  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server := ora_db_path;
  DM.OraSession1.Connect;

  Application.Run;
end.
