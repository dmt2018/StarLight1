unit change_prices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBGridEh, DB, useful_functions,
  Menus, cxLookAndFeelPainters, ActnList, cxButtons;

type
  TChangePricesForm = class(TForm)
    Znak_EditPercent: TComboBox;
    EditPercent: TEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ChangeAll_RB: TRadioButton;
    ChangeSel_RB: TRadioButton;
    Panel2: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    procedure EditPercentKeyPress(Sender: TObject; var Key: Char);
    procedure aEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePricesForm: TChangePricesForm;

implementation

uses dataM, Doc_New, global;

{$R *.dfm}

procedure TChangePricesForm.EditPercentKeyPress(Sender: TObject;
  var Key: Char);
begin
AllowOnlyNumber(Key);
end;

procedure TChangePricesForm.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
