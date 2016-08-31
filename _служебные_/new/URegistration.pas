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
  cxClasses, cxControls, cxGridCustomView, cxGrid, MemDS, DBAccess, Ora;

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
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    GroupBox6: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    Edit9: TEdit;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox10: TComboBox;
    Edit8: TEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    BitBtn20: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel8: TPanel;
    Panel12: TPanel;
    gr_empl: TcxGrid;
    gr_empl_v: TcxGridDBTableView;
    gr_empl_vBRIEF: TcxGridDBColumn;
    row_empl_NICK: TcxGridDBColumn;
    row_empl_FIO: TcxGridDBColumn;
    _row_empl_CCODE: TcxGridDBColumn;
    _row_empl_NN: TcxGridDBColumn;
    _row_empl_ID_CLIENTS: TcxGridDBColumn;
    gr_empl_vACTIVE: TcxGridDBColumn;
    gr_empl_vSTAFF: TcxGridDBColumn;
    gr_empl_vLOGIN: TcxGridDBColumn;
    gr_empl_vCOUNT: TcxGridDBColumn;
    gr_empl_vID_OFFICE: TcxGridDBColumn;
    gr_empl_l: TcxGridLevel;
    Panel13: TPanel;
    DBGrid6: TDBGrid;
    ComboBox9: TComboBox;
    BitBtn14: TBitBtn;
    BitBtn17: TBitBtn;
    DBGrid5: TDBGrid;
    ComboBox5: TComboBox;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
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
    Q_CLIENTSINN: TStringField;
    Q_CLIENT_VIEW: TOraQuery;
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
    Q_CLIENT_VIEWREG_TYPE_NAME: TStringField;
    Q_CLIENT_VIEWGROUP_NAME: TStringField;
    Q_CLIENT_VIEWTTYPE_NAME: TStringField;
    Q_CLIENT_VIEWREGION_NAME: TStringField;
    Q_CLIENT_VIEWADVERT: TStringField;
    Q_CLIENT_VIEWCITY: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    Q_CLIENT_VIEW_DS: TOraDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_office: integer;
    print_, del_, ed_, addit_: boolean;  // это на потом
    function MainFormShow : boolean;
  end;

var
  frmRegistration: TfrmRegistration;

implementation

{$R *.dfm}

uses umain, UDM, uEditRegistration;

procedure TfrmRegistration.FormShow(Sender: TObject);
begin
   dm.cxImgLst.GetBitmap(32, btnRefresh.largeGlyph);
   dm.cxImgLst.GetBitmap(4, btnAdd.largeGlyph);
   dm.cxImgLst.GetBitmap(5, btnedit.largeGlyph);
   dm.cxImgLst.GetBitmap(6, btnDelete.largeGlyph);
   dm.cxImgLst.GetBitmap(20, btnHelp.largeGlyph);
   dm.cxImgLst.GetBitmap(21, btnExit.largeGlyph);


  //здесь нада разбираться
  imgOffice.Enabled := (id_office = 1);

  cxClientViewBRIEF.Visible := not (GetOfficeID = id_office);
  gr_empl_vBRIEF.Visible    := cxClientViewBRIEF.Visible;
  CRDBGrid4.Columns.Items[0].Visible :=  cxClientViewBRIEF.Visible;
  DBGrid2.Columns.Items[0].Visible   :=  cxClientViewBRIEF.Visible;

  if (imgOffice.Enabled) then
  begin
      try
        selq.Close;
        selq.SQL.Clear;
        selq.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        selq.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      imgOffice.Properties.OnChange := nil;
      FillImgComboCxItm(selq, imgOffice, 'Все...');
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

 // bbCopyToOld.Enabled   := ed_;
 // bbCopyClient.Enabled  := ed_;
 // btnFileExport.Enabled := ed_;  //надо кнопку сервис делать, пока не понял как добавить выпад.список

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

  //bbSyncCLientsLoad.Enabled := (ed_ and (id_office = 1));
  //bbSyncClients.Enabled := (ed_ and (id_office > 1));     //не смотрел

  DBComboBoxEh2.Value := 1;
  PageControl1.ActivePageIndex := 0;

  ComboBox12.Items.Clear;
  selq.Close;
  selq.SQL.Clear;
  selq.SQL.Add('select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')) as kkk from clients ');
  selq.SQL.Add('where (ID_OFFICE='+IntToStr(DM.id_office)+' or 0='+IntToStr(DM.id_office)+') ');
  selq.SQL.Add('and INSTR(trim(nick), '' '') > 0');
  selq.Open;
  selq.First;
  while not selq.Eof do
  begin
      ComboBox12.Items.Add(selq.FieldByName('kkk').AsString);
      selq.Next;
  end;
  selq.Close;
end;

//меняю офис
procedure TfrmRegistration.imgOfficePropertiesChange(Sender: TObject);
begin
 intDefOffice := imgOffice.EditValue;
  //DM.id_office := imgOffice.EditValue; //в перем id_office пишу текущ.знач комбобокса
 Refresh.Execute;  //обновить таблицу
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

procedure TfrmRegistration.RefreshExecute(Sender: TObject);
begin
 Q_CLIENTS.Close;
 Q_CLIENTS.open;
 Q_CLIENTS.Refresh;
 Q_CLIENTS.Close;
 cxGrid1.SetFocus;
 { Q_GROUPS.Refresh;
  Q_G_CL.Refresh;
  Q_EMPL.Refresh;
  Q_DEPS.Refresh;
  Q_JOBS.Refresh;
  Q_ADVERT.Refresh;
  Q_TYPES.Refresh;
  Q_REGIONS.Refresh;
  Q_TITLES.Refresh;
  Q_DEPART.Refresh;
  if Q_SEARCH.Active = true then Q_SEARCH.Refresh   }
end;

//добавить
procedure TfrmRegistration.btnAddClick(Sender: TObject);
begin
  frmEditRegistration := TfrmEditRegistration.Create(Application);
  try
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
    frmEditRegistration.Memo2.Lines.Clear;
    frmEditRegistration.Memo3.Lines.Clear;
    frmEditRegistration.Memo4.Lines.Clear;
    frmEditRegistration.Memo5.Lines.Clear;
    frmEditRegistration.Memo6.Lines.Clear;
    frmEditRegistration.Memo7.Lines.Clear;

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
    frmEditRegistration.btnClone.Enabled := addit_;
    frmEditRegistration.showmodal;

    frmEditRegistration.chbRuleSite.Checked := true;
    frmEditRegistration.chbRulePics.Checked := true;
    frmEditRegistration.chbRulePrice.Checked := true;
    frmEditRegistration.chbRuleOrder.Checked := true;
  end;
 {
  // Добавление группы
  if (PageControl1.TabIndex = 1) then
  begin
    frmEditRegistration.Edit1.Text := '';
    frmEditRegistration.Memo1.Lines.Clear;

    frmEditRegistration.ttype := 1;
    frmEditRegistration.showmodal;
  end;

  // Добавление сотрудника
  if (PageControl1.TabIndex = 2) then
  begin
    frmEditRegistration.ComboBox1.ItemIndex := -1;
    frmEditRegistration.LabeledEdit1.Text := '';
    frmEditRegistration.LabeledEdit2.Text := '';
    frmEditRegistration.LabeledEdit5.Text := '';
    frmEditRegistration.LabeledEdit6.Text := '0';
    frmEditRegistration.LabeledEdit7.Text := '0';
    frmEditRegistration.Edit1.Text := '';
    frmEditRegistration.Edit2.Text := '0,0,0';

    frmEditRegistration.Memo1.Lines.Clear;
    frmEditRegistration.Memo2.Lines.Clear;
    frmEditRegistration.Memo3.Lines.Clear;
    frmEditRegistration.Memo4.Lines.Clear;
    frmEditRegistration.Memo5.Lines.Clear;

    frmEditRegistration.CheckBox1.Checked := false;
    frmEditRegistration.DateTimePicker1.DateTime := (Now);
    frmEditRegistration.ttype := 1;
    frmEditRegistration.SpeedButton1Click(self);
    frmEditRegistration.SpeedButton1.Visible := false;

    frmEditRegistration.DBText1.Visible := false;
    frmEditRegistration.DBText3.Visible := false;
    frmEditRegistration.DBText4.Visible := false;
    frmEditRegistration.DBText5.Visible := false;
  end;                }

  finally
  frmEditRegistration.Free;
  end;
end;

// изменить
procedure TfrmRegistration.btnEditClick(Sender: TObject);
var ind: integer;
begin
  // Редактирование клиента
  if (PageControl1.TabIndex = 0) then
  begin
    if ({DM.id_office} GetOfficeID <> Q_CLIENTS.FieldByName('ID_OFFICE').AsInteger) then
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
        ind := frmEditRegistration.ComboBox2.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
        frmEditRegistration.ComboBox2.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox3.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
        frmEditRegistration.ComboBox3.ItemIndex := ind;
        ind := frmEditRegistration.ComboBox4.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
        frmEditRegistration.ComboBox4.ItemIndex := ind;

        frmEditRegistration.cdsCity.Filter    := 'id_region='+Q_CLIENT_VIEW.FieldByName('REGION').AsString;
        frmEditRegistration.cdsCity.Filtered  := true;
        frmEditRegistration.icbCity.EditValue := Q_CLIENT_VIEW.FieldByName('id_city').AsInteger;

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
          //edits.DBComboBoxEh1.ItemIndex := (GetOfficeID - DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger);
          frmEditRegistration.DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;
          frmEditRegistration.DBComboBoxEh1.ReadOnly := (GetOfficeID > 1);
        end;

        frmEditRegistration.Edit1.Text := Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

        frmEditRegistration.Memo1.Text := Q_CLIENT_VIEW.FieldByName('BANK').AsString;
        frmEditRegistration.Memo2.Text := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
        frmEditRegistration.Memo3.Text := Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
        frmEditRegistration.Memo4.Text := Q_CLIENT_VIEW.FieldByName('ADDRESS').AsString;
        frmEditRegistration.Memo5.Text := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
        frmEditRegistration.Memo6.Text := Q_CLIENT_VIEW.FieldByName('PHONE').AsString;
        frmEditRegistration.Memo7.Text := Q_CLIENT_VIEW.FieldByName('INFO').AsString;

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
      end;
    end
    else ShowMessage('Нет данных для редактирования!');
  end;

  // Редактирование группы
 { if (PageControl1.TabIndex = 1) then
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

      edits_e.ttype := 2;
      edits_e.SpeedButton1.Visible := true;

      edits_e.DBText1.Visible := true;
      edits_e.DBText3.Visible := true;
      edits_e.DBText4.Visible := true;
      edits_e.DBText5.Visible := true;

      edits_e.showmodal;
    end
    else ShowMessage('Нет данных для редактирования!');
  end; }
end;

procedure TfrmRegistration.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 SaveFormState(frmRegistration);  //полож.окна
  frmRegistration := nil;
 Action := caFree;
end;





procedure TfrmRegistration.FormCreate(Sender: TObject);
begin
   DateTimePicker1.Date := Date;
  DateTimePicker2.Date := Date;
  DateTimePicker3.Date := Date;
  DateTimePicker4.Date := Date;
  DateTimePicker1.Checked := false;
  DateTimePicker2.Checked := false;
  DateTimePicker3.Checked := false;
  DateTimePicker4.Checked := false;
end;

end.
