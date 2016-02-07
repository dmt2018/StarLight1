unit change_prices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBGridEh, DB, useful_functions,
  Menus, cxLookAndFeelPainters, cxButtons, ActnList;

type
  TChangePricesForm = class(TForm)
    Panel2: TPanel;
    EditPercent: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    ChangeAll_RB: TRadioButton;
    ChangeSel_RB: TRadioButton;
    Number: TEdit;
    Label3: TLabel;
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

uses dataM,global;

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
