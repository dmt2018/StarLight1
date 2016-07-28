unit UReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,star_lib;

type
  TfrmReg = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowInfo : boolean;
  end;

var
  frmReg: TfrmReg;

implementation

{$R *.dfm}

uses umain,UDM;


function TfrmReg.ShowInfo : boolean;
Begin
 if not Assigned(frmReg) then
  begin
    frmReg := TfrmReg.Create(Application);
    try
      frmReg.Show;
      LoadFormState(frmReg); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmReg.WindowState = wsMinimized) then frmReg.WindowState := wsNormal;
end;

procedure TfrmReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmReg);  //полож.окна
   frmReg:=nil;
  Action := caFree;
end;



end.
