unit InvoChooseU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, PI_library,
  Menus, cxLookAndFeelPainters, ActnList, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox,
  cxTextEdit;

type
  TInvoChoose = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    gd_invoice: TcxGrid;
    gd_invoice_v: TcxGridDBTableView;
    gd_invoice_l: TcxGridLevel;
    gd_invoice_vINV_ID: TcxGridDBColumn;
    gd_invoice_vINV_DATE: TcxGridDBColumn;
    gd_invoice_vCOMMENTS: TcxGridDBColumn;
    gd_invoice_vINV_SUM: TcxGridDBColumn;
    gd_invoice_vIPP_ID: TcxGridDBColumn;
    gd_invoice_vIPP_COMMENT: TcxGridDBColumn;
    gd_invoice_vID_DEPARTMENTS: TcxGridDBColumn;
    gd_invoice_vDEPT_NAME: TcxGridDBColumn;
    gd_invoice_vis_minus: TcxGridDBColumn;
    gd_invoice_vMINUS_INV_ID: TcxGridDBColumn;
    Label1: TLabel;
    gd_invoice_vINV_MINUS: TcxGridDBColumn;
    gd_invoice_vS_NAME_RU: TcxGridDBColumn;
    Panel3: TPanel;
    cb_packs: TCheckBox;
    aShowPacks: TAction;
    gd_invoice_vINV_SUM1: TcxGridDBColumn;
    gd_invoice_vPAST_NUM: TcxGridDBColumn;
    procedure aEnterExecute(Sender: TObject);
    procedure gd_invoice_vDblClick(Sender: TObject);
    procedure gd_invoice_vIPP_IDCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cb_packsClick(Sender: TObject);
    procedure gd_invoice_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ChooseInvo(param_: integer) : Variant;

var
  InvoChoose: TInvoChoose;



implementation

uses DataModule, Globals;

{$R *.dfm}

function ChooseInvo(param_: integer) : Variant;
Begin
  is_minus_ := 0;
  if (param_ = 0) then
  begin
    DM.InvoReg.ParamByName('id_dept_').Value := CUR_DEPT_ID;
    ReactivateOraQuery(DM.InvoReg);
    InvoChoose.gd_invoice_v.DataController.DataSource := DM.InvoReg_DS;
    if InvoChoose.ShowModal = mrOk then
    begin
      is_minus_ := DM.InvoRegIS_MINUS.AsInteger;
      Result := DM.InvoReg.FieldByName('INV_ID').Value;
    end
    else Result := null;
  end
  else
  begin
    DM.InvoPriceReg.ParamByName('id_dept_').Value := CUR_DEPT_ID;
    ReactivateOraQuery(DM.InvoPriceReg);
    InvoChoose.gd_invoice_v.DataController.DataSource := DM.InvoPriceReg_DS;
    if InvoChoose.ShowModal = mrOk then
    begin
      is_minus_ := DM.InvoPriceRegIS_MINUS.AsInteger;
      Result := DM.InvoPriceReg.FieldByName('INV_ID').Value;
    end
    else Result := null;
  end;
End;

procedure TInvoChoose.aEnterExecute(Sender: TObject);
begin
 if (gd_invoice_v.DataController.DataSource = DM.InvoReg_DS) then
    if (DM.InvoReg.FieldByName('INV_ID').Value > 0) then ModalResult := mrOk;
end;

procedure TInvoChoose.cb_packsClick(Sender: TObject);
begin
  if cb_packs.Checked = false then
  begin
//    cb_packs.Checked := false;
    gd_invoice_v.DataController.Filter.Clear;
    gd_invoice_v.DataController.Filter.Active := false;
  end
  else
  begin
//    cb_packs.Checked := true;
    gd_invoice_v.DataController.Filter.Clear;
    gd_invoice_vIPP_ID.DataBinding.AddToFilter(nil, foGreater, '0');
    gd_invoice_v.DataController.Filter.Active := True;
  end;
end;


procedure TInvoChoose.gd_invoice_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  Col : Variant;
begin
    Col := gd_invoice_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gd_invoice_v.GetColumnByFieldName('PAST_NUM').Index
                );

    if (gd_invoice_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'PAST_NUM') then
    begin
      if (Col > 0) then
        ACanvas.Brush.Color := TColor($008080FF)
      else
        ACanvas.Brush.Color := clWhite;
    end;
end;


procedure TInvoChoose.gd_invoice_vDblClick(Sender: TObject);
begin
  aEnter.Execute;
end;

procedure TInvoChoose.gd_invoice_vIPP_IDCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if (ARow1.Values[gd_invoice_vIPP_ID.Index] = ARow2.Values[gd_invoice_vIPP_ID.Index]) and (ARow1.Values[gd_invoice_vIPP_ID.Index] > 0) then
    AAreEqual := true else AAreEqual := false;
end;

end.
