unit UStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, DB,
  Ora, MemDS, DBAccess, cxStyles, cxGraphics, cxEdit, cxCurrencyEdit,
  ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer, cxCalendar,
  cxLabel, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView;

type
  Tfrm_stat = class(TForm)
    Panel3: TPanel;
    cxButton2: TcxButton;
    Panel1: TPanel;
    CDS_STAT: TOraQuery;
    DS_STAT: TOraDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDS_STATTRUCKS: TStringField;
    CDS_STATHOL_SUB_TYPE: TStringField;
    CDS_STATPRIZNAK: TStringField;
    CDS_STATQUANT: TFloatField;
    gr_stat_v: TcxGridDBTableView;
    gr_stat_l: TcxGridLevel;
    gr_stat: TcxGrid;
    gr_stat_vTRUCKS: TcxGridDBColumn;
    gr_stat_vHOL_SUB_TYPE: TcxGridDBColumn;
    gr_stat_vPRIZNAK: TcxGridDBColumn;
    gr_stat_vQUANT: TcxGridDBColumn;
    CDS_STATHOL_COUNTRY: TStringField;
    gr_stat_vHOL_COUNTRY: TcxGridDBColumn;
    pmStatCustom: TPopupMenu;
    mnExpandAll: TMenuItem;
    mnCollapseAll: TMenuItem;
    CDS_PRICING_GRID: TOraQuery;
    DS_PRICING_GRID: TOraDataSource;
    CDS_PRICING_GRIDUNITS: TFloatField;
    CDS_PRICING_GRIDNAME_CAT_RU: TStringField;
    CDS_PRICING_GRIDNAME_CAT: TStringField;
    CDS_PRICING_GRIDFO_RULE: TFloatField;
    CDS_PRICING_GRIDCOUNTRY: TStringField;
    CDS_PRICING_GRIDNETTO: TFloatField;
    CDS_PRICING_GRIDSUMM: TFloatField;
    CDS_PRICING_GRIDFO_VALUE: TFloatField;
    CDS_PRICING_GRIDCUST_VALUE: TFloatField;
    CDS_PRICING_GRIDCUST_NORM: TFloatField;
    gr_pricegrid_l: TcxGridLevel;
    gr_pricegrid_v: TcxGridDBTableView;
    gr_pricegrid_vUNITS: TcxGridDBColumn;
    gr_pricegrid_vNAME_CAT_RU: TcxGridDBColumn;
    gr_pricegrid_vNAME_CAT: TcxGridDBColumn;
    gr_pricegrid_vFO_RULE: TcxGridDBColumn;
    gr_pricegrid_vCOUNTRY: TcxGridDBColumn;
    gr_pricegrid_vNETTO: TcxGridDBColumn;
    gr_pricegrid_vSUMM: TcxGridDBColumn;
    gr_pricegrid_vFO_VALUE: TcxGridDBColumn;
    gr_pricegrid_vCUST_VALUE: TcxGridDBColumn;
    gr_pricegrid_vCUST_NORM: TcxGridDBColumn;
    CDS_PRICING_GRIDAVG_PRICE: TFloatField;
    CDS_PRICING_GRIDCALC_VALUE: TFloatField;
    gr_pricegrid_vAVG_PRICE: TcxGridDBColumn;
    gr_pricegrid_vCALC_VALUE: TcxGridDBColumn;
    gr_pricegrid_v2: TcxGridDBBandedTableView;
    gr_pricegrid_v2UNITS: TcxGridDBBandedColumn;
    gr_pricegrid_v2NAME_CAT_RU: TcxGridDBBandedColumn;
    gr_pricegrid_v2NAME_CAT: TcxGridDBBandedColumn;
    gr_pricegrid_v2FO_RULE: TcxGridDBBandedColumn;
    gr_pricegrid_v2COUNTRY: TcxGridDBBandedColumn;
    gr_pricegrid_v2NETTO: TcxGridDBBandedColumn;
    gr_pricegrid_v2SUMM: TcxGridDBBandedColumn;
    gr_pricegrid_v2FO_VALUE: TcxGridDBBandedColumn;
    gr_pricegrid_v2CUST_VALUE: TcxGridDBBandedColumn;
    gr_pricegrid_v2CUST_NORM: TcxGridDBBandedColumn;
    gr_pricegrid_v2AVG_PRICE: TcxGridDBBandedColumn;
    gr_pricegrid_v2CALC_VALUE: TcxGridDBBandedColumn;
    CDS_PRICING_GRIDCALC_SUMM: TFloatField;
    gr_pricegrid_v2CALC_SUMM: TcxGridDBBandedColumn;
    CDS_PRICING_GRIDCALC_NEW_VALUE: TFloatField;
    gr_pricegrid_v2CALC_NEW_VALUE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure mnExpandAllClick(Sender: TObject);
    procedure mnCollapseAllClick(Sender: TObject);
    procedure gr_pricegrid_v2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_stat: Tfrm_stat;

implementation

uses Globals, UDM;

{$R *.dfm}

procedure Tfrm_stat.FormShow(Sender: TObject);
begin
  if (CDS_STAT.Active) and (CDS_STAT.RecordCount > 0) then
      gr_stat_v.DataController.Groups.FullExpand;
end;

procedure Tfrm_stat.gr_pricegrid_v2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin

  if (not AViewInfo.Selected) and (gr_pricegrid_v2.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_pricegrid_v2.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_pricegrid_v2.GetColumnByFieldName('CUST_VALUE').Index
                );
    val2  := gr_pricegrid_v2.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_pricegrid_v2.GetColumnByFieldName('CUST_NORM').Index
                );
    if (gr_pricegrid_v2.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'CUST_VALUE') and (val1 < val2) then
        ACanvas.Brush.Color := $008080FF;
  end;
end;

procedure Tfrm_stat.mnCollapseAllClick(Sender: TObject);
begin
  gr_stat_v.DataController.Groups.FullCollapse;
end;

procedure Tfrm_stat.mnExpandAllClick(Sender: TObject);
begin
  gr_stat_v.DataController.Groups.FullExpand;
end;

end.
