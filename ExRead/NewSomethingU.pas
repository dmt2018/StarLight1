unit NewSomethingU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, cxLookAndFeelPainters, cxButtons,
  ExtCtrls, ActnList;

type
  TNewSomethingF = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Panel9: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Label3: TLabel;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetSomething(Capt : String; MaxLen : integer; OUT OutName : String) : boolean;
  end;

var
  NewSomethingF: TNewSomethingF;

implementation

{$R *.dfm}

function TNewSomethingF.GetSomething(Capt : String; MaxLen : integer;OUT OutName : String) : boolean;
VAR
  res : integer;
Begin
  try
    Application.CreateForm(TNewSomethingF, NewSomethingF);
    with NewSomethingF do
    Begin
      Edit1.Clear;
      Caption := '¬ведите ' + Capt;
      Edit1.MaxLength := MaxLen;
//      res := ShowModal();
//      GetSomething := false;
//      if res <> mrOk then begin result := false; Exit; end;
      if ShowModal <> mrOk then begin result := false; Exit; end;
      OutName := Edit1.Text;
      result := true;
    End;
  finally
    NewSomethingF.Free;
  end;
End;

procedure TNewSomethingF.Action1Execute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
