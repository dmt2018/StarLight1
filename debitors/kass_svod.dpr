program kass_svod;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  DataM in 'DataM.pas' {DM: TDataModule},
  debetors_f in 'debetors_f.pas' {debetors},
  deb_edit_f in 'deb_edit_f.pas' {deb_edit},
  client_debt_f in 'client_debt_f.pas' {client_debt},
  client_debt_edit_f in 'client_debt_edit_f.pas' {client_debt_edit},
  help_cash_f in 'help_cash_f.pas' {help_cash},
  operations_f in 'operations_f.pas' {options},
  form_operations in 'form_operations.pas' {frm_operations},
  UStatistic in 'UStatistic.pas' {frm_statistic},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  USettings in 'USettings.pas' {frmSettings},
  UCargo in '..\libs\UCargo.pas' {frmCargo},
  UMultiEdit in 'UMultiEdit.pas' {frmMultiEdit},
  UGroupWithError in 'UGroupWithError.pas' {frmBadClients};

{$R *.res}
VAR
  i: Integer;
  print, delete, edit, dop: boolean;
  ora_db_path : string;
  username, password : string;
  INPUT_DEPT_ID: variant;

begin


//  if ParamCount < 4 then Exit;
//  Username := '0';
//  Password := '0';
  Edit     := false;
  Delete   := false;
  Print    := false;
  dop      := false;
  INPUT_DEPT_ID := 0;

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

//  CheckStarParams(edit,delete,print,dop,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Application.Title := 'Дебиторы';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tdebetors, debetors);
  DM.b_edit   := edit;
  DM.b_delete := delete;
  DM.b_print  := print;
  DM.b_addit  := dop;


  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server := ora_db_path;
  DM.OraSession1.Connect;

  Application.Run;
end.
