program uftpwww;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmftpwww};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmftpwww, frmftpwww);
  Application.Run;
end.
