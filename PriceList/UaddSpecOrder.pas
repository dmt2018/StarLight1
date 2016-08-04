unit UaddSpecOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxCurrencyEdit, StdCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons, ExtCtrls;

type
  TfrmAddSpecOrder = class(TForm)
    pnlBottom: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    dtStart: TcxDateEdit;
    dtEnd: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edPrice: TcxCurrencyEdit;
    Label3: TLabel;
    pnlTop: TPanel;
    Label4: TLabel;
    edCurrPrice: TcxCurrencyEdit;
    lblType: TLabel;
    lblName: TLabel;
    lblCountry: TLabel;
    procedure BitBtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AddSpecOfferFormShow(pType, pName, pCounty: string; pPrice: currency; pNID: integer) : boolean;
  end;

var
  frmAddSpecOrder: TfrmAddSpecOrder;

implementation

uses DataModule;

{$R *.dfm}


function TfrmAddSpecOrder.AddSpecOfferFormShow(pType, pName, pCounty: string; pPrice: currency; pNID: integer) : boolean;
Begin
    frmAddSpecOrder := TfrmAddSpecOrder.Create(Application);
    try
      frmAddSpecOrder.lblType.Caption       := pType;
      frmAddSpecOrder.lblName.Caption       := pName;
      frmAddSpecOrder.lblCountry.Caption    := pCounty;
      frmAddSpecOrder.edPrice.Tag           := pNID;
      frmAddSpecOrder.edPrice.EditValue     := pPrice;
      frmAddSpecOrder.edCurrPrice.EditValue := pPrice;
      frmAddSpecOrder.dtStart.EditValue     := Now;
      frmAddSpecOrder.dtEnd.EditValue       := Now + 7;
      frmAddSpecOrder.ShowModal;
    finally
      frmAddSpecOrder := nil;
    end;
end;


procedure TfrmAddSpecOrder.BitBtnSaveClick(Sender: TObject);
begin

  Screen.Cursor := crHandPoint;
  try
    with DM.StoreProc do
    Begin
      StoredProcName := 'PRICE_PKG.add_spec_orders';
      Prepare;
      ParamByName('v_n_id').Value  := edPrice.Tag;
      ParamByName('v_d_b').Value   := dtStart.EditValue;
      ParamByName('v_d_e').Value   := dtEnd.EditValue;
      ParamByName('v_price').Value := edPrice.EditValue;
      ParamByName('v_res').Value   := 0;
      ExecProc;
      if ParamByName('v_res').Value = 1 then
        MessageBox(Handle, PChar('На товар "'+lblName.Caption+'" существует спец.предложение для диапазона дат'), 'Предупреждение!', MB_ICONWARNING)
      else
      begin
        MessageBox(Handle, PChar('На товар "'+lblName.Caption+'" успешно добавлено спец.предложение'), 'Результат', MB_ICONINFORMATION);
        ModalResult := mrOk;
      end;
    End;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
  Screen.Cursor := crDefault;

end;

end.
