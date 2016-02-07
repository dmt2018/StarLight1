program ref_books;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  main_form in 'main_form.pas' {Main},
  DataM in 'DataM.pas' {DM: TDataModule},
  info_f in 'info_f.pas' {info},
  editor_f in 'editor_f.pas' {editor},
  UHelp in 'UHelp.pas' {frmHelp};

{$R *.res}
VAR
  i: integer;
  print, delete, edit: boolean;
  ora_db_path : string;
  username, password, creator : string;
begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit := false;
  Delete := false;
  Print := false;

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
  end;

  Application.Initialize;
  Application.Title := 'Справочники';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMain, Main);
  DM.r_edit   := edit;
  DM.r_delete := delete;
  DM.r_print  := print;

  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server := ora_db_path;
  DM.OraSession1.Connect;

  Application.Run;
end.
