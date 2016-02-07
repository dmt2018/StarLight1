program img_export;

uses
  Forms,
  UMain in 'UMain.pas' {frmMain},
  GDIPAPI in 'GDIPAPI.pas',
  gdiplus in 'gdiplus.pas',
  GDIPOBJ in 'GDIPOBJ.pas',
  GDIPUTIL in 'GDIPUTIL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
