program store;

uses
  Forms,
  Dialogs,
  SysUtils,
  dataM in 'dataM.pas' {DM: TDataModule},
  global_date in 'global_date.pas' {GlobalDateForm},
  client_choos in 'client_choos.pas' {clientchoosForm},
  nacl_new in 'nacl_new.pas' {naclnewForm},
  inventory in 'inventory.pas' {inventoryForm},
  spisanie in 'spisanie.pas' {spisanieForm},
  global in 'global.pas',
  utsenka in 'utsenka.pas' {utsenkaForm},
  prihod in 'prihod.pas' {prihodForm},
  invchooser in 'invchooser.pas' {invchooserForm},
  change_prices in 'change_prices.pas' {ChangePricesForm},
  obnul in 'obnul.pas' {obnul_Form},
  oper_select in 'oper_select.pas' {OperSelectForm},
  store_view in 'store_view.pas' {storeViewForm},
  all_nacl in 'all_nacl.pas' {all_nacl_Form},
  all_spis in 'all_spis.pas' {all_spis_Form},
  all_prih in 'all_prih.pas' {all_prih_Form},
  all_utsen in 'all_utsen.pas' {all_utsen_Form},
  all_invent in 'all_invent.pas' {all_invent_Form},
  dialog_number in 'dialog_number.pas' {dialog_number_Form},
  report_tovarn_full in 'report_tovarn_full.pas' {ReportTovarnFullForm},
  report_tovarn_nacls in 'report_tovarn_nacls.pas' {ReportTovarnNaclsForm},
  reprice in 'reprice.pas' {repriceForm},
  all_reprice in 'all_reprice.pas' {all_reprice_Form},
  buttons_for in 'buttons_for.pas' {frm_buttons},
  UChoiseType in 'UChoiseType.pas' {frm_choise_type},
  UHistory in 'UHistory.pas' {frmHistory},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UFilials in '..\libs\UFilials.pas' {frmFilials},
  UOldPrice in 'UOldPrice.pas' {frmOldPrice},
  UReservInfo in 'UReservInfo.pas' {frmReservInfo},
  tabliza in 'tabliza.pas' {Form1};

{$R *.res}
  
VAR
  i, DeptID: Integer;
  ora_db_path : string;
  print, delete, edit, admin: boolean;
begin

  if ParamCount < 4 then Exit;
  Username  := '0';
  Password  := '0';
  Edit      := false;
  Delete    := false;
  Print     := false;
  admin     := false;
  DeptID    := 0;

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
    // Администрирование
    if LowerCase(ParamStr(i)) = '-a' then admin := true;

  end;


  Application.Title := 'Склад';
  Application.CreateForm(TDM, DM);
  DataM.Operator_username := username;
  DataM.department_id := IntToStr(DeptID);

  DataM.Operator_edit   := edit;
  DataM.Operator_delete := delete;
  DataM.Operator_print  := print;
  DataM.Operator_admin  := admin;

  DM.OraSession.Disconnect;
  DM.OraSession.Username := username;
  DM.OraSession.Password := Password;
  DM.OraSession.Server := ora_db_path;
  DM.OraSession.Connect;

  Application.CreateForm(TOperSelectForm, OperSelectForm);
  //DM.readparameters();
  Application.CreateForm(TfrmSupplierReport, frmSupplierReport);
  Application.Run;

end.
