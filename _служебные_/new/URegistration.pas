unit URegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxDropDownEdit, cxCheckBox, cxImageComboBox, dxBar,
  cxBarEditItem, dxBarExtItems, cxLabel, cxButtonEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  Menus, cxLookAndFeelPainters, DBGridEhGrouping, Mask, DBCtrlsEh, Grids,
  DBGrids, cxSplitter, GridsEh, DBGridEh, Buttons, StdCtrls, cxButtons,
  ComCtrls, ExtCtrls, ActnList, frxBarcode, frxExportPDF, frxExportXLS,
  frxExportRTF, frxClass, frxExportHTML, frxChBox, ImgList, DBTables, frxDBSet,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, MemDS, DBAccess, Ora,
  cxBlobEdit,ShellApi;

type
  TfrmRegistration = class(TForm)
    bmMain: TdxBarManager;
    bmToolBar: TdxBar;
    bmFooter: TdxBar;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    btnExit: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    cxClient: TcxGrid;
    cxClientView: TcxGridDBTableView;
    cxClientViewBRIEF: TcxGridDBColumn;
    cxClientViewCOUNT: TcxGridDBColumn;
    cxClientViewSALES: TcxGridDBColumn;
    cxClientViewNICK: TcxGridDBColumn;
    cxClientViewPREFIX: TcxGridDBColumn;
    cxClientViewFIO: TcxGridDBColumn;
    cxClientViewCCODE: TcxGridDBColumn;
    cxClientViewTTYPE_NAME: TcxGridDBColumn;
    cxClientViewGROUP_NAME: TcxGridDBColumn;
    cxClientViewREGION_NAME: TcxGridDBColumn;
    cxClientViewCITY: TcxGridDBColumn;
    cxClientViewNN: TcxGridDBColumn;
    cxClientViewID_CLIENTS: TcxGridDBColumn;
    cxClientViewREGION: TcxGridDBColumn;
    cxClientViewTTYPE: TcxGridDBColumn;
    cxClientViewID_CLIENTS_GROUPS: TcxGridDBColumn;
    cxClientViewCORRECTOR: TcxGridDBColumn;
    cxClientViewDDATE: TcxGridDBColumn;
    cxClientViewPHONE: TcxGridDBColumn;
    cxClientViewBLOCK1: TcxGridDBColumn;
    cxClientViewBLOCK2: TcxGridDBColumn;
    cxClientViewREG_TYPE_NAME: TcxGridDBColumn;
    cxClientViewEMAIL: TcxGridDBColumn;
    cxClientViewADDRESS: TcxGridDBColumn;
    cxClientViewID_OFFICE: TcxGridDBColumn;
    cxClientViewMARK: TcxGridDBColumn;
    cxClientViewINN: TcxGridDBColumn;
    cxClientLevel1: TcxGridLevel;
    frxDBDataset1: TfrxDBDataset;
    frxClients: TfrxDBDataset;
    frxClientsView: TfrxDBDataset;
    frxEmpl: TfrxDBDataset;
    frxDeps: TfrxDBDataset;
    frxAdresses: TfrxDBDataset;
    frxJobs: TfrxDBDataset;
    frxEmplView: TfrxDBDataset;
    frxJobsEmpls: TfrxDBDataset;
    frxDepsEmpl: TfrxDBDataset;
    frxDepart: TfrxDBDataset;
    Clients_table: TTable;
    Clients_tableOLD: TStringField;
    Clients_tableFIO: TStringField;
    Clients_tableNICK: TStringField;
    Clients_tableF1: TStringField;
    Clients_tableF2: TStringField;
    Clients_tableF3: TStringField;
    Clients_tableF4: TStringField;
    Clients_tableF5: TStringField;
    Clients_tableF6: TStringField;
    Clients_tableF7: TStringField;
    Clients_tableF8: TStringField;
    Clients_tableMARK: TSmallintField;
    Clients_tableCODE: TStringField;
    Clients_tableF9: TStringField;
    Clients_tableF10: TStringField;
    Clients_tableF11: TStringField;
    Clients_tableDAT: TDateField;
    Clients_tableOTKUDA: TStringField;
    Clients_tableBLOK1: TBooleanField;
    Clients_tableBLOK2: TBooleanField;
    Clients_tableFLOWERS: TBooleanField;
    Clients_tablePLANTS: TBooleanField;
    Clients_table_ds: TDataSource;
    ImageList1: TImageList;
    frxReport1: TfrxReport;
    PopupMenu2: TPopupMenu;
    m_type: TMenuItem;
    m_group: TMenuItem;
    m_region: TMenuItem;
    N6: TMenuItem;
    m_angroup: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N10: TMenuItem;
    Action11: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N22: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N42: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N46: TMenuItem;
    mSales: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    N27: TMenuItem;
    Email1: TMenuItem;
    WWW1: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    img_nsi: TcxImageList;
    ActionList2: TActionList;
    aExit: TAction;
    AddN: TAction;
    EditN: TAction;
    DeleteN: TAction;
    Refresh: TAction;
    aCtrlEnter: TAction;
    odInvoice: TOpenDialog;
    ActionList1: TActionList;
    filtr_on: TAction;
    filtr_off: TAction;
    seach_kod: TAction;
    search_nick: TAction;
    export_search: TAction;
    select_all: TAction;
    fast_filter: TAction;
    aClearFilter: TAction;
    cxStyleRepository1: TcxStyleRepository;
    style_top: TcxStyle;
    style_bottom: TcxStyle;
    style_selected: TcxStyle;
    style_group: TcxStyle;
    bsiService: TdxBarSubItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox12: TComboBox;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Edit4: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn7: TBitBtn;
    RadioButton4: TRadioButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    btn_conctact: TBitBtn;
    btninf: TBitBtn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label9: TLabel;
    Label40: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BitBtn3: TBitBtn;
    Edit5: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Panel5: TPanel;
    DBGrid2: TDBGridEh;
    Panel11: TPanel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    Label26: TLabel;
    Label47: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label3: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    DBComboBoxEh1: TDBComboBoxEh;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    BitBtn22: TcxButton;
    BitBtn23: TcxButton;
    DBComboBoxEh2: TDBComboBoxEh;
    Panel10: TPanel;
    CRDBGrid4: TDBGridEh;
    SelQ: TOraQuery;
    Q_CLIENTS: TOraQuery;
    Q_CLIENT_VIEW: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    Q_CLIENT_VIEW_DS: TOraDataSource;
    Q_ADVERT: TOraQuery;
    Q_ADVERTID_ADVERTISMENTS: TIntegerField;
    Q_ADVERTNAME: TStringField;
    Q_ADVERTID_OFFICE: TIntegerField;
    Q_ADVERTBRIEF: TStringField;
    Q_ADVERT_DS: TOraDataSource;
    Q_TYPES: TOraQuery;
    Q_TYPES_DS: TOraDataSource;
    Q_REGIONS: TOraQuery;
    Q_REGIONS_DS: TOraDataSource;
    Q_G_CL: TOraQuery;
    Q_G_CL_DS: TOraDataSource;
    Q_GROUPS: TOraQuery;
    Q_GROUPS_DS: TOraDataSource;
    Q_EMPL: TOraQuery;
    Q_EMPLNN: TFloatField;
    Q_EMPLACTIVE: TIntegerField;
    Q_EMPLCCODE: TStringField;
    Q_EMPLFIO: TStringField;
    Q_EMPLID_CLIENTS: TIntegerField;
    Q_EMPLLOGIN: TStringField;
    Q_EMPLNICK: TStringField;
    Q_EMPLSTAFF: TIntegerField;
    Q_EMPLCOUNT: TIntegerField;
    Q_EMPLID_OFFICE: TIntegerField;
    Q_EMPLBRIEF: TStringField;
    Q_EMPLREGIONS_NAME: TStringField;
    Q_EMPLREGION: TIntegerField;
    Q_EMPL_DS: TOraDataSource;
    Q_DEPS: TOraQuery;
    Q_DEPSID_EMPLOYEES: TIntegerField;
    Q_DEPSID_DEPARTMENTS: TIntegerField;
    Q_DEPSNAME: TStringField;
    Q_DEPS_DS: TOraDataSource;
    Q_JOBS: TOraQuery;
    Q_JOBSID_EMPLOYEES: TIntegerField;
    Q_JOBSID_JOB_TITLES: TIntegerField;
    Q_JOBSNAME: TStringField;
    Q_JOBS_DS: TOraDataSource;
    Q_TITLES: TOraQuery;
    Q_TITLESID_JOB_TITLES: TIntegerField;
    Q_TITLESNAME: TStringField;
    Q_TITLESBRIEF: TStringField;
    Q_TITLESID_OFFICE: TIntegerField;
    Q_TITLES_DS: TOraDataSource;
    Q_DEPART: TOraQuery;
    Q_DEPARTID_DEPARTMENTS: TIntegerField;
    Q_DEPARTNAME: TStringField;
    Q_DEPART_DS: TOraDataSource;
    Q_SEARCH: TOraQuery;
    Q_SEARCHID_CLIENTS: TIntegerField;
    Q_SEARCHFIO: TStringField;
    Q_SEARCHNICK: TStringField;
    Q_SEARCHCCODE: TStringField;
    Q_SEARCHREGION: TIntegerField;
    Q_SEARCHADDRESS: TStringField;
    Q_SEARCHU_ADDRESS: TStringField;
    Q_SEARCHPHONE: TStringField;
    Q_SEARCHPASSPORT: TStringField;
    Q_SEARCHCONTACT: TStringField;
    Q_SEARCHCONT_PHONE: TStringField;
    Q_SEARCHEMAIL: TStringField;
    Q_SEARCHWWW: TStringField;
    Q_SEARCHINN: TStringField;
    Q_SEARCHREG_SVID: TStringField;
    Q_SEARCHKPP: TStringField;
    Q_SEARCHOKATO: TStringField;
    Q_SEARCHBANK: TStringField;
    Q_SEARCHAGREEMENT: TStringField;
    Q_SEARCHADVERTISMENT: TIntegerField;
    Q_SEARCHDDATE: TDateTimeField;
    Q_SEARCHBLOCK1: TIntegerField;
    Q_SEARCHBLOCK2: TIntegerField;
    Q_SEARCHFLOWERS: TIntegerField;
    Q_SEARCHPLANTS: TIntegerField;
    Q_SEARCHMARK: TStringField;
    Q_SEARCHTTYPE: TIntegerField;
    Q_SEARCHID_CLIENTS_GROUPS: TIntegerField;
    Q_SEARCHCORRECTOR: TStringField;
    Q_SEARCHDATE_COR: TDateTimeField;
    Q_SEARCHCORRECTOR_COR: TStringField;
    Q_SEARCHDUTIES: TStringField;
    Q_SEARCHINSURANCE: TStringField;
    Q_SEARCHDATE_IN: TDateTimeField;
    Q_SEARCHDATE_OUT: TDateTimeField;
    Q_SEARCHL_SERVICE: TStringField;
    Q_SEARCHSTAFF: TIntegerField;
    Q_SEARCHACTIVE: TIntegerField;
    Q_SEARCHLOGIN: TStringField;
    Q_SEARCHINFO: TStringField;
    Q_SEARCHREG_TYPE: TIntegerField;
    Q_SEARCHCOUNT: TIntegerField;
    Q_SEARCHDOSTAVKA: TIntegerField;
    Q_SEARCHID_OFFICE: TIntegerField;
    Q_SEARCHDATE_CHANGE: TDateTimeField;
    Q_SEARCHPREFIX: TStringField;
    Q_SEARCHID_CITY: TIntegerField;
    Q_SEARCHGROUP_NAME: TStringField;
    Q_SEARCHTTYPE_NAME: TStringField;
    Q_SEARCHREGION_NAME: TStringField;
    Q_SEARCHADVERT: TStringField;
    Q_SEARCHBRIEF: TStringField;
    Q_SEARCHCITY: TStringField;
    Q_SEARCH_DS: TOraDataSource;
    OraQuery1: TOraQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    OraDataSource1: TOraDataSource;
    Q_IDD: TOraQuery;
    Q_IDD_DS: TOraDataSource;
    cxGridDBColumn33: TcxGridDBColumn;
    Q_GROUPSID_CLIENTS_GROUPS: TIntegerField;
    Q_GROUPSNAME: TStringField;
    Q_GROUPSINFO: TStringField;
    Q_GROUPSID_OFFICE: TIntegerField;
    Q_GROUPSDATE_CHANGE: TDateTimeField;
    Q_GROUPSBRIEF: TStringField;
    Q_REGIONSID_REGIONS: TIntegerField;
    Q_REGIONSNAME: TStringField;
    Q_REGIONSID_OFFICE: TIntegerField;
    Q_REGIONSBRIEF: TStringField;
    Q_TYPESID_CLIENT_TYPES: TIntegerField;
    Q_TYPESNAME: TStringField;
    Q_TYPESID_OFFICE: TIntegerField;
    Q_TYPESBRIEF: TStringField;
    dxBarSubItem1: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem5: TcxBarEditItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    bbCopyToOld: TdxBarButton;
    bbCopyClient: TdxBarButton;
    btnFileExport: TdxBarButton;
    bbSyncCLientsLoad: TdxBarButton;
    bbSyncClients: TdxBarButton;
    ds_adress: TOraDataSource;
    cds_adress: TOraQuery;
    cds_adressADDRESS: TStringField;
    cxGridDBColumn34: TcxGridDBColumn;
    Q_CLIENTSD_CHECK: TFloatField;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSDDATE: TDateTimeField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSREGION: TIntegerField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSREGIONS_NAME: TStringField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTSTTYPE_NAME: TStringField;
    Q_CLIENTSCORRECTOR: TStringField;
    Q_CLIENTSPHONE: TStringField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSCOUNT: TIntegerField;
    Q_CLIENTSREG_TYPE_NAME: TStringField;
    Q_CLIENTSSALES: TFloatField;
    Q_CLIENTSEMAIL: TStringField;
    Q_CLIENTSADDRESS: TStringField;
    Q_CLIENTSID_OFFICE: TFloatField;
    Q_CLIENTSBRIEF: TStringField;
    Q_CLIENTSPREFIX: TStringField;
    Q_CLIENTSCITY: TStringField;
    Q_CLIENTSMARK: TStringField;
    Q_CLIENTSID_OFFICE_SRC: TIntegerField;
    Q_CLIENTSINN: TStringField;
    Q_CLIENTSKEY_INTERESTS: TStringField;
    Q_CLIENT_VIEWID_CLIENTS: TIntegerField;
    Q_CLIENT_VIEWFIO: TStringField;
    Q_CLIENT_VIEWNICK: TStringField;
    Q_CLIENT_VIEWCCODE: TStringField;
    Q_CLIENT_VIEWREGION: TIntegerField;
    Q_CLIENT_VIEWADDRESS: TStringField;
    Q_CLIENT_VIEWU_ADDRESS: TStringField;
    Q_CLIENT_VIEWPHONE: TStringField;
    Q_CLIENT_VIEWPASSPORT: TStringField;
    Q_CLIENT_VIEWCONTACT: TStringField;
    Q_CLIENT_VIEWCONT_PHONE: TStringField;
    Q_CLIENT_VIEWEMAIL: TStringField;
    Q_CLIENT_VIEWWWW: TStringField;
    Q_CLIENT_VIEWINN: TStringField;
    Q_CLIENT_VIEWREG_SVID: TStringField;
    Q_CLIENT_VIEWKPP: TStringField;
    Q_CLIENT_VIEWOKATO: TStringField;
    Q_CLIENT_VIEWBANK: TStringField;
    Q_CLIENT_VIEWAGREEMENT: TStringField;
    Q_CLIENT_VIEWADVERTISMENT: TIntegerField;
    Q_CLIENT_VIEWDDATE: TDateTimeField;
    Q_CLIENT_VIEWBLOCK1: TIntegerField;
    Q_CLIENT_VIEWBLOCK2: TIntegerField;
    Q_CLIENT_VIEWFLOWERS: TIntegerField;
    Q_CLIENT_VIEWPLANTS: TIntegerField;
    Q_CLIENT_VIEWMARK: TStringField;
    Q_CLIENT_VIEWTTYPE: TIntegerField;
    Q_CLIENT_VIEWID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENT_VIEWCORRECTOR: TStringField;
    Q_CLIENT_VIEWDATE_COR: TDateTimeField;
    Q_CLIENT_VIEWCORRECTOR_COR: TStringField;
    Q_CLIENT_VIEWDUTIES: TStringField;
    Q_CLIENT_VIEWINSURANCE: TStringField;
    Q_CLIENT_VIEWDATE_IN: TDateTimeField;
    Q_CLIENT_VIEWDATE_OUT: TDateTimeField;
    Q_CLIENT_VIEWL_SERVICE: TStringField;
    Q_CLIENT_VIEWSTAFF: TIntegerField;
    Q_CLIENT_VIEWACTIVE: TIntegerField;
    Q_CLIENT_VIEWLOGIN: TStringField;
    Q_CLIENT_VIEWINFO: TStringField;
    Q_CLIENT_VIEWREG_TYPE: TIntegerField;
    Q_CLIENT_VIEWCOUNT: TIntegerField;
    Q_CLIENT_VIEWDOSTAVKA: TIntegerField;
    Q_CLIENT_VIEWID_OFFICE: TIntegerField;
    Q_CLIENT_VIEWDATE_CHANGE: TDateTimeField;
    Q_CLIENT_VIEWPREFIX: TStringField;
    Q_CLIENT_VIEWID_CITY: TIntegerField;
    Q_CLIENT_VIEWKEY_INTERESTS: TStringField;
    Q_CLIENT_VIEWREG_TYPE_NAME: TStringField;
    Q_CLIENT_VIEWGROUP_NAME: TStringField;
    Q_CLIENT_VIEWTTYPE_NAME: TStringField;
    Q_CLIENT_VIEWREGION_NAME: TStringField;
    Q_CLIENT_VIEWADVERT: TStringField;
    Q_CLIENT_VIEWCITY: TStringField;
    btnHotKeys: TdxBarButton;
    selq2: TOraQuery;
    Q_G_CLID_CLIENTS: TIntegerField;
    Q_G_CLFIO: TStringField;
    Q_G_CLNICK: TStringField;
    Q_G_CLGROUP_NAME: TStringField;
    Q_G_CLTTYPE_NAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Q_GROUPSAfterOpen(DataSet: TDataSet);
    procedure Q_REGIONSAfterOpen(DataSet: TDataSet);
    procedure Q_ADVERTAfterOpen(DataSet: TDataSet);
    procedure Q_TYPESAfterOpen(DataSet: TDataSet);
    procedure Q_TITLESAfterOpen(DataSet: TDataSet);
    procedure Q_DEPARTAfterOpen(DataSet: TDataSet);
    procedure aExitExecute(Sender: TObject);
    procedure AddNExecute(Sender: TObject);
    procedure EditNExecute(Sender: TObject);
    procedure DeleteNExecute(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure btnFileExportClick(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure btninfClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cxGridDBColumn34HeaderClick(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
    procedure bbSyncCLientsLoadClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btn_conctactClick(Sender: TObject);
    procedure bbCopyToOldClick(Sender: TObject);
    procedure bbCopyClientClick(Sender: TObject);
    procedure bbSyncClientsClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumnEh);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure filtr_onExecute(Sender: TObject);
    procedure filtr_offExecute(Sender: TObject);
    procedure seach_kodExecute(Sender: TObject);
    procedure search_nickExecute(Sender: TObject);
    procedure select_allExecute(Sender: TObject);
    procedure fast_filterExecute(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    pnl_msg : TPanel;
    id_office: integer;
    progas: string;
    corrector: string;
    client_path: string; // это все предстоит заполнять
    client_path2: string;
    path: string;
   // add_or_edit: integer;
    function MainFormShow : boolean;
    procedure RefreshAll;
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
  end;

var
  frmRegistration: TfrmRegistration;

implementation

{$R *.dfm}

uses umain, UDM, uEditRegistration, uHotKeys, ueditsubreg;


procedure TfrmRegistration.RefreshAll;
begin
  try
    // Открытие источников рекламы
    Q_ADVERT.SQL.Clear;
    Q_ADVERT.SQL.Add('SELECT a.ID_ADVERTISMENTS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_ADVERTISMENTS a, offices o');
    Q_ADVERT.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    Q_ADVERT.SQL.Add('ORDER BY NAME');
    Q_ADVERT.Open;

    // Открытие типов клиентов
    Q_TYPES.SQL.Clear;
    Q_TYPES.SQL.Add('SELECT a.ID_CLIENT_TYPES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_CLIENT_TYPES a, offices o ');
    Q_TYPES.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    Q_TYPES.SQL.Add('ORDER BY NAME');
    Q_TYPES.Open;

    // Открытие регионов
    Q_REGIONS.SQL.Clear;
    Q_REGIONS.SQL.Add('SELECT a.ID_REGIONS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_REGIONS a, offices o ');
    Q_REGIONS.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    Q_REGIONS.SQL.Add('ORDER BY NAME');
    Q_REGIONS.Open;

    // Открытие клиентов
    Q_CLIENTS.Close;
    Q_CLIENTS.SQL.Clear;
    Q_CLIENTS.SQL.Add('SELECT * from CLIENTS_VIEW3 where (ID_OFFICE='+IntToStr(id_office)+' or '+IntToStr(id_office)+'=0)');
    Q_CLIENTS.Open;

    // Открытие клиентов по группам
    Q_G_CL.SQL.Clear;
    Q_G_CL.SQL.Add('SELECT C.ID_CLIENTS, C.FIO, C.NICK, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME ');
    Q_G_CL.SQL.Add('FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, CLIENTS C ');
    Q_G_CL.SQL.Add('where C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ID_CLIENTS_GROUPS=:ID_CLIENTS_GROUPS ');
    Q_G_CL.SQL.Add('ORDER BY C.NICK');
    //Q_G_CL.ParamByName('ID_CLIENTS_GROUPS').AsInteger:=Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger;
    Q_G_CL.Open;

    // Открытие групп
    Q_GROUPS.SQL.Clear;
    Q_GROUPS.SQL.Add('SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o ');
    Q_GROUPS.SQL.Add('where ((a.ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+') or id_clients_groups in (1,2)) and a.id_office = o.id_office');
    Q_GROUPS.SQL.Add('ORDER BY NAME');
    Q_GROUPS.Open;

    // Открытие сотрудников
    Q_EMPL.SQL.Clear;
    Q_EMPL.SQL.Add('SELECT E.* FROM EMPLOYEES_VIEW E where (e.ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+')');
    Q_EMPL.Open;

    // Открытие списка отделов для выбранного сотрудника
    Q_DEPS.SQL.Clear;
    Q_DEPS.SQL.Add('SELECT ED.*, BD.NAME FROM BOOKS_DEPARTMENTS BD, EMPLOYEES_DEPARTMENTS ED WHERE ED.ID_DEPARTMENTS = BD.ID_DEPARTMENTS AND ED.ID_EMPLOYEES =:ID_CLIENTS ORDER BY NAME');
    Q_DEPS.Open;

    // Открытие списка должностей для выбранного сотрудника
    Q_JOBS.SQL.Clear;
    Q_JOBS.SQL.Add('SELECT EJ.*, J.NAME FROM BOOKS_JOB_TITLES J, EMPLOYEES_JOB_TITLES EJ WHERE EJ.ID_JOB_TITLES = J.ID_JOB_TITLES AND EJ.ID_EMPLOYEES =:ID_CLIENTS ORDER BY NAME');
    Q_JOBS.Open;

    // Открытие должностей
    Q_TITLES.SQL.Clear;
    Q_TITLES.SQL.Add('SELECT a.ID_JOB_TITLES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_JOB_TITLES a, offices o ');
    Q_TITLES.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    Q_TITLES.SQL.Add('ORDER BY NAME');
    Q_TITLES.Open;

    // Открытие отделов
    Q_DEPART.SQL.Clear;
    Q_DEPART.SQL.Add('SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS ORDER BY NAME');
    Q_DEPART.Open;

    selq.Close;
    selq.SQL.Clear;
    selq.SQL.Add('select distinct cast(nick as varchar2(2)) as ww from clients ');
    selq.SQL.Add('where (ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+') ');
    selq.SQL.Add('and nick like ''_ %'' order by ww');
    selq.Open;
    ComboBox12.Items.Clear;
  except
    on E: Exception do ShowMessage(E.Message);
  end;

  //список кодов клиентов
  while not selq.Eof do
  begin
    ComboBox12.Items.Add(selq.FieldByName('ww').AsString);
    selq.Next;
  end;
  selq.Close;
  ComboBox12.ItemIndex := ComboBox12.Items.IndexOf('M');
end;



procedure TfrmRegistration.FormShow(Sender: TObject);
begin
 // if (imgOffice.Enabled) then
 // begin
      try
        id_office := GetOfficeID;
       { imgOffice.Enabled := (id_office = 1);
        imgOffice.Properties.OnChange := nil;
        selq.Close;
        selq.SQL.Clear;
        selq.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        selq.Open;
        SelQ.Close;
        imgOffice.EditValue := id_office; }
        Refresh.Execute;//вывод клиентов в грид
      except
        on E: Exception do ShowMessage(E.Message);
      end;
 // end;

  cxClientViewSALES.Visible := p_read;
  export_search.Enabled     := p_edit;

 //кнопкa сервис
  bbCopyToOld.Enabled       := p_edit;
  bbCopyClient.Enabled      := p_edit;
  btnFileExport.Enabled     := p_print;
  bbSyncCLientsLoad.Enabled := (p_edit and (id_office = 1));
  bbSyncClients.Enabled     := (p_edit and (id_office > 1));

  BitBtn4.Enabled  := p_print;
  BitBtn5.Enabled  := p_print;
  BitBtn6.Enabled  := p_print;
  BitBtn3.Enabled  := p_print;
  btn_conctact.Enabled := p_print;
  btninf.Enabled   :=  p_print;

  DBComboBoxEh2.Value := 1;
  PageControl1.ActivePageIndex := 0;

  ComboBox12.Items.Clear;
  selq.Close;
  selq.SQL.Clear;
  selq.SQL.Add('select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')) as kkk from clients ');
  selq.SQL.Add('where (ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+') ');
  selq.SQL.Add('and INSTR(trim(nick), '' '') > 0');
  selq.Open;
  selq.First;
  while not selq.Eof do
  begin
    ComboBox12.Items.Add(selq.FieldByName('kkk').AsString);  // заполняю список кодов клиентов
    selq.Next;
  end;
  selq.Close;
end;


function TfrmRegistration.MainFormShow : boolean;
Begin
 if not Assigned(frmRegistration) then
  begin
    frmRegistration := TfrmRegistration.Create(Application);
    try
      frmRegistration.Show;
      LoadFormState(frmRegistration); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmRegistration.WindowState = wsMinimized) then frmRegistration.WindowState := wsNormal;
end;

//перенес все из оншоу в кнопку изменить, а то непонятно когда frmEditRegistration.Free делать
procedure TfrmRegistration.Q_ADVERTAfterOpen(DataSet: TDataSet);
begin
  frmEditRegistration.ComboBox2.Items.Clear;
  Q_ADVERT.First;
  while not Q_ADVERT.Eof do
  begin
    frmEditRegistration.ComboBox2.Items.Add(Q_ADVERT.FieldValues['NAME']);
    Q_ADVERT.Next;
  end;
  Q_ADVERT.First;
end;


procedure TfrmRegistration.Q_DEPARTAfterOpen(DataSet: TDataSet);
begin
 { ComboBox7.Items.Clear;
  ComboBox7.Items.Add('');
  ComboBox9.Items.Clear;
  ComboBox9.Items.Add('');
  Q_DEPART.First;
  while not Q_DEPART.Eof do
  begin
    ComboBox7.Items.Add(Q_DEPART.FieldValues['NAME']);
    ComboBox9.Items.Add(Q_DEPART.FieldValues['NAME']);
    Q_DEPART.Next;
  end;
  Q_DEPART.First;   }
end;


procedure TfrmRegistration.Q_GROUPSAfterOpen(DataSet: TDataSet);
begin
  Q_G_CL.Close;
  DBGrid2.DataSource.DataSet.DisableControls;
  Q_GROUPS.last;
  Q_GROUPS.First;
  frmEditRegistration.ComboBox4.Items.Clear;
  Q_GROUPS.First;
  while not Q_GROUPS.Eof do
  begin
    frmEditRegistration.ComboBox4.Items.Add(Q_GROUPS.FieldValues['NAME']);
    Q_GROUPS.Next;
  end;
  Q_GROUPS.First;
  DBGrid2.DataSource.DataSet.EnableControls;
  Q_G_CL.Open;
end;

procedure TfrmRegistration.Q_REGIONSAfterOpen(DataSet: TDataSet);
begin
  frmEditRegistration.ComboBox1.Items.Clear;
  Q_REGIONS.First;
  while not Q_REGIONS.Eof do
  begin
    frmEditRegistration.ComboBox1.Items.Add(Q_REGIONS.FieldValues['NAME']);
    frmEditRegistration.ComboBox1.Items.Add(Q_REGIONS.FieldValues['NAME']);
    Q_REGIONS.Next;
  end;
  Q_REGIONS.First;
end;

procedure TfrmRegistration.Q_TITLESAfterOpen(DataSet: TDataSet);
begin
  {ComboBox3.Items.Clear;
  ComboBox3.Items.Add('');
  ComboBox5.Items.Clear;
  ComboBox5.Items.Add('');
  Q_TITLES.First;
  while not Q_TITLES.Eof do
  begin
    ComboBox3.Items.Add(Q_TITLES.FieldValues['NAME']);
    ComboBox5.Items.Add(Q_TITLES.FieldValues['NAME']);
  Q_TITLES.Next;
  end;
  Q_TITLES.First; }
end;

procedure TfrmRegistration.Q_TYPESAfterOpen(DataSet: TDataSet);
begin
  frmEditRegistration.ComboBox3.Items.Clear;
  Q_TYPES.First;
  while not Q_TYPES.Eof do
  begin
    frmEditRegistration.ComboBox3.Items.Add(Q_TYPES.FieldValues['NAME']);
    Q_TYPES.Next;
  end;
  Q_TYPES.First;
end;

//обновить
procedure TfrmRegistration.RefreshExecute(Sender: TObject);
begin
 { Q_CLIENTS.Refresh;
  Q_GROUPS.Refresh;
  Q_G_CL.Refresh;
  Q_EMPL.Refresh;
  Q_DEPS.Refresh;
  Q_JOBS.Refresh;
  Q_ADVERT.Refresh;
  Q_TYPES.Refresh;
  Q_REGIONS.Refresh;
  Q_TITLES.Refresh;
  Q_DEPART.Refresh; }
  refreshall;
  if Q_SEARCH.Active = true then Q_SEARCH.Refresh;
end;


procedure TfrmRegistration.seach_kodExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then ComboBox12.SetFocus;
  if (PageControl1.TabIndex = 1) then Edit5.SetFocus;
end;

procedure TfrmRegistration.search_nickExecute(Sender: TObject);
begin
 if (PageControl1.TabIndex = 0) then Edit2.SetFocus;
end;

procedure TfrmRegistration.select_allExecute(Sender: TObject);
begin
     CRDBGrid4.Selection.SelectAll;
end;

//поиск клиента
procedure TfrmRegistration.SpeedButton4Click(Sender: TObject);
var sql: string;
begin
  Q_GROUPS.Close;
  Q_GROUPS.SQL.Clear;
  sql := 'SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o where (a.ID_OFFICE='+IntToStr(intDefOffice)+' or 0='+IntToStr(intDefOffice)+') and a.id_office = o.id_office and a.ID_CLIENTS_GROUPS in (select ID_CLIENTS_GROUPS from clients where (ID_OFFICE='+IntToStr(intDefOffice)+' or '+IntToStr(intDefOffice)+'=0) ';
  if ( Trim(Edit25.Text) <> '' ) then sql := sql + ' and UPPER(NICK) LIKE UPPER(''%'+Edit25.Text+'%'')';
  if ( Trim(Edit26.Text) <> '' ) then sql := sql + ' and UPPER(FIO) LIKE UPPER(''%'+Edit26.Text+'%'')';
  sql := sql + ' ) ORDER BY a.NAME';
  Q_GROUPS.SQL.Add(sql);
  Q_GROUPS.Open;
  if ( Trim(Edit25.Text) <> '' ) then Q_G_CL.Locate('NICK',Edit25.Text,[loCaseInsensitive, loPartialKey]);
  if ( Trim(Edit26.Text) <> '' ) then Q_G_CL.Locate('FIO',Edit26.Text,[loCaseInsensitive, loPartialKey]);
end;

//  Показ всех групп без фильтров
procedure TfrmRegistration.SpeedButton5Click(Sender: TObject);
var sql: string;
begin
  Q_GROUPS.Close;
  Q_GROUPS.SQL.Clear;
  sql := 'SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o where (a.ID_OFFICE='+IntToStr(intDefOffice)+' or '+IntToStr(intDefOffice)+'=0) and a.id_office = o.id_office ORDER BY a.NAME';
  Q_GROUPS.SQL.Add(sql);
  Q_GROUPS.Open;
  Edit25.Text := '';
  Edit26.Text := '';
end;

// Ctrl+Enter
procedure TfrmRegistration.aClearFilterExecute(Sender: TObject);
begin
    if (PageControl1.ActivePageIndex = 0) then cxClientView.DataController.Filter.Clear;
end;

procedure TfrmRegistration.aCtrlEnterExecute(Sender: TObject);
begin
     {    4to za tablizi
   if PageControl1.ActivePageIndex = 0 then CRDBGrid1DblClick(Sender);
  if PageControl1.ActivePageIndex = 1 then cxGridDBTableView1DblClick(Sender);
                }
end;

//добавить
procedure TfrmRegistration.AddNExecute(Sender: TObject);
begin
try
  // add_or_edit:=0;
 // frmEditRegistration := TfrmEditRegistration.Create(Application);
  // Добавление клиента
  if (PageControl1.TabIndex = 0) then
  begin
    frmEditRegistration.ComboBox1.ItemIndex := -1;
    frmEditRegistration.ComboBox2.ItemIndex := -1;
    frmEditRegistration.ComboBox3.ItemIndex := -1;
    frmEditRegistration.ComboBox4.ItemIndex := frmEditRegistration.ComboBox4.Items.IndexOf('Общая группа');

    frmEditRegistration.LabeledEdit1.Text := '';
    frmEditRegistration.LabeledEdit2.Text := '';
    frmEditRegistration.LabeledEdit4.Text := '';
    frmEditRegistration.LabeledEdit6.Text := '';
    frmEditRegistration.LabeledEdit7.Text := '';
    frmEditRegistration.LabeledEdit8.Text := '';
    frmEditRegistration.LabeledEdit9.Text := '';
    frmEditRegistration.LabeledEdit10.Text := '';
    frmEditRegistration.LabeledEdit11.Text := '';
    frmEditRegistration.LabeledEdit12.Text := '';
    frmEditRegistration.DBComboBoxEh1.ItemIndex := GetOfficeID;
    frmEditRegistration.DBComboBoxEh1.ReadOnly := (GetOfficeID > 1);

    frmEditRegistration.Edit1.Text := '';

    frmEditRegistration.Memo1.Lines.Clear;
    //frmEditRegistration.Memo2.Lines.Clear;
    frmeditsubreg.edit4.Clear;
    //frmeditsubreg.DateTimePicker1.Date:=now;
    frmeditsubreg.combobox8.Clear;
    frmeditsubreg.edit5.Clear;
    frmeditsubreg.edit6.Clear;
    frmeditsubreg.edit7.Clear;

    frmEditRegistration.Memo3.Lines.Clear;
    //frmEditRegistration.Memo4.Lines.Clear;
    frmEditRegistration.edit3.Clear;
    frmEditRegistration.edit7.Clear;
    frmEditRegistration.edit8.Clear;
    frmEditRegistration.edit9.Clear;

    //frmEditRegistration.Memo5.Lines.Clear;
    frmEditRegistration.edit10.Clear;
    frmEditRegistration.edit11.Clear;
    frmEditRegistration.edit12.Clear;
    frmEditRegistration.edit13.Clear;

    frmEditRegistration.Memo6.Lines.Clear;
    frmEditRegistration.Memo7.Lines.Clear;
    frmEditRegistration.Memo8.Lines.Clear;

    frmEditRegistration.CheckBox1.Checked := false;
    frmEditRegistration.CheckBox2.Checked := false;
    frmEditRegistration.CheckBox4.Checked := false;
    frmEditRegistration.CheckBox5.Checked := false;
    frmEditRegistration.CheckBox6.Checked := false;

    frmEditRegistration.ttype := 1;
    frmEditRegistration.SpeedButton1Click(self);
    frmEditRegistration.SpeedButton1.Visible := false;

    frmEditRegistration.DBText1.Visible := false;
    frmEditRegistration.DBText2.Visible := false;
    frmEditRegistration.DBText3.Visible := false;
    frmEditRegistration.DBText4.Visible := false;
    frmEditRegistration.gr_address.Enabled := false;

    frmEditRegistration.cdsCity.Filter := '';
    frmEditRegistration.cdsCity.Filtered := false;

    frmEditRegistration.lePrefix.Text := '';
    //frmEditRegistration.btnClone.Enabled := addit_;
    frmEditRegistration.showmodal;

    frmEditRegistration.chbRuleSite.Checked := true;
    frmEditRegistration.chbRulePics.Checked := true;
    frmEditRegistration.chbRulePrice.Checked := true;
    frmEditRegistration.chbRuleOrder.Checked := true;


  end;

  // Добавление группы
  if (PageControl1.TabIndex = 1) then
  begin
    frmEditSubReg.Edit1.Text := '';
    frmEditSubReg.Memo1.Lines.Clear;
    frmEditSubReg.ttype := 1;
    frmEditSubReg.showmodal;
  end;


  finally
  //frmEditRegistration.Free;
  end;
end;

//на выход
procedure TfrmRegistration.aExitExecute(Sender: TObject);
begin
 close;
end;


// Копирование клиента
procedure TfrmRegistration.bbCopyClientClick(Sender: TObject);
var ind: integer; ss: string;
begin
  if (PageControl1.TabIndex = 0) then
  begin
    if (Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if (Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
      else
      begin
        Q_CLIENT_VIEW.Close;
        Q_CLIENT_VIEW.SQL.Clear;
        Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
        Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        Q_CLIENT_VIEW.ParamByName('ID').Value := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        Q_CLIENT_VIEW.Open;

        ind := frmEditRegistration.ComboBox1.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        frmEditRegistration.ComboBox1.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox2.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        frmEditRegistration.ComboBox2.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox3.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        frmEditRegistration.ComboBox3.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox4.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        frmEditRegistration.ComboBox4.ItemIndex := ind;

        frmEditRegistration.LabeledEdit1.Text := '';
        frmEditRegistration.LabeledEdit2.Text := '';
        frmEditRegistration.LabeledEdit4.Text := Q_CLIENT_VIEW.FieldByName('INN').AsString;
        frmEditRegistration.LabeledEdit6.Text := Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        frmEditRegistration.LabeledEdit7.Text := Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        frmEditRegistration.LabeledEdit8.Text := Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        frmEditRegistration.LabeledEdit9.Text := Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        frmEditRegistration.LabeledEdit10.Text := Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        frmEditRegistration.LabeledEdit11.Text := Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        frmEditRegistration.LabeledEdit12.Text := Q_CLIENT_VIEW.FieldByName('WWW').AsString;
        frmEditRegistration.DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
        frmEditRegistration.Edit1.Text := '';
        frmEditRegistration.Memo1.Text := Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        frmEditRegistration.Memo3.Text := Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        //блин - это править, т.к. комуто вместо 1 поля 10 захотелось
        {frmEditRegistration.Memo2.Text := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        frmEditRegistration.Memo4.Text := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        frmEditRegistration.Memo5.Text := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;  }
        if pos('%',Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
           frmeditsubreg.edit4.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           if copy(ss,1,pos('%',ss)-1)<>'' then
           frmeditsubreg.DateTimePicker1.date:= strtodate(copy(ss,1,pos('%',ss)-1));
           delete(ss,1,pos('%',ss));
           frmeditsubreg.combobox8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit5.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit6.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit7.Text := ss;
        end else
        begin
           frmeditsubreg.edit4.Clear;
           frmeditsubreg.DateTimePicker1.date:=now;
           frmeditsubreg.combobox8.Clear;
           frmeditsubreg.edit5.Clear;
           frmeditsubreg.edit6.Clear;
           frmeditsubreg.edit7.Clear;
        end;
        if pos('%',Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
           frmEditRegistration.edit3.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit7.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit9.Text := ss;
        end else
        begin
           frmEditRegistration.edit3.Clear;
           frmEditRegistration.edit7.Clear;
           frmEditRegistration.edit8.Clear;
           frmEditRegistration.edit9.Clear;
        end;
        if pos('%',Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
           frmEditRegistration.edit10.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit11.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit12.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit13.Text := ss;
        end else
        begin
           frmEditRegistration.edit10.Clear;
           frmEditRegistration.edit11.Clear;
           frmEditRegistration.edit12.Clear;
           frmEditRegistration.edit13.Clear;
        end;

        frmEditRegistration.Memo6.Text := Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

        if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then frmEditRegistration.CheckBox1.Checked := true else frmEditRegistration.CheckBox1.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then frmEditRegistration.CheckBox2.Checked := true else frmEditRegistration.CheckBox2.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then frmEditRegistration.chbRuleSite.Checked := true else frmEditRegistration.chbRuleSite.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then frmEditRegistration.chbRulePics.Checked := true else frmEditRegistration.chbRulePics.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then frmEditRegistration.chbRulePrice.Checked := true else frmEditRegistration.chbRulePrice.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then frmEditRegistration.chbRuleOrder.Checked := true else frmEditRegistration.chbRuleOrder.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then frmEditRegistration.CheckBox4.Checked := true else frmEditRegistration.CheckBox4.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then frmEditRegistration.CheckBox5.Checked := true else frmEditRegistration.CheckBox5.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then frmEditRegistration.CheckBox6.Checked := true else frmEditRegistration.CheckBox6.Checked := false;

        frmEditRegistration.SpeedButton1.Visible := true;
        frmEditRegistration.btnClone.Enabled := false;
        
        frmEditRegistration.ttype := 1;
        frmEditRegistration.showmodal;
      end;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;


  if (PageControl1.TabIndex = 2) then
  begin
    if Q_EMPL.IsEmpty then
    begin
      ShowMessage('Нет данных для редактирования!');
      exit;
    end;

        Q_CLIENT_VIEW.Close;
        Q_CLIENT_VIEW.SQL.Clear;
        Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
        Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        Q_CLIENT_VIEW.ParamByName('ID').Value := Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
        Q_CLIENT_VIEW.Open;

        ind := frmEditRegistration.ComboBox1.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        frmEditRegistration.ComboBox1.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox2.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        frmEditRegistration.ComboBox2.ItemIndex := ind;
        frmEditRegistration.ComboBox3.ItemIndex := -1; //ind;
        ind := frmEditRegistration.ComboBox4.Items.IndexOf('Общая группа');
        frmEditRegistration.ComboBox4.ItemIndex := ind;

        frmEditRegistration.LabeledEdit1.Text := StringReplace(Q_CLIENT_VIEW.FieldByName('NICK').AsString, 'S ', 'M ', []);
        frmEditRegistration.LabeledEdit2.Text := Q_CLIENT_VIEW.FieldByName('FIO').AsString;
        frmEditRegistration.LabeledEdit4.Text := Q_CLIENT_VIEW.FieldByName('INN').AsString;
        frmEditRegistration.LabeledEdit6.Text := Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        frmEditRegistration.LabeledEdit7.Text := Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        frmEditRegistration.LabeledEdit8.Text := Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        frmEditRegistration.LabeledEdit9.Text := Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        frmEditRegistration.LabeledEdit10.Text := Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        frmEditRegistration.LabeledEdit11.Text := Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        frmEditRegistration.LabeledEdit12.Text := Q_CLIENT_VIEW.FieldByName('WWW').AsString;
        frmEditRegistration.DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
        frmEditRegistration.Edit1.Text := '';
        frmEditRegistration.Memo1.Text := Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        frmEditRegistration.Memo3.Text := Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        //тот же еперный экибастус
        {frmEditRegistration.Memo2.Text := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        frmEditRegistration.Memo4.Text := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        frmEditRegistration.Memo5.Text := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;   }
        if pos('%',Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
           frmeditsubreg.edit4.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           if copy(ss,1,pos('%',ss)-1)<>'' then
           frmeditsubreg.DateTimePicker1.date:= strtodate(copy(ss,1,pos('%',ss)-1));
           delete(ss,1,pos('%',ss));
           frmeditsubreg.combobox8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit5.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit6.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit7.Text := ss;
        end else
        begin
           frmeditsubreg.edit4.Clear;
           frmeditsubreg.DateTimePicker1.date:=now;
           frmeditsubreg.combobox8.Clear;
           frmeditsubreg.edit5.Clear;
           frmeditsubreg.edit6.Clear;
           frmeditsubreg.edit7.Clear;
        end;
        if pos('%',Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
           frmEditRegistration.edit3.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit7.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit9.Text := ss;
        end else
        begin
           frmEditRegistration.edit3.Clear;
           frmEditRegistration.edit7.Clear;
           frmEditRegistration.edit8.Clear;
           frmEditRegistration.edit9.Clear;
        end;
        if pos('%',Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
           frmEditRegistration.edit10.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit11.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit12.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit13.Text := ss;
        end else
        begin
           frmEditRegistration.edit10.Clear;
           frmEditRegistration.edit11.Clear;
           frmEditRegistration.edit12.Clear;
           frmEditRegistration.edit13.Clear;
        end;

        frmEditRegistration.Memo6.Text := Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

        if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then frmEditRegistration.CheckBox1.Checked := true else frmEditRegistration.CheckBox1.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then frmEditRegistration.CheckBox2.Checked := true else frmEditRegistration.CheckBox2.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then frmEditRegistration.chbRuleSite.Checked := true else frmEditRegistration.chbRuleSite.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then frmEditRegistration.chbRulePics.Checked := true else frmEditRegistration.chbRulePics.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then frmEditRegistration.chbRulePrice.Checked := true else frmEditRegistration.chbRulePrice.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then frmEditRegistration.chbRuleOrder.Checked := true else frmEditRegistration.chbRuleOrder.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then frmEditRegistration.CheckBox4.Checked := true else frmEditRegistration.CheckBox4.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then frmEditRegistration.CheckBox5.Checked := true else frmEditRegistration.CheckBox5.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then frmEditRegistration.CheckBox6.Checked := true else frmEditRegistration.CheckBox6.Checked := false;

        frmEditRegistration.ttype := 1;
        frmEditRegistration.showmodal;
  end;

end;


// Копирование клиента в старую БД - НЕТУ ПУТИ client_path - ГДЕ ЕГО ЛУЧШЕ ХРАНИТЬ?
procedure TfrmRegistration.bbCopyToOldClick(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then
begin
  if (Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
   if MessageDlg('Вы уверены, что хотите скопировать клиента в старую БД?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      // Пытаемся выполнить INSERT в таблицу
      try
        Q_CLIENT_VIEW.Close;
        Q_CLIENT_VIEW.SQL.Clear;
        Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
        Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        Q_CLIENT_VIEW.ParamByName('ID').Value := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        Q_CLIENT_VIEW.Open;

        Clients_table.Active := false;
        Clients_table.TableName := client_path;
        Clients_table.Active := true;

          Clients_table.Active := false;
          Clients_table.TableName := client_path2;
          Clients_table.Active := true;

          Clients_table.Edit;
          Clients_table.Insert;
          Clients_table.FieldByName('FIO').AsString := Q_client_view.FieldByName('FIO').AsString;
          Clients_table.FieldByName('NICK').AsString := Q_client_view.FieldByName('NICK').AsString;
          Clients_table.FieldByName('F1').AsString := Q_client_view.FieldByName('U_ADDRESS').AsString; // DM.Q_client_view.FieldByName('ADDRESS').AsString;
          Clients_table.FieldByName('F2').AsString := Q_client_view.FieldByName('INN').AsString;
          Clients_table.FieldByName('F3').AsString := Q_client_view.FieldByName('PHONE').AsString;
          Clients_table.FieldByName('F4').AsString := Q_client_view.FieldByName('PASSPORT').AsString;
          Clients_table.FieldByName('F5').AsString := Q_client_view.FieldByName('CONTACT').AsString;
          Clients_table.FieldByName('F6').AsString := Q_client_view.FieldByName('CONT_PHONE').AsString;
          Clients_table.FieldByName('MARK').AsInteger := StrToInt(Q_client_view.FieldByName('MARK').AsString[1]);
          Clients_table.FieldByName('CODE').AsString := Q_client_view.FieldByName('CCODE').AsString;
          Clients_table.FieldByName('F9').AsString := Q_client_view.FieldByName('BANK').AsString;
          Clients_table.FieldByName('F10').AsString := Q_client_view.FieldByName('AGREEMENT').AsString;
          Clients_table.FieldByName('DAT').AsDateTime := Q_client_view.FieldByName('DDATE').AsDateTime;
          Clients_table.FieldByName('OTKUDA').AsString := Q_client_view.FieldByName('ADVERT').AsString;

          if (Q_client_view.FieldByName('BLOCK1').AsInteger = 1) then Clients_table.FieldByName('BLOK2').AsBoolean := true else Clients_table.FieldByName('BLOK2').AsBoolean := false;
          if (Q_client_view.FieldByName('BLOCK2').AsInteger = 1) then Clients_table.FieldByName('BLOK1').AsBoolean := true else Clients_table.FieldByName('BLOK1').AsBoolean := false;

          if (Q_client_view.FieldByName('FLOWERS').AsInteger = 1) then Clients_table.FieldByName('FLOWERS').AsBoolean := true else Clients_table.FieldByName('FLOWERS').AsBoolean := false;
          if (Q_client_view.FieldByName('PLANTS').AsInteger = 1) then Clients_table.FieldByName('PLANTS').AsBoolean := true else Clients_table.FieldByName('PLANTS').AsBoolean := false;

          Clients_table.Post;
          Clients_table.Active := false;
          if intDefOffice = 1 then
             ShellExecute(Application.Handle, nil, PChar(progas), nil, nil, SW_SHOWNORMAL);
          ShowMessage('Клиент скопирован в старую БД успешно.');
      except
        on E: Exception do ShowMessage(E.Message);
      end;
    end;
  end
  else ShowMessage('Нет данных для копирования!');
end;
end;


//выгр клиентов из файла
procedure TfrmRegistration.bbSyncClientsClick(Sender: TObject);
var sql_str: string;
    res,ResText : Variant;
    new_id, old_id, param_, s_id_, p_price: integer;
    F_CSV: TextFile;
begin
  if MessageDlg('Создать экспортный файл клиентов для Москвы?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  if not DirectoryExists(path+'\OUT') then
  if not CreateDir(path+'\OUT') then
  begin
    MessageBox (Handle,'Ошибка при создании директории.', 'Ошибка!', MB_ICONERROR);
    exit;
  end;

  try
    screen.cursor := crHourGlass;

    //pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    //pnl_msg.Repaint;

    AssignFile(F_CSV, path+ '\OUT\'+IntToStr(intDefOffice)+'_export_clients.sql');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';
    selq.close;
    selq.sql.Clear;
    selq.sql.Add(sql_str);
    selq.Execute;

    sql_str := 'begin sync_pkg.make_clients_groups(:p_cursor); end;';
    ins_to_file(selq, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_clients_list(:p_cursor); end;';
    ins_to_file(selq, F_CSV, sql_str, 0);

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);
    pnl_msg.free;
    ShellExecute(Handle, nil, PChar(path+'\OUT'), nil, nil, SW_RESTORE);
  end;
end;

//загр клиентов из файла
procedure TfrmRegistration.bbSyncCLientsLoadClick(Sender: TObject);
var F_CSV: TextFile;
    proc_text: string;
    rc: integer;
begin
  if odInvoice.Execute then
  begin
    try
      screen.cursor := crHourGlass;
     //чето   не пойму зачем это:
    //  pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    //  pnl_msg.Repaint;

      AssignFile(F_CSV, odInvoice.FileName);
      Reset(F_CSV);
      DecimalSeparator := '.';
      selq.close;
      selq.sql.Clear;
      selq.sql.Add('Alter session set NLS_NUMERIC_CHARACTERS=''.,''');
      selq.Execute;


      rc := 0;
      try
        while not Eof(F_CSV) do
        begin
          ReadLn(F_CSV, proc_text);
          rc := rc + 1;
          if (trim(proc_text) <> '') then
          begin
            with selq do
            begin
              close;
              sql.Clear;
              sql.Add(proc_text);
              Execute;
            end;
          end;
        end;
      except
        on E: Exception do
        begin
          ShowMessage('Ошибка выполнения запроса в строке '+IntToStr(rc));
        end;
      End;

      selq.close;
      selq.sql.Clear;
      selq.sql.Add('begin creator.sync_local_data.SYNC_CLIENTS_save; end;');
      selq.Execute;
      selq.close;

      Refresh.Execute;
      MessageBox (Handle,'Файл импортирован успешно.', 'Результат', MB_ICONINFORMATION);

    finally
      pnl_msg.Free;
      screen.cursor := crDefault;
      CloseFile(F_CSV);
      DM.OraSession.Commit;
    end;
  end;
end;


procedure TfrmRegistration.BitBtn22Click(Sender: TObject);
begin
 if ( ( DbComboBoxEh1.ItemIndex = 0 ) and (trim(edit10.Text) = '') and (trim(edit11.Text) = '') and (trim(edit12.Text) = '') and (trim(edit13.Text) = '') and (trim(edit14.Text) = '') and (trim(edit15.Text) = '') and (trim(edit16.Text) = '') and (trim(edit17.Text) = '') and (trim(edit18.Text) = '') and (trim(edit19.Text) = '') and (trim(edit20.Text) = '') and (trim(edit21.Text) = '') and (trim(edit22.Text) = '') and (trim(edit23.Text) = '') and (trim(edit24.Text) = '') ) then
  showmessage('Заполните поля для поиска!')
  else
  begin
    Q_SEARCH.Close;
    Q_SEARCH.SQL.Clear;
    Q_SEARCH.SQL.Add('SELECT C.*, s.city , o.brief, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT ');
    Q_SEARCH.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    Q_SEARCH.SQL.Add('WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS and c.id_city = s.id_city(+) and c.id_office = o.ID_OFFICE and (c.ID_OFFICE='+IntToStr(intDefOffice)+' or 0='+IntToStr(intDefOffice)+') ');

    if (DBComboBoxEh2.Value = 1) then
    begin
      if trim(edit10.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(NICK) like ''%'+ AnsiUpperCase(Edit10.Text) +'%''');
      if trim(edit11.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(FIO) like ''%'+ AnsiUpperCase(Edit11.Text) +'%''');
      if trim(edit12.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) like ''%'+ AnsiUpperCase(Edit12.Text) +'%''');
      if trim(edit13.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) like ''%'+ AnsiUpperCase(Edit13.Text) +'%''');
      if trim(edit14.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(CONTACT) like ''%'+ AnsiUpperCase(Edit14.Text) +'%''');
      if trim(edit15.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(INN) like ''%'+ AnsiUpperCase(Edit15.Text) +'%''');
      if trim(edit16.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(KPP) like ''%'+ AnsiUpperCase(Edit16.Text) +'%''');
      if trim(edit17.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(OKATO) like ''%'+ AnsiUpperCase(Edit17.Text) +'%''');
      if trim(edit18.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(EMAIL) like ''%'+ AnsiUpperCase(Edit18.Text) +'%''');
      if trim(edit19.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(WWW) like ''%'+ AnsiUpperCase(Edit19.Text) +'%''');
      if trim(edit20.Text) <> '' then Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) like ''%'+ AnsiUpperCase(Edit20.Text) +'%'' or UPPER(CONT_PHONE) like ''%'+ AnsiUpperCase(Edit20.Text) +'%'' )');
      if trim(edit21.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) like ''%'+ AnsiUpperCase(Edit21.Text) +'%''');
      if trim(edit22.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(BANK) like ''%'+ AnsiUpperCase(Edit22.Text) +'%''');
      if trim(edit23.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) like ''%'+ AnsiUpperCase(Edit23.Text) +'%''');
      if trim(edit24.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) like ''%'+ AnsiUpperCase(Edit24.Text) +'%''');
    end;

    if (DBComboBoxEh2.Value = 2) then
    begin
      if trim(edit10.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(NICK) like '''+ AnsiUpperCase(Edit10.Text) +'%''');
      if trim(edit11.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(FIO) like '''+ AnsiUpperCase(Edit11.Text) +'%''');
      if trim(edit12.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) like '''+ AnsiUpperCase(Edit12.Text) +'%''');
      if trim(edit13.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) like '''+ AnsiUpperCase(Edit13.Text) +'%''');
      if trim(edit14.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(CONTACT) like '''+ AnsiUpperCase(Edit14.Text) +'%''');
      if trim(edit15.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(INN) like '''+ AnsiUpperCase(Edit15.Text) +'%''');
      if trim(edit16.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(KPP) like '''+ AnsiUpperCase(Edit16.Text) +'%''');
      if trim(edit17.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(OKATO) like '''+ AnsiUpperCase(Edit17.Text) +'%''');
      if trim(edit18.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(EMAIL) like '''+ AnsiUpperCase(Edit18.Text) +'%''');
      if trim(edit19.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(WWW) like '''+ AnsiUpperCase(Edit19.Text) +'%''');
      if trim(edit20.Text) <> '' then Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) like '''+ AnsiUpperCase(Edit20.Text) +'%'' or UPPER(CONT_PHONE) like '''+ AnsiUpperCase(Edit20.Text) +'%'' )');
      if trim(edit21.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) like '''+ AnsiUpperCase(Edit21.Text) +'%''');
      if trim(edit22.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(BANK) like '''+ AnsiUpperCase(Edit22.Text) +'%''');
      if trim(edit23.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) like '''+ AnsiUpperCase(Edit23.Text) +'%''');
      if trim(edit24.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) like '''+ AnsiUpperCase(Edit24.Text) +'%''');
    end;

    if (DBComboBoxEh2.Value = 3) then
    begin
      if trim(edit10.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(NICK) = '''+ AnsiUpperCase(Edit10.Text) +'''');
      if trim(edit11.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(FIO) = '''+ AnsiUpperCase(Edit11.Text) +'''');
      if trim(edit12.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) = '''+ AnsiUpperCase(Edit12.Text) +'''');
      if trim(edit13.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) = '''+ AnsiUpperCase(Edit13.Text) +'''');
      if trim(edit14.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(CONTACT) = '''+ AnsiUpperCase(Edit14.Text) +'''');
      if trim(edit15.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(INN) = '''+ AnsiUpperCase(Edit15.Text) +'''');
      if trim(edit16.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(KPP) = '''+ AnsiUpperCase(Edit16.Text) +'''');
      if trim(edit17.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(OKATO) = '''+ AnsiUpperCase(Edit17.Text) +'''');
      if trim(edit18.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(EMAIL) = '''+ AnsiUpperCase(Edit18.Text) +'''');
      if trim(edit19.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(WWW) = '''+ AnsiUpperCase(Edit19.Text) +'''');
      if trim(edit20.Text) <> '' then Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) = '''+ AnsiUpperCase(Edit20.Text) +''' or UPPER(CONT_PHONE) = '''+ AnsiUpperCase(Edit20.Text) +''' )');
      if trim(edit21.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) = '''+ AnsiUpperCase(Edit21.Text) +'''');
      if trim(edit22.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(BANK) = '''+ AnsiUpperCase(Edit22.Text) +'''');
      if trim(edit23.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) = '''+ AnsiUpperCase(Edit23.Text) +'''');
      if trim(edit24.Text) <> '' then Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) = '''+ AnsiUpperCase(Edit24.Text) +'''');
    end;

    if DbComboBoxEh1.ItemIndex > 0 then Q_SEARCH.SQL.Add(' and reg_type='+DbComboBoxEh1.Value);
    Q_SEARCH.Open;
    CrDBGrid4.Visible := true;
  end;
end;

procedure TfrmRegistration.BitBtn23Click(Sender: TObject);
begin
  Edit10.Text := '';
  Edit11.Text := '';
  Edit12.Text := '';
  Edit13.Text := '';
  Edit14.Text := '';
  Edit15.Text := '';
  Edit16.Text := '';
  Edit17.Text := '';
  Edit18.Text := '';
  Edit19.Text := '';
  Edit20.Text := '';
  Edit21.Text := '';
  Edit22.Text := '';
  Edit23.Text := '';
  Edit24.Text := '';
  DbComboBoxEh1.ItemIndex := 0;

  Q_SEARCH.Close;
  Q_SEARCH.SQL.Clear;
  Q_SEARCH.SQL.Add('SELECT C.*, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o ');
  Q_SEARCH.SQL.Add('WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS and c.id_office = o.ID_OFFICE and (c.ID_OFFICE='+IntToStr(intDefOffice)+' or 0='+IntToStr(intDefOffice)+') ');
  CrDBGrid4.Visible := false;
end;

procedure TfrmRegistration.BitBtn3Click(Sender: TObject);
begin
    try
    DBGrid2.DataSource := nil;
    DBGrid2.DataSource := Q_GROUPS_DS;
  except
    on E: Exception do
    begin
      DBGrid2.DataSource := Q_GROUPS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;

procedure TfrmRegistration.BitBtn4Click(Sender: TObject);
begin
 try
    if MessageDlg('Печатать карточки на пластиковых картах?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      // Открытие запроса по карточкам
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin CLIENTS_PKG.get_bar_code_list(:id_clients_, :cursor_); end;');
      selq.ParamByName('id_clients_').AsInteger := 0;
      selq.ParamByName('cursor_').DataType := ftCursor;
      selq.Open;

      if selq.RecordCount > 0 then
      begin
        frxReport1.LoadFromFile(path+'raports\ClientCard.fr3');
        frxReport1.ShowReport;
      end;

      if selq.RecordCount > 0 then
      begin
        frxReport1.LoadFromFile(path+'raports\ClientCard_back_new.fr3');
        frxReport1.ShowReport;
      end;

      selq.Close;
     // BitBtn24Click(self); // чо за кнопка?
    end
    else
    begin
      frxReport1.LoadFromFile(path+'raports\ClientCard_simple.fr3');
      frxReport1.ShowReport;
    end;
    cxClient.SetFocus;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;

//укороч.печать
procedure TfrmRegistration.BitBtn5Click(Sender: TObject);
var str: string;  i:integer;  id:string;
begin
try
  path := ExtractFilePath(Application.ExeName);
  if (Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
  if Q_CLIENTS.Filtered = true then begin

   Q_CLIENTS.First;
   with cxgriddbtableview1.dataController do
   for I := 0 to FilteredRecordCount  - 1 do begin
     id:=inttostr(Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger)+','+id;
     Q_CLIENTS.Next;
   end;
    delete(id,length(id),1);

    Q_CLIENT_VIEW.Close;
    Q_CLIENT_VIEW.SQL.Clear;
    Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
    Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS in ('+id+') and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
    Q_CLIENT_VIEW.Open;

    cds_adress.Close;
    cds_adress.SQL.Clear;
    cds_adress.SQL.Add('SELECT a.address FROM client_address a where a.ID_CLIENTS in ('+id+')');
    cds_adress.Open;
  end else begin
    Q_CLIENT_VIEW.Close;
    Q_CLIENT_VIEW.SQL.Clear;
    Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
    Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS =:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
    Q_CLIENT_VIEW.ParamByName('ID').Value := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    Q_CLIENT_VIEW.Open;

    cds_adress.Close;
    cds_adress.ParamByName('p1').AsInteger := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    cds_adress.Open;
  end;
    frxReport1.LoadFromFile(path+'raports\clients_card_short.fr3');
    frxReport1.ShowReport;
    cds_adress.Close;  
  end
  else ShowMessage('Нет данных для просмотра!');
except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
End;
end;

// печать списка
procedure TfrmRegistration.BitBtn6Click(Sender: TObject);
begin
  try
    cxClientView.DataController.DataSource := nil;
    frxReport1.LoadFromFile(path+'raports\clients_all.fr3');
    frxReport1.ShowReport;
    cxClientView.DataController.DataSource := Q_CLIENTS_DS;
  except
    on E: Exception do
    begin
      cxClientView.DataController.DataSource := Q_CLIENTS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;

// статистика - не готова форма
procedure TfrmRegistration.BitBtn7Click(Sender: TObject);
var sql: string;
begin
 { statistic.Chart1.Series[0].Clear;
  statistic.Chart1.Title.Text.Clear;
  statistic.BitBtn6.Enabled := print_;

  if (RadioButton1.Checked = true) then
  begin
    statistic.Chart1.Title.Text.Add('ГРАФИК ПО ТИПАМ КЛИЕНТОВ');
    DM.Q_TYPES.First;
    while not DM.Q_TYPES.Eof do
    begin
      sql := 'SELECT COUNT(C.ID_CLIENTS) AS NUMM FROM CLIENTS C WHERE (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and C.TTYPE=:TYPE and DDATE >= :D1 AND DDATE <= :D2';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.ParamByName('TYPE').Value := DM.Q_TYPES.FieldByName('ID_CLIENT_TYPES').Value;
      DM.Q_SQL.ParamByName('D1').AsDate := DateTimePicker3.Date;
      DM.Q_SQL.ParamByName('D2').AsDate := DateTimePicker4.Date;
      DM.Q_SQL.Open;

      statistic.Chart1.Series[0].Add(DM.Q_SQL.FieldByName('NUMM').AsInteger, DM.Q_TYPES.FieldByName('NAME').AsString);

      DM.Q_TYPES.Next;
    end;
    DM.Q_TYPES.Close;
  end;

  if (RadioButton2.Checked = true) then
  begin
    statistic.Chart1.Title.Text.Add('ГРАФИК ПО ИСТОЧНИКАМ РЕКЛАМЫ');
    DM.Q_ADVERT.First;
    while not DM.Q_ADVERT.Eof do
    begin
      sql := 'SELECT COUNT(C.ID_CLIENTS) AS NUMM FROM CLIENTS C WHERE (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and C.ADVERTISMENT=:TYPE and DDATE >= :D1 AND DDATE <= :D2';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.ParamByName('TYPE').Value := DM.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').AsInteger;
      DM.Q_SQL.ParamByName('D1').AsDate := DateTimePicker3.Date;
      DM.Q_SQL.ParamByName('D2').AsDate := DateTimePicker4.Date;
      DM.Q_SQL.Open;

      statistic.Chart1.Series[0].Add(DM.Q_SQL.FieldByName('NUMM').AsInteger, DM.Q_ADVERT.FieldByName('NAME').AsString);

      DM.Q_ADVERT.Next;
    end;
    DM.Q_ADVERT.Close;
  end;

  if (RadioButton3.Checked = true) then
  begin
      sql := 'SELECT COUNT(C.ID_CLIENTS) AS NUMM FROM CLIENTS C WHERE (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and C.PLANTS=:TYPE and DDATE >= :D1 AND DDATE <= :D2';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.ParamByName('TYPE').Value := 1;
      DM.Q_SQL.ParamByName('D1').AsDate := DateTimePicker3.Date;
      DM.Q_SQL.ParamByName('D2').AsDate := DateTimePicker4.Date;
      DM.Q_SQL.Open;
      statistic.Chart1.Series[0].Add(DM.Q_SQL.FieldByName('NUMM').AsInteger, 'Горшечные растения');

      sql := 'SELECT COUNT(C.ID_CLIENTS) AS NUMM FROM CLIENTS C WHERE (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and C.FLOWERS=:TYPE and DDATE >= :D1 AND DDATE <= :D2';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.ParamByName('TYPE').Value := 1;
      DM.Q_SQL.ParamByName('D1').AsDate := DateTimePicker3.Date;
      DM.Q_SQL.ParamByName('D2').AsDate := DateTimePicker4.Date;
      DM.Q_SQL.Open;
      statistic.Chart1.Series[0].Add(DM.Q_SQL.FieldByName('NUMM').AsInteger, 'Срезанные растения');
  end;

  if (RadioButton4.Checked = true) then
  begin
    statistic.Chart1.Title.Text.Add('ГРАФИК ПО РЕГИОНАМ');
    // Открытие регионов
    DM.Q_REGIONS.First;
    while not DM.Q_REGIONS.Eof do
    begin
      sql := 'SELECT COUNT(C.ID_CLIENTS) AS NUMM FROM CLIENTS C WHERE (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and C.REGION=:TYPE and DDATE >= :D1 AND DDATE <= :D2';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.ParamByName('D1').AsDate := DateTimePicker3.Date;
      DM.Q_SQL.ParamByName('D2').AsDate := DateTimePicker4.Date;
      DM.Q_SQL.ParamByName('TYPE').Value := DM.Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
      DM.Q_SQL.Open;

      statistic.Chart1.Series[0].Add(DM.Q_SQL.FieldByName('NUMM').AsInteger, DM.Q_REGIONS.FieldByName('NAME').AsString);

      DM.Q_REGIONS.Next;
    end;
    DM.Q_REGIONS.Close;
  end;

  statistic.ShowModal;    }
end;

//сформировать файл по клиентам
procedure TfrmRegistration.btnFileExportClick(Sender: TObject);
VAR
  f: TextFile;
begin
  if (PageControl1.TabIndex > 0) then exit;
  if not Q_CLIENTS.Active or Q_CLIENTS.IsEmpty then exit;

  if MessageDlg('Будет сформирован CSV файл для экспорта в старую БД по выбранным клиентам?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    path := ExtractFilePath(Application.ExeName);

    try
      Q_CLIENTS.First;
      Q_CLIENTS.DisableControls;
      cursor := crHourGlass;
      try
        AssignFile(f,path+'docs\clients_'+DateToStr(Now)+'.csv');
        Rewrite(f);

        while not Q_CLIENTS.Eof do
        begin
          Writeln(f,Q_CLIENTSNICK.AsString+';'+Q_CLIENTSCCODE.AsString+';'+Q_CLIENTSFIO.AsString+';'+Q_CLIENTSMARK.AsString[1]+';');
          Q_CLIENTS.Next;
        end;
      finally
        CloseFile(f);
        Q_CLIENTS.EnableControls;
        cursor := crDefault;
        ShellExecute(Handle, nil, PChar(path+'docs\'), nil, nil, SW_RESTORE);
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    End;
  end;
end;


procedure TfrmRegistration.btnHelpClick(Sender: TObject);
begin
  // help.showmodal;
end;

procedure TfrmRegistration.btnHotKeysClick(Sender: TObject);
begin
 frmHotKeys.MainFormShow;
end;

//полная печать
procedure TfrmRegistration.btninfClick(Sender: TObject);
var str: string;
begin
try
  path := ExtractFilePath(Application.ExeName);
  if (Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
    Q_CLIENT_VIEW.Close;
    Q_CLIENT_VIEW.SQL.Clear;
    Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
    Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
    Q_CLIENT_VIEW.ParamByName('ID').Value := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    Q_CLIENT_VIEW.Open;


    {// хз.. коменчу
    str := '';
    if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
    if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
    if str = '' then str := 'Нет';
    u_info.Label37.Caption := str;

    u_info.chbRuleSite.Checked  := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
    u_info.chbRulePics.Checked  := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
    u_info.chbRulePrice.Checked := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
    u_info.chbRuleOrder.Checked := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');

    if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then frmEditRegistration.Label10.Caption := 'Да' else frmEditRegistration.Label10.Caption := 'Нет';
    if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then frmEditRegistration.Label12.Caption := 'Да' else frmEditRegistration.Label12.Caption := 'Нет';
                }
    cds_adress.Close;
    cds_adress.ParamByName('p1').AsInteger := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    cds_adress.Open;

    frxReport1.LoadFromFile(path+'raports\clients_card_long.fr3');
    frxReport1.ShowReport;
    cds_adress.Close;
  end
  else ShowMessage('Нет данных для просмотра!');
except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
End;
end;

// печать контактов
procedure TfrmRegistration.btn_conctactClick(Sender: TObject);
begin
  try
    cxClientView.DataController.DataSource := nil;
    frxReport1.LoadFromFile(path+'raports\clients_contacts.fr3');
    frxReport1.ShowReport;
    cxClientView.DataController.DataSource := Q_CLIENTS_DS;
  except
    on E: Exception do
    begin
      cxClientView.DataController.DataSource := Q_CLIENTS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


procedure TfrmRegistration.cxButton2Click(Sender: TObject);
begin

end;

// фильтр по выделеным строкам  - снять/поставить
procedure TfrmRegistration.cxGridDBColumn34HeaderClick(Sender: TObject);
begin
  if Q_CLIENTS.Filter = 'D_CHECK = 0' then begin
   Q_CLIENTS.Filter := 'D_CHECK = 1';
   Q_CLIENTS.Filtered := true;
  end else
  if Q_CLIENTS.Filter = 'D_CHECK = 1' then begin
   Q_CLIENTS.Filter := 'D_CHECK = 0';
   Q_CLIENTS.Filtered := false;
  end else begin
   Q_CLIENTS.Filter := 'D_CHECK = 1';
   Q_CLIENTS.Filtered := true;
  end;
end;



procedure TfrmRegistration.cxGridDBTableView2DblClick(Sender: TObject);
var str: string;
begin
  if (Q_G_CL.RecordCount > 0) then
  begin
      Q_CLIENT_VIEW.Close;
      Q_CLIENT_VIEW.SQL.Clear;
      Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
      Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
      Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
      Q_CLIENT_VIEW.ParamByName('ID').Value := Q_G_CL.FieldByName('ID_CLIENTS').AsInteger;
      Q_CLIENT_VIEW.Open;

     { u_info.Q_ADDRESS.Close;
      u_info.Q_ADDRESS.ParamByName('ID_CLIENTS').AsInteger := DM.Q_G_CL.FieldByName('ID_CLIENTS').AsInteger;
      u_info.Q_ADDRESS.Open;
                            }
      str := '';
      if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
      if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
      if str = '' then str := 'Нет';
     { u_info.Label4.Caption := str;
      u_info.chbRuleSite.Checked  := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
      u_info.chbRulePics.Checked  := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
      u_info.chbRulePrice.Checked := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
      u_info.chbRuleOrder.Checked := (Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');
               }
     { if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then begin u_info.Label10.Caption := 'Да'; u_info.Label10.Font.Color := clRed; end else begin u_info.Label10.Caption := 'Нет'; u_info.Label10.Font.Color := clBlack; end;
      if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then begin u_info.Label12.Caption := 'Да'; u_info.Label12.Font.Color := clRed; end else begin u_info.Label12.Caption := 'Нет'; u_info.Label12.Font.Color := clBlack; end;
      u_info.ShowModal;
      u_info.Q_ADDRESS.Close;  }
  end
  else ShowMessage('Нет данных для просмотра!');
end;


procedure TfrmRegistration.DBGrid2CellClick(Column: TColumnEh);
begin

end;



// удалить запись
procedure TfrmRegistration.DeleteNExecute(Sender: TObject);
 var idd:integer;
begin
  // Удаление клиента
  if (PageControl1.TabIndex = 0) then
  begin
    if (frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if ({DM.id_office} GetOfficeID <> frmRegistration.Q_CLIENTS.FieldByName('ID_OFFICE').AsInteger) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      if MessageDlg('Вы действительно хотите удалить клиента?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
        else
        begin
          frmRegistration.selq.SQL.Clear;

          frmRegistration.selq.SQL.Add('DELETE FROM CLIENTS WHERE ID_CLIENTS = :ID');
          frmRegistration.selq.ParamByName('ID').Value := frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

          frmRegistration.Q_CLIENTS.Next;
          idd := frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            frmRegistration.selq.Execute;
            DM.OraSession.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            frmRegistration.Q_CLIENTS.Refresh;
            frmRegistration.Q_CLIENTS.Locate('ID_CLIENTS',idd,[]);
            frmRegistration.Q_G_CL.Refresh;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
        end;  
      end;
    end
    else ShowMessage('Нет данных для удаления!');
  end;

  // Удаление группы
  if (PageControl1.TabIndex = 1) then
  begin
    if (Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 0) then
    begin
    if ((Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) or (Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 2)) then ShowMessage('Данную группу нельзя удалить!')
    else
    begin
      if (id_office <> Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      if MessageDlg('Вы действительно хотите удалить группу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (Q_G_CL.FieldByName('ID_CLIENTS').AsInteger > 0) then ShowMessage('Удаление невозможно!'+#10#13+'В стираемой группе есть клиенты!'+#10#13+'Можно удалять только пустую группу!')
        else
        begin
          selq.SQL.Clear;

          selq.SQL.Add('DELETE FROM CLIENTS_GROUPS WHERE ID_CLIENTS_GROUPS = :ID');
          selq.ParamByName('ID').Value := Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger;

          Q_GROUPS.Next;
          idd := Q_GROUPSID_CLIENTS_GROUPS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            selq.Execute;
            DM.OraSession.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            Q_GROUPS.Refresh;
            Q_G_CL.Refresh;
            Q_GROUPS.Locate('ID_CLIENTS_GROUPS',idd,[]);

            //ShowMessage('Удаление прошло успешно.');
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
        end;
      end;
    end;
    end
    else ShowMessage('Нет данных для удаления!');
  end;
end;

// изменить
procedure TfrmRegistration.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if Edit1.Text = '' then
    begin
      Q_CLIENTS.First;
      Edit1.Color := clWindow;
    end
    else
    begin
      if Q_CLIENTS.Locate('NICK',ComboBox12.Text+Edit1.Text,[loCaseInsensitive, loPartialKey]) then begin Edit1.Color := clWindow; end
      else Edit1.Color := clred;
    end;
end;

procedure TfrmRegistration.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit2.Text = '' then
    begin
      Q_CLIENTS.First;
      Edit2.Color := clWindow;
    end
    else
    begin
      if Q_CLIENTS.Locate('FIO',Edit2.Text,[loCaseInsensitive, loPartialKey]) then begin Edit2.Color := clWindow; end
      else Edit2.Color := clred;
    end;
end;

procedure TfrmRegistration.EditNExecute(Sender: TObject);
 var ind:integer; ss:string;
begin
 try
  // Редактирование клиента
  if (PageControl1.TabIndex = 0) then
  begin
    if (id_office <> Q_CLIENTS.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    if (Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if (Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
      else
      begin
        Q_CLIENT_VIEW.Close;
        Q_CLIENT_VIEW.SQL.Clear;
        Q_CLIENT_VIEW.SQL.Add('SELECT C.*, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
        Q_CLIENT_VIEW.SQL.Add(' , case when c.id_office > 1 then o.OFFICE_NAME else case when c.reg_type = 0 then ''Старлайт'' else ''Старлайт Кэш & Кэрри'' end end as reg_type_name ');
        Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        Q_CLIENT_VIEW.ParamByName('ID').Value := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        Q_CLIENT_VIEW.Open;

        ind := frmEditRegistration.ComboBox1.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        frmEditRegistration.ComboBox1.ItemIndex := ind;

        ind := frmEditRegistration.ComboBox3.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        frmEditRegistration.ComboBox3.ItemIndex := ind;

        ind := frmEditRegistration.ComboBox4.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        frmEditRegistration.ComboBox4.ItemIndex := ind;

        ind := frmEditRegistration.ComboBox2.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        frmEditRegistration.ComboBox2.ItemIndex := ind;


        //----------город не показывает - не разбирался- потом гляну----
        frmEditRegistration.cdsCity.Filter    := 'id_region='+Q_CLIENT_VIEW.FieldByName('REGION').AsString;
        frmEditRegistration.cdsCity.Filtered  := true;
        frmEditRegistration.icbCity.EditValue := Q_CLIENT_VIEW.FieldByName('id_city').AsInteger;
        //------------------------------------------------------------


        frmEditRegistration.LabeledEdit1.Text := Q_CLIENT_VIEW.FieldByName('NICK').AsString;
        frmEditRegistration.LabeledEdit2.Text := Q_CLIENT_VIEW.FieldByName('FIO').AsString;
        frmEditRegistration.LabeledEdit4.Text := Q_CLIENT_VIEW.FieldByName('INN').AsString;
        frmEditRegistration.LabeledEdit6.Text := Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        frmEditRegistration.LabeledEdit7.Text := Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        frmEditRegistration.LabeledEdit8.Text := Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        frmEditRegistration.LabeledEdit9.Text := Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        frmEditRegistration.LabeledEdit10.Text := Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        frmEditRegistration.LabeledEdit11.Text := Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        frmEditRegistration.LabeledEdit12.Text := Q_CLIENT_VIEW.FieldByName('WWW').AsString;

        frmEditRegistration.lePrefix.Text := Q_CLIENT_VIEW.FieldByName('PREFIX').AsString;

        if (GetOfficeID = 1) then
          frmEditRegistration.DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger
        else
        begin
          //frmEditRegistration.DBComboBoxEh1.ItemIndex := (GetOfficeID - DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger);
          frmEditRegistration.DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
          frmEditRegistration.DBComboBoxEh1.ReadOnly := (GetOfficeID > 1);
        end;

        frmEditRegistration.Edit1.Text := Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

        frmEditRegistration.Memo1.Text := Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        //frmEditRegistration.Memo2.Text := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        if pos('%',Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
           frmeditsubreg.edit4.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           if copy(ss,1,pos('%',ss)-1)<>'' then
           frmeditsubreg.DateTimePicker1.date:= strtodate(copy(ss,1,pos('%',ss)-1));
           delete(ss,1,pos('%',ss));
           frmeditsubreg.combobox8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit5.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit6.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmeditsubreg.edit7.Text := ss;
        end else
        begin
           frmeditsubreg.edit4.Clear;
           frmeditsubreg.DateTimePicker1.date:=now;
           frmeditsubreg.combobox8.Clear;
           frmeditsubreg.edit5.Clear;
           frmeditsubreg.edit6.Clear;
           frmeditsubreg.edit7.Clear;
        end;

        frmEditRegistration.Memo3.Text := Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        //frmEditRegistration.Memo4.Text := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        if pos('%',Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
           frmEditRegistration.edit3.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit7.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit8.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit9.Text := ss;
        end else
        begin
           frmEditRegistration.edit3.Clear;
           frmEditRegistration.edit7.Clear;
           frmEditRegistration.edit8.Clear;
           frmEditRegistration.edit9.Clear;
        end;

        //frmEditRegistration.Memo5.Text := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
        if pos('%',Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString) <> 0 then begin
           ss := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
           frmEditRegistration.edit10.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit11.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit12.Text := copy(ss,1,pos('%',ss)-1);
           delete(ss,1,pos('%',ss));
           frmEditRegistration.edit13.Text := ss;
        end else
        begin
           frmEditRegistration.edit10.Clear;
           frmEditRegistration.edit11.Clear;
           frmEditRegistration.edit12.Clear;
           frmEditRegistration.edit13.Clear;
        end;

        frmEditRegistration.Memo6.Text := Q_CLIENT_VIEW.FieldByName('PHONE').AsString;
        frmEditRegistration.Memo7.Text := Q_CLIENT_VIEW.FieldByName('INFO').AsString;
        frmEditRegistration.Memo8.Text := Q_CLIENT_VIEW.FieldByName('KEY_INTERESTS').AsString;

        if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then frmEditRegistration.CheckBox1.Checked := true else frmEditRegistration.CheckBox1.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then frmEditRegistration.CheckBox2.Checked := true else frmEditRegistration.CheckBox2.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then frmEditRegistration.chbRuleSite.Checked := true else frmEditRegistration.chbRuleSite.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then frmEditRegistration.chbRulePics.Checked := true else frmEditRegistration.chbRulePics.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then frmEditRegistration.chbRulePrice.Checked := true else frmEditRegistration.chbRulePrice.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then frmEditRegistration.chbRuleOrder.Checked := true else frmEditRegistration.chbRuleOrder.Checked := false;

        if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then frmEditRegistration.CheckBox5.Checked := true else frmEditRegistration.CheckBox5.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then frmEditRegistration.CheckBox4.Checked := true else frmEditRegistration.CheckBox4.Checked := false;
        if (Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then frmEditRegistration.CheckBox6.Checked := true else frmEditRegistration.CheckBox6.Checked := false;

        frmEditRegistration.ttype := 2;
        frmEditRegistration.SpeedButton1.Visible := true;

        frmEditRegistration.DBText1.Visible := true;
        frmEditRegistration.DBText2.Visible := true;
        frmEditRegistration.DBText3.Visible := true;
        frmEditRegistration.DBText4.Visible := true;

        frmEditRegistration.Q_ADDRESS.Close;
        frmEditRegistration.Q_ADDRESS.ParamByName('ID_CLIENTS').AsInteger := Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        frmEditRegistration.Q_ADDRESS.Open;

        frmEditRegistration.gr_address.Enabled := true;
        frmEditRegistration.btnClone.Enabled := false;
        frmEditRegistration.showmodal;
        frmEditRegistration.Q_ADDRESS.Close;

        Q_CLIENT_VIEW.Close;
      end;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;

  // Редактирование группы
  if (PageControl1.TabIndex = 1) then
  begin
    if (id_office <> Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    if (Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 0) then
    begin
      frmEditSubReg.Edit1.Text := Q_GROUPS.FieldByName('NAME').AsString;
      frmEditSubReg.MEMO1.Text := Q_GROUPS.FieldByName('INFO').AsString;

      frmEditSubReg.ttype := 2; //2- редакт
      frmEditSubReg.showmodal;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;

 finally
  //frmEditRegistration.Free;
 end;
end;

procedure TfrmRegistration.fast_filterExecute(Sender: TObject);
begin
    if (PageControl1.TabIndex = 0) then
    cxClientView.Filtering.RunCustomizeDialog(cxClientView.Controller.FocusedColumn);
end;

procedure TfrmRegistration.filtr_offExecute(Sender: TObject);
 var sql: string;
begin
    // if (PageControl1.TabIndex = 0) then BitBtn9Click(self);
  if (PageControl1.TabIndex = 3) then BitBtn23Click(self);
  if (PageControl1.TabIndex = 0) then begin
  sql := 'SELECT * from CLIENTS_VIEW3 where (ID_OFFICE='+IntToStr(intDefOffice)+' or 0='+IntToStr(intDefOffice)+') ';

  Q_CLIENTS.Close;
  Q_CLIENTS.SQL.Clear;
  Q_CLIENTS.SQL.Add(sql);

  try
    Q_CLIENTS.Open;
  except
    on E: Exception do ShowMessage(E.Message);
  End;

  Edit4.Text := '';
  Edit3.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  DateTimePicker1.Checked := false;
  DateTimePicker2.Checked := false;
  CheckBox4.Checked := false;
  CheckBox5.Checked := false;
  if (PageControl1.ActivePageIndex = 0) then
    cxClient.SetFocus;
  end;
end;

procedure TfrmRegistration.filtr_onExecute(Sender: TObject);
 var sql: string;
begin
  //if (PageControl1.TabIndex = 0) then BitBtn8Click(self);
  if (PageControl1.TabIndex = 3) then BitBtn22Click(self);
if (PageControl1.TabIndex = 0) then begin
    sql := 'SELECT * from CLIENTS_VIEW3 WHERE (ID_OFFICE='+IntToStr(intDefOffice)+' or 0='+IntToStr(intDefOffice)+') ';

  if (trim(Edit4.Text) <> '') then sql := sql + ' AND UPPER(FIO) LIKE ''%' + AnsiUpperCase(Edit4.Text) + '%''';
  if (trim(Edit3.Text) <> '') then sql := sql + ' AND UPPER(NICK) LIKE ''%' + AnsiUpperCase(Edit3.Text) + '%''';

  if (DateTimePicker1.Checked = true) then
    sql := sql + ' AND trunc(DDATE) >= :date1';

  if (DateTimePicker2.Checked = true) then
    sql := sql + ' AND trunc(DDATE) <= :date2';

  if (DateTimePicker1.Checked = true) and (DateTimePicker2.Checked = true) and (DateTimePicker1.Date > DateTimePicker2.Date) then
  begin
    ShowMessage('Первая дата должна быть меньше второй!');
    abort;
  end;

  if (CheckBox4.Checked = true) then sql := sql + ' AND BLOCK1 = 1';
  if (CheckBox5.Checked = true) then sql := sql + ' AND BLOCK2 = 1';

  Q_CLIENTS.Close;
  Q_CLIENTS.SQL.Clear;
  Q_CLIENTS.SQL.Add(sql);

  if (DateTimePicker1.Checked = true) then
    Q_CLIENTS.ParamByName('date1').AsDate := DateTimePicker1.Date;

  if (DateTimePicker2.Checked = true) then
    Q_CLIENTS.ParamByName('date2').AsDate := DateTimePicker2.Date;

  try
    Q_CLIENTS.Open;
    cxClient.SetFocus;
  except
    on E: Exception do ShowMessage(E.Message);
  End;
end;
end;

procedure TfrmRegistration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
    SaveFormState(frmRegistration); //полож.окна
    frmRegistration := nil;
    Action := caFree;
  end;
 //frmEditRegistration.Free;
 //frmpassport.Free;
end;


procedure TfrmRegistration.FormCreate(Sender: TObject);
  var recUserRules : TUserRules;
begin
  Application.CreateForm(TfrmEditRegistration, frmEditRegistration);
  Application.CreateForm(Tfrmeditsubreg, frmeditsubreg);
  cxgrid1.Font.Size := intDefFont;

  DateTimePicker1.Date    := Date;
  DateTimePicker2.Date    := Date;
  DateTimePicker3.Date    := Date;
  DateTimePicker4.Date    := Date;

  DateTimePicker1.Checked := false;
  DateTimePicker2.Checked := false;
  DateTimePicker3.Checked := false;
  DateTimePicker4.Checked := false;

  // получение прав на программу 
  recUserRules  := getRules(DM.cdsRules,5);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;

  addn.Enabled    := p_edit;
  Editn.Enabled   := p_edit;
  Deleten.Enabled := p_delete;
  //------------------------------
end;

// Импорт / экспорт номенклатуры
    procedure TfrmRegistration.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    begin
      with cds do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
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

end.
