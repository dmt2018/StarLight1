unit StockLoadOptsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, PI_library, Menus,
  cxLookAndFeelPainters, ActnList, cxButtons, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TStockLoadOptsF = class(TForm)
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Panel1: TPanel;
    Label2: TLabel;
    cb_store: TcxImageComboBox;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure GetStockLoadParams(OUT ID_STORE_TYPE : Variant);

var
  StockLoadOptsF: TStockLoadOptsF;

implementation

uses DataModule, Math;

{$R *.dfm}

procedure GetStockLoadParams(OUT ID_STORE_TYPE : Variant);
Begin
  try
    Application.CreateForm(TStockLoadOptsF, StockLoadOptsF);
    with StockLoadOptsF do
    Begin

      with DM.SelQ do
      Begin
        close;
        SQL.Clear;
        SQL.Add('SELECT ID_STORE_TYPE, NAME FROM STORE_TYPE ORDER BY NAME');
        Open;

        FillImgComboCx(DM.SelQ, cb_store, '');
        cb_store.ItemIndex := 0;
      End;

      if ShowModal = mrOk then
        Begin
          ID_STORE_TYPE := cb_store.EditValue;
        End
      else
        Begin
          ID_STORE_TYPE := null;
        End;
//      Free;
    End;
  finally
    StockLoadOptsF.Free;
  end;
End;

procedure TStockLoadOptsF.Action1Execute(Sender: TObject);
begin
  if (cb_store.ItemIndex >= 0) then begin cxButton1.SetFocus; ModalResult := mrOk; end;
end;

end.
