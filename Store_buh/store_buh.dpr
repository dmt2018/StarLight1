program store_buh;

uses
  Dialogs,
  Forms,
  SysUtils,
  dataM in 'dataM.pas' {DM: TDataModule},
  global in 'global.pas',
  doc_view in 'doc_view.pas' {docsviewForm},
  doc_new in 'doc_new.pas' {DocNewForm},
  select_doc in 'select_doc.pas' {SelectDocForm},
  client_chooser in 'client_chooser.pas' {ClientChooserForm},
  select_doc_data in 'select_doc_data.pas' {SelectDocDataForm},
  print_type_select in 'print_type_select.pas' {PrintTypeSelectForm},
  preferenses in 'preferenses.pas' {preferensesForm},
  edit_list_f in 'edit_list_f.pas' {edit_list},
  change_prices in 'change_prices.pas' {ChangePricesForm},
  change_country in 'change_country.pas' {ChangeCountryForm},
  edit_quantity in 'edit_quantity.pas' {EditQuantityForm},
  Gtd in 'Gtd.pas' {GtdForm},
  company in 'company.pas' {companyForm},
  banc_edit in 'banc_edit.pas' {BancEditForm},
  company_edit in 'company_edit.pas' {CompanyEditForm},
  oper_select in 'oper_select.pas' {OperSelectForm},
  reprice in 'reprice.pas' {reprice_form},
  reprice_edit in 'reprice_edit.pas' {reprice_edit_form},
  UStat in 'UStat.pas' {frmStat},
  prihod in 'prihod.pas' {prihodForm},
  UCash in 'UCash.pas' {frmCash},
  UChoiseReserv in 'UChoiseReserv.pas' {frmChoiseReserv};

{$R *.res}
VAR
  i, DeptID: integer;
  print, delete, edit, admin: Boolean;
  ora_db_path : string;
  username, password : string;


begin


  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit     := false;
  Delete   := false;
  Print    := false;
  admin    := false;

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


  Application.Title       := 'Бухгалтерские документы';
  Application.CreateForm(TDM, DM);
  DataM.Operator_username := username;
  DataM.department_id     := IntToStr(DeptID);

  DataM.Operator_edit     := edit;
  DataM.Operator_delete   := delete;
  DataM.Operator_print    := print;
  DataM.Operator_admin    := admin;

  DM.OraSession.Disconnect;
  DM.OraSession.Username := username;
  DM.OraSession.Password := Password;
  DM.OraSession.Server := ora_db_path;
  DM.OraSession.Connect;

  Application.CreateForm(TOperSelectForm, OperSelectForm);
  DM.readparameters();
  
  Application.Run;

end.
