program WebService;

uses
  Forms,
  UWebService in 'UWebService.pas' {frmMainWebService};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainWebService, frmMainWebService);
  Application.Run;
end.
