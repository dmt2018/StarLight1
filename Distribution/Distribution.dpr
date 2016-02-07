program Distribution;

uses
  Forms,
  StarLibrary,
  DistForm in 'DistForm.pas' {DistFormF},
  GlobalsU in 'GlobalsU.pas',
  DataModule in 'DataModule.pas' {DM: TDataModule},
  ChooseInvoiceU in 'ChooseInvoiceU.pas' {ChooseInvoiceF},
  ChooseOrderU in 'ChooseOrderU.pas' {ChooseOrderF},
  DistParamsU in 'DistParamsU.pas' {DistParamsF},
  SelDistrIndU in 'SelDistrIndU.pas' {SelDistrIndF},
  UPrintServes in 'UPrintServes.pas' {frmPrintServes},
  UChoiseType in 'UChoiseType.pas' {frm_choise_type},
  UNewOrder in 'UNewOrder.pas' {frmNewOrder},
  UClients in 'UClients.pas' {frmClients},
  UQuickRaznos in 'UQuickRaznos.pas' {frmQuickRaznos},
  URaznosInfo in 'URaznosInfo.pas' {frmNomRaznos},
  UDobor in 'UDobor.pas' {frmDobor};

{$R *.res}

begin
  CheckStarParams(ed, del, pr, add, Username, Password, ora_db_path, CUR_DEPT_ID);
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDistFormF, DistFormF);
  BeforeStart;
  DM.StarSess.Open;
  Application.Run;
end.
