unit UOrdersStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxCheckBox, ActnList,
  dxBar, ExtDlgs, ImgList, cxBarEditItem, dxBarExtItems, cxClasses, StdCtrls,
  cxButtons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxColorComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCurrencyEdit, cxCalendar, DBAccess, Ora, MemDS,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, DBGridEhGrouping, GridsEh, DBGridEh, cxGridExportLink, DBGridEhImpExp;

type
  TfrmOrdersStat = class(TForm)
    Panel2: TPanel;
    top_panel: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    chek_regions: TCheckBox;
    cb_clients: TcxCheckComboBox;
    chb_regions: TcxCheckComboBox;
    check_alpha: TCheckBox;
    Label2: TLabel;
    cb_type: TcxLookupComboBox;
    chek_group: TCheckBox;
    Label9: TLabel;
    cb_subtype: TcxLookupComboBox;
    chek_subgroup: TCheckBox;
    Panel4: TPanel;
    btn_help: TcxButton;
    Panel1: TPanel;
    btnClose: TcxButton;
    bm_main: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_otchet: TdxBarLargeButton;
    btn_clear: TdxBarLargeButton;
    btn_save: TdxBarLargeButton;
    btn_excel: TdxBarLargeButton;
    cb_legend: TcxBarEditItem;
    cxImageList1: TcxImageList;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1: TSavePictureDialog;
    bdc_main: TdxBarDockControl;
    ActionList1: TActionList;
    aSearch: TAction;
    aClear: TAction;
    pc_main: TcxPageControl;
    tsh_all_data: TcxTabSheet;
    tsh_data: TcxTabSheet;
    gr_data: TcxGrid;
    gr_data_v: TcxGridDBTableView;
    gr_data_vF_NAME: TcxGridDBColumn;
    gr_data_vQUANTITY: TcxGridDBColumn;
    gr_data_l: TcxGridLevel;
    tsh_orders: TcxTabSheet;
    grOrders: TcxGrid;
    grOrders_v: TcxGridDBBandedTableView;
    grOrders_vCHECKED: TcxGridDBBandedColumn;
    grOrders_vORDER_SEQ: TcxGridDBBandedColumn;
    grOrders_vID_ORDERS: TcxGridDBBandedColumn;
    grOrders_vDATE_TRUCK_OUT: TcxGridDBBandedColumn;
    grOrders_vDATE_TRUCK: TcxGridDBBandedColumn;
    grOrders_vNUMM: TcxGridDBBandedColumn;
    grOrders_vSUM_PRICE: TcxGridDBBandedColumn;
    grOrders_vDIST_IND_ID: TcxGridDBBandedColumn;
    grOrders_vS_NAME_RU: TcxGridDBBandedColumn;
    grOrders_vHAVE_NOTVALID_FLOWERS: TcxGridDBBandedColumn;
    grOrders_vINFO: TcxGridDBBandedColumn;
    grOrders_vINVOICE: TcxGridDBBandedColumn;
    grOrders_vD_DATE: TcxGridDBBandedColumn;
    grOrders_vNN: TcxGridDBBandedColumn;
    grOrders_vS_ID: TcxGridDBBandedColumn;
    grOrders_l: TcxGridLevel;
    Q_ORDERS: TOraQuery;
    Q_ORDERSID_ORDERS: TFloatField;
    Q_ORDERSINVOICE: TFloatField;
    Q_ORDERSD_DATE: TDateTimeField;
    Q_ORDERSDATE_TRUCK: TDateTimeField;
    Q_ORDERSINFO: TStringField;
    Q_ORDERSNUMM: TFloatField;
    Q_ORDERSNN: TFloatField;
    Q_ORDERSDATE_TRUCK_OUT: TDateTimeField;
    Q_ORDERSCHECKED: TFloatField;
    Q_ORDERSDIST_IND_ID: TFloatField;
    Q_ORDERSORDER_SEQ: TFloatField;
    Q_ORDERSS_ID: TIntegerField;
    Q_ORDERSS_NAME_RU: TStringField;
    Q_ORDERSSUM_PRICE: TFloatField;
    Q_ORDERSHAVE_NOTVALID_FLOWERS: TFloatField;
    Q_ORDERSOLD_PRICE: TIntegerField;
    Q_ORDERS_DS: TOraDataSource;
    pnlDateSet: TPanel;
    de_begin: TcxDateEdit;
    de_end: TcxDateEdit;
    aRefreshOrder: TAction;
    CDS_TYPES: TOraQuery;
    CDS_TYPESFT_ID: TFloatField;
    CDS_TYPESF_TYPE: TStringField;
    CDS_TYPESFT_MASK: TStringField;
    CDS_TYPESHT_ID: TFloatField;
    CDS_TYPESID_DEPARTMENTS: TFloatField;
    CDS_TYPESHOL_TYPE: TStringField;
    CDS_TYPESORD: TFloatField;
    CDS_TYPESDEPT: TStringField;
    CDS_TYPESFULL_FT_NAME: TStringField;
    DS_TYPES: TOraDataSource;
    DS_SUBTYPES: TOraDataSource;
    CDS_SUBTYPES: TOraQuery;
    CDS_SUBTYPESFST_ID: TFloatField;
    CDS_SUBTYPESF_SUB_TYPE: TStringField;
    CDS_SUBTYPESHOL_SUB_TYPE: TStringField;
    CDS_SUBTYPESFT_ID: TFloatField;
    CDS_SUBTYPESF_TYPE: TStringField;
    CDS_SUBTYPESDOUBLE_NAME: TStringField;
    CDS_SUBTYPESHT_ID: TFloatField;
    CDS_SUBTYPESHOL_TYPE: TStringField;
    CDS_SUBTYPESID_DEPARTMENTS: TFloatField;
    CDS_SUBTYPESDEPT: TStringField;
    CDS_SUBTYPESORD: TFloatField;
    CDS_SUBTYPESMNEMO: TStringField;
    CDS_SUBTYPESSUB_WEIGHT: TFloatField;
    CDS_STAT: TOraQuery;
    DS_STAT: TOraDataSource;
    grAllData: TDBGridEh;
    CDS_STAT_GROUP: TOraQuery;
    DS_STAT_GROUP: TOraDataSource;
    CDS_STAT_GROUPNAME_CODE: TStringField;
    CDS_STAT_GROUPF_NAME: TStringField;
    CDS_STAT_GROUPRUS_MARKS: TStringField;
    CDS_STAT_GROUPQUANTITY: TFloatField;
    gr_data_vNAME_CODE: TcxGridDBColumn;
    gr_data_vRUS_MARKS: TcxGridDBColumn;
    pm_orders: TPopupMenu;
    mnOrderToExcel: TMenuItem;
    procedure de_beginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aRefreshOrderExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure de_beginPropertiesEditValueChanged(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure aClearExecute(Sender: TObject);
    procedure mnOrderToExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdersStat: TfrmOrdersStat;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmOrdersStat.aClearExecute(Sender: TObject);
begin
  de_begin.Properties.OnEditValueChanged := nil;
  de_end.Properties.OnEditValueChanged := nil;
  de_begin.EditValue := Now - 14;
  de_end.EditValue   := Now + 30;
  de_begin.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;
  de_end.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;


  chek_group.Checked    := true;
  chek_subgroup.Checked := true;
  chek_regions.Checked  := true;
  check_alpha.Checked   := true;

  cb_type.ItemIndex := 0;

  aRefreshOrder.Execute;
  CDS_STAT.Close;
  CDS_STAT_GROUP.Close;
  pc_main.ActivePageIndex := 0;
end;

procedure TfrmOrdersStat.aRefreshOrderExecute(Sender: TObject);
begin
  try
    Q_ORDERS.Close;
    Q_ORDERS.ParamByName('p1').AsInteger := 62;
    Q_ORDERS.ParamByName('d1').AsDate := de_begin.EditValue;
    Q_ORDERS.ParamByName('d2').AsDate := de_end.EditValue;
    Q_ORDERS.ParamByName('t1').AsInteger := 0;
    Q_ORDERS.ParamByName('t2').AsInteger := 0;
    Q_ORDERS.ParamByName('t3').AsInteger := 0;
    Q_ORDERS.Open;
  except
    on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Îùèáêà!', MB_ICONERROR);
  end;
end;

procedure TfrmOrdersStat.aSearchExecute(Sender: TObject);
var tmpStr: string;
    pCol, I: integer;
begin
  if not Q_ORDERS.Active or Q_ORDERS.IsEmpty then exit;

  try
    tmpStr := '';
    Q_ORDERS.First;
    Q_ORDERS.DisableControls;
    while not Q_ORDERS.Eof do
    begin
      if Q_ORDERSCHECKED.AsInteger = 1 then
        tmpStr := tmpStr + Q_ORDERSID_ORDERS.AsString + ', ';
      Q_ORDERS.Next;
    end;
    if length(tmpStr) > 1 then
    begin
      tmpStr := copy(tmpStr,1,length(tmpStr)-2);

      CDS_STAT.Close;
      CDS_STAT.ParamByName('vOrders').AsString := tmpStr;
      CDS_STAT.Open;

      CDS_STAT_GROUP.Close;
      CDS_STAT_GROUP.ParamByName('vOrders').AsString := tmpStr;
      CDS_STAT_GROUP.Open;

      pc_main.ActivePageIndex := 1;
      if CDS_STAT.RecordCount > 0 then
      begin
        grAllData.SumList.Active := true;
        pCol := grAllData.Columns.Count;

        grAllData.Columns.Items[0].Footer.ValueType := fvtCount;
        grAllData.Columns.Items[0].Footer.Alignment := taCenter;

        for I := 6 to pCol - 1 do
        begin
          grAllData.Columns.Items[I].Footer.ValueType := fvtSum;
          grAllData.Columns.Items[I].Footer.Alignment := taCenter;
        end;
      end;
      dm.stat_session.Commit;
    end;
  finally
    Q_ORDERS.EnableControls;
  end;
end;

procedure TfrmOrdersStat.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOrdersStat.de_beginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then aRefreshOrder.Execute;
end;

procedure TfrmOrdersStat.de_beginPropertiesEditValueChanged(Sender: TObject);
begin
  aRefreshOrder.Execute
end;

procedure TfrmOrdersStat.FormCreate(Sender: TObject);
begin
  de_begin.Properties.OnEditValueChanged := nil;
  de_end.Properties.OnEditValueChanged := nil;
  de_begin.EditValue := Now - 14;
  de_end.EditValue   := Now + 30;
  de_begin.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;
  de_end.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;
end;

procedure TfrmOrdersStat.FormShow(Sender: TObject);
begin
  pc_main.ActivePageIndex := 0;
  CDS_TYPES.Close;
  CDS_SUBTYPES.Close;
  CDS_TYPES.ParamByName('id_dep').AsInteger := 62;
  CDS_TYPES.Open;
  cb_type.ItemIndex := 0;
  CDS_SUBTYPES.Open;

  aRefreshOrder.Execute;
end;

procedure TfrmOrdersStat.mnOrderToExcelClick(Sender: TObject);
begin
  if (pc_main.ActivePageIndex = 1) and (CDS_STAT.Active) and (CDS_STAT.RecordCount > 0) and (SaveDialog1.Execute) then
  begin
    SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grAllData, SaveDialog1.FileName, True);
  end;

  if (pc_main.ActivePageIndex = 2) and (CDS_STAT_GROUP.Active) and (CDS_STAT_GROUP.RecordCount > 0) and (SaveDialog1.Execute) then
  begin
    ExportGridToExcel(SaveDialog1.FileName, gr_data, True, true, True, 'xls');
  end;
end;

end.
