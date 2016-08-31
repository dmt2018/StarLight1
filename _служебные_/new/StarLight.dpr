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
  UReg in 'UReg.pas' {frmReg},
  UCity in 'UCity.pas' {frmCity},
  UPromo in 'UPromo.pas' {frmPromo},
  Ueditor in 'Ueditor.pas' {frmeditor},
  UClientTypes in 'UClientTypes.pas' {frmClientTypes},
  UEditClientTypes in 'UEditClientTypes.pas' {frmEditClientTypes},
  URegistration in 'URegistration.pas' {frmRegistration},
  UEditRegistration in 'UEditRegistration.pas' {frmEditRegistration};

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
