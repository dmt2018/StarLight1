program customs;

uses
  Forms,
  StarLibrary,
  Ucustoms in 'Ucustoms.pas' {frmCustoms},
  Globals in 'Globals.pas',
  UDM in 'UDM.pas' {DM: TDataModule},
  MainReader in 'MainReader.pas' {ReadInvoice},
  SheetChooser in 'SheetChooser.pas' {ChooseSheet},
  USettings in 'USettings.pas' {frmSetings},
  UHelp in 'UHelp.pas' {frm_help},
  UStat in 'UStat.pas' {frm_stat},
  IppChoose in 'IppChoose.pas' {IppChooseF},
  NewSomethingU in 'NewSomethingU.pas' {NewSomethingF},
  UFitoEquipment in 'UFitoEquipment.pas' {frmFitoEquipment};

{$R *.res}

begin

  CheckStarParams(ed,del,pr,add,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Globals.FillRecogniser;
  Globals.FillBegEndArr;
  ReadIni();  
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCustoms, frmCustoms);
  Application.CreateForm(TfrmFitoEquipment, frmFitoEquipment);
  Application.Run;
end.
