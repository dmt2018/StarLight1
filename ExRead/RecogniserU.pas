unit RecogniserU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,RegExpr, Buttons, ExtCtrls, Grids, DBGrids, ImgList,
  ActnList, Menus, PI_library, ComCtrls, TeEngine, Series, TeeProcs, Chart,
  DbChart, Gauges, DBCtrls, Registry, Ora,
  cxLookAndFeelPainters, cxButtons, dxBar, cxClasses, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxLabel, cxCalendar, cxCheckBox, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxControls, cxGridCustomView, cxGrid, dxBarExtItems, cxImageComboBox,
  cxProgressBar, cxGridExportLink, cxTextEdit, cxContainer, cxSplitter,
  cxBarEditItem, ShellApi, IniFiles, PI_Library_reg, UFilials, cxDropDownEdit,
  DBAccess, MemDS, dxBarExtDBItems, cxCheckComboBox;

type
  TInvoiceRecognise = class(TForm)
    Panel1: TPanel;
    ImageList1: TImageList;
    ActionList1: TActionList;
    ImageList2: TImageList;
    ASwitch: TAction;
    A_F4: TAction;
    A_F2: TAction;
    A_F3: TAction;
    ASaveGridParams: TAction;
    ALoadGridParams: TAction;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    Panel9: TPanel;
    BarMan_invoice: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    tlb_raspozn: TdxBarButton;
    tlb_add: TdxBarButton;
    tlb_del: TdxBarButton;
    tlb_edit: TdxBarButton;
    grid_invoices: TcxGrid;
    grid_invoices_v: TcxGridDBTableView;
    grid_invoices_l: TcxGridLevel;
    INV_ID: TcxGridDBColumn;
    INV_DATE: TcxGridDBColumn;
    COMMENTS: TcxGridDBColumn;
    grid_invoices_vINV_SUM: TcxGridDBColumn;
    SENDED_TO_WAREHOUSE: TcxGridDBColumn;
    grid_invoices_vWAREHOUSE_SENDED_DATE: TcxGridDBColumn;
    grid_invoices_vIPP_ID: TcxGridDBColumn;
    READY_POS: TcxGridDBColumn;
    AS_IS_POS: TcxGridDBColumn;
    grid_invoices_vS_ID_DEFAULT: TcxGridDBColumn;
    grid_invoices_vC_ID_DEFAULT: TcxGridDBColumn;
    SUPPLIER_DATE: TcxGridDBColumn;
    SUPPLIER_NUMBER: TcxGridDBColumn;
    TOTAL_SUM: TcxGridDBColumn;
    tlb_del_m: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    tlb_static1: TdxBarStatic;
    dxBarManager1Bar3: TdxBar;
    tlb_addnew: TdxBarButton;
    tlb_editnew: TdxBarButton;
    tlb_delnew: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    tlb_header: TcxStyle;
    tlb_Static3: TdxBarStatic;
    tlb_selall: TdxBarButton;
    tlb_notsel: TdxBarButton;
    tlb_set: TdxBarButton;
    tlb_print: TdxBarButton;
    procent_d: TcxGridDBColumn;
    tlb_save1: TdxBarButton;
    tlb_save2: TdxBarButton;
    tlb_save3: TdxBarButton;
    tlb_auto: TdxBarButton;
    panel_progress: TPanel;
    cxProgressBar1: TcxProgressBar;
    Label1: TLabel;
    Panel6: TPanel;
    spl_top1: TcxSplitter;
    Panel2: TPanel;
    grid_fresh: TcxGrid;
    grid_fresh_v: TcxGridDBTableView;
    ORDER_NUMBER: TcxGridDBColumn;
    _ORDER_MARKNAME: TcxGridDBColumn;
    PACKING_MARKS: TcxGridDBColumn;
    PACKING_CODE: TcxGridDBColumn;
    DESCRIPTION: TcxGridDBColumn;
    SKU: TcxGridDBColumn;
    UNITS1: TcxGridDBColumn;
    AMOUNT_PER_UNIT1: TcxGridDBColumn;
    TOTAL_AMOUNT1: TcxGridDBColumn;
    AMOUNT_IN_THE_PACK1: TcxGridDBColumn;
    HOL_SUB_TYPE: TcxGridDBColumn;
    HOL_COLOUR1: TcxGridDBColumn;
    SHORT_CODE1: TcxGridDBColumn;
    _MARKS_CONTENT1: TcxGridDBColumn;
    _MARKS_NAMES1: TcxGridDBColumn;
    SHORT_NAME1: TcxGridDBColumn;
    BAR_CODE1: TcxGridDBColumn;
    TRANSLATION1: TcxGridDBColumn;
    _INVOICE_DATA_AS_IS_ID: TcxGridDBColumn;
    grid_fresh_vREMARKS: TcxGridDBColumn;
    _grid_freshView1INV_ID: TcxGridDBColumn;
    grid_fresh_l: TcxGridLevel;
    BarDock_source: TdxBarDockControl;
    Panel5: TPanel;
    BarDock_invoices: TdxBarDockControl;
    grid_done: TcxGrid;
    grid_done_v: TcxGridDBTableView;
    idD_CHECK: TcxGridDBColumn;
    H_CODE: TcxGridDBColumn;
    F_NAME_RU: TcxGridDBColumn;
    UNITS: TcxGridDBColumn;
    PRICE_PER_UNIT: TcxGridDBColumn;
    TOTAL_SUM2: TcxGridDBColumn;
    PACK: TcxGridDBColumn;
    LEN: TcxGridDBColumn;
    RUS_MARKS: TcxGridDBColumn;
    COLOUR: TcxGridDBColumn;
    COUNTRY: TcxGridDBColumn;
    S_NAME_RU: TcxGridDBColumn;
    F_TYPE: TcxGridDBColumn;
    F_SUB_TYPE: TcxGridDBColumn;
    CUST_COEF: TcxGridDBColumn;
    GTD: TcxGridDBColumn;
    INVOICE_DATA_ID2: TcxGridDBColumn;
    INVOICE_DATA_AS_IS_ID2: TcxGridDBColumn;
    STORNED_TEXT: TcxGridDBColumn;
    F_NAME: TcxGridDBColumn;
    REMARKS: TcxGridDBColumn;
    CODE: TcxGridDBColumn;
    BAR_CODE: TcxGridDBColumn;
    grid_done_vINV_ID: TcxGridDBColumn;
    grid_done_vAMOUNT_IN_THE_PACK: TcxGridDBColumn;
    N_ID: TcxGridDBColumn;
    grid_done_vFULL_NAME: TcxGridDBColumn;
    grid_done_vDIAMETER: TcxGridDBColumn;
    grid_done_vFT_ID: TcxGridDBColumn;
    grid_done_vFST_ID: TcxGridDBColumn;
    grid_done_vSENDED_TO_WAREHOUSE: TcxGridDBColumn;
    grid_done_vSTORNED_DATA: TcxGridDBColumn;
    grid_done_l: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    PAST_NUM: TcxGridDBColumn;
    st_proc: TcxStyle;
    st_need_trans: TcxStyle;
    grid_fresh_vSPEC_LENGTH: TcxGridDBColumn;
    grid_fresh_vSPEC_HEADS: TcxGridDBColumn;
    grid_fresh_vSPEC_HEADS_SHRUB: TcxGridDBColumn;
    grid_fresh_vSPEC_VD2: TcxGridDBColumn;
    grid_fresh_vSPEC_WIDTH: TcxGridDBColumn;
    chb_proc: TcxBarEditItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    chb_sended: TcxBarEditItem;
    grid_done_vINV_MARKS: TcxGridDBColumn;
    grid_done_vIS_PHOTO: TcxGridDBColumn;
    grid_done_vPHOTO: TcxGridDBColumn;
    grid_done_vNN: TcxGridDBColumn;
    btn_minus: TdxBarButton;
    grid_invoices_vinv_minus: TcxGridDBColumn;
    grid_invoices_vINV_ID_: TcxGridDBColumn;
    grid_invoices_vS_NAME_RU: TcxGridDBColumn;
    grid_invoices_vIS_MINUS: TcxGridDBColumn;
    btn_cleim: TdxBarButton;
    grid_invoices_vMINUS_INV_ID: TcxGridDBColumn;
    grid_invoices_vPRICE: TcxGridDBColumn;
    grid_invoices_vPRICE_DONE: TcxGridDBColumn;
    cb_asis: TcxBarEditItem;
    grid_invoices_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_invoices_vINVOICE_TITLE: TcxGridDBColumn;
    grid_invoices_vTO_BE_POS: TcxGridDBColumn;
    grid_invoices_vTOTAL_SUM_TO_BE: TcxGridDBColumn;
    grid_invoices_vIN_FILE: TcxGridDBColumn;
    grid_invoices_vIS_FILE: TcxGridDBColumn;
    aResfresh: TAction;
    grid_fresh_vRECOGNISED: TcxGridDBColumn;
    grid_fresh_vSPEC_HIGHT: TcxGridDBColumn;
    st_editable: TcxStyle;
    btn_stickers: TdxBarButton;
    bdc_footer: TdxBarDockControl;
    BarMan_invoiceBar1: TdxBar;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    st_dubls: TcxStyle;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    st_storn: TcxStyle;
    dxBarStatic6: TdxBarStatic;
    grid_fresh_vTROLLEY: TcxGridDBColumn;
    st_asis: TcxStyle;
    st_tobe: TcxStyle;
    bs_services: TdxBarSubItem;
    btn_prints: TdxBarButton;
    grid_fresh_vTRUCK: TcxGridDBColumn;
    st_Inactive8: TcxStyle;
    st_Inactive9: TcxStyle;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    grid_invoices_vTOTAL_SUM_FROM_MINUS: TcxGridDBColumn;
    bb_reserv: TdxBarButton;
    grid_invoices_vIPP_COMMENT: TcxGridDBColumn;
    grid_invoices_vD_CHECK: TcxGridDBColumn;
    bb_pack_ins: TdxBarButton;
    bb_pack_del: TdxBarButton;
    grid_done_vTRUCK: TcxGridDBColumn;
    grid_done_vTROLLEY: TcxGridDBColumn;
    grid_done_vSRC_TROLLEY: TcxGridDBColumn;
    grid_done_vCLIENT: TcxGridDBColumn;
    grid_done_vUNITS_PRINT: TcxGridDBColumn;
    grid_done_vTROLLEY_CALC: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    grid_done_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    pm_inv_data: TPopupMenu;
    nFields: TMenuItem;
    btnExportInvoice: TdxBarButton;
    btnImportInvoice: TdxBarButton;
    odInvoice: TOpenDialog;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    PopupMenu1: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    btnExportInvoice2: TdxBarButton;
    dxBarStatic9: TdxBarStatic;
    st_NotUse: TcxStyle;
    dxBarStatic10: TdxBarStatic;
    st_noPrint: TcxStyle;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    grid_done_vH_NAME: TcxGridDBColumn;
    grid_done_vNOPRINT: TcxGridDBColumn;
    grid_done_vNOTUSE: TcxGridDBColumn;
    grid_invoices_vID_OFFICE: TcxGridDBColumn;
    grid_invoices_vBRIEF: TcxGridDBColumn;
    grid_invoices_vOFFICE: TcxGridDBColumn;
    bc_fontsize: TcxBarEditItem;
    btnCheckLoad: TdxBarButton;
    chbArchive: TcxBarEditItem;
    bbArchive: TdxBarButton;
    grid_invoices_vIARCHIVE: TcxGridDBColumn;
    lcbSuplier: TdxBarLookupCombo;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    DS_SUPPLIER: TOraDataSource;
    aArchive: TAction;
    btnZero: TdxBarButton;
    btnNewFromNID: TdxBarButton;
    grid_fresh_vCLIENT: TcxGridDBColumn;
    grid_fresh_vSRC_TROLLEY: TcxGridDBColumn;
    grid_fresh_vID_OFFICE: TcxGridDBColumn;
    grid_fresh_vDATE_CHANGE: TcxGridDBColumn;
    grid_fresh_vVOLUME: TcxGridDBColumn;
    grid_fresh_vVOLDRY: TcxGridDBColumn;
    st_bQuantity: TcxStyle;
    dxBarStatic13: TdxBarStatic;
    dxBarStatic14: TdxBarStatic;
    N2: TMenuItem;
    mnExportExcel: TMenuItem;
    N3: TMenuItem;
    mnEportExcelData: TMenuItem;
    btnCopyInvoice: TdxBarButton;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    dxBarStatic15: TdxBarStatic;
    dxBarStatic16: TdxBarStatic;
    dxBarStatic17: TdxBarStatic;
    aSearchByArticle: TAction;
    aSeachByName: TAction;
    aSearchByCode: TAction;
    btnSearchInvoices: TdxBarButton;
    dxBarStatic18: TdxBarStatic;
    dxBarStatic19: TdxBarStatic;
    stNotUse: TcxStyle;
    grid_done_vHOL_TYPE: TcxGridDBColumn;
    rgSearchNom: TRadioGroup;
    grid_invoices_vCOUNTRY_GTD: TcxGridDBColumn;
    grid_done_vFN_ID: TcxGridDBColumn;
    grid_done_vC_ID: TcxGridDBColumn;
    grid_done_vS_ID: TcxGridDBColumn;
    grid_done_vCOL_ID: TcxGridDBColumn;
    grid_done_vHT_ID: TcxGridDBColumn;
    grid_done_vWEIGHT: TcxGridDBColumn;
    grid_done_vWEIGHTDRY: TcxGridDBColumn;
    grid_done_vVBN: TcxGridDBColumn;
    grid_done_vTNVED: TcxGridDBColumn;
    grid_done_vGTD_COUNTRY: TcxGridDBColumn;
    grid_done_vGTD_COUNTRY_NAME: TcxGridDBColumn;
    grid_fresh_vNOM_NEW: TcxGridDBColumn;
    grid_fresh_vNOM_START: TcxGridDBColumn;
    grid_fresh_vCOUNTRY_: TcxGridDBColumn;
    grid_fresh_vNOM_END: TcxGridDBColumn;
    grid_fresh_vNOM_ADD: TcxGridDBColumn;
    grid_fresh_vNOM_SPECIAL: TcxGridDBColumn;
    grid_fresh_vNOM_PACK: TcxGridDBColumn;
    grid_done_vNOM_NEW: TcxGridDBColumn;
    grid_done_vNOM_START: TcxGridDBColumn;
    grid_done_vNOM_END: TcxGridDBColumn;
    grid_done_vNOM_ADD: TcxGridDBColumn;
    grid_done_vNOM_SPECIAL: TcxGridDBColumn;
    grid_done_vPARENT: TcxGridDBColumn;
    chbCorrection: TcxBarEditItem;
    dxBarButton2: TdxBarButton;
    mn_select_all: TMenuItem;
    mn_deselect_all: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mn_clear_filter: TMenuItem;
    N6: TMenuItem;
    chbWithOutStorn: TcxBarEditItem;
    chbOnlySpecial: TcxBarEditItem;
    chbWithoutSpecial: TcxBarEditItem;
    grid_done_vHOL_COLOR: TcxGridDBColumn;
    grid_done_vNAME_CODE: TcxGridDBColumn;
    grid_done_vNSI_NAME: TcxGridDBColumn;
    grid_done_vHOL_PACK: TcxGridDBColumn;
    tlb_exportDBF: TdxBarButton;
    mnFilterByGroup: TMenuItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    st_recognized: TcxStyle;
    dxBarButton5: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    bbzak: TdxBarButton;
    aZak: TAction;
    grid_invoices_vIZAK: TcxGridDBColumn;
    chbZak: TcxBarEditItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure A_F4Execute(Sender: TObject);
    procedure A_F2Execute(Sender: TObject);
    procedure A_F3Execute(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ASaveGridParamsExecute(Sender: TObject);
    procedure ALoadGridParamsExecute(Sender: TObject);
    procedure grid_done_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_done_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tlb_save1Click(Sender: TObject);
    procedure tlb_save2Click(Sender: TObject);
    procedure tlb_save3Click(Sender: TObject);
    procedure ASwitchExecute(Sender: TObject);
    procedure tlb_autoClick(Sender: TObject);
    procedure PAST_NUMCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure procent_dCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chbPropertiesChange(Sender: TObject);
    procedure chb_sendedPropertiesChange(Sender: TObject);
    procedure btn_minusClick(Sender: TObject);
    procedure grid_invoices_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grid_invoices_vIS_MINUSGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure dxBarSubItem2Popup(Sender: TObject);
    procedure btn_cleimClick(Sender: TObject);
    procedure grid_invoices_vPRICECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grid_done_vKeyPress(Sender: TObject; var Key: Char);
    procedure do_check;
    procedure grid_done_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_asisPropertiesEditValueChanged(Sender: TObject);
    procedure grid_invoices_vDblClick(Sender: TObject);
    procedure btn_stickersClick(Sender: TObject);
    procedure btn_printsClick(Sender: TObject);
    procedure bb_reservClick(Sender: TObject);
    procedure bb_pack_insClick(Sender: TObject);
    procedure bb_pack_delClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FildsShow(Sender: TObject);
    procedure btnExportInvoiceClick(Sender: TObject);
    procedure btnImportInvoiceClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure btnExportInvoice2Click(Sender: TObject);
    procedure bcb_fontPropertiesChange(Sender: TObject);
    procedure btnCheckLoadClick(Sender: TObject);
    procedure chbArchivePropertiesChange(Sender: TObject);
    procedure lcbSuplierChange(Sender: TObject);
    procedure aArchiveExecute(Sender: TObject);
    procedure btnZeroClick(Sender: TObject);
    procedure btnNewFromNIDClick(Sender: TObject);
    procedure mnExportExcelClick(Sender: TObject);
    procedure btnCopyInvoiceClick(Sender: TObject);
    procedure aSearchByArticleExecute(Sender: TObject);
    procedure aSeachByNameExecute(Sender: TObject);
    procedure aSearchByCodeExecute(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSearchInvoicesClick(Sender: TObject);
    procedure grid_done_vCOMPILED_NAME_OTDELGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure chbCorrectionChange(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure mn_select_allClick(Sender: TObject);
    procedure mn_deselect_allClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure grid_invoices_vEditKeyPress(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Char);
    procedure dxBarStatic3Click(Sender: TObject);
    procedure dxBarStatic5Click(Sender: TObject);
    procedure dxBarStatic9Click(Sender: TObject);
    procedure dxBarStatic11Click(Sender: TObject);
    procedure dxBarStatic13Click(Sender: TObject);
    procedure mn_clear_filterClick(Sender: TObject);
    procedure chbWithOutStornChange(Sender: TObject);
    procedure rgSearchNomClick(Sender: TObject);
    procedure chbOnlySpecialChange(Sender: TObject);
    procedure chbWithoutSpecialChange(Sender: TObject);
    procedure tlb_exportDBFClick(Sender: TObject);
    procedure mnFilterByGroupClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure grid_fresh_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dxBarButton6Click(Sender: TObject);
    procedure Azakexecute(Sender: TObject);
    procedure chbZakPropertiesChange(Sender: TObject);
  private
    pnl_msg: TPanel;
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    { Private declarations }
  public
    path: string;
    def_asis_visible: boolean;
    param_: integer;
    { Public declarations }
    procedure RecogniserShow();
    procedure SetPack(param_: integer);
    procedure search_execute(param: integer);
    procedure sort_table(filter_param: String);
  end;

var
  InvoiceRecognise: TInvoiceRecognise;

implementation

uses DataModule, Globals, NewNomenclature, InvoEditU, RecognitionOptionsU,
  IppChoose, NewInvU, SetInvoAllU, ShowNomU, UFullInfo, print_f,
  client_choos, NewDict, UChoiseType, UNomenclatureList;

{$R *.dfm}


//
//  Инициализация формы 
//
procedure TInvoiceRecognise.RecogniserShow();
VAR ColIni : TIniFile;
    i : integer;
begin
  ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');

  i := ColIni.ReadInteger('country','value', 0);
  def_asis_visible := CharToBool(IntToStr(i));
  cxSplitter1.Visible := def_asis_visible;

  cb_asis.EditValue := def_asis_visible;
  Panel2.Visible := def_asis_visible;

  Caption := 'Работа с инвойсами. Отдел : ' + CUR_DEPT_NAME;
  DM.InvoiceRegister.Close;
  DM.InvoiceRegister.ParamByName('ID_DEPARTMENTS_').Value := CUR_DEPT_ID;
  DM.InvoiceRegister.ParamByName('SHOW_SHORT_').Value := chb_sended.EditValue;
  DM.InvoiceRegister.ParamByName('pARCHIVE').Value := chbArchive.EditValue;
  DM.InvoiceRegister.ParamByName('pNom').AsString := '';

  DM.InvoiceRegister.DisableControls;
  DM.InvoiceAsIs.DisableControls;
  DM.InvoiceData.DisableControls;

  DM.InvoiceAsIs.MasterSource := nil;
  DM.InvoiceData.MasterSource := nil;
  ReactivateOraQuery(DM.InvoiceRegister);

  if def_asis_visible then
    ReactivateOraQuery(DM.InvoiceAsIs);

  ReactivateOraQuery(DM.InvoiceData);
  DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
  DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;

  DM.InvoiceRegister.EnableControls;
  DM.InvoiceAsIs.EnableControls;
  DM.InvoiceData.EnableControls;

  WindowState := wsMaximized;
  InvoiceRecognise.ShowModal;
End;



//
//  При создании формы загружаем вид таблиц
//
procedure TInvoiceRecognise.FormCreate(Sender: TObject);
begin
  tlb_auto.Enabled    := ed;
  tlb_raspozn.Enabled := ed;
  tlb_save1.Enabled   := pr;
  tlb_save2.Enabled   := pr;
  tlb_save3.Enabled   := pr;
  tlb_del_m.Enabled   := del;
  tlb_addnew.Enabled  := ed;
  tlb_editnew.Enabled := ed;
  tlb_delnew.Enabled  := del;
  tlb_set.Enabled     := ed;
  btnCopyInvoice.Enabled     := ed;
  A_F4.Enabled        := ed;
  A_F2.Enabled        := ed;
  A_F3.Enabled        := del;

  // Работать с архивом можно только с доп. функцией
  if not add then
  begin
    chbArchive.Visible := ivNever;
    bbArchive.Visible  := ivNever;
  end;
  aArchive.Enabled := add;
   aZAK.Enabled := add;
  // ----------------------------

  grid_invoices_vTOTAL_SUM_TO_BE.Visible := ed;
  grid_invoices_vTOTAL_SUM_FROM_MINUS.Visible := ed;
  TOTAL_SUM.Visible := ed;
  PRICE_PER_UNIT.Visible := ed;
  TOTAL_SUM2.Visible := ed;

  grid_fresh_v.OptionsData.Editing := ed;
  dm.def_suplier := 0;
  CDS_SUPPLIER.Open;

  // Откроем номенклатуру, чтобы потом долго небыло
  DM.Nomenclature2.ParamByName('ID_DEPARTMENTS_').Value := CUR_DEPT_ID;
  DM.Nomenclature2.ParamByName('n_id_').Value := 0;
  if (DM.InvoiceRegister.Active) and (DM.InvoiceRegister.RecordCount > 0) then
    DM.Nomenclature2.ParamByName('n_id_').Value := DM.InvoiceRegisterINV_ID.AsInteger
  else
    DM.Nomenclature2.ParamByName('n_id_').Value := 0;
  ReactivateOraQuery(DM.Nomenclature2);
end;


procedure TInvoiceRecognise.FormShow(Sender: TObject);
var RegIni : TIniFile;
begin
  try
    path  := ExtractFilePath(Application.ExeName);

    RegIni := TIniFile.Create(path+'ini/'+DM.STAR_DB.Username+'_font.ini');
    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '9');
    grid_invoices.Font.Size := bc_fontsize.EditValue;
    grid_done.Font.Size := bc_fontsize.EditValue;

    ALoadGridParams.Execute;
    grid_invoices_vIARCHIVE.Visible := add;
    grid_invoices_vIZAK.Visible := add;
  finally
    RegIni.Free;
  end;
end;

procedure TInvoiceRecognise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ASaveGridParams.Execute;
end;


// Показываем сырые данные
procedure TInvoiceRecognise.cb_asisPropertiesEditValueChanged(Sender: TObject);
begin
  def_asis_visible := cb_asis.EditValue;
  Panel2.Visible   := def_asis_visible;
  cxSplitter1.Visible := def_asis_visible;

  if def_asis_visible then
    ReactivateOraQuery(DM.InvoiceAsIs);
end;


// Сохраним настройки таблиц
procedure TInvoiceRecognise.ALoadGridParamsExecute(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  i: integer;
  newitem: Tmenuitem;
begin
  path                  := ExtractFilePath(Application.ExeName);
  AOptions := [];

  AStoreKey     := path + '/ini/Invoices_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'Invoices';
  grid_invoices_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/InvoicesAsIs_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'InvoicesAsIs';
  grid_fresh_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/InvoicesDone_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'InvoicesDone';
  grid_done_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);


      for i := 0 to grid_done_v.ColumnCount - 1 do
      begin
        if (grid_done_v.Columns[i].Tag < 999) then
        begin
          newitem := tmenuitem.create(nFields);
          newitem.caption := grid_done_v.Columns[i].Caption;
          newitem.tag := i;
          newitem.Checked := grid_done_v.Columns[i].Visible;
          newitem.OnClick := FildsShow;
          nFields.insert(nFields.count, newitem);
        end;
      end;

end;


procedure TInvoiceRecognise.FildsShow(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then (Sender as TMenuItem).Checked := false else (Sender as TMenuItem).Checked := true;
  grid_done_v.Columns[(Sender as TMenuItem).Tag].Visible := (Sender as TMenuItem).Checked;
end;


// Загрузим настройуи таблиц
procedure TInvoiceRecognise.ASaveGridParamsExecute(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := path + '/ini/Invoices_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'Invoices';
  grid_invoices_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/InvoicesAsIs_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'InvoicesAsIs';
  grid_fresh_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/InvoicesDone_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'InvoicesDone';
  grid_done_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

// поиск по названию
procedure TInvoiceRecognise.aSeachByNameExecute(Sender: TObject);
begin
  search_execute(2);
end;
// поиск по артиклу
procedure TInvoiceRecognise.aSearchByArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;
// поиск по внутр.коду
procedure TInvoiceRecognise.aSearchByCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;
// поиск инвойса по номенклатуре
procedure TInvoiceRecognise.btnSearchInvoicesClick(Sender: TObject);
begin
  search_execute(4);
end;
//
//  Поиск
//
procedure TInvoiceRecognise.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(Panel5.Width / 2) - 90;
    Panel_fill.Top     := trunc(Panel5.Height / 2) - 20;
    rgSearchNom.visible := (param = 4);
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;

procedure TInvoiceRecognise.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_done.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    if (param_ = 4) then
      aResfresh.Execute;

    grid_done_v.DataController.Filter.Clear;
    if (param_ = 1) or ((param_ = 4) and (rgSearchNom.ItemIndex = 1)) then
      H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + trim(VarToStr(te_search.EditValue)) + '%');
    if (param_ = 2) or ((param_ = 4) and (rgSearchNom.ItemIndex = 0)) then
      grid_done_vCOMPILED_NAME_OTDEL.DataBinding.AddToFilter(nil, foLike, '%' + trim(VarToStr(te_search.EditValue)) + '%');
    if (param_ = 3) or ((param_ = 4) and (rgSearchNom.ItemIndex = 2)) then
      CODE.DataBinding.AddToFilter(nil, foEqual, te_search.EditValue);
    grid_done_v.DataController.Filter.Active := True;

    Panel_fill.Visible := false;
    te_search.Text := '';
  end;
end;


procedure TInvoiceRecognise.rgSearchNomClick(Sender: TObject);
var Key: Word;
begin
  Key := VK_RETURN;
  te_searchKeyDown(Sender, Key, []);
end;


// Посмотрим исходный XLS файл
procedure TInvoiceRecognise.grid_invoices_vDblClick(Sender: TObject);
begin
  if (DM.InvoiceRegister.Active = false) or (DM.InvoiceRegister.RecordCount = 0) then
    exit;

  if ( grid_invoices_v.Controller.FocusedColumn.Name = 'grid_invoices_vIS_FILE' ) then
     ShellExecute(Handle, nil, PChar(ProgPath+'\IN\'+DM.InvoiceRegister.FieldByName('INV_ID').AsString+'\'+DM.InvoiceRegister.FieldByName('IN_FILE').AsString), nil, nil, SW_RESTORE);
end;


procedure TInvoiceRecognise.grid_invoices_vEditKeyPress(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Char);
begin
  if (Key = ' ') then
  begin
    grid_invoices_v.DataController.DataSet.Edit;
    grid_invoices_v.DataController.DataSet.FieldByName('D_CHECK').AsInteger := abs(grid_invoices_v.DataController.DataSet.FieldByName('D_CHECK').AsInteger - 1);
    grid_invoices_v.DataController.DataSet.Post;
    DM.InvoiceRegister.RefreshRecord;
  end;
end;

//
//  Красим позиции нужные к распознованию
//
procedure TInvoiceRecognise.PAST_NUMCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  str_tmp : variant;
begin
  if not AViewInfo.Selected then
  begin
    str_tmp := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('PAST_NUM').Index
                );
    if (str_tmp > 0) then
    begin
      ACanvas.Font.Color := st_need_trans.TextColor;
      ACanvas.Font.Style := st_need_trans.Font.Style;
    end;
  end;
end;


// Печать стикеров
procedure TInvoiceRecognise.btn_stickersClick(Sender: TObject);
begin
  printf    := Tprintf.Create(Application);
  try
    printf.showmodal;
    grid_done.SetFocus;
  finally
    printf.Free;
  end;
end;
// Печать стикеров по выбранным
procedure TInvoiceRecognise.dxBarButton2Click(Sender: TObject);
begin
  printf    := Tprintf.Create(Application);
  try
    printf.printSelected := true;
    printf.showmodal;
    grid_done.SetFocus;
  finally
    printf.Free;
  end;
end;


// Сменить позицию на другую
procedure TInvoiceRecognise.dxBarButton3Click(Sender: TObject);
begin
  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 ) then
  begin
    MessageBox (Handle,'Инвойс уже подгружен на склад', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  frmNomenclature := TfrmNomenclature.Create(Application);
  try
      frmNomenclature.lbl_content.Caption := VarToStr(H_CODE.EditValue) + ' | ' + VarToStr(grid_done_vCOMPILED_NAME_OTDEL.EditValue) + ' | ' + VarToStr(COLOUR.EditValue);
      frmNomenclature.pnl_head.Visible := false;
      frmNomenclature.grid_noms_vF_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, VarToStr(F_SUB_TYPE.EditValue));
      //nnH_CODE.DataBinding.Filtered := (Sender as TAction).Checked;
      frmNomenclature.grid_noms_v.DataController.Filter.Active := True;
      frmNomenclature.btnEditNom.Visible := false;
      frmNomenclature.btnChangeEngData.Visible := false;
//      frmNomenclature.aFilterByCode.Execute;
//      frmNomenclature.aFilterByRemarks.Execute;
    if (frmNomenclature.ShowModal = mrOk) then
    begin
      if MessageDlg( PChar('Установить вместо "'+VarToStr(grid_done_vCOMPILED_NAME_OTDEL.EditValue)+'" выбранную номенклатуру "'+DM.NomenclatureCOMPILED_NAME_OTDEL.AsString+'"'), mtConfirmation,[mbOk, mbNo],0) = mrOk then
      begin
        try
          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          //DM.SelQ.SQL.Add('update invoice_data set n_id='+DM.NomenclatureN_ID.AsString+' where INVOICE_DATA_ID='+DM.InvoiceDataINVOICE_DATA_ID.AsString);
          DM.SelQ.SQL.Add('begin invoice_pkg.change_nid_by_another('+DM.InvoiceDataINVOICE_DATA_ID.AsString+','+DM.NomenclatureN_ID.AsString+'); end;');
          DM.SelQ.Execute;
        except
          on E: Exception do
           ShowMessage(E.Message);
        end;
        DM.InvoiceData.RefreshRecord;
      end;
    end;
  finally
    frmNomenclature.Free;
  end;

end;


// Обновим странны по исходному инвойсу
procedure TInvoiceRecognise.dxBarButton4Click(Sender: TObject);
begin
{
  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 ) then
  begin
    MessageBox (Handle,'Инвойс уже подгружен на склад', 'Внимание!', MB_ICONWARNING);
    exit;
  end;
}
  if MessageDlg( 'Будет проведена замена стран по исходным данным инвойса в текущей номенклатуре', mtConfirmation,[mbOk, mbNo],0) <> mrOk then exit;

  DM.InvoiceData.Filter := '';
  DM.InvoiceData.Filtered := false;

  if DM.InvoiceData.RecordCount > 0 then
  begin
    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    try
      pnl_msg.Repaint;
      try
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('begin invoice_pkg.change_country_by_asis(:p1); end;');
        grid_done_v.DataController.DataSource := nil;
        with DM.InvoiceData do
        Begin
          First;
          while not eof do
          Begin
            DM.SelQ.ParamByName('p1').AsInteger := DM.InvoiceDataINVOICE_DATA_ID.AsInteger;
            DM.SelQ.Execute;
            next;
          End;
        End;
        grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
        DM.STAR_DB.Commit;
        MessageBox (Handle,'Процесс завершен успешно.'+#13+'Не забудьте провести синхронизацию товара в регионах', 'Внимание!', MB_ICONINFORMATION);
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
          grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
        end;
      end;
    finally
      pnl_msg.Free;
    end;
  end;

  DM.InvoiceData.Refresh;
  grid_done.SetFocus;
end;


procedure TInvoiceRecognise.dxBarButton6Click(Sender: TObject);

begin

end;

//
//  Красим позиции со 100%
//
procedure TInvoiceRecognise.procent_dCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  str_tmp : variant;
begin
  if not AViewInfo.Selected then
  begin
    str_tmp := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('procent_d').Index
                );
    if (str_tmp = 100) then
      ACanvas.Brush.Color := TColor($00CAFFCA);
  end;
end;


//
//  покажем только неразнесенные
//
procedure TInvoiceRecognise.chbPropertiesChange(Sender: TObject);
begin
  if (chb_proc.EditValue = true) then
  begin
    DM.InvoiceRegister.Filter   := 'PROCENT_D <> 100';
    DM.InvoiceRegister.Filtered := true;
  end
  else
  begin
    DM.InvoiceRegister.Filter   := '';
    DM.InvoiceRegister.Filtered := false;
  end;
end;



procedure TInvoiceRecognise.chbWithOutStornChange(Sender: TObject);
begin
  if (Sender as TcxBarEditItem).EditValue = true then
  begin
    grid_done_vSTORNED_DATA.DataBinding.AddToFilter(nil, foEqual, 0);
    grid_done_v.DataController.Filter.Active := True;
  end
  else
  begin
    grid_done_v.DataController.Filter.Clear;
    grid_done_v.DataController.Filter.Active := False;
  end;
end;


procedure TInvoiceRecognise.chbZakPropertiesChange(Sender: TObject);
begin
 btn_refreshClick(nil);
end;

procedure TInvoiceRecognise.chbCorrectionChange(Sender: TObject);
begin
  if chbCorrection.EditValue = true then
  begin
    grid_done_vPARENT.DataBinding.AddToFilter(nil, foNotEqual, NULL);
    grid_done_v.DataController.Filter.Active := True;
  end
  else
  begin
    grid_done_v.DataController.Filter.Clear;
    grid_done_v.DataController.Filter.Active := False;
  end;
end;

// Без спецюпредложения
// TBD - после перехода на мою программу спецуха будет по отдельному признаку определятся, а не по артиклу
procedure TInvoiceRecognise.chbWithoutSpecialChange(Sender: TObject);
begin
  if (Sender as TcxBarEditItem).EditValue = true then
  begin
    DM.InvoiceData.Filter   := 'H_CODE not like ''%!%'' ';
    DM.InvoiceData.Filtered := true;
  end
  else
  begin
    DM.InvoiceData.Filter   := '';
    DM.InvoiceData.Filtered := false;
  end;
end;

// Только спецюпредложения
// TBD - после перехода на мою программу спецуха будет по отдельному признаку определятся, а не по артиклу
procedure TInvoiceRecognise.chbOnlySpecialChange(Sender: TObject);
begin
  if (Sender as TcxBarEditItem).EditValue = true then
  begin
    DM.InvoiceData.Filter   := 'H_CODE like ''%!%'' ';
    DM.InvoiceData.Filtered := true;
  end
  else
  begin
    DM.InvoiceData.Filter   := '';
    DM.InvoiceData.Filtered := false;
  end;
end;






//
//  Показываем все
//
procedure TInvoiceRecognise.chb_sendedPropertiesChange(Sender: TObject);
begin
  DM.InvoiceRegister.Close;
  DM.InvoiceRegister.ParamByName('ID_DEPARTMENTS_').Value := CUR_DEPT_ID;
  DM.InvoiceRegister.ParamByName('SHOW_SHORT_').Value     := chb_sended.EditValue;
  DM.InvoiceRegister.ParamByName('pNom').AsString         := '';

  DM.InvoiceAsIs.MasterSource := nil;
  DM.InvoiceData.MasterSource := nil;
  ReactivateOraQuery(DM.InvoiceRegister);
  DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
  DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
end;


// на открытие 
procedure TInvoiceRecognise.dxBarSubItem2Popup(Sender: TObject);
begin
  tlb_add.Enabled := ed;
  if (grid_invoices_v.ViewData.RecordCount > 0) and (ed)
    and ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 0 )
    and (grid_invoices_v.DataController.DataSet.FieldByName('price').AsInteger = 0)
{
    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 1 )
    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 3 )
}
  then tlb_del.Enabled := del
  else tlb_del.Enabled := false;

  if (grid_invoices_v.ViewData.RecordCount > 0) and (ed)
    and ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 0 )
    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 1 )
    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 3 )
  then tlb_edit.Enabled := ed
  else tlb_edit.Enabled := false;

  if (grid_invoices_v.ViewData.RecordCount > 0) and (ed)
//    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 0 )
    and (
      (grid_invoices_v.DataController.DataSet.FieldByName('price').AsInteger = 0)
      or
      (grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1)
    )
  then btn_minus.Enabled := ed
  else btn_minus.Enabled := false;

  if (grid_invoices_v.ViewData.RecordCount > 0) and (ed)
    and ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 2 )
    and (
      (grid_invoices_v.DataController.DataSet.FieldByName('price').AsInteger = 0)
      or
      (grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1)
    )
  then btn_cleim.Enabled := ed
  else btn_cleim.Enabled := false;

  btnExportInvoice.Enabled := (DM.id_office <= 1);
  btnImportInvoice.Enabled := (DM.id_office > 1);
end;

//
// Обновление данных
//
procedure TInvoiceRecognise.btn_refreshClick(Sender: TObject);
var
  id, id2, id3 : integer;
begin

  pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    id := DM.InvoiceRegisterINV_ID.AsInteger;
    if def_asis_visible then
       id2 := DM.InvoiceAsIsINVOICE_DATA_AS_IS_ID.AsInteger;
    id3 := DM.InvoiceDataINVOICE_DATA_ID.AsInteger;

    DM.InvoiceAsIs.MasterSource := nil;
    DM.InvoiceData.MasterSource := nil;

    DM.InvoiceRegister.Close;
    DM.InvoiceRegister.ParamByName('ID_DEPARTMENTS_').Value := CUR_DEPT_ID;
    DM.InvoiceRegister.ParamByName('SHOW_SHORT_').Value := chb_sended.EditValue;

    if chbArchive.EditValue = 1 then
      DM.InvoiceRegister.ParamByName('pARCHIVE').Value := chbArchive.EditValue
    else
      DM.InvoiceRegister.ParamByName('pARCHIVE').Value := chbzak.EditValue ;

    DM.InvoiceRegister.ParamByName('pNom').AsString := VarToStr(te_search.EditValue);
    DM.InvoiceRegister.Open;


    DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
    DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;

    //  DM.InvoiceRegister.Locate('INV_ID',id,[]);
    grid_invoices_v.DataController.LocateByKey(id);
    if def_asis_visible then
    begin
      DM.InvoiceAsIs.Refresh;
      //DM.InvoiceAsIs.Locate('INVOICE_DATA_AS_IS_ID',id2,[]);
      grid_fresh_v.DataController.LocateByKey(id2);
    end;
    DM.InvoiceData.Refresh;
    //DM.InvoiceData.Locate('INVOICE_DATA_ID',id3,[]);
    grid_done_v.DataController.LocateByKey(id3);

  finally
      pnl_msg.Free;
  end;
end;



//
//  Добавление инвойса
//
procedure TInvoiceRecognise.BitBtn2Click(Sender: TObject);
var
  InvDate, InvComm, InvSupDate, InvSupNumber, res_val, S_ID, C_def : variant;
begin
  InvDate       := null;
  InvComm       := null;
  InvSupDate    := null;
  InvSupNumber  := null;
  S_ID          := 0;
  if GetInvoiceInfo(InvDate,InvComm,InvSupDate,InvSupNumber,S_ID,C_def) then
    Begin
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
          ParamByName('IN_INV_DATE').AsDate           := InvDate;
          ParamByName('IN_COMMENTS').AsString         := InvComm;
          ParamByName('IN_SUP_INV_DATE').AsDate       := InvSupDate;
          ParamByName('IN_SUP_NUMBER').AsString       := InvSupNumber;
          ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
          ParamByName('IN_INV_MINUS').AsInteger       := 0;
          ParamByName('IN_S_ID').AsInteger            := S_ID;
          ParamByName('in_INV_ID').AsInteger          := res_val;
          ParamByName('IN_FILE_').AsString            := '';
          ParamByName('IN_OFFICE_ID').AsInteger       := DM.id_office;
          ParamByName('IN_country_gtd').AsInteger     := C_def;
          Execute;
          res_val := ParamByName('in_INV_ID').Value;
          if res_val = -1 then ShowMessage('Произошла ошибка при добавлении инвойса!')
          else
            Begin
              DM.InvoiceAsIs.MasterSource := nil;
              DM.InvoiceData.MasterSource := nil;
              DM.InvoiceRegister.Refresh;
              DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
              DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
              grid_invoices_v.DataController.LocateByKey(res_val);
            End;
        End;
    End;
  grid_done.SetFocus;
end;


//
// Удаление инвойса
//
procedure TInvoiceRecognise.Button6Click(Sender: TObject);
var ddone: boolean;
begin
  if (DM.InvoiceRegister.Active = false) or (DM.InvoiceRegister.RecordCount = 0) or (grid_invoices_v.ViewData.RecordCount = 0) then
      exit;

  if DM.InvoiceRegisterINV_ID.AsInteger > 0 then
  begin
    if (DM.InvoiceRegisterSENDED_TO_WAREHOUSE.AsInteger > 0) then ShowMessage('Нельзя удалить инвойс который подгружен на склад!')
    else
    begin
      if MessageDlg('Удалить инвойс из реестра инвойсов?', mtConfirmation,[mbOk, mbNo],0) = mrOk then
      begin
        ddone := true;
        if (DM.InvoiceRegisterINV_MINUS.AsInteger = 1) then
           if MessageDlg('При удалении готового минусового инвойса будет удален клейм!'#10'Сторнирование товара останется у родительского инвойса'#10'Продолжить?', mtConfirmation,[mbOk, mbNo],0) = mrOk then
              ddone := true
           else
              ddone := false;

        if (ddone) then
        begin
          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('begin INVOICE_PKG.delete_invoice(:INV_ID_); end;');
            ParamByName('INV_ID_').AsInteger := DM.InvoiceRegister.FieldByName('INV_ID').Value;
            Execute;
            DM.InvoiceAsIs.MasterSource := nil;
            DM.InvoiceData.MasterSource := nil;
            DM.InvoiceRegister.Refresh;
            DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
            DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
          End;
        end;
      end;
    end;
  end
  else Showmessage('Нет данных для удаления!');

  grid_invoices.SetFocus;
end;



//
//  Редактирование инвойса
//
procedure TInvoiceRecognise.BitBtn3Click(Sender: TObject);
var
  InvDate,InvComm,InvSupDate,InvSupNumber,res_val,S_ID,C_def : variant;
begin
  if (DM.InvoiceRegister.Active = false) or (DM.InvoiceRegister.RecordCount = 0) or (grid_invoices_v.ViewData.RecordCount = 0) then
      exit;

  InvDate       := DM.InvoiceRegister.FieldByName('INV_DATE').Value;
  InvComm       := DM.InvoiceRegister.FieldByName('COMMENTS').Value;
  InvSupDate    := DM.InvoiceRegister.FieldByName('SUPPLIER_DATE').Value;
  InvSupNumber  := DM.InvoiceRegister.FieldByName('SUPPLIER_NUMBER').Value;
  S_ID          := DM.InvoiceRegister.FieldByName('S_ID_DEFAULT').Value;
  C_def         := DM.InvoiceRegister.FieldByName('COUNTRY_GTD').AsInteger;
  if GetInvoiceInfo(InvDate,InvComm,InvSupDate,InvSupNumber,S_ID,C_def) then
    Begin
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.INV_REG_UPDATE(:in_INV_ID, :IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_S_ID, :IN_ID_DEPARTMENTS, :IN_country_gtd); end;');
          ParamByName('in_INV_ID').AsInteger          := DM.InvoiceRegister.FieldByName('INV_ID').Value;
          ParamByName('IN_INV_DATE').AsDate           := InvDate;
          ParamByName('IN_COMMENTS').AsString         := InvComm;
          ParamByName('IN_SUP_INV_DATE').AsDate       := InvSupDate;
          ParamByName('IN_SUP_NUMBER').AsString       := InvSupNumber;
          ParamByName('IN_S_ID').AsInteger            := S_ID;
          ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
          ParamByName('IN_country_gtd').AsInteger     := C_def;
          Execute;
          res_val := ParamByName('in_INV_ID').Value;
          if res_val = -1 then ShowMessage('Произошла ошибка!')
          else
            Begin
              DM.InvoiceAsIs.MasterSource := nil;
              DM.InvoiceData.MasterSource := nil;
              DM.InvoiceRegister.Refresh;
              DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
              DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
              grid_invoices_v.DataController.LocateByKey(res_val);
            End;
        End;
    End;
  grid_done.SetFocus;
//  grid_invoices.SetFocus;
end;


//
//  Распознавание инвойса
//
procedure TInvoiceRecognise.Button1Click(Sender: TObject);
VAR
  H_CODE,H_NAME : String;
  sql_seek_rec : WideString;
  res, i, op1, op2, op3, op4 : integer;
  OptRes : TOptSet;
begin
  if (DM.InvoiceAsIs.RecordCount = 0) then
  begin
    MessageBox (Handle,'Нет данных для распознования!', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 ) then
  begin
    MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  RecognitionOptionsF := TRecognitionOptionsF.Create(Application);

  OptRes := RecognitionOptionsF.GetRecognitionOptioons();
  op1 := 0;
  op2 := 0;
  op3 := 0;
  op4 := 0;

  // Если нажата CANCEL или не выбрано ничего
  if OptRes = [] then
  Begin
      RecognitionOptionsF.Free;
      MessageBox(Handle,'Необходимо ввести хотябы один параметр обработки!','Внимание',MB_ICONWARNING);
      Exit;
  end;

  sql_seek_rec := 'SELECT INVOICE_DATA_ID FROM INVOICE_DATA WHERE INVOICE_DATA_AS_IS_ID=:INVOICE_DATA_AS_IS_ID AND STORNED_DATA=0';
  with DM.SeekRecognised do
  Begin
     Close;
     SQL.Clear;
     SQL.Add(sql_seek_rec);
     Open;
  End;

  DM.InvoiceAsIs.First;
  try
     While not DM.InvoiceAsIs.Eof do
     Begin

       // Оставить как есть и не факаться ибо все равно через VIEW
       // Остами здесь пока, так работает 100% подстановка из другой номенклатуры
       with DM.SeekNomenclature do
       Begin
         SQL.Clear;
         SQL.Add(' SELECT n_id FROM NOMENCLATURE_MAT_VIEW');
         AddWhere('ID_DEPARTMENTS = :ID_DEPARTMENTS and id_office in (1,const_office)');
         if 1 in OptRes then begin AddWhere('(UPPER(H_CODE)  = UPPER(:SKU) or :SKU is null)');          op1 := 1; end;
         if 2 in OptRes then begin AddWhere('UPPER(H_NAME)  = UPPER(:DESCRIPTION)');                    op2 := 1; end;
         if 3 in OptRes then begin AddWhere('(UPPER(REMARKS) = UPPER(:REMARKS) or :REMARKS is null)');  op3 := 1; end;
         if 4 in OptRes then begin AddWhere('nvl(PACK,0) = nvl(:NOM_PACK,0)');                          op4 := 1; end;
         ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
         Open;
       End;

       if DM.SeekRecognised.IsEmpty then
       Begin
          H_CODE := DM.InvoiceAsIsSKU.AsString;
          H_NAME := DM.InvoiceAsIsDESCRIPTION.AsString;
          res := mrOk;

          while DM.SeekNomenclature.IsEmpty do
          Begin

// Открываем форму с новой номенклатурой -----
            NewNomForm := TNewNomForm.Create(Application);
            try
              NewNomForm.op1 := op1;
              NewNomForm.op2 := op2;
              NewNomForm.op3 := op3;
              NewNomForm.op4 := op4;
              res := NewNomForm.ShowModal;
            finally
              NewNomForm.Free;
            end;
// -------------------------------------------

            if res = mrCancel then abort;  //Отказаться от идеи распознавания
            if res = mrIgnore then break; //Пропустить строчку
            DM.SeekNomenclature.Refresh;
          End;

          if res = mrOk then
          Begin
             With DM.SelQ do
             Begin
                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
                  ParamByName('IN_INV_ID').Value                    := DM.InvoiceRegister.FieldByName('INV_ID').Value;
                  ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := DM.InvoiceAsIs.FieldByName('INVOICE_DATA_AS_IS_ID').Value;
                  ParamByName('IN_N_ID').Value                      := DM.SeekNomenclature.FieldByName('N_ID').Value;
                  ParamByName('IN_UNITS').Value                     := DM.InvoiceAsIs.FieldByName('UNITS').Value;
                  ParamByName('IN_PRICE_PER_UNIT').Value            := DM.InvoiceAsIs.FieldByName('AMOUNT_PER_UNIT').Value;
                  ParamByName('IN_TOTAL_SUM').Value                 := DM.InvoiceAsIs.FieldByName('TOTAL_AMOUNT').Value;
                  ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').Value;
                  ParamByName('IN_STORN').AsInteger                 := 0;
                  ParamByName('IN_GTD').Value                       := NULL;
                  ParamByName('IN_GTD_COUNTRY').AsInteger           := DM.InvoiceRegister.FieldByName('COUNTRY_GTD').AsInteger;

                  ParamByName('IN_NEW').AsInteger                   := DM.InvoiceAsIs.FieldByName('NOM_NEW').Value;
                  ParamByName('IN_SPEC').AsInteger                  := DM.InvoiceAsIs.FieldByName('NOM_SPECIAL').Value;
                  ParamByName('IN_CLIENT').AsString                 := DM.InvoiceAsIs.FieldByName('CLIENT').AsString;

                  ParamByName('IN_parent').value                    := NULL;

                  ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
                  Execute;

                  // Вызов процедуры по смене веса при его наличии
                  if (DM.InvoiceAsIsVOLUME.AsFloat <> 0) or (DM.InvoiceAsIsVOLDRY.AsFloat <> 0) then
                  begin
                    Close;
                    SQL.Clear;
                    Params.Clear;
                    SQL.Text := 'begin INVOICE2_PKG.CHANGE_VOLUME(:N_ID_, :VOLUME_, :VOLDRY_); end;';
                    ParamByName('N_ID_').AsInteger   := DM.SeekNomenclature.FieldByName('N_ID').Value;
                    ParamByName('VOLUME_').Value     := DM.InvoiceAsIsVOLUME.AsFloat;
                    ParamByName('VOLDRY_').Value     := DM.InvoiceAsIsVOLDRY.AsFloat;
                    Execute;
                  end;

                  // Вызов процедуры по смене веса при его наличии
                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Text := 'begin INVOICE2_PKG.CHANGE_MARKS(:N_ID_, :new_, :end_, :start_ ); end;';
                  ParamByName('N_ID_').AsInteger  := DM.SeekNomenclature.FieldByName('N_ID').Value;
                  ParamByName('new_').Value       := DM.InvoiceAsIsNOM_NEW.AsInteger;
                  ParamByName('end_').Value       := DM.InvoiceAsIsNOM_END.AsInteger;
                  ParamByName('start_').Value     := DM.InvoiceAsIsNOM_START.AsInteger;
                  Execute;

             End;
             DM.InvoiceRegister.RefreshRecord;
          End;

       End; // if DM.SeekRecognised.IsEmpty then

       DM.InvoiceAsIs.Next;
       DM.SeekNomenclature.MasterSource := dm.InvoiceAsIs_DS;

     End; // While not DM.InvoiceAsIs.Eof do

  finally
      DM.SeekNomenclature.Close;
      DM.SeekRecognised.Close;
      DM.InvoiceAsIs.Refresh;
      DM.InvoiceData.Refresh;
      i := DM.InvoiceRegisterINV_ID.AsInteger;
      DM.SeekNomenclature.MasterSource := dm.InvoiceAsIs_DS;
      DM.InvoiceAsIs.MasterSource := nil;
      DM.InvoiceData.MasterSource := nil;
      DM.InvoiceRegister.Refresh;
      DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
      DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
      //DM.InvoiceRegister.Locate('INV_ID',i,[]);
      grid_invoices_v.DataController.LocateByKey(i);
  End;
  RecognitionOptionsF.Free;

grid_invoices.SetFocus;
end;



//
//  Удаляем из сырого инвойса
//
procedure TInvoiceRecognise.Button2Click(Sender: TObject);
begin
if (DM.InvoiceAsIs.Active = true) and (DM.InvoiceAsIsINV_ID.AsInteger > 0) then
begin
  if MessageDlg('Удалить строчку сырого инвойса?',  mtConfirmation, [mbOk, mbNo], 1) = mrOk then
  begin
      with DM.SelQ do
      Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.DEL_INV_SOURCE(:INVOICE_DATA_AS_IS_ID_); end;');
          ParamByName('INVOICE_DATA_AS_IS_ID_').Value := DM.InvoiceAsIs.FieldByName('INVOICE_DATA_AS_IS_ID').Value;

          try
            Execute;
            DM.InvoiceAsIs.Refresh;
            DM.InvoiceData.Refresh;
          except
            on E: Exception do ShowMessage(E.Message);
          End;
      End;
  end;
end
else Showmessage('Нет данных для удаления!');

grid_fresh.SetFocus;
end;


//
//  Ввод вручную данных по инвойсу
//
procedure TInvoiceRecognise.BitBtn4Click(Sender: TObject);
begin
if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
  or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 1 )
then
  MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING)
else
begin
  if (DM.InvoiceRegisterINV_ID.AsInteger > 0) then
  begin
    if (DM.Nomenclature2.ParamByName('inv_id_').AsInteger <> DM.InvoiceRegisterINV_ID.AsInteger) then
    begin
      DM.Nomenclature2.ParamByName('inv_id_').AsInteger := DM.InvoiceRegisterINV_ID.AsInteger;
//      DM.Nomenclature2.Refresh;
    end;

      DM.n_id_ := 0;
      InvoEditF := TInvoEditF.Create(Application);
      try
        InvoEditF.BitBtn3.Visible := true;
        InvoEditF.grid_nn.Font.Size := bc_fontsize.EditValue;
        if (grid_done_v.DataController.DataSet.Active = true) and (grid_done_v.ViewData.RowCount > 0) then
          InvoEditF.Search_n_id := DM.InvoiceDataN_ID.AsInteger
        else
          InvoEditF.Search_n_id := 0;
        InvoEditF.InsertInvoice();
      finally
        InvoEditF.free;
      end;
  end
  else ShowMessage('Заведите новый инвойс в реестре инвойсов!');

end;
grid_done.SetFocus;

end;


//
//  Редактирование вручную данных по инвойсу
//
procedure TInvoiceRecognise.BitBtn8Click(Sender: TObject);
begin
  if (DM.InvoiceData.Active = false) or (DM.InvoiceData.RecordCount = 0) or (grid_done_v.ViewData.RecordCount = 0) then
      exit;

  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
      or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 1 )
  then
    MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING)
  else
  begin

//  if DM.InvoiceDataINV_ID.AsInteger > 0 then
  if (grid_done_v.DataController.DataSet.Active = true) and (grid_done_v.ViewData.RowCount > 0) then
    begin
      //InvoEditF.BitBtn3.Visible := false;
      InvoEditF := TInvoEditF.Create(Application);
      try
        InvoEditF.grid_nn.Font.Size := bc_fontsize.EditValue;
        InvoEditF.UpdateInvoice();
      finally
        InvoEditF.free;
      end;
    end
  else ShowMessage('Нет данных для редактирования!');

end;
grid_done.SetFocus;

end;


//
//  Удаление вручную данных по инвойсу
//
procedure TInvoiceRecognise.BitBtn7Click(Sender: TObject);
VAR
  res,ResText : Variant;
begin
if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
  or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 1 )
then
  MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING)
else
begin

  if DM.InvoiceDataINVOICE_DATA_ID.AsInteger > 0 then
  begin
    if MessageDlg('Удалить запись?',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin

      with DM.SelQ do
      Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_DATA_PACKAGE.DELETE_DATA(:IN_INVOICE_DATA_ID, :OUT_RES, :OUT_TEXT); end;');
        //for i := 0 to InDatCheck.Count - 1 do
        //  Begin
            ParamByName('IN_INVOICE_DATA_ID').AsInteger := DM.InvoiceDataINVOICE_DATA_ID.AsInteger; //Integer(InDatCheck[i]);
            ParamByName('OUT_RES').AsInteger            := res;
            ParamByName('OUT_TEXT').AsString            := ResText;
            Execute;
            res := ParamByName('OUT_RES').Value;
            ResText := ParamByName('OUT_TEXT').Value;
            if res = 0 then
            Begin
                ShowMessage(ResText);
                //Continue;
            End;
        //  End;
      End;

      DM.InvoiceRegister.RefreshRecord;
      DM.InvoiceData.Refresh;
      if def_asis_visible then
         ReactivateOraQuery(DM.InvoiceAsIs);
    end;
  end
  else Showmessage('Нет данных для удаления!');

end;
grid_done.SetFocus;

end;





//
// Красим грид
//
procedure TInvoiceRecognise.grid_done_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  str_tmp : variant;
begin

  if not AViewInfo.Selected {and (grid_doneView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK')} then
  begin
    // Красим отправленные на склад
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('SENDED_TO_WAREHOUSE').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := TColor($00F8E3D1);


    // красим одинаковые позиции
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('NN').Index
                );

    if (str_tmp > 1) then
      ACanvas.Brush.Color := st_dubls.Color; // TColor($00C080FF);


    // красим сторнированные
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('STORNED_DATA').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := st_storn.Color; // TColor($000080FF);


    // красим неиспользуемые позиции если таковые есть, а их не должно быть
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('notuse').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := st_NotUse.Color; // st_NotUse.Color;


    // красим непечатаемые позиции на стикирах
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('NOPRINT').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := st_noPrint.Color; // st_noPrint.Color;


    // красим непечатаемые позиции на стикирах
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('PARENT').Index
                );

    if (str_tmp <> NULL) then
      ACanvas.Brush.Color := TColor($00A4FFFF);


    // красим минусовые позиции в обычном инвойсе, который не будут приходованы
    str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('UNITS').Index
                );

    if (str_tmp < 0) and (grid_invoices_vIS_MINUS.EditValue = 0) then
    begin
      ACanvas.Brush.Color := st_bQuantity.Color;
      ACanvas.Font.Color := clWhite;
    end;

  end;

  {
  str_tmp := grid_done_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('NOTUSE').Index
                );

  if (str_tmp = 1) then
    ACanvas.Brush.Color := stNotUse.Color;
   }
end;



procedure TInvoiceRecognise.grid_done_vKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=' ') then
    do_check;
end;


// Красим грид с сырцом по разнесенным позициям
procedure TInvoiceRecognise.grid_fresh_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  str_tmp : variant;
begin
  if (not AViewInfo.Selected) then
  begin
    str_tmp := grid_fresh_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_fresh_v.GetColumnByFieldName('recognised').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := st_recognized.TextColor;
  end;
end;

procedure TInvoiceRecognise.do_check;
var val: integer;
begin
  try
     val := DM.InvoiceDataD_CHECK.AsInteger;
     DM.InvoiceData.Edit;
     DM.InvoiceDataD_CHECK.AsInteger := abs(val - 1);
     DM.InvoiceData.Post;
     grid_done_v.ViewData.DataController.GotoNext;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;



//
// Красим грид с инвойсами
//
procedure TInvoiceRecognise.grid_invoices_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  str_tmp, var1 : variant;
begin
  if not AViewInfo.Selected and (grid_invoices_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'IS_MINUS') then
  begin
    // Красим минусовые сырые инвойсы
    str_tmp := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('inv_minus').Index
                );
    var1 :=  grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('SENDED_TO_WAREHOUSE').Index
                );

    if (str_tmp = 2) then
      ACanvas.Brush.Color := TColor($008080FF);
    if (str_tmp = 3) then
      ACanvas.Brush.Color := TColor($00FFCACA);
    if (str_tmp = 3) and (var1 = 0) then
      ACanvas.Brush.Color := TColor($004080FF);
  end;

  if not AViewInfo.Selected and (
    (grid_invoices_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'SENDED_TO_WAREHOUSE')
    or
    (grid_invoices_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'PRICE')
  )
  then
  begin
    str_tmp := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('inv_minus').Index
                );
    if (str_tmp = 1) then
      ACanvas.Brush.Color := clBtnFace;
  end;
end;


//
// Если сырой инвойс то выведем хинт, о необходимости его завершения
//
procedure TInvoiceRecognise.grid_invoices_vIS_MINUSGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
var str_tmp, var1: Variant;
    str_text: string;
begin
  try
      str_tmp := grid_invoices_v.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('inv_minus').Index
                );
      var1 :=  grid_invoices_v.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('SENDED_TO_WAREHOUSE').Index
                );
      if (str_tmp = 2) then str_text := str_text + 'Необходимо завершить формирование клейма.';
      if (str_tmp = 3) and (var1 = 0) then str_text := str_text + 'Необходимо подгрузить инвойс в цены и склад.';

    AHintText := str_text;
  except
    AHintText := '';
  end;
end;


// Красим инвойсы которые в ценах, но цены еще не сделаны
procedure TInvoiceRecognise.grid_invoices_vPRICECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  str_tmp : variant;
begin
  if (not AViewInfo.Selected) then
  begin
    str_tmp := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('price_done').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := TColor($0000FF80);
  end;
end;

//
//  Выделяем все у готовых инвойсов
//
procedure TInvoiceRecognise.BitBtn5Click(Sender: TObject);
begin

  grid_done_v.DataController.DataSource := nil;
  with DM.InvoiceData do
  Begin
      First;
      while not eof do
        Begin
          Edit;
          FieldByName('D_CHECK').AsInteger := 1;
          Post;
          next;
        End;
  End;
  grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
  grid_done.SetFocus;

end;


//
//  Убираем выделенное у готовых инвойсов
//
procedure TInvoiceRecognise.BitBtn6Click(Sender: TObject);
begin

  grid_done_v.DataController.DataSource := nil;
  with DM.InvoiceData do
  Begin
      First;
      while not eof do
        Begin
          Edit;
          FieldByName('D_CHECK').AsInteger := 0;
          Post;
          next;
        End;
  End;
  grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
  grid_done.SetFocus;

end;


//
//  Нажатие F4 (добавление)
//
procedure TInvoiceRecognise.A_F4Execute(Sender: TObject);
begin
  If (grid_invoices.IsFocused = true) and (tlb_add.Enabled = true) then BitBtn2Click(self);
  If (grid_done.IsFocused = true) and (tlb_addnew.Enabled = true) then BitBtn4Click(self);
end;


//
//  Нажатие F2 (редактирование)
//
procedure TInvoiceRecognise.A_F2Execute(Sender: TObject);
begin
  If (grid_invoices.IsFocused = true) and (tlb_edit.Enabled = true) then BitBtn3Click(self);
  If (grid_done.IsFocused = true) and (tlb_editnew.Enabled = true) then BitBtn8Click(self);
end;

//
//  Нажатие F3 (удаление)
//
procedure TInvoiceRecognise.A_F3Execute(Sender: TObject);
begin
  If (grid_invoices.IsFocused = true) and (tlb_del.Enabled = true) then Button6Click(self);
  If (grid_fresh.IsFocused = true) and (tlb_del_m.Enabled = true) then Button2Click(self);
  If (grid_done.IsFocused = true) and (tlb_delnew.Enabled = true) then BitBtn7Click(self);
end;



//
//  Выделенным проставляем
//
procedure TInvoiceRecognise.BitBtn9Click(Sender: TObject);
VAR
  CUST_COEF, GTD, SENDED_TO_WAREHOUSE, C_def : Variant;
  sql_str : String;
  INVOICE_DATA_ID : Variant;
begin

if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
  or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger = 1 )
then
  MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING)
else
begin
  INVOICE_DATA_ID := grid_done_v.DataController.DataSet.FieldByName('INVOICE_DATA_ID').Value;

  DM.InvoiceData.Filter := 'D_CHECK = 1';
  DM.InvoiceData.Filtered := true;

  if DM.InvoiceData.RecordCount > 0 then
  begin
      CUST_COEF           := null;
      GTD                 := null;
      SENDED_TO_WAREHOUSE := null;
      C_def := grid_invoices_v.DataController.DataSet.FieldByName('COUNTRY_GTD').Value;
      if GetSetInvoParams(CUST_COEF,GTD,SENDED_TO_WAREHOUSE,C_def) then
      Begin
        try

        with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.SET_TO_INV_DONE(:GTD_, :CUST_COEF_, :SENDED_TO_WAREHOUSE_, :c_def_, :id_str_); end;');
          if GTD <> null then
          begin
            ParamByName('GTD_').AsString := GTD;
            ParamByName('c_def_').AsInteger := C_def;
          end
          else
          begin
            ParamByName('GTD_').AsString := '';
            ParamByName('c_def_').Value := null;
          end;

          if CUST_COEF <> null then
            ParamByName('CUST_COEF_').AsFloat := CUST_COEF
          else
            ParamByName('CUST_COEF_').AsFloat := 0;

          if SENDED_TO_WAREHOUSE <> null then
            ParamByName('SENDED_TO_WAREHOUSE_').AsInteger := SENDED_TO_WAREHOUSE
          else
            ParamByName('SENDED_TO_WAREHOUSE_').AsInteger := 0;

          sql_str := '';
          grid_done_v.DataController.DataSource := nil;

            DM.InvoiceData.First;
            while not DM.InvoiceData.eof do
            Begin
              sql_str := DM.InvoiceData.fieldByName('INVOICE_DATA_ID').AsString;
              ParamByName('id_str_').AsString := sql_str;
              Execute;
              DM.InvoiceData.next;
            End;

          grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
        End;

        except
          on E: Exception do
          begin
            ShowMessage(E.Message);
            DM.InvoiceData.Filter := '';
            DM.InvoiceData.Filtered := false;
            end;
        end;
    end;
  end;

  DM.InvoiceData.Filter := '';
  DM.InvoiceData.Filtered := false;
  DM.InvoiceData.Refresh;
  DM.InvoiceData.Locate('INVOICE_DATA_ID',INVOICE_DATA_ID,[]);

end;
grid_done.SetFocus;

end;


//
//  Просмотр полной информации по номенклатуре
//
procedure TInvoiceRecognise.grid_done_vCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_done_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
end;


procedure TInvoiceRecognise.grid_done_vCOMPILED_NAME_OTDELGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
var str_tmp: Variant;
    str_text: string;
begin
  try
      str_tmp := grid_done_v.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, grid_done_v.GetColumnByFieldName('PARENT').Index
                );
      if (str_tmp <> NULL) then str_text := str_text + 'Коррекция в инвйосе №' + VarToStr(str_tmp);

    AHintText := str_text;
  except
    AHintText := '';
  end;
end;


procedure TInvoiceRecognise.grid_done_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_done_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
  end;
end;



//
// Запись в EXCEL таблиц
//
procedure TInvoiceRecognise.tlb_save1Click(Sender: TObject);
begin
  if (DM.InvoiceRegister.Active = false) or (DM.InvoiceRegister.RecordCount = 0) or (grid_invoices_v.ViewData.RecordCount = 0) then
      exit;

  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_invoices, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;

procedure TInvoiceRecognise.tlb_save2Click(Sender: TObject);
begin
  if (DM.InvoiceAsIs.Active = false) or (DM.InvoiceAsIs.RecordCount = 0) or (grid_fresh_v.ViewData.RecordCount = 0) then
      exit;

  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_fresh, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;

procedure TInvoiceRecognise.tlb_save3Click(Sender: TObject);
begin
  if (DM.InvoiceData.Active = false) or (DM.InvoiceData.RecordCount = 0) or (grid_done_v.ViewData.RecordCount = 0) then
      exit;

  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_done, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;




//
//  Печать
//
procedure TInvoiceRecognise.BitBtn12Click(Sender: TObject);
begin
//  PrintDBGridEh1.DBGridEh := grid_done;
//  PrintDBGridEh1.Preview;
end;



//
//  Переключение по ТАБ
//
procedure TInvoiceRecognise.ASwitchExecute(Sender: TObject);
begin
  if (grid_invoices.IsFocused = true) then grid_fresh.SetFocus
  else
  begin
    if (grid_fresh.IsFocused = true) then grid_done.SetFocus
    else grid_invoices.SetFocus;
  end;
end;


//убрать из заказов
procedure TInvoiceRecognise.Azakexecute(Sender: TObject);
var id: integer;
begin
  if not DM.InvoiceRegister.Active or DM.InvoiceRegister.IsEmpty then exit;

  id := DM.InvoiceRegisterINV_ID.AsInteger;
  try
      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('update INVOICE_REGISTER set status=abs(status-2) where INV_ID='+inttostr(id));
      dm.SelQ.Execute;
      dm.STAR_DB.Commit;
      btn_refreshClick(nil);
  except
    on E: Exception do Application.MessageBox (PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;

//
//  автоматическое распознование инвойса
//
procedure TInvoiceRecognise.tlb_autoClick(Sender: TObject);
VAR
  H_CODE,H_NAME : String;
  sql_seek_rec : WideString;
  i : integer;
  OptRes : TOptSet;
begin
  if (DM.InvoiceAsIs.RecordCount = 0) then ShowMessage('Нет данных для распознования!')
  else
  begin

  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 ) then
      MessageBox (Handle,'Инвойс уже подгружен на склад. Операции невозможны.', 'Внимание!', MB_ICONWARNING)
  else
  begin


  RecognitionOptionsF := TRecognitionOptionsF.Create(Application);
  RecognitionOptionsF.CheckBox1.Checked := true;
  RecognitionOptionsF.CheckBox2.Checked := true;
  OptRes := RecognitionOptionsF.GetRecognitionOptioons();

  // Если нажата CANCEL или не выбрано ничего
  if OptRes = [] then
  Begin
      MessageBox(Handle,'Необходимо ввести хотябы один параметр обработки!','Внимание',MB_ICONWARNING);
      Exit;
  end
  else
  begin

  // Оставить как есть и не факаться ибо все равно через VIEW
     with DM.SeekNomenclature do
     Begin
        SQL.Clear;
        SQL.Add(' SELECT n_id FROM NOMENCLATURE_MAT_VIEW');
        AddWhere('ID_DEPARTMENTS = :ID_DEPARTMENTS and id_office in (1,const_office)');
        if 1 in OptRes then begin AddWhere('UPPER(H_CODE) = UPPER(:SKU)');          end;
        if 2 in OptRes then begin AddWhere('UPPER(H_NAME) = UPPER(:DESCRIPTION)');  end;
        if 3 in OptRes then begin AddWhere('UPPER(REMARKS) = UPPER(:REMARKS)');     end;
        if 4 in OptRes then begin AddWhere('nvl(pack,0) = nvl(:NOM_PACK,0)');     end;
        ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
        Open;
     End;

     sql_seek_rec := 'SELECT INVOICE_DATA_ID FROM INVOICE_DATA WHERE INVOICE_DATA_AS_IS_ID = :INVOICE_DATA_AS_IS_ID AND STORNED_DATA = 0';
     with DM.SeekRecognised do
     Begin
       Close;
       SQL.Clear;
       SQL.Add(sql_seek_rec);
       Open;
     End;

      panel_progress.Left           := trunc(InvoiceRecognise.Width / 2) - 300;
      panel_progress.Top            := trunc(InvoiceRecognise.Height / 2) - 30;
      panel_progress.Visible        := true;
      DM.InvoiceAsIs.First;
      cxProgressBar1.Properties.Min := 0;
      cxProgressBar1.Position       := 0;
      cxProgressBar1.Properties.Max := DM.InvoiceAsIs.RecordCount;
      panel_progress.Repaint;

      DM.InvoiceAsIs.First;
      try
        While not DM.InvoiceAsIs.Eof do
        Begin
          if DM.SeekRecognised.IsEmpty then
          Begin
            H_CODE := DM.InvoiceAsIsSKU.AsString;
            H_NAME := DM.InvoiceAsIsDESCRIPTION.AsString;

            if DM.SeekNomenclature.IsEmpty = false then
            Begin
                With DM.SelQ do
                Begin
                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
                  ParamByName('IN_INV_ID').Value                    := DM.InvoiceRegister.FieldByName('INV_ID').Value;
                  ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := DM.InvoiceAsIs.FieldByName('INVOICE_DATA_AS_IS_ID').Value;
                  ParamByName('IN_N_ID').Value                      := DM.SeekNomenclature.FieldByName('N_ID').Value;
                  ParamByName('IN_UNITS').Value                     := DM.InvoiceAsIs.FieldByName('UNITS').Value;
                  ParamByName('IN_PRICE_PER_UNIT').Value            := DM.InvoiceAsIs.FieldByName('AMOUNT_PER_UNIT').Value;
                  ParamByName('IN_TOTAL_SUM').Value                 := DM.InvoiceAsIs.FieldByName('TOTAL_AMOUNT').Value;
                  ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').Value;
                  ParamByName('IN_STORN').AsInteger                 := 0;
                  ParamByName('IN_GTD').Value                       := NULL;
                  ParamByName('IN_GTD_COUNTRY').AsInteger           := DM.InvoiceRegister.FieldByName('COUNTRY_GTD').AsInteger;

                  ParamByName('IN_NEW').AsInteger                   := DM.InvoiceAsIs.FieldByName('NOM_NEW').Value;
                  ParamByName('IN_SPEC').AsInteger                  := DM.InvoiceAsIs.FieldByName('NOM_SPECIAL').Value;
                  ParamByName('IN_CLIENT').AsString                 := DM.InvoiceAsIs.FieldByName('CLIENT').AsString;

                  ParamByName('IN_parent').value                    := NULL;

                  ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
                  Execute;

                  // Вызов процедуры по смене веса при его наличии
                  if (DM.InvoiceAsIsVOLUME.AsFloat <> 0) or (DM.InvoiceAsIsVOLDRY.AsFloat <> 0) then
                  begin
                    Close;
                    SQL.Clear;
                    Params.Clear;
                    SQL.Text := 'begin INVOICE2_PKG.CHANGE_VOLUME(:N_ID_, :VOLUME_, :VOLDRY_); end;';
                    ParamByName('N_ID_').AsInteger   := DM.SeekNomenclature.FieldByName('N_ID').Value;
                    ParamByName('VOLUME_').Value     := DM.InvoiceAsIsVOLUME.AsFloat;
                    ParamByName('VOLDRY_').Value     := DM.InvoiceAsIsVOLDRY.AsFloat;
                    Execute;
                  end;

                  // Вызов процедуры по смене веса при его наличии
                  Close;
                  SQL.Clear;
                  Params.Clear;
                  SQL.Text := 'begin INVOICE2_PKG.CHANGE_MARKS(:N_ID_, :new_, :end_, :start_ ); end;';
                  ParamByName('N_ID_').AsInteger  := DM.SeekNomenclature.FieldByName('N_ID').Value;
                  ParamByName('new_').Value       := DM.InvoiceAsIsNOM_NEW.AsInteger;
                  ParamByName('end_').Value       := DM.InvoiceAsIsNOM_END.AsInteger;
                  ParamByName('start_').Value     := DM.InvoiceAsIsNOM_START.AsInteger;
                  Execute;

                End;
                DM.InvoiceRegister.RefreshRecord;
            End;

          End; // if DM.SeekRecognised.IsEmpty then

          DM.InvoiceAsIs.Next;
          cxProgressBar1.Position := DM.InvoiceAsIs.RecNo;
          cxProgressBar1.Repaint;
        End; // While not DM.InvoiceAsIs.Eof do

     finally
      panel_progress.Visible := false;
      DM.SeekNomenclature.Close;
      DM.SeekRecognised.Close;
      DM.InvoiceAsIs.Refresh;
      DM.InvoiceData.Refresh;
      i := DM.InvoiceRegisterINV_ID.AsInteger;
      DM.InvoiceRegister.Refresh;
      //DM.InvoiceRegister.Locate('INV_ID',i,[]);
      grid_invoices_v.DataController.LocateByKey(i);
     End;
  end;
  RecognitionOptionsF.Free;
end;
end;

grid_invoices.SetFocus;
end;


//
//  Делаем минусовой клейм
//
procedure TInvoiceRecognise.btn_minusClick(Sender: TObject);
var sql_str: string;
    res,ResText : Variant;
    new_id, old_id, param_, s_id_: integer;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 )
    {or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger > 0 )} then
      MessageBox (Handle,'Нет данных для создания минусового инвойса.', 'Внимание!', MB_ICONWARNING)
  else
  begin
    if MessageDlg('Создать корректировочный инвойс?',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      old_id := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
      s_id_  := grid_invoices_v.DataController.DataSet.FieldByName('S_ID_DEFAULT').AsInteger;
      param_ := 0;

      try
        DM.InvoiceData.Filter := 'D_CHECK = 1';
        DM.InvoiceData.Filtered := true;
        if (DM.InvoiceData.RecordCount = 0) then
          MessageBox (Handle,'Нет отмеченных позиций для создания минусового инвойса.', 'Внимание!', MB_ICONWARNING)
        else
        begin

            // Создаем временный минусовой инвойс с отмеченными позициями в основном инвойсе поставщика
              with DM.SelQ do
              Begin
                res := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
                Close;
                SQL.Clear;
                SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
                ParamByName('IN_INV_DATE').AsDate           := Now();
                ParamByName('IN_COMMENTS').AsString         := 'Корректировка от инвойса №'+grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsString+' № поставщика - '+grid_invoices_v.DataController.DataSet.FieldByName('SUPPLIER_NUMBER').AsString;
                ParamByName('IN_SUP_INV_DATE').AsDate       := grid_invoices_v.DataController.DataSet.FieldByName('SUPPLIER_DATE').AsDateTime;
                ParamByName('IN_SUP_NUMBER').AsString       := grid_invoices_v.DataController.DataSet.FieldByName('SUPPLIER_NUMBER').AsString;
                ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
                ParamByName('IN_INV_MINUS').AsInteger       := 2;
                ParamByName('IN_S_ID').AsInteger            := s_id_;
                ParamByName('in_INV_ID').AsInteger          := res;
                ParamByName('IN_FILE_').AsString            := '';
                ParamByName('IN_OFFICE_ID').AsInteger       := dm.id_office;
                ParamByName('IN_country_gtd').AsInteger     := 0; // icb_GTDcountry.EditValue;
                Execute;
                res := ParamByName('in_INV_ID').Value;
                if res = -1 then
                  MessageBox (Handle, 'Произошла ошибка при добавлении инвойса!','Ощибка', MB_ICONERROR)
                else
                Begin
                  new_id := res;
//                  DM.InvoiceRegister.Refresh;
//                  DM.InvoiceRegister.Locate('INV_ID',res,[]);
                End;
              End;

              DM.SelQ.Close;
              DM.SelQ.SQL.Clear;
              DM.SelQ.SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');

              with DM.InvoiceData do
              Begin
                First;
                while not eof do
                Begin
                  if fieldByName('STORNED_DATA').AsInteger = 0 then
                  begin
                    DM.SelQ.ParamByName('IN_INV_ID').AsInteger                := new_id;
                    DM.SelQ.ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := NULL;  //fieldByName('n_id').AsInteger
                    DM.SelQ.ParamByName('IN_N_ID').AsInteger                  := fieldByName('n_id').AsInteger;
                    DM.SelQ.ParamByName('IN_UNITS').AsInteger                 := fieldByName('UNITS').AsInteger; //UNITS;
                    DM.SelQ.ParamByName('IN_PRICE_PER_UNIT').AsFloat          := fieldByName('PRICE_PER_UNIT').AsFloat; //PRICE_PER_UNIT;
                    DM.SelQ.ParamByName('IN_TOTAL_SUM').AsFloat               := fieldByName('TOTAL_SUM').AsFloat; //TOTAL_SUM;
                    DM.SelQ.ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := NULL;
                    DM.SelQ.ParamByName('IN_STORN').AsInteger                 := 0;
                    DM.SelQ.ParamByName('IN_GTD').Value                       := fieldByName('gtd').AsString;
                    DM.SelQ.ParamByName('IN_GTD_COUNTRY').AsInteger           := fieldByName('GTD_COUNTRY').AsInteger;

                    DM.SelQ.ParamByName('IN_NEW').AsInteger                   := FieldByName('NOM_NEW').AsInteger;
                    DM.SelQ.ParamByName('IN_SPEC').AsInteger                  := FieldByName('NOM_SPECIAL').AsInteger;
                    DM.SelQ.ParamByName('IN_CLIENT').AsString                 := FieldByName('CLIENT').AsString;

                    DM.SelQ.ParamByName('IN_parent').AsInteger                := FieldByName('INVOICE_DATA_ID').AsInteger;

                    DM.SelQ.ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
                    DM.SelQ.Execute;
                  end;
                  next;
                End;
              End;

  DM.InvoiceAsIs.MasterSource := nil;
  DM.InvoiceData.MasterSource := nil;
  DM.InvoiceRegister.Refresh;
  DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
  DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
              //DM.InvoiceRegister.Locate('INV_ID',new_id,[]);
              grid_invoices_v.DataController.LocateByKey(new_id);

        end;
      finally
        DM.InvoiceData.Filter := '';
        DM.InvoiceData.Filtered := false;
      end;

    end;
  end;

end;


//
//  Заканчиваем клейм
//
procedure TInvoiceRecognise.btn_cleimClick(Sender: TObject);
var id: integer;
    res, ResText: variant;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 )
    or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 2 ) then
      MessageBox (Handle,'Нет данных для окончания клейма.', 'Внимание!', MB_ICONWARNING)
  else
  begin
    if MessageDlg('Закончить клейм?'+#10+'В дальнейшем редактирование будет невозможно.',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
      id := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;

              with DM.SelQ do
              Begin
                res := 0;
                Close;
                SQL.Clear;
                SQL.Add('begin INVOICE_PKG.INV_DONE_MINUS(:in_INV_ID, :in_INV_PRIME, :OUT_RES, :OUT_TEXT); end;');

                ParamByName('in_INV_ID').AsInteger     := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
                ParamByName('in_INV_PRIME').AsInteger  := grid_invoices_v.DataController.DataSet.FieldByName('minus_inv_id').AsInteger;
                ParamByName('OUT_RES').AsInteger       := res;
                ParamByName('OUT_TEXT').AsString       := ResText;
                Execute;
                res := ParamByName('OUT_RES').Value;
                ResText := ParamByName('OUT_TEXT').Value;

                if res > 0 then
                  MessageBox (Handle, PChar(VarToStr(ResText)),'Готово', MB_ICONINFORMATION);

                if res = -1 then
                  MessageBox (Handle, PChar('Произвошла ошибка при завершении клейма!'#10+VarToStr(ResText)),'Ощибка', MB_ICONERROR)
                else
                Begin
  DM.InvoiceAsIs.MasterSource := nil;
  DM.InvoiceData.MasterSource := nil;
  DM.InvoiceRegister.Refresh;
  DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
  DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
                  //DM.InvoiceRegister.Locate('INV_ID',id,[]);
                  grid_invoices_v.DataController.LocateByKey(id);
                End;
              End;

    end;
  end;
end;


// Печать разноски
procedure TInvoiceRecognise.btn_printsClick(Sender: TObject);
begin
  try
    DM.CDS_PRINT.Close;
    DM.CDS_PRINT.ParamByName('v_inv_id').AsInteger := DM.InvoiceRegisterINV_ID.AsInteger;
    DM.CDS_PRINT.Open;
    DM.CDS_PRINT.Filter := DM.InvoiceData.Filter;
    DM.CDS_PRINT.Filtered := (DM.CDS_PRINT.Filter <> '');
    
    DM.frx_print.LoadFromFile(ProgPath + '/Reps/invoice.fr3');
    DM.frx_print.ShowReport;
    DM.CDS_PRINT.Close;

  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


//
//  сформировать бронь
//
procedure TInvoiceRecognise.bb_reservClick(Sender: TObject);
var i, v_n_id, id_client_, id_: integer;
    errstr: string;
    CUR_DATE: TDateTime;
begin

  if (DM.InvoiceData.Active = false) or (DM.InvoiceData.RecordCount = 0) then
  begin
    MessageBox(Handle,'Нет данных для создания брони.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  try
    DM.InvoiceData.Filter   := 'D_CHECK = 1';
    DM.InvoiceData.Filtered := true;

    if (DM.InvoiceData.RecordCount = 0) then
    begin
      MessageBox(Handle,'Нет данных для создания брони.', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

    grid_done_v.DataController.DataSet.DisableControls;
    errstr := '';
    DM.InvoiceData.First;

    // Если не сформированы цены, то пробежимся по складу и узнаем их
    if grid_invoices_vPRICE.EditValue = 0 then
    begin
      i := 0;
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('select count(1) as nn from price_list where n_id=:v_n_id');

      while not DM.InvoiceData.Eof do
      begin
        DM.SelQ.Close;
        DM.SelQ.ParamByName('v_n_id').AsInteger := DM.InvoiceDataN_ID.AsInteger; //v_n_id;
        DM.SelQ.Open;
        if (DM.SelQ.FieldByName('nn').AsInteger = 0) then
          errstr := errstr + 'Нет цены на товар: '+ DM.InvoiceDataF_NAME_RU.AsString + #10;
        DM.InvoiceData.Next;
      end;
    end;

    if (errstr <> '') then
    begin
      MessageBox(Handle, PChar(errstr), 'Внимание!', MB_ICONSTOP);
      exit;
    end;
    

    if MessageDlg('Сформировать бронь?',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
    begin
        try
          cursor     := crHourGlass;
          id_client_ := 0;
          clientchoosForm := TclientchoosForm.Create(Application);
          clientchoosForm.block_client_ := 0;
          clientchoosForm.Caption       := 'Выберите клиента для брони';
          if clientchoosForm.showmodal = mrOk then
          begin
            id_client_ := clientchoosForm.choised_client_;
            if (id_client_ = 0) or (clientchoosForm.block_client_ = 1) then
              MessageBox(Handle, 'Клиент заблокирован бухгалтерией!'#10'Бронь не может быть сформированна', 'Предупреждение', MB_ICONSTOP)
            else
            begin
              try
                DM.StorProc.StoredProcName := 'SALES_PKG.RESERV_NEW';
                DM.StorProc.Prepare;
                DM.StorProc.ParamByName('id_').AsInteger           := 0;
               	DM.StorProc.ParamByName('id_clients_').AsInteger   := id_client_;
                DM.StorProc.ParamByName('d_date_').AsDate          := clientchoosForm.de_input.EditValue;
                DM.StorProc.ParamByName('state_').AsInteger        := 1;
                DM.StorProc.ParamByName('status_').AsInteger       := 0;
                DM.StorProc.ParamByName('id_dep_').AsInteger       := CUR_DEPT_ID;
                DM.StorProc.Execute;

                id_ := DM.StorProc.ParamByName('id_').AsInteger;
                if id_ > 0 then
                begin
                  DM.SelQ.Close;
                  DM.SelQ.SQL.Clear;
                  DM.SelQ.SQL.Add('begin INVOICE_PKG.move_to_reserv(:v_n_id, :v_quant, :v_from, :v_inv); end;');
                  DM.SelQ.Prepare;
                  DM.SelQ.ParamByName('v_from').AsInteger := grid_invoices_vPRICE.EditValue;
                  DM.SelQ.ParamByName('v_inv').AsInteger  := grid_invoices_vINV_ID_.EditValue;

                  DM.InvoiceData.First;
                  while not DM.InvoiceData.Eof do
                  begin
                    DM.SelQ.Close;
                    DM.SelQ.ParamByName('v_n_id').AsInteger := DM.InvoiceDataN_ID.AsInteger; //v_n_id;
                    DM.SelQ.ParamByName('v_quant').AsInteger := DM.InvoiceDataUNITS.AsInteger; //v_n_id;
                    DM.SelQ.Execute;
                    DM.InvoiceData.Next;
                  end;

                  DM.SelQ.Close;
                  DM.SelQ.SQL.Clear;
                  DM.SelQ.SQL.Add('begin SALES_PKG.RESERV_DATA(:ID_ORDERS_CLIENTS_); end;');
                  DM.SelQ.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_;
                  DM.SelQ.Execute;
                  MessageBox(Handle, PChar('Бронь с номером '+inttostr(id_)+' успешно сформирована'), 'Результат', MB_ICONINFORMATION);
                end;

             	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при формировании накладной бронирования!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
          end;
          end;
        finally
          cursor     := crDefault;
          clientchoosForm.Free;
        end;
    end;

  finally
    DM.InvoiceData.Filter   := '';
    DM.InvoiceData.Filtered := false;
    grid_done_v.DataController.DataSet.EnableControls;
    grid_done.SetFocus;
  end;
end;


// Убрать из пачки
procedure TInvoiceRecognise.bb_pack_delClick(Sender: TObject);
begin
  SetPack(0);
end;


// Объединить в пачку
procedure TInvoiceRecognise.bb_pack_insClick(Sender: TObject);
begin
  SetPack(1);
end;


//
// Работаем с пачками
//
procedure TInvoiceRecognise.SetPack(param_: integer);
var V_INV_ID, IPP_ID: integer;
begin
try
  V_INV_ID := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').Value;

  DM.InvoiceRegister.Filter := 'D_CHECK = 1';
  DM.InvoiceRegister.Filtered := true;

  if DM.InvoiceRegister.RecordCount > 0 then
  begin

    {*** Сделаем проверку ***}
      grid_invoices_v.DataController.DataSet.First;
      while not grid_invoices_v.DataController.DataSet.Eof do
      begin
         if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
            or ( grid_invoices_v.DataController.DataSet.FieldByName('PRICE').AsInteger = 1 )
            or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger > 0 )
         then
         begin
           MessageBox (Handle,'Объединять и разъединять можно только не подгруженные в цены и склад инвойсы.', 'Внимание!', MB_ICONWARNING);
           exit;
         end;

         if (grid_invoices_v.DataController.DataSet.FieldByName('IPP_ID').IsNull) and (param_ = 0) then
         begin
           MessageBox (Handle,'Нет выбран инвойс с пачкой.', 'Внимание!', MB_ICONWARNING);
           exit;
         end;

         grid_invoices_v.DataController.DataSet.Next;
      end;
    {************************}


    IPP_ID := 0;
    if (param_ = 1) then
      IPP_ID := GetIPP_ID()
    else
      IPP_ID := grid_invoices_v.DataController.DataSet.FieldByName('IPP_ID').AsInteger;

    if (IPP_ID > 0) then
    begin
      grid_invoices_v.DataController.DataSet.DisableControls;
      grid_invoices_v.DataController.DataSet.First;

      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('begin INVOICE_PKG.SET_INV_TO_PACK(:V_IPP_ID, :V_PARAM, :V_INV_ID); end;');
      if (param_ = 1) then
        DM.SelQ.ParamByName('V_IPP_ID').AsFloat := IPP_ID
      else
        DM.SelQ.ParamByName('V_IPP_ID').AsFloat := 0;
      DM.SelQ.ParamByName('V_PARAM').AsFloat  := param_;

      while not grid_invoices_v.DataController.DataSet.Eof do
      begin
         DM.SelQ.ParamByName('V_INV_ID').AsFloat := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
         DM.SelQ.Execute;
         grid_invoices_v.DataController.DataSet.Next;
      end;

      DM.STAR_DB.Commit;
      grid_invoices_v.DataController.DataSet.Refresh;
      grid_invoices_v.DataController.DataSet.EnableControls;
    end;
  end
  else MessageBox (Handle,'Необходимо отметить строки для объединения / разъединения.', 'Внимание!', MB_ICONWARNING);

finally
  DM.InvoiceRegister.Filter := '';
  DM.InvoiceRegister.Filtered := false;
  DM.InvoiceRegister.Refresh;
  //DM.InvoiceRegister.Locate('INV_ID',V_INV_ID,[]);
  grid_invoices_v.DataController.LocateByKey(V_INV_ID);
  grid_invoices.SetFocus;
end;

end;














    procedure TInvoiceRecognise.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    begin
      with cds do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_id').AsInteger := old_id;
        ParamByName('p_cursor').AsCursor;
        Open;

        if not IsEmpty then
        begin
          First;
          while not eof do
          begin
            WriteLn(f, Fields[0].AsString);
            Next;
          end;
        end;
        Close;
      end;
    end;


procedure TInvoiceRecognise.lcbSuplierChange(Sender: TObject);
begin
  DM.def_suplier := lcbSuplier.KeyValue;
  ReactivateOraQuery(DM.Nomenclature2);
end;

// Экспорт инвойсов
procedure TInvoiceRecognise.btnExportInvoiceClick(Sender: TObject);
var sql_str: string;
    res,ResText : Variant;
    new_id, old_id, param_, s_id_, p_price: integer;
    F_CSV: TextFile;
begin

  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта инвойса инвойса.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;
{
  if ( grid_invoices_v.DataController.DataSet.FieldByName('sended_to_warehouse').AsInteger = 1 )
  then
  begin
    MessageBox (Handle,'Инвойс уже подгружен на склад. Формирование инвойса не возможно', 'Внимание!', MB_ICONWARNING);
    exit;
  end;
}
  DM.InvoiceData.Filter := 'D_CHECK = 1';
  DM.InvoiceData.Filtered := true;
  if (DM.InvoiceData.RecordCount = 0) then
  begin
    MessageBox (Handle,'Нет отмеченных позиций для создания экспорта.', 'Внимание!', MB_ICONWARNING);
    DM.InvoiceData.Filter := '';
    DM.InvoiceData.Filtered := false;
    exit;
  end;

  if MessageDlg('Создать экспортный инвойс для регионов?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  p_price := 0;

  if MessageDlg('Включить цены инвойса в выходной файл? Иначе цены будут взяты с текущего склада!',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
     p_price := 1;

  old_id := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;


  if not DirectoryExists(ProgPath+'\OUT\'+IntToStr(old_id)) then
  if not CreateDir(ProgPath+'\OUT\'+IntToStr(old_id)) then
  begin
    MessageBox (Handle,'Ошибка при создании директории.', 'Ошибка!', MB_ICONERROR);
    exit;
  end;

  try
    screen.cursor := crHourGlass;

    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(old_id)+'\'+IntToStr(old_id)+'_'+CUR_DEPT_NAME+'_export.sql');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';
    //WriteLn(F_CSV, 'Alter session set NLS_NUMERIC_CHARACTERS=''.,'';');
    dm.SelQ.close;
    dm.SelQ.sql.Clear;
    dm.SelQ.sql.Add(sql_str);
    dm.SelQ.Execute;


    sql_str := 'begin sync_pkg.make_types(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_subtypes(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_flower_names(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_flower_name_trans(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_colors(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_countries(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_suppliers(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);
    
    sql_str := 'begin sync_pkg.make_nomenclature(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_nom_spec(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);


    sql_str := 'begin sync_pkg.make_nomenclature_sync(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);
//    WriteLn(f, 'begin sync_pkg.make_nom_spec(:p_inv_id, :p_cursor); end;');

    sql_str := 'begin sync_pkg.make_inv_register(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_inv_data(:p_inv_id, '+IntToStr(p_price)+', :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_pricelist_index(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_pricelist_data(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, old_id);

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);
    DM.InvoiceData.Filter := '';
    DM.InvoiceData.Filtered := false;
    pnl_msg.free;
    ShellExecute(Handle, nil, PChar(ProgPath+'\OUT\'+IntToStr(old_id)), nil, nil, SW_RESTORE);
  end;

end;


// Экспорт инвойса по линку
procedure TInvoiceRecognise.btnExportInvoice2Click(Sender: TObject);
var p_price, old_id, p_office: integer;
    sql_str: string;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта инвойса инвойса.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Данные будут напрямую выгружены на региональный сервер?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  if not grid_invoices_v.DataController.DataSet.FieldByName('OFFICE').IsNull then
     if MessageDlg('Накладная уже выгружена в регион. Экспортировать еще раз?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then Exit;

  p_price := 0;

  if MessageDlg('Включить цены инвойса в выходной файл? Иначе цены будут взяты с текущего склада!',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
     p_price := 1;

  old_id := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;

  p_office := frmFilials.OpenForSelect;

  if (p_office = -1) then
  begin
    MessageBox (Handle,'Неуказан филиал для отправки.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  try
    screen.cursor := crHourGlass;
    sql_str := 'begin sync_link_pkg.make_out_invoice(:p_inv_str, :p_price, :p_office, :p_res); end;';
      with dm.SelQ do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_str').AsInteger := old_id;
        ParamByName('p_price').AsInteger   := p_price;
        ParamByName('p_office').AsInteger  := p_office;
        ParamByName('p_res').AsString      := '';
        Execute;
      end;
    if dm.SelQ.ParamByName('p_res').AsString = '' then
      MessageBox (Handle,'Формирование инвойса завершено успешно.', 'Результат', MB_ICONINFORMATION)
    else
      MessageBox (Handle, PChar(dm.SelQ.ParamByName('p_res').AsString), 'Результат', MB_ICONWARNING);
  finally
    screen.cursor := crDefault;
  end;

end;



// Импорт инвойса
procedure TInvoiceRecognise.btnImportInvoiceClick(Sender: TObject);
var F_CSV: TextFile;
    proc_text: string;
begin
  if odInvoice.Execute then
  begin
    try
      screen.cursor := crHourGlass;

      pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      AssignFile(F_CSV, odInvoice.FileName);
      Reset(F_CSV);
      DecimalSeparator := '.';
      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('Alter session set NLS_NUMERIC_CHARACTERS=''.,''');
      dm.SelQ.Execute;


      while not Eof(F_CSV) do
      begin
        ReadLn(F_CSV, proc_text);
        if (trim(proc_text) <> '') then
        begin
          with dm.SelQ do
          begin
            close;
            sql.Clear;
            sql.Add(proc_text);
            Execute;
          end;
        end;
      end;

      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('begin nomenclature_pkg.sync_nomenclature; end;');
      dm.SelQ.Execute;
      dm.SelQ.close;
      pnl_msg.Free;

      aResfresh.Execute;
      MessageBox (Handle,'Файл импортирован успешно.', 'Результат', MB_ICONINFORMATION);

    finally
      screen.cursor := crDefault;
      CloseFile(F_CSV);
      DM.STAR_DB.Commit;
    end;
  end;
end;


// Экспорт в Excel
procedure TInvoiceRecognise.mnExportExcelClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_invoices, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;


// Скопируем значение футера в буфер
procedure TInvoiceRecognise.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_done_v.DataController, 1);
end;

// Скопируем значение ячейкт в буфер
procedure TInvoiceRecognise.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_done_v.DataController, 0);
end;


procedure TInvoiceRecognise.MenuItem3Click(Sender: TObject);
begin
  PoolToClipbaord(grid_invoices_v.DataController, 0);
end;

procedure TInvoiceRecognise.MenuItem4Click(Sender: TObject);
begin
  PoolToClipbaord(grid_invoices_v.DataController, 1);
end;


// Смена шрифта
procedure TInvoiceRecognise.bcb_fontPropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  grid_invoices.Font.Size := bc_fontsize.EditValue;
  grid_done.Font.Size     := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(path+'ini/'+DM.STAR_DB.Username+'_font.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;



// Проверка подгрузки инвойса в регионе
procedure TInvoiceRecognise.btnCheckLoadClick(Sender: TObject);
var sql_str : string;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 )
    or ( grid_invoices_v.DataController.DataSet.FieldByName('OFFICE').IsNull )
  then
  begin
    MessageBox (Handle,'Нет данных для проверки. Необходимо найти выгруженный в регион инвойс.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  try
    screen.cursor := crHourGlass;
    sql_str := 'begin sync_link_pkg.check_invoice_load(:p_inv_id, :p_office, :p_res); end;';
    with dm.SelQ do
    begin
      close;
      sql.Clear;
      sql.Add(sql_str);
      ParamByName('p_inv_id').AsInteger := DM.InvoiceRegister.FieldByName('INV_ID').Value;
      ParamByName('p_office').AsString  := grid_invoices_v.DataController.DataSet.FieldByName('OFFICE').AsString;
      ParamByName('p_res').AsString     := '';
      Execute;
    end;

    if dm.SelQ.ParamByName('p_res').AsString = '' then
      (grid_invoices_v.DataController.DataSet as TOraQuery).RefreshRecord
    else
      MessageBox (Handle, PChar(dm.SelQ.ParamByName('p_res').AsString), 'Результат', MB_ICONWARNING);

  finally
    screen.cursor := crDefault;
  end;

end;





// Копирование инвойса по выбранным позицияю
procedure TInvoiceRecognise.btnCopyInvoiceClick(Sender: TObject);
var sql_str: string;
    res,ResText, p_inv_data_asis : Variant;
    new_id, old_id, param_, s_id_, C_def_: integer;
    InvDate, InvComm, InvSupDate, InvSupNumber, res_val, S_ID, C_def : variant;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false )
    or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 ) then
      MessageBox (Handle,'Нет данных для создания инвойса.', 'Внимание!', MB_ICONWARNING)
  else
  begin
      old_id := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
      s_id_  := grid_invoices_v.DataController.DataSet.FieldByName('S_ID_DEFAULT').AsInteger;
      param_ := 0;
      new_id := 0;
      C_def_ := DM.InvoiceRegister.FieldByName('COUNTRY_GTD').AsInteger;

      try
        DM.InvoiceData.Filter := 'D_CHECK = 1';
        DM.InvoiceData.Filtered := true;
        if (DM.InvoiceData.RecordCount = 0) then
          MessageBox (Handle,'Нет отмеченных позиций для создания инвойса.', 'Внимание!', MB_ICONWARNING)
        else
        begin
          InvDate       := null;
          InvComm       := null;
          InvSupDate    := null;
          InvSupNumber  := null;
          S_ID          := s_id_;
          C_def         := C_def_;

          if GetInvoiceInfo(InvDate,InvComm,InvSupDate,InvSupNumber,S_ID,C_def) then
          Begin
            with DM.SelQ do
            Begin
              Close;
              SQL.Clear;
              SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
              ParamByName('IN_INV_DATE').AsDate           := InvDate;
              ParamByName('IN_COMMENTS').AsString         := InvComm;
              ParamByName('IN_SUP_INV_DATE').AsDate       := InvSupDate;
              ParamByName('IN_SUP_NUMBER').AsString       := InvSupNumber;
              ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
              ParamByName('IN_INV_MINUS').AsInteger       := 0;
              ParamByName('IN_S_ID').AsInteger            := S_ID;
              ParamByName('in_INV_ID').AsInteger          := res_val;
              ParamByName('IN_FILE_').AsString            := '';
              ParamByName('IN_OFFICE_ID').AsInteger       := DM.id_office;
              ParamByName('IN_country_gtd').AsInteger     := C_def; //icb_GTDcountry.EditValue;
              Execute;
              new_id := ParamByName('in_INV_ID').Value;
              if new_id = -1 then
              begin
                ShowMessage('Произошла ошибка при добавлении инвойса!');
                exit;
              end;
            End;
          End;

          if new_id > 0 then
          begin
              DM.SelQ.Close;
              DM.SelQ.SQL.Clear;
              DM.SelQ.SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');

              DM.SelQ2.Close;
              DM.SelQ2.SQL.Clear;
              DM.SelQ2.SQL.Add('begin INVOICE_pkg.copy_asis(:p_INVOICE_DATA_AS_IS_ID,:p_inv_id); end;');

              with DM.InvoiceData do
              Begin
                First;
                while not eof do
                Begin
                  p_inv_data_asis := NULL;
                  if fieldByName('INVOICE_DATA_AS_IS_ID').AsInteger > 0 then
                  begin
                    DM.SelQ2.ParamByName('p_INVOICE_DATA_AS_IS_ID').AsInteger := fieldByName('INVOICE_DATA_AS_IS_ID').AsInteger;
                    DM.SelQ2.ParamByName('p_inv_id').AsInteger                := new_id;
                    DM.SelQ2.Execute;
                    p_inv_data_asis := DM.SelQ2.ParamByName('p_INVOICE_DATA_AS_IS_ID').AsInteger;
                  end;

                  if fieldByName('STORNED_DATA').AsInteger = 0 then
                  begin
                    DM.SelQ.ParamByName('IN_INV_ID').AsInteger                := new_id;
                    DM.SelQ.ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := p_inv_data_asis;
                    DM.SelQ.ParamByName('IN_N_ID').AsInteger                  := fieldByName('n_id').AsInteger;
                    DM.SelQ.ParamByName('IN_UNITS').AsInteger                 := fieldByName('UNITS').AsInteger; //UNITS;
                    DM.SelQ.ParamByName('IN_PRICE_PER_UNIT').AsFloat          := fieldByName('PRICE_PER_UNIT').AsFloat; //PRICE_PER_UNIT;
                    DM.SelQ.ParamByName('IN_TOTAL_SUM').AsFloat               := fieldByName('TOTAL_SUM').AsFloat; //TOTAL_SUM;
                    DM.SelQ.ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := NULL;
                    DM.SelQ.ParamByName('IN_STORN').AsInteger                 := 0;
                    DM.SelQ.ParamByName('IN_GTD').Value                       := fieldByName('gtd').AsString;
                    DM.SelQ.ParamByName('IN_GTD_COUNTRY').Value               := fieldByName('GTD_COUNTRY').AsInteger;

                    DM.SelQ.ParamByName('IN_NEW').AsInteger                   := FieldByName('NOM_NEW').AsInteger;
                    DM.SelQ.ParamByName('IN_SPEC').AsInteger                  := FieldByName('NOM_SPECIAL').AsInteger;
                    DM.SelQ.ParamByName('IN_CLIENT').AsString                 := FieldByName('CLIENT').AsString;

                    DM.SelQ.ParamByName('IN_parent').value                    := NULL;

                    DM.SelQ.ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
                    DM.SelQ.Execute;
                  end;
                  next;
                End;
              End;

              DM.InvoiceAsIs.MasterSource := nil;
              DM.InvoiceData.MasterSource := nil;
              DM.InvoiceRegister.Refresh;
              DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
              DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
              //DM.InvoiceRegister.Locate('INV_ID',new_id,[]);
              grid_invoices_v.DataController.LocateByKey(new_id);
          end;

        end;
      finally
        DM.InvoiceData.Filter := '';
        DM.InvoiceData.Filtered := false;
      end;
  end;
end;






// Обновим гриды при архиве/без него
procedure TInvoiceRecognise.chbArchivePropertiesChange(Sender: TObject);
begin
  btn_refreshClick(nil);
end;



// добавить убрать в архив
procedure TInvoiceRecognise.aArchiveExecute(Sender: TObject);
var id: integer;
begin
  if not DM.InvoiceRegister.Active or DM.InvoiceRegister.IsEmpty then exit;

  id := DM.InvoiceRegisterINV_ID.AsInteger;
  try
      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('update INVOICE_REGISTER set status=abs(status-1) where INV_ID='+inttostr(id));
      dm.SelQ.Execute;
      dm.STAR_DB.Commit;
      btn_refreshClick(nil);
  except
    on E: Exception do Application.MessageBox (PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


// Обнулить количество для минусового инвойса
procedure TInvoiceRecognise.btnZeroClick(Sender: TObject);
begin

  if ( grid_invoices_v.DataController.DataSet.FieldByName('SENDED_TO_WAREHOUSE').AsInteger = 1 )
    or ( grid_invoices_v.DataController.DataSet.FieldByName('inv_minus').AsInteger <> 2 ) then
  begin
    MessageBox (Handle,'Инвойс уже подгружен на склад или он не является минусовым.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  DM.InvoiceData.Filter := 'D_CHECK = 1';
  DM.InvoiceData.Filtered := true;

  if DM.InvoiceData.RecordCount > 0 then
  begin

    try
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('update invoice_data set UNITS=0 where INVOICE_DATA_ID=:p1');
      grid_done_v.DataController.DataSource := nil;
      with DM.InvoiceData do
      Begin
        First;
        while not eof do
        Begin
          DM.SelQ.ParamByName('p1').AsInteger := DM.InvoiceDataINVOICE_DATA_ID.AsInteger;
          DM.SelQ.Execute;
          next;
        End;
      End;
      grid_done_v.DataController.DataSource := DM.InvoiceData_DS;

    except
      on E: Exception do
      begin
         ShowMessage(E.Message);
         DM.InvoiceData.Filter := '';
         DM.InvoiceData.Filtered := false;
         grid_done_v.DataController.DataSource := DM.InvoiceData_DS;
      end;
    end;
  end;

  DM.InvoiceData.Filter := '';
  DM.InvoiceData.Filtered := false;
  DM.InvoiceData.Refresh;
  grid_done.SetFocus;
end;




procedure TInvoiceRecognise.btnNewFromNIDClick(Sender: TObject);
var
 arRec: Variant;
 i, PRICE_SPECIAL: integer;
 UNITS, INVOICE_DATA_ID: Variant;
 PRICE_PER_UNIT, TOTAL_SUM : Real;
begin
  if (grid_done_v.DataController.DataSet.Active = true) and (grid_done_v.ViewData.RowCount > 0) then
  begin
    NewD          := TNewD.Create(Application);
    NewD.Panel1.Font.Size := bc_fontsize.EditValue;
    NewD.editing  := true;
    NewD.N_ID_    := -1;
    NewD.OUT_ID   := 0;
    NewD.cds      := (grid_done_v.DataController.DataSet as TOraQuery);
    DM.n_id_      := -1;

{
    if (DM.Nomenclature2.ParamByName('inv_id_').AsInteger <> DM.InvoiceRegisterINV_ID.AsInteger) then
    begin
      DM.Nomenclature2.ParamByName('inv_id_').AsInteger := DM.InvoiceRegisterINV_ID.AsInteger;
      DM.Nomenclature2.Refresh;
    end;
}
    NewD.pnlPrice.Visible := true;

    if ( NewD.ShowModal = mrOk ) then
    begin
//      CloseFormAction;

      DM.Nomenclature_one.Close;
      DM.Nomenclature_one.ParamByName('n_id_').Value := NewD.OUT_ID;
      DM.Nomenclature_one.Open;

      UNITS   := NewD.edQuantity.Value; // StrToInt(Edit1.Text);
      PRICE_PER_UNIT := NewD.edPrice.Value; // StrToFloat(Edit2.Text);
      TOTAL_SUM      := FloatToCurr(UNITS * PRICE_PER_UNIT);
      PRICE_SPECIAL  := NewD.chbNewNom.EditValue;
      
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
          ParamByName('IN_INV_ID').AsInteger                := DM.InvoiceRegisterINV_ID.AsInteger;
          ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := NULL;
          ParamByName('IN_N_ID').AsInteger                  := NewD.OUT_ID;
          ParamByName('IN_UNITS').AsInteger                 := UNITS;
          ParamByName('IN_PRICE_PER_UNIT').AsFloat          := PRICE_PER_UNIT;
          ParamByName('IN_TOTAL_SUM').AsFloat               := TOTAL_SUM;
          ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := NULL;
          ParamByName('IN_STORN').AsInteger                 := 0;
          ParamByName('IN_GTD').Value                       := NULL;
          ParamByName('IN_GTD_COUNTRY').AsInteger           := DM.InvoiceRegisterCOUNTRY_GTD.AsInteger;

          ParamByName('IN_NEW').AsInteger                   := 0;
          ParamByName('IN_SPEC').AsInteger                  := PRICE_SPECIAL;
          ParamByName('IN_CLIENT').AsString                 := '';

          ParamByName('IN_parent').value                    := NULL;

          ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
          Execute;
          INVOICE_DATA_ID := ParamByName('OUT_INVOICE_DATA_ID').Value;
{
          DM.Nomenclature2.ParamByName('n_id_').AsInteger := NewD.OUT_ID;
          DM.Nomenclature2.RefreshRecord;
          DM.Nomenclature2.ParamByName('n_id_').AsInteger := 0;
}
        End;
      DM.InvoiceRegister.RefreshRecord;
      DM.InvoiceData.Refresh;
      DM.InvoiceData.Locate('INVOICE_DATA_ID',INVOICE_DATA_ID,[]);
    end;

    NewD.Free;

  end else ShowMessage('Нет выбранных данных!');
  grid_done.SetFocus;
end;



procedure TInvoiceRecognise.mn_clear_filterClick(Sender: TObject);
begin
  grid_done_v.DataController.Filter.Clear;
end;

procedure TInvoiceRecognise.mn_deselect_allClick(Sender: TObject);
begin
  pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;
    with DM.InvoiceRegister do
    begin
      First;
      DisableControls;
      while not Eof do
      begin
        Edit;
        FieldByName('D_CHECK').AsInteger := 0;
        Post;
        Next;
      end;
      EnableControls;
    end;
  finally
      pnl_msg.Free;
  end;
end;

procedure TInvoiceRecognise.mn_select_allClick(Sender: TObject);
begin
  pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;
    with DM.InvoiceRegister do
    begin
      First;
      DisableControls;
      while not Eof do
      begin
        Edit;
        FieldByName('D_CHECK').AsInteger := 1;
        Post;
        Next;
      end;
      EnableControls;
    end;
  finally
      pnl_msg.Free;
  end;
end;

procedure TInvoiceRecognise.N5Click(Sender: TObject);
begin
  grid_invoices_v.DataController.Filter.Clear;
end;


// Фильтрация

// - одинаковые позиции в инвойсе
procedure TInvoiceRecognise.dxBarStatic3Click(Sender: TObject);
begin
  sort_table('NN');
end;

// - сторнированные позиции
procedure TInvoiceRecognise.dxBarStatic5Click(Sender: TObject);
begin
  sort_table('STORNED_DATA');
end;

// - не используемы позиции
procedure TInvoiceRecognise.dxBarStatic9Click(Sender: TObject);
begin
  sort_table('notuse');
end;

// - без печати
procedure TInvoiceRecognise.dxBarStatic11Click(Sender: TObject);
begin
  sort_table('NOPRINT');
end;

//  - неверное кол-во
procedure TInvoiceRecognise.dxBarStatic13Click(Sender: TObject);
begin
  sort_table('UNITS');
end;

procedure TInvoiceRecognise.sort_table(filter_param: String);
begin
  grid_done_v.DataController.Filter.Clear;
  if filter_param <> '' then
  begin
    if filter_param = 'NN' then grid_done_vNN.DataBinding.AddToFilter(nil, foGreater, 1);
    if filter_param = 'STORNED_DATA' then grid_done_vSTORNED_DATA.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'notuse' then grid_done_vnotuse.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'NOPRINT' then grid_done_vNOPRINT.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'UNITS' then UNITS.DataBinding.AddToFilter(nil, foLess, 0);

    grid_done_v.DataController.Filter.Active := True;
  end;
end;



procedure TInvoiceRecognise.tlb_exportDBFClick(Sender: TObject);
var
  I: integer;
begin
  if ( grid_invoices_v.DataController.DataSet.Active = false ) or ( grid_invoices_v.DataController.DataSet.RecordCount = 0 ) then
  begin
    MessageBox (Handle,'Нет данных для выгрузки в DBF файл.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  try
    DM.InvoiceData.Filter := 'D_CHECK = 1';
    DM.InvoiceData.Filtered := true;
    DM.InvoiceData.IndexFieldNames := 'SRC_TROLLEY';

    if (DM.InvoiceData.RecordCount = 0) then
       MessageBox (Handle,'Нет отмеченных позиций для создания инвойса.', 'Внимание!', MB_ICONWARNING)
    else
    begin
      Screen.Cursor := crHourGlass;
      DM.qStore.Close;
      DM.qStore.SQL.Clear;
      DM.qStore.SQL.Add('delete from "'+ProgPath+'\out\PERM.DBF"');
      DM.qStore.ExecSQL;

      DM.inv_table.Close;
      DM.inv_table.TableName := ProgPath+'\out\PERM.DBF';
      DM.inv_table.Open;

      with DM.InvoiceData do
      Begin
        First;
        while not eof do
        Begin
          if fieldByName('STORNED_DATA').AsInteger = 0 then
          begin
            for I := 0 to fieldByName('UNITS_PRINT').AsInteger - 1 do
            begin
              DM.inv_table.Edit;
              DM.inv_table.Insert;
              DM.inv_table.Fields[0].AsString := fieldByName('COMPILED_NAME_OTDEL').AsString;
              DM.inv_table.Fields[1].AsString := fieldByName('SRC_TROLLEY').AsString;
              DM.inv_table.Fields[2].AsString := fieldByName('CODE').AsString;
              DM.inv_table.Post;
            end;
          end;
          next;
        End;
      End;
      DM.inv_table.Close;
      DM.InvoiceAsIs.MasterSource := nil;
      DM.InvoiceData.MasterSource := nil;
      DM.InvoiceRegister.Refresh;
      DM.InvoiceAsIs.MasterSource := DM.InvoiceRegister_DS;
      DM.InvoiceData.MasterSource := DM.InvoiceRegister_DS;
    end;
  finally
    DM.InvoiceData.IndexFieldNames := '';
    DM.InvoiceData.Filter := '';
    DM.InvoiceData.Filtered := false;
    Screen.Cursor := crDefault;
    Application.MessageBox(PChar('Сформирован файл '+ProgPath+'\out\PERM.DBF'),'Результат',MB_ICONINFORMATION);
  end;
end;


// Фильтрация списка номенклатуры по типам
procedure TInvoiceRecognise.mnFilterByGroupClick(Sender: TObject);
begin
  frm_choise_type := Tfrm_choise_type.Create(Application);
  frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(CUR_DEPT_ID);
  frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := 1;
  frm_choise_type.Q_FLOWER_TYPE.Open;
  if frm_choise_type.ShowModal = mrOk then
  begin
    grid_done_v.DataController.Filter.Clear;
    F_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
    grid_done_v.DataController.Filter.Active := True;
    grid_done.SetFocus;
  end;
end;


end.
