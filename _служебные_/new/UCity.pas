unit UCity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,star_lib;

type
  TfrmCity = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowInfo : boolean;
  end;

var
  frmCity: TfrmCity;

implementation

{$R *.dfm}

 uses umain,UDM;


procedure TfrmCity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmCity);  //полож.окна
   frmCity:=nil;
  Action := caFree;
end;

function TfrmCity.ShowInfo : boolean;
Begin
 if not Assigned(frmCity) then
  begin
    frmCity := TfrmCity.Create(Application);
    try
      frmCity.Show;
      LoadFormState(frmCity); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmCity.WindowState = wsMinimized) then frmCity.WindowState := wsNormal;
end;


end.
