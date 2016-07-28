unit UUsSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,star_lib;

type
  TfrmUsSet = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowInfo : boolean;
  end;

var
  frmUsSet: TfrmUsSet;

implementation

 uses umain,UDM;

{$R *.dfm}


function TfrmUsSet.ShowInfo : boolean;
Begin
 if not Assigned(frmUsSet) then
  begin
    frmUsSet := TfrmUsSet.Create(Application);
    try
      frmUsSet.Show;
      LoadFormState(frmUsSet); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmUsSet.WindowState = wsMinimized) then frmUsSet.WindowState := wsNormal;
end;


procedure TfrmUsSet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmUsSet);  //полож.окна
   frmUsSet:=nil;
  Action := caFree;
end;


end.
