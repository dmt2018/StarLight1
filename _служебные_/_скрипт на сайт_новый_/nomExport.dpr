program nomExport;

uses
  Forms,
  uExport in 'uExport.pas' {frmExport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExport, frmExport);
  Application.Run;
end.
