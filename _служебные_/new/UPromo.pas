unit UPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, star_lib;

type
  TfrmPromo = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmPromo: TfrmPromo;

implementation

{$R *.dfm}

 uses umain, UDM;

function TfrmPromo.MainFormShow : boolean;
Begin
 if not Assigned(frmPromo) then
  begin
    frmPromo := TfrmPromo.Create(Application);
    try
      frmPromo.Show;
      LoadFormState(frmPromo); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmPromo.WindowState = wsMinimized) then frmPromo.WindowState := wsNormal;
end;

procedure TfrmPromo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmPromo);  //полож.окна
   frmPromo := nil;
  Action := caFree;
end;

end.
