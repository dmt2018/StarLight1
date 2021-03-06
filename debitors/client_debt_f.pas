unit client_debt_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ActnList,
  jpeg, DBCtrls, Mask, DB, StrUtils,
  Registry, Menus, Ora, frxClass, cxPC, cxControls, cxLookAndFeelPainters,
  cxButtons, cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit, cxStyles, dxBar,
  ImgList, cxGraphics, dxBarExtItems, cxClasses, cxCheckBox, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  DBAccess, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxSplitter, cxCalendar, cxGridExportLink,
  cxSpinEdit, cxLabel, cxImage, cxMaskEdit, cxDropDownEdit, cxBarEditItem, PI_library, Clipbrd,
  cxImageComboBox, PI_Library_reg;

type
  Tclient_debt = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    aCtrlEnter: TAction;
    aFilterOn: TAction;
    aFilterOff: TAction;
    aSwtchTab: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ActionList2: TActionList;
    SelectAll: TAction;
    SaveAll: TAction;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    pc_debt_card: TcxPageControl;
    tsh_one: TcxTabSheet;
    tsh_group: TcxTabSheet;
    bm_debt: TdxBarManager;
    bm_debtBar1: TdxBar;
    bm_debtBar2: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cxImageList1: TcxImageList;
    Panel1: TPanel;
    Panel9: TPanel;
    bdc_main: TdxBarDockControl;
    bdc_legend: TdxBarDockControl;
    cxStyleRepository1: TcxStyleRepository;
    st_editor: TcxStyle;
    st_mark: TcxStyle;
    cu_usd: TcxCurrencyEdit;
    cu_eur: TcxCurrencyEdit;
    cu_usdeur: TcxCurrencyEdit;
    cu_eurusd: TcxCurrencyEdit;
    aRefresh: TAction;
    btn_course: TcxButton;
    btb_exit: TdxBarLargeButton;
    CDS_cl_group: TOraQuery;
    DS_cl_group: TOraDataSource;
    CDS_cl_groupNICK: TStringField;
    CDS_cl_groupFIO: TStringField;
    CDS_cl_groupDOSTAVKA: TIntegerField;
    CDS_cl_groupID_DEBETORS: TFloatField;
    CDS_cl_groupID_CLIENTS: TIntegerField;
    CDS_cl_groupLAST_DDATE: TDateTimeField;
    CDS_cl_groupSTATE: TIntegerField;
    CDS_cl_groupBEZNAL: TIntegerField;
    CDS_cl_groupMARK: TIntegerField;
    CDS_cl_groupDEBET: TFloatField;
    CDS_cl_groupCREDIT_DAYS: TIntegerField;
    CDS_cl_groupINFO: TStringField;
    CDS_cl_groupDDATE: TDateTimeField;
    CDS_cl_groupRUBL: TIntegerField;
    CDS_cl_groupCHART: TFloatField;
    CDS_cl_groupBLOCK1: TIntegerField;
    CDS_cl_groupPHONE: TStringField;
    CDS_cl_groupREGION: TIntegerField;
    CDS_cl_groupGROUP_NAME: TStringField;
    CDS_cl_groupID_CLIENTS_GROUPS: TIntegerField;
    CDS_cl_groupKKK: TStringField;
    CDS_cl_groupMARK_KOL: TFloatField;
    CDS_cl_groupMAX_DATE: TDateTimeField;
    CDS_cl_groupCHART2: TFloatField;
    CDS_cl_groupIS_LOCK: TIntegerField;
    CDS_cl_groupLOCK_FOR: TIntegerField;
    CDS_cl_groupSALES: TFloatField;
    CDS_cl_groupWW: TStringField;
    CDS_CLIENT_DEBT: TOraQuery;
    DS_CLIENT_DEBT: TOraDataSource;
    CDS_CLIENT_DEBT_ALL: TOraQuery;
    DS_CLIENT_DEBT_ALL: TOraDataSource;
    st_inactive: TcxStyle;
    gr_deps: TcxGrid;
    gr_deps_v: TcxGridDBTableView;
    gr_deps_l: TcxGridLevel;
    _gr_deps_vNN: TcxGridDBColumn;
    _gr_deps_vID_CLIENT_DEBT: TcxGridDBColumn;
    _gr_deps_vID_DEBETORS: TcxGridDBColumn;
    _gr_deps_vDEBET: TcxGridDBColumn;
    gr_deps_vRATE: TcxGridDBColumn;
    gr_deps_vD_DATE: TcxGridDBColumn;
    gr_deps_vR_DDATE: TcxGridDBColumn;
    _gr_deps_vOPERATION: TcxGridDBColumn;
    gr_deps_vINVOICE: TcxGridDBColumn;
    gr_deps_vSUMM: TcxGridDBColumn;
    gr_deps_vINFO: TcxGridDBColumn;
    gr_deps_vIN_RUB: TcxGridDBColumn;
    gr_deps_vT_SHORT: TcxGridDBColumn;
    _gr_deps_vT_LONG: TcxGridDBColumn;
    _gr_deps_vT_TYPE: TcxGridDBColumn;
    gr_deps_vNICK: TcxGridDBColumn;
    gr_deps_vCHART: TcxGridDBColumn;
    _gr_deps_vACTIVE: TcxGridDBColumn;
    gr_deps_vDISCOUNT: TcxGridDBColumn;
    st_editor2: TcxStyle;
    gr_deps_all: TcxGrid;
    gr_deps_all_v: TcxGridDBTableView;
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
    gr_deps_all_l: TcxGridLevel;
    gr_debetors: TcxGrid;
    gr_debetors_v: TcxGridDBTableView;
    gr_debetors_vIS_LOCK: TcxGridDBColumn;
    gr_debetors_vSALES: TcxGridDBColumn;
    gr_debetors_vNICK: TcxGridDBColumn;
    gr_debetors_vFIO: TcxGridDBColumn;
    gr_debetors_vGROUP_NAME: TcxGridDBColumn;
    gr_debetors_vBEZNAL: TcxGridDBColumn;
    gr_debetors_vSTATE: TcxGridDBColumn;
    gr_debetors_vRUBL: TcxGridDBColumn;
    gr_debetors_vCHART2: TcxGridDBColumn;
    gr_debetors_vCREDIT_DAYS: TcxGridDBColumn;
    gr_debetors_vCHART: TcxGridDBColumn;
    gr_debetors_vLOCK_FOR: TcxGridDBColumn;
    gr_debetors_vPHONE: TcxGridDBColumn;
    gr_debetors_vINFO: TcxGridDBColumn;
    _gr_debetors_vDDATE: TcxGridDBColumn;
    _gr_debetors_vDOSTAVKA: TcxGridDBColumn;
    _gr_debetors_vID_DEBETORS: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS: TcxGridDBColumn;
    _gr_debetors_vLAST_DDATE: TcxGridDBColumn;
    _gr_debetors_vDEBET: TcxGridDBColumn;
    _gr_debetors_vREGION: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS_GROUPS: TcxGridDBColumn;
    _gr_debetors_vKKK: TcxGridDBColumn;
    _gr_debetors_vWW: TcxGridDBColumn;
    _gr_debetors_vBLOCK1: TcxGridDBColumn;
    _gr_debetors_vMARK: TcxGridDBColumn;
    gr_debetors_l: TcxGridLevel;
    aSwtchView: TAction;
    dxBarStatic5: TdxBarStatic;
    aEsc: TAction;
    btn_statistic: TdxBarLargeButton;
    gr_deps_vDISC_PROC: TcxGridDBColumn;
    gr_deps_all_vDISC_PROC: TcxGridDBColumn;
    gr_deps_vIS_LOCK: TcxGridDBColumn;
    gr_deps_vLOCK_FOR: TcxGridDBColumn;
    dxBarStatic6: TdxBarStatic;
    gr_deps_vDOLG: TcxGridDBColumn;
    st_dolg: TcxStyle;
    gr_debetors_vMARK_KOL: TcxGridDBColumn;
    gr_debetors_vMAX_DATE: TcxGridDBColumn;
    CDS_cl_groupLOCK_CLIENT: TStringField;
    gr_debetors_vLOCK_CLIENT: TcxGridDBColumn;
    gr_deps_all_vIS_LOCK: TcxGridDBColumn;
    gr_deps_all_vLOCK_FOR: TcxGridDBColumn;
    gr_deps_all_vDOLG: TcxGridDBColumn;
    gr_deps_vITOG_DISCOUNT: TcxGridDBColumn;
    gr_deps_all_vITOG_DISCOUNT: TcxGridDBColumn;
    f_begin: TcxDateEdit;
    f_end: TcxDateEdit;
    chb_filter: TCheckBox;
    cxButton1: TcxButton;
    gr_deps_vRD_DATE: TcxGridDBColumn;
    RadioGroup1: TRadioGroup;
    chPrintAll: TcxBarEditItem;
    aShowCourse: TMenuItem;
    N4: TMenuItem;
    OraQuery1: TOraQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField6: TFloatField;
    StringField2: TStringField;
    FloatField7: TFloatField;
    IntegerField2: TIntegerField;
    FloatField8: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    FloatField9: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    cb_order: TcxComboBox;
    Label1: TLabel;
    N5: TMenuItem;
    Rjgb1: TMenuItem;
    dxBarSubItem1: TdxBarSubItem;
    btn_rates: TdxBarLargeButton;
    CDS_cl_groupID_DEBETORS_: TFloatField;
    aDebetor: TAction;
    aGroup: TAction;
    CDS_CLIENT_DEBTNN: TFloatField;
    CDS_CLIENT_DEBTID_CLIENT_DEBT: TFloatField;
    CDS_CLIENT_DEBTID_DEBETORS: TFloatField;
    CDS_CLIENT_DEBTDEBET: TFloatField;
    CDS_CLIENT_DEBTRATE: TFloatField;
    CDS_CLIENT_DEBTD_DATE: TDateTimeField;
    CDS_CLIENT_DEBTR_DDATE: TDateTimeField;
    CDS_CLIENT_DEBTOPERATION: TFloatField;
    CDS_CLIENT_DEBTINVOICE: TStringField;
    CDS_CLIENT_DEBTSUMM: TFloatField;
    CDS_CLIENT_DEBTINFO: TStringField;
    CDS_CLIENT_DEBTDISCOUNT: TFloatField;
    CDS_CLIENT_DEBTDISC_PROC: TFloatField;
    CDS_CLIENT_DEBTIN_RUB: TFloatField;
    CDS_CLIENT_DEBTT_SHORT: TStringField;
    CDS_CLIENT_DEBTT_LONG: TStringField;
    CDS_CLIENT_DEBTT_TYPE: TFloatField;
    CDS_CLIENT_DEBTNICK: TStringField;
    CDS_CLIENT_DEBTIS_LOCK: TFloatField;
    CDS_CLIENT_DEBTLOCK_FOR: TFloatField;
    CDS_CLIENT_DEBTDOLG: TFloatField;
    CDS_CLIENT_DEBTITOG_DISCOUNT: TFloatField;
    CDS_CLIENT_DEBTCHART: TFloatField;
    CDS_CLIENT_DEBTACTIVE: TFloatField;
    CDS_CLIENT_DEBT_ALLNN: TFloatField;
    CDS_CLIENT_DEBT_ALLID_CLIENT_DEBT: TFloatField;
    CDS_CLIENT_DEBT_ALLID_DEBETORS: TFloatField;
    CDS_CLIENT_DEBT_ALLDEBET: TFloatField;
    CDS_CLIENT_DEBT_ALLRATE: TFloatField;
    CDS_CLIENT_DEBT_ALLD_DATE: TDateTimeField;
    CDS_CLIENT_DEBT_ALLR_DDATE: TDateTimeField;
    CDS_CLIENT_DEBT_ALLOPERATION: TFloatField;
    CDS_CLIENT_DEBT_ALLINVOICE: TStringField;
    CDS_CLIENT_DEBT_ALLSUMM: TFloatField;
    CDS_CLIENT_DEBT_ALLINFO: TStringField;
    CDS_CLIENT_DEBT_ALLDISCOUNT: TFloatField;
    CDS_CLIENT_DEBT_ALLDISC_PROC: TFloatField;
    CDS_CLIENT_DEBT_ALLIN_RUB: TFloatField;
    CDS_CLIENT_DEBT_ALLT_SHORT: TStringField;
    CDS_CLIENT_DEBT_ALLT_LONG: TStringField;
    CDS_CLIENT_DEBT_ALLT_TYPE: TFloatField;
    CDS_CLIENT_DEBT_ALLNICK: TStringField;
    CDS_CLIENT_DEBT_ALLIS_LOCK: TFloatField;
    CDS_CLIENT_DEBT_ALLLOCK_FOR: TFloatField;
    CDS_CLIENT_DEBT_ALLDOLG: TFloatField;
    CDS_CLIENT_DEBT_ALLITOG_DISCOUNT: TFloatField;
    CDS_CLIENT_DEBT_ALLCHART: TFloatField;
    CDS_CLIENT_DEBT_ALLACTIVE: TFloatField;
    CDS_CLIENT_DEBTID_OFFICE: TFloatField;
    CDS_CLIENT_DEBT_ALLID_OFFICE: TFloatField;
    mmSetDolg: TMenuItem;
    PopupMenu2: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    CDS_CLIENT_DEBTCORRECTOR: TStringField;
    CDS_CLIENT_DEBT_ALLCORRECTOR: TStringField;
    gr_deps_vID_OFFICE: TcxGridDBColumn;
    gr_deps_vCORRECTOR: TcxGridDBColumn;
    gr_deps_all_vID_OFFICE: TcxGridDBColumn;
    gr_deps_all_vCORRECTOR: TcxGridDBColumn;
    stOperator: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure aSwtchTabExecute(Sender: TObject);
    procedure SaveAllExecute(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure btn_statisticClick(Sender: TObject);
    procedure btn_courseClick(Sender: TObject);
    procedure btb_exitClick(Sender: TObject);
    procedure CDS_CLIENT_DEBTAfterPost(DataSet: TDataSet);
    procedure CDS_CLIENT_DEBT_ALLAfterPost(DataSet: TDataSet);
    procedure aRefreshExecute(Sender: TObject);
    procedure aSwtchViewExecute(Sender: TObject);
    procedure SelectAllExecute(Sender: TObject);
    procedure gr_deps_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gr_debetors_vIS_LOCKGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure gr_deps_all_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure gr_deps_vD_DATEGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure f_beginPropertiesChange(Sender: TObject);
    procedure f_beginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aShowCourseClick(Sender: TObject);
    procedure Rjgb1Click(Sender: TObject);
    procedure btn_ratesClick(Sender: TObject);
    procedure aDebetorExecute(Sender: TObject);
    procedure aGroupExecute(Sender: TObject);
    procedure CDS_cl_groupBeforeOpen(DataSet: TDataSet);
    procedure mmSetDolgClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    pnl_msg: TPanel;
    { Private declarations }
  public
    id_group_: integer;
    id_debetor_: integer;
    id: integer;
//    procedure onchange();
    { Public declarations }
  end;

var
  client_debt: Tclient_debt;

implementation

uses DataM, client_debt_edit_f, debetors_f, UStatistic;

{$R *.dfm}

//
// �������
//
procedure Tclient_debt.btb_exitClick(Sender: TObject);
begin
  Close;
end;

//
// ��������� ������
//
procedure Tclient_debt.btn_courseClick(Sender: TObject);
begin
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT * FROM CURR_ON_DAY');
  DM.Q_SQL.Open;
  cu_usd.EditValue    := DM.Q_SQL.FieldByName('SHEV_USD').Value;
  cu_eur.EditValue    := DM.Q_SQL.FieldByName('SHEV_EUR').Value;
  cu_usdeur.EditValue := DM.Q_SQL.FieldByName('SHEV_USD_EUR').Value;
  cu_eurusd.EditValue := DM.Q_SQL.FieldByName('SHEV_EUR_USD').Value;
  DM.Q_SQL.Close;

  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
end;


//
//  �� �������� �����
//
procedure Tclient_debt.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := debetors.path + 'ini/debetors_list_'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'DebetorsList1_';
  gr_deps_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  ASaveViewName := 'DebetorsList2_';
  gr_deps_all_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  CDS_CLIENT_DEBT.Close;
  CDS_CLIENT_DEBT_ALL.Close;
  CDS_cl_group.Close;
end;


//
//  �� �������� �����
//
procedure Tclient_debt.FormShow(Sender: TObject);
var AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
begin
try

  AOptions := [];
  AStoreKey     := debetors.path + 'ini/debetors_list_'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'DebetorsList1_';
  gr_deps_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  ASaveViewName := 'DebetorsList2_';
  gr_deps_all_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  pc_debt_card.ActivePageIndex := 0;

  aNew.Enabled        := DM.b_edit;
  aEdit.Enabled       := DM.b_edit;
  aDelete.Enabled     := DM.b_delete;
  SaveAll.Enabled     := DM.b_print;
  N6.Enabled          := DM.b_delete;
  N8.Enabled          := DM.b_edit;
  gr_deps_v.OptionsData.Editing := DM.b_edit;

  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'���� ��������� �������'));
  pnl_msg.Repaint;

//  f_begin.EditValue := Now();
//  f_end.EditValue := Now();

  CDS_cl_group.ParamByName('cl_group').AsInteger := id_group_;
  CDS_cl_group.Open;
  CDS_cl_group.Locate('id_debetors', id_debetor_, []);

  CDS_CLIENT_DEBT.ParamByName('ID_DEBETORS_').AsInteger := _gr_debetors_vID_DEBETORS.EditValue;
  CDS_CLIENT_DEBT.ParamByName('ID_GROUP_').AsInteger := 0; //_gr_debetors_vID_CLIENTS_GROUPS.EditValue;
  CDS_CLIENT_DEBT.ParamByName('DATE_BEGIN_').AsDate := f_begin.Date;
  CDS_CLIENT_DEBT.ParamByName('DATE_END_').AsDate := f_end.Date;
  if chb_filter.Checked then
     CDS_CLIENT_DEBT.ParamByName('d3_').AsInteger := 1
  else
     CDS_CLIENT_DEBT.ParamByName('d3_').AsInteger := 0;
  CDS_CLIENT_DEBT.ParamByName('d4_').AsInteger := 0;
  CDS_CLIENT_DEBT.ParamByName('v_office').AsInteger := DM.id_office;
  CDS_CLIENT_DEBT.ParamByName('CURSOR_').AsCursor;

  CDS_CLIENT_DEBT.Open;
  CDS_CLIENT_DEBT.Last;

//  chb_filter.Checked := false;

  if (id_group_ < 50) then
  begin
    tsh_group.Enabled   := false;
    gr_debetors.Enabled := false;
    pc_debt_card.ActivePageIndex := 0;
  end
  else
  begin
    CDS_CLIENT_DEBT_ALL.ParamByName('ID_DEBETORS_').AsInteger := _gr_debetors_vID_DEBETORS.EditValue;
    CDS_CLIENT_DEBT_ALL.ParamByName('ID_GROUP_').AsInteger := _gr_debetors_vID_CLIENTS_GROUPS.EditValue;
    CDS_CLIENT_DEBT_ALL.ParamByName('DATE_BEGIN_').AsDate := f_begin.Date;
    CDS_CLIENT_DEBT_ALL.ParamByName('DATE_END_').AsDate := f_end.Date;
    if chb_filter.Checked then
       CDS_CLIENT_DEBT_ALL.ParamByName('d3_').AsInteger := 1
    else
       CDS_CLIENT_DEBT_ALL.ParamByName('d3_').AsInteger := 0;
    CDS_CLIENT_DEBT_ALL.ParamByName('d4_').AsInteger := 0;
    CDS_CLIENT_DEBT_ALL.ParamByName('v_office').AsInteger := DM.id_office;
    CDS_CLIENT_DEBT_ALL.ParamByName('CURSOR_').AsCursor;

    CDS_CLIENT_DEBT_ALL.Open;
    CDS_CLIENT_DEBT_ALL.Last;
    pc_debt_card.ActivePageIndex := 1;
  end;

  btn_course.Click;
  pnl_msg.Free;

  if (id_group_ < 50) then
    gr_deps.SetFocus
  else
    gr_deps_all.SetFocus;

except
  on E: Exception do
  begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR);
  end;
end;

end;



procedure Tclient_debt.f_beginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    cxButton1Click(Sender);
end;

procedure Tclient_debt.f_beginPropertiesChange(Sender: TObject);
begin
  chb_filter.Checked := true;
end;

procedure Tclient_debt.CDS_CLIENT_DEBTAfterPost(DataSet: TDataSet);
var idd, ind2: integer;
begin
  idd  := CDS_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
  ind2 := CDS_CLIENT_DEBTID_DEBETORS.AsInteger;

  CDS_CLIENT_DEBT.Refresh;
//  gr_deps_v.DataController.LocateByKey(idd);
  CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',idd,[]);
end;

procedure Tclient_debt.CDS_CLIENT_DEBT_ALLAfterPost(DataSet: TDataSet);
var idd, ind2: integer;
begin
  idd  := CDS_CLIENT_DEBT_ALLID_CLIENT_DEBT.AsInteger;
  ind2 := CDS_CLIENT_DEBT_ALLID_DEBETORS.AsInteger;

  CDS_CLIENT_DEBT_ALL.Refresh;
//  gr_deps_all_v.DataController.LocateByKey(idd);
  CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',idd,[]);
end;


procedure Tclient_debt.CDS_cl_groupBeforeOpen(DataSet: TDataSet);
begin
  CDS_cl_group.ParamByName('v_office').AsInteger := DM.id_office;
end;

//
//  ��������� �������
//
procedure Tclient_debt.cxButton1Click(Sender: TObject);
var idd1, idd2: integer;
begin
  if (CDS_CLIENT_DEBT.Active) then
    idd1  := CDS_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
  if (CDS_CLIENT_DEBT_ALL.Active) then
    idd2 := CDS_CLIENT_DEBT_ALLID_CLIENT_DEBT.AsInteger;

  f_begin.PostEditValue;
  f_end.PostEditValue;

  if (chb_filter.Checked = true) then
  begin
    if (f_begin.EditValue > f_end.EditValue) then
       MessageBox(Handle, '���������� ����� ��������� ���� ���� ������ ��������!', '��������', MB_ICONWARNING)
    else
    begin
      CDS_CLIENT_DEBT.ParamByName('DATE_BEGIN_').AsDate := f_begin.Date;
      CDS_CLIENT_DEBT.ParamByName('DATE_END_').AsDate := f_end.Date;

      if (CDS_CLIENT_DEBT_ALL.Active) then
      begin
        CDS_CLIENT_DEBT_ALL.ParamByName('DATE_BEGIN_').AsDate := f_begin.Date;
        CDS_CLIENT_DEBT_ALL.ParamByName('DATE_END_').AsDate := f_end.Date;
      end;

      if (RadioGroup1.ItemIndex = 0) then
      begin
        CDS_CLIENT_DEBT.ParamByName('d3_').AsInteger := 1;
        CDS_CLIENT_DEBT.ParamByName('d4_').AsInteger := 0;
        if (CDS_CLIENT_DEBT_ALL.Active) then
        begin
          CDS_CLIENT_DEBT_ALL.ParamByName('d3_').AsInteger := 1;
          CDS_CLIENT_DEBT_ALL.ParamByName('d4_').AsInteger := 0;
        end;
      end
      else
      begin
        CDS_CLIENT_DEBT.ParamByName('d3_').AsInteger := 0;
        CDS_CLIENT_DEBT.ParamByName('d4_').AsInteger := 1;
        if (CDS_CLIENT_DEBT_ALL.Active) then
        begin
        CDS_CLIENT_DEBT_ALL.ParamByName('d3_').AsInteger := 0;
        CDS_CLIENT_DEBT_ALL.ParamByName('d4_').AsInteger := 1;
        end;
      end;
    end;
  end
  else
  begin
      CDS_CLIENT_DEBT.ParamByName('d3_').AsInteger := 0;
      CDS_CLIENT_DEBT.ParamByName('d4_').AsInteger := 0;
      if (CDS_CLIENT_DEBT_ALL.Active) then
      begin
        CDS_CLIENT_DEBT_ALL.ParamByName('d3_').AsInteger := 0;
        CDS_CLIENT_DEBT_ALL.ParamByName('d4_').AsInteger := 0;
      end;
  end;

  CDS_CLIENT_DEBT.Close;
  CDS_CLIENT_DEBT.Open;
  if not CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',idd1,[]) then CDS_CLIENT_DEBT.Last;
//  if not gr_deps_v.DataController.LocateByKey(idd1) then CDS_CLIENT_DEBT.Last;

  if (CDS_CLIENT_DEBT_ALL.Active) then
  begin
    CDS_CLIENT_DEBT_ALL.Refresh;
    if not CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',idd2,[]) then CDS_CLIENT_DEBT_ALL.Last;
//    if not gr_deps_all_v.DataController.LocateByKey(idd2) then CDS_CLIENT_DEBT_ALL.Last;
  end;

  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
  
end;

//
//  ������� ������
//
procedure Tclient_debt.aRefreshExecute(Sender: TObject);
var idd,id1,id2: integer;
begin
  idd := CDS_cl_groupID_DEBETORS.AsInteger;
  id1 := CDS_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;

  CDS_cl_group.Refresh;
  CDS_cl_group.Locate('id_debetors', idd, []);

  CDS_CLIENT_DEBT.Refresh;
  CDS_CLIENT_DEBT.Last;

  if (CDS_CLIENT_DEBT_ALL.Active = true) then
  begin
    CDS_CLIENT_DEBT_ALL.Refresh;
    CDS_CLIENT_DEBT_ALL.Last;
  end;

  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
end;


//
// �������� ������
//
procedure Tclient_debt.BitBtn12Click(Sender: TObject);
var cds: TOraQuery;
    idd, idd2: integer;
    sql: string;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;

  if (cds.FieldByName('ID_CLIENT_DEBT').AsInteger > 0) then
  begin
      if MessageDlg('�� ������������� ������ ������� ������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        try
          DM.Ora_SQL.SQL.Clear;
          sql := 'begin cash_pkg.delete_debetor_list(:id_cl_debetor_, :id_debetor_); end;';
          DM.Ora_SQL.SQL.Add(sql);
          DM.Ora_SQL.Prepare;

          idd   := cds.FieldByName('ID_CLIENT_DEBT').AsInteger;
          idd2  := cds.FieldByName('ID_DEBETORS').AsInteger;

          DM.Ora_SQL.ParamByName('id_cl_debetor_').Value  := idd;           // P1
          DM.Ora_SQL.ParamByName('id_debetor_').Value     := idd2;           // P1

          cds.Next;
          idd   := cds.FieldByName('ID_CLIENT_DEBT').AsInteger;
          idd2  := cds.FieldByName('ID_DEBETORS').AsInteger;

          DM.Ora_SQL.Execute;
          CDS_cl_group.RefreshRecord;
          CDS_CLIENT_DEBT.Refresh;
          CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',idd,[]);

          if (CDS_CLIENT_DEBT_ALL.Active = true) then
          begin
            CDS_CLIENT_DEBT_ALL.Refresh;
            CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',idd,[]);
          end;

          if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
          if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;

        except
          on E: Exception do
             MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR);
        End;
      end;
  end
  else MessageBox(Handle, '��� ������ ��� ��������', '��������!', MB_ICONWARNING);
end;


//
// ���������� ������
//
procedure Tclient_debt.BitBtn10Click(Sender: TObject);
var cds: TOraQuery;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;

  if (gr_debetors_v.DataController.DataSet.FieldByName('lock_for').AsInteger < 1) and (gr_debetors_v.DataController.DataSet.FieldByName('id_debetors').AsInteger < 1) then
  begin
    MessageBox(Handle, '�������� ������� ��� ���������� ������', '��������!', MB_ICONWARNING);
    exit;
  end;

  try
    client_debt_edit := Tclient_debt_edit.Create(Application);

    if (cds.FieldByName('lock_for').AsInteger > 0) then
      client_debt_edit.id_debetor_    := gr_debetors_v.DataController.DataSet.FieldByName('lock_for').AsInteger
    else
      client_debt_edit.id_debetor_    := gr_debetors_v.DataController.DataSet.FieldByName('id_debetors').AsInteger;

    client_debt_edit.id_cl_debetor_ := 0;
    client_debt_edit.state          := 1;

    DM.OPERATIONS.Open;
    DM.OPERATIONS.Filter    := '';
    DM.OPERATIONS.Filtered  := false;


// 2012-01-19 �� �������, ����� ������ ��� ��������
//    if (gr_debetors_v.DataController.DataSet.FieldByName('BEZNAL').AsInteger = 1) or (gr_debetors_v.DataController.DataSet.FieldByName('RUBL').AsInteger = 1) then
    if (gr_debetors_v.DataController.DataSet.FieldByName('RUBL').AsInteger = 1) then
    begin
      client_debt_edit.Label4.Visible := true;
      client_debt_edit.edit_rate.Properties.ReadOnly := true;
    end
    else
    begin
      client_debt_edit.Label4.Visible := false;
      client_debt_edit.edit_rate.Properties.ReadOnly := false;
    end;

    client_debt_edit.Panel1.Caption := '���������� ������ � ����������� ��������';
    client_debt_edit.showmodal;

    if (client_debt_edit.state = 0) then
    begin
      CDS_cl_group.RefreshRecord;
      CDS_CLIENT_DEBT.Refresh;
      CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',client_debt_edit.Panel1.Tag,[]);
      if (CDS_CLIENT_DEBT_ALL.Active = true) then
      begin
        CDS_CLIENT_DEBT_ALL.Refresh;
        CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',client_debt_edit.Panel1.Tag,[]);
      end;
    end;
  finally
    client_debt_edit.free;
  end;

  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
end;


//
// �������������� ������
//
procedure Tclient_debt.BitBtn11Click(Sender: TObject);
var cds: TOraQuery;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;

  if (cds.FieldByName('ID_CLIENT_DEBT').AsInteger > 0) then
  begin
  try
    client_debt_edit := Tclient_debt_edit.Create(Application);
    client_debt_edit.id_debetor_    := cds.FieldByName('id_debetors').AsInteger;;
    client_debt_edit.id_cl_debetor_ := cds.FieldByName('ID_CLIENT_DEBT').AsInteger;
    client_debt_edit.state          := 2;

    DM.OPERATIONS.Open;
    DM.OPERATIONS.Filter    := '';
    DM.OPERATIONS.Filtered  := false;

    client_debt_edit.de_date_oper.EditValue := cds.FieldByName('R_DDATE').AsDateTime;
    client_debt_edit.cxDateEdit1.EditValue  := cds.FieldByName('D_DATE').AsDateTime;

    client_debt_edit.imcb_operations.EditValue  := cds.FieldByName('OPERATION').AsInteger;
    client_debt_edit.edit_invoice.EditValue     := cds.FieldByName('INVOICE').AsString;
    client_debt_edit.edit_summ.EditValue        := cds.FieldByName('SUMM').Value;
    client_debt_edit.edit_in_ru.EditValue       := cds.FieldByName('IN_RUB').Value;
    client_debt_edit.edit_discount.EditValue    := cds.FieldByName('DISCOUNT').Value;
    client_debt_edit.edit_discount_proc.EditValue := cds.FieldByName('DISC_PROC').Value;
    client_debt_edit.edit_debet.EditValue       := cds.FieldByName('DEBET').Value;
    client_debt_edit.edit_rate.EditValue        := cds.FieldByName('RATE').Value;
    client_debt_edit.edit_info.EditValue        := cds.FieldByName('INFO').AsString;

    client_debt_edit.Panel1.Caption := '�������������� ������ � ����������� ��������';
    client_debt_edit.showmodal;

    if (client_debt_edit.state = 0) then
    begin
      CDS_cl_group.RefreshRecord;
      CDS_CLIENT_DEBT.Refresh;
      CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',client_debt_edit.Panel1.Tag,[]);
      if (CDS_CLIENT_DEBT_ALL.Active = true) then
      begin
        CDS_CLIENT_DEBT_ALL.Refresh;
        CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',client_debt_edit.Panel1.Tag,[]);
      end;
    end;

  finally
    client_debt_edit.free;
  end;
  end else MessageBox(Handle, '��� ������ ��� ��������������', '��������!', MB_ICONWARNING);

  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
end;


//
//  �� Ctrl+Tab ������ ����� � ������
//
procedure Tclient_debt.aSwtchTabExecute(Sender: TObject);
begin
  If gr_debetors.IsFocused = true then
  begin
    if pc_debt_card.ActivePageIndex = 0 then gr_deps.SetFocus
    else gr_deps_all.SetFocus;
  end
  else
    if (gr_deps.IsFocused = true) or (gr_deps_all.IsFocused = true) then gr_debetors.SetFocus;
end;


//
//  ������ ��� ������ 
//
procedure Tclient_debt.aSwtchViewExecute(Sender: TObject);
begin
  if (tsh_group.Enabled) then
  begin
    if (pc_debt_card.ActivePageIndex = 0) then pc_debt_card.ActivePageIndex := 1
    else pc_debt_card.ActivePageIndex := 0;
  end;
end;

// ��������� ���
procedure Tclient_debt.SaveAllExecute(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
    if ( pc_debt_card.ActivePageIndex = 0 ) then
      ExportGridToExcel(DM.SaveDialog.FileName, gr_deps, True, False, True, 'xls');
    if ( pc_debt_card.ActivePageIndex = 1 ) then
      ExportGridToExcel(DM.SaveDialog.FileName, gr_deps_all, True, False, True, 'xls');
  end;
end;

// �������� ���
procedure Tclient_debt.SelectAllExecute(Sender: TObject);
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps_v.DataController.SelectAll;
  if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all_v.DataController.SelectAll;
end;


//
//  ������ ��������
//
procedure Tclient_debt.BitBtn5Click(Sender: TObject);
var cds : TDataSource; //TOraQuery;
    Memo1: TfrxMemoView;
begin
    if ( pc_debt_card.ActivePageIndex = 0 ) then cds := DS_CLIENT_DEBT;
    if ( pc_debt_card.ActivePageIndex = 1 ) then cds := DS_CLIENT_DEBT_ALL;

    try
      DM.frx_client_debt.DataSource := cds;
      DM.frx_prichast.DataSource := DS_cl_group;

      cds.DataSet.DisableControls;

      if ( pc_debt_card.ActivePageIndex = 1 ) then
      begin
        MakeSortForPrint(TOraQuery(cds.DataSet),gr_deps_all_v);
        DM.frxReport1.LoadFromFile(debetors.path+'raports\client_debt_full.fr3');
        Memo1 := DM.frxReport1.FindObject('Memo26') as TfrxMemoView;
        Memo1.Text := VarToStr(gr_debetors_v.DataController.Summary.FooterSummaryValues[1]); //DBGridEh1.Columns.Items[9].Footer.Value;
      end
      else
      begin
        MakeSortForPrint(TOraQuery(cds.DataSet),gr_deps_v);
        DM.frxReport1.LoadFromFile(debetors.path+'raports\client_debt.fr3');
      end;


      if (chPrintAll.EditValue = 1) then
      begin
        Memo1 := DM.frxReport1.FindObject('Memo100') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo101') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo102') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo103') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo104') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo105') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo106') as TfrxMemoView;
        Memo1.Visible := true;
        Memo1 := DM.frxReport1.FindObject('Memo107') as TfrxMemoView;
        Memo1.Visible := true;
      end
      else
      begin
        Memo1 := DM.frxReport1.FindObject('Memo100') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo101') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo102') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo103') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo104') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo105') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo106') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo107') as TfrxMemoView;
        Memo1.Visible := false;
      end;

      
      DM.frxReport1.ShowReport;
      cds.DataSet.EnableControls;
      cds.DataSet.Last;
    except
      on E: Exception do
         begin
          cds.DataSet.EnableControls;
          MessageBox(Handle, PChar(E.Message), '������', MB_ICONERROR);
         end;
    End;
end;


//
//  ������ ����
//
procedure Tclient_debt.gr_debetors_vIS_LOCKGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  try
    AHintText := VarToStr(gr_debetors_v.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('LOCK_CLIENT').Index ));
  except
    AHintText := '';
  end;
end;


procedure Tclient_debt.gr_deps_all_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1: variant;
begin
    // ������ �������
    val1  := gr_deps_all_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_deps_all_v.GetColumnByFieldName('ACTIVE').Index
                );
    if (gr_deps_all_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'SUMM') and (val1 = 2) then
    begin
        ACanvas.Brush.Color := st_mark.Color
    end;

    val1  := gr_deps_all_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_deps_all_v.GetColumnByFieldName('ID_CLIENT_DEBT').Index
                );
    if (val1 = 0) then
        ACanvas.Font.Style := [fsItalic, fsBold];
end;


procedure Tclient_debt.gr_deps_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
    // ������ �������
    val1  := gr_deps_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_deps_v.GetColumnByFieldName('ACTIVE').Index
                );
    if (gr_deps_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'SUMM') and (val1 = 2) then
    begin
        ACanvas.Brush.Color := st_mark.Color
    end;

    val1  := gr_deps_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_deps_v.GetColumnByFieldName('ID_CLIENT_DEBT').Index
                );
    if (val1 = 0) then
        ACanvas.Font.Style := [fsItalic, fsBold];
end;


procedure Tclient_debt.gr_deps_vD_DATEGetFilterDisplayText(
  Sender: TcxCustomGridTableItem; const AValue: Variant;
  var ADisplayText: string);
begin
  gr_deps_vRD_DATE.DataBinding.AddToFilter(nil, foEqual, AValue);
//  ShowMessage(ADisplayText)
end;


//
//  ������� ������ ������
//
procedure Tclient_debt.N6Click(Sender: TObject);
var i, id, idd : integer;
    cds : TcxGridDBTableView;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := gr_deps_v;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := gr_deps_all_v;

  try
    if MessageDlg('�� ������������� ������ ������� ���������� ������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      screen.cursor := crHourGlass;
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('update CLIENT_DEBT set active = 0 where id_client_debt = :p1');

      for i := 0 to cds.Controller.SelectedRowCount-1 do
      begin
        DM.Q_SQL.ParamByName('P1').AsInteger := cds.Controller.SelectedRows[i].Values[cds.GetColumnByFieldName('ID_CLIENT_DEBT').Index];
        DM.Q_SQL.Execute;
      end;

      DM.OraSession1.Commit;

      CDS_CLIENT_DEBT.Refresh;
      if (CDS_CLIENT_DEBT_ALL.Active = true) then
        CDS_CLIENT_DEBT_ALL.Refresh;

      screen.cursor := crdefault;
    end;
  except on E: Exception do
    begin
      screen.cursor := crdefault;
      MessageBox(Handle, PChar(E.Message), '������', MB_ICONERROR);
    end;
  end;
end;


//
//  �������� / ������ ���������� �������� � �������
//
procedure Tclient_debt.N8Click(Sender: TObject);
var cds : TDataSet; //TOraQuery;
    id, i: integer;
    cds2 : TcxGridDBTableView;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds2 := gr_deps_v;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds2 := gr_deps_all_v;

  if MessageDlg('�� ������������� ������ �������� �������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
     // �������� ��������
     DM.Q_SQL.SQL.Clear;
     DM.Q_SQL.SQL.Add('begin clients_pkg.save_active(:ID_CLIENT_DEBT_, :active_); end;');
     DM.Q_SQL.Prepare;

     for i := 0 to cds2.Controller.SelectedRowCount-1 do
     begin
       DM.Q_SQL.ParamByName('ID_CLIENT_DEBT_').Value := cds2.Controller.SelectedRows[i].Values[cds2.GetColumnByFieldName('ID_CLIENT_DEBT').Index];
       if ( cds2.Controller.SelectedRows[i].Values[cds2.GetColumnByFieldName('active').Index] = 2 ) then
          DM.Q_SQL.ParamByName('active_').Value := 1
       else
          DM.Q_SQL.ParamByName('active_').Value := 2;
       try
          DM.Q_SQL.Execute;
       except
          on E: Exception do
             MessageBox(Handle, PChar(E.Message), '�� ������� ��������� ��������!', MB_ICONERROR);
       End;
     end;

     try
       id := cds.FieldByName('ID_CLIENT_DEBT').AsInteger;
       CDS_CLIENT_DEBT.Refresh;
       CDS_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',id,[]);
       if (CDS_CLIENT_DEBT_ALL.Active = true) then
       begin
          CDS_CLIENT_DEBT_ALL.Refresh;
          CDS_CLIENT_DEBT_ALL.Locate('ID_CLIENT_DEBT',id,[]);
       end;
       if ( pc_debt_card.ActivePageIndex = 0 ) then gr_deps.SetFocus;
       if ( pc_debt_card.ActivePageIndex = 1 ) then gr_deps_all.SetFocus;
       gr_deps.Repaint;
       gr_deps_all.Repaint;
     except
       on E: Exception do
          MessageBox(Handle, PChar(E.Message), '������ ��� ���������� ����������!', MB_ICONERROR);
     End;

  end;
end;



//
//  ����������� � ����� ������
//
procedure Tclient_debt.Rjgb1Click(Sender: TObject);
var i: integer;
    str : string;
    cds2 : TcxGridDBTableView;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds2 := gr_deps_v;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds2 := gr_deps_all_v;
  for i:=0 to (cds2.DataController.Summary.FooterSummaryItems.Count-1) do
  begin
    str := str + VarToStr(cds2.DataController.Summary.FooterSummaryValues[i]) + '  ';
  end;
  clipboard.SetTextBuf(PChar(str));
end;

//
//  ����������
//
procedure Tclient_debt.btn_statisticClick(Sender: TObject);
begin
  frm_statistic := Tfrm_statistic.Create(self);
  try
    frm_statistic.cxDateEdit1.EditValue := Now();
    frm_statistic.cxDateEdit2.EditValue := Now();
    frm_statistic.Label1.Caption        := VarToStr(gr_debetors_vNICK.EditValue) + ', ' + VarToStr(gr_debetors_vFIO.EditValue);
    frm_statistic.gr_stat.Tag           := _gr_debetors_vID_DEBETORS.EditValue;
    frm_statistic.cxCheckBox1.Visible   := tsh_group.Enabled;
    frm_statistic.cxCheckBox1.Tag       := _gr_debetors_vID_CLIENTS_GROUPS.EditValue;
    frm_statistic.stat_type             := 1;
    frm_statistic.gr_stat.Visible       := true;
    frm_statistic.gr_stat_rate.Visible  := false;
    frm_statistic.ShowModal;
    frm_statistic.stat_query.Close;
  finally
    frm_statistic.Free;
  end;
end;

//
//  �������� ������
//
procedure Tclient_debt.btn_ratesClick(Sender: TObject);
var cds : TDataSet; //TOraQuery;
    i: integer;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;

  frm_statistic := Tfrm_statistic.Create(self);
  try
    i := CDS.FieldByName('ID_CLIENT_DEBT').AsInteger;
    cds.First;
    frm_statistic.cxDateEdit1.EditValue := CDS.FieldByName('D_DATE').AsDateTime - 1;
    frm_statistic.cxDateEdit2.EditValue := Now();
    frm_statistic.Label1.Caption        := VarToStr(gr_debetors_vNICK.EditValue) + ', ' + VarToStr(gr_debetors_vFIO.EditValue);
    frm_statistic.gr_stat.Tag           := _gr_debetors_vID_DEBETORS.EditValue;
    frm_statistic.cxCheckBox1.Visible   := tsh_group.Enabled;
    frm_statistic.cxCheckBox1.Tag       := _gr_debetors_vID_CLIENTS_GROUPS.EditValue;
    frm_statistic.stat_type             := 2;
    frm_statistic.gr_stat.Visible       := false;
    frm_statistic.gr_stat_rate.Visible  := true;
    frm_statistic.ShowModal;
    frm_statistic.stat_query.Close;
    cds.Locate('ID_CLIENT_DEBT',i,[]);
  finally
    frm_statistic.Free;
  end;
end;

// ��������� �����
procedure Tclient_debt.aShowCourseClick(Sender: TObject);
var cds : TDataSet; //TOraQuery;
    id: integer;
begin
  if ( pc_debt_card.ActivePageIndex = 0 ) then cds := CDS_CLIENT_DEBT;
  if ( pc_debt_card.ActivePageIndex = 1 ) then cds := CDS_CLIENT_DEBT_ALL;

  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.Params.Clear;
  DM.Q_SQL.SQL.Add('begin DICTS.get_curse(:ddate_, :cursor_); end;');
  DM.Q_SQL.ParamByName('ddate_').AsDate := cds.FieldByName('D_DATE').AsDateTime;
  DM.Q_SQL.ParamByName('cursor_').AsCursor;
  DM.Q_SQL.Open;
  MessageBox(Handle, PChar('USD - ' + DM.Q_SQL.FieldByName('SHEV_USD').AsString + #10 + 'EUR - ' + DM.Q_SQL.FieldByName('SHEV_EUR').AsString ), PChar('����� �� ���� '+cds.FieldByName('D_DATE').AsString), MB_ICONINFORMATION);
  DM.Q_SQL.Close;
end;


procedure Tclient_debt.aDebetorExecute(Sender: TObject);
begin
  pc_debt_card.ActivePageIndex := 0;
end;
procedure Tclient_debt.aGroupExecute(Sender: TObject);
begin
  pc_debt_card.ActivePageIndex := 1;
end;



procedure Tclient_debt.PopupMenu1Popup(Sender: TObject);
begin
  mmSetDolg.Enabled := ((pc_debt_card.ActivePageIndex = 0) and CDS_CLIENT_DEBT.Active and (not CDS_CLIENT_DEBT.IsEmpty) and (gr_debetors_vRUBL.EditValue = 0));
end;

{
 ����������� �������� ����� ��� ������ ����
 ������ ����, �� ������� ����������� ���� ������� ����� �������������.
 �������� ������ ��� �������� ��������.
 ���� ����������� ����� �������� �������� ������ �������� �����, �� ������� ������� ����.
}
procedure Tclient_debt.mmSetDolgClick(Sender: TObject);
begin
  if CDS_CLIENT_DEBTOPERATION.AsInteger <> 3 then
  begin
     MessageBox(Handle, '���������� ������� �������� ����', '��������!', MB_ICONWARNING);
     exit;
  end;

  try
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.Params.Clear;
    DM.Q_SQL.SQL.Add('begin cash_pkg.moveDolg(:p_id_cl_debt ); end;');
    DM.Q_SQL.ParamByName('p_id_cl_debt').AsDate := CDS_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
    DM.Q_SQL.Execute;
  except
     on E: Exception do
        MessageBox(Handle, PChar(E.Message), '������ ��� ���������� ����������!', MB_ICONERROR);
  End;
end;


// ��������� �������� ������ � �����
procedure Tclient_debt.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debetors_v.DataController, 1);
end;

// ��������� �������� ������ � �����
procedure Tclient_debt.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debetors_v.DataController, 0);
end;

procedure Tclient_debt.N10Click(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
      ExportGridToExcel(DM.SaveDialog.FileName, gr_debetors, True, True, True, 'xls');
  end;
end;

end.
