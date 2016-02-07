unit UAddSomething;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls;

type
  Tfrm_add_something = class(TForm)
    edit_smth: TcxTextEdit;
    ActionList1: TActionList;
    Save_: TAction;
    Cancel_: TAction;
    Label1: TLabel;
    Label8: TLabel;
    procedure Cancel_Execute(Sender: TObject);
    procedure Save_Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_something: Tfrm_add_something;

implementation

{$R *.dfm}

procedure Tfrm_add_something.Cancel_Execute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm_add_something.Save_Execute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
