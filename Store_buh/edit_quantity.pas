unit edit_quantity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Menus,
  cxLookAndFeelPainters, ActnList, cxButtons;

type
  TEditQuantityForm = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    procedure aEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditQuantityForm: TEditQuantityForm;

implementation
uses dataM;
{$R *.dfm}

procedure TEditQuantityForm.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
