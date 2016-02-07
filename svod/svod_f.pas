unit svod_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, jpeg,
  ComCtrls, Mask, ActnList, DB, StrUtils, frxExportCSV, frxExportRTF,
  frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxDBSet, cxGridCustomView,
  fs_iinterpreter, frxDesgn, DBCtrls, Menus, cxGraphics, cxCheckComboBox,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  frxExportMail, cxButtonEdit, cxBlobEdit, dxBarExtItems, cxBarEditItem, dxBar,
  cxClasses, ImgList, cxStyles, cxLookAndFeelPainters, cxCurrencyEdit,
  cxButtons, cxCalendar, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxGridExportLink, useful_functions,
  cxImage, cxLabel, ShellApi, PI_Library, Ora, cxGridDBTableView,
  cxImageComboBox, PI_Library_reg, IniFiles, Globals;

type
  Tsvod = class(TForm)
    Panel5: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    ActionList1: TActionList;
    aNewRecord: TAction;
    aEditRecord: TAction;
    aDelRecord: TAction;
    aRaznos: TAction;
    aSearch: TAction;
    aOperations: TAction;
    Label5: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    aRoznica: TAction;
    aOpt: TAction;
    aClearFilter: TAction;
    aRefresh: TAction;
    aShow: TAction;
    ShowKass1: TAction;
    ShowKass2: TAction;
    ShowKass3: TAction;
    ShowKassMain: TAction;
    CtrlEnter: TAction;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxDesigner1: TfrxDesigner;
    deleted_: TAction;
    frxReport1: TfrxReport;
    ActionList2: TActionList;
    export_search: TAction;
    select_all: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    sr_cashbook: TcxStyleRepository;
    st_green: TcxStyle;
    st_otdel: TcxStyle;
    st_kass: TcxStyle;
    st_notprimary: TcxStyle;
    st_primary: TcxStyle;
    cxStyle1: TcxStyle;
    stSelect: TcxStyle;
    st_primary2: TcxStyle;
    stSelect2: TcxStyle;
    cxImageList1: TcxImageList;
    bdc_main: TdxBarDockControl;
    bdc_legend: TdxBarDockControl;
    bm_cashbook: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    bm_cashbookBar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    bb_close: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    bb_summoney: TdxBarButton;
    bb_endcash: TdxBarButton;
    bb_delcash: TdxBarButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    btn_help: TdxBarLargeButton;
    bb_statistic: TdxBarButton;
    dxBarStatic9: TdxBarStatic;
    de_kassdate: TcxDateEdit;
    btn_go: TcxButton;
    btn_course: TcxButton;
    cu_b_usd: TcxCurrencyEdit;
    cu_f_usd: TcxCurrencyEdit;
    cu_b_eur: TcxCurrencyEdit;
    cu_f_eur: TcxCurrencyEdit;
    cu_b_usdeur: TcxCurrencyEdit;
    cu_f_usdeur: TcxCurrencyEdit;
    cu_b_eurusd: TcxCurrencyEdit;
    cu_f_eurusd: TcxCurrencyEdit;
    dxBarLargeButton8: TdxBarLargeButton;
    aStat: TAction;
    dxBarSubItem2: TdxBarSubItem;
    N3: TMenuItem;
    aPrintAll: TAction;
    dxBarStatic10: TdxBarStatic;
    gr_cashbook: TcxGrid;
    gr_cashbook_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CASH: TcxGridDBBandedColumn;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    _gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vOPERATION: TcxGridDBBandedColumn;
    gr_cashbook_vNICK: TcxGridDBBandedColumn;
    gr_cashbook_vFIO: TcxGridDBBandedColumn;
    gr_cashbook_vT_SHORT: TcxGridDBBandedColumn;
    gr_cashbook_vINVOICE: TcxGridDBBandedColumn;
    gr_cashbook_vSUMM: TcxGridDBBandedColumn;
    gr_cashbook_vIN_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vIN_USD: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_USD: TcxGridDBBandedColumn;
    gr_cashbook_vIN_EU: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_EU: TcxGridDBBandedColumn;
    gr_cashbook_vINFO: TcxGridDBBandedColumn;
    gr_cashbook_vDDATE_IN: TcxGridDBBandedColumn;
    _gr_cashbook_vT_LONG: TcxGridDBBandedColumn;
    _gr_cashbook_vR_PAYDESK: TcxGridDBBandedColumn;
    _gr_cashbook_vR_DDATE: TcxGridDBBandedColumn;
    _gr_cashbook_vDDATE_DONE: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR: TcxGridDBBandedColumn;
    gr_cashbook_l: TcxGridLevel;
    de_kassdate2: TcxDateEdit;
    Label1: TLabel;
    cb_dates: TCheckBox;
    aPrint: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    bst_deleted: TdxBarStatic;
    gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vD_CHECKED: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR2: TcxGridDBBandedColumn;
    gr_cashbook_vCOR_DATE: TcxGridDBBandedColumn;
    gr_cashbook_vID_CLIENTS_GROUPS: TcxGridDBBandedColumn;
    gr_cashbook_vGROUP_NAME: TcxGridDBBandedColumn;
    nnAnalize: TMenuItem;
    gr_cashbook_vCC: TcxGridDBBandedColumn;
    dxBarStatic11: TdxBarStatic;
    stNumber: TcxStyle;
    dxBarStatic12: TdxBarStatic;
    dxBarLargeButton11: TdxBarLargeButton;
    aAnalize: TAction;
    Label3: TLabel;
    cbOffices: TcxImageComboBox;
    gr_cashbook_vID_OFFICE: TcxGridDBBandedColumn;
    gr_cashbook_vBRIEF: TcxGridDBBandedColumn;
    blbPrint: TdxBarLargeButton;
    bpmPrint: TdxBarPopupMenu;
    blbSettings: TdxBarLargeButton;
    N4: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    bc_fontsize: TcxBarEditItem;
    mnExpressAcc: TMenuItem;
    mnExpressCut: TMenuItem;
    mnExpressPot: TMenuItem;
    mnExpressDiz: TMenuItem;
    mnExpressUpac: TMenuItem;
    gr_cashbook_vCASH_SEQ: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure aRoznicaExecute(Sender: TObject);
    procedure aOptExecute(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure ShowKass1Execute(Sender: TObject);
    procedure ShowKass2Execute(Sender: TObject);
    procedure ShowKass3Execute(Sender: TObject);
    procedure ShowKassMainExecute(Sender: TObject);
    procedure CtrlEnterExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure select_allExecute(Sender: TObject);
    procedure export_searchExecute(Sender: TObject);
    procedure aNewRecordExecute(Sender: TObject);
    procedure aEditRecordExecute(Sender: TObject);
    procedure aDelRecordExecute(Sender: TObject);
    procedure aRaznosExecute(Sender: TObject);
    procedure bb_closeClick(Sender: TObject);
    procedure aOperationsExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aShowExecute(Sender: TObject);
    procedure deleted_Execute(Sender: TObject);
    procedure btn_courseClick(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure aStatExecute(Sender: TObject);
    procedure aPrintAllExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure de_kassdateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure _gr_cashbook_vDDATE_DONEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gr_cashbook_vDDATE_INGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cb_datesClick(Sender: TObject);
    procedure ShowKass(param: integer);
    function frxReport1UserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure nnAnalizeClick(Sender: TObject);
    procedure gr_cashbook_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aAnalizeExecute(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure gr_cashbook_vCOR_DATEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure blbSettingsClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure mnExpressAccClick(Sender: TObject);
    procedure OpenForNumberAnalyze(param_: string);
    procedure mnExpressCutClick(Sender: TObject);
    procedure mnExpressPotClick(Sender: TObject);
    procedure mnExpressDizClick(Sender: TObject);
    procedure mnExpressUpacClick(Sender: TObject);
  private
    pnl_msg: TPanel;
    { Private declarations }
  public
    path: string;
    { Public declarations }
  end;

var
  svod: Tsvod;

implementation

uses DataM, nakl_edit_f, debt_f,
  statistic_f, help_cash_f, import_debet_f, operations_f, deleted_form,
  Usvod_curr, UStat, UCashSettings;

{$R *.dfm}

procedure Tsvod.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office := cbOffices.EditValue;
  if dm.Q_CASH.Active then
     aShow.Execute;
end;


//
// Открытие формы с дебиторами
//
procedure Tsvod.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  Ini : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);

  AStoreKey     := path + '/ini/'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'svod';
  AOptions := [];
  gr_cashbook_v.RestoreFromRegistry(AStoreKey, False, False, AOptions, ASaveViewName);






  Ini := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'_font.ini');
  try
    bc_fontsize.EditValue := Ini.ReadString('FontSize', 'Value', '9');
    gr_cashbook.Font.Size := bc_fontsize.EditValue;
    st_primary.Font.Size  := bc_fontsize.EditValue;
    st_primary2.Font.Size := bc_fontsize.EditValue;
  finally
    Ini.Free;
  end;





  Ini := TIniFile.Create(path + '\ini\print_setting.ini' );
  try
    def_OKUD := Ini.ReadString('OKUD','value','');
    def_OKPO := Ini.ReadString('OKPO', 'value', '');
    def_title := Ini.ReadString('Title', 'value', '') + Chr(10) + Ini.ReadString('Title', 'value2', '');
  finally
    Ini.Free;
  end;



    cbOffices.Enabled := (GetOfficeID = 1);
    gr_cashbook_vBRIEF.Visible := not (GetOfficeID = DM.id_office); //cbOffices.Enabled;

    if (cbOffices.Enabled) then
    begin
      try
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Q_SQL.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      cbOffices.Properties.OnChange := nil;
      FillImgComboCx(DM.Q_SQL, cbOffices, 'Все');
      DM.Q_SQL.Close;

      cbOffices.EditValue := DM.id_office;
      cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
    end;


  gr_cashbook_v.OptionsData.Editing := dm.b_edit;
  aNewRecord.Enabled                := dm.b_edit;
  aEditRecord.Enabled               := dm.b_edit;
  aDelRecord.Enabled                := dm.b_delete;
  aRaznos.Enabled                   := dm.b_edit;
  aPrint.Enabled                    := dm.b_print;
  aPrintAll.Enabled                 := dm.b_print;
  export_search.Enabled             := dm.b_print;
  if (dm.b_addit) then bst_deleted.Visible := ivAlways else bst_deleted.Visible := ivNever;

  de_kassdate.EditValue  := Date;
  de_kassdate2.EditValue := Date;
  btn_courseClick(Sender);
end;

//
// Закрытие формы с дебиторами
//
procedure Tsvod.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AStoreKey     := path + '/ini/'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'svod';
  AOptions := [];
  gr_cashbook_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Закрываем
//
procedure Tsvod.bb_closeClick(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then Close;
end;



// Смена шрифта
procedure Tsvod.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_cashbook.Font.Size := bc_fontsize.EditValue;
  st_primary.Font.Size  := bc_fontsize.EditValue;
  st_primary2.Font.Size := bc_fontsize.EditValue;
  try
    RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'_font.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;

//
//  Выделяем все
//
procedure Tsvod.select_allExecute(Sender: TObject);
begin
  gr_cashbook_v.DataController.SelectAll;
end;


//
//  Сохраняем выделенное
//
procedure Tsvod.export_searchExecute(Sender: TObject);
begin
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, gr_cashbook, True, False, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    gr_cashbook.SetFocus;
  except
    NULL;
  end;
end;


//
//  По ENTER на дате ищем кассовый день
//
procedure Tsvod.de_kassdateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    de_kassdate.PostEditValue;
    if (cb_dates.Checked) then
      de_kassdate2.PostEditValue;
    aShow.Execute;
  end;
end;


//
//  Обновим курсы
//
procedure Tsvod.btn_courseClick(Sender: TObject);
begin
  try
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin dicts.get_curse(:DDATE_, :CURSOR_); end;');
    DM.Q_SQL.ParamByName('DDATE_').AsDate := de_kassdate.Date;
    DM.Q_SQL.ParamByName('CURSOR_').AsCursor;
    DM.Q_SQL.Open;

    cu_b_usd.Value    := DM.Q_SQL.FieldByName('USD').AsFloat;
    cu_b_eur.Value    := DM.Q_SQL.FieldByName('EUR').AsFloat;
    cu_b_usdeur.Value := DM.Q_SQL.FieldByName('USD_EUR').AsFloat;
    cu_b_eurusd.Value := DM.Q_SQL.FieldByName('EUR_USD').AsFloat;
    cu_f_usd.Value    := DM.Q_SQL.FieldByName('SHEV_USD').AsFloat;
    cu_f_eur.Value    := DM.Q_SQL.FieldByName('SHEV_EUR').AsFloat;
    cu_f_usdeur.Value := DM.Q_SQL.FieldByName('SHEV_USD_EUR').AsFloat;
    cu_f_eurusd.Value := DM.Q_SQL.FieldByName('SHEV_EUR_USD').AsFloat;
    Label5.Caption    := 'ЦБ на ' + DateToStr(DM.Q_SQL.FieldByName('DDATE').AsDateTime);
    DM.Q_SQL.Close;
    if (gr_cashbook.Visible = true) then
      gr_cashbook.SetFocus;
  except
    on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
  End;
end;


//
//  Показываем данные
//
procedure Tsvod.aShowExecute(Sender: TObject);
begin
  try
    btn_go.SetFocus;
    gr_cashbook.Visible := true;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    DM.Q_CASH.Close;
    DM.Q_CASH.ParamByName('p_date1').AsDate := de_kassdate.EditValue;
    if (cb_dates.Checked) then
      DM.Q_CASH.ParamByName('p_date2').AsDate := de_kassdate2.EditValue
    else
      DM.Q_CASH.ParamByName('p_date2').AsDate := de_kassdate.EditValue;
    DM.Q_CASH.Open;

    btn_courseClick(Sender);

    pnl_msg.Free;
    gr_cashbook.SetFocus;

  except
    on E: Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  end;
end;


















//
//  Обновление данных
//
procedure Tsvod.aRefreshExecute(Sender: TObject);
var idd : integer;
begin
  try
    if DM.Q_CASH.Active = TRUE then
    begin
      pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      idd := DM.Q_CASHID_CASH.AsInteger;
      DM.Q_CASH.Refresh;
      gr_cashbook_v.DataController.LocateByKey(idd);
      //DM.Q_CASH.Locate('ID_CASH',idd,[]);

      pnl_msg.Free;
    end;

    if (gr_cashbook.Visible) then
       gr_cashbook.SetFocus;

  except
    on E: Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  End;
end;


//
//  Помощь
//
procedure Tsvod.btn_helpClick(Sender: TObject);
begin
  help_cash := Thelp_cash.Create(Application);
  try
    help_cash.showmodal;
    if (gr_cashbook.Visible) then
      gr_cashbook.SetFocus;
  finally
    help_cash.Free;
  end;
end;


// Вкл/выкл вторую дату
procedure Tsvod.cb_datesClick(Sender: TObject);
begin
  de_kassdate2.Enabled := cb_dates.Checked;
end;


//
//  Статистика по кассам
//
procedure Tsvod.aStatExecute(Sender: TObject);
var i: integer;
    sum, sum_1, sum_2, sum_3, sum_4, sum_5, sum_6, sum_d: real;
begin
  if not gr_cashbook_v.DataController.DataSet.Active or gr_cashbook_v.DataController.DataSet.IsEmpty then exit;

statistic := Tstatistic.Create(Application);
try
  with statistic.cdsItogo do
  begin
    Close;
    ParamByName('p_cash').AsInteger := 0;
    ParamByName('p_date_b').AsDate := de_kassdate.EditValue;
    if cb_dates.Checked then
      ParamByName('p_date_e').AsDate := de_kassdate2.EditValue
    else
      ParamByName('p_date_e').AsDate := de_kassdate.EditValue;
    ParamByName('p_id_office').AsInteger := DM.id_office;
    Open;
  end;

  with statistic.cdsItogoDD do
  begin
    Close;
    ParamByName('p_cash').AsInteger := 0;
    ParamByName('p_date_b').AsDate := de_kassdate.EditValue;
    if cb_dates.Checked then
      ParamByName('p_date_e').AsDate := de_kassdate2.EditValue
    else
      ParamByName('p_date_e').AsDate := de_kassdate.EditValue;
    ParamByName('p_id_office').AsInteger := DM.id_office;
    Open;
  end;


  sum   := 0;
  sum_1 := 0;
  sum_2 := 0;
  sum_3 := 0;
  sum_4 := 0;
  sum_5 := 0;
  sum_6 := 0;
  sum_d := 0;

  statistic.StringGrid1.Cells[1,0] := 'Накладные';
  statistic.StringGrid1.Cells[2,0] := 'Приход, руб';
  statistic.StringGrid1.Cells[3,0] := 'Расход, руб';
  statistic.StringGrid1.Cells[4,0] := 'Приход, $';
  statistic.StringGrid1.Cells[5,0] := 'Расход, $';
  statistic.StringGrid1.Cells[6,0] := 'Приход, €';
  statistic.StringGrid1.Cells[7,0] := 'Расход, €';

  statistic.StringGrid1.Cells[0,1] := 'Касса №1';
  statistic.StringGrid1.Cells[0,2] := 'Касса №2';
  statistic.StringGrid1.Cells[0,3] := 'Касса №3';
  statistic.StringGrid1.Cells[0,4] := 'Главная';
  statistic.StringGrid1.Cells[0,5] := 'Итого';

  for i:=1 to 4 do
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT SUM(SUMM) as sum, SUM(IN_RUB) as sum1, SUM(OUT_RUB) as sum2, SUM(IN_USD) as sum3, SUM(OUT_USD) as sum4, SUM(IN_EU) as sum5, SUM(OUT_EU) as sum6 FROM CASH ');
    DM.Q_SQL.SQL.Add(' WHERE (ID_OFFICE = :v_office or :v_office = 0) and OPERATION<>26 and R_DDATE>=:P1 and R_DDATE<=:P2 AND R_PAYDESK='+ inttostr(i));
    DM.Q_SQL.Params.ParamByName('P1').AsDate := de_kassdate.EditValue;
    DM.Q_SQL.ParamByName('v_office').AsInteger := DM.id_office;
    if (cb_dates.Checked) then
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate2.EditValue
    else
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate.EditValue;
    DM.Q_SQL.Open;


    sum := sum + DM.Q_SQL.FieldByName('sum').AsCurrency;
    sum_1 := sum_1 + DM.Q_SQL.FieldByName('sum1').AsCurrency;
    sum_2 := sum_2 + DM.Q_SQL.FieldByName('sum2').AsCurrency;
    sum_3 := sum_3 + DM.Q_SQL.FieldByName('sum3').AsCurrency;
    sum_4 := sum_4 + DM.Q_SQL.FieldByName('sum4').AsCurrency;
    sum_5 := sum_5 + DM.Q_SQL.FieldByName('sum5').AsCurrency;
    sum_6 := sum_6 + DM.Q_SQL.FieldByName('sum6').AsCurrency;

    statistic.StringGrid1.Cells[1,i] := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency);
    statistic.StringGrid1.Cells[2,i] := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency);
    statistic.StringGrid1.Cells[3,i] := CurrToStr(DM.Q_SQL.FieldByName('sum2').AsCurrency);
    statistic.StringGrid1.Cells[4,i] := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency);
    statistic.StringGrid1.Cells[5,i] := CurrToStr(DM.Q_SQL.FieldByName('sum4').AsCurrency);
    statistic.StringGrid1.Cells[6,i] := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency);
    statistic.StringGrid1.Cells[7,i] := CurrToStr(DM.Q_SQL.FieldByName('sum6').AsCurrency);
  end;

  statistic.StringGrid1.Cells[1,5] := CurrToStr(sum);
  statistic.StringGrid1.Cells[2,5] := CurrToStr(sum_1);
  statistic.StringGrid1.Cells[3,5] := CurrToStr(sum_2);
  statistic.StringGrid1.Cells[4,5] := CurrToStr(sum_3);
  statistic.StringGrid1.Cells[5,5] := CurrToStr(sum_4);
  statistic.StringGrid1.Cells[6,5] := CurrToStr(sum_5);
  statistic.StringGrid1.Cells[7,5] := CurrToStr(sum_6);


  sum := 0;
  sum_1 := 0;
  sum_2 := 0;
  sum_3 := 0;
  sum_4 := 0;
  sum_5 := 0;
  sum_6 := 0;

  for i:=1 to 4 do
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT SUM(SUMM) as sum, SUM(IN_RUB) as sum1, SUM(OUT_RUB) as sum2, SUM(IN_USD) as sum3, SUM(OUT_USD) as sum4, SUM(IN_EU) as sum5, SUM(OUT_EU) as sum6 FROM CASH ');
    DM.Q_SQL.SQL.Add(' WHERE (ID_OFFICE = :v_office or :v_office = 0) and R_DDATE>=:P1 and R_DDATE<=:P2 AND R_PAYDESK='+ inttostr(i));
    DM.Q_SQL.Params.ParamByName('P1').AsDate   := de_kassdate.EditValue;
    DM.Q_SQL.ParamByName('v_office').AsInteger := DM.id_office;
    if (cb_dates.Checked) then
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate2.EditValue
    else
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate.EditValue;
    DM.Q_SQL.Open;

    if i=1 then
    begin
      statistic.label6.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' рублей';
      statistic.label7.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
      statistic.label8.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
    end;

    if i=2 then
    begin
      statistic.label9.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' рублей';
      statistic.label10.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
      statistic.label11.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
    end;

    if i=3 then
    begin
      statistic.label12.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' рублей';
      statistic.label13.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
      statistic.label14.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
    end;

    if i=4 then
    begin
      statistic.label19.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' рублей';
      statistic.label20.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
      statistic.label21.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
    end;

    sum   := sum   + DM.Q_SQL.FieldByName('sum').AsCurrency;
    sum_1 := sum_1 + DM.Q_SQL.FieldByName('sum1').AsCurrency;
    sum_2 := sum_2 + DM.Q_SQL.FieldByName('sum2').AsCurrency;
    sum_3 := sum_3 + DM.Q_SQL.FieldByName('sum3').AsCurrency;
    sum_4 := sum_4 + DM.Q_SQL.FieldByName('sum4').AsCurrency;
    sum_5 := sum_5 + DM.Q_SQL.FieldByName('sum5').AsCurrency;
    sum_6 := sum_6 + DM.Q_SQL.FieldByName('sum6').AsCurrency;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT SUM(SUMM) as sum FROM CASH WHERE (ID_OFFICE = :v_office or :v_office = 0) and R_DDATE>=:P1 AND R_DDATE<=:P2 AND R_PAYDESK=0 and PAYDESK='+ inttostr(i));
    DM.Q_SQL.ParamByName('v_office').AsInteger := DM.id_office;
    DM.Q_SQL.Params.ParamByName('P1').AsDate   := de_kassdate.EditValue;
    if (cb_dates.Checked) then
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate2.EditValue
    else
      DM.Q_SQL.ParamByName('P2').AsDate := de_kassdate.EditValue;
    DM.Q_SQL.Open;

    if i=1 then
      statistic.label31.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

    if i=2 then
      statistic.label32.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

    if i=3 then
      statistic.label33.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

    if i=4 then
      statistic.label34.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

    sum_d := sum_d + DM.Q_SQL.FieldByName('sum').AsCurrency;
  end;

  statistic.label15.Caption := CurrToStr(sum_1 - sum_2) + ' рублей';
  statistic.label16.Caption := CurrToStr(sum_3 - sum_4) + ' $ США';
  statistic.label17.Caption := CurrToStr(sum_5 - sum_6) + ' евро';
  statistic.label35.Caption := CurrToStr(sum_d) + ' рублей';



  if DM.Q_CASH.Locate('R_PAYDESK;OPERATION', VarArrayOf([1, 26]), []) then
    statistic.Label27.Caption := 'Рублей = ' + CurrToStr(Dm.Q_CASHIN_RUB.AsCurrency) + #9 + 'USD = ' + CurrToStr(Dm.Q_CASHIN_USD.AsCurrency) + #9 + 'EUR = ' + CurrToStr(Dm.Q_CASHIN_EU.AsCurrency)
  else
    statistic.Label27.Caption := 'Рублей = 0'+ #9 +'USD = 0'+ #9 +'EUR = 0';

  if DM.Q_CASH.Locate('R_PAYDESK;OPERATION', VarArrayOf([2, 26]), []) then
    statistic.Label28.Caption := 'Рублей = ' + CurrToStr(Dm.Q_CASHIN_RUB.AsCurrency) + #9 + 'USD = ' + CurrToStr(Dm.Q_CASHIN_USD.AsCurrency) + #9 + 'EUR = ' + CurrToStr(Dm.Q_CASHIN_EU.AsCurrency)
  else
    statistic.Label28.Caption := 'Рублей = 0'+ #9 +'USD = 0'+ #9 +'EUR = 0';

  if DM.Q_CASH.Locate('R_PAYDESK;OPERATION', VarArrayOf([3, 26]), []) then
    statistic.Label29.Caption := 'Рублей = ' + CurrToStr(Dm.Q_CASHIN_RUB.AsCurrency) + #9 + 'USD = ' + CurrToStr(Dm.Q_CASHIN_USD.AsCurrency) + #9 + 'EUR = ' + CurrToStr(Dm.Q_CASHIN_EU.AsCurrency)
  else
    statistic.Label29.Caption := 'Рублей = 0'+ #9 +'USD = 0'+ #9 +'EUR = 0';

  if DM.Q_CASH.Locate('R_PAYDESK;OPERATION', VarArrayOf([4, 26]), []) then
    statistic.Label30.Caption := 'Рублей = ' + CurrToStr(Dm.Q_CASHIN_RUB.AsCurrency) + #9 + 'USD = ' + CurrToStr(Dm.Q_CASHIN_USD.AsCurrency) + #9 + 'EUR = ' + CurrToStr(Dm.Q_CASHIN_EU.AsCurrency)
  else
    statistic.Label30.Caption := 'Рублей = 0'+ #9 +'USD = 0'+ #9 +'EUR = 0';

  statistic.Panel10.Visible := true;
  statistic.pcStatistic.ActivePageIndex := 0;
  statistic.ShowModal;
  if (gr_cashbook.Visible) then
    gr_cashbook.SetFocus;
finally
  statistic.Free;
end;
end;



//
//  Операции
//
procedure Tsvod.aOperationsExecute(Sender: TObject);
begin
  options := Toptions.Create(Application);
  try
    DM.OPERATIONS.Open;
    options.showmodal;
    DM.OPERATIONS.Close;
    if (gr_cashbook.Visible) then
      gr_cashbook.SetFocus;
  finally
    options.Free;
  end;
end;


//
//  Печать приходника / расходника
//
procedure Tsvod.aPrintExecute(Sender: TObject);
var  mOKUD, mOKPO: TfrxMemoView;
begin
  if (DM.Q_CASH.Active = false) or (DM.Q_CASH.RecordCount = 0) or (gr_cashbook.Visible = false) then
  begin
    MessageBox(Handle, 'Нет данных для печати!', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  frxReport1.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
  frxReport1.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
  frxReport1.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');






  try
    if DM.Q_CASHIN_RUB.AsInteger > 0 then
    begin
      frxReport1.LoadFromFile(path+'raports\input.fr3');
      mOKUD   := frxReport1.FindObject('Memo4') as TfrxMemoView;
      mOKUD.Text := def_OKUD;
      mOKPO   := frxReport1.FindObject('Memo5') as TfrxMemoView;
      mOKPO.Text := def_OKPO;

      // Сформируем заголовок фирмы
      mOKPO   := frxReport1.FindObject('Memo1') as TfrxMemoView;
      mOKPO.Text := def_title;
{ 2015-01-18 Переход на внутригодовой сквозной номер
      // Сформируем ID бланка
      mOKPO   := frxReport1.FindObject('Memo10') as TfrxMemoView;
      if DM.id_office > 1 then
         mOKPO.Text := '[<frxDBDataset1."ID_CASH"> - '+IntToStr(DM.id_office)+'0000000]'
      else
         mOKPO.Text := '[<frxDBDataset1."ID_CASH">]';
      mOKUD   := frxReport1.FindObject('Memo40') as TfrxMemoView;
      mOKUD.Text := mOKPO.Text;
}
      frxReport1.ShowReport;
    end
    else
    begin
      if DM.Q_CASHOUT_RUB.AsInteger > 0 then
      begin
        frxReport1.LoadFromFile(path+'raports\output.fr3');

      // Сформируем заголовок фирмы
      mOKPO   := frxReport1.FindObject('Memo1') as TfrxMemoView;
      mOKPO.Text := def_title;
{ 2015-01-18 Переход на внутригодовой сквозной номер
      // Сформируем ID бланка
      mOKPO   := frxReport1.FindObject('Memo10') as TfrxMemoView;
      if DM.id_office > 1 then
         mOKPO.Text := '[<frxDBDataset1."ID_CASH"> - '+IntToStr(DM.id_office)+'0000000]'
      else
         mOKPO.Text := '[<frxDBDataset1."ID_CASH">]';
}
        frxReport1.ShowReport;
      end;
    end;
    gr_cashbook.SetFocus;
  except
    on E: Exception do
    begin
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      gr_cashbook.SetFocus;
    end;
  End;
end;

//
//  Печать списка кассового дня
//
procedure Tsvod.aPrintAllExecute(Sender: TObject);
begin
  if (DM.Q_CASH.Active = false) or (DM.Q_CASH.RecordCount = 0) or (gr_cashbook.Visible = false) then
  begin
    MessageBox(Handle, 'Нет данных для печати!', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  try
    MakeSortForPrint(TOraQuery(gr_cashbook_v.DataController.DataSet),TCxGridDBTableView(gr_cashbook_v));
    DM.Q_CASH.DisableControls;
    frxReport1.LoadFromFile(path+'raports\itogo.fr3');
    frxReport1.ShowReport;
    DM.Q_CASH.EnableControls;
    gr_cashbook.SetFocus;
  except
    on E: Exception do
    begin
      DM.Q_CASH.EnableControls;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      gr_cashbook.SetFocus;
    end;
  End;

end;


//
//  Функции для печати
//
function Tsvod.frxReport1UserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  try
    if (UpperCase(MethodName) = 'PROPIS') then
      Result := Propis( Trunc(Params[0]) );
    if (UpperCase(MethodName) = 'RUBLE') then
      Result := Ruble( Trunc(Params[0]), Params[1] );
    if (UpperCase(MethodName) = 'KOPEIKA') then
      Result := Kopeika( Trunc(Params[0]), Params[1] );
  except
  end;
end;


// Вставляем в рапорт дату кассового дня
procedure Tsvod.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if CompareText(VarName, 'element') = 0 then
  begin
    if (cb_dates.Checked) then
      Value := 'Отчет за период с ' + VarToStr(de_kassdate.EditValue) + ' по ' + VarToStr(de_kassdate2.EditValue)
    else
      Value := 'Отчет за ' + VarToStr(de_kassdate.EditValue);
  end;
end;


procedure Tsvod._gr_cashbook_vDDATE_DONEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[_gr_cashbook_vDDATE_DONE.Index]);
end;


procedure Tsvod.gr_cashbook_vCOR_DATEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_cashbook_vCOR_DATE.Index]);
end;

procedure Tsvod.gr_cashbook_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin

// 2012-09-18 Уберем, т.к. в запросе поле CC теперь константа
{
  if (not AViewInfo.Selected) and (gr_cashbook_v.DataController.DataSet.RecordCount > 0) then
  begin

    // Красим чужой кассовый день
    val1  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('cc').Index
                );
    val2  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('invoice').Index
                );
	  if ( (val1 > 1) and (val2 > 0) and ( gr_cashbook_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'INVOICE' ) ) then
         ACanvas.Font.Color := clRed;
  end;
}  
end;

procedure Tsvod.gr_cashbook_vDDATE_INGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_cashbook_vDDATE_IN.Index]);
end;



// Фильрация кассы, где будет видна только РОЗНИЧНАЯ касса
procedure Tsvod.aRoznicaExecute(Sender: TObject);
begin
  if (gr_cashbook.Visible) then
  begin
	  gr_cashbook_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        'R %',
        'R %',
		    true
        );
	  gr_cashbook_v.DataController.Filter.Active := true;
    gr_cashbook.SetFocus;
  end;
end;


// Фильрация кассы, где будет видна только ОПТОВАЯ касса
procedure Tsvod.aOptExecute(Sender: TObject);
begin
  if (gr_cashbook.Visible) then
  begin
	  gr_cashbook_vNICK.DataBinding.AddToFilter(
      	nil,
        foNotLike,
        'R %',
        'R %',
		    true
        );
	  gr_cashbook_v.DataController.Filter.Active := true;
    gr_cashbook.SetFocus;
  end;
end;


// Фильрация кассы, где будет видны розничная и оптовая кассы
procedure Tsvod.aClearFilterExecute(Sender: TObject);
begin
  if (gr_cashbook.Visible) then
  begin
	  gr_cashbook_v.DataController.Filter.Clear;
	  gr_cashbook_v.DataController.Filter.Active := false;
    gr_cashbook.SetFocus;
  end;
end;


// фильтр по кассе
procedure Tsvod.ShowKass(param: integer);
begin
  if (gr_cashbook.Visible) then
  begin
	  _gr_cashbook_vPAYDESK.DataBinding.AddToFilter(
      	nil,
        foEqual,
        param,
        IntToStr(param),
		    true
        );
	  gr_cashbook_v.DataController.Filter.Active := true;
    gr_cashbook.SetFocus;
  end;
end;

// фильтр по 1-ой кассе
procedure Tsvod.ShowKass1Execute(Sender: TObject);
begin
  ShowKass(1);
end;


// фильтр по 2-ой кассе
procedure Tsvod.ShowKass2Execute(Sender: TObject);
begin
  ShowKass(2);
end;


// фильтр по 3-ей кассе
procedure Tsvod.ShowKass3Execute(Sender: TObject);
begin
  ShowKass(3);
end;


// фильтр по главной кассе
procedure Tsvod.ShowKassMainExecute(Sender: TObject);
begin
  ShowKass(4);
end;


//
//  Показ формы с удаленными данными по Ctrl+Shift+D
//
procedure Tsvod.deleted_Execute(Sender: TObject);
begin
  frm_deleted := Tfrm_deleted.Create(Application);
  try
    frm_deleted.showmodal;
  finally
    frm_deleted.Free;
  end;
end;


//
//  Анализ номеров
//
procedure Tsvod.nnAnalizeClick(Sender: TObject);
begin
  frm_stat       := Tfrm_stat.Create(Application);
  try
    frm_stat.d_set := DM.Q_CASH;
    frm_stat.ShowModal;
  finally
    frm_deleted.Free;
  end;
end;

//1	ОТДЕЛ СРЕЗКИ   
//2	ГОРШЕЧНЫЙ ОТДЕЛ
//3	АКСЕССУАРЫ
//4 Дизайнеры
//5 Упаковочные материалы
procedure Tsvod.mnExpressAccClick(Sender: TObject);
begin
  OpenForNumberAnalyze('3');
end;

procedure Tsvod.mnExpressCutClick(Sender: TObject);
begin
  OpenForNumberAnalyze('1');
end;

procedure Tsvod.mnExpressDizClick(Sender: TObject);
begin
  OpenForNumberAnalyze('4');
end;

procedure Tsvod.mnExpressPotClick(Sender: TObject);
begin
  OpenForNumberAnalyze('2');
end;

procedure Tsvod.mnExpressUpacClick(Sender: TObject);
begin
  OpenForNumberAnalyze('5');
end;

procedure Tsvod.OpenForNumberAnalyze(param_: string);
begin
  frm_stat       := Tfrm_stat.Create(Application);
  try
	  gr_cashbook_vT_SHORT.DataBinding.AddToFilter(nil,foEqual,param_,param_,true);
    gr_cashbook_v.DataController.Filter.Active := true;
    gr_cashbook_vINVOICE.SortIndex := 0;
    gr_cashbook_vINVOICE.SortOrder := soAscending;

    gr_cashbook_v.Controller.GoToFirst(true);
    frm_stat.cxSpinEdit1.EditValue := gr_cashbook_vINVOICE.EditValue;
    gr_cashbook_v.Controller.GoToLast(true);
    frm_stat.cxSpinEdit2.EditValue := gr_cashbook_vINVOICE.EditValue;
    frm_stat.cxImageComboBox1.EditValue := param_;

    frm_stat.d_set := DM.Q_CASH;
    frm_stat.ShowModal;
  finally
    frm_deleted.Free;
  end;
end;









//
//  Добавление новой записи
//
procedure Tsvod.aNewRecordExecute(Sender: TObject);
begin
  nakl_edit := Tnakl_edit.Create(Application);
  try
    DM.Q_CLIENTS.Filter   := '';
    DM.Q_CLIENTS.Filtered := false;
    DM.Q_CLIENTS.Open;
    DM.OPERATIONS.Open;

    nakl_edit.state       := 1;
    nakl_edit.corrector   := DM.OraSession1.Username;
    nakl_edit.id_         := 0;
    nakl_edit.cur_date               := de_kassdate.EditValue;
    nakl_edit.de_kassdate.EditValue  := de_kassdate.EditValue;
    nakl_edit.Label2.Caption         := VarToStr(de_kassdate.EditValue);

    nakl_edit.de_provodka.EditValue  := Now;

    if (nakl_edit.showmodal = mrOK) then
    begin
      aRefresh.Execute;
      gr_cashbook_v.DataController.LocateByKey(nakl_edit.id_);
      //DM.Q_CASH.Locate('ID_CASH',nakl_edit.id_,[]);
    end;

    DM.Q_CLIENTS.Close;
    DM.OPERATIONS.Close;
    nakl_edit.Free;
    gr_cashbook.SetFocus;

  except
    on E: Exception do
    begin
      nakl_edit.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  End;

end;


//
//  Редактирование записи
//
procedure Tsvod.aEditRecordExecute(Sender: TObject);
begin
  if (DM.Q_CASHID_CASH.AsInteger > 0) and (aEditRecord.Enabled = true ) then
  begin

    if (DM.id_office <> DM.Q_CASH.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;

    nakl_edit := Tnakl_edit.Create(Application);
    try
      DM.Q_CLIENTS.Filter   := '';
      DM.Q_CLIENTS.Filtered := false;
      DM.Q_CLIENTS.Open;
      DM.OPERATIONS.Open;
      nakl_edit.state       := 2;

      nakl_edit.gr_clients_v.DataController.LocateByKey(_gr_cashbook_vID_CLIENTS.EditValue);
      //DM.Q_CLIENTS.Locate('ID_CLIENTS',_gr_cashbook_vID_CLIENTS.EditValue,[]);

      nakl_edit.Label2.Caption            := VarToStr(_gr_cashbook_vR_DDATE.EditValue);
      nakl_edit.imcb_operations.Tag       := _gr_cashbook_vID_CASH.EditValue;
      nakl_edit.imcb_operations.EditValue := gr_cashbook_vOPERATION.EditValue;
      nakl_edit.edit_invoice.EditValue    := gr_cashbook_vINVOICE.EditValue;
      nakl_edit.edit_invoice.Enabled      := false;

      nakl_edit.edit_summ.EditValue       := gr_cashbook_vSUMM.EditValue;
      nakl_edit.edit_in_ru.EditValue      := gr_cashbook_vIN_RUB.EditValue;
      nakl_edit.edit_out_ru.EditValue     := gr_cashbook_vOUT_RUB.EditValue;
      nakl_edit.edit_in_dol.EditValue     := gr_cashbook_vIN_USD.EditValue;
      nakl_edit.edit_out_dol.EditValue    := gr_cashbook_vOUT_USD.EditValue;
      nakl_edit.edit_in_ev.EditValue      := gr_cashbook_vIN_EU.EditValue;
      nakl_edit.edit_out_ev.EditValue     := gr_cashbook_vOUT_EU.EditValue;
      nakl_edit.edit_info.EditValue       := gr_cashbook_vINFO.EditValue;
      if DM.Q_CASH.FieldByName('R_PAYDESK').AsInteger = 0 then
         nakl_edit.RadioGroup1.ItemIndex     := 3
      else
         nakl_edit.RadioGroup1.ItemIndex     := (DM.Q_CASH.FieldByName('R_PAYDESK').AsInteger - 1);

      nakl_edit.BitBtn2.Enabled      := false;
      nakl_edit.BitBtn3.Enabled      := false;
      nakl_edit.BitBtn4.Enabled      := false;
      nakl_edit.BitBtn5.Enabled      := false;

      nakl_edit.corrector              := DM.OraSession1.Username;
      nakl_edit.id_                    := DM.Q_CASHID_CASH.AsInteger;
      nakl_edit.cur_date               := de_kassdate.EditValue;
      nakl_edit.de_kassdate.EditValue  := _gr_cashbook_vR_DDATE.EditValue;

      nakl_edit.de_provodka.EditValue  := gr_cashbook_vDDATE_IN.EditValue;

      if (nakl_edit.showmodal = mrOK) then
      begin
        aRefresh.Execute;
        gr_cashbook_v.DataController.LocateByKey(nakl_edit.id_);
        //DM.Q_CASH.Locate('ID_CASH',nakl_edit.id_,[]);
      end;

      DM.Q_CLIENTS.Close;
      DM.OPERATIONS.Close;
      nakl_edit.Free;
      gr_cashbook.SetFocus;

    except
      on E: Exception do
      begin
        nakl_edit.Free;
        MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      end;
    End;

  end // if DM.CASH_TMPID_CASH_TMP.AsInteger > 0 then
  else
  begin
    MessageBox(Handle, 'Нет данных для редактирования!', 'Внимание', MB_ICONWARNING);
    gr_cashbook.SetFocus;
  end;

end;


//
//  Удаление записи
//
procedure Tsvod.aDelRecordExecute(Sender: TObject);
var idd: integer;
begin
  if (gr_cashbook.Visible) and (gr_cashbook_v.DataController.DataSet.RecordCount > 0) and (gr_cashbook_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger > 0) and (aDelRecord.Enabled = true) then
  begin
    if (DM.id_office <> DM.Q_CASH.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      Exit;
    end;
  
        if MessageDlg('Вы действительно хотите удалить накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          try
            idd := DM.Q_CASHID_CASH.AsInteger;

            DM.Q_SQL.SQL.Clear;
            DM.Q_SQL.SQL.Add('begin cash_pkg.remove_svod_data(:id_, :fio_); end;');
            DM.Q_SQL.Params.ParamByName('id_').AsInteger  := idd;
            DM.Q_SQL.Params.ParamByName('fio_').AsString  := DM.OraSession1.Username;
            DM.Q_SQL.Execute;

            DM.Q_CASH.Next;
            idd := DM.Q_CASHID_CASH.AsInteger;
            aRefresh.Execute;
            gr_cashbook_v.DataController.LocateByKey(idd);
            //DM.Q_CASH.Locate('ID_CASH',idd,[]);

            gr_cashbook.SetFocus;
          except
            on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          End;
        end;
  end
  else MessageBox(Handle, 'Нет данных для удаления!', 'Внимание', MB_ICONWARNING)
end;


//
//  Разнос долгов
//
procedure Tsvod.aRaznosExecute(Sender: TObject);
begin
  if (DM.id_office = 0) then
  begin
    MessageBox(Handle,'Разносить долги можно только выбрав определенный офис!','Внимание!',MB_ICONERROR);
    Exit;
  end;


  if {(cb_dates.Checked = false) and} (gr_cashbook.Visible) and (gr_cashbook_v.DataController.DataSet.RecordCount > 0) and (aEditRecord.Enabled = true) then
  begin
      try
        pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
        pnl_msg.Repaint;

        DM.Q_CASH_S.Close;
        DM.Q_CASH_S.ParamByName('p_date1').AsDate    := de_kassdate.EditValue;
        if (cb_dates.Checked) then
          DM.Q_CASH_S.ParamByName('p_date2').AsDate  := de_kassdate2.EditValue
        else
          DM.Q_CASH_S.ParamByName('p_date2').AsDate  := de_kassdate.EditValue;
        DM.Q_CASH_S.Open;

        pnl_msg.Free;

        frm_svod_curr := Tfrm_svod_curr.Create(Application);
        frm_svod_curr.cxCurrencyEdit1.Value := cu_f_usd.Value;
        frm_svod_curr.cxCurrencyEdit2.Value := cu_f_eur.Value;
        frm_svod_curr.cxCurrencyEdit3.Value := cu_f_usdeur.Value;
        frm_svod_curr.cxCurrencyEdit4.Value := cu_f_eurusd.Value;

        if frm_svod_curr.ShowModal = mrOk then
        begin
          cu_f_usd.Value    := frm_svod_curr.cxCurrencyEdit1.Value;
          cu_f_eur.Value    := frm_svod_curr.cxCurrencyEdit2.Value;
          cu_f_usdeur.Value := frm_svod_curr.cxCurrencyEdit3.Value;
          cu_f_eurusd.Value := frm_svod_curr.cxCurrencyEdit4.Value;

          debt := Tdebt.Create(Application);
          try
            debt.gr_debets.Font.Size  := bc_fontsize.EditValue;
            debt.stSelect.Font.Size   := bc_fontsize.EditValue;

            debt.cu_f_usd.Value    := frm_svod_curr.cxCurrencyEdit1.Value;
            debt.cu_f_eur.Value    := frm_svod_curr.cxCurrencyEdit2.Value;
            debt.cu_f_usdeur.Value := frm_svod_curr.cxCurrencyEdit3.Value;
            debt.cu_f_eurusd.Value := frm_svod_curr.cxCurrencyEdit4.Value;
            debt.dedit_begin.EditValue := de_kassdate.EditValue;
            if (cb_dates.Checked) then
            begin
              debt.Label1.Caption := 'Разнос долгов за кассовые дни с ' + VarToStr(de_kassdate.EditValue) + ' по ' + VarToStr(de_kassdate2.EditValue);
              debt.dedit_end.EditValue := de_kassdate2.EditValue;
            end
            else
            begin
              debt.Label1.Caption := 'Разнос долгов за кассовый день от ' + VarToStr(de_kassdate.EditValue);
              debt.dedit_end.EditValue := de_kassdate.EditValue;
            end;
            debt.ShowModal;
          finally
            debt.Free;
          end;
        end;

        DM.Q_CASH_S.Close;
        frm_svod_curr.Free;
        gr_cashbook.SetFocus;

      except
        on E: Exception do
        begin
          frm_svod_curr.Free;
          pnl_msg.Free;
          MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        end;
      End;

  end
  else MessageBox(Handle, 'Необходимо выбрать ОДИН кассовый день С ДАННЫМИ!', 'Внимание', MB_ICONWARNING);

end;




//
//  Постим данные
//
procedure Tsvod.CtrlEnterExecute(Sender: TObject);
begin
  If DM.Q_CASH.State = dsEdit then DM.Q_CASH.Post; // else
end;


//
//  Покажем все неразнесенное
//
procedure Tsvod.aAnalizeExecute(Sender: TObject);
var str: string;
    fs : TFormatSettings;
    f: TextFile;
    client_path, cl_str: string;
begin
  // Найдем неразнесенку
  try
     pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Поиск неразнесенных кассовых дней'));
     pnl_msg.Repaint;

     DM.Q_SQL.Close;
     DM.Q_SQL.SQL.Clear;
     //DM.Q_SQL.SQL.Add('select distinct a.r_ddate from cash_tmp a where (a.ID_OFFICE = :v_office or :v_office = 0) and ( to_char(r_ddate,''YYYY'') in (to_char(sysdate,''YYYY''), to_char(sysdate,''YYYY'')-1) or r_ddate is null) order by a.r_ddate');
     DM.Q_SQL.SQL.Add('select distinct a.r_ddate from cash_tmp a where (a.ID_OFFICE = :v_office or :v_office = 0) order by a.r_ddate');
     DM.Q_SQL.ParamByName('v_office').AsInteger := DM.id_office;
     DM.Q_SQL.Open;

     if (DM.Q_SQL.Active) and (DM.Q_SQL.RecordCount > 0) then
     begin
        DM.Q_SQL.First;
        while not DM.Q_SQL.Eof do
        begin
          str := str + #10 + DM.Q_SQL.FieldByName('r_ddate').AsString;
          DM.Q_SQL.Next;
        end;
     end;
     pnl_msg.Free;

     if (str <> '') then
        MessageBox(Handle, PChar('Найдены неразнесенные кассовые дни!'#10#13 + str), 'Внимание', MB_ICONWARNING)
     else
        MessageBox(Handle, 'Все кассовые дни разнесены!', 'Результат', MB_ICONINFORMATION);
   except
     on E: Exception do
       begin
         pnl_msg.Free;
         MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
       end;
   End;



{ 2016-01-27 Отказались от старой программы и данный код не нужен
  // Найдем у Ковалева чтонить
  try
     pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Поиск накладный в старой базе данных'));
     pnl_msg.Repaint;

     GetLocaleFormatSettings(1251,fs);

     // Пытаемся открыть файл с настройками
     try
       {$I-
        AssignFile(f,'ini/connections.txt');
        Reset(f);
        Readln(f,client_path);
        CloseFile(f);
        {$I+
     except
        ShowMessage('Невозможно открыть файл "connections.txt" в папке "connections"!')
     End;
     // Конец считывания

     if client_path <> '' then
     begin
       // Забираем данные из других отделов
       DM.Table1.Close;
       DM.Table1.TableName := client_path;

       // Теперь фильтруем по KOD для выборки именно того отдела, где касса
       DM.Table1.Filter := '(MARK<>2 OR MARK IS NULL) ';
       DM.Table1.Filtered := true;

       DM.Session1.Active := true;
       DM.Table1.Open;
       cl_str := '';

       while not DM.Table1.Eof do
       begin
         cl_str := cl_str +#10#13+ DM.table1.FieldByName('DAT').AsString + ' №' +DM.table1.FieldByName('NAKL').AsString;
         DM.Table1.Next;
       end;  // while not DM.Table1.Eof do

       DM.Table1.Close;
       DM.Session1.Active := false;

       if cl_str <> '' then
          MessageBox(Handle, PChar('Найдены накладные не подгруженные в склад:'#10#13+cl_str), 'Внимание!', MB_ICONERROR)
       else
          MessageBox(Handle, 'Нет не подгруженных накладных!', 'Результат', MB_ICONINFORMATION);
       // ---------------------------------------------------------------------------
     end;
     pnl_msg.Free;

   except
     on E: Exception do
       begin
         pnl_msg.Free;
         MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
       end;
   End;
}
end;


//
//  Настройка
//
procedure Tsvod.blbSettingsClick(Sender: TObject);
begin
//function TfrmCashSettings.OpenOperSettings : integer;
  frmCashSettings.OpenOperSettings;
end;


// Скопируем значение футера в буфер
procedure Tsvod.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 0);
end;
// Скопируем значение ячейкт в буфер
procedure Tsvod.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 1);
end;

end.
