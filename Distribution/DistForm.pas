unit DistForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, Menus, ImgList, ExtCtrls,
  Buttons, Grids, DBGridEh, DBGrids, PI_library, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCheckBox, cxSpinEdit, cxImageComboBox, cxDropDownEdit, frxChBox, dxBar,
  dxBarExtItems, cxBarEditItem, cxClasses, frxClass, frxDBSet, cxSplitter, cxPC,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxContainer, cxProgressBar,EHLibODAC,
  IniFiles, frxExportXLS, frxExportRTF, frxExportHTML, frxExportPDF, PI_Library_reg,
  MemDS, DBAccess, Ora, StrUtils, frxBarcode;

type
  TDistFormF = class(TForm)
    ActionList1: TActionList;
    AExit: TAction;
    ActionImageList: TImageList;
    AGetdept: TAction;
    AChooseOrder: TAction;
    ALoadStock: TAction;
    ALoadInvoice: TAction;
    ANewDist: TAction;
    AOpenDist: TAction;
    AEditDist: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    ADistDelete: TAction;
    ADistribute: TAction;
    ADistOnePos: TAction;
    APutBack: TAction;
    frxSelClients: TfrxDBDataset;
    frxSelDistribution: TfrxDBDataset;
    frxReport1: TfrxReport;
    AFindSource: TAction;
    BarMan_invoice: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    tlb_add: TdxBarButton;
    tlb_set: TdxBarButton;
    tlb_save1: TdxBarButton;
    tlb_exit: TdxBarButton;
    dept_compo: TcxBarEditItem;
    tlb_refresh: TdxBarButton;
    gr_PrepDist_v: TcxGridDBTableView;
    gr_PrepDist_l: TcxGridLevel;
    gr_PrepDist: TcxGrid;
    gr_PrepDist_vPREP_DIST_ID: TcxGridDBColumn;
    gr_PrepDist_vN_ID: TcxGridDBColumn;
    gr_PrepDist_vINVOICE_DATA_ID: TcxGridDBColumn;
    gr_PrepDist_vID_STORE_MAIN: TcxGridDBColumn;
    gr_PrepDist_vTOTAL_QUANTITY: TcxGridDBColumn;
    gr_PrepDist_vLEFT_QUANTITY: TcxGridDBColumn;
    gr_PrepDist_vCOMPILED_NAME: TcxGridDBColumn;
    gr_PrepDist_vDIST_IND_ID: TcxGridDBColumn;
    gr_PrepDist_vWHERE_FLOWER_IS: TcxGridDBColumn;
    tlb_raspred: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    tlb_load: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    ppStok: TPopupMenu;
    F31: TMenuItem;
    N14: TMenuItem;
    pc_type_invoice: TcxPageControl;
    tsh_goods: TcxTabSheet;
    gr_goods: TcxGrid;
    gr_goods_v: TcxGridDBTableView;
    _goods_GREAT_NAME: TcxGridDBColumn;
    goods_ZATIRKA: TcxGridDBColumn;
    goods_QUANTITY: TcxGridDBColumn;
    goods_DISTRIBUTED_NUMBER: TcxGridDBColumn;
    _goods_N_ID: TcxGridDBColumn;
    _goods_COMPILED_NAME: TcxGridDBColumn;
    gr_goods_l: TcxGridLevel;
    gr_PrepDist_vNBUTTON: TcxGridDBColumn;
    gr_PrepDist_vHOL_SUB_TYPE: TcxGridDBColumn;
    gr_PrepDist_vHOL_TYPE: TcxGridDBColumn;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    dxBarDockControl1: TdxBarDockControl;
    BarMan_invoiceBar1: TdxBar;
    stat_blank1: TdxBarStatic;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    cx_default: TcxStyle;
    cx_red: TcxStyle;
    stat_red: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    cx_green: TcxStyle;
    stat_green: TdxBarStatic;
    cx_stock: TcxStyle;
    stat_blank3: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    cx_stock_legend: TcxStyle;
    dxBarStatic4: TdxBarStatic;
    gr_goods_vWHERE_FLOWER_IS: TcxGridDBColumn;
    gr_goods_vHOL_TYPE: TcxGridDBColumn;
    gr_goods_vF_SUB_TYPE: TcxGridDBColumn;
    ppGoods: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    stat_blank2: TdxBarStatic;
    cx_ok: TcxStyle;
    BarMan_invoiceBar2: TdxBar;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    Panel1: TPanel;
    pb_main: TcxProgressBar;
    N5: TMenuItem;
    aTab: TAction;
    cx_editdata: TcxStyle;
    _gr_goods_vN_ID_: TcxGridDBColumn;
    frxCDS_GOODS: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarStatic13: TdxBarStatic;
    ppGoodsInfo: TPopupMenu;
    ppgi_clear: TMenuItem;
    ppgi_remove: TMenuItem;
    aDelGoodsInfo: TAction;
    aDelGoods: TAction;
    dxBarDockControl2: TdxBarDockControl;
    N9: TMenuItem;
    aDelListInfo: TAction;
    tlb_prints: TdxBarSubItem;
    aPrintKubick: TAction;
    btnKubic: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    tlb_serves: TdxBarButton;
    frxCDS_GOODS2: TfrxDBDataset;
    cx_selected: TcxStyle;
    Label3: TLabel;
    tlb_print_ostatok: TdxBarButton;
    aPrintOstatok: TAction;
    frxOstatok: TfrxDBDataset;
    goods_GREAT_NAME_F2: TcxGridDBColumn;
    dxBarStatic14: TdxBarStatic;
    dxBarStatic15: TdxBarStatic;
    dxBarStatic16: TdxBarStatic;
    dxBarStatic17: TdxBarStatic;
    dxBarStatic18: TdxBarStatic;
    dxBarStatic19: TdxBarStatic;
    cxSplitter1: TcxSplitter;
    aChoiseType: TAction;
    gr_goods_vNBUTTON: TcxGridDBColumn;
    gr_PrepDist_vF_NAME_RU: TcxGridDBColumn;
    gr_goods_vF_NAME_RU: TcxGridDBColumn;
    cxSplitter2: TcxSplitter;
    N4: TMenuItem;
    bc_fontsize: TcxBarEditItem;
    aDistOnePosNew: TAction;
    N6: TMenuItem;
    Label2: TLabel;
    Label4: TLabel;
    Panel6: TPanel;
    Label5: TLabel;
    gr_goods_info: TcxGrid;
    gr_goods_info_v: TcxGridDBTableView;
    ginfo_nick: TcxGridDBColumn;
    ginfo_PACK_: TcxGridDBColumn;
    _ginfo_FIO: TcxGridDBColumn;
    _ginfo_ID_ORDERS_CLIENTS: TcxGridDBColumn;
    _ginfo_ID_ORDERS: TcxGridDBColumn;
    _ginfo_ID_CLIENTS: TcxGridDBColumn;
    _ginfo_D_DATE: TcxGridDBColumn;
    _ginfo_N_TYPE: TcxGridDBColumn;
    _ginfo_STATUS: TcxGridDBColumn;
    _ginfo_ALPHA: TcxGridDBColumn;
    _ginfo_N_ID: TcxGridDBColumn;
    ginfo_ZATIRKA: TcxGridDBColumn;
    ginfo_QUANTITY: TcxGridDBColumn;
    _ginfo_FULL_NAME: TcxGridDBColumn;
    ginfo_GREAT_NAME: TcxGridDBColumn;
    _ginfo_GREAT_NAME_F: TcxGridDBColumn;
    gr_goods_info_vDQ: TcxGridDBColumn;
    ginfo_GREAT_NAME2: TcxGridDBColumn;
    _ginfo_GREAT_NAME_F2: TcxGridDBColumn;
    _ginfo_IS_STOCK: TcxGridDBColumn;
    ginfo_DQ_CHECK: TcxGridDBColumn;
    gr_goods_info_vDIST_ID: TcxGridDBColumn;
    gr_goods_info_l: TcxGridLevel;
    chbRaznos: TcxBarEditItem;
    aDelOrder: TAction;
    N7: TMenuItem;
    N8: TMenuItem;
    aUnloadStock: TAction;
    btnUnloadStock: TdxBarButton;
    Label6: TLabel;
    mnReplaceOrder: TMenuItem;
    aReplaceOrder: TAction;
    gr_PrepDist_vSTOCK: TcxGridDBColumn;
    gr_goods_vDIST_IND_ID: TcxGridDBColumn;
    gr_goods_vQQ: TcxGridDBColumn;
    cxBold: TcxStyle;
    gr_goods_info_vPREP_DIST_ID: TcxGridDBColumn;
    gr_PrepDist_vALLORDER: TcxGridDBColumn;
    bbClientOrders: TdxBarButton;
    gr_PrepDist_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    gr_PrepDist_vFT_ID: TcxGridDBColumn;
    gr_PrepDist_vFST_ID: TcxGridDBColumn;
    gr_goods_vFT_ID: TcxGridDBColumn;
    gr_goods_vF_TYPE: TcxGridDBColumn;
    gr_PrepDist_vF_TYPE: TcxGridDBColumn;
    aClearFilter: TAction;
    aPrint: TAction;
    dxBarButton12: TdxBarButton;
    aPrintKubick2: TAction;
    btnKubic2: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    aShowClientStat: TAction;
    bbClientStat: TdxBarButton;
    aQuickRaznos: TAction;
    mnOrderRaznos: TMenuItem;
    N11: TMenuItem;
    mnOrder: TMenuItem;
    aPrintKubick3: TAction;
    btnKubic3: TdxBarButton;
    frxClients: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    bbReserv: TdxBarButton;
    bbCheckErrors: TdxBarButton;
    aCheckErrors: TAction;
    Q_ORDERS_ORDERS: TOraQuery;
    Q_ORDERS_ORDERSID_ORDERS_CLIENTS: TFloatField;
    Q_ORDERS_ORDERSN_TRUCK: TIntegerField;
    Q_ORDERS_ORDERSCAPACITY: TFloatField;
    Q_ORDERS_ORDERSD_DATE: TDateTimeField;
    Q_ORDERS_ORDERSNICK: TStringField;
    Q_ORDERS_ORDERSPHONE: TStringField;
    Q_ORDERS_ORDERSFIO: TStringField;
    Q_ORDERS_ORDERSID_ORDERS: TFloatField;
    Q_ORDERS_ORDERSID_CLIENTS: TIntegerField;
    Q_ORDERS_ORDERSALPHA: TStringField;
    Q_ORDERS_ORDERSIN_FILE: TStringField;
    Q_ORDERS_ORDERSMISS_CODE: TStringField;
    Q_ORDERS_ORDERSISMISSCODE: TFloatField;
    cdsNom: TOraQuery;
    cdsNomN_ID: TFloatField;
    Q_SQL_SPIS: TOraQuery;
    frxBarCodeObject1: TfrxBarCodeObject;
    gr_goods_info_vN_TRUCK: TcxGridDBColumn;
    gr_goods_info_vCAPACITY: TcxGridDBColumn;
    gr_goods_info_vON_DATE: TcxGridDBColumn;
    gr_goods_info_vID_ORDERS_CLIENTS_: TcxGridDBColumn;
    gr_goods_info_vID_ORDERS_LIST: TcxGridDBColumn;
    gr_goods_info_vGREAT_NAME: TcxGridDBColumn;
    gr_goods_info_vGREAT_NAME2: TcxGridDBColumn;
    gr_goods_info_vGREAT_NAME_F2: TcxGridDBColumn;
    gr_goods_info_vDISTRIBUTED_NUMBER: TcxGridDBColumn;
    gr_goods_info_vD_N_ID: TcxGridDBColumn;
    dxBarStatic20: TdxBarStatic;
    dxBarStatic21: TdxBarStatic;
    stAlterRaznos: TcxStyle;
    aShowRaznos: TAction;
    mnShowRaznos: TMenuItem;
    aPrintSell: TAction;
    aPrintSellByGroup: TAction;
    tlb_print_ostatok_free: TdxBarButton;
    tlb_print_ostatok_free_group: TdxBarButton;
    bbSettings: TdxBarSubItem;
    chbIsPack: TcxBarEditItem;
    aSearchByName: TAction;
    dxBarStatic22: TdxBarStatic;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label7: TLabel;
    te_search: TcxTextEdit;
    dxBarStatic23: TdxBarStatic;
    dxBarStatic24: TdxBarStatic;
    ppgi_add_client_order: TMenuItem;
    tlb_print_ostatok_group: TdxBarButton;
    aPrintOstatokByGroup: TAction;
    gr_PrepDist_vORDERID: TcxGridDBColumn;
    gr_PrepDist_vSALDO: TcxGridDBColumn;
    N10: TMenuItem;
    N12: TMenuItem;
    mn_left_saldo: TMenuItem;
    mn_left_total: TMenuItem;
    mn_left_ostatok: TMenuItem;
    mn_left_stok: TMenuItem;
    mn_left_source: TMenuItem;
    N13: TMenuItem;
    N15: TMenuItem;
    mn_right_stock: TMenuItem;
    mn_right_source: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    mn_right_Order: TMenuItem;
    mnLoadStockByGroup: TdxBarSubItem;
    mnAddToClient: TMenuItem;
    chbPrintPack: TcxBarEditItem;
    cdsClientsStatItem: TOraQuery;
    cdsClientsStatItemN_ID: TFloatField;
    cdsClientsStatItemQUANTITY: TFloatField;
    cdsClientsStatItemZATIRKA: TFloatField;
    cdsClientsStatItemID_ORDERS_LIST: TFloatField;
    cdsClientsStatItemCOMPILED_NAME_OTDEL: TStringField;
    cdsClientsStatItemCOLOUR: TStringField;
    cdsClientsStatItemIS_STOCK: TFloatField;
    cdsClientsStatItemDQ: TFloatField;
    cdsClientsStatItemDQ_CHECK: TFloatField;
    cdsClientsStatItemDIST_ID: TFloatField;
    cdsClientsStatItemCOMPILED_NAME_OTDEL_RAZN: TStringField;
    cdsClientsStatItemCOLOUR_RAZN: TStringField;
    cdsClientsStatItemNICK: TStringField;
    cdsClientsStatItemID_CLIENTS: TFloatField;
    cdsClientsStatItemIS_PACK: TStringField;
    fr_order_list: TfrxDBDataset;
    cdsClientsStatItemWHERE_FLOWER_IS: TStringField;
    chbPrintZero: TcxBarEditItem;
    Label8: TLabel;
    mnLoadOrder: TdxBarButton;
    aLoadOrder: TAction;
    aUnloadOrder: TAction;
    mnUnloadOrder: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    gr_goods_info_vPRIORITY: TcxGridDBColumn;
    tlb_print_ostatok_free_group_wp: TdxBarButton;
    aPrintSellByGroupWP: TAction;
    procedure AExitExecute(Sender: TObject);
    procedure AGetdeptExecute(Sender: TObject);
    procedure AChooseOrderExecute(Sender: TObject);
    procedure ALoadInvoiceExecute(Sender: TObject);
    procedure ANewDistExecute(Sender: TObject);
    procedure ShowDistInd();
    procedure AEditDistExecute(Sender: TObject);
    procedure AOpenDistExecute(Sender: TObject);
    procedure ALoadStockExecute(Sender: TObject);
    procedure ADistributeExecute(Sender: TObject);
    procedure ADistDeleteExecute(Sender: TObject);
    procedure ADistOnePosExecute(Sender: TObject);
    procedure APutBackExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tlb_raspredPopup(Sender: TObject);
    procedure gr_PrepDist_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tlb_refreshClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure gr_goods_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure N5Click(Sender: TObject);
    procedure aTabExecute(Sender: TObject);
    procedure gr_goods_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gr_goods_info_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ginfo_QUANTITYCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aDelGoodsInfoExecute(Sender: TObject);
    procedure aDelGoodsExecute(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure aDelListInfoExecute(Sender: TObject);
    procedure aPrintKubickExecute(Sender: TObject);
    procedure tlb_servesClick(Sender: TObject);
    procedure aPrintOstatokExecute(Sender: TObject);
    procedure aChoiseTypeExecute(Sender: TObject);
    procedure gr_goods_info_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gr_goods_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure aDistOnePosNewExecute(Sender: TObject);
    procedure aDelOrderExecute(Sender: TObject);
    procedure aUnloadStockExecute(Sender: TObject);
    procedure aReplaceOrderExecute(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure aPrintKubick2Execute(Sender: TObject);
    procedure aShowClientStatExecute(Sender: TObject);
    procedure aQuickRaznosExecute(Sender: TObject);
    procedure mnOrderClick(Sender: TObject);
    procedure aPrintKubick3Execute(Sender: TObject);
    procedure bbClientOrdersClick(Sender: TObject);
    procedure bbReservClick(Sender: TObject);
    procedure bbCheckErrorsClick(Sender: TObject);
    procedure aCheckErrorsExecute(Sender: TObject);
    procedure aShowRaznosExecute(Sender: TObject);
    procedure aPrintSellExecute(Sender: TObject);
    procedure aPrintSellByGroupExecute(Sender: TObject);
    procedure chbIsPackPropertiesChange(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aSearchByNameExecute(Sender: TObject);
    procedure gr_goods_info_vEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure ppgi_add_client_orderClick(Sender: TObject);
    procedure aPrintOstatokByGroupExecute(Sender: TObject);
    procedure mn_left_saldoClick(Sender: TObject);
    procedure mn_left_ostatokClick(Sender: TObject);
    procedure mn_left_totalClick(Sender: TObject);
    procedure mn_left_stokClick(Sender: TObject);
    procedure mn_left_sourceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mn_right_stockClick(Sender: TObject);
    procedure mn_right_sourceClick(Sender: TObject);
    procedure mn_right_OrderClick(Sender: TObject);
    procedure mnGroupRoseClick(Sender: TObject);
    procedure mnAddToClientClick(Sender: TObject);
    procedure aLoadOrderExecute(Sender: TObject);
    procedure UnloadOrderClick(Sender: TObject);
    procedure aPrintSellByGroupWPExecute(Sender: TObject);
  private
    path: string;
    vSTOK: integer;
    procedure PutByNID;
    procedure PutByOrder(cds: TDataSet);
    procedure ReactivateGoods(N_ID_, CLIENT_ID_: integer);
    procedure PutByNIDnew(vReplace: integer);
    function GetInvoices: string;
    function GetOrders: string;
    { Private declarations }
  public
    { Public declarations }
    has_error: boolean;
    param_, pnl_: integer;
    procedure PrintItog(vReport: String);
    procedure search_execute(param: integer; pnl_order: boolean);
  end;

var
  DistFormF: TDistFormF;

implementation

uses GlobalsU, ChooseOrderU, ChooseInvoiceU, DistParamsU, DataModule,
  SelDistrIndU, UPrintServes, UChoiseType, UNewOrder, UClients,
  UQuickRaznos, URaznosInfo, UDobor;
//            Ora, DBAccess
{$R *.dfm}


//
//  На создание формы заполняем данные
//
procedure TDistFormF.FormCreate(Sender: TObject);
var itm: TcxImageComboBoxItem;
    cbep: TcxImageComboBoxProperties;
    newitem: TdxBarButton;
    ItemLink: TdxBarItemLink;
begin
  inv_done := false;

  with DM.SelQ do
  Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('select a.f_type, a.ft_id from flower_types a, hol_types b where a.ht_id=b.ht_id(+) and a.id_departments = '+VarToStr(CUR_DEPT_ID)+' order by nvl(b.ord,0), a.f_type ');
        Open;

        if RecordCount > 0 then
        begin
          First;
          while not Eof do
          begin
            mnLoadStockByGroup.ItemLinks.BeginUpdate;
            ItemLink := mnLoadStockByGroup.ItemLinks.Add;
            ItemLink.Item := TdxBarButton.Create(mnLoadStockByGroup);
            ItemLink.Item.Caption := FieldByName('f_type').AsString; // '111';
            ItemLink.Item.Tag := FieldByName('ft_id').AsInteger;
            ItemLink.Item.OnClick := mnGroupRoseClick;
            ItemLink.BringToTopInRecentList(False);
            mnLoadStockByGroup.ItemLinks.EndUpdate;
            next;
          end;
        end;
        Close;

      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          exit;
        end;
      end;
  End;


  with DM.SelQ do
  Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin STORE_PKG.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(username);
        ParamByName('cursor_').AsCursor;
        Open;
      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          exit;
        end;
      end;
  End;

  if (DM.SelQ.RecordCount = 0) then
  begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      exit;
  end;

  dept_compo.Properties.OnChange := nil;
  cbep := (dept_compo.Properties as TcxImageComboBoxProperties);
  cbep.Items.Clear;

  while not DM.SelQ.Eof do
  begin
   	itm := cbep.Items.Add;
 		itm.Description	:= DM.SelQ.FieldByName('NAME').AsString;
   	itm.Value			  := DM.SelQ.FieldByName('ID_DEPARTMENTS').AsInteger;
    DM.SelQ.Next;
  end;
  dept_compo.EditValue := CUR_DEPT_ID;
  dept_compo.Properties.OnChange := AGetdeptExecute;
end;


procedure TDistFormF.FormResize(Sender: TObject);
begin
    Panel3.Width := trunc((Sender as TForm).Width / 2);
//    gr_goods_info.Height := trunc(tsh_goods.Height / 2);
    panel6.Height := trunc(tsh_goods.Height / 2);
end;


procedure TDistFormF.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  path: string;
begin
  path := ExtractFilePath(Application.ExeName);
  AOptions := [];
  AStoreKey     := path + '/ini/main_distribution_lp_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'LeftPanel';
  gr_PrepDist_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/main_distribution_rp_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'RightPanel';
  gr_goods_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/main_distribution_rpl_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'RightPanelList';
  gr_goods_info_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


procedure TDistFormF.FormShow(Sender: TObject);
var RegIni : TIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
begin
  has_error := false;
  path   := ExtractFilePath(Application.ExeName);
  AOptions := [];

  AStoreKey := path + '/ini/main_distribution_lp_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'LeftPanel';
  gr_PrepDist_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  mn_left_saldo.Checked   := gr_PrepDist_vSALDO.Visible;
  mn_left_total.Checked   := gr_PrepDist_vTOTAL_QUANTITY.Visible;
  mn_left_ostatok.Checked := gr_PrepDist_vLEFT_QUANTITY.Visible;
  mn_left_stok.Checked    := gr_PrepDist_vSTOCK.Visible;
  mn_left_source.Checked  := gr_PrepDist_vWHERE_FLOWER_IS.Visible;

  AStoreKey := path + '/ini/main_distribution_rp_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'RightPanel';
  gr_goods_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  mn_right_stock.Checked  := gr_goods_vQQ.Visible;
  mn_right_source.Checked := gr_goods_vWHERE_FLOWER_IS.Visible;

  AStoreKey := path + '/ini/main_distribution_rpl_'+DM.StarSess.Username+'.ini';
  ASaveViewName := 'RightPanelList';
  gr_goods_info_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  mn_right_Order.Checked  := ginfo_GREAT_NAME.Visible;

  RegIni := TIniFile.Create(path+'ini/'+DM.StarSess.Username+'.ini');
  try
    bc_fontsize.EditValue   := RegIni.ReadString('FontSize', 'Value', '9');
    gr_PrepDist.Font.Size   := bc_fontsize.EditValue;
    gr_goods.Font.Size      := bc_fontsize.EditValue;
    gr_goods_info.Font.Size := bc_fontsize.EditValue;
    chbIsPack.EditValue     := RegIni.ReadBool('IsPack', 'Value', true);
    chbPrintPack.EditValue  := RegIni.ReadBool('IsPrintPack', 'Value', true);
  finally
    RegIni.Free;
  end;

//  path   := ExtractFilePath(Application.ExeName);
  path   := path+'..\orders\orders.ini';
  RegIni := TIniFile.Create(path);
  try
    vSTOK  := RegIni.ReadInteger('STOK', 'value', 0);
    CUR_CLIENT := vSTOK;
  finally
    RegIni.Free;
  end;

  gr_PrepDist.SetFocus;
  dept_compo.SetFocus;
  AGetdeptExecute(Sender); // устанавливаем привелегии
end;

//
// Устанавливаем привелегии и кнопки
//
procedure TDistFormF.AGetdeptExecute(Sender: TObject);
begin
  if (dept_compo.CurText = '') then
  begin
    MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
    CUR_DEPT_ID := NULL;
  end
  else
  begin
    CUR_DEPT_ID   := dept_compo.EditValue;
    CUR_DEPT_NAME := dept_compo.Text;


  with DM.SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('login_').AsString   := UpperCase(Username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=18';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then ed := true else ed := false;
         if FieldByName('C_DEL').AsInteger=1 then del := true else del := false;
         if FieldByName('C_PRINT').AsInteger=1 then pr := true else pr := false;
         if FieldByName('C_ADDIT').AsInteger=1 then add := true else add := false;
         AOpenDist.Enabled := true;
      end
      else
      begin
        ed := false;
        del := false;
        pr := false;
        add := false;
        AOpenDist.Enabled := false;
      end;
      Close;
      Filter := '';
      Filtered := false;
  End;


    if CUR_DEPT_ID <> null then
    Begin
      ANewDist.Enabled  := ed;
      AEditDist.Enabled := ed;
    End
    else
    Begin
      ANewDist.Enabled  := false;
      AOpenDist.Enabled := false;
      AEditDist.Enabled := false;
    End;
    CUR_DIST_IND_ID      := NULL;
    CUR_DIST_DESCRIPTION := null;
    CUR_DIST_DATE        := null;

    tlb_serves.Enabled   := pr;
    ShowDistInd; // открываем данные
  end;
end;


//
//  Закрываем программу
//
procedure TDistFormF.AExitExecute(Sender: TObject);
begin
  if (MessageDlg('Закрыть программу?', mtConfirmation, [mbOk, mbNo], 0, mbOk) = mrOk) then
    Close;
end;


function TDistFormF.GetInvoices: string;
var res: string;
begin
  if (CUR_DIST_IND_ID = NULL) then
  begin
    result := '';
    exit;
  end;

  with DM.SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('select INV_ID from DISTRIBUTIONS_INVOICES where DIST_IND_ID=:p1');
      ParamByName('p1').AsInteger := CUR_DIST_IND_ID;
      Open;

      res := '';
      if (RecordCount > 0) then
      begin
        while not Eof do
        begin
          if (res = '') then
            res := FieldByName('INV_ID').AsString
          else
            res := res +', ' + FieldByName('INV_ID').AsString;
          Next;
        end;
      end;

      Close;
      result := res;
  End;
end;


function TDistFormF.GetOrders: string;
var res: string;
    ItemLink: TdxBarItemLink;
begin
  if (CUR_DIST_IND_ID = NULL) then
  begin
    result := '';
    exit;
  end;
  mnUnloadOrder.ItemLinks.Clear;
  with DM.SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('select order_id from distributions_orders where DIST_IND_ID=:p1');
      ParamByName('p1').AsInteger := CUR_DIST_IND_ID;
      Open;

      res := '';
      if (RecordCount > 0) then
      begin
        while not Eof do
        begin
            mnUnloadOrder.ItemLinks.BeginUpdate;
            ItemLink := mnUnloadOrder.ItemLinks.Add;
            ItemLink.Item := TdxBarButton.Create(mnUnloadOrder);
            ItemLink.Item.Caption := 'ID '+FieldByName('order_id').AsString;
            ItemLink.Item.Tag := FieldByName('order_id').AsInteger;
            ItemLink.Item.OnClick := UnloadOrderClick;
            ItemLink.BringToTopInRecentList(False);
            mnUnloadOrder.ItemLinks.EndUpdate;

          if (res = '') then
            res := FieldByName('order_id').AsString
          else
            res := res +', ' + FieldByName('order_id').AsString;
          Next;
        end;
      end;

      Close;
      result := res;
  End;

end;

//
//  Открываем данные
//
procedure TDistFormF.ShowDistInd();
var d1,d2: integer;
Begin

  if CUR_DIST_IND_ID <> null then
    Begin
      Label1.Caption       := 'Распределение: №'+ VarToStr(CUR_DIST_NUM) +' (ID'+VarToStr(CUR_DIST_IND_ID)+') от ' + DateToStr(VarToDateTime(CUR_DIST_DATE)) + '. Описание: ' + VarToStr(CUR_DIST_DESCRIPTION);
      Label6.Caption       := '№ инвойсов: '+GetInvoices;
      Label8.Caption       := '№ заказов: '+GetOrders;

      AChooseOrder.Enabled   := false; // Временно, пока не разберусь ed;
      ALoadInvoice.Enabled   := ed;
      ALoadOrder.Enabled     := ed;
      mnUnloadOrder.Enabled  := ed;
      ALoadStock.Enabled     := ed;
      mnLoadStockByGroup.Enabled := ed;
      AUnloadStock.Enabled   := ed;
      ADistDelete.Enabled    := del;
      ADistribute.Enabled    := ed;
      ADistOnePos.Enabled    := ed;
      ADistOnePosNew.Enabled := ed;
      aReplaceOrder.Enabled  := ed;
      mnAddToClient.Enabled  := ed;
      APutBack.Enabled       := ed;
      aQuickRaznos.Enabled   := ed;
      bbReserv.Enabled       := ed;
      bbCheckErrors.Enabled  := false; //ed;  Несколько заказов трудно проверять на ошибки

      aPrintOstatok.Enabled   := pr;
      aPrintOstatokByGroup.Enabled := pr;
      aPrintSellByGroup.Enabled    := pr;
      aPrintSellByGroupWP.Enabled  := pr;
      aPrintSell.Enabled      := pr;
      aPrint.Enabled          := pr;
      aPrintKubick.Enabled    := pr;
      aPrintKubick2.Enabled   := pr;
      aPrintKubick3.Enabled   := pr;
      bbClientOrders.Enabled  := pr;

      if inv_done then
      begin
        ADistDelete.Enabled    := false;
        ADistribute.Enabled    := false;
        AChooseOrder.Enabled   := false;
        ALoadInvoice.Enabled   := false;
        ALoadOrder.Enabled     := false;
        mnUnloadOrder.Enabled  := false;
      end;

      d1 := 0;
      d2 := 0;
      if DM.SelPrepDist.Active and not DM.SelPrepDist.IsEmpty then
      begin
        d1 := DM.SelPrepDistN_ID.AsInteger;
        d2 := DM.CDS_GOODSN_ID.AsInteger;
      end;

      if CUR_ID_ORDERS <> null then
      Begin
          label3.Caption := CUR_ID_ORDERS;

          ReactivateOraQuery(DM.CDS_GOODS);
          ReactivateOraQuery(dm.CDS_ORDER_NID);

          aClearFilter.Execute;

          gr_goods_v.DataController.Summary.Recalculate;

          if d2>0 then
             DM.CDS_GOODS.Locate('n_id',d2,[]);

          if (DM.CDS_GOODS.RecordCount > 0) then
          begin
            pb_main.Properties.Max := gr_goods_v.DataController.Summary.FooterSummaryValues[3];
            pb_main.Properties.Min := 0;
            pb_main.Position       := gr_goods_v.DataController.Summary.FooterSummaryValues[2];
            pb_main.Visible        := true;
          end;
      End
      else
      Begin
          DM.CDS_GOODS.Close;
      End;
      ReactivateOraQuery(DM.SelPrepDist);
      if d1>0 then
         DM.SelPrepDist.Locate('n_id',d1,[]);
    End
  else
    Begin
      Label6.Caption         := '№ инвойсов: ';
      Label1.Caption         := 'Распределение: ';
      AChooseOrder.Enabled   := false;
      ALoadInvoice.Enabled   := false;
      ALoadOrder.Enabled     := false;
      mnUnloadOrder.Enabled  := false;
      ALoadStock.Enabled     := false;
      mnLoadStockByGroup.Enabled := false;
      AUnloadStock.Enabled   := false;
      ADistDelete.Enabled    := false;
      ADistribute.Enabled    := false;
      ADistribute.Enabled    := false;
      ADistOnePos.Enabled    := false;
      ADistOnePosNew.Enabled := false;
      aReplaceOrder.Enabled  := false;
      mnAddToClient.Enabled  := false;
      bbReserv.Enabled       := false;

      aPrintOstatok.Enabled   := false;
      aPrintOstatokByGroup.Enabled := false;
      aPrintSellByGroup.Enabled    := false;
      aPrintSellByGroupWP.Enabled  := false;
      aPrintSell.Enabled      := false;
      aPrint.Enabled          := false;
      aPrintKubick.Enabled    := false;
      aPrintKubick2.Enabled   := false;
      aPrintKubick3.Enabled   := false;
      bbClientOrders.Enabled  := false;

      aQuickRaznos.Enabled    := false;

      DM.SelPrepDist.Close;
      dm.CDS_ORDER_NID.Close;
      DM.CDS_GOODS.Close;
      pb_main.Visible := false;
    End;

End;



//
//  Новое распределение 
//
procedure TDistFormF.ANewDistExecute(Sender: TObject);
var
  DistDate, DistComment, OrderID: Variant;
  InvIDs, tmpStr : string;
  i: integer;
begin

try
  DistDate    := Now;
  DistComment := null;

  if GetDistParams(DistDate, DistComment, OrderID, InvIDs) then
    Begin

      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin DISTRIBUTION_PKG.CREATE_DISTRIBUTION_INDEX(:IN_DIST_DATE, :IN_DIST_COMMENT, :IN_ID_DEPARTMENTS, :IN_DIST_ID); end;');
          ParamByName('IN_DIST_DATE').AsDate          := VarToDateTime(DistDate);
          ParamByName('IN_DIST_COMMENT').AsString     := VarToStr(DistComment);
          ParamByName('IN_ID_DEPARTMENTS').AsInteger  := VarToInt(CUR_DEPT_ID);
          ParamByName('IN_DIST_ID').AsInteger         := VarToInt(CUR_DIST_IND_ID);
          Execute;
          CUR_DIST_IND_ID      := ParamByName('IN_DIST_ID').Value;
          CUR_DIST_DESCRIPTION := DistComment;
          CUR_DIST_DATE        := DistDate;
          //CUR_ID_ORDERS        := null;
          CUR_ID_ORDERS        := OrderID;


          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('select nvl(s.outer_id, '+VarToStr(CUR_DIST_IND_ID)+') as distrib_seq from numeration_seq s where s.obj_id = '+VarToStr(CUR_DIST_IND_ID)+' and s.entity = ''distribution'' ');
            Open;
          End;
          CUR_DIST_NUM := DM.SelQ.Fields[0].AsString;

{ 2016-01-24 Теперь есть несколько заказов для одного распределения
          if VarToStr(OrderID) <> '' then
          Begin
            with DM.SelQ do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('begin DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
              ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
              ParamByName('IN_ID_ORDERS').AsInteger   := OrderID;
              Execute;
            End;
            ReactivateOraQuery(DM.SelPrepDist);
          End;
}
          // обработка заказов привязанных к распределению
          if Length(OrderID) > 0 then
          Begin
            while pos(',',OrderID) > 0 do
            begin
              i := pos(',',OrderID);
              tmpStr := copy(OrderID,0,i-1);
              OrderID := copy(OrderID,i+1,length(OrderID));

              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_ID_ORDERS').AsInteger   := StrToInt(tmpStr);
                Execute;
              End;
            end;

            if Length(OrderID) > 0 then
            begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_ID_ORDERS').AsInteger   := StrToInt(OrderID);
                Execute;
              End;
            end;
            ReactivateOraQuery(DM.SelPrepDist);
          end;


          // обработка инвойсов привязанных к распределению
          if Length(InvIDs) > 0 then
          Begin
            while pos(',',InvIDs) > 0 do
            begin
              i := pos(',',InvIDs);
              tmpStr := copy(InvIDs,0,i-1);
              InvIDs := copy(InvIDs,i+1,length(InvIDs));

              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.LOAD_INVOICE_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_INV_ID); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_INV_ID').AsInteger      := StrToInt(tmpStr);
                Execute;
              End;

            end;

            if Length(InvIDs) > 0 then
            begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.LOAD_INVOICE_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_INV_ID); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_INV_ID').AsInteger      := StrToInt(InvIDs);
                Execute;
              End;
            end;

            ReactivateOraQuery(DM.CDS_GOODS);
            ReactivateOraQuery(DM.CDS_ORDER_NID);
          End;

          ShowDistInd;
          N2Click(nil);
          MenuItem4Click(nil);

          if MessageBox(Handle,'Произвести автоматическое распределение сейчас?','Распределение',MB_YESNO) = IDYES then
            ADistribute.Execute;

        End;
    End;


except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
end;

end;


//
//  Редактировать распределение
//
procedure TDistFormF.AEditDistExecute(Sender: TObject);
var
  DistDate,DistComment,OrderID: Variant;
  InvID: String;
begin
if CUR_DIST_IND_ID > 0 then
begin
  try
    DistDate    := CUR_DIST_DATE;
    DistComment := CUR_DIST_DESCRIPTION;
    OrderID     := CUR_ID_ORDERS;
    if GetDistParams(DistDate,DistComment,OrderID, InvID) then
    Begin
      with DM.SelQ do
      Begin
        try
          Close;
          SQL.Clear;
          SQL.Add('begin creator.DISTRIBUTION_PKG.EDIT_DISTRIBUTION_INDEX(:IN_DIST_IND_ID, :IN_DIST_DATE, :IN_DIST_COMMENT); end;');
          ParamByName('IN_DIST_IND_ID').Value  := VarToInt(CUR_DIST_IND_ID);
          ParamByName('IN_DIST_DATE').AsDate   := VarToDateTime(DistDate);
          ParamByName('IN_DIST_COMMENT').Value := VarToStr(DistComment);
          Execute;
          CUR_DIST_DESCRIPTION := DistComment;
          CUR_DIST_DATE := DistDate;
          ShowDistInd;
        except on E: Exception do
          begin
              CUR_DIST_IND_ID := null;
              CUR_DIST_DESCRIPTION := null;
              CUR_DIST_DATE := null;
              CUR_ID_ORDERS := null;
              MessageBox(Handle, 'Произошла ошибка при редактировании!','Внимание',MB_ICONERROR);
          End;
        end;
      End;
    End;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end else MessageBox(Handle, 'Нет данных для редактирования', 'Внимание', MB_ICONWARNING);
end;


//
//  Открыть распределение
//
procedure TDistFormF.AOpenDistExecute(Sender: TObject);
var
  DistDate,DistComment,DistOrder,DistNum : Variant;
  result : Variant;
begin

  result := GetDistributionIndexID(DistDate,DistComment,DistOrder,DistNum);
  if result <> null then
    Begin
      CUR_DIST_IND_ID       := result;
      CUR_DIST_DATE         := DistDate;
      CUR_DIST_DESCRIPTION  := DistComment;
      CUR_ID_ORDERS         := DistOrder;
      CUR_DIST_NUM          := DistNum;
      ShowDistInd;
      N2Click(nil);
      MenuItem4Click(nil);
    End;

end;


//
//  Удаляем распределение
//
procedure TDistFormF.ADistDeleteExecute(Sender: TObject);
begin

  if (MessageDlg('Вы действительно хотите удалить запись?', mtConfirmation, [mbOk, mbNo], 0, mbOk) = mrOk) then
  begin

  try
    if CUR_DIST_IND_ID <> null then
    Begin
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin creator.DISTRIBUTION_PKG.DELETE_DISTRIBUTION_INDEX(:IN_DIST_IND_ID); end;');
          ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
          Execute;
        End;
      CUR_DIST_IND_ID       := null;
      CUR_DIST_DATE         := null;
      CUR_DIST_DESCRIPTION  := null;
      CUR_ID_ORDERS         := null;
      CUR_DIST_NUM          := null;

      ShowDistInd;
    End;

  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;

  end;
    
end;


//
//  Выбрать заказ
//
procedure TDistFormF.AChooseOrderExecute(Sender: TObject);
var
  ID_ORDERS : Variant;
begin

try

  ID_ORDERS := GetOrder();
  if ID_ORDERS > 0 then
  Begin
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin creator.DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
          ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
          ParamByName('IN_ID_ORDERS').AsInteger   := ID_ORDERS;
          Execute;
        End;
    CUR_ID_ORDERS := ID_ORDERS;

    ReactivateOraQuery(DM.CDS_GOODS);
    ReactivateOraQuery(DM.CDS_ORDER_NID);
  End;

except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
end;

end;


//
//  Загрузить сток
//
procedure TDistFormF.ALoadStockExecute(Sender: TObject);
begin
  try
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.LOAD_STOCK_TO_DISTRIBUTION(:IN_DIST_IND_ID, :id_ft_, :id_dep_); end;');
      ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
      ParamByName('id_ft_').AsInteger         := 0;
      ParamByName('id_dep_').AsInteger        := dept_compo.EditValue;
      Execute;
      ReactivateOraQuery(DM.SelPrepDist);
    End;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;


//
//  Выгрузить сток
//
procedure TDistFormF.aUnloadStockExecute(Sender: TObject);
begin
  try
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.UNLOAD_STOCK_FROM_DISTRIBUTION(:IN_DIST_IND_ID); end;');
      ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
      Execute;
      ReactivateOraQuery(DM.SelPrepDist);
    End;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;


//
//  Загрузить Инвойс
//
procedure TDistFormF.ALoadInvoiceExecute(Sender: TObject);
var InvIDs, tmpStr : string;
    i : integer;
begin

  try
    InvIDs := GetInvoice(true);

          if Length(InvIDs) > 0 then
          Begin
            while pos(',',InvIDs) > 0 do
            begin
              i := pos(',',InvIDs);
              tmpStr := copy(InvIDs,0,i-1);
              InvIDs := copy(InvIDs,i+1,length(InvIDs));

              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.LOAD_INVOICE_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_INV_ID); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_INV_ID').AsInteger      := StrToInt(tmpStr);
                Execute;
              End;

            end;

            if Length(InvIDs) > 0 then
            begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.LOAD_INVOICE_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_INV_ID); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_INV_ID').AsInteger      := StrToInt(InvIDs);
                Execute;
              End;
            end;
            ReactivateOraQuery(DM.SelPrepDist);
            Label6.Caption       := '№ инвойсов: '+GetInvoices;
          End;

  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;

end;


//
//  Загрузить заказ
//
procedure TDistFormF.aLoadOrderExecute(Sender: TObject);
var InvIDs, tmpStr : string;
    i : integer;
begin

  try
    InvIDs := GetInvoice(false);

          if Length(InvIDs) > 0 then
          Begin
            while pos(',',InvIDs) > 0 do
            begin
              i := pos(',',InvIDs);
              tmpStr := copy(InvIDs,0,i-1);
              InvIDs := copy(InvIDs,i+1,length(InvIDs));

              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_ID_ORDERS').AsInteger   := StrToInt(tmpStr);
                Execute;
              End;

            end;

            if Length(InvIDs) > 0 then
            begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin DISTRIBUTION_PKG.SET_ORDER_TO_DISTRIBUTION(:IN_DIST_IND_ID, :IN_ID_ORDERS); end;');
                ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
                ParamByName('IN_ID_ORDERS').AsInteger   := StrToInt(InvIDs);
                Execute;
              End;
            end;
            ReactivateOraQuery(DM.CDS_GOODS);
            ReactivateOraQuery(DM.CDS_ORDER_NID);
            Label8.Caption       := '№ заказов: '+GetOrders;
          End;

  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;


//
//  Выгрузить заказ
//
procedure TDistFormF.UnloadOrderClick(Sender: TObject);
var res: string;
begin
  if (MessageDlg(PChar('Вы действительно хотите удалить заказ №'+(IntToStr((Sender as TdxBarButton).Tag))+'?'), mtConfirmation, [mbOk, mbNo], 0, mbOk) <> mrOk) then exit;

  res := '';
  try
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin DISTRIBUTION_PKG.remove_order_from_distribution(:IN_DIST_IND_ID, :in_order_id, :res); end;');
      ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
      ParamByName('in_order_id').AsInteger    := (Sender as TdxBarButton).Tag;
      ParamByName('res').AsString             := res;
      Execute;
    End;
    if DM.SelQ.ParamByName('res').AsString <> '' then
       MessageBox(Handle, PChar(DM.SelQ.ParamByName('res').AsString), 'Внимание', MB_ICONWARNING)
    else
    begin
       ReactivateOraQuery(DM.CDS_GOODS);
       ReactivateOraQuery(DM.CDS_ORDER_NID);
       Label8.Caption       := '№ заказов: '+GetOrders;
    end;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;

end;




//
//  Выводим окно для выбора типа
//
procedure TDistFormF.aChoiseTypeExecute(Sender: TObject);
begin
  if (gr_PrepDist_v.DataController.DataSet.RecordCount > 0) and (gr_goods_v.DataController.DataSet.RecordCount > 0) then
  begin
    frm_choise_type := Tfrm_choise_type.Create(Application);
    try
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
      frm_choise_type.Q_FLOWER_TYPE.Open;
      if frm_choise_type.ShowModal = mrOk then
      begin
        gr_PrepDist_v.DataController.Filter.Clear;
        //gr_PrepDist_vNBUTTON.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPENBUTTON.AsString);
        gr_PrepDist_vF_TYPE.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
        gr_PrepDist_v.DataController.Filter.Active := True;
        gr_PrepDist_v.DataController.Groups.FullExpand;

        gr_goods_v.DataController.Filter.Clear;
        gr_goods_vF_TYPE.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
        //gr_goods_vNBUTTON.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPENBUTTON.AsString);
        gr_goods_v.DataController.Filter.Active := True;
        gr_goods_v.DataController.Groups.FullExpand;
      end;
    finally
      frm_choise_type.Free;
    end;
  end;
end;


//
//  Раскрашиваем грид со стоком и инвойсом
//
procedure TDistFormF.gr_PrepDist_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  qua, var1 : Variant;
begin

//  if not AViewInfo.Selected then
//  begin
    qua := gr_PrepDist_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_PrepDist_v.GetColumnByFieldName('LEFT_QUANTITY').Index
                );
    var1 := gr_PrepDist_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_PrepDist_v.GetColumnByFieldName('WHERE_FLOWER_IS').Index
                );

//    If qua > 0 then ACanvas.Brush.Color := TColor($00BBFFBB);
    If (var1 = 'сток') then
    begin
      ACanvas.Font.Style := cx_stock.Font.Style;
      ACanvas.Font.Color := cx_stock.TextColor;
    end;
    If (qua = 0) and (var1 = 'инвойс') then ACanvas.Brush.Color := cx_green.Color; // TColor($00A6A6FF);
    If qua < 0 then ACanvas.Brush.Color := cx_red.Color; // TColor($007DC5FF);

//  end;

end;


//
//  Красим грид со всем заказом
//
procedure TDistFormF.gr_goods_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var qua, qua2 : Variant;
begin

  if not AViewInfo.Selected then
  begin
    qua  := gr_goods_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_v.GetColumnByFieldName('DISTRIBUTED_NUMBER').Index
                );
    qua2 := gr_goods_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_v.GetColumnByFieldName('QUANTITY').Index
                );

    If ( qua = qua2 ) then ACanvas.Brush.Color := cx_ok.Color;
  end;

end;


//
//  Просмотр кто заказал цветок
//
procedure TDistFormF.gr_goods_vCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  N9Click(Sender);
  if gr_PrepDist_v.ViewData.RecordCount > 0 then
     gr_goods_info.SetFocus;
end;


//
// стоковые позиции
//
procedure TDistFormF.gr_goods_info_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var var1, var2 : Variant;
begin
    // Подкрасим если разнос из стока
    var1 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('is_stock').Index
                );

    If (var1 = 1) then
    begin
      ACanvas.Font.Style := cx_stock.Font.Style;
      ACanvas.Font.Color := cx_stock.TextColor;
    end;

    if (gr_goods_info_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') then
    begin
      var1 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('ID_CLIENTS').Index
                );

      If (var1 = CUR_CLIENT) then
      begin
        ACanvas.Font.Style := cxBold.Font.Style;
      end;
    end;


    // Подкрасим разнесенную позицию другим цветком
    if (gr_goods_info_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_OTDEL_ORD') then
    begin
      var1 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('N_ID').Index
                );
      var2 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('D_N_ID').Index
                );

      If (var1 <> var2) and (var2 <> null) then
      begin
        ACanvas.Brush.Color := stAlterRaznos.Color;
      end;
    end;

  if not AViewInfo.Selected then
  begin
    var1 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('PACK_').Index
                );
    if (var1 = 0) then ACanvas.Brush.Color := DM.stViewColor.Color;
  end;
end;


procedure TDistFormF.gr_goods_info_vEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := (DM.CDS_ORDER_NIDPACK_.AsInteger = 0);
end;

//
//  автораспределение
//
procedure TDistFormF.ADistributeExecute(Sender: TObject);
VAR RES_TEXT : Variant;
begin

try
  if (gr_PrepDist_v.DataController.DataSet.RecordCount > 0) and (gr_goods_v.DataController.DataSet.RecordCount > 0) then
  begin
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.PROCEED_AUTOMATIC_DISTRIBUTION(:IN_DIST_IND_ID, :OUT_TEXT, :inStok, :in_is_pack); end;');
      ParamByName('IN_DIST_IND_ID').AsInteger := VarToInt(CUR_DIST_IND_ID);
      ParamByName('OUT_TEXT').AsString        := VarToStr(RES_TEXT);
      ParamByName('inStok').AsInteger         := vSTOK;
      ParamByName('in_is_pack').AsInteger     := BoolToInt(chbIsPack.EditValue);
      Execute;
      RES_TEXT := ParamByName('OUT_TEXT').Value;

      ReactivateGoods(0,0);

      MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Результат', MB_ICONINFORMATION);

    End;
  end;
except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
end;

end;


//
// Обновляем данные
//
procedure TDistFormF.tlb_refreshClick(Sender: TObject);
begin
  ShowDistInd();
end;

// Разворачиваем списки
procedure TDistFormF.N2Click(Sender: TObject);
begin
  gr_PrepDist_v.DataController.Groups.FullExpand;
end;

// Сворачиваем списки
procedure TDistFormF.N3Click(Sender: TObject);
begin
  gr_PrepDist_v.DataController.Groups.FullCollapse;
end;


//  Разворачиваем списки во всех заказах
procedure TDistFormF.MenuItem4Click(Sender: TObject);
begin
  gr_goods_v.DataController.Groups.FullExpand;
end;

//  Сворачиваем списки во всех заказах
procedure TDistFormF.MenuItem5Click(Sender: TObject);
begin
  gr_goods_v.DataController.Groups.FullCollapse;
end;


//
//  Показываем неразнесенные позиции
//
procedure TDistFormF.N5Click(Sender: TObject);
var cds: TDataSet;
begin
  cds := gr_goods_v.DataController.DataSet;
  if (cds.Active = true) and (cds.RecordCount > 0) then
  begin
    cds.Filter   := 'DISTRIBUTED_NUMBER <> QUANTITY';
    cds.Filtered := true;
  end;
end;


//
//  Прыгаем по гридам
//
procedure TDistFormF.aTabExecute(Sender: TObject);
begin
  if (gr_PrepDist.IsFocused = true) then
    gr_goods.SetFocus
  else
    gr_PrepDist.SetFocus;
end;


procedure TDistFormF.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_PrepDist.Font.Size   := bc_fontsize.EditValue;
  gr_goods.Font.Size      := bc_fontsize.EditValue;
  gr_goods_info.Font.Size := bc_fontsize.EditValue;

  RegIni := TIniFile.Create(path);
  try
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;


procedure TDistFormF.chbIsPackPropertiesChange(Sender: TObject);
var RegIni : TIniFile;
begin
  path   := ExtractFilePath(Application.ExeName);
  path   := path+'ini/'+DM.StarSess.Username+'.ini';

  RegIni := TIniFile.Create(path);
  try
    RegIni.WriteBool('IsPack', 'Value', chbIsPack.EditValue);
    RegIni.WriteBool('IsPrintPack', 'Value', chbPrintPack.EditValue);
  finally
    RegIni.Free;
  end;
end;



//
//  Печать кубиков
//
procedure TDistFormF.aPrintKubickExecute(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

  dm.SelQ.Close;
  dm.SelQ.SQL.Clear;
  dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_kubik_print(:DIST_IND_ID_, :vMain, :CURSOR_); end;' );
  //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
  dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
  dm.SelQ.ParamByName('vMain').AsInteger        := vSTOK;
  dm.SelQ.ParamByName('CURSOR_').AsCursor;
  dm.SelQ.Open;

  if (dm.SelQ.Active = true) and (dm.SelQ.RecordCount > 0) then
  begin
    frxReport1.LoadFromFile(curdir + '/reps/Kubiki.fr3');
    frxReport1.ShowReport;
  end;

  dm.SelQ.Close;
end;

//
//  Печать кубиков + сток
//
procedure TDistFormF.aPrintKubick3Execute(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

  dm.SelQ.Close;
  dm.SelQ.SQL.Clear;
  dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_kubik_print(:DIST_IND_ID_, :vMain, :CURSOR_); end;' );
  //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
  dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
  dm.SelQ.ParamByName('vMain').AsInteger        := 0;
  dm.SelQ.ParamByName('CURSOR_').AsCursor;
  dm.SelQ.Open;

  if (dm.SelQ.Active = true) and (dm.SelQ.RecordCount > 0) then
  begin
    frxReport1.LoadFromFile(curdir + '/reps/Kubiki.fr3');
    frxReport1.ShowReport;
  end;

  dm.SelQ.Close;
end;

//
//  Печать кубиков 2 (после разноски)
//
procedure TDistFormF.aPrintKubick2Execute(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

  dm.SelQ.Close;
  dm.SelQ.SQL.Clear;
  dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_kubik_print2(:DIST_IND_ID_, :vMain, :CURSOR_); end;' );
  //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
  dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
  dm.SelQ.ParamByName('vMain').AsInteger        := vSTOK;
  dm.SelQ.ParamByName('CURSOR_').AsCursor;
  dm.SelQ.Open;

  if (dm.SelQ.Active = true) and (dm.SelQ.RecordCount > 0) then
  begin
    frxReport1.LoadFromFile(curdir + '/reps/Kubiki.fr3');
    frxReport1.ShowReport;
  end;

  dm.SelQ.Close;
end;


//
//  Настройка печати
//
procedure TDistFormF.tlb_servesClick(Sender: TObject);
begin
  frmPrintServes := TfrmPrintServes.Create(Application);
  try
    frmPrintServes.fst_view.ParamByName('P1').AsInteger := CUR_DEPT_ID;
    frmPrintServes.fst_view.Open;
    frmPrintServes.ShowModal;
//    frmPrintServes.fst_view.Close;
  finally
    frmPrintServes.Free;
  end;
end;



//
//  Печать неразнесенных позиций по группе
//
procedure TDistFormF.aPrintOstatokByGroupExecute(Sender: TObject);
begin
  DM.SelPrepDist.IndexFieldNames := 'hol_type;compiled_name_otdel';
  PrintItog('OstatokGroup');
  DM.SelPrepDist.IndexFieldNames := 'compiled_name_otdel';

end;

//
//  Печать неразнесенных позиций
//
procedure TDistFormF.aPrintOstatokExecute(Sender: TObject);
begin
  PrintItog('Ostatok');
end;

//
//  Печать неразнесенных позиций в форме свободки для клиентов по группам
//
procedure TDistFormF.aPrintSellByGroupExecute(Sender: TObject);
begin
  DM.SelPrepDist.IndexFieldNames := 'hol_type;compiled_name_otdel';
  PrintItog('OstatokFreeGroup');
  DM.SelPrepDist.IndexFieldNames := 'compiled_name_otdel';
end;

//
//  Печать неразнесенных позиций в форме свободки для клиентов по группам с ценой
//
procedure TDistFormF.aPrintSellByGroupWPExecute(Sender: TObject);
begin
  DM.SelPrepDist.IndexFieldNames := 'hol_type;compiled_name_otdel';
  PrintItog('OstatokFreeGroupWP');
  DM.SelPrepDist.IndexFieldNames := 'compiled_name_otdel';
end;

//
//  Печать неразнесенных позиций в форме свободки для клиентов
//
procedure TDistFormF.aPrintSellExecute(Sender: TObject);
begin
  PrintItog('OstatokFree');
end;


procedure TDistFormF.PrintItog(vReport: String);
var cds : TDataSet; //TOraQuery;
begin
  cds := gr_PrepDist_v.DataController.DataSet;

  cds.Filter   := 'WHERE_FLOWER_IS = ''инвойс'' and LEFT_QUANTITY > 0';
  cds.Filtered := true;

  if (cds.Active = true) and (cds.RecordCount > 0) then
  begin
    frxReport1.LoadFromFile(curdir + '/reps/'+vReport+'.fr3');
    frxReport1.Variables['inv_data']   := '''' + DM.SelDistrInd.FieldByName('dist_date').AsString + '''';
    frxReport1.Variables['order_data'] := ''; // '''' + DM.SelDistrInd.FieldByName('date_truck_out').AsString + '''';
    frxReport1.ShowReport;
  end;

  cds.Filter   := '';
  cds.Filtered := false;
end;


//
// На развертывание меню о распределении меняем доступы
//
procedure TDistFormF.tlb_raspredPopup(Sender: TObject);
begin
{
  if (CUR_DIST_IND_ID = NULL) then
    dxBarButton3.Enabled := false
  else
    dxBarButton3.Enabled := true;
}    
end;


//
//  обновляем таблицы с по товару
//
procedure TDistFormF.ReactivateGoods(N_ID_, CLIENT_ID_: integer);
var ind : integer;
begin
  ind := DM.SelPrepDist.FieldByName('n_id').asInteger;
  ReactivateOraQuery(DM.SelPrepDist);
  DM.SelPrepDist.Locate('N_ID',ind,[]);

  ReactivateOraQuery(DM.CDS_GOODS);
  DM.CDS_GOODS.Locate('N_ID',N_ID_,[]);

  ind := DM.CDS_ORDER_NID.FieldByName('ID_CLIENTS').asInteger;
  ReactivateOraQuery(DM.CDS_ORDER_NID);
  DM.CDS_ORDER_NID.Locate('ID_CLIENTS',ind,[]);

  pb_main.Properties.Max := gr_goods_v.DataController.Summary.FooterSummaryValues[3];
  pb_main.Properties.Min := 0;
  pb_main.Position := gr_goods_v.DataController.Summary.FooterSummaryValues[2];
end;


//
// Разнесенная позиция
//
procedure TDistFormF.ginfo_QUANTITYCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var var1, var2 : Variant;
begin

    var1 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('QUANTITY').Index
                );
    var2 := gr_goods_info_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_goods_info_v.GetColumnByFieldName('DQ').Index
                );

    If (var1 = var2) then
      ACanvas.Brush.Color := cx_ok.Color;

    If (var1 < var2) then
      ACanvas.Brush.Color := cx_red.Color;

end;


//
//  Находим товар
//
procedure TDistFormF.N9Click(Sender: TObject);
begin
  gr_PrepDist_v.DataController.Filter.Clear;
  gr_PrepDist_vF_NAME_RU.DataBinding.AddToFilter(nil, foEqual, gr_goods_v.DataController.DataSet.FieldByName('F_NAME_RU').AsString);
  gr_PrepDist_v.DataController.Filter.Active := true;

  if ( gr_PrepDist_v.ViewData.RowCount > 0) then
  begin
    gr_PrepDist_v.DataController.Groups.FullExpand;
    gr_PrepDist.SetFocus;
  end
  else
    gr_goods.SetFocus;
end;


//
//  Постим данные на ENTER
//
procedure TDistFormF.gr_goods_info_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (gr_goods_info_v.DataController.DataSet.State = dsEdit)  then
     gr_goods_info_v.DataController.DataSet.Post;

  if (Key = VK_ESCAPE) then
  begin
    aClearFilter.Execute;
    gr_goods.SetFocus;
  end;
end;


















//
//  Забираем товар
//
procedure TDistFormF.APutBackExecute(Sender: TObject);
begin
  if gr_goods.IsFocused      = true then aDelGoods.Execute;
  if gr_goods_info.IsFocused = true then aDelGoodsInfo.Execute;
end;


//
// Убираем товар из подробного списка по товарам
//
procedure TDistFormF.aDelGoodsInfoExecute(Sender: TObject);
var
  CLIENT_ID_ : Variant;
  cds: TDataSet;
begin

  cds := gr_goods_info_v.DataController.DataSet;

  if (cds.Active = true) and (cds.RecordCount > 0) and (cds.FieldByName('DIST_ID').IsNull = false) and (cds.FieldByName('DQ').AsInteger > 0) then
  begin
    CLIENT_ID_ := cds.FieldByName('ID_ORDERS_LIST').Value;
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.DELETE_DIST_LINE(:IN_DIST_ID); end;');
      ParamByName('IN_DIST_ID').AsInteger := cds.FieldByName('DIST_ID').Value;
      Execute;

      ReactivateGoods(DM.CDS_GOODS.FieldByName('N_ID').AsInteger, CLIENT_ID_);
    End;
  end;

end;


//
// Убираем товар из списка по товарам
//
procedure TDistFormF.aDelGoodsExecute(Sender: TObject);
var
  N_ID_ : Variant;
  cds: TDataSet;
begin

  cds := gr_goods_v.DataController.DataSet;

  if (cds.Active = true) and (cds.RecordCount > 0) and (cds.FieldByName('DISTRIBUTED_NUMBER').AsInteger > 0) then
  begin
    N_ID_ := cds.FieldByName('N_ID').Value;
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.DELETE_DIST_LINE_NID(:IN_DIST_ID, :N_ID_); end;');
      ParamByName('IN_DIST_ID').AsInteger := CUR_DIST_IND_ID;
      ParamByName('N_ID_').AsInteger      := N_ID_;
      Execute;

      ReactivateGoods(N_ID_, DM.CDS_ORDER_NID.FieldByName('ID_CLIENTS').AsInteger);
    End;
  end;

end;


// Очищаем фильр
procedure TDistFormF.aClearFilterExecute(Sender: TObject);
begin
  gr_PrepDist_v.DataController.Filter.Clear;
  gr_PrepDist_v.DataController.DataSet.Filtered := false;
  gr_PrepDist_v.DataController.DataSet.Filter   := '';

  gr_goods_v.DataController.Filter.Clear;
  gr_goods_v.DataController.DataSet.Filtered := false;
  gr_goods_v.DataController.DataSet.Filter   := '';

  gr_goods_info_v.DataController.Filter.Clear;
  gr_goods_info_v.DataController.DataSet.Filtered := false;
  gr_goods_info_v.DataController.DataSet.Filter   := '';
end;




















//
//  Кладем по цветку
//
procedure TDistFormF.PutByNID();
var
  RES, RES_TEXT : Variant;
  QUA, QUA2, QUA_SET : Integer;
  cds_good, cds, cds_source: TDataSet;
  param_ : integer;
begin

  cds        := gr_goods_v.DataController.DataSet;
  cds_source := gr_PrepDist_v.DataController.DataSet;

  try

  if (cds_source.Active = true) and (cds_source.RecordCount > 0) and (cds_source.FieldByName('LEFT_QUANTITY').AsInteger > 0)
     and (cds.Active = true) and (cds.RecordCount > 0)  then
  begin
    param_ := 1;

    if (cds.FieldByName('QUANTITY').AsInteger = cds.FieldByName('DISTRIBUTED_NUMBER').AsInteger) then
       MessageBox(Handle, 'Позиция уже разнесена', 'Внимание', MB_ICONINFORMATION)
    else
    begin
{2012-08-22 Если понадобиться разнести в другую позицию
      if (not cds.Locate('n_id', cds_source.FieldByName('n_id').AsInteger, []) ) then
      begin
         param_ := 1;
{2012-08-22 ЕВ попросила убрать все сообщения
         param_ := 0;
         if MessageBox(Handle, 'Вы разносите позицию которой нет в заказе. Продолжить?', 'Внимание', MB_YESNO ) = IDYES then param_ := 1;
}
//      end;

      if (param_ = 1) then
      begin

        cds_good := gr_goods_info_v.DataController.DataSet;
        QUA2 := cds_source.FieldByName('LEFT_QUANTITY').AsInteger;

        if chbRaznos.EditValue = true then
        begin
          cds_good.First;
          while not cds_good.Eof do
          begin
            // Если есть что еще разносить клиенту
            //if (cds_good.FieldByName('QUANTITY').AsInteger > cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger) then
            if (cds_good.FieldByName('QUANTITY').AsInteger > cds_good.FieldByName('DQ').AsInteger) and (cds_good.FieldByName('pack_').AsInteger = 0) then
            begin
                with DM.SelQ do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_DISTRIBUTION_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :in_is_pack); end;');
                  ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                  ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds_good.FieldByName('ID_ORDERS_LIST').Value;
                  ParamByName('in_is_pack').AsInteger         := BoolToInt(chbIsPack.EditValue);
                  Execute;
                End;
{ 2014-01-07
              QUA := cds_good.FieldByName('QUANTITY').AsInteger - cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger;
              if (QUA2 < QUA) then
                QUA_SET := QUA2
              else
                QUA_SET := QUA;

              if (QUA_SET > 0) then
              begin
                with DM.SelQ do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
                  ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                  ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds_good.FieldByName('ID_ORDERS_LIST').Value;
                  ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
                  ParamByName('OUT_RES').AsString             := RES;
                  ParamByName('OUT_TEXT').AsString            := RES_TEXT;
                  Execute;
                  RES := ParamByName('OUT_RES').Value;
                  RES_TEXT := ParamByName('OUT_TEXT').Value;
                  if VarToInt(RES) < 0 then
                     MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);

                  QUA2 := QUA2 - QUA_SET;
                End;
              end; // if (QUA_SET > 0) then
}
            end;  // Если есть что еще разносить клиенту
            cds_good.Next;
          end;
        end
        else
        begin
            // Если есть что еще разносить клиенту
            if (cds_good.FieldByName('QUANTITY').AsInteger > cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger) and (cds_good.FieldByName('pack_').AsInteger = 0) then
            begin
                with DM.SelQ do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_DISTRIBUTION_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :in_is_pack); end;');
                  ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                  ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds_good.FieldByName('ID_ORDERS_LIST').Value;
                  ParamByName('in_is_pack').AsInteger         := BoolToInt(chbIsPack.EditValue);
                  Execute;
                End;
{ 2014-01-07
              QUA := cds_good.FieldByName('QUANTITY').AsInteger - cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger;
              if (QUA2 < QUA) then
                QUA_SET := QUA2
              else
                QUA_SET := QUA;

              if (QUA_SET > 0) then
              begin
                with DM.SelQ do
                Begin
                  Close;
                  SQL.Clear;
                  SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
                  ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                  ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds_good.FieldByName('ID_ORDERS_LIST').Value;
                  ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
                  ParamByName('OUT_RES').AsString             := RES;
                  ParamByName('OUT_TEXT').AsString            := RES_TEXT;
                  Execute;
                  RES := ParamByName('OUT_RES').Value;
                  RES_TEXT := ParamByName('OUT_TEXT').Value;
                  if VarToInt(RES) < 0 then
                     MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);

                  QUA2 := QUA2 - QUA_SET;
                End;
              end; // if (QUA_SET > 0) then
}
            end;  // Если есть что еще разносить клиенту
        end;




        ReactivateGoods(cds.FieldByName('N_ID').AsInteger, DM.CDS_ORDER_NID.FieldByName('ID_ORDERS_LIST').AsInteger);

      end else MessageBox(Handle, 'Проверте наличие количества', 'Внимание', MB_ICONINFORMATION);
    end;
  end;

  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;

end;




//
//  Кладем по клиенту
//
procedure TDistFormF.PutByOrder(cds: TDataSet);
var
  RES, RES_TEXT : Variant;
  QUA, QUA2 : Integer;
  cds_source: TDataSet;
  param_ : integer;
  var1, var2: String;
begin

  cds_source := gr_PrepDist_v.DataController.DataSet;

  try

  if (cds_source.Active = true) and (cds_source.RecordCount > 0) and (cds_source.FieldByName('LEFT_QUANTITY').AsInteger > 0)
     and (cds.Active = true) and (cds.RecordCount > 0) then
  begin
    param_ := 1;

    if (cds.FieldByName('QUANTITY').AsInteger = cds.FieldByName('DISTRIBUTED_NUMBER').AsInteger) then
       MessageBox(Handle, 'Позиция уже разнесена', 'Внимание', MB_ICONINFORMATION)
    else
    begin

      if ( cds.FieldByName('n_id').AsInteger <> cds_source.FieldByName('n_id').AsInteger ) then
      begin
         param_ := 0;
         if MessageBox(Handle, 'Вы разносите позицию которой нет в заказе. Продолжить?', 'Внимание', MB_YESNO ) = IDYES then param_ := 1;
      end;

      if (param_ = 1) then
      begin

        QUA := cds.FieldByName('QUANTITY').AsInteger - cds.FieldByName('DISTRIBUTED_NUMBER').AsInteger;

        if (QUA > 0) then
        begin
          QUA2 := cds_source.FieldByName('LEFT_QUANTITY').AsInteger;

          var2 := IntToStr(QUA2);
          var1 := IntToStr(QUA);
          if (QUA2 < QUA) then
          begin
            if (InputQuery('Ввод кол-ва','Введите количество',var2) = false)
            then exit;
          end
          else
          begin
            if (InputQuery('Ввод кол-ва','Введите количество',var1) = false)
            then exit;
          end;
          QUA2 := StrToInt(var2);
          QUA  := StrToInt(var1);

          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
            ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
            ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds.FieldByName('ID_ORDERS_LIST').Value;
            ParamByName('IN_QUANTITY').AsInteger        := QUA;
            ParamByName('OUT_RES').AsString             := RES;
            ParamByName('OUT_TEXT').AsString            := RES_TEXT;
            Execute;
            RES := ParamByName('OUT_RES').Value;
            RES_TEXT := ParamByName('OUT_TEXT').Value;
            if VarToInt(RES) < 0 then
               MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);
          End;

          ReactivateGoods(cds_source.FieldByName('N_ID').AsInteger, cds.FieldByName('ID_ORDERS_LIST').AsInteger);
        end;   // if (QUA > 0) then

      end; // if (param_ = 1) then
    end;

  end else MessageBox(Handle, 'Проверте наличие количества', 'Внимание', MB_ICONINFORMATION);

except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
end;

end;


//
//  Кладем товар
//
procedure TDistFormF.ADistOnePosExecute(Sender: TObject);
begin
  // кладем по цветку
  if pc_type_invoice.ActivePageIndex = 0 then
    PutByNID();
end;


procedure TDistFormF.aDistOnePosNewExecute(Sender: TObject);
begin
  // кладем новый товар в заказ
  if pc_type_invoice.ActivePageIndex = 0 then
    PutByNIDnew(0);
end;


procedure TDistFormF.aReplaceOrderExecute(Sender: TObject);
begin
  // кладем товар из стока в заказ
  if pc_type_invoice.ActivePageIndex = 0 then
    PutByNIDnew(1);
end;


//
//  Кладем по цветку
//
procedure TDistFormF.PutByNIDnew(vReplace: integer);
var
  RES, RES_TEXT : Variant;
  QUA, QUA2, QUA_SET, id_or_cl, leftQ, distId, destClient, C_ID_ORDERS : Integer;
  cds_good, cds, cds_source: TDataSet;
begin

  cds        := gr_goods_v.DataController.DataSet;
  cds_source := gr_PrepDist_v.DataController.DataSet;
  if gr_goods_info_v.DataController.DataSet.Active and (gr_goods_info_v.DataController.DataSet.RecordCount > 0) then
    destClient := _ginfo_ID_CLIENTS.EditValue
  else
    destClient := 0;

  leftQ := 0;
  distId := 0;

  try

    if (not cds_source.Active) and (cds_source.IsEmpty) and (not cds.Active) then exit;

    // перенесем сток
    if (vReplace = 1) and (cds_source.FieldByName('WHERE_FLOWER_IS').AsString = 'инвойс' ) then
    begin
      with DM.SelQ do
      Begin
        Close;
        SQL.Clear;
        Params.Clear;
        SQL.Add('select a.quantity, a.id_orders_list, a.dist_id from distributions a, orders_list b, orders_clients c');
        SQL.Add('where a.PREP_DIST_ID=:p1 and a.id_orders_list=b.id_orders_list and b.id_orders_clients=c.id_orders_clients and c.id_clients=:p2');
        ParamByName('p1').AsInteger  := gr_PrepDist_vPREP_DIST_ID.EditValue;
        ParamByName('p2').AsInteger  := vSTOK;
        Open;
        if RecordCount=0 then
        begin
          Application.MessageBox('Нет позиции в стоке','Внимание',MB_ICONWARNING);
          exit;
        end;

        leftQ  := FieldByName('quantity').AsInteger;
        distId := FieldByName('dist_id').AsInteger;
      End;
    end;

//    if (not cds_source.Active) and (cds_source.IsEmpty) and (cds_source.FieldByName('LEFT_QUANTITY').AsInteger = 0)
//       and (not cds.Active) then exit;

    if ((cds_source.FieldByName('LEFT_QUANTITY').AsInteger = 0) and (vReplace = 0))
    or ( (vReplace = 1) and (DM.SelQ.RecordCount = 0) )
    then exit;

      // 2016-06-23 Т.к. много заказов может быть, до добавим новую строчку в первый же заказ по списку
        if Pos( ',', VarToStr(CUR_ID_ORDERS) ) > 0 then
          C_ID_ORDERS := StrToInt( Copy( VarToStr(CUR_ID_ORDERS), 0, Pos( ',', VarToStr(CUR_ID_ORDERS) )-1 ) )
        else
          C_ID_ORDERS := CUR_ID_ORDERS;
      //

    id_or_cl := NewOrder(C_ID_ORDERS,cds_source.FieldByName('N_ID').AsInteger, cds_source.FieldByName('LEFT_QUANTITY').AsInteger+leftQ, destClient);

    if id_or_cl > 0 then
    begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                Params.Clear;
                SQL.Add('SELECT QUANTITY as nn FROM ORDERS_LIST where ID_ORDERS_LIST='+IntToStr(id_or_cl));
                Open;
                QUA_SET := FieldByName('nn').AsInteger;



                if (vReplace = 1) then
                begin
                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Add('update distributions set QUANTITY=QUANTITY-'+IntToStr(QUA_SET)+' where DIST_ID='+IntToStr(distId));
                  execute;

                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Add('update prepare_distribution set LEFT_QUANTITY=LEFT_QUANTITY+'+IntToStr(QUA_SET)+', TOTAL_QUANTITY=TOTAL_QUANTITY+'+IntToStr(QUA_SET)+' where PREP_DIST_ID='+VarToStr(gr_PrepDist_vPREP_DIST_ID.EditValue));
                  execute;
                end;


                Close;
                SQL.Clear;
                Params.Clear;
                SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
                ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                ParamByName('IN_ID_ORDERS_LIST').AsInteger  := id_or_cl;
                ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
                ParamByName('OUT_RES').AsString             := RES;
                ParamByName('OUT_TEXT').AsString            := RES_TEXT;
                Execute;
                RES      := ParamByName('OUT_RES').Value;
                RES_TEXT := ParamByName('OUT_TEXT').Value;
                if VarToInt(RES) < 0 then
                   MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);
              End;
              ReactivateGoods(cds.FieldByName('N_ID').AsInteger, DM.CDS_ORDER_NID.FieldByName('ID_ORDERS_LIST').AsInteger);
    end;

{
    cds_good := gr_goods_info_v.DataController.DataSet;
    cds_good.First;
    QUA2 := cds_source.FieldByName('LEFT_QUANTITY').AsInteger;

    while not cds_good.Eof do
    begin

          // Если есть что еще разносить клиенту
          if (cds_good.FieldByName('QUANTITY').AsInteger > cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger) then
          begin
            QUA := cds_good.FieldByName('QUANTITY').AsInteger - cds_good.FieldByName('DISTRIBUTED_NUMBER').AsInteger;
            if (QUA2 < QUA) then
              QUA_SET := QUA2
            else
              QUA_SET := QUA;

            if (QUA_SET > 0) then
            begin

              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
                ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                ParamByName('IN_ID_ORDERS_LIST').AsInteger  := cds_good.FieldByName('ID_ORDERS_LIST').Value;
                ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
                ParamByName('OUT_RES').AsString             := RES;
                ParamByName('OUT_TEXT').AsString            := RES_TEXT;
                Execute;
                RES := ParamByName('OUT_RES').Value;
                RES_TEXT := ParamByName('OUT_TEXT').Value;
                if VarToInt(RES) < 0 then
                   MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);

                QUA2 := QUA2 - QUA_SET;
              End;
            end; // if (QUA_SET > 0) then
          end;  // Если есть что еще разносить клиенту

          cds_good.Next;
        end;
        ReactivateGoods(cds.FieldByName('N_ID').AsInteger, DM.CDS_ORDER_NID.FieldByName('ID_ORDERS_LIST').AsInteger);

}
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;

end;






procedure TDistFormF.aDelListInfoExecute(Sender: TObject);
var
  CLIENT_ID_ : Variant;
  cds: TDataSet;
begin
{
  cds := gr_cl_order_v.DataController.DataSet;

  if (cds.Active = true) and (cds.RecordCount > 0) and (cds.FieldByName('DIST_ID').IsNull = false) and (cds.FieldByName('DISTRIBUTED_NUMBER').AsInteger > 0) then
  begin
    CLIENT_ID_ := cds.FieldByName('ID_ORDERS_LIST').Value;
    with DM.StorProc do
    Begin
      StoredProcName := 'creator.DISTRIBUTION_PKG.DELETE_DIST_LINE';
//      Prepare;
      ParamByName('IN_DIST_ID').Value := cds.FieldByName('DIST_ID').Value;
      Execute;

      ReactivateGoods(DM.CDS_GOODS.FieldByName('N_ID').AsInteger, CLIENT_ID_);
    End;
  end;
}
end;



// Добавить клиентскую позицию
procedure TDistFormF.ppgi_add_client_orderClick(Sender: TObject);
var id_or_cl, leftQ, distId, destClient, QUA_SET, C_ID_ORDERS : Integer;
    cds_good, cds, cds_source: TDataSet;
    RES, RES_TEXT : Variant;
begin
  destClient := 0;
  leftQ  := 0;
  distId := 0;

  cds        := gr_goods_v.DataController.DataSet;
  cds_source := gr_PrepDist_v.DataController.DataSet;

  gr_PrepDist_v.DataController.Filter.Clear;
  gr_PrepDist_vF_NAME_RU.DataBinding.AddToFilter(nil, foEqual, gr_goods_v.DataController.DataSet.FieldByName('F_NAME_RU').AsString);
  gr_PrepDist_v.DataController.Filter.Active := true;

  if ( gr_PrepDist_v.ViewData.RowCount > 0) then
  begin

      // 2016-06-23 Т.к. много заказов может быть, до добавим новую строчку в первый же заказ по списку
        if Pos( ',', VarToStr(CUR_ID_ORDERS) ) > 0 then
          C_ID_ORDERS := StrToInt( Copy( VarToStr(CUR_ID_ORDERS), 0, Pos( ',', VarToStr(CUR_ID_ORDERS) )-1 ) )
        else
          C_ID_ORDERS := CUR_ID_ORDERS;
      //

    id_or_cl := NewOrder(C_ID_ORDERS, cds_source.FieldByName('N_ID').AsInteger, cds_source.FieldByName('LEFT_QUANTITY').AsInteger+leftQ, destClient);

    if id_or_cl > 0 then
    begin
              with DM.SelQ do
              Begin
                Close;
                SQL.Clear;
                Params.Clear;
                SQL.Add('SELECT QUANTITY as nn FROM ORDERS_LIST where ID_ORDERS_LIST='+IntToStr(id_or_cl));
                Open;
                QUA_SET := FieldByName('nn').AsInteger;

                Close;
                SQL.Clear;
                Params.Clear;
                SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
                ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
                ParamByName('IN_ID_ORDERS_LIST').AsInteger  := id_or_cl;
                ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
                ParamByName('OUT_RES').AsString             := RES;
                ParamByName('OUT_TEXT').AsString            := RES_TEXT;
                Execute;
                RES      := ParamByName('OUT_RES').Value;
                RES_TEXT := ParamByName('OUT_TEXT').Value;
                if VarToInt(RES) < 0 then
                   MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);
              End;
              ReactivateGoods(cds.FieldByName('N_ID').AsInteger, DM.CDS_ORDER_NID.FieldByName('ID_ORDERS_LIST').AsInteger);
    end;
  end;
end;


// Удалить клиентскую позицию
procedure TDistFormF.aDelOrderExecute(Sender: TObject);
var id_or_cl, id_goods, v_id_dist: integer;
begin
  if (not DM.CDS_ORDER_NID.Active) and (DM.CDS_ORDER_NID.IsEmpty) then exit;

{ 2015-07-10 Нельзя удалять позицию в заказе. Только в разносе. А эта функция уже есть на F4
  id_or_cl := DM.CDS_ORDER_NIDID_ORDERS_LIST.AsInteger;
  id_goods := DM.CDS_GOODS.FieldByName('N_ID').AsInteger;
  v_id_dist := VarToInt(gr_goods_info_vDIST_ID.EditValue);

  if (v_id_dist > 0) then
  begin
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.DELETE_DIST_LINE(:IN_DIST_ID); end;');
      ParamByName('IN_DIST_ID').AsInteger := v_id_dist;
      Execute;
      //ReactivateGoods(DM.CDS_GOODS.FieldByName('N_ID').AsInteger, CLIENT_ID_);
    End;
  end;

  with DM.SelQ do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('delete from orders_list where id_orders_list='+IntToStr(id_or_cl));
    Execute;
  End;

  ReactivateGoods(id_goods, 0);
}
end;



procedure TDistFormF.gr_goods_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    N9Click(Sender);
    if gr_PrepDist_v.ViewData.RecordCount > 0 then
      gr_goods_info.SetFocus;
  end;
end;


//
//  Общая печать
//
procedure TDistFormF.aPrintExecute(Sender: TObject);
var tmpStr :string;
    i: integer;
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

    frm_choise_type := Tfrm_choise_type.Create(Application);
    try
      tmpStr := '';
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
      frm_choise_type.Q_FLOWER_TYPE.Open;
      frm_choise_type.Panel2.Visible := false;
      frm_choise_type.pnlPrint.Visible := true;

      // Добавим выпадающий список из поставщиков в разносе для возможности фильтрации печати
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT a.s_id, a.s_name_ru FROM suppliers a, orders o, distributions_orders d where a.s_id = o.s_id and o.id_orders = d.order_id and d.dist_ind_id = '+VarToStr(CUR_DIST_IND_ID));
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, frm_choise_type.cbSuppliers, 'Все');
      frm_choise_type.cbSuppliers.EditValue := 0;
      DM.SelQ.Close;
      // -----------------------------------------------------------------------

      if frm_choise_type.ShowModal = mrOk then
      begin
        if not frm_choise_type.chbAllTypes.Checked then
        begin
          for I := 0 to frm_choise_type.grid_ucView.Controller.SelectedRowCount - 1 do
          begin
            tmpStr := tmpStr + VarToStr(frm_choise_type.grid_ucView.Controller.SelectedRows[i].Values[frm_choise_type.grid_ucViewFT_ID.Index])+',';
          end;
          if Length(tmpStr)>0 then tmpStr := copy(tmpStr,1,Length(tmpStr)-1);
        end;
        //  Печатаем клиент-товар
        if frm_choise_type.pnlPrint.Tag = 1 then
        begin
          dm.SelQ.Close;
          dm.SelQ.SQL.Clear;
          dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_print_p1(:DIST_IND_ID_, :vFT_ID, :vMain, :vSupplier, :CURSOR_); end;' );
          //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
          dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
          dm.SelQ.ParamByName('vFT_ID').AsString        := tmpStr;
          dm.SelQ.ParamByName('vMain').AsInteger        := vSTOK;
          dm.SelQ.ParamByName('vSupplier').AsInteger    := frm_choise_type.cbSuppliers.EditValue;
          dm.SelQ.ParamByName('CURSOR_').AsCursor;
          dm.SelQ.Open;

          if chbPrintPack.EditValue = false then
          begin
            dm.SelQ.Filter := 'pack_=0';
            dm.SelQ.Filtered := true;
          end;

          frxReport1.LoadFromFile(curdir + '/reps/ClientTovar.fr3');
          frxReport1.ShowReport;
        end;
        //  Печатаем товар-клиент
        if frm_choise_type.pnlPrint.Tag = 2 then
        begin
          dm.SelQ.Close;
          dm.SelQ.SQL.Clear;
          dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_print_p2(:DIST_IND_ID_, :vFT_ID, :vMain, :vSupplier, :CURSOR_); end;' );
          //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
          dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
          dm.SelQ.ParamByName('vFT_ID').AsString        := tmpStr;
          dm.SelQ.ParamByName('vMain').AsInteger        := vSTOK;
          dm.SelQ.ParamByName('vSupplier').AsInteger    := frm_choise_type.cbSuppliers.EditValue;
          dm.SelQ.ParamByName('CURSOR_').AsCursor;
          dm.SelQ.Open;

          if chbPrintPack.EditValue = false then
          begin
            dm.SelQ.Filter := 'pack_=0';
            dm.SelQ.Filtered := true;
          end;

          frxReport1.LoadFromFile(curdir + '/reps/TovarClient.fr3');
          frxReport1.ShowReport;
        end;
      end;
    finally
      dm.SelQ.Close;
      dm.SelQ.Filter := '';
      dm.SelQ.Filtered := false;
      dm.SelQ.Params.Clear;
      frm_choise_type.Free;
    end;
end;


// Заказы клиентов
procedure TDistFormF.bbClientOrdersClick(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

  try
    cdsClientsStatItem.Filter := '';
    cdsClientsStatItem.Filtered := false;
    cdsClientsStatItem.Close;
    cdsClientsStatItem.ParamByName('vDistIndId').AsInteger := CUR_DIST_IND_ID;
//    cdsClientsStatItem.ParamByName('vIdOrders').AsInteger  := CUR_ID_ORDERS;
    cdsClientsStatItem.Open;

    if not chbPrintZero.EditValue then
    begin
      cdsClientsStatItem.Filter := 'DQ>0';
      cdsClientsStatItem.Filtered := true;
    end;

    frxReport1.LoadFromFile(curdir+'/reps/order_client_list_s.fr3');
    frxReport1.Variables['order_number']   := '''' + VarToStr(CUR_ID_ORDERS) + '''';
    frxReport1.ShowReport;
    cdsClientsStatItem.Close;
{
     dm.SelQ.Close;
     dm.SelQ.SQL.Clear;
     dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_print_client(:ID_ORDER_, :DIST_IND_ID_, :CURSOR_); end;' );
     dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
     dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
     dm.SelQ.ParamByName('CURSOR_').AsCursor;
     dm.SelQ.Open;

     frxReport1.LoadFromFile(curdir + '/reps/ClientsPrint.fr3');
     frxReport1.ShowReport;
     dm.SelQ.Close;
     dm.SelQ.Params.Clear;
}
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;


// Создаем брони на каждого клиента
procedure TDistFormF.bbReservClick(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

  try
     dm.SelQ.Close;
     dm.SelQ.SQL.Clear;
     dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.make_reserv(:ID_ORDER_, :DIST_IND_ID_, :vMain); end;' );
     //dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := CUR_ID_ORDERS;
     dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := 0;       // 2016-06-23 Рудимент. В процедуре все заказы ищутся от разноса
     dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := CUR_DIST_IND_ID;
     dm.SelQ.ParamByName('vMain').AsInteger        := vSTOK;
     dm.SelQ.Execute;
     dm.SelQ.Params.Clear;
     Application.MessageBox('Бронирования сформированы. Скорректировать и создать накладную можно из программы "Продажи"', 'Информация', MB_ICONINFORMATION);
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;

// Показ клиентов  в заказе
procedure TDistFormF.aShowClientStatExecute(Sender: TObject);
var result : Variant;
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;
  result := GetDistrStat( CUR_DIST_IND_ID, CUR_ID_ORDERS, chbPrintZero.EditValue );
end;


// Показ информации по разносу
procedure TDistFormF.aShowRaznosExecute(Sender: TObject);
var result : Variant;
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;
  if not DM.CDS_GOODS.Active or DM.CDS_GOODS.IsEmpty then exit;

  result := GetRaznosInfo(
    CUR_DIST_IND_ID,
    DM.SelPrepDistN_ID.AsInteger,
    DM.SelPrepDistPREP_DIST_ID.AsInteger,
    'Всего/остаток/заказ/сток: '+DM.SelPrepDistTOTAL_QUANTITY.AsString+'/'+DM.SelPrepDistLEFT_QUANTITY.AsString+'/'+DM.SelPrepDistALLORDER.AsString+'/'+DM.SelPrepDistSTOCK.AsString
  );
end;


// Быстрый разнос вручную
procedure TDistFormF.aQuickRaznosExecute(Sender: TObject);
var result : Variant;
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;
  if not DM.CDS_GOODS.Active or DM.CDS_GOODS.IsEmpty then exit;

  if gr_goods_v.DataController.DataSet.Locate('N_ID',DM.SelPrepDistN_ID.AsInteger,[]) then
  begin
    result := GetQuickRaznos(CUR_DIST_IND_ID,CUR_ID_ORDERS,DM.SelPrepDistN_ID.AsInteger,DM.SelPrepDistPREP_DIST_ID.AsInteger);
    DM.SelPrepDist.RefreshRecord;
    DM.CDS_GOODS.RefreshRecord;
    DM.CDS_ORDER_NID.Refresh;
  end;
end;

// Поиск заказанной позиции по инвойсу
procedure TDistFormF.mnOrderClick(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;
  if not DM.CDS_GOODS.Active or DM.CDS_GOODS.IsEmpty then exit;

  gr_goods_v.DataController.DataSet.Locate('N_ID',DM.SelPrepDistN_ID.AsInteger,[])
end;


// Проверка наличия ошибок в заказе
procedure TDistFormF.aCheckErrorsExecute(Sender: TObject);
begin
  if CUR_ID_ORDERS = null then exit;

  try
    // Проверка заказа на наличие ошибок ---------------------------------------
    DM.SelQ.Close;
    dm.SelQ.SQL.Clear;
    DM.SelQ.SQL.Text := 'SELECT count(*) as nn FROM orders_clients where miss_code is not null and id_orders = '+IntToStr(CUR_ID_ORDERS);
    DM.SelQ.Open;

    if DM.SelQ.FieldByName('nn').AsInteger = 0 then
    begin
      Application.MessageBox('Заказ не содержит ошибок', 'Информация', MB_ICONINFORMATION);
      has_error := false;
    end
    else has_error := true;
    // -------------------------------------------------------------------------
  except
     on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;

procedure TDistFormF.bbCheckErrorsClick(Sender: TObject);
var z_code, z_q, z_name, tmpstr, err_log, err_log_short, vInfo, err_log_total: string;
    m : TStrArray;
    i: integer;
begin
  aCheckErrors.Execute;
  if not has_error then exit;
  
  try
    Q_ORDERS_ORDERS.Close;
    Q_ORDERS_ORDERS.ParamByName('ID_ORDERS').AsInteger := CUR_ID_ORDERS;
    Q_ORDERS_ORDERS.Open;

    DM.SelQ.Close;
    dm.SelQ.SQL.Clear;
    DM.SelQ.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data); end;';

    err_log_total := '';
    while not Q_ORDERS_ORDERS.Eof do
    begin
      err_log_short := '';
      err_log := '';
      vInfo   := '';
      z_code  := '';
      z_q     := '';

      if Q_ORDERS_ORDERSISMISSCODE.AsInteger = 1 then
      begin
        DM.SelQ.ParamByName('ID_ORDERS_CLIENTS').Value := Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;

        m:=split(Q_ORDERS_ORDERSMISS_CODE.AsString);
        for I := 0 to Length(m)-1 do
        begin

          tmpstr :=  m[i]; //DM.Q_ORDERS_ORDERSMISS_CODE.AsString;
          z_code := Trim(copy(tmpstr,pos('.',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(z_code,1,pos('.',z_code)-1));
          z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)-1));
          z_name := Trim(copy(tmpstr,1,pos(';',tmpstr)-1));

          if (z_code <> '') and (z_q <> '') then
          begin
            cdsNom.Close;
            cdsNom.ParamByName('p_code').AsString := z_code;
            cdsNom.ParamByName('p_dep').AsInteger := CUR_DEPT_ID;
            cdsNom.Open;
            if not cdsNom.IsEmpty then
            begin
              DM.SelQ.ParamByName('N_ID').Value       := cdsNomN_ID.AsInteger;
              DM.SelQ.ParamByName('FL_ORDERS').Value  := StrToInt(z_q);
              DM.SelQ.ParamByName('TRUCK').Value      := 0;
              DM.SelQ.ParamByName('sub_weight').Value := 0;
              DM.SelQ.ParamByName('v_site_data').Value := tmpstr;
              DM.SelQ.Execute;
            end
            else
            begin
              //err_log := err_log + z_code +';' + z_q + #13#10;
              err_log_short := err_log_short + z_code +';' + z_q + #13#10;
              err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
              vInfo   := vInfo + tmpstr;
            end;

            cdsNom.Close;
          end;

        end;

        Q_SQL_SPIS.Close;
        Q_SQL_SPIS.SQL.Clear;
        Q_SQL_SPIS.SQL.Text := 'update ORDERS_CLIENTS set miss_code='''+err_log+''', miss_code_short='''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger);
        Q_SQL_SPIS.Execute;
        Q_SQL_SPIS.Close;

        if err_log <> '' then
        begin
          err_log_total := err_log_total + Q_ORDERS_ORDERSNICK.AsString + #13;
          err_log_total := err_log_total + vInfo + #13;
        end;
      end;

      Q_ORDERS_ORDERS.Next;
    end;
    Q_ORDERS_ORDERS.Close;
    tlb_refreshClick(Sender);

    if err_log_total <> '' then
    begin
      Application.MessageBox(PChar('Заказ еще содержит ошибки'+#13#10+err_log_total), 'Информация', MB_ICONERROR);
    end;

  except
     on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;



procedure TDistFormF.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var grid: TDBGridEh;
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    if pnl_ > 0 then gr_goods.SetFocus else gr_PrepDist.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;

    if pnl_ > 0 then
    begin
      gr_goods_v.DataController.Filter.Clear;
      goods_GREAT_NAME_F2.DataBinding.AddToFilter(nil, foLike, '%'+VarToStr(te_search.EditValue)+'%');
      gr_goods_v.DataController.Filter.Active := True;
    end
    else
    begin
      gr_PrepDist_v.DataController.Filter.Clear;
      gr_PrepDist_vCOMPILED_NAME_OTDEL.DataBinding.AddToFilter(nil, foLike, '%'+VarToStr(te_search.EditValue)+'%');
      gr_PrepDist_v.DataController.Filter.Active := True;
    end;

    Panel_fill.Visible := false;
    te_search.Text := '';

    param_             := 0;
    pnl_               := 0;

//    grid.FieldColumns['QUANTITY'].Field.FocusControl;
  end;
end;

// поиск по названию
procedure TDistFormF.aSearchByNameExecute(Sender: TObject);
begin
  search_execute(1, gr_goods.IsFocused);
end;
//
//  Поиск
//
procedure TDistFormF.search_execute(param: integer; pnl_order: boolean);
var pnl: TPanel;
begin
  if pnl_order then pnl := Panel3 else pnl := Panel2;

  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    pnl_               := BoolToInt(pnl_order);
    if pnl_order then
      Panel_fill.Left    := trunc(pnl.left + pnl.Width / 2) - 90
    else
      Panel_fill.Left    := trunc(pnl.Width / 2) - 90;
    Panel_fill.Top     := trunc(pnl.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;





procedure TDistFormF.mn_left_ostatokClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_PrepDist_vLEFT_QUANTITY.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_left_saldoClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_PrepDist_vSALDO.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_left_sourceClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_PrepDist_vWHERE_FLOWER_IS.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_left_stokClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_PrepDist_vSTOCK.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_left_totalClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_PrepDist_vTOTAL_QUANTITY.Visible := (Sender as TMenuItem).Checked;
end;




procedure TDistFormF.mn_right_OrderClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  ginfo_GREAT_NAME.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_right_sourceClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_goods_vWHERE_FLOWER_IS.Visible := (Sender as TMenuItem).Checked;
end;

procedure TDistFormF.mn_right_stockClick(Sender: TObject);
begin
  (Sender as TMenuItem).Checked := not (Sender as TMenuItem).Checked;
  gr_goods_vQQ.Visible := (Sender as TMenuItem).Checked;
end;


// Добавить из инвойса клиенту
procedure TDistFormF.mnAddToClientClick(Sender: TObject);
var id_or_cl, id_or_list, QUA_SET, C_ID_ORDERS : integer;
    cds_source: TDataSet;
    RES, RES_TEXT : Variant;
begin
  frmDobor := TfrmDobor.Create(Application);
  try
    frmDobor.SelPrepDist.ParamByName('DIST_IND_ID_').Value  := CUR_DIST_IND_ID;
    frmDobor.SelPrepDist.ParamByName('vClient').Value       := CUR_CLIENT;
    frmDobor.SelPrepDist.Open;

    if (frmDobor.ShowModal = mrOk) then
    begin
      frmDobor.SelPrepDist.Filter := 'EDITABLE > 0';
      frmDobor.SelPrepDist.Filtered := true;

      if frmDobor.SelPrepDist.RecordCount = 0 then exit;

      // 2016-06-23 Т.к. много заказов может быть, до добавим новую строчку в первый же заказ по списку
        if Pos( ',', VarToStr(CUR_ID_ORDERS) ) > 0 then
          C_ID_ORDERS := StrToInt( Copy( VarToStr(CUR_ID_ORDERS), 0, Pos( ',', VarToStr(CUR_ID_ORDERS) )-1 ) )
        else
          C_ID_ORDERS := CUR_ID_ORDERS;
      //

      //id_or_cl := DM.insert_new_order( CUR_ID_ORDERS, frmDobor.Q_CLIENTSID_CLIENTS.AsInteger );
      id_or_cl := DM.insert_new_order( C_ID_ORDERS, frmDobor.Q_CLIENTSID_CLIENTS.AsInteger );
      if id_or_cl = 0 then exit;

      cds_source := gr_PrepDist_v.DataController.DataSet;


      with frmDobor.SelPrepDist do
      begin
        first;
        while not Eof do
        begin
          if not cds_source.Locate('n_id',FieldByName('N_ID').AsInteger, []) then next;
          if (cds_source.FieldByName('LEFT_QUANTITY').AsInteger = 0) then next;

          // Добавим к заказу позицию
          id_or_list := DM.insert_new_order_item( id_or_cl, FieldByName('N_ID').AsInteger, frmDobor.SelPrepDist.FieldByName('EDITABLE').AsInteger );
          if id_or_list = 0 then next;

          QUA_SET := frmDobor.SelPrepDist.FieldByName('EDITABLE').AsInteger;

          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            Params.Clear;
            SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
            ParamByName('IN_PREP_DIST_ID').AsInteger    := cds_source.FieldByName('PREP_DIST_ID').Value;
            ParamByName('IN_ID_ORDERS_LIST').AsInteger  := id_or_list;
            ParamByName('IN_QUANTITY').AsInteger        := QUA_SET;
            ParamByName('OUT_RES').AsString             := RES;
            ParamByName('OUT_TEXT').AsString            := RES_TEXT;
            Execute;
            RES      := ParamByName('OUT_RES').Value;
            RES_TEXT := ParamByName('OUT_TEXT').Value;
            if VarToInt(RES) < 0 then
               MessageBox(Handle, PChar(VarToStr(RES_TEXT)), 'Внимание', MB_ICONERROR);
          End;

          next;

        end;
      end; // with frmDobor.SelPrepDist do

      ReactivateGoods(frmDobor.SelPrepDist.FieldByName('N_ID').AsInteger, id_or_list);
    end;

  finally
    frmDobor.SelPrepDist.Close;
    frmDobor.Free;
  end;
end;

procedure TDistFormF.mnGroupRoseClick(Sender: TObject);
begin
  //ShowMessage(IntToStr( (Sender as TdxBarButton).Tag ));
  try
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.DISTRIBUTION_PKG.LOAD_STOCK_TO_DISTRIBUTION(:IN_DIST_IND_ID, :id_ft_, :id_dep_); end;');
      ParamByName('IN_DIST_IND_ID').AsInteger := CUR_DIST_IND_ID;
      ParamByName('id_ft_').AsInteger         := (Sender as TdxBarButton).Tag;
      ParamByName('id_dep_').AsInteger        := dept_compo.EditValue;
      Execute;
      ReactivateOraQuery(DM.SelPrepDist);
    End;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
end;


end.
