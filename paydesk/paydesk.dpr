program paydesk;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  DB,
  cashbook_f in 'cashbook_f.pas' {cashbook},
  statistic_f in 'statistic_f.pas' {statistic},
  DataM in 'DataM.pas' {DM: TDataModule},
  nakl_edit_f in 'nakl_edit_f.pas' {nakl_edit},
  operations_f in 'operations_f.pas' {options},
  choise in 'choise.pas' {choises},
  help_add_f in 'help_add_f.pas' {help_add},
  stat_f in 'stat_f.pas' {stat},
  help_cash_f in 'help_cash_f.pas' {help_cash};

{$R *.res}
VAR
  i: integer;
  print, delete, edit, dop: boolean;
  ora_db_path : string;
  username, password : string;
  fs : TFormatSettings;

begin
  GetLocaleFormatSettings(1251,fs);
  //fs.DecimalSeparator := '.';

  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit     := false;
  Delete   := false;
  Print    := false;
  dop      := false;

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
    if LowerCase(ParamStr(i)) = '-e' then edit   := true;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print  := true;
    // Доп. параметр
    if LowerCase(ParamStr(i)) = '-a' then dop    := true;
  end;

  Application.Initialize;
  Application.Title := 'Кассовая книга';
  Application.CreateForm(Tchoises, choises);
  Application.CreateForm(TDM, DM);

  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server   := ora_db_path;
  DM.OraSession1.Connect;

  DM.b_edit   := edit;
  DM.b_delete := delete;
  DM.b_print  := print;
  DM.b_addit  := dop;

  choises.img_cass1.Visible := false;
  choises.img_cass2.Visible := false;
  choises.img_cass3.Visible := false;
  choises.cxLabel1.Visible  := false;
  choises.cxLabel2.Visible  := false;
  choises.cxLabel3.Visible  := false;

  choises.img_cass_main.Visible := dop;
  choises.cxLabel4.Visible      := dop;
  choises.btn_operation.Enabled := dop;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('begin cash_pkg.show_rule(:login_, :cursor_); end;');
  DM.Q_SQL.ParamByName('login_').AsString  := username;
  DM.Q_SQL.ParamByName('cursor_').AsCursor;
  DM.Q_SQL.Open;

    if ((dop = false) and (DM.Q_SQL.RecordCount = 0)) then
    begin
      ShowMessage('У вас нет доступа к кассам');
      application.Terminate;
    end
    else
    begin
      while not DM.Q_SQL.Eof do
      begin
        if DM.Q_SQL.FieldByName('N_CASH').AsInteger = 1 then choises.img_cass1.Visible := true;
        if DM.Q_SQL.FieldByName('N_CASH').AsInteger = 2 then choises.img_cass2.Visible := true;
        if DM.Q_SQL.FieldByName('N_CASH').AsInteger = 3 then choises.img_cass3.Visible := true;
        DM.Q_SQL.Next;
      end;
    end;

  choises.cxLabel1.Visible  := choises.img_cass1.Visible;
  choises.cxLabel2.Visible  := choises.img_cass2.Visible;
  choises.cxLabel3.Visible  := choises.img_cass3.Visible;

  Application.Run;
end.
