unit URekl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,star_lib;

type
  TfrmRekl = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowInfo : boolean;
  end;

var
  frmRekl: TfrmRekl;

implementation

{$R *.dfm}

 uses umain,UDM;



procedure TfrmRekl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmRekl);  //полож.окна
   frmRekl:=nil;
  Action := caFree;
end;

function TfrmRekl.ShowInfo : boolean;
Begin
 if not Assigned(frmRekl) then
  begin
    frmRekl := TfrmRekl.Create(Application);
    try
      frmRekl.Show;
      LoadFormState(frmRekl); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmRekl.WindowState = wsMinimized) then frmRekl.WindowState := wsNormal;
end;

end.
