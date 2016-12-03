program PriceList;

uses
  Forms,
  SysUtils,
  Dialogs,
  StarLibrary,
  PriceU in 'PriceU.pas' {PriceF},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  Globals in 'Globals.pas',
  WhatToDoU in 'WhatToDoU.pas' {WhatToDo},
  InvoChooseU in 'InvoChooseU.pas' {InvoChoose},
  ChangeParamsU in 'ChangeParamsU.pas' {ChangeParamsF},
  StartU in 'StartU.pas' {StartF},
  PreparePrintU in 'PreparePrintU.pas' {PreparePrintF},
  StockLoadOptsU in 'StockLoadOptsU.pas' {StockLoadOptsF},
  print_f in 'print_f.pas' {printf},
  UStat in 'UStat.pas' {frm_stat},
  UNacenka in 'UNacenka.pas' {frmPrice},
  UOldPrice in 'UOldPrice.pas' {frmOldPrice},
  UPriceArchive in 'UPriceArchive.pas' {frmPriceArchive},
  UChoiseType in 'UChoiseType.pas' {frm_choise_type},
  UClientList in 'UClientList.pas' {frmClientList},
  UClientSale in 'UClientSale.pas' {frmClientSales},
  UPriceStatistic in 'UPriceStatistic.pas' {frmPriceStatisitic},
  USpecOrder in 'USpecOrder.pas' {frmSpecOrder},
  UaddSpecOrder in 'UaddSpecOrder.pas' {frmAddSpecOrder},
  UTruckSale in 'UTruckSale.pas' {frmTruckSale},
  UEditWebShop in 'UEditWebShop.pas' {frmEditWebShop};

{$R *.res}

begin

  CheckStarParams(ed,del,pr,addit,Username,Password,ora_db_path,INPUT_DEPT_ID);

  BeforeStartup;

  Application.Initialize;
  Application.Title := 'Цены';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TStartF, StartF);
  Application.CreateForm(TfrmAddSpecOrder, frmAddSpecOrder);
  Application.CreateForm(TfrmTruckSale, frmTruckSale);
  Application.CreateForm(TfrmEditWebShop, frmEditWebShop);
  Application.Run;
end.
