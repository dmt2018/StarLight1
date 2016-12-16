program StarLight;

uses
  Forms,
  ULogin in 'ULogin.pas' {frmLogin},
  uMain in 'uMain.pas' {frmMain},
  info_f in 'info_f.pas' {frmAbout},
  UNSICurrency in 'UNSICurrency.pas' {frmNSICurreny},
  Themes,
  USettings in 'USettings.pas' {frmSettings},
  UAdmin in 'UAdmin.pas' {frmAdmin},
  UAdminAccount in 'UAdminAccount.pas' {frmAdminAccount},
  Udm in 'Udm.pas' {dm: TDataModule},
  Ueditor in 'Ueditor.pas' {frmeditor},
  URegistration in 'URegistration.pas' {frmRegistration},
  UEditRegistration in 'UEditRegistration.pas' {frmEditRegistration},
  UHotKeys in 'UHotKeys.pas' {frmHotKeys},
  UTrans in 'UTrans.pas' {frmTrans},
  UEditTrans in 'UEditTrans.pas' {frmEditTrans},
  URefbooks in 'URefbooks.pas' {frmRefbooks},
  UEditRefBooks in 'UEditRefBooks.pas' {frmEditRefbooks},
  UEditSubReg in 'UEditSubReg.pas' {frmEditSubReg},
  UEditAdmins in 'UEditAdmins.pas' {frmEditAdmins},
  Unomenclature in 'Unomenclature.pas' {frmNomenclature},
  UEditNom in 'UEditNom.pas' {frmEditNom},
  UEditSubNom in 'UEditSubNom.pas' {frmEditSubNom};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ИС "Старлайт"';
  Application.CreateForm(TDM, DM);
  // первым стартует DM и сразу запускает ф-ю CreateLoginForm кот-я запускает frmLogin
  if (DM.OraSession.Connected = True) then
  begin
    Application.CreateForm(TfrmMain, frmMain);
    Application.Run;
  end
  else  
  begin
    Application.Run;
    Application.Terminate;
  end;
end.
