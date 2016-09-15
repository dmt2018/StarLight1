unit UHotKeys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxpngimage, ExtCtrls, ActnList;

type
  TfrmHotKeys = class(TForm)
    imgHotKeys: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    alHotKeys: TActionList;
    aExit: TAction;
    procedure aExitExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmHotKeys: TfrmHotKeys;

implementation

{$R *.dfm}

//
//  Основной метод открытия формы
//
procedure TfrmHotKeys.aExitExecute(Sender: TObject);
begin
  Close;
end;

function TfrmHotKeys.MainFormShow : boolean;
Begin
  Application.CreateForm(TfrmHotKeys, frmHotKeys);
  try
    with frmHotKeys do
    Begin
      if ShowModal <> mrOk then
      begin
        result := false;
        Exit;
      end;
      result := true;
    End;
  finally
    frmHotKeys.Free;
  end;
end;


end.
