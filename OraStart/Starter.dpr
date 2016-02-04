program Starter;

uses
  Forms,
  RunOther in 'RunOther.pas' {Runner},
  logon in 'logon.pas' {login},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  info_f in 'info_f.pas' {about};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tlogin, login);
  Application.CreateForm(TRunner, Runner);
  Application.CreateForm(Tabout, about);
  Application.Run;
end.
