program ExcelReader;

uses
  Forms,
  SysUtils,
  Dialogs,
  Variants,
  StarLibrary,
  MainReader in 'MainReader.pas' {ReadInvoice},
  SheetChooser in 'SheetChooser.pas' {ChooseSheet},
  Globals in 'Globals.pas',
  RegExpr in 'RegExpr.pas',
  DataModule in 'DataModule.pas' {DM: TDataModule},
  MainUnit in 'MainUnit.pas' {MenuForm},
  RecogniserU in 'RecogniserU.pas' {InvoiceRecognise},
  NewNomenclature in 'NewNomenclature.pas' {NewNomForm},
  InvoEditU in 'InvoEditU.pas' {InvoEditF},
  RecognitionOptionsU in 'RecognitionOptionsU.pas' {RecognitionOptionsF},
  IppChoose in 'IppChoose.pas' {IppChooseF},
  NewInvU in 'NewInvU.pas' {NewInvF},
  SetInvoAllU in 'SetInvoAllU.pas' {SetInvoAll},
  PersonalSettingsU in 'PersonalSettingsU.pas' {PersonalSettingsF},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  NewDict in 'NewDict.pas' {NewD},
  UHelp in 'UHelp.pas' {frm_help},
  GetSepecDefValU in 'GetSepecDefValU.pas' {GetSepecDefValF},
  GetSpecValU in 'GetSpecValU.pas' {GetSpecValF},
  print_f in 'print_f.pas' {printf},
  client_choos in 'client_choos.pas' {clientchoosForm},
  NewSomethingU in 'NewSomethingU.pas' {NewSomethingF},
  UEditForm in 'UEditForm.pas' {frm_editform},
  UNamesChoise in 'UNamesChoise.pas' {frmNamesChoise},
  UOrders in 'UOrders.pas' {frmOrder},
  UNomsInfo in 'UNomsInfo.pas' {frmNomsForName},
  UReader in 'UReader.pas' {frmReader},
  invchooser in 'invchooser.pas' {invchooserForm},
  UNomenclatureList in 'UNomenclatureList.pas' {frmNomenclature},
  UChoiseType in 'UChoiseType.pas' {frm_choise_type},
  UMapping in 'UMapping.pas' {frmMapping};

{$R *.res}

begin

  CheckStarParams(ed,del,pr,add,Username,Password,ora_db_path,INPUT_DEPT_ID);

  //CreateAll();
  
  Application.Initialize;
  Globals.FillRecogniser;
  Globals.FillRecogniser_new;
  Globals.FillBegEndArr;
  Application.Title := 'Работа с инвойсами';
  Application.CreateForm(TMenuForm, MenuForm);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMapping, frmMapping);
  ReadIni();
  Application.Run;

end.
