unit SelDistrIndU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, StdCtrls, Buttons, PI_Library, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TSelDistrIndF = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    gr_distr: TcxGrid;
    gr_distr_v: TcxGridDBTableView;
    gr_distr_l: TcxGridLevel;
    gr_distr_vDIST_IND_ID: TcxGridDBColumn;
    gr_distr_vDESCRIPTION: TcxGridDBColumn;
    gr_distr_vDIST_DATE: TcxGridDBColumn;
    gr_distr_vID_DEPARTMENTS: TcxGridDBColumn;
    gr_distr_vREADY: TcxGridDBColumn;
    gr_distr_vID_ORDERS: TcxGridDBColumn;
    gr_distr_vDATE_TRUCK_OUT: TcxGridDBColumn;
    gr_distr_vSTR_INV: TcxGridDBColumn;
    pmDistMain: TPopupMenu;
    N1: TMenuItem;
    gr_distr_vDISTRIB_SEQ: TcxGridDBColumn;
    pnlDistFilter: TPanel;
    deFrom: TcxDateEdit;
    deTill: TcxDateEdit;
    gr_distr_vIS_SENDED: TcxGridDBColumn;
    gr_distr_vSTR_ORDERS: TcxGridDBColumn;
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure deTillPropertiesChange(Sender: TObject);
    procedure gr_distr_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelDistrIndF: TSelDistrIndF;

Function GetDistributionIndexID (out DIST_DATE : Variant; out DESCRIPTION: Variant; out ID_ORDERS: Variant; out DIST_NUM: Variant) : Variant;

implementation

uses DistForm, DataModule, DateUtils, GlobalsU;

{$R *.dfm}

Function GetDistributionIndexID (out DIST_DATE : Variant; out DESCRIPTION: Variant; out ID_ORDERS: Variant; out DIST_NUM: Variant) : Variant;
Begin
  Application.CreateForm(TSelDistrIndF, SelDistrIndF);
  try
  with SelDistrIndF, DM.SelDistrInd do
    Begin
      //ReactivateOraQuery(DM.SelDistrInd);
      if ShowModal <> mrOk then
        Begin
          Result := NULL;
          exit;
        End;
      Result      := fieldByName('DIST_IND_ID').Value;
      DIST_DATE   := fieldByName('DIST_DATE').Value;
      DESCRIPTION := fieldByName('DESCRIPTION').Value;
      ID_ORDERS   := fieldByName('STR_ORDERS').Value;
      DIST_NUM    := fieldByName('DISTRIB_SEQ').Value;
      inv_done    := (fieldByName('is_sended').AsString <> '');
    End;
  finally
    SelDistrIndF.Free;
  end;
End;

procedure TSelDistrIndF.DBGridEh1DblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TSelDistrIndF.deTillPropertiesChange(Sender: TObject);
begin
  DM.SelDistrInd.Close;
  DM.SelDistrInd.ParamByName('STARTDATE').AsDate := deFrom.EditValue;
  DM.SelDistrInd.ParamByName('STOPDATE').AsDate  := deTill.EditValue;
  DM.SelDistrInd.Open;
end;

procedure TSelDistrIndF.FormCreate(Sender: TObject);
begin
  deFrom.Properties.OnEditValueChanged := nil;
  deFrom.Properties.OnEditValueChanged := nil;
  deFrom.EditValue := Now-30;
  deFrom.Properties.OnEditValueChanged := deTillPropertiesChange;
  deFrom.Properties.OnEditValueChanged := deTillPropertiesChange;
  deTill.EditValue := Now;
end;

procedure TSelDistrIndF.gr_distr_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var qua: Variant;
begin

  if not AViewInfo.Selected and (gr_distr_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'STR_INV') then
  begin
    qua  := gr_distr_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_distr_v.GetColumnByFieldName('IS_SENDED').Index
                );

    If ( VarToStr(qua) <> '' ) then ACanvas.Brush.Color := TColor($00BBFFBB);
  end;
end;

procedure TSelDistrIndF.N1Click(Sender: TObject);
begin
  gr_distr_v.DataController.DataSet.Delete;
  gr_distr_v.DataController.DataSet.Refresh;
end;

end.
