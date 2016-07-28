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
  UUsSet in 'UUsSet.pas' {frmUsSet},
  UReg in 'UReg.pas' {frmReg},
  UCity in 'UCity.pas' {frmCity},
  URekl in 'URekl.pas' {frmRekl};

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
