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
  URegions in 'URegions.pas' {frmRegions},
  UCity in 'UCity.pas' {frmCity},
  UPromo in 'UPromo.pas' {frmPromo},
  Ueditor in 'Ueditor.pas' {frmeditor},
  UClientTypes in 'UClientTypes.pas' {frmClientTypes},
  UEditRefBook in 'UEditRefBook.pas' {frmEditRefBook},
  URegistration in 'URegistration.pas' {frmRegistration},
  UEditRegistration in 'UEditRegistration.pas' {frmEditRegistration},
  UHotKeys in 'UHotKeys.pas' {frmHotKeys},
  UPassport in 'UPassport.pas' {frmPassport},
  UDepartments in 'UDepartments.pas' {frmDepartments},
  UPositions in 'UPositions.pas' {frmPositions},
  UCountries in 'UCountries.pas' {frmCountries},
  USuppliers in 'USuppliers.pas' {frmSuppliers},
  UUnits in 'UUnits.pas' {frmUnits},
  UTrans in 'UTrans.pas' {frmTrans},
  UEditTrans in 'UEditTrans.pas' {frmEditTrans};

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
