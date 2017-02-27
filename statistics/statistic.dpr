program statistic;

uses
  Forms,
  SysUtils,
  Dialogs,
  main_f in 'main_f.pas' {main},
  client_stat_f in 'client_stat_f.pas' {client_stat},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  prod_stat_f in 'prod_stat_f.pas' {frm_prod_stat},
  UMoney in 'UMoney.pas' {frmMoney},
  UNaklInfo in 'UNaklInfo.pas' {frmNaklInfo},
  UClients in 'UClients.pas' {frmClients},
  USettings in 'USettings.pas' {frmSettings},
  UStore in 'UStore.pas' {frmStore},
  UFullInfo in '..\OraDict\UFullInfo.pas' {frm_full_info},
  Globals in 'Globals.pas',
  USealesByClient in 'USealesByClient.pas' {frmSalesByClients},
  UOrdersStat in 'UOrdersStat.pas' {frmOrdersStat};

{$R *.res}
VAR
  i: Integer;
  print, delete, edit, Addit: boolean;
  ora_db_path : string;
  username, password : string;

begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit     := false;
  Delete   := false;
  Print    := false;
  Addit    := false;

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
    if LowerCase(ParamStr(i)) = '-e' then edit    := true;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete  := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print   := true;
    // Доп.функция
    if LowerCase(ParamStr(i)) = '-a' then Addit   := true;
  end;

  Application.Initialize;
  Application.Title := 'Статистика';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tmain, main);
  main.p_edit   := edit;
  main.p_delete := delete;
  main.p_print  := print;
  main.p_addit  := Addit;
  DM.stat_session.Username := username;
  DM.stat_session.Password := Password;
  DM.stat_session.Server := ora_db_path;
  DM.stat_session.Connect;

  Application.Run;
end.
