unit dialog_number;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  ActnList, cxButtons;

type
  Tdialog_number_Form = class(TForm)
    Label2: TLabel;
    Panel2: TPanel;
    Number: TEdit;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    procedure aEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dialog_number_Form: Tdialog_number_Form;

implementation

{$R *.dfm}

procedure Tdialog_number_Form.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
