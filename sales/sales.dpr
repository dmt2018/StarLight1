program sales;

uses
  Forms,
  StarLibrary,
  USaleStarter in 'USaleStarter.pas' {frmSalesStarter},
  UDM in 'UDM.pas' {DM: TDataModule},
  Globals in 'Globals.pas',
  client_choos in 'client_choos.pas' {clientchoosForm},
  USales in 'USales.pas' {frmSales},
  change_prices in 'change_prices.pas' {ChangePricesForm},
  dialog_number in 'dialog_number.pas' {dialog_number_Form},
  USettings in 'USettings.pas' {frmSettings},
  UStore in 'UStore.pas' {frmStore},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UNaklInfo in 'UNaklInfo.pas' {frmNaklInfo},
  global in 'global.pas',
  UChoiseType in 'UChoiseType.pas' {frm_choise_type},
  UReservInfo in 'UReservInfo.pas' {frmReservInfo};

{$R *.res}

begin
  CheckStarParams(ed,del,pr,add,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmSalesStarter, frmSalesStarter);
  DM.sale_session.Username := Username;
  DM.sale_session.Password := Password;
  DM.sale_session.Server   := ora_db_path;
  DM.sale_session.Connect;

  Application.Run;
end.
