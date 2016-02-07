program currensy;

uses
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  Forms,
  main in 'main.pas' {main_f},
  edit_f in 'edit_f.pas' {editf};

{$R *.res}
VAR
  i: Integer;
  print, delete, edit: Boolean;
  ora_db_path : string;
  username, password : string;

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
  Application.Title := 'Курсы валют';
  Application.CreateForm(Tmain_f, main_f);

  main_f.OraSession1.Username := username;
  main_f.OraSession1.Password := Password;
  main_f.OraSession1.Server := ora_db_path;
  main_f.OraSession1.Connect;
  main_f.add_.Enabled  := edit;
  main_f.edit_.Enabled := edit;
  main_f.del_.Enabled  := delete;

  Application.CreateForm(Teditf, editf);
  Application.Run;
end.
