unit UStat_raznos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, MemDS, DBAccess, Ora,
  StdCtrls, Buttons, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxCheckBox, cxCurrencyEdit;

type
  Tfrm_stat_raznos = class(TForm)
    gr_total: TcxGrid;
    gr_total_view: TcxGridDBTableView;
    gr_total_viewHH: TcxGridDBColumn;
    gr_total_viewNBUTTON: TcxGridDBColumn;
    gr_total_viewH_CATEGORY: TcxGridDBColumn;
    gr_total_viewQUANT: TcxGridDBColumn;
    gr_total_viewWEIGHT: TcxGridDBColumn;
    gr_total_level: TcxGridLevel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    DS_STAT: TOraDataSource;
    CDS_STAT: TOraQuery;
    CDS_STATHH: TStringField;
    CDS_STATNBUTTON: TFloatField;
    CDS_STATH_CATEGORY: TStringField;
    CDS_STATWEIGHT: TFloatField;
    CDS_STATQUANT: TFloatField;
    CDS_STATTR1_W: TFloatField;
    CDS_STATTR1_Q: TFloatField;
    CDS_STATTR2_W: TFloatField;
    CDS_STATTR2_Q: TFloatField;
    CDS_STATTR3_W: TFloatField;
    CDS_STATTR3_Q: TFloatField;
    CDS_STATTR4_W: TFloatField;
    CDS_STATTR4_Q: TFloatField;
    CDS_STATTR5_W: TFloatField;
    CDS_STATTR5_Q: TFloatField;
    CDS_STATTR6_W: TFloatField;
    CDS_STATTR6_Q: TFloatField;
    CDS_STATTR7_W: TFloatField;
    CDS_STATTR7_Q: TFloatField;
    CDS_STATTR8_W: TFloatField;
    CDS_STATTR8_Q: TFloatField;
    gr_total_viewTR1_W: TcxGridDBColumn;
    gr_total_viewTR1_Q: TcxGridDBColumn;
    gr_total_viewTR2_W: TcxGridDBColumn;
    gr_total_viewTR2_Q: TcxGridDBColumn;
    gr_total_viewTR3_W: TcxGridDBColumn;
    gr_total_viewTR3_Q: TcxGridDBColumn;
    gr_total_viewTR4_W: TcxGridDBColumn;
    gr_total_viewTR4_Q: TcxGridDBColumn;
    gr_total_viewTR5_W: TcxGridDBColumn;
    gr_total_viewTR5_Q: TcxGridDBColumn;
    gr_total_viewTR6_W: TcxGridDBColumn;
    gr_total_viewTR6_Q: TcxGridDBColumn;
    gr_total_viewTR7_W: TcxGridDBColumn;
    gr_total_viewTR7_Q: TcxGridDBColumn;
    gr_total_viewTR8_W: TcxGridDBColumn;
    gr_total_viewTR8_Q: TcxGridDBColumn;
    CDS_STATTR0_W: TFloatField;
    CDS_STATTR0_Q: TFloatField;
    gr_total_viewTR0_W: TcxGridDBColumn;
    gr_total_viewTR0_Q: TcxGridDBColumn;
    pnlRaznosStatTop: TPanel;
    chbTruck1: TcxCheckBox;
    chbTruck2: TcxCheckBox;
    chbTruck3: TcxCheckBox;
    chbTruck4: TcxCheckBox;
    chbTruck5: TcxCheckBox;
    chbTruck6: TcxCheckBox;
    chbTruck7: TcxCheckBox;
    chbTruck8: TcxCheckBox;
    chbTruck9: TcxCheckBox;
    chbTruck10: TcxCheckBox;
    procedure chbTruck1PropertiesChange(Sender: TObject);
    procedure gr_total_viewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_stat_raznos: Tfrm_stat_raznos;

implementation

{$R *.dfm}

procedure Tfrm_stat_raznos.chbTruck1PropertiesChange(Sender: TObject);
var i: integer;
begin
  for i:=0 to gr_total_view.ColumnCount-1 do
  begin
    if (gr_total_view.Columns[i].Tag = (Sender as TcxCheckBox).Tag) and (gr_total_view.Columns[i].Tag > 0) then
      gr_total_view.Columns[i].Visible := (Sender as TcxCheckBox).Checked;
  end;
end;

procedure Tfrm_stat_raznos.gr_total_viewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var param: Variant;
begin
  param := gr_total_view.DataController.GetValue(
             AViewInfo.GridRecord.RecordIndex, gr_total_view.GetColumnByFieldName('hh').Index
           );
  if (VarToStr(param) = '2 :: всего') then
  begin
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Color := clRed;
  end
  else
  begin
    ACanvas.Font.Style := [];
    ACanvas.Font.Color := clDefault;
  end;
end;

end.
