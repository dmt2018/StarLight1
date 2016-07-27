unit UAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,star_lib;

type
  TfrmAdmin = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
     function ShowInfo : boolean;
  end;

var
  frmAdmin: TfrmAdmin;

implementation

uses umain,UDM;

{$R *.dfm}

function TfrmAdmin.ShowInfo : boolean;
Begin
 if not Assigned(frmAdmin) then
  begin
    frmAdmin := TfrmAdmin.Create(Application);
    try
      frmAdmin.Show;
      LoadFormState(frmAdmin); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmAdmin.WindowState = wsMinimized) then frmAdmin.WindowState := wsNormal;
end;



procedure TfrmAdmin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmAdmin);  //полож.окна
   frmAdmin:=nil;
  Action := caFree;
end;

end.
