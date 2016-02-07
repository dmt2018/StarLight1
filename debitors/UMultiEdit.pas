unit UMultiEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ActnList, cxTextEdit, cxCurrencyEdit,
  cxControls, cxContainer, cxEdit, cxCheckBox, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmMultiEdit = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    pnlMain: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    chb_debt: TcxCheckBox;
    chb_old: TcxCheckBox;
    chb_beznal: TcxCheckBox;
    Label14: TLabel;
    edit_invoice: TcxCurrencyEdit;
    Label15: TLabel;
    edit_info: TcxTextEdit;
    btnSave: TcxButton;
    ActionList1: TActionList;
    aSave: TAction;
    procedure aSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//  function ShowMultiEdit(oraSess: TOraSession; idClient: integer; idClientGroup: integer): integer;

var
  frmMultiEdit: TfrmMultiEdit;

implementation

{$R *.dfm}

procedure TfrmMultiEdit.aSaveExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
