unit main_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Tabs, ComCtrls, DB,
  Mask, DBCtrls, DBTables, ShellApi, ActnList, StrUtils,
  DBCtrlsEh, GridsEh, DBGridEh, Menus, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ImgList, cxButtonEdit, cxGridExportLink, frxBarcode, frxClass,
  frxDBSet, Ora, cxSplitter, DBGridEhImpExp, frx2xto30, frxChBox, frxExportPDF,
  frxExportXLS, frxExportRTF, frxExportHTML, Pi_Library, PI_Library_reg, cxDropDownEdit,
  cxImageComboBox, dxBar, cxBarEditItem, dxBarExtItems, IniFiles, cxTextEdit,
  DBGridEhGrouping;

type
  Tmain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn7: TBitBtn;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    Panel5: TPanel;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox6: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit9: TEdit;
    ComboBox3: TComboBox;
    Panel8: TPanel;
    ComboBox4: TComboBox;
    Label21: TLabel;
    ComboBox6: TComboBox;
    Label22: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label15: TLabel;
    Label23: TLabel;
    ComboBox7: TComboBox;
    Label24: TLabel;
    ComboBox8: TComboBox;
    BitBtn20: TBitBtn;
    Clients_table: TTable;
    Clients_table_ds: TDataSource;
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
    ComboBox10: TComboBox;
    Label8: TLabel;
    Edit8: TEdit;
    RadioButton4: TRadioButton;
    ActionList1: TActionList;
    filtr_on: TAction;
    filtr_off: TAction;
    seach_kod: TAction;
    search_nick: TAction;
    Edit5: TEdit;
    Label9: TLabel;
    ComboBox12: TComboBox;
    Label20: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
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
    Label25: TLabel;
    Label33: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label34: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Label40: TLabel;
    Edit25: TEdit;
    Edit26: TEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    export_search: TAction;
    CRDBGrid4: TDBGridEh;
    select_all: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
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
    Panel11: TPanel;
    Panel6: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    DBGrid6: TDBGrid;
    ComboBox9: TComboBox;
    BitBtn14: TBitBtn;
    BitBtn17: TBitBtn;
    DBGrid5: TDBGrid;
    ComboBox5: TComboBox;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    PopupMenu3: TPopupMenu;
    MenuItem2: TMenuItem;
    Action11: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
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
    N36: TMenuItem;
    N37: TMenuItem;
    cxClientView: TcxGridDBTableView;
    cxClientLevel1: TcxGridLevel;
    cxClient: TcxGrid;
    cxClientViewNN: TcxGridDBColumn;
    cxClientViewID_CLIENTS: TcxGridDBColumn;
    cxClientViewNICK: TcxGridDBColumn;
    cxClientViewFIO: TcxGridDBColumn;
    cxClientViewDDATE: TcxGridDBColumn;
    cxClientViewCCODE: TcxGridDBColumn;
    cxClientViewREGION: TcxGridDBColumn;
    cxClientViewTTYPE: TcxGridDBColumn;
    cxClientViewID_CLIENTS_GROUPS: TcxGridDBColumn;
    cxClientViewREGION_NAME: TcxGridDBColumn;
    cxClientViewGROUP_NAME: TcxGridDBColumn;
    cxClientViewTTYPE_NAME: TcxGridDBColumn;
    cxClientViewCORRECTOR: TcxGridDBColumn;
    cxClientViewPHONE: TcxGridDBColumn;
    cxClientViewBLOCK1: TcxGridDBColumn;
    cxClientViewBLOCK2: TcxGridDBColumn;
    cxClientViewCOUNT: TcxGridDBColumn;
    cxClientViewREG_TYPE_NAME: TcxGridDBColumn;
    ImageList1: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    style_top: TcxStyle;
    style_bottom: TcxStyle;
    style_selected: TcxStyle;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label4: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    fast_filter: TAction;
    style_group: TcxStyle;
    N22: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    BitBtn22: TcxButton;
    BitBtn23: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    gr_empl: TcxGrid;
    gr_empl_v: TcxGridDBTableView;
    row_empl_NICK: TcxGridDBColumn;
    row_empl_FIO: TcxGridDBColumn;
    _row_empl_CCODE: TcxGridDBColumn;
    _row_empl_NN: TcxGridDBColumn;
    _row_empl_ID_CLIENTS: TcxGridDBColumn;
    gr_empl_l: TcxGridLevel;
    gr_empl_vACTIVE: TcxGridDBColumn;
    gr_empl_vLOGIN: TcxGridDBColumn;
    gr_empl_vSTAFF: TcxGridDBColumn;
    gr_empl_vCOUNT: TcxGridDBColumn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    N40: TMenuItem;
    N41: TMenuItem;
    aClearFilter: TAction;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N46: TMenuItem;
    mSales: TMenuItem;
    cxClientViewSALES: TcxGridDBColumn;
    DBComboBoxEh2: TDBComboBoxEh;
    Label3: TLabel;
    DBGrid2: TDBGridEh;
    cxSplitter1: TcxSplitter;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    frxClients: TfrxDBDataset;
    frxClientsView: TfrxDBDataset;
    frxDepart: TfrxDBDataset;
    frxDepsEmpl: TfrxDBDataset;
    frxJobsEmpls: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxEmplView: TfrxDBDataset;
    frxDeps: TfrxDBDataset;
    frxJobs: TfrxDBDataset;
    frxEmpl: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    cxClientViewEMAIL: TcxGridDBColumn;
    cxClientViewADDRESS: TcxGridDBColumn;
    btn_conctact: TBitBtn;
    bm_nsi: TdxBarManager;
    bmb_nsi: TdxBar;
    bm_nsiBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    bb_close: TdxBarLargeButton;
    btnHelp: TdxBarLargeButton;
    dxBarStatic1: TdxBarStatic;
    bc_fontsize: TcxBarEditItem;
    chb_offices: TcxBarEditItem;
    imgOffice: TcxBarEditItem;
    img_nsi: TcxImageList;
    ActionList2: TActionList;
    aExit: TAction;
    AddN: TAction;
    EditN: TAction;
    DeleteN: TAction;
    Refresh: TAction;
    aCtrlEnter: TAction;
    bdc_main: TdxBarDockControl;
    bdc_footer: TdxBarDockControl;
    cxClientViewBRIEF: TcxGridDBColumn;
    gr_empl_vID_OFFICE: TcxGridDBColumn;
    gr_empl_vBRIEF: TcxGridDBColumn;
    frxBarCodeObject1: TfrxBarCodeObject;
    blb_settings: TdxBarLargeButton;
    bsiService: TdxBarSubItem;
    bbCopyToOld: TdxBarButton;
    bbCopyClient: TdxBarButton;
    btnFileExport: TdxBarButton;
    cxClientViewID_OFFICE: TcxGridDBColumn;
    cxClientViewPREFIX: TcxGridDBColumn;
    cxClientViewCITY: TcxGridDBColumn;
    cxClientViewMARK: TcxGridDBColumn;
    frxAdresses: TfrxDBDataset;
    bbSyncCLientsLoad: TdxBarButton;
    bbSyncClients: TdxBarButton;
    odInvoice: TOpenDialog;
    cxClientViewINN: TcxGridDBColumn;
    btninf: TBitBtn;
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Edit5KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CRDBGrid3DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit6KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure CRDBGrid2DblClick(Sender: TObject);
    procedure seach_kodExecute(Sender: TObject);
    procedure search_nickExecute(Sender: TObject);
    procedure filtr_onExecute(Sender: TObject);
    procedure filtr_offExecute(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure CRDBGrid4DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure export_searchExecute(Sender: TObject);
    procedure select_allExecute(Sender: TObject);
    procedure m_typeClick(Sender: TObject);
    procedure m_groupClick(Sender: TObject);
    procedure m_regionClick(Sender: TObject);
    procedure m_angroupClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure cxClientViewFIOGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxClientViewCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxClientViewNICKGetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure fast_filterExecute(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mSalesClick(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure btn_conctactClick(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure AddNExecute(Sender: TObject);
    procedure EditNExecute(Sender: TObject);
    procedure DeleteNExecute(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure btnFileExportClick(Sender: TObject);
    procedure bbSyncCLientsLoadClick(Sender: TObject);
    procedure bbSyncClientsClick(Sender: TObject);
    procedure btninfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pnl_msg: TPanel;
    progas: string;
    corrector: string;
    client_path: string;
    client_path2: string;
    path : string;
    print_, del_, ed_, addit_: boolean;
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
  end;

var
  main: Tmain;
  clr : array[1..12] of TColor = (clGreen,clBlue,clRed,clYellow,clAqua,clNavy,clLtGray,clTeal,clSkyBlue,clOlive,clLime,clPurple);

implementation

uses DataM, info, edit_form, editor_f, edit_e_form, graphic, help_f,
  empl_info, UClientSale;

{$R *.dfm}


procedure Tmain.aExitExecute(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then Close;
end;


// Ctrl+Enter
procedure Tmain.aCtrlEnterExecute(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then CRDBGrid1DblClick(Sender);
  if PageControl1.ActivePageIndex = 1 then cxGridDBTableView1DblClick(Sender);
  if PageControl1.ActivePageIndex = 2 then CRDBGrid2DblClick(Sender);
  if PageControl1.ActivePageIndex = 3 then CRDBGrid4DblClick(Sender);
end;


//
// Добавление данных
//
procedure Tmain.AddNExecute(Sender: TObject);
begin
  // Добавление клиента
  if (PageControl1.TabIndex = 0) then
  begin
    edits.ComboBox1.ItemIndex := -1;
    edits.ComboBox2.ItemIndex := -1;
    edits.ComboBox3.ItemIndex := -1;
    edits.ComboBox4.ItemIndex := edits.ComboBox4.Items.IndexOf('Общая группа');

    edits.LabeledEdit1.Text := '';
    edits.LabeledEdit2.Text := '';
    edits.LabeledEdit4.Text := '';
    edits.LabeledEdit6.Text := '';
    edits.LabeledEdit7.Text := '';
    edits.LabeledEdit8.Text := '';
    edits.LabeledEdit9.Text := '';
    edits.LabeledEdit10.Text := '';
    edits.LabeledEdit11.Text := '';
    edits.LabeledEdit12.Text := '';
    edits.DBComboBoxEh1.ItemIndex := GetOfficeID;
    edits.DBComboBoxEh1.ReadOnly := (GetOfficeID > 1);

    edits.Edit1.Text := '';

    edits.Memo1.Lines.Clear;
    edits.Memo2.Lines.Clear;
    edits.Memo3.Lines.Clear;
    edits.Memo4.Lines.Clear;
    edits.Memo5.Lines.Clear;
    edits.Memo6.Lines.Clear;
    edits.Memo7.Lines.Clear;

    edits.CheckBox1.Checked := false;
    edits.CheckBox2.Checked := false;
    edits.CheckBox4.Checked := false;
    edits.CheckBox5.Checked := false;
    edits.CheckBox6.Checked := false;

    edits.ttype := 1;
    edits.SpeedButton1Click(self);
    edits.SpeedButton1.Visible := false;

    edits.DBText1.Visible := false;
    edits.DBText2.Visible := false;
    edits.DBText3.Visible := false;
    edits.DBText4.Visible := false;
    edits.gr_address.Enabled := false;

    edits.cdsCity.Filter := '';
    edits.cdsCity.Filtered := false;

    edits.lePrefix.Text := '';
    edits.btnClone.Enabled := addit_;

    edits.chbRuleSite.Checked := true;
    edits.chbRulePics.Checked := true;
    edits.chbRulePrice.Checked := true;
    edits.chbRuleOrder.Checked := true;
    edits.chbRuleWebShop.Checked := true;

    edits.showmodal;
  end;

  // Добавление группы
  if (PageControl1.TabIndex = 1) then
  begin
    editor.Edit1.Text := '';
    editor.Memo1.Lines.Clear;

    editor.ttype := 1;
    editor.showmodal;
  end;

  // Добавление сотрудника
  if (PageControl1.TabIndex = 2) then
  begin
    edits_e.ComboBox1.ItemIndex := -1;
    edits_e.LabeledEdit1.Text := '';
    edits_e.LabeledEdit2.Text := '';
    edits_e.LabeledEdit5.Text := '';
    edits_e.LabeledEdit6.Text := '0';
    edits_e.LabeledEdit7.Text := '0';
    edits_e.Edit1.Text := '';
    edits_e.Edit2.Text := '0,0,0';

    edits_e.Memo1.Lines.Clear;
    edits_e.Memo2.Lines.Clear;
    edits_e.Memo3.Lines.Clear;
    edits_e.Memo4.Lines.Clear;
    edits_e.Memo5.Lines.Clear;

    edits_e.CheckBox1.Checked := false;
    edits_e.DateTimePicker1.DateTime := (Now);
    edits_e.ttype := 1;
    edits_e.SpeedButton1Click(self);
    edits_e.SpeedButton1.Visible := false;

    edits_e.DBText1.Visible := false;
    edits_e.DBText3.Visible := false;
    edits_e.DBText4.Visible := false;
    edits_e.DBText5.Visible := false;

    edits_e.showmodal;
  end;
end;


// Сменим шрифт
procedure Tmain.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  cxClient.Font.Size := bc_fontsize.EditValue;
  cxGrid1.Font.Size := bc_fontsize.EditValue;
  gr_empl.Font.Size := bc_fontsize.EditValue;
  CRDBGrid4.Font.Size := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;

//
//  Редактирование данных
//
procedure Tmain.EditNExecute(Sender: TObject);
var ind: integer;
begin
  // Редактирование клиента
  if (PageControl1.TabIndex = 0) then
  begin
    if ({DM.id_office} GetOfficeID <> DM.Q_CLIENTS.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
      else
      begin
        DM.Q_CLIENT_VIEW.Close;
        DM.Q_CLIENT_VIEW.SQL.Clear;
        DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
        DM.Q_CLIENT_VIEW.SQL.Add(' , case when c.id_office > 1 then o.OFFICE_NAME else case when c.reg_type = 0 then ''Старлайт'' else ''Старлайт Кэш & Кэрри'' end end as reg_type_name ');
        DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        DM.Q_CLIENT_VIEW.Open;

        ind := edits.ComboBox1.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        edits.ComboBox1.ItemIndex := ind;
        ind := edits.ComboBox2.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        edits.ComboBox2.ItemIndex := ind;
        ind := edits.ComboBox3.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        edits.ComboBox3.ItemIndex := ind;
        ind := edits.ComboBox4.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        edits.ComboBox4.ItemIndex := ind;

        edits.cdsCity.Filter    := 'id_region='+DM.Q_CLIENT_VIEW.FieldByName('REGION').AsString;
        edits.cdsCity.Filtered  := true;
        edits.icbCity.EditValue := DM.Q_CLIENT_VIEW.FieldByName('id_city').AsInteger;

        edits.LabeledEdit1.Text := DM.Q_CLIENT_VIEW.FieldByName('NICK').AsString;
        edits.LabeledEdit2.Text := DM.Q_CLIENT_VIEW.FieldByName('FIO').AsString;
        edits.LabeledEdit4.Text := DM.Q_CLIENT_VIEW.FieldByName('INN').AsString;
        edits.LabeledEdit6.Text := DM.Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        edits.LabeledEdit7.Text := DM.Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        edits.LabeledEdit8.Text := DM.Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        edits.LabeledEdit9.Text := DM.Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        edits.LabeledEdit10.Text := DM.Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        edits.LabeledEdit11.Text := DM.Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        edits.LabeledEdit12.Text := DM.Q_CLIENT_VIEW.FieldByName('WWW').AsString;

        edits.lePrefix.Text := DM.Q_CLIENT_VIEW.FieldByName('PREFIX').AsString;

        if (GetOfficeID = 1) then
          edits.DBComboBoxEh1.ItemIndex := DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger
        else
        begin
          //edits.DBComboBoxEh1.ItemIndex := (GetOfficeID - DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger);
          edits.DBComboBoxEh1.ItemIndex := DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
          edits.DBComboBoxEh1.ReadOnly := (GetOfficeID > 1);
        end;

        edits.Edit1.Text := DM.Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

        edits.Memo1.Text := DM.Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        edits.Memo2.Text := DM.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        edits.Memo3.Text := DM.Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        edits.Memo4.Text := DM.Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        edits.Memo5.Text := DM.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
        edits.Memo6.Text := DM.Q_CLIENT_VIEW.FieldByName('PHONE').AsString;
        edits.Memo7.Text := DM.Q_CLIENT_VIEW.FieldByName('INFO').AsString;

        if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then edits.CheckBox1.Checked := true else edits.CheckBox1.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then edits.CheckBox2.Checked := true else edits.CheckBox2.Checked := false;

        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1') then edits.chbRuleWebShop.Checked := true else edits.chbRuleWebShop.Checked := false;

        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then edits.CheckBox5.Checked := true else edits.CheckBox5.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then edits.CheckBox4.Checked := true else edits.CheckBox4.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then edits.CheckBox6.Checked := true else edits.CheckBox6.Checked := false;


        edits.ttype := 2;
        edits.SpeedButton1.Visible := true;

        edits.DBText1.Visible := true;
        edits.DBText2.Visible := true;
        edits.DBText3.Visible := true;
        edits.DBText4.Visible := true;

        edits.Q_ADDRESS.Close;
        edits.Q_ADDRESS.ParamByName('ID_CLIENTS').AsInteger := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        edits.Q_ADDRESS.Open;

        edits.gr_address.Enabled := true;
        edits.btnClone.Enabled := false;
        edits.showmodal;
        edits.Q_ADDRESS.Close;
      end;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;

  // Редактирование группы
  if (PageControl1.TabIndex = 1) then
  begin
    if (DM.id_office <> DM.Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    if (DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 0) then
    begin
      editor.Edit1.Text := DM.Q_GROUPS.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_GROUPS.FieldByName('INFO').AsString;

      editor.ttype := 2;
      editor.showmodal;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;

  // Редактирование сотрудника
  if (PageControl1.TabIndex = 2) then
  begin
    if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    if (DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      DM.Q_EMPL_VIEW.Close;
      DM.Q_EMPL_VIEW.SQL.Clear;
      DM.Q_EMPL_VIEW.SQL.Add('SELECT C.*, R.NAME AS REGION_NAME FROM CLIENTS C, BOOKS_REGIONS R WHERE C.REGION = R.ID_REGIONS(+) and c.ID_CLIENTS=:ID');

      DM.Q_EMPL_VIEW.ParamByName('ID').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
      DM.Q_EMPL_VIEW.Open;

      edits_e.LabeledEdit1.Text := DM.Q_EMPL_VIEW.FieldByName('NICK').AsString;
      edits_e.LabeledEdit2.Text := DM.Q_EMPL_VIEW.FieldByName('FIO').AsString;
      edits_e.LabeledEdit5.Text := DM.Q_EMPL_VIEW.FieldByName('EMAIL').AsString;
      edits_e.LabeledEdit6.Text := DM.Q_EMPL_VIEW.FieldByName('INN').AsString;
      edits_e.LabeledEdit7.Text := DM.Q_EMPL_VIEW.FieldByName('INSURANCE').AsString;

      edits_e.Edit1.Text := DM.Q_EMPL_VIEW.FieldByName('CCODE').AsString;
      edits_e.Edit2.Text := DM.Q_EMPL_VIEW.FieldByName('L_SERVICE').AsString;

      if DM.Q_EMPL_VIEW.FieldByName('STAFF').AsInteger = 1 then begin edits_e.CheckBox2.Checked := true; edits_e.CheckBox3.Checked := false; end
      else begin edits_e.CheckBox3.Checked := true; edits_e.CheckBox2.Checked := false; end;

      edits_e.DateTimePicker1.Date := DM.Q_EMPL_VIEW.FieldByName('DATE_IN').AsDateTime;
      if DM.Q_EMPL_VIEW.FieldByName('DATE_OUT').IsNull then
      begin
        edits_e.CheckBox4.Checked := false;
        edits_e.DateTimePicker2.DateTime := (Now);
      end
      else
      begin
        edits_e.CheckBox4.Checked := true;
        edits_e.DateTimePicker2.Date := DM.Q_EMPL_VIEW.FieldByName('DATE_OUT').AsDateTime;
      end;

      ind := edits_e.ComboBox1.Items.IndexOf(DM.Q_EMPL_VIEW.FieldByName('REGION_NAME').AsString);
      edits_e.ComboBox1.ItemIndex := ind;

      edits_e.Memo1.Text := DM.Q_EMPL_VIEW.FieldByName('PHONE').AsString;
      edits_e.Memo2.Text := DM.Q_EMPL_VIEW.FieldByName('DUTIES').AsString;
      edits_e.Memo3.Text := DM.Q_EMPL_VIEW.FieldByName('PASSPORT').AsString;
      edits_e.Memo4.Text := DM.Q_EMPL_VIEW.FieldByName('ADDRESS').AsString;
      edits_e.Memo5.Text := DM.Q_EMPL_VIEW.FieldByName('INFO').AsString;

      if (DM.Q_EMPL_VIEW.FieldByName('ACTIVE').AsInteger = 1) then edits_e.CheckBox1.Checked := true else edits_e.CheckBox1.Checked := false;
      if (DM.Q_EMPL_VIEW.FieldByName('BLOCK1').AsInteger = 1) then edits_e.CheckBox6.Checked := true else edits_e.CheckBox6.Checked := false;
      if (DM.Q_EMPL_VIEW.FieldByName('BLOCK2').AsInteger = 1) then edits_e.CheckBox5.Checked := true else edits_e.CheckBox5.Checked := false;
      //if (DM.Q_EMPL_VIEW.FieldByName('vanselling').AsInteger = 1) then edits_e.CheckBox3.Checked := true else edits_e.CheckBox3.Checked := false;


      edits_e.ttype := 2;
      edits_e.SpeedButton1.Visible := true;

      edits_e.DBText1.Visible := true;
      edits_e.DBText3.Visible := true;
      edits_e.DBText4.Visible := true;
      edits_e.DBText5.Visible := true;

      edits_e.showmodal;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;
end;


//
//  Удалить запись
//
procedure Tmain.DeleteNExecute(Sender: TObject);
var idd: integer;
begin
  // Удаление клиента
  if (PageControl1.TabIndex = 0) then
  begin
    if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if ({DM.id_office} GetOfficeID <> DM.Q_CLIENTS.FieldByName('ID_OFFICE').AsInteger) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      if MessageDlg('Вы действительно хотите удалить клиента?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
        else
        begin
          DM.Ora_SQL.SQL.Clear;

          DM.Ora_SQL.SQL.Add('DELETE FROM CLIENTS WHERE ID_CLIENTS = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

          DM.Q_CLIENTS.Next;
          idd := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_CLIENTS.Refresh;
            DM.Q_CLIENTS.Locate('ID_CLIENTS',idd,[]);
            DM.Q_G_CL.Refresh;
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
    if (DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 0) then
    begin
    if ((DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) or (DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 2)) then ShowMessage('Данную группу нельзя удалить!')
    else
    begin
      if (DM.id_office <> DM.Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      if MessageDlg('Вы действительно хотите удалить группу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (DM.Q_G_CL.FieldByName('ID_CLIENTS').AsInteger > 0) then ShowMessage('Удаление невозможно!'+#10#13+'В стираемой группе есть клиенты!'+#10#13+'Можно удалять только пустую группу!')
        else
        begin
          DM.Ora_SQL.SQL.Clear;

          DM.Ora_SQL.SQL.Add('DELETE FROM CLIENTS_GROUPS WHERE ID_CLIENTS_GROUPS = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger;

          DM.Q_GROUPS.Next;
          idd := DM.Q_GROUPSID_CLIENTS_GROUPS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_GROUPS.Refresh;
            DM.Q_G_CL.Refresh;
            DM.Q_GROUPS.Locate('ID_CLIENTS_GROUPS',idd,[]);

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


  // Удаление сотрудника
  if (PageControl1.TabIndex = 2) then
  begin
    if (DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      if MessageDlg('Вы действительно хотите удалить сотрудника?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          // Пытаемся выполнить SQL запрос на удаление
          try
            // Удаление пользователя БД при удалении сотрудника
            if (DM.Q_EMPL.FieldByName('LOGIN').AsString <> '') then
            begin
              DM.Ora_SQL.SQL.Clear;
              DM.Ora_SQL.SQL.Add('DROP USER "'+ DM.Q_EMPL.FieldByName('LOGIN').AsString +'"');
              DM.Ora_SQL.Execute;
            end;

            DM.Ora_SQL.SQL.Clear;

            DM.Ora_SQL.SQL.Add('DELETE FROM CLIENTS WHERE ID_CLIENTS = :ID');
            DM.Ora_SQL.ParamByName('ID').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
            DM.Q_EMPL.Next;
            idd := DM.Q_EMPLID_CLIENTS.AsInteger;

            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_EMPL.Refresh;
            DM.Q_EMPL.Locate('ID_CLIENTS',idd,[]);
            DM.Q_CLIENTS.Refresh;
            DM.Q_G_CL.Refresh;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
  end;
end;


// Формирование файла для экспорта клиентов в старую БД
procedure Tmain.btnFileExportClick(Sender: TObject);
VAR
  f: TextFile;
begin
  if (PageControl1.TabIndex > 0) then exit;
  if not DM.Q_CLIENTS.Active or DM.Q_CLIENTS.IsEmpty then exit;

  if MessageDlg('Будет сформирован CSV файл для экспорта в старую БД по выбранным клиентам?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    path := ExtractFilePath(Application.ExeName);

    try
      DM.Q_CLIENTS.First;
      DM.Q_CLIENTS.DisableControls;
      cursor := crHourGlass;
      try
        AssignFile(f,path+'docs\clients_'+DateToStr(Now)+'.csv');
        Rewrite(f);

        while not DM.Q_CLIENTS.Eof do
        begin
          //Writeln(f,DM.Q_CLIENTSNICK.AsString+';'+DM.Q_CLIENTSCCODE.AsString+';'+DM.Q_CLIENTSFIO.AsString+';'+DM.Q_CLIENTSMARK.AsString+';');
          Writeln(f,DM.Q_CLIENTSNICK.AsString+';'+DM.Q_CLIENTSCCODE.AsString+';'+DM.Q_CLIENTSFIO.AsString+';'+DM.Q_CLIENTSMARK.AsString[1]+';');
          DM.Q_CLIENTS.Next;
        end;
      finally
        CloseFile(f);
        DM.Q_CLIENTS.EnableControls;
        cursor := crDefault;
        ShellExecute(Handle, nil, PChar(path+'docs\'), nil, nil, SW_RESTORE);
//        ShellExecute(Handle, nil, PChar(path+'docs\clients_'+DateToStr(Now)+'.csv'), nil, nil, SW_RESTORE);
      end;
    except on E: Exception do
      ShowMessage(E.Message);
    End;
  end;

end;


// Help
procedure Tmain.btnHelpClick(Sender: TObject);
begin
  help.showmodal;
end;


procedure Tmain.btninfClick(Sender: TObject);
var str: string;
begin
try
  if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
    DM.Q_CLIENT_VIEW.Close;
    DM.Q_CLIENT_VIEW.SQL.Clear;
    DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
    DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
    DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    DM.Q_CLIENT_VIEW.Open;

    str := '';
    if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
    if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
    if str = '' then str := 'Нет';
    u_info.Label4.Caption := str;
//    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsInteger = 1) then u_info.Label7.Caption := 'Да' else u_info.Label7.Caption := 'Нет';
    u_info.chbRuleSite.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
    u_info.chbRulePics.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
    u_info.chbRulePrice.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
    u_info.chbRuleOrder.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');
    u_info.checkbox3.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1');

    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then u_info.Label10.Caption := 'Да' else u_info.Label10.Caption := 'Нет';
    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then u_info.Label12.Caption := 'Да' else u_info.Label12.Caption := 'Нет';
    //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then u_info.Label14.Caption := 'Да' else u_info.Label14.Caption := 'Нет';

    DM.cds_adress.Close;
    dm.cds_adress.ParamByName('p1').AsInteger := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    DM.cds_adress.Open;

    frxReport1.LoadFromFile(main.path+'raports\clients_card.fr3');
    frxReport1.ShowReport;
  end
  else ShowMessage('Нет данных для просмотра!');
except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
End;

end;

// Обновить
procedure Tmain.RefreshExecute(Sender: TObject);
begin
  DM.Q_CLIENTS.Refresh;
  DM.Q_GROUPS.Refresh;
  DM.Q_G_CL.Refresh;
  DM.Q_EMPL.Refresh;
  DM.Q_DEPS.Refresh;
  DM.Q_JOBS.Refresh;
  DM.Q_ADVERT.Refresh;
  DM.Q_TYPES.Refresh;
  DM.Q_REGIONS.Refresh;
  DM.Q_TITLES.Refresh;
  DM.Q_DEPART.Refresh;
  if DM.Q_SEARCH.Active = true then DM.Q_SEARCH.Refresh
end;


// Смена офиса
procedure Tmain.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;
  DM.RefreshAll;
end;



























//
// Создание формы - начальные установки
//
procedure Tmain.FormCreate(Sender: TObject);
VAR
  f: TextFile;
begin
  path := ExtractFilePath(Application.ExeName);

  // Пытаемся открыть файл с настройками для соединения с Ораклом
  try
    {$I-}
    AssignFile(f,'connections/connections.txt');
    Reset(f);
    Readln(f,client_path);
    Readln(f,client_path2);
    Readln(f,progas);
    CloseFile(f);
    {$I+}
  except
    ShowMessage('Невозможно открыть файл "connections.txt" в папке "connections"!')
  End;
  // Конец считывания
  
  DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  DateTimePicker3.Date := Date;
  DateTimePicker4.Date := Date;
  DateTimePicker1.Checked := false;
  DateTimePicker2.Checked := false;
  DateTimePicker3.Checked := false;
  DateTimePicker4.Checked := false;
end;


//
// Закрытие главной формы
//
procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.OraSession1.Close;
end;


//
//  Активация формы
//
procedure Tmain.FormActivate(Sender: TObject);
begin
  DbComboBoxEh1.ItemIndex := 0;
end;


//
//  На открытие формы раставляем гранды
//
procedure Tmain.FormShow(Sender: TObject);
Var RegIni : TIniFile;
begin
  RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'.ini');
  try
    path   := ExtractFilePath(Application.ExeName);

    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '10');
    cxClient.Font.Size := bc_fontsize.EditValue;
    cxGrid1.Font.Size := bc_fontsize.EditValue;
    gr_empl.Font.Size := bc_fontsize.EditValue;
    CRDBGrid4.Font.Size := bc_fontsize.EditValue;
  finally
    RegIni.Free;
  end;

  imgOffice.Enabled := (GetOfficeID = 1);

  cxClientViewBRIEF.Visible := not (GetOfficeID = DM.id_office);
  gr_empl_vBRIEF.Visible    := cxClientViewBRIEF.Visible;
  CRDBGrid4.Columns.Items[0].Visible :=  cxClientViewBRIEF.Visible;
  DBGrid2.Columns.Items[0].Visible   :=  cxClientViewBRIEF.Visible;

  if (imgOffice.Enabled) then
  begin
      try
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Q_SQL.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      imgOffice.Properties.OnChange := nil;
      FillImgComboCxItm(DM.Q_SQL, imgOffice, 'Все...');
      imgOffice.EditValue := DM.id_office;
      imgOffice.Properties.OnChange := imgOfficePropertiesChange;
  end;

  cxClientViewSALES.Visible := addit_;

  BitBtn14.Enabled  := ed_;
  BitBtn18.Enabled  := ed_;

  AddN.Enabled      := ed_;
  EditN.Enabled     := ed_;
  DeleteN.Enabled   := del_;
  export_search.Enabled := print_;

  bbCopyToOld.Enabled   := ed_;
  bbCopyClient.Enabled  := ed_;
  btnFileExport.Enabled := ed_;

  BitBtn17.Enabled := del_;
  BitBtn19.Enabled := del_;

  BitBtn4.Enabled  := print_;
  BitBtn5.Enabled  := print_;
  BitBtn6.Enabled  := print_;
  BitBtn3.Enabled  := print_;
  BitBtn2.Enabled  := print_;
  BitBtn1.Enabled  := print_;
  BitBtn20.Enabled := print_;
  btn_conctact.Enabled := print_;
  btninf.Enabled   :=  print_;

  bbSyncCLientsLoad.Enabled := (ed_ and (DM.id_office = 1));
  bbSyncClients.Enabled := (ed_ and (DM.id_office > 1));
  //bbSyncCLientsLoad.Enabled := true;
  //bbSyncClients.Enabled := true;

  DBComboBoxEh2.Value := 1;
  PageControl1.ActivePageIndex := 0;

  ComboBox12.Items.Clear;
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')) as kkk from clients ');
  DM.Q_SQL.SQL.Add('where (ID_OFFICE='+IntToStr(DM.id_office)+' or 0='+IntToStr(DM.id_office)+') ');
  DM.Q_SQL.SQL.Add('and INSTR(trim(nick), '' '') > 0');
  DM.Q_SQL.Open;
  DM.Q_SQL.First;
  while not DM.Q_SQL.Eof do
  begin
      ComboBox12.Items.Add(DM.Q_SQL.FieldByName('kkk').AsString);
      DM.Q_SQL.Next;
  end;
  DM.Q_SQL.Close;
end;



//
// Развернуть списки клиентов
//
procedure Tmain.N38Click(Sender: TObject);
begin
  cxClientView.DataController.Groups.FullExpand;
end;


//
// Свернуть списки клиентов
//
procedure Tmain.N39Click(Sender: TObject);
begin
  cxClientView.DataController.Groups.FullCollapse;
end;


//
//  Отрисовываем грид с клиентами
//
procedure Tmain.cxClientViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var str_tmp: Variant;
begin
  if not AViewInfo.Selected and (cxClientView.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') then
  begin
    str_tmp := cxClientView.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, cxClientView.GetColumnByFieldName('BLOCK2').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := TColor($009DFFFF);

    str_tmp := cxClientView.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, cxClientView.GetColumnByFieldName('BLOCK1').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := TColor($008080FF);
  end;
end;


//
//  HINT блок на коде
//
procedure Tmain.cxClientViewNICKGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
var str_tmp: Variant;
    str_text: string;
begin
  try
      str_tmp := cxClientView.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, cxClientView.GetColumnByFieldName('BLOCK1').Index
                );
      if (str_tmp = 1) then str_text := str_text + 'Блокирован кредитом. ';

      str_tmp := cxClientView.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, cxClientView.GetColumnByFieldName('BLOCK2').Index
                );
      if (str_tmp = 1) then str_text := str_text + 'Блокирован бухгалтерией.';

    AHintText := str_text;
  except
    AHintText := '';
  end;
end;


procedure Tmain.cxGridDBTableView1DblClick(Sender: TObject);
var str: string;
begin
  if (DM.Q_G_CL.RecordCount > 0) then
  begin
      DM.Q_CLIENT_VIEW.Close;
      DM.Q_CLIENT_VIEW.SQL.Clear;
      DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
      DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
      DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
      DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_G_CL.FieldByName('ID_CLIENTS').AsInteger;
      DM.Q_CLIENT_VIEW.Open;

      u_info.Q_ADDRESS.Close;
      u_info.Q_ADDRESS.ParamByName('ID_CLIENTS').AsInteger := DM.Q_G_CL.FieldByName('ID_CLIENTS').AsInteger;
      u_info.Q_ADDRESS.Open;

      str := '';
      if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
      if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
      if str = '' then str := 'Нет';
      u_info.Label4.Caption := str;
//      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsInteger = 1) then u_info.Label7.Caption := 'Да' else u_info.Label7.Caption := 'Нет';
      u_info.chbRuleSite.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
      u_info.chbRulePics.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
      u_info.chbRulePrice.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
      u_info.chbRuleOrder.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');
      u_info.checkbox3.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1');

      if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then begin u_info.Label10.Caption := 'Да'; u_info.Label10.Font.Color := clRed; end else begin u_info.Label10.Caption := 'Нет'; u_info.Label10.Font.Color := clBlack; end;
      if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then begin u_info.Label12.Caption := 'Да'; u_info.Label12.Font.Color := clRed; end else begin u_info.Label12.Caption := 'Нет'; u_info.Label12.Font.Color := clBlack; end;
      //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then begin u_info.Label14.Caption := 'Да'; u_info.Label14.Font.Color := clRed; end else begin u_info.Label14.Caption := 'Нет'; u_info.Label14.Font.Color := clBlack; end;

      u_info.ShowModal;
      u_info.Q_ADDRESS.Close;
  end
  else ShowMessage('Нет данных для просмотра!');
end;


//
//  HINT телефон на фамилии
//
procedure Tmain.cxClientViewFIOGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  try
    AHintText := VarToStr(cxClientView.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, cxClientView.GetColumnByFieldName('PHONE').Index ));
  except
    AHintText := '';
  end;
end;


//
// Группируем по типу клиента
//
procedure Tmain.m_typeClick(Sender: TObject);
begin
  m_angroupClick(Sender);
  cxClientViewTTYPE_NAME.GroupIndex := 0;
end;


//
// Группируем по группе
//
procedure Tmain.m_groupClick(Sender: TObject);
begin
  m_angroupClick(Sender);
  cxClientViewGROUP_NAME.GroupIndex := 0;
end;


//
// Группируем по региону
//
procedure Tmain.m_regionClick(Sender: TObject);
begin
  m_angroupClick(Sender);
  cxClientViewREGION_NAME.GroupIndex := 0;
end;


//
// Разгруппировываем
//
procedure Tmain.m_angroupClick(Sender: TObject);
begin
  cxClientViewTTYPE_NAME.GroupIndex := -1;
  cxClientViewGROUP_NAME.GroupIndex := -1;
  cxClientViewREGION_NAME.GroupIndex := -1;
end;


// Полный просмотр информации о клиенте
procedure Tmain.CRDBGrid1DblClick(Sender: TObject);
var str: string;
begin
  if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
    if (cxClientView.Controller.FocusedColumn.Caption = 'Группа') then
      N41Click(Sender)
    else
    begin
      DM.Q_CLIENT_VIEW.Close;
      DM.Q_CLIENT_VIEW.SQL.Clear;
      DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
      DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
      DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
      DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
      DM.Q_CLIENT_VIEW.Open;

      u_info.Q_ADDRESS.Close;
      u_info.Q_ADDRESS.ParamByName('ID_CLIENTS').AsInteger := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
      u_info.Q_ADDRESS.Open;

      str := '';
      if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
      if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
      if str = '' then str := 'Нет';
      u_info.Label4.Caption := str;
//      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsInteger = 1) then u_info.Label7.Caption := 'Да' else u_info.Label7.Caption := 'Нет';
      u_info.chbRuleSite.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
      u_info.chbRulePics.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
      u_info.chbRulePrice.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
      u_info.chbRuleOrder.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');
      u_info.checkbox3.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1');

      if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then begin u_info.Label10.Caption := 'Да'; u_info.Label10.Font.Color := clRed; end else begin u_info.Label10.Caption := 'Нет'; u_info.Label10.Font.Color := clBlack; end;
      if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then begin u_info.Label12.Caption := 'Да'; u_info.Label12.Font.Color := clRed; end else begin u_info.Label12.Caption := 'Нет'; u_info.Label12.Font.Color := clBlack; end;
      //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then begin u_info.Label14.Caption := 'Да'; u_info.Label14.Font.Color := clRed; end else begin u_info.Label14.Caption := 'Нет'; u_info.Label14.Font.Color := clBlack; end;

      u_info.ShowModal;
      u_info.Q_ADDRESS.Close;
    end;
  end
  else ShowMessage('Нет данных для просмотра!');
end;


//
//  Включение фильтров
//
procedure Tmain.filtr_onExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then BitBtn8Click(self);
  if (PageControl1.TabIndex = 2) then BitBtn15Click(self);
  if (PageControl1.TabIndex = 3) then BitBtn22Click(self);
end;


//
//  Выключение фильтров
//
procedure Tmain.filtr_offExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then BitBtn9Click(self);
  if (PageControl1.TabIndex = 2) then BitBtn16Click(self);
  if (PageControl1.TabIndex = 3) then BitBtn23Click(self);
end;


//
// Печать списка клиентов
//
procedure Tmain.BitBtn6Click(Sender: TObject);
begin
  try
    cxClientView.DataController.DataSource := nil;
    frxReport1.LoadFromFile(main.path+'raports\clients_all.fr3');
    frxReport1.ShowReport;
    cxClientView.DataController.DataSource := DM.Q_CLIENTS_DS;
  except
    on E: Exception do
    begin
      cxClientView.DataController.DataSource := DM.Q_CLIENTS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
// Печать карточки клиента
//
procedure Tmain.BitBtn5Click(Sender: TObject);
var str: string;
begin
try
  if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
    DM.Q_CLIENT_VIEW.Close;
    DM.Q_CLIENT_VIEW.SQL.Clear;
    DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
    DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
    DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    DM.Q_CLIENT_VIEW.Open;

    str := '';
    if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then str := str + 'Горшечные растения  ';
    if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then str := str + 'Срезанные растения';
    if str = '' then str := 'Нет';
    u_info.Label4.Caption := str;
//    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsInteger = 1) then u_info.Label7.Caption := 'Да' else u_info.Label7.Caption := 'Нет';
    u_info.chbRuleSite.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1');
    u_info.chbRulePics.Checked  := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1');
    u_info.chbRulePrice.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1');
    u_info.chbRuleOrder.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1');
    u_info.checkbox3.Checked := (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1');

    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then u_info.Label10.Caption := 'Да' else u_info.Label10.Caption := 'Нет';
    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then u_info.Label12.Caption := 'Да' else u_info.Label12.Caption := 'Нет';
   // if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then u_info.Label14.Caption := 'Да' else u_info.Label14.Caption := 'Нет';

    DM.cds_adress.Close;
    dm.cds_adress.ParamByName('p1').AsInteger := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    DM.cds_adress.Open;

    frxReport1.LoadFromFile(main.path+'raports\clients_card_new.fr3');
    frxReport1.ShowReport;
  end
  else ShowMessage('Нет данных для просмотра!');
except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
End;

end;


//
// Печать штрих-кодов
//
procedure Tmain.BitBtn4Click(Sender: TObject);
begin
  try
    if MessageDlg('Печатать карточки на пластиковых картах?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      // Открытие запроса по карточкам
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin CLIENTS_PKG.get_bar_code_list(:id_clients_, :cursor_); end;');
      DM.Q_SQL.ParamByName('id_clients_').AsInteger := 0;
      DM.Q_SQL.ParamByName('cursor_').DataType := ftCursor;
      DM.Q_SQL.Open;

      if DM.Q_SQL.RecordCount > 0 then
      begin
        frxReport1.LoadFromFile(main.path+'raports\ClientCard.fr3');
        frxReport1.ShowReport;
      end;

      if DM.Q_SQL.RecordCount > 0 then
      begin
        frxReport1.LoadFromFile(main.path+'raports\ClientCard_back_new.fr3');
        frxReport1.ShowReport;
      end;

      DM.Q_SQL.Close;
      BitBtn24Click(self);
    end
    else
    begin
      frxReport1.LoadFromFile(main.path+'raports\ClientCard_simple.fr3');
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



//
// Обнуление количества печати стикеров
//
procedure Tmain.BitBtn24Click(Sender: TObject);
var ind: integer;
begin
  ind := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('begin CLIENTS_PKG.remove_stiker; end;');
  DM.Q_SQL.Execute;

  DM.Q_CLIENTS.Refresh;
  DM.Q_CLIENTS.Locate('id_clients',ind,[]);
end;


//
// Быстрый поиск клиентов по коду
//
procedure Tmain.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if Edit1.Text = '' then
    begin
      DM.Q_CLIENTS.First;
      Edit1.Color := clWindow;
    end
    else
    begin
      if DM.Q_CLIENTS.Locate('NICK',ComboBox12.Text+Edit1.Text,[loCaseInsensitive, loPartialKey]) then begin Edit1.Color := clWindow; end
      else Edit1.Color := clred;
    end;
end;


//
// Быстрый поиск клиентов по названию
//
procedure Tmain.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
    if Edit2.Text = '' then
    begin
      DM.Q_CLIENTS.First;
      Edit2.Color := clWindow;
    end
    else
    begin
      if DM.Q_CLIENTS.Locate('FIO',Edit2.Text,[loCaseInsensitive, loPartialKey]) then begin Edit2.Color := clWindow; end
      else Edit2.Color := clred;
    end;
end;


//
//  Сохраняем таблицу с клиентами
//
procedure Tmain.N7Click(Sender: TObject);
begin
    if DM.SaveDialog.Execute then
    begin
      case DM.SaveDialog.FilterIndex of
        1: begin ExportGridToText(DM.SaveDialog.FileName,cxClient,true,true,';','','') end;
        //2: begin dxDBGrid2.SaveToXLS(DM.SaveDialog.FileName,true); end;
        3: begin ExportGridToHTML(DM.SaveDialog.FileName,cxClient,true,true);  end;
        //4: begin dxDBGrid2. ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExportGridToExcel(DM.SaveDialog.FileName,cxClient,true,true,true); end;
      else
        ShowMessage('Неверный формат!');
      end;
    end;
end;



//
// Вывод статистики
//
procedure Tmain.BitBtn7Click(Sender: TObject);
var sql: string;
begin
  statistic.Chart1.Series[0].Clear;
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

  statistic.ShowModal;
end;


//
// Фильтрация данных по клиентам
//
procedure Tmain.BitBtn8Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT * from CLIENTS_VIEW2 WHERE (ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ';

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
  //if (CheckBox3.Checked = true) then sql := sql + ' AND vanselling = 1';

  DM.Q_CLIENTS.Close;
  DM.Q_CLIENTS.SQL.Clear;
  DM.Q_CLIENTS.SQL.Add(sql);

  if (DateTimePicker1.Checked = true) then
    DM.Q_CLIENTS.ParamByName('date1').AsDate := DateTimePicker1.Date;

  if (DateTimePicker2.Checked = true) then
    DM.Q_CLIENTS.ParamByName('date2').AsDate := DateTimePicker2.Date;

  try
    DM.Q_CLIENTS.Open;
    cxClient.SetFocus;
  except
    on E: Exception do ShowMessage(E.Message);
  End;
end;


//
// Снятие фильтра по клиентам
//
procedure Tmain.BitBtn9Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT * from CLIENTS_VIEW2 where (ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ';

  DM.Q_CLIENTS.Close;
  DM.Q_CLIENTS.SQL.Clear;
  DM.Q_CLIENTS.SQL.Add(sql);

  try
    DM.Q_CLIENTS.Open;
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


// Печать контактов
procedure Tmain.btn_conctactClick(Sender: TObject);
begin
  try
    cxClientView.DataController.DataSource := nil;
    frxReport1.LoadFromFile(main.path+'raports\clients_contacts.fr3');
    frxReport1.ShowReport;
    cxClientView.DataController.DataSource := DM.Q_CLIENTS_DS;
  except
    on E: Exception do
    begin
      cxClientView.DataController.DataSource := DM.Q_CLIENTS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;

//
// Копирование клиента в старую БД
//
procedure Tmain.BitBtn21Click(Sender: TObject);
begin
if (PageControl1.TabIndex = 0) then
begin
  if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
   if MessageDlg('Вы уверены, что хотите скопировать клиента в старую БД?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      // Пытаемся выполнить INSERT в таблицу
      try
        DM.Q_CLIENT_VIEW.Close;
        DM.Q_CLIENT_VIEW.SQL.Clear;
        DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city ');
        DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        DM.Q_CLIENT_VIEW.Open;

        Clients_table.Active := false;
        Clients_table.TableName := client_path;
        Clients_table.Active := true;

          Clients_table.Active := false;
          Clients_table.TableName := client_path2;
          Clients_table.Active := true;

          Clients_table.Edit;
          Clients_table.Insert;
          Clients_table.FieldByName('FIO').AsString := DM.Q_client_view.FieldByName('FIO').AsString;
          Clients_table.FieldByName('NICK').AsString := DM.Q_client_view.FieldByName('NICK').AsString;
          Clients_table.FieldByName('F1').AsString := DM.Q_client_view.FieldByName('U_ADDRESS').AsString; // DM.Q_client_view.FieldByName('ADDRESS').AsString;
          Clients_table.FieldByName('F2').AsString := DM.Q_client_view.FieldByName('INN').AsString;
          Clients_table.FieldByName('F3').AsString := DM.Q_client_view.FieldByName('PHONE').AsString;
          Clients_table.FieldByName('F4').AsString := DM.Q_client_view.FieldByName('PASSPORT').AsString;
          Clients_table.FieldByName('F5').AsString := DM.Q_client_view.FieldByName('CONTACT').AsString;
          Clients_table.FieldByName('F6').AsString := DM.Q_client_view.FieldByName('CONT_PHONE').AsString;
          Clients_table.FieldByName('MARK').AsInteger := StrToInt(DM.Q_client_view.FieldByName('MARK').AsString[1]);
          Clients_table.FieldByName('CODE').AsString := DM.Q_client_view.FieldByName('CCODE').AsString;
          Clients_table.FieldByName('F9').AsString := DM.Q_client_view.FieldByName('BANK').AsString;
          Clients_table.FieldByName('F10').AsString := DM.Q_client_view.FieldByName('AGREEMENT').AsString;
          Clients_table.FieldByName('DAT').AsDateTime := DM.Q_client_view.FieldByName('DDATE').AsDateTime;
          Clients_table.FieldByName('OTKUDA').AsString := DM.Q_client_view.FieldByName('ADVERT').AsString;

          if (DM.Q_client_view.FieldByName('BLOCK1').AsInteger = 1) then Clients_table.FieldByName('BLOK2').AsBoolean := true else Clients_table.FieldByName('BLOK2').AsBoolean := false;
          if (DM.Q_client_view.FieldByName('BLOCK2').AsInteger = 1) then Clients_table.FieldByName('BLOK1').AsBoolean := true else Clients_table.FieldByName('BLOK1').AsBoolean := false;
          //if (DM.Q_client_view.FieldByName('vanselling').AsInteger = 1) then Clients_table.FieldByName('vanselling').AsBoolean := true else Clients_table.FieldByName('vanselling').AsBoolean := false;

          if (DM.Q_client_view.FieldByName('FLOWERS').AsInteger = 1) then Clients_table.FieldByName('FLOWERS').AsBoolean := true else Clients_table.FieldByName('FLOWERS').AsBoolean := false;
          if (DM.Q_client_view.FieldByName('PLANTS').AsInteger = 1) then Clients_table.FieldByName('PLANTS').AsBoolean := true else Clients_table.FieldByName('PLANTS').AsBoolean := false;

          Clients_table.Post;
          Clients_table.Active := false;
          if DM.id_office = 1 then
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


//
// Копирование клиента
//
procedure Tmain.SpeedButton3Click(Sender: TObject);
var ind: integer;
begin
  if (PageControl1.TabIndex = 0) then
  begin
    if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger > 0) then
    begin
      if (DM.Q_CLIENTS.FieldByName('ID_CLIENTS_GROUPS').AsInteger = 1) then ShowMessage ('Редактирование клиента, находящегося в группе "Сотрудники фирмы" возможно только в разделе "СПИСОК СОТРУДНИКОВ"!')
      else
      begin
        DM.Q_CLIENT_VIEW.Close;
        DM.Q_CLIENT_VIEW.SQL.Clear;
        DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
        DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        DM.Q_CLIENT_VIEW.Open;

        ind := edits.ComboBox1.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        edits.ComboBox1.ItemIndex := ind;
        ind := edits.ComboBox2.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        edits.ComboBox2.ItemIndex := ind;
        ind := edits.ComboBox3.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        edits.ComboBox3.ItemIndex := ind;
        ind := edits.ComboBox4.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        edits.ComboBox4.ItemIndex := ind;

        edits.LabeledEdit1.Text := ''; //DM.Q_CLIENT_VIEW.FieldByName('NICK').AsString;
        edits.LabeledEdit2.Text := ''; //DM.Q_CLIENT_VIEW.FieldByName('FIO').AsString;
        edits.LabeledEdit4.Text := DM.Q_CLIENT_VIEW.FieldByName('INN').AsString;
        edits.LabeledEdit6.Text := DM.Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        edits.LabeledEdit7.Text := DM.Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        edits.LabeledEdit8.Text := DM.Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        edits.LabeledEdit9.Text := DM.Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        edits.LabeledEdit10.Text := DM.Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        edits.LabeledEdit11.Text := DM.Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        edits.LabeledEdit12.Text := DM.Q_CLIENT_VIEW.FieldByName('WWW').AsString;
        edits.DBComboBoxEh1.ItemIndex := DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
        edits.Edit1.Text := ''; //DM.Q_CLIENT_VIEW.FieldByName('CCODE').AsString;
        edits.Memo1.Text := DM.Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        edits.Memo2.Text := DM.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        edits.Memo3.Text := DM.Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        edits.Memo4.Text := DM.Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        edits.Memo5.Text := DM.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
        edits.Memo6.Text := DM.Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

        if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then edits.CheckBox1.Checked := true else edits.CheckBox1.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then edits.CheckBox2.Checked := true else edits.CheckBox2.Checked := false;

        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1') then edits.chbRuleWebShop.Checked := true else edits.chbRuleWebShop.Checked := false;


        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then edits.CheckBox4.Checked := true else edits.CheckBox4.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then edits.CheckBox5.Checked := true else edits.CheckBox5.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then edits.CheckBox6.Checked := true else edits.CheckBox6.Checked := false;
        //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then edits.CheckBox3.Checked := true else edits.CheckBox3.Checked := false;



        edits.SpeedButton1.Visible := true;
        edits.btnClone.Enabled := false;
        
        edits.ttype := 1;
        edits.showmodal;
      end;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;


  if (PageControl1.TabIndex = 2) then
  begin
    if DM.Q_EMPL.IsEmpty then
    begin
      ShowMessage('Нет данных для редактирования!');
      exit;
    end;

        DM.Q_CLIENT_VIEW.Close;
        DM.Q_CLIENT_VIEW.SQL.Clear;
        DM.Q_CLIENT_VIEW.SQL.Add('SELECT C.*, case when c.id_office > 1 then o.OFFICE_NAME else case c.reg_type when 0 then ''Старлайт'' when 1 then ''Старлайт Кэш & Кэрри'' end end as reg_type_name, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT, s.city');
        DM.Q_CLIENT_VIEW.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
        DM.Q_CLIENT_VIEW.SQL.Add(' WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS(+) AND C.TTYPE = T.ID_CLIENT_TYPES(+) AND C.ADVERTISMENT = A.ID_ADVERTISMENTS(+) AND C.REGION = R.ID_REGIONS(+) AND ID_CLIENTS=:ID and c.id_office = o.ID_OFFICE and c.id_city = s.id_city(+)');
        DM.Q_CLIENT_VIEW.ParamByName('ID').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
        DM.Q_CLIENT_VIEW.Open;

        ind := edits.ComboBox1.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
        edits.ComboBox1.ItemIndex := ind;
        ind := edits.ComboBox2.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        edits.ComboBox2.ItemIndex := ind;
//        ind := edits.ComboBox3.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        edits.ComboBox3.ItemIndex := -1; //ind;
//        ind := edits.ComboBox4.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        ind := edits.ComboBox4.Items.IndexOf('Общая группа');
        edits.ComboBox4.ItemIndex := ind;

        edits.LabeledEdit1.Text := StringReplace(DM.Q_CLIENT_VIEW.FieldByName('NICK').AsString, 'S ', 'M ', []);
        edits.LabeledEdit2.Text := DM.Q_CLIENT_VIEW.FieldByName('FIO').AsString;
        edits.LabeledEdit4.Text := DM.Q_CLIENT_VIEW.FieldByName('INN').AsString;
        edits.LabeledEdit6.Text := DM.Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
        edits.LabeledEdit7.Text := DM.Q_CLIENT_VIEW.FieldByName('KPP').AsString;
        edits.LabeledEdit8.Text := DM.Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
        edits.LabeledEdit9.Text := DM.Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
        edits.LabeledEdit10.Text := DM.Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
        edits.LabeledEdit11.Text := DM.Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
        edits.LabeledEdit12.Text := DM.Q_CLIENT_VIEW.FieldByName('WWW').AsString;
        edits.DBComboBoxEh1.ItemIndex := DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
        edits.Edit1.Text := ''; //DM.Q_CLIENT_VIEW.FieldByName('CCODE').AsString;
        edits.Memo1.Text := DM.Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        edits.Memo2.Text := DM.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        edits.Memo3.Text := DM.Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        edits.Memo4.Text := DM.Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        edits.Memo5.Text := DM.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
        edits.Memo6.Text := DM.Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

        if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then edits.CheckBox1.Checked := true else edits.CheckBox1.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then edits.CheckBox2.Checked := true else edits.CheckBox2.Checked := false;

        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1') then edits.chbRuleWebShop.Checked := true else edits.chbRuleWebShop.Checked := false;


        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then edits.CheckBox4.Checked := true else edits.CheckBox4.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then edits.CheckBox5.Checked := true else edits.CheckBox5.Checked := false;
        if (DM.Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then edits.CheckBox6.Checked := true else edits.CheckBox6.Checked := false;
        //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then edits.CheckBox3.Checked := true else edits.CheckBox3.Checked := false;


        edits.ttype := 1;
        edits.showmodal;
  end;

end;






//
// Поиск клиента в группе
//
procedure Tmain.SpeedButton4Click(Sender: TObject);
var sql: string;
begin
  DM.Q_GROUPS.Close;
  DM.Q_GROUPS.SQL.Clear;
  sql := 'SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o where (a.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and a.id_office = o.id_office and a.ID_CLIENTS_GROUPS in (select ID_CLIENTS_GROUPS from clients where (ID_OFFICE='+IntToStr(dm.id_office)+' or '+IntToStr(dm.id_office)+'=0) ';
  if ( Trim(Edit25.Text) <> '' ) then sql := sql + ' and UPPER(NICK) LIKE UPPER(''%'+Edit25.Text+'%'')';
  if ( Trim(Edit26.Text) <> '' ) then sql := sql + ' and UPPER(FIO) LIKE UPPER(''%'+Edit26.Text+'%'')';
  sql := sql + ' ) ORDER BY a.NAME';
  DM.Q_GROUPS.SQL.Add(sql);
  DM.Q_GROUPS.Open;
  if ( Trim(Edit25.Text) <> '' ) then DM.Q_G_CL.Locate('NICK',Edit25.Text,[loCaseInsensitive, loPartialKey]);
  if ( Trim(Edit26.Text) <> '' ) then DM.Q_G_CL.Locate('FIO',Edit26.Text,[loCaseInsensitive, loPartialKey]);
end;


//
//  Показ всех групп без фильтров
//
procedure Tmain.SpeedButton5Click(Sender: TObject);
var sql: string;
begin
  DM.Q_GROUPS.Close;
  DM.Q_GROUPS.SQL.Clear;
  sql := 'SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o where (a.ID_OFFICE='+IntToStr(dm.id_office)+' or '+IntToStr(dm.id_office)+'=0) and a.id_office = o.id_office ORDER BY a.NAME';
  DM.Q_GROUPS.SQL.Add(sql);
  DM.Q_GROUPS.Open;
  Edit25.Text := '';
  Edit26.Text := '';
end;


//
// Быстрый поиск по группе
//
procedure Tmain.Edit5KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit5.Text = '' then
    begin
      DM.Q_GROUPS.First;
      Edit5.Color := clWindow;
    end
    else
    begin
      if DM.Q_GROUPS.Locate('NAME',UpperCase(Edit5.Text),[loCaseInsensitive, loPartialKey]) then begin Edit5.Color := clWindow; end
      else Edit5.Color := clred;
    end;
end;


//
// Печать группы
//
procedure Tmain.BitBtn3Click(Sender: TObject);
begin
  try
    DBGrid2.DataSource := nil;
//    frxReport1.LoadFromFile(main.path+'raports\groups.frf');
//    frxReport1.ShowReport;
    DBGrid2.DataSource := DM.Q_GROUPS_DS;
  except
    on E: Exception do
    begin
      DBGrid2.DataSource := DM.Q_GROUPS_DS;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
// Полный просмотр клиента из списка групп
//
procedure Tmain.CRDBGrid3DblClick(Sender: TObject);
begin
if (DM.Q_G_CL.FieldByName('ID_CLIENTS').AsInteger > 0) then
begin
  BitBtn9Click(SELF);
  DM.Q_CLIENTS.Locate('ID_CLIENTS',DM.Q_G_CL.FieldByName('ID_CLIENTS').AsString,[]);
  CRDBGrid1DblClick(self);
end
else ShowMessage('Нет данных для просмотра!');
end;


//
//  Сохранить все в поиске
//
procedure Tmain.export_searchExecute(Sender: TObject);
var ExpClass:TDBGridEhExportClass;
    Ext:String;
begin
    if DM.SaveDialog.Execute then
    begin
      case DM.SaveDialog.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(DM.SaveDialog.FileName,Length(DM.SaveDialog.FileName)-2,3)) <> UpperCase(Ext) then
            DM.SaveDialog.FileName := DM.SaveDialog.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,CRDBGrid4,DM.SaveDialog.FileName,False);
      end;
    end;
end;


//
//  Выделить все в поиске
//
procedure Tmain.select_allExecute(Sender: TObject);
begin
  CRDBGrid4.Selection.SelectAll;
end;


//
//  Отрисовываем колонки а таблице  поиска
//
procedure Tmain.N17Click(Sender: TObject);
begin
  if (TMenuItem(Sender).Checked = false) then TMenuItem(Sender).Checked := true else TMenuItem(Sender).Checked := false;
  CRDBGrid4.Columns.Items[TMenuItem(Sender).MenuIndex+1].Visible := TMenuItem(Sender).checked;
  CRDBGrid4.Repaint;
end;


//
//  Поиск клиентов
//
procedure Tmain.BitBtn22Click(Sender: TObject);
begin
  if ( ( DbComboBoxEh1.ItemIndex = 0 ) and (trim(edit10.Text) = '') and (trim(edit11.Text) = '') and (trim(edit12.Text) = '') and (trim(edit13.Text) = '') and (trim(edit14.Text) = '') and (trim(edit15.Text) = '') and (trim(edit16.Text) = '') and (trim(edit17.Text) = '') and (trim(edit18.Text) = '') and (trim(edit19.Text) = '') and (trim(edit20.Text) = '') and (trim(edit21.Text) = '') and (trim(edit22.Text) = '') and (trim(edit23.Text) = '') and (trim(edit24.Text) = '') ) then
  showmessage('Заполните поля для поиска!')
  else
  begin
    DM.Q_SEARCH.Close;
    DM.Q_SEARCH.SQL.Clear;
    DM.Q_SEARCH.SQL.Add('SELECT C.*, s.city , o.brief, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT ');
    DM.Q_SEARCH.SQL.Add(' FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o, books_cities s');
    DM.Q_SEARCH.SQL.Add('WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS and c.id_city = s.id_city(+) and c.id_office = o.ID_OFFICE and (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ');

    if (DBComboBoxEh2.Value = 1) then
    begin
      if trim(edit10.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(NICK) like ''%'+ AnsiUpperCase(Edit10.Text) +'%''');
      if trim(edit11.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(FIO) like ''%'+ AnsiUpperCase(Edit11.Text) +'%''');
      if trim(edit12.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) like ''%'+ AnsiUpperCase(Edit12.Text) +'%''');
      if trim(edit13.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) like ''%'+ AnsiUpperCase(Edit13.Text) +'%''');
      if trim(edit14.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(CONTACT) like ''%'+ AnsiUpperCase(Edit14.Text) +'%''');
      if trim(edit15.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(INN) like ''%'+ AnsiUpperCase(Edit15.Text) +'%''');
      if trim(edit16.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(KPP) like ''%'+ AnsiUpperCase(Edit16.Text) +'%''');
      if trim(edit17.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(OKATO) like ''%'+ AnsiUpperCase(Edit17.Text) +'%''');
      if trim(edit18.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(EMAIL) like ''%'+ AnsiUpperCase(Edit18.Text) +'%''');
      if trim(edit19.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(WWW) like ''%'+ AnsiUpperCase(Edit19.Text) +'%''');
      if trim(edit20.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) like ''%'+ AnsiUpperCase(Edit20.Text) +'%'' or UPPER(CONT_PHONE) like ''%'+ AnsiUpperCase(Edit20.Text) +'%'' )');
      if trim(edit21.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) like ''%'+ AnsiUpperCase(Edit21.Text) +'%''');
      if trim(edit22.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(BANK) like ''%'+ AnsiUpperCase(Edit22.Text) +'%''');
      if trim(edit23.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) like ''%'+ AnsiUpperCase(Edit23.Text) +'%''');
      if trim(edit24.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) like ''%'+ AnsiUpperCase(Edit24.Text) +'%''');
    end;

    if (DBComboBoxEh2.Value = 2) then
    begin
      if trim(edit10.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(NICK) like '''+ AnsiUpperCase(Edit10.Text) +'%''');
      if trim(edit11.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(FIO) like '''+ AnsiUpperCase(Edit11.Text) +'%''');
      if trim(edit12.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) like '''+ AnsiUpperCase(Edit12.Text) +'%''');
      if trim(edit13.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) like '''+ AnsiUpperCase(Edit13.Text) +'%''');
      if trim(edit14.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(CONTACT) like '''+ AnsiUpperCase(Edit14.Text) +'%''');
      if trim(edit15.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(INN) like '''+ AnsiUpperCase(Edit15.Text) +'%''');
      if trim(edit16.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(KPP) like '''+ AnsiUpperCase(Edit16.Text) +'%''');
      if trim(edit17.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(OKATO) like '''+ AnsiUpperCase(Edit17.Text) +'%''');
      if trim(edit18.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(EMAIL) like '''+ AnsiUpperCase(Edit18.Text) +'%''');
      if trim(edit19.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(WWW) like '''+ AnsiUpperCase(Edit19.Text) +'%''');
      if trim(edit20.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) like '''+ AnsiUpperCase(Edit20.Text) +'%'' or UPPER(CONT_PHONE) like '''+ AnsiUpperCase(Edit20.Text) +'%'' )');
      if trim(edit21.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) like '''+ AnsiUpperCase(Edit21.Text) +'%''');
      if trim(edit22.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(BANK) like '''+ AnsiUpperCase(Edit22.Text) +'%''');
      if trim(edit23.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) like '''+ AnsiUpperCase(Edit23.Text) +'%''');
      if trim(edit24.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) like '''+ AnsiUpperCase(Edit24.Text) +'%''');
    end;

    if (DBComboBoxEh2.Value = 3) then
    begin
      if trim(edit10.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(NICK) = '''+ AnsiUpperCase(Edit10.Text) +'''');
      if trim(edit11.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(FIO) = '''+ AnsiUpperCase(Edit11.Text) +'''');
      if trim(edit12.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(AGREEMENT) = '''+ AnsiUpperCase(Edit12.Text) +'''');
      if trim(edit13.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(REG_SVID) = '''+ AnsiUpperCase(Edit13.Text) +'''');
      if trim(edit14.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(CONTACT) = '''+ AnsiUpperCase(Edit14.Text) +'''');
      if trim(edit15.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(INN) = '''+ AnsiUpperCase(Edit15.Text) +'''');
      if trim(edit16.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(KPP) = '''+ AnsiUpperCase(Edit16.Text) +'''');
      if trim(edit17.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(OKATO) = '''+ AnsiUpperCase(Edit17.Text) +'''');
      if trim(edit18.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(EMAIL) = '''+ AnsiUpperCase(Edit18.Text) +'''');
      if trim(edit19.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(WWW) = '''+ AnsiUpperCase(Edit19.Text) +'''');
      if trim(edit20.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and ( UPPER(PHONE) = '''+ AnsiUpperCase(Edit20.Text) +''' or UPPER(CONT_PHONE) = '''+ AnsiUpperCase(Edit20.Text) +''' )');
      if trim(edit21.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(U_ADDRESS) = '''+ AnsiUpperCase(Edit21.Text) +'''');
      if trim(edit22.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(BANK) = '''+ AnsiUpperCase(Edit22.Text) +'''');
      if trim(edit23.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(ADDRESS) = '''+ AnsiUpperCase(Edit23.Text) +'''');
      if trim(edit24.Text) <> '' then DM.Q_SEARCH.SQL.Add(' and UPPER(PASSPORT) = '''+ AnsiUpperCase(Edit24.Text) +'''');
    end;

    if DbComboBoxEh1.ItemIndex > 0 then DM.Q_SEARCH.SQL.Add(' and reg_type='+DbComboBoxEh1.Value);
    DM.Q_SEARCH.Open;
    CrDBGrid4.Visible := true;
  end;
end;


//
// Очистить поиск
//
procedure Tmain.BitBtn23Click(Sender: TObject);
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

  DM.Q_SEARCH.Close;
  DM.Q_SEARCH.SQL.Clear;
  DM.Q_SEARCH.SQL.Add('SELECT C.*, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAME, A.NAME AS ADVERT FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_ADVERTISMENTS A, CLIENTS C, BOOKS_REGIONS R, offices o ');
  DM.Q_SEARCH.SQL.Add('WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ADVERTISMENT = A.ID_ADVERTISMENTS AND C.REGION = R.ID_REGIONS and c.id_office = o.ID_OFFICE and (c.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ');
  CrDBGrid4.Visible := false;
end;


//
//  По 2-му клику ищем клиента в основном списке
//
procedure Tmain.CRDBGrid4DblClick(Sender: TObject);
begin
  if (DM.Q_SEARCH.Active = false) or (DM.Q_SEARCH.RecordCount = 0) then exit;
  
  DM.Q_CLIENTS.Locate('ID_CLIENTS',DM.Q_SEARCHID_CLIENTS.AsInteger,[]);
  CRDBGrid1DblClick(self);
end;


//
// Фильтрация сотрудников
//
procedure Tmain.BitBtn15Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT E.* FROM EMPLOYEES_VIEW E WHERE (e.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ';

  // Поиск по фамилии
  if (trim(Edit9.Text) <> '') then sql := sql + ' AND UPPER(E.FIO) LIKE :p_fio';

  // Поиск по активности
  if (ComboBox4.ItemIndex = 1) then  sql := sql + ' AND E.ACTIVE = 1';
  if (ComboBox4.ItemIndex = 2) then  sql := sql + ' AND E.ACTIVE = 0';

  // Поиск по наличию доступа в ИС
  if (ComboBox6.ItemIndex = 1) then  sql := sql + ' AND E.LOGIN IS NOT NULL';
  if (ComboBox6.ItemIndex = 2) then  sql := sql + ' AND E.LOGIN IS NULL';

  // Поиск по наличию в штате
  if (ComboBox8.ItemIndex = 1) then  sql := sql + ' AND E.STAFF = 1';
  if (ComboBox8.ItemIndex = 2) then  sql := sql + ' AND E.STAFF = 0';

  // Поиск по должности
  if (ComboBox3.ItemIndex > 0) then
  begin
    DM.Q_TITLES.Locate('NAME',ComboBox3.Text,[]);
    sql := sql + ' AND E.ID_CLIENTS IN (SELECT EJ.ID_EMPLOYEES FROM EMPLOYEES_JOB_TITLES EJ WHERE EJ.ID_JOB_TITLES = '+ DM.Q_TITLESID_JOB_TITLES.AsString + ')';
  end;

  // Поиск по отделу
  if (ComboBox7.ItemIndex > 0) then
  begin
    DM.Q_DEPART.Locate('NAME',ComboBox7.Text,[]);
    sql := sql + ' AND E.ID_CLIENTS IN (SELECT ED.ID_EMPLOYEES FROM EMPLOYEES_DEPARTMENTS ED WHERE ED.ID_DEPARTMENTS = '+ DM.Q_DEPARTID_DEPARTMENTS.AsString +')';
  end;

  // Поиск по коду
  if (trim(Edit8.Text) <> '') then sql := sql + ' AND UPPER(E.NICK) LIKE :p_nick';
  if ((trim(Edit8.Text) <> '') and ( AnsiContainsStr(Edit8.Text, '_') = true )) then sql := sql + ' ESCAPE ''\''';

  sql := sql + ' ORDER BY E.FIO';

  DM.Q_EMPL.Close;
  DM.Q_EMPL.SQL.Clear;
  DM.Q_EMPL.SQL.Add(sql);

  if (trim(Edit9.Text) <> '') then DM.Q_EMPL.ParamByName('p_fio').Value := '%' + AnsiUpperCase(Edit9.Text) + '%';
  if (trim(Edit8.Text) <> '') then
  begin
    Edit8.Text := AnsiReplaceStr(Edit8.Text,'_','\_');
    DM.Q_EMPL.ParamByName('p_nick').Value := '%' + AnsiUpperCase(Edit8.Text) + '%';
    Edit8.Text := AnsiReplaceStr(Edit8.Text,'\_','_');
  end;

  try
    DM.Q_EMPL.Open;
    gr_empl.SetFocus;
  except
    on E: Exception do ShowMessage(E.Message);
  End;
end;


//
// Отмена фильтра у сотрудников
//
procedure Tmain.BitBtn16Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT E.* FROM EMPLOYEES_VIEW E where (e.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') ';

  DM.Q_EMPL.Close;
  DM.Q_EMPL.SQL.Clear;
  DM.Q_EMPL.SQL.Add(sql);

  try
    DM.Q_EMPL.Open;
    gr_empl.SetFocus;
  except
    on E: Exception do ShowMessage(E.Message);
  End;

  Edit9.Text := '';
  Edit8.Text := '';
  ComboBox3.ItemIndex := -1;
  ComboBox4.ItemIndex := -1;
  ComboBox6.ItemIndex := -1;
  ComboBox7.ItemIndex := -1;
  ComboBox8.ItemIndex := -1;
  ComboBox10.ItemIndex := -1;
end;


//
//  Сохраняем таблицу с сотрудниками
//
procedure Tmain.MenuItem2Click(Sender: TObject);
begin
    if DM.SaveDialog.Execute then
    begin
      case DM.SaveDialog.FilterIndex of
        1: begin ExportGridToText(DM.SaveDialog.FileName,gr_empl,true,true,';','','') end;
        //2: begin dxDBGrid2.SaveToXLS(DM.SaveDialog.FileName,true); end;
        3: begin ExportGridToHTML(DM.SaveDialog.FileName,gr_empl,true,true);  end;
        //4: begin dxDBGrid2. ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExportGridToExcel(DM.SaveDialog.FileName,gr_empl,true,true,true); end;
      else
        ShowMessage('Неверный формат!');
      end;
    end;
    gr_empl.SetFocus;
end;


//
// Быстрый поиск по нику сотрудника
//
procedure Tmain.Edit6KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit6.Text = '' then
    begin
      DM.Q_EMPL.First;
      Edit6.Color := clWindow;
    end
    else
    begin
      if DM.Q_EMPL.Locate('NICK','S '+Edit6.Text,[loCaseInsensitive, loPartialKey]) then begin Edit6.Color := clWindow; end
      else Edit6.Color := clred;
    end;
end;


//
// Быстрый поиск по фамилии сотрудника
//
procedure Tmain.Edit7KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit7.Text = '' then
    begin
      DM.Q_EMPL.First;
      Edit7.Color := clWindow;
    end
    else
    begin
      if DM.Q_EMPL.Locate('FIO',Edit7.Text,[loCaseInsensitive, loPartialKey]) then begin Edit7.Color := clWindow; end
      else Edit7.Color := clred;
    end;
end;




//
// Полный просмотр информации о сотруднике
//
procedure Tmain.CRDBGrid2DblClick(Sender: TObject);
begin
  if (DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger > 0) then
  begin
    if (DM.Q_EMPL.FieldByName('LOGIN').AsString <> '') then e_info.Label14.Caption := 'Да' else e_info.Label14.Caption := 'Нет';

    DM.Q_EMPL_VIEW.Close;
    DM.Q_EMPL_VIEW.SQL.Clear;
    DM.Q_EMPL_VIEW.SQL.Add('SELECT C.*, R.NAME AS REGION_NAME FROM CLIENTS c, BOOKS_REGIONS R WHERE C.REGION = R.ID_REGIONS(+) and c.ID_CLIENTS=:ID');
    DM.Q_EMPL_VIEW.ParamByName('ID').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
    DM.Q_EMPL_VIEW.Open;

    e_info.ShowModal;
    gr_empl.SetFocus;
  end
  else ShowMessage('Нет данных для просмотра!');
end;


//
// Добавление отдела к сотруднику
//
procedure Tmain.BitBtn14Click(Sender: TObject);
begin
    if (ComboBox9.Text <> '') then
    begin
          DM.Ora_SQL.SQL.Clear;

          DM.Q_DEPART.Locate('NAME',ComboBox9.Text,[]);
          DM.Ora_SQL.SQL.Add('INSERT INTO EMPLOYEES_DEPARTMENTS VALUES(:EMPL,:JOB,'+IntToStr(dm.id_office)+',sysdate)');
          DM.Ora_SQL.ParamByName('EMPL').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').Value;
          DM.Ora_SQL.ParamByName('JOB').Value := DM.Q_DEPART.FieldByName('ID_DEPARTMENTS').Value;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            DM.Q_DEPS.Refresh;
            ComboBox9.ItemIndex := -1;
            gr_empl.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
    end
    else ShowMessage('Вы не указали должность!');
end;


//
// Удаление отдела у сотрудника
//
procedure Tmain.BitBtn17Click(Sender: TObject);
begin
      if MessageDlg('Вы уверены, что хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          DM.Ora_SQL.SQL.Clear;

          DM.Ora_SQL.SQL.Add('DELETE FROM EMPLOYEES_DEPARTMENTS WHERE ID_EMPLOYEES=:EMPL AND ID_DEPARTMENTS=:JOB');
          DM.Ora_SQL.ParamByName('EMPL').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').Value;
          DM.Ora_SQL.ParamByName('JOB').Value := DM.Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            DM.Q_DEPS.Refresh;
            gr_empl.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
end;


//
// Добавление должности к сотруднику
//
procedure Tmain.BitBtn18Click(Sender: TObject);
begin
    if (ComboBox5.Text <> '') then
    begin
          DM.Ora_SQL.SQL.Clear;

          DM.Q_TITLES.Locate('NAME',ComboBox5.Text,[]);
          DM.Ora_SQL.SQL.Add('INSERT INTO EMPLOYEES_JOB_TITLES VALUES(:EMPL,:JOB,'+IntToStr(dm.id_office)+',sysdate)');
          DM.Ora_SQL.ParamByName('EMPL').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').Value;
          DM.Ora_SQL.ParamByName('JOB').Value := DM.Q_TITLES.FieldByName('ID_JOB_TITLES').Value;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            DM.Q_JOBS.Refresh;
            ComboBox5.ItemIndex := -1;
            gr_empl.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
    end
    else ShowMessage('Вы не указали должность!');
end;


//
// Удаление должности у сотрудника
//
procedure Tmain.BitBtn19Click(Sender: TObject);
begin
      if MessageDlg('Вы уверены, что хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          DM.Ora_SQL.SQL.Clear;

          DM.Ora_SQL.SQL.Add('DELETE FROM EMPLOYEES_JOB_TITLES WHERE ID_EMPLOYEES=:EMPL AND ID_JOB_TITLES=:JOB');
          DM.Ora_SQL.ParamByName('EMPL').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').Value;
          DM.Ora_SQL.ParamByName('JOB').Value := DM.Q_JOBS.FieldByName('ID_JOB_TITLES').Value;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            DM.Q_JOBS.Refresh;
            gr_empl.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
end;


//
// Печать списка штата
//
procedure Tmain.BitBtn20Click(Sender: TObject);
begin
  try
    // Открытие вспомогательных таблиц для печати списка штата
    DM.DEPS_EMPL.SQL.Clear;
    DM.DEPS_EMPL.SQL.Add('SELECT E.FIO, E.ID_CLIENTS, E.STAFF FROM clients E WHERE (e.ID_OFFICE='+IntToStr(dm.id_office)+' or 0='+IntToStr(dm.id_office)+') and E.ID_clients IN (SELECT ED.ID_EMPLOYEES FROM EMPLOYEES_DEPARTMENTS ED WHERE ED.ID_DEPARTMENTS = :ID_DEPARTMENTS) ORDER BY E.FIO');
    DM.DEPS_EMPL.Open;

    DM.JOBS_EMPL.SQL.Clear;
    DM.JOBS_EMPL.SQL.Add('SELECT EJ.*, J.NAME FROM BOOKS_JOB_TITLES J, EMPLOYEES_JOB_TITLES EJ WHERE EJ.ID_JOB_TITLES = J.ID_JOB_TITLES AND EJ.ID_EMPLOYEES =:ID_CLIENTS');
    DM.JOBS_EMPL.Open;

    frxReport1.LoadFromFile(main.path+'raports\staff.fr3');
    frxReport1.ShowReport;

    DM.DEPS_EMPL.Close;
    DM.JOBS_EMPL.Close;
    gr_empl.SetFocus;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


//
// Печать карточки сотрудника
//
procedure Tmain.BitBtn2Click(Sender: TObject);
begin
  try
    DM.Q_EMPL_VIEW.Close;
    DM.Q_EMPL_VIEW.SQL.Clear;
    DM.Q_EMPL_VIEW.SQL.Add('SELECT * FROM CLIENTS WHERE ID_CLIENTS=:ID');
    DM.Q_EMPL_VIEW.ParamByName('ID').Value := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
    DM.Q_EMPL_VIEW.Open;

    frxReport1.LoadFromFile(main.path+'raports\empl_card.fr3');
    frxReport1.ShowReport;
    gr_empl.SetFocus;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


//
// Печать штрих-кода сотрудника
//
procedure Tmain.BitBtn1Click(Sender: TObject);
begin
  try
    frxReport1.LoadFromFile(main.path+'raports\empl_codes.fr3');
    frxReport1.ShowReport;
    gr_empl.SetFocus;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
//  Быстрые поиски по кодам CTRL+F2
//
procedure Tmain.seach_kodExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then ComboBox12.SetFocus;
  if (PageControl1.TabIndex = 1) then Edit5.SetFocus;
  if (PageControl1.TabIndex = 2) then Edit6.SetFocus;
end;


//
//  Быстрые поиски по фималиям CTRL+F3
//
procedure Tmain.search_nickExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then Edit2.SetFocus;
  if (PageControl1.TabIndex = 2) then Edit7.SetFocus;
end;


//
//  Вызов окна с фильтром по горячей кнопке
//
procedure Tmain.fast_filterExecute(Sender: TObject);
begin
  if (PageControl1.TabIndex = 0) then
    cxClientView.Filtering.RunCustomizeDialog(cxClientView.Controller.FocusedColumn);
  if (PageControl1.TabIndex = 2) then
    gr_empl_v.Filtering.RunCustomizeDialog(gr_empl_v.Controller.FocusedColumn);
end;


//
//  Поиск по группе
//
procedure Tmain.N41Click(Sender: TObject);
var group_: String;
begin
  group_ := cxClientView.DataController.DataSet.FieldByName('GROUP_NAME').AsString;
  filtr_off.Execute;
  cxClientView.DataController.Filter.Clear;
  cxClientViewGROUP_NAME.DataBinding.AddToFilter(nil, foLike, group_);
  cxClientView.DataController.Filter.Active := True;
end;



procedure Tmain.aClearFilterExecute(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) then cxClientView.DataController.Filter.Clear;
  if (PageControl1.ActivePageIndex = 2) then gr_empl_v.DataController.Filter.Clear;
end;

procedure Tmain.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    filtr_on.Execute;
end;

procedure Tmain.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    filtr_on.Execute;
end;


//
//  Скидки
//
procedure Tmain.mSalesClick(Sender: TObject);
begin
  try
    frmClientSales := TfrmClientSales.Create(Application);
    frmClientSales.id_client      := cxClientView.DataController.DataSet.FieldByName('id_clients').AsInteger;
    frmClientSales.id_group       := cxClientView.DataController.DataSet.FieldByName('ID_CLIENTS_GROUPS').AsInteger;
    frmClientSales.Label2.Caption := cxClientView.DataController.DataSet.FieldByName('NICK').AsString + ', ' + cxClientView.DataController.DataSet.FieldByName('FIO').AsString;
    frmClientSales.Label3.Caption := cxClientView.DataController.DataSet.FieldByName('GROUP_NAME').AsString;
    if (cxClientView.DataController.DataSet.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 2) then frmClientSales.BitBtnCopy.Enabled := true else frmClientSales.BitBtnCopy.Enabled := false;
    frmClientSales.ShowModal;
    TOraQuery(cxClientView.DataController.DataSet).RefreshRecord;
  finally
    frmClientSales.Free;
  end
end;


//
//  Прячем пункты меню
//
procedure Tmain.PopupMenu2Popup(Sender: TObject);
begin
  mSales.Visible := addit_;
end;




procedure Tmain.bbSyncCLientsLoadClick(Sender: TObject);
var F_CSV: TextFile;
    proc_text: string;
    rc: integer;
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
      dm.Q_SQL.close;
      dm.Q_SQL.sql.Clear;
      dm.Q_SQL.sql.Add('Alter session set NLS_NUMERIC_CHARACTERS=''.,''');
      dm.Q_SQL.Execute;


      rc := 0;
      try
        while not Eof(F_CSV) do
        begin
          ReadLn(F_CSV, proc_text);
          rc := rc + 1;
          if (trim(proc_text) <> '') then
          begin
            with dm.Q_SQL do
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

      dm.Q_SQL.close;
      dm.Q_SQL.sql.Clear;
      dm.Q_SQL.sql.Add('begin creator.sync_local_data.SYNC_CLIENTS_save; end;');
      dm.Q_SQL.Execute;
      dm.Q_SQL.close;

      Refresh.Execute;
      MessageBox (Handle,'Файл импортирован успешно.', 'Результат', MB_ICONINFORMATION);

    finally
      pnl_msg.Free;
      screen.cursor := crDefault;
      CloseFile(F_CSV);
      DM.OraSession1.Commit;
    end;
  end;
end;

procedure Tmain.bbSyncClientsClick(Sender: TObject);
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

    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    AssignFile(F_CSV, path+ '\OUT\'+IntToStr(DM.id_office)+'_export_clients.sql');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';
    dm.Q_SQL.close;
    dm.Q_SQL.sql.Clear;
    dm.Q_SQL.sql.Add(sql_str);
    dm.Q_SQL.Execute;

    sql_str := 'begin sync_pkg.make_clients_groups(:p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_clients_list(:p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, 0);

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);
    pnl_msg.free;
    ShellExecute(Handle, nil, PChar(path+'\OUT'), nil, nil, SW_RESTORE);
  end;
end;



//
//
// Импорт / экспорт номенклатуры
//
    procedure Tmain.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
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
