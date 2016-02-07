program UPLOAD;

uses
  Forms, SysUtils,
  Info in 'Info.pas' {InfoF};

{$R *.res}
VAR
  COM_PORT : string;
  clear_s : boolean;
begin

  Application.Initialize;
  Application.Title := 'UPLOAD';
  Application.CreateForm(TInfoF, InfoF);
  Application.Run;
end.
