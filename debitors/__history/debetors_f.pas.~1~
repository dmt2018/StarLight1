unit debetors_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons, DB,
  ActnList, ImgList, MemDS, DBAccess, Ora, StrUtils, Mask,
  Menus, Registry, cxContainer, cxListBox, cxDBEdit,
  cxGraphics, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckComboBox, cxDBCheckComboBox, cxStyles, dxBar, dxBarExtItems,
  cxClasses, cxLookAndFeelPainters, cxButtons, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxControls, cxGridCustomView,
  cxGrid, cxImageComboBox, PI_Library, cxCalendar, cxGridExportLink, cxLabel,
  jpeg, cxImage, frxClass, IniFiles, ShellAPI, Clipbrd, cxBarEditItem, PI_Library_reg;

type
  Tdebetors = class(TForm)
    Panel5: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDel: TAction;
    GroupBox2: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    aFilterOn: TAction;
    aFilterOff: TAction;
    q_search_n: TAction;
    aOperations: TAction;
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
    aOpenSearch: TAction;
    aSearch: TAction;
    aClearSearch: TAction;
    Panel6: TPanel;
    Label7: TLabel;
    q_search_f: TAction;
    ctrl_enter: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    search_prichast: TAction;
    Label8: TLabel;
    Edit4: TEdit;
    N3: TMenuItem;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    N5: TMenuItem;
    N6: TMenuItem;
    bc_debt: TdxBarDockControl;
    bm_debt: TdxBarManager;
    bm_debtBar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_block: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    st_mark: TcxStyle;
    dxBarStatic4: TdxBarStatic;
    N8: TMenuItem;
    dxBarStatic5: TdxBarStatic;
    st_mark2: TcxStyle;
    dxBarStatic6: TdxBarStatic;
    N9: TMenuItem;
    N10: TMenuItem;
    cxImageList1: TcxImageList;
    bm_debtBar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    aRefresh: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton6: TdxBarLargeButton;
    aPrint1: TAction;
    aPrint2: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    aExit: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    btn_search: TcxButton;
    btn_clearsearch: TcxButton;
    SelectAll: TAction;
    SaveAll: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    gr_debetors_v: TcxGridDBTableView;
    gr_debetors_l: TcxGridLevel;
    gr_debetors: TcxGrid;
    gr_debetors_vNICK: TcxGridDBColumn;
    gr_debetors_vFIO: TcxGridDBColumn;
    _gr_debetors_vDOSTAVKA: TcxGridDBColumn;
    _gr_debetors_vID_DEBETORS: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS: TcxGridDBColumn;
    _gr_debetors_vLAST_DDATE: TcxGridDBColumn;
    gr_debetors_vSTATE: TcxGridDBColumn;
    gr_debetors_vBEZNAL: TcxGridDBColumn;
    _gr_debetors_vDEBET: TcxGridDBColumn;
    gr_debetors_vCREDIT_DAYS: TcxGridDBColumn;
    gr_debetors_vINFO: TcxGridDBColumn;
    _gr_debetors_vDDATE: TcxGridDBColumn;
    gr_debetors_vRUBL: TcxGridDBColumn;
    gr_debetors_vCHART: TcxGridDBColumn;
    gr_debetors_vPHONE: TcxGridDBColumn;
    _gr_debetors_vREGION: TcxGridDBColumn;
    gr_debetors_vGROUP_NAME: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS_GROUPS: TcxGridDBColumn;
    _gr_debetors_vKKK: TcxGridDBColumn;
    gr_debetors_vMAX_DATE: TcxGridDBColumn;
    gr_debetors_vCHART2: TcxGridDBColumn;
    _gr_debetors_vWW: TcxGridDBColumn;
    _gr_debetors_vBLOCK1: TcxGridDBColumn;
    gr_debetors_vMARK_KOL: TcxGridDBColumn;
    _gr_debetors_vMARK: TcxGridDBColumn;
    ed_debt: TcxCurrencyEdit;
    imcb_regions: TcxImageComboBox;
    de_begin: TcxDateEdit;
    de_end: TcxDateEdit;
    Label9: TLabel;
    imcb_alpha: TcxImageComboBox;
    aLook: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    gr_debetors_vIS_LOCK: TcxGridDBColumn;
    gr_debetors_vLOCK_FOR: TcxGridDBColumn;
    st_lock: TcxStyle;
    st_lock2: TcxStyle;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    dxBarStatic10: TdxBarStatic;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    gr_prichast: TcxGrid;
    gr_prichast_v: TcxGridDBTableView;
    gr_prichast_l: TcxGridLevel;
    gr_prichast_vID_CLIENTS: TcxGridDBColumn;
    gr_prichast_vNICK: TcxGridDBColumn;
    gr_prichast_vFIO: TcxGridDBColumn;
    gr_prichast_vNAME: TcxGridDBColumn;
    gr_prichast_vAA: TcxGridDBColumn;
    gr_debetors_vSALES: TcxGridDBColumn;
    st_inactive: TcxStyle;
    mm_client: TMenuItem;
    N4: TMenuItem;
    gr_debetors_vLOCK_CLIENT: TcxGridDBColumn;
    de_dolg: TcxDateEdit;
    chb_dolg: TCheckBox;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarStatic13: TdxBarStatic;
    btnSettings: TcxButton;
    N7: TMenuItem;
    mm_bufer: TMenuItem;
    dxBarStatic14: TdxBarStatic;
    st_block_reg: TcxStyle;
    dxBarStatic15: TdxBarStatic;
    _gr_debetors_vBLOCK2: TcxGridDBColumn;
    CheckBox11: TCheckBox;
    gr_debetors_vCHART_GROUP: TcxGridDBColumn;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    stGroup: TcxStyle;
    dxBarStatic16: TdxBarStatic;
    dxBarStatic17: TdxBarStatic;
    alPrint: TActionList;
    aPrintList: TAction;
    aPrintRaport: TAction;
    pmPrint: TdxBarPopupMenu;
    bbPrintList: TdxBarButton;
    bbPrintRaport: TdxBarButton;
    gr_debetors_vCHART_FOR_GROUP: TcxGridDBColumn;
    imgOffice: TcxBarEditItem;
    gr_debetors_vID_OFFICE: TcxGridDBColumn;
    gr_debetors_vBRIEF: TcxGridDBColumn;
    N16: TMenuItem;
    aShowCargo: TAction;
    N17: TMenuItem;
    dxBarButton1: TdxBarButton;
    btnCargo: TdxBarLargeButton;
    bc_fontsize: TcxBarEditItem;
    btnSetMulti: TcxButton;
    gr_debetors_vGROUP_MAX_DATE: TcxGridDBColumn;
    mn_get_error: TMenuItem;
    gr_debetors_vITOG_DISCOUNT: TcxGridDBColumn;
    gr_debetors_vINN: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn9Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure q_search_nExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure q_search_fExecute(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure SelectAllExecute(Sender: TObject);
    procedure SaveAllExecute(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aPrint1Execute(Sender: TObject);
    procedure aPrint2Execute(Sender: TObject);
    procedure aOperationsExecute(Sender: TObject);
    procedure aOpenSearchExecute(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure aClearSearchExecute(Sender: TObject);
    procedure aFilterOnExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aLookExecute(Sender: TObject);
    procedure gr_debetors_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gr_debetors_vDblClick(Sender: TObject);
    procedure mm_clientClick(Sender: TObject);
    procedure gr_debetors_vIS_LOCKGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure gr_debetors_vMAX_DATEInitFilteringDateRanges(
      Sender: TcxCustomGridTableItem; ADateRanges: TcxGridDateRanges);
    procedure btnSettingsClick(Sender: TObject);
    procedure mm_buferClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure aPrintListExecute(Sender: TObject);
    procedure aPrintRaportExecute(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure aShowCargoExecute(Sender: TObject);
    procedure btnCargoClick(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure btnSetMultiClick(Sender: TObject);
    procedure mn_get_errorClick(Sender: TObject);
  private
    { Private declarations }
    msk_search, reg_search: string;
    grant_view: boolean;
    pnl_msg: TPanel;
  public
    path : string;
    { Public declarations }
  end;

var
  debetors: Tdebetors;

implementation

uses DataM, deb_edit_f, client_debt_f, operations_f, form_operations, UFullInfo,
  USettings, UCargo, UMultiEdit, UGroupWithError;

{$R *.dfm}

procedure Tdebetors.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    //DM.Q_SQL.SQL.Add('select rownum, a.ww from ( select distinct cast(nick as varchar2(2)) as ww from clients where nick like ''_ %'' order by ww ) a ');
    DM.Q_SQL.SQL.Add('select rownum, a.* from ( select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')-1) as ww from clients where id_office='+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+'=0 ) a order by ww ');
    DM.Q_SQL.Open;
    FillImgComboCx(DM.Q_SQL, imcb_alpha, '');

  if (DM.Q_DEBETORS.Active = true) then
  begin
    DM.Q_DEBETORS.Close;
    DM.Q_DEBETORS.Open;
  end;
end;

//
//  Обновим данные
//
procedure Tdebetors.aRefreshExecute(Sender: TObject);
begin
  if (DM.Q_DEBETORS.Active = true) then
    DM.Q_DEBETORS.Refresh;
end;


//
//  Сохраняем путь
//
procedure Tdebetors.FormCreate(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
end;


//
//  при открытии настраиваем кнопки
//
procedure Tdebetors.FormShow(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
begin
  try
    path   := ExtractFilePath(Application.ExeName);

    AOptions := [];
    AStoreKey     := path + 'ini/debetors_'+DM.OraSession1.Username+'.ini';
    ASaveViewName := 'Debetors';
    gr_debetors_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

    path   := path+'ini/'+DM.OraSession1.Username+'.ini';
    RegIni := TIniFile.Create(path);

    msk_search := RegIni.ReadString('Moscow', 'Value', '');
    reg_search := RegIni.ReadString('Region', 'Value', '');

    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '9');
    gr_debetors.Font.Size := bc_fontsize.EditValue;

    imgOffice.Enabled := (GetOfficeID = 1);
    gr_debetors_vBRIEF.Visible := not (GetOfficeID = DM.id_office);

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

    de_begin.EditValue  := Now();
    de_end.EditValue    := Now();
    de_dolg.EditValue   := Now();
    aNew.Enabled        := DM.b_edit;
    aEdit.Enabled       := DM.b_edit;
    aDel.Enabled        := DM.b_delete;
    aPrint1.Enabled     := DM.b_print;
    aPrint2.Enabled     := DM.b_print;
    aPrintList.Enabled  := DM.b_print;
    aPrintRaport.Enabled  := DM.b_print;
    gr_debetors_vSALES.Visible := DM.b_addit;
    btnSettings.Enabled := DM.b_addit;
    N2.Enabled          := DM.b_print;
    N8.Enabled          := DM.b_edit;
    N10.Enabled         := DM.b_edit;
    SaveAll.Enabled     := DM.b_print;
    btnSettings.Enabled := DM.b_edit;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT a.enable_view FROM client_rule a, clients b where a.id_clients = b.id_clients and b.login = :p1');
    DM.Q_SQL.ParamByName('p1').AsString := DM.OraSession1.Username;
    DM.Q_SQL.Open;
    if (DM.Q_SQL.RecordCount > 0) and (DM.Q_SQL.FieldByName('enable_view').AsString = '1') then grant_view := true else grant_view := false;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT a.id_regions, a.name FROM books_regions a');
    DM.Q_SQL.Open;
    FillImgComboCx(DM.Q_SQL, imcb_regions, '');

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    //DM.Q_SQL.SQL.Add('select rownum, a.ww from ( select distinct cast(nick as varchar2(2)) as ww from clients where nick like ''_ %'' order by ww ) a ');
    DM.Q_SQL.SQL.Add('select rownum, a.* from ( select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')-1) as ww from clients where id_office='+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+'=0 ) a order by ww ');
    DM.Q_SQL.Open;
    FillImgComboCx(DM.Q_SQL, imcb_alpha, '');

    DM.Q_SQL.Close;
  finally
    RegIni.Free;
    Edit2.SetFocus;
  end;
end;


procedure Tdebetors.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_debetors.Font.Size := bc_fontsize.EditValue;
  RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'.ini');
  try
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;


//
// При выходе из программы закрываем сессию
//
procedure Tdebetors.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := path + 'ini/debetors_'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'Debetors';
  gr_debetors_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  DM.OraSession1.Close;
end;

//
//  Выход программы
//
procedure Tdebetors.aExitExecute(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите выйти из программы?',mtConfirmation,[mbYes, mbNo],0) = mrYes then close;
end;



//
// Включение фильтров
//
procedure Tdebetors.aFilterOnExecute(Sender: TObject);
var sql, RS: string;
    i, pass: integer;
begin
  if ((CheckBox10.Checked = false) and (CheckBox9.Checked = false) and (CheckBox2.Checked = false) and (CheckBox3.Checked = false) and (CheckBox4.Checked = false) and (CheckBox6.Checked = false) and (CheckBox7.Checked = false) and (CheckBox8.Checked = false) and (CheckBox5.Checked = false)) then
    CheckBox5.Checked := true;

try
  pass  := 0;
  i     := 0;
  RS    := '';
  cxButton1.SetFocus;

  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

{
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('select count(*) as nn from DEBETOR_PERMISSIONS z, clients c where z.user_id = c.ID_CLIENTS and upper(c.login) = :p1');
  DM.Q_SQL.Prepare;
  DM.Q_SQL.ParamByName('p1').Value := UpperCase(DM.OraSession1.Username);
  DM.Q_SQL.Open;
  is_all := not (DM.Q_SQL.FieldByName('nn').AsInteger > 0);
  DM.Q_SQL.Close;
}

  if ( (trim(Edit1.Text) <> '') or (trim(Edit2.Text) <> '') ) then
  begin
    if ( (trim(Edit1.Text) <> '') and (length(Edit1.Text) > 1) ) then pass := 1
    else if ( DM.b_addit = true ) then pass := 1 else pass := 0;

    if ( pass = 0 ) then
    begin
      if ( (trim(Edit2.Text) <> '') and (length(Edit2.Text) > 2) ) then pass := 1
      else if ( DM.b_addit = true ) then pass := 1 else pass := 0;
    end;
  end
  else if ( DM.b_addit = true ) or (grant_view = true) then pass := 1 else pass := 0;

  if ( pass = 0) then
  begin
    Edit2.SetFocus;
    gr_debetors.Visible := false;
    DM.Q_DEBETORS.Close;
    pnl_msg.Free;
    MessageBox(Handle,'У вас нет возможности смотреть список должников!','Отказ в доступе', MB_ICONERROR);
    exit;
  end;

  sql := 'WHERE (a.id_office=:v_office or :v_office=0) ';

  if ( imcb_alpha.EditText <> '' ) then sql := sql + ' and a.kkk = :nick_';
  if trim(edit1.Text) <> '' then sql := sql + ' and UPPER(a.NICK) LIKE :P1';
  if trim(edit2.Text) <> '' then sql := sql + ' and UPPER(a.FIO) LIKE :P2';
  if ed_debt.EditValue > 0 then sql := sql + ' and a.DEBET >'+ VarToStr(ed_debt.EditValue);

  if ( (CheckBox10.Checked = true) or (CheckBox9.Checked = true) or (CheckBox2.Checked = true) or (CheckBox3.Checked = true) or (CheckBox4.Checked = true) or (CheckBox6.Checked = true) or (CheckBox7.Checked = true) or (CheckBox8.Checked = true)) then
  begin

    if ( (CheckBox6.Checked = true) or (CheckBox7.Checked = true) or (CheckBox8.Checked = true) ) then
    begin
      sql := sql + ' and (';
      if CheckBox8.Checked = true then sql := sql + ' and a.BEZNAL=0';// else sql := sql + ' AND D.BEZNAL=0';
      if CheckBox6.Checked = true then sql := sql + ' and a.STATE=0';// else sql := sql + ' AND D.STATE=0';
      if CheckBox7.Checked = true then sql := sql + ' and a.RUBL=0';// AND D.ID_DEBETORS IN (select distinct id_debetors from client_debt where rate>1)';// else sql := sql + ' AND D.RUBL=0';

      sql := sql + ')';
      sql := AnsiReplaceStr(sql, '( and', '( ');
    end;

    if ( (CheckBox2.Checked = true) or (CheckBox3.Checked = true) or (CheckBox4.Checked = true) ) then
    begin
      sql := sql + ' and (';
      if CheckBox2.Checked = true then sql := sql + ' and a.BEZNAL=1';// else sql := sql + ' OR D.BEZNAL=0';
      if CheckBox4.Checked = true then sql := sql + ' and a.STATE=1';// else sql := sql + ' OR D.STATE=0';
      if CheckBox3.Checked = true then sql := sql + ' and a.RUBL=1';// AND D.ID_DEBETORS IN (select distinct id_debetors from client_debt where rate=1)';// else sql := sql + ' OR D.RUBL=0';

      sql := sql + ')';
      sql := AnsiReplaceStr(sql, '( and', '( ');
    end;

    if CheckBox10.Checked = true then sql := sql + ' and a.dostavka=1';
    if CheckBox9.Checked = true then sql := sql + ' and a.dostavka=0';

  end;

  If RadioButton1.Checked = true then
  begin
//    sql := sql + ' and REGION in (1, 62)'; //+DM.Q_REGIONSID_REGIONS.AsString;
    sql := sql + ' and trim(WW) in ('''+msk_search+''')'; //+DM.Q_REGIONSID_REGIONS.AsString;
  end;

  If RadioButton2.Checked = true then
  begin
//    sql := sql + ' and REGION not in (1, 62)'; //+DM.Q_REGIONSID_REGIONS.AsString;
    sql := sql + ' and trim(WW) in ('''+reg_search+''')'; //+DM.Q_REGIONSID_REGIONS.AsString;
  end;

  If ((RadioButton4.Checked = true) and (imcb_regions.EditValue > 0)) then
  begin
    sql := sql + ' and REGION=' + VarToStr(imcb_regions.EditValue);
  end;

  If CheckBox1.Checked = true then
  begin
    if ( de_end.EditValue < de_begin.EditValue ) then begin ShowMessage('Проверьте даты!'); exit; end
    else
      sql := sql + ' and exists (select 1 from client_debt c where trunc(c.d_date) BETWEEN :P3 and :P4) ';
// 2012-01-16 А то при двойном условии со скидкой не работало
//sql := sql + ' and ( (select trunc(max(d_date)) from client_debt b where b.id_debetors = a.id_debetors) BETWEEN  :P3 and :P4)';
  end;

  If CheckBox11.Checked = true then
  begin
    if ( de_end.EditValue < de_begin.EditValue ) then begin ShowMessage('Проверьте даты!'); exit; end
    else
      sql := sql + ' and exists ( select 1 from client_debt b where b.id_debetors = a.id_debetors and r_ddate BETWEEN :P3 and :P4 and (discount <> 0 or disc_proc <> 0)) ';
// 2012-01-16 А то при двойном условии со скидкой не работало
//      sql := sql + ' and ( select count(1) from client_debt b where b.id_debetors = a.id_debetors and r_ddate BETWEEN :P3 and :P4 and (discount <> 0 or disc_proc <> 0)) > 0';
  end;

  DM.Q_DEBETORS.Close;
  DM.Q_DEBETORS.SQL.Clear;

  DM.Q_DEBETORS.SQL.Add( 'select a.nick, a.fio, a.dostavka, a.id_debetors, a.id_clients, a.last_ddate, a.state, a.beznal, a.mark, a.debet, a.credit_days,');
  DM.Q_DEBETORS.SQL.Add( 'a.info, a.ddate, a.rubl, a.chart, a.block1, a.block2, a.phone, a.region, a.group_name, a.id_clients_groups, a.kkk, a.mark_kol, trunc(a.max_date) as max_date, a.group_max_date,');
  DM.Q_DEBETORS.SQL.Add( 'a.is_lock, a.lock_for, a.lock_client, a.sales, a.ww, a.CHART_FOR_GROUP, a.ID_OFFICE, a.brief, a.inn');

  If CheckBox11.Checked = true then
    DM.Q_DEBETORS.SQL.Add( ', (select sum(case when (CA.SUMM<>0 or CA.DISCOUNT<>0) then round((CA.DISCOUNT+(ca.SUMM/100)*CA.disc_proc),2) else 0 end) from client_debt ca where ca.id_debetors=a.id_debetors AND ca.ACTIVE >= 1 and ca.r_ddate BETWEEN :P3 and :P4 ) as itog_discount ' )
  else
    DM.Q_DEBETORS.SQL.Add( ', a.ITOG_DISCOUNT ' );

  //DM.Q_DEBETORS.SQL.Add( ', (select sum(ROUND(DEBET/RATE,2)) FROM CLIENT_DEBT WHERE ID_DEBETORS = a.id_debetors and active >= 1 and d_date < :ddd) as CHART2 ')
  if (chb_dolg.Checked = true) then
  begin
    DM.Q_DEBETORS.SQL.Add( ', (select sum(ROUND(DEBET/RATE,2)) FROM CLIENT_DEBT WHERE ID_DEBETORS = a.id_debetors and active >= 1 and trunc(r_ddate) <= :ddd) as CHART2 ');
    DM.Q_DEBETORS.SQL.Add( ', case when a.ID_CLIENTS_GROUPS>2 then (');
    DM.Q_DEBETORS.SQL.Add( ' select sum(ROUND(ca.DEBET/ca.RATE,2)) FROM CLIENT_DEBT CA, DEBETORS DD, CLIENTS CC WHERE ca.ID_DEBETORS=dd.id_debetors and ca.active>=1 and trunc(ca.r_ddate)<=:ddd and dd.id_clients=cc.id_clients and cc.id_clients_groups=a.ID_CLIENTS_GROUPS');
    DM.Q_DEBETORS.SQL.Add( ' ) else null end chart_group');
  end
  else
    DM.Q_DEBETORS.SQL.Add( ', a.chart2, a.CHART_GROUP ');

  DM.Q_DEBETORS.SQL.Add( ' from VIEW_DEBETORS a ');
  if not DM.is_all then
  begin
    DM.Q_DEBETORS.SQL.Add( ' inner join clients c on upper(c.login) = '''+ UpperCase(DM.OraSession1.Username) + '''');
    DM.Q_DEBETORS.SQL.Add( ' inner join DEBETOR_PERMISSIONS p on p.user_id = c.ID_CLIENTS and p.debetor_id = a.id_debetors');
  end;

  DM.Q_DEBETORS.SQL.Add(sql);
  if trim(edit1.Text) <> '' then
    DM.Q_DEBETORS.ParamByName('P1').AsString :=  '%' + AnsiUpperCase(Edit1.Text) + '%';
  if trim(edit2.Text) <> '' then
    DM.Q_DEBETORS.ParamByName('P2').AsString :=  '%' + AnsiUpperCase(Edit2.Text) + '%';

  If (CheckBox1.Checked = true) or (CheckBox11.Checked = true) then
  begin
    DM.Q_DEBETORS.ParamByName('P3').AsDate := de_begin.EditValue;
    DM.Q_DEBETORS.ParamByName('P4').AsDate := de_end.EditValue;
  end;

  if (imcb_alpha.EditText <> '') then DM.Q_DEBETORS.ParamByName('nick_').AsString := imcb_alpha.EditText;

  if (chb_dolg.Checked = true) then DM.Q_DEBETORS.ParamByName('ddd').AsDate := de_dolg.EditValue;

  DM.Q_DEBETORS.SQL.Add(' order by group_name, fio');

  DM.Q_DEBETORS.Open;
  if DM.Q_DEBETORS.RecordCount > 0 then
  begin
    gr_debetors.Visible := true;
    gr_debetors.SetFocus;
  end
  else
  begin
    gr_debetors.Visible := false;
  end;
  pnl_msg.Free;


except
  on E: Exception do
  begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;

end;


//
// выключение фильтров
//
procedure Tdebetors.BitBtn9Click(Sender: TObject);
var i:integer;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  ed_debt.EditValue := 0;
  imcb_alpha.EditValue := 0;
  imcb_regions.EditValue := 0;

  CheckBox2.Checked := false;
  CheckBox3.Checked := false;
  CheckBox4.Checked := false;
  CheckBox5.Checked := true;
  CheckBox9.Checked := false;
  CheckBox10.Checked := false;

  RadioButton3.Checked := true;
  CheckBox1.Checked := false;

  de_begin.EditValue  := Now();
  de_end.EditValue    := Now();

  DM.Q_DEBETORS.Close;
  gr_debetors_v.DataController.DataSet.Filter := '';
  gr_debetors_v.DataController.DataSet.Filtered := false;
  gr_debetors_v.DataController.Filter.Clear;

  Edit2.SetFocus;
  gr_debetors.Visible := false;
end;


//
//  Расскраска
//
procedure Tdebetors.gr_debetors_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin

  if (not AViewInfo.Selected) and (gr_debetors_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('BLOCK2').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 = 1) then
    begin
        ACanvas.Brush.Color := st_block_reg.Color
    end;

    // Красим заблокированного кредитом
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('BLOCK1').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 = 1) then
    begin
        ACanvas.Brush.Color := st_block.Color
    end;

    // Красим пометки
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('MARK_KOL').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'MARK_KOL') and (val1 > 0) then
    begin
        ACanvas.Brush.Color := st_mark.Color
    end;

    // Красим метку
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('MARK').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'INFO') and (val1 > 0) then
    begin
        ACanvas.Brush.Color := st_mark2.Color
    end;

    // Красим закрытого
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('IS_LOCK').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 > 0) then
    begin
        ACanvas.Brush.Color := st_lock.Color
    end;

    // Красим закрытого
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('LOCK_FOR').Index
                );
    if (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 > 0) then
    begin
        ACanvas.Brush.Color := st_lock2.Color
    end;

  end;

end;


//
//  Открываем операции
//
procedure Tdebetors.aOperationsExecute(Sender: TObject);
begin
  DM.OPERATIONS.Open;
  options := Toptions.Create(Application);
  try
    options.showmodal;
  finally
    DM.OPERATIONS.Close;
    options.Free;
  end;
end;


//
//  Открываем поиск клиента
//
procedure Tdebetors.aOpenSearchExecute(Sender: TObject);
begin
  if Panel9.Visible = true then
  begin
    Panel9.Visible := false;
    Edit2.SetFocus;
  end
  else
  begin
    Panel9.Visible := true;
    Edit10.SetFocus;
  end;
end;


//
//  Расширенный поик клиента
//
procedure Tdebetors.aSearchExecute(Sender: TObject);
begin
  if ( (trim(edit10.Text) = '') and (trim(edit11.Text) = '') and (trim(edit12.Text) = '') and (trim(edit13.Text) = '') and (trim(edit14.Text) = '') and (trim(edit15.Text) = '') and (trim(edit16.Text) = '') and (trim(edit17.Text) = '') and (trim(edit18.Text) = '') and (trim(edit19.Text) = '') and (trim(edit20.Text) = '') ) then
  showmessage('Заполните поля для поиска!')
  else
  begin
    btn_search.SetFocus;
    
    DM.Q_DEBETORS.Close;
    DM.Q_DEBETORS.SQL.Clear;
    DM.Q_DEBETORS.SQL.Add( 'select a.nick, a.fio, a.dostavka, a.id_debetors, a.id_clients, a.last_ddate, a.state, a.beznal, a.mark, a.debet, a.credit_days,');
    DM.Q_DEBETORS.SQL.Add( 'a.info, a.ddate, a.rubl, a.chart, a.block1, a.block2, a.phone, a.region, a.group_name, a.id_clients_groups, a.kkk, a.mark_kol, trunc(a.max_date) as max_date, a.group_max_date, ');
    DM.Q_DEBETORS.SQL.Add( 'a.is_lock, a.lock_for, a.lock_client, a.sales, a.ww, a.CHART_GROUP, a.chart2, a.CHART_FOR_GROUP, a.ID_OFFICE, a.brief, a.ITOG_DISCOUNT, a.inn from VIEW_DEBETORS a ');


    if not DM.is_all then
    begin
      DM.Q_DEBETORS.SQL.Add( ' inner join clients c on upper(c.login) = '''+ UpperCase(DM.OraSession1.Username) + '''');
      DM.Q_DEBETORS.SQL.Add( ' inner join DEBETOR_PERMISSIONS p on p.user_id = c.ID_CLIENTS and p.debetor_id = a.id_debetors');
    end;

    DM.Q_DEBETORS.SQL.Add( ' WHERE (a.id_office=:v_office or :v_office=0) ');



    DM.Q_DEBETORS.SQL.Add(' and exists (select 1 from clients c where c.id_clients=a.id_clients ');
    if trim(edit10.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.NICK) like UPPER(''%'+ Edit10.Text +'%'')');
    if trim(edit11.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.FIO) like UPPER(''%'+ Edit11.Text +'%'')');
    if trim(edit12.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.AGREEMENT) like UPPER(''%'+ Edit12.Text +'%'')');
    if trim(edit13.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.REG_SVID) like UPPER(''%'+ Edit13.Text +'%'')');
    if trim(edit14.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.CONTACT) like UPPER(''%'+ Edit14.Text +'%'')');
    if trim(edit15.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.INN) like UPPER(''%'+ Edit15.Text +'%'')');
    if trim(edit16.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.KPP) like UPPER(''%'+ Edit16.Text +'%'')');
    if trim(edit17.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.OKATO) like UPPER(''%'+ Edit17.Text +'%'')');
    if trim(edit18.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.EMAIL) like UPPER(''%'+ Edit18.Text +'%'')');
    if trim(edit19.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.WWW) like UPPER(''%'+ Edit19.Text +'%'')');
    if trim(edit20.Text) <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.PHONE) like UPPER(''%'+ Edit20.Text +'%'')');
    if trim(edit4.Text)  <> '' then DM.Q_DEBETORS.SQL.Add(' and UPPER(c.BANK) like UPPER(''%'+ Edit4.Text +'%'')');
    DM.Q_DEBETORS.SQL.Add(' ) ');

    //DM.Q_DEBETORS.SQL.Add('ORDER BY C.NICK');
    DM.Q_DEBETORS.Open;
    if DM.Q_DEBETORS.RecordCount > 0 then
    begin
      gr_debetors.Visible := true;
      gr_debetors.SetFocus;
    end
    else
    begin
     gr_debetors.Visible := false;
    end;
  end;

end;


//
//  Очистка расширенного поиска
//
procedure Tdebetors.aClearSearchExecute(Sender: TObject);
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
  Edit4.Text  := '';

  DM.Q_DEBETORS.Close;
  DM.prichast.Close;

  Edit2.SetFocus;
end;


//
//  Находжение причастных по ФИО
//
procedure Tdebetors.BitBtn3Click(Sender: TObject);
begin
  if length(trim(Edit11.Text)) > 1 then
  begin
    dm.prichast.Close;
    dm.prichast.ParamByName('p1').AsString := '%' + AnsiUpperCase(Edit11.Text) + '%';
    dm.prichast.Open;
    dm.prichast.Locate('FIO',Edit11.Text,[loCaseInsensitive, loPartialKey]);
    gr_prichast.SetFocus;
  end;  
end;


//
//  Добавление дебитора
//
procedure Tdebetors.aNewExecute(Sender: TObject);
begin
  deb_edit := Tdeb_edit.Create(Application);
  try
    deb_edit.gr_close_deb.Visible := DM.b_addit;
    deb_edit.aSave.Enabled        := DM.b_edit;
    deb_edit.gr_close_deb.Enabled := DM.b_addit;

    DM.Q_CLIENTS.Filter           := 'DEB_CLIENT IS NULL';
    DM.Q_CLIENTS.Filtered         := true;
    DM.Q_CLIENTS.Open;
    deb_edit.state                := 1;
    deb_edit.id_group             := 0;

    deb_edit.ShowModal;
    DM.Q_CLIENTS.Close;
    
    if gr_debetors.Visible = true then gr_debetors.SetFocus
      else Edit2.SetFocus;
  finally
    deb_edit.Free;
  end;
end;


//
// Редактирование кредитора
//
procedure Tdebetors.aEditExecute(Sender: TObject);
begin
  if (( DM.Q_DEBETORS.Active = true ) and (DM.Q_DEBETORSID_DEBETORS.AsInteger > 0)) then
  begin
    deb_edit := Tdeb_edit.Create(Application);
    try
      deb_edit.Panel3.Tag := DM.Q_DEBETORSID_DEBETORS.AsInteger;
      deb_edit.gr_close_deb.Enabled := DM.b_addit;

      DM.Q_CLIENTS.Filter           := 'DEB_CLIENT='+DM.Q_DEBETORSID_CLIENTS.AsString;
      DM.Q_CLIENTS.Filtered         := true;
      DM.Q_CLIENTS.Open;
      DM.Q_CLIENTS.Locate('ID_CLIENTS', DM.Q_DEBETORSID_CLIENTS.AsInteger, []);
      deb_edit.gr_clients.Enabled := false;

      deb_edit.chb_old.EditValue        := DM.Q_DEBETORS.FieldByName('STATE').AsInteger;
      deb_edit.chb_beznal.EditValue     := DM.Q_DEBETORS.FieldByName('BEZNAL').AsInteger;
      deb_edit.edit_in_ru.EditValue     := DM.Q_DEBETORS.FieldByName('DEBET').AsInteger;
      deb_edit.edit_invoice.EditValue   := DM.Q_DEBETORS.FieldByName('CREDIT_DAYS').AsInteger;
      deb_edit.edit_info.EditValue      := DM.Q_DEBETORS.FieldByName('INFO').AsString;
      deb_edit.chb_debt.EditValue       := DM.Q_DEBETORS.FieldByName('RUBL').AsInteger;
      deb_edit.cxCurrencyEdit1.EditValue := DM.Q_DEBETORS.FieldByName('CHART').AsInteger;
      deb_edit.cxCheckBox1.EditValue    := DM.Q_DEBETORS.FieldByName('IS_LOCK').AsInteger;
      deb_edit.lcb_clients.EditValue    := DM.Q_DEBETORS.FieldByName('LOCK_FOR').Value;

      deb_edit.state    := 2;
      deb_edit.id_group := DM.Q_DEBETORS.FieldByName('ID_CLIENTS_GROUPS').Value;
      deb_edit.ShowModal;
      if gr_debetors.Visible = true then gr_debetors.SetFocus
         else Edit2.SetFocus;
    finally
      deb_edit.Free;
    end;

  end else ShowMessage('Нет данных для редактирования!');
end;


//
// Удаление дебетора
//
procedure Tdebetors.aDelExecute(Sender: TObject);
var idd: integer;
begin
  if ((DM.Q_DEBETORS.Active = true) and (DM.Q_DEBETORSID_DEBETORS.AsInteger > 0)) then
  begin
    if MessageDlg('Вы действительно хотите удалить дебетора?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin

      try
          idd := DM.Q_DEBETORSID_DEBETORS.AsInteger;
          with DM.OraStoredProc1 do
          begin
            Close;
            StoredProcName := 'cash_pkg.delete_debetor';
            Prepare;
            ParamByName('id_debetor_').AsInteger  := DM.Q_DEBETORSID_DEBETORS.AsInteger;
            Execute;
          end;

          if (DM.Q_DEBETORS.Active = true) then
          begin
            DM.Q_DEBETORS.Next;
            idd := DM.Q_DEBETORSID_DEBETORS.AsInteger;

            DM.Q_DEBETORS.Refresh;
            gr_debetors_v.DataController.LocateByKey(idd);
            //DM.Q_DEBETORS.Locate('ID_DEBETORS',idd,[]);
          end;

      except
        on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;

    end;
  end
  else ShowMessage('Нет данных для удаления!');
end;



//
//  Очистка фильтров по безнальным рублевым и старым
//
procedure Tdebetors.CheckBox5Click(Sender: TObject);
begin
  if checkbox5.Checked = true then
  begin
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox6.Checked := false;
    CheckBox7.Checked := false;
    CheckBox8.Checked := false;
    CheckBox9.Checked := false;
    CheckBox10.Checked := false;
  end;
end;


procedure Tdebetors.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked = true then begin CheckBox5.Checked := false; CheckBox8.Checked := false; end;
end;

procedure Tdebetors.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.Checked = true then begin CheckBox5.Checked := false; CheckBox7.Checked := false; end;
end;

procedure Tdebetors.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked = true then begin CheckBox5.Checked := false; CheckBox6.Checked := false; end;
end;

procedure Tdebetors.CheckBox8Click(Sender: TObject);
begin
  if checkbox8.Checked = true then begin CheckBox5.Checked := false; CheckBox2.Checked := false; end;
end;

procedure Tdebetors.CheckBox7Click(Sender: TObject);
begin
  if checkbox7.Checked = true then begin CheckBox5.Checked := false; CheckBox3.Checked := false; end;
end;

procedure Tdebetors.CheckBox6Click(Sender: TObject);
begin
  if checkbox6.Checked = true then begin CheckBox5.Checked := false; CheckBox4.Checked := false; end;
end;

procedure Tdebetors.CheckBox9Click(Sender: TObject);
begin
  if checkbox9.Checked = true then begin CheckBox5.Checked := false; CheckBox10.Checked := false; end;
end;

procedure Tdebetors.CheckBox10Click(Sender: TObject);
begin
  if checkbox10.Checked = true then begin CheckBox5.Checked := false; CheckBox9.Checked := false; end;
end;


//
//  Нажатие CTRL+N (поиск по НИКу)
//
procedure Tdebetors.q_search_nExecute(Sender: TObject);
begin
  Edit1.SetFocus;
end;


//
//  Нажатие CTRL+M (поиск по ФИО)
//
procedure Tdebetors.q_search_fExecute(Sender: TObject);
begin
  Edit2.SetFocus;
end;

procedure Tdebetors.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then SelectNext(ActiveControl as tWinControl, False, True);
  if (Key = VK_DOWN) then SelectNext(ActiveControl as tWinControl, True, True);
  if (Key = VK_RETURN) then aFilterOn.Execute;
end;

procedure Tdebetors.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then SelectNext(ActiveControl as tWinControl, False, True);
  if (Key = VK_DOWN) then SelectNext(ActiveControl as tWinControl, True, True);
  if (Key = VK_RETURN) then aFilterOn.Execute;
end;

procedure Tdebetors.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then SelectNext(ActiveControl as tWinControl, False, True);
  if (Key = VK_DOWN) then SelectNext(ActiveControl as tWinControl, True, True);
end;


//
// просмотр введенных операций
//
procedure Tdebetors.aLookExecute(Sender: TObject);
begin
  frm_operations := Tfrm_operations.Create(Application);
  try
    frm_operations.gr_debetors_vBRIEF.Visible := not (GetOfficeID = DM.id_office);
    frm_operations.fontsize := bc_fontsize.EditValue;
    frm_operations.showmodal;
  finally
    frm_operations.Free;
  end;
end;


//
//  Выделить все
//
procedure Tdebetors.SelectAllExecute(Sender: TObject);
begin
  gr_debetors_v.DataController.SelectAll;
end;


//
//  Экспорт в Excel
//
procedure Tdebetors.SaveAllExecute(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
     ExportGridToExcel(DM.SaveDialog.FileName, gr_debetors, True, False, True, 'xls');
     ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
  gr_debetors.SetFocus;
end;



//
//  Смотрим группу
//
procedure Tdebetors.N5Click(Sender: TObject);
var group_: String;
begin
  group_ := gr_debetors_vGROUP_NAME.EditValue;
  aFilterOff.Execute;
  aFilterOn.Execute;  
  gr_debetors_v.DataController.Filter.Clear;
  gr_debetors_vGROUP_NAME.DataBinding.AddToFilter(nil, foEqual, group_);
  gr_debetors_v.DataController.Filter.Active := True;
end;



//
//  Блокирую / снимаю блокировку кредитом с клиента
//
procedure Tdebetors.N8Click(Sender: TObject);
var idd: integer;
begin
      if MessageDlg('Вы действительно хотите изменить признак?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление дебетора
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin clients_pkg.save_block(:id_clients_, :block1_); end;');
          DM.Q_SQL.Prepare;
          DM.Q_SQL.ParamByName('id_clients_').Value := DM.Q_DEBETORS.FieldByName('ID_CLIENTS').AsInteger;
          DM.Q_SQL.ParamByName('block1_').Value := DM.Q_DEBETORS.FieldByName('block1').AsInteger;

          idd := DM.Q_DEBETORSID_DEBETORS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Q_SQL.Execute;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_DEBETORS.Refresh;
            gr_debetors_v.DataController.LocateByKey(idd);
            //DM.Q_DEBETORS.Locate('ID_DEBETORS',idd,[]);

            if gr_debetors.Visible = true then gr_debetors.SetFocus;
          except
            on E: Exception do
               MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
          End;
      end;
end;


//
//  помечаем \ снимаем пометку с дебитора
//
procedure Tdebetors.N10Click(Sender: TObject);
var idd: integer;
begin

      if MessageDlg('Вы действительно хотите изменить пометку?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление дебетора
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin clients_pkg.save_mark(:id_debetor_, :mark_); end;');
          DM.Q_SQL.Prepare;
          DM.Q_SQL.ParamByName('id_debetor_').Value := DM.Q_DEBETORS.FieldByName('ID_DEBETORS').AsInteger;
          DM.Q_SQL.ParamByName('mark_').Value := DM.Q_DEBETORS.FieldByName('mark').AsInteger;

          idd := DM.Q_DEBETORSID_DEBETORS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Q_SQL.Execute;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_DEBETORS.Refresh;
            gr_debetors_v.DataController.LocateByKey(idd);
            //DM.Q_DEBETORS.Locate('ID_DEBETORS',idd,[]);

            if gr_debetors.Visible = true then gr_debetors.SetFocus;
          except
            on E: Exception do
               MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
          End;
      end;

end;


procedure Tdebetors.N12Click(Sender: TObject);
begin
  gr_debetors_vGROUP_NAME.GroupIndex := 0;
end;

procedure Tdebetors.N13Click(Sender: TObject);
begin
  gr_debetors_vGROUP_NAME.GroupIndex := -1;
end;

procedure Tdebetors.N14Click(Sender: TObject);
begin
  gr_debetors_v.DataController.Groups.FullCollapse;
end;

procedure Tdebetors.N15Click(Sender: TObject);
begin
  gr_debetors_v.DataController.Groups.FullExpand;
end;

//
//  Бегаем стрелками по полям в поиске
//
procedure Tdebetors.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_RETURN) then
    SelectNext(ActiveControl as tWinControl, True, True);
  if (key = VK_UP) then
    SelectNext(ActiveControl as tWinControl, False, True);
end;


//
//  Нажимаем CTRL+ENTER
//
procedure Tdebetors.ctrl_enterExecute(Sender: TObject);
begin
  if (gr_debetors.isFocused = true) then gr_debetors_vDblClick(self)
end;




// Выделенным проставить
procedure Tdebetors.btnSetMultiClick(Sender: TObject);
var i: integer;
begin
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('begin cash_pkg.save_multi(:p_id_debetor, :p_beznal, :p_old, :p_rubl, :p_inv_date, :p_info); end;');
  DM.Q_SQL.Prepare;
  DM.Q_SQL.ParamByName('p_beznal').Value := 0;
  DM.Q_SQL.ParamByName('p_old').Value    := 0;
  DM.Q_SQL.ParamByName('p_rubl').Value   := 0;

  frmMultiEdit := TfrmMultiEdit.Create(Application);
  try
    if frmMultiEdit.ShowModal = mrOk then
    begin
      if frmMultiEdit.chb_beznal.Checked then
        DM.Q_SQL.ParamByName('p_beznal').Value := 1;
      if frmMultiEdit.chb_old.Checked then
        DM.Q_SQL.ParamByName('p_old').Value := 1;
      if frmMultiEdit.chb_debt.Checked then
        DM.Q_SQL.ParamByName('p_rubl').Value := 1;

      DM.Q_SQL.ParamByName('p_inv_date').Value   := frmMultiEdit.edit_invoice.EditValue;
      DM.Q_SQL.ParamByName('p_info').Value   := frmMultiEdit.edit_info.EditValue;

      for I := 0 to gr_debetors_v.Controller.SelectedRowCount-1 do
      begin
        DM.Q_SQL.ParamByName('p_id_debetor').Value := gr_debetors_v.Controller.SelectedRows[i].Values[_gr_debetors_vID_DEBETORS.Index];
        DM.Q_SQL.Execute
      end;
      DM.OraSession1.Commit;
      aRefresh.Execute;
    end;
  finally
    frmMultiEdit.Free;
  end;
end;


procedure Tdebetors.btnSettingsClick(Sender: TObject);
begin
  frmSettings := TfrmSettings.Create(Application);
  try
    frmSettings.ShowModal;
  finally
    frmSettings.Free;
  end;
end;

//
// Полный просмотр карточки дебетора
//
procedure Tdebetors.gr_debetors_vDblClick(Sender: TObject);
var sql: string;
    id: integer;
begin
  if gr_debetors_v.ViewData.RecordCount > 0 then
  begin
    if (gr_debetors_v.Controller.FocusedColumn.Caption = 'Группа') then
      N5Click(Sender)
    else
    begin
      client_debt             := Tclient_debt.Create(Application);
      try
        client_debt.id_group_   := gr_debetors_v.DataController.DataSet.FieldByName('ID_CLIENTS_GROUPS').AsInteger;
        client_debt.id_debetor_ := gr_debetors_v.DataController.DataSet.FieldByName('ID_DEBETORS').AsInteger;
        client_debt.gr_deps_vDISCOUNT.Visible   := DM.b_addit;
        client_debt.gr_deps_vDISC_PROC.Visible  := DM.b_addit;
        client_debt.gr_debetors_vSALES.Visible  := DM.b_addit;
        client_debt.gr_deps_vITOG_DISCOUNT.Visible  := DM.b_addit;
        client_debt.gr_deps_vDOLG.Visible       := DM.b_addit;
        client_debt.dxBarLargeButton7.Enabled   := DM.b_print;


        client_debt.gr_deps.Font.Size     := gr_debetors.Font.Size;
        client_debt.gr_deps_all.Font.Size := gr_debetors.Font.Size;
        client_debt.gr_debetors.Font.Size := gr_debetors.Font.Size;
        client_debt.st_dolg.Font.Size     := gr_debetors.Font.Size;

        
        if checkbox1.Checked or checkbox11.Checked then
        begin
          client_debt.f_begin.EditValue  := de_begin.EditValue;
          client_debt.f_end.EditValue    := de_end.EditValue;
          client_debt.chb_filter.Checked := true;
        end
        else
        begin
          client_debt.f_begin.EditValue  := Now;
          client_debt.f_end.EditValue    := Now;
          client_debt.chb_filter.Checked := false;
        end;

        if (DM.b_addit) then
          client_debt.chPrintAll.Visible          := ivAlways
        else
          client_debt.chPrintAll.Visible          := ivNever;

        client_debt.aNew.Enabled    := aNew.Enabled;
        client_debt.aEdit.Enabled   := aEdit.Enabled;
        client_debt.aDelete.Enabled := aDel.Enabled;
        client_debt.dxBarLargeButton7.Enabled := dxBarLargeButton7.Enabled;

        client_debt.N6.Enabled    := aDel.Enabled;
        client_debt.N8.Enabled    := aEdit.Enabled;

        client_debt.ShowModal;
      finally
        client_debt.Free;
      end;
  end;
end;

end;



procedure Tdebetors.gr_debetors_vIS_LOCKGetCellHint(
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

procedure Tdebetors.gr_debetors_vMAX_DATEInitFilteringDateRanges(
  Sender: TcxCustomGridTableItem; ADateRanges: TcxGridDateRanges);
begin
  ADateRanges.Add(TcxGridDayRange);
end;


//
//  Просмотр данных о клиенте
//
procedure Tdebetors.mm_clientClick(Sender: TObject);
begin
  if gr_debetors_v.ViewData.RecordCount > 0 then
  begin
    frm_full_info             := Tfrm_full_info.Create(Application);
    try
      frm_full_info.SelNom.ParamByName('ID_CLIENTS_').Value := _gr_debetors_vID_CLIENTS.EditValue;
      frm_full_info.SelNom.Open;
      frm_full_info.ShowModal;
      frm_full_info.SelNom.Close;
    finally
      frm_full_info.Free;
    end;
  end;
end;



procedure Tdebetors.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ( key = VK_INSERT ) then
  begin
    Edit1.Text := DM.prichastNick.AsString;
    aClearSearch.Execute;
    aFilterOn.Execute;
    DM.Q_DEBETORS.Locate('NICK',Edit1.Text,[]);
  end;
end;


//
//  Скопировать в буфер обмена
//
procedure Tdebetors.mm_buferClick(Sender: TObject);
var i: integer;
    str : string;
begin
  for i:=0 to (gr_debetors_v.DataController.Summary.FooterSummaryItems.Count-1) do
  begin
    str := str + VarToStr(gr_debetors_v.DataController.Summary.FooterSummaryValues[i]) + '  ';
  end;
  clipboard.SetTextBuf(PChar(str));
end;













//
//  Печать списка дебиторов
//
procedure Tdebetors.aPrint1Execute(Sender: TObject);
var i: integer;
begin
  if ((gr_debetors.Visible = true) and (dm.Q_DEBETORS.RecordCount > 0)) then
  begin
    try
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := true;
      dm.Q_DEBETORS.DisableControls;
      DM.frxReport1.LoadFromFile(path+'raports\debitors.fr3');
      DM.frxReport1.ShowReport;
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;
      dm.Q_DEBETORS.EnableControls;
    except
      on E: Exception do
      begin
        gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;
        dm.Q_DEBETORS.EnableControls;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;

  end;
end;

//
//  Печать карточки
//
procedure Tdebetors.aPrint2Execute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if ((gr_debetors.Visible = true) and (dm.Q_DEBETORS.RecordCount > 0)) then
  begin
    try
      DM.Q_CLIENT_DEBT.Open;
      dm.frx_client_debt.DataSource := DM.Q_CLIENT_DEBT_DS;
      DM.frxReport1.LoadFromFile(path+'raports\client_debt.fr3');

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

      DM.frxReport1.ShowReport;
      DM.Q_CLIENT_DEBT.Close;
    except
      on E: Exception do
         begin
           DM.Q_CLIENT_DEBT.Close;
           MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
         end;
    End;
  end;
end;



//Печать спика дебиторов
procedure Tdebetors.aPrintListExecute(Sender: TObject);
begin
  if ((gr_debetors.Visible = true) and (dm.Q_DEBETORS.RecordCount > 0)) then
  begin
    try
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := true;
      dm.Q_DEBETORS.DisableControls;
      DM.frxReport1.LoadFromFile(path+'raports\debitors.fr3');
      DM.frxReport1.ShowReport;
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;
      dm.Q_DEBETORS.EnableControls;
    except
      on E: Exception do
      begin
        gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;
        dm.Q_DEBETORS.EnableControls;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
  end;
end;

//Печать отчета дебиторов
procedure Tdebetors.aPrintRaportExecute(Sender: TObject);
var filter_str: string;
begin
  if (not gr_debetors.Visible) or (dm.Q_DEBETORS.RecordCount = 0) then
     exit;

  filter_str := dm.Q_DEBETORS.FilterSQL;

  try
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := true;
      gr_debetors_v.DataController.Filter.Active := false;
      dm.Q_DEBETORS.FilterSQL := ' case when id_clients_groups < 3 then chart2 else chart_group end <> 0';
      dm.Q_DEBETORS.Filtered  := true;
      dm.Q_DEBETORS.DisableControls;
      DM.frxReport1.LoadFromFile(path+'raports\debitors.fr3');
      DM.frxReport1.ShowReport;
      gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;

      dm.Q_DEBETORS.FilterSQL := filter_str;
      dm.Q_DEBETORS.EnableControls;
      gr_debetors_v.DataController.Filter.Active := true;

  except
      on E: Exception do
      begin
        gr_debetors_v.DataController.Filter.AutoDataSetFilter := false;
        dm.Q_DEBETORS.EnableControls;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;

end;


// Просмотр движения по таре
procedure Tdebetors.aShowCargoExecute(Sender: TObject);
begin
  if gr_debetors_v.ViewData.RecordCount > 0 then
    ShowCargo(dm.OraSession1, gr_debetors_v.DataController.DataSet.FieldByName('ID_CLIENTS').AsInteger, gr_debetors_v.DataController.DataSet.FieldByName('ID_CLIENTS_GROUPS').AsInteger);
end;


procedure Tdebetors.btnCargoClick(Sender: TObject);
begin
    ShowCargo(dm.OraSession1, 0, 0);
end;


// Просмотр групп клиентов с разными показателями в клиентах
procedure Tdebetors.mn_get_errorClick(Sender: TObject);
begin
    frmBadClients             := TfrmBadClients.Create(Application);
    try
      frmBadClients.ShowModal;
    finally
      frmBadClients.Free;
    end;
end;



end.
