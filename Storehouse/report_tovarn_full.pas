unit report_tovarn_full;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ToolWin, DB, Ora, MemDS, DBAccess,
  ActnList, Buttons, Grids, DBGridEh, DBCtrls, global, useful_functions,
  DASQLMonitor, OraSQLMonitor, GridsEh, Registry, frxClass, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxBar, dxBarExtItems, cxSplitter, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxVGrid,
  cxInplaceContainer, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCheckBox, PI_library, cxPC, cxGridExportLink, ShellAPI, frxExportRTF, frxExportXLS,
  frxExportText, frxExportHTML, frxExportPDF, frxDBSet, PI_Library_reg, cxCalc,
  cxSpinEdit;

type
  TReportTovarnFullForm = class(TForm)
    Panel4: TPanel;
    Panel12: TPanel;
    Label3: TLabel;
    ActionList1: TActionList;
    Edit_Panel1: TPanel;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Store_TS_2: TTabSheet;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    Panel6: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    Panel10: TPanel;
    result: TOraQuery;
    result_ds: TOraDataSource;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    StatusBar: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Panel18: TPanel;
    Panel20: TPanel;
    Label1: TLabel;
    nom_added: TOraQuery;
    nom_added_DS: TOraDataSource;
    CB_Null_Not_View: TCheckBox;
    OraQuery: TOraQuery;
    SelectAll_Action: TAction;
    Remove_Action: TAction;
    Add1_Action: TAction;
    Label_time1: TLabel;
    Label_time2: TLabel;
    Label5: TLabel;
    OraStoredProc: TOraStoredProc;
    CB_rem_nulls: TCheckBox;
    Panel2: TPanel;
    move_focus: TAction;
    Close_BitBtn: TcxButton;
    BitBtn1: TcxButton;
    grid_dviz: TcxGrid;
    grid_dviz_View: TcxGridDBTableView;
    np_CODE: TcxGridDBColumn;
    np_H_CODE: TcxGridDBColumn;
    np_f_type: TcxGridDBColumn;
    np_F_SUB_TYPE: TcxGridDBColumn;
    np_FULL_NAME: TcxGridDBColumn;
    np_SPESIFICATION: TcxGridDBColumn;
    np_PRICE_LIST: TcxGridDBColumn;
    grid_dviz_Level: TcxGridLevel;
    np_S_NAME_RU: TcxGridDBColumn;
    np_COUNTRY: TcxGridDBColumn;
    gr_added: TcxGrid;
    gr_added_v: TcxGridDBTableView;
    gr_added_vCODE: TcxGridDBColumn;
    gr_added_vH_CODE: TcxGridDBColumn;
    gr_added_vF_TYPE: TcxGridDBColumn;
    gr_added_vF_SUB_TYPE: TcxGridDBColumn;
    gr_added_vFULL_NAME: TcxGridDBColumn;
    gr_added_vPRICE_LIST: TcxGridDBColumn;
    gr_added_vSPESIFICATION: TcxGridDBColumn;
    gr_added_vS_NAME_RU: TcxGridDBColumn;
    gr_added_vCOUNTRY: TcxGridDBColumn;
    gr_added_l: TcxGridLevel;
    gr_added_vN_ID: TcxGridDBColumn;
    gr_added_vFT_ID: TcxGridDBColumn;
    gr_added_vFST_ID: TcxGridDBColumn;
    grid_dviz_ViewN_ID: TcxGridDBColumn;
    grid_dviz_ViewS_ID: TcxGridDBColumn;
    grid_dviz_ViewC_ID: TcxGridDBColumn;
    grid_dviz_ViewFT_ID: TcxGridDBColumn;
    grid_dviz_ViewFST_ID: TcxGridDBColumn;
    dxBarDockControl1: TdxBarDockControl;
    bm_tovar: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_tovar: TdxBarPopupMenu;
    Panel19: TPanel;
    Label4: TLabel;
    Panel9: TPanel;
    BitBtn9: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_not_equal: TcxStyle;
    cxSplitter1: TcxSplitter;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    frxReport1: TfrxReport;
    fr_result: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    gr_result: TcxGrid;
    gr_result_l: TcxGridLevel;
    gr_result_v: TcxGridDBBandedTableView;
    gr_result_vCOLOUR: TcxGridDBBandedColumn;
    gr_result_vSPESIFICATION: TcxGridDBBandedColumn;
    gr_result_vGREAT_NAME: TcxGridDBBandedColumn;
    gr_result_vN_ID: TcxGridDBBandedColumn;
    gr_result_vCODE: TcxGridDBBandedColumn;
    gr_result_vH_CODE: TcxGridDBBandedColumn;
    gr_result_vS_NAME_RU: TcxGridDBBandedColumn;
    gr_result_vF_SUB_TYPE: TcxGridDBBandedColumn;
    gr_result_vF_TYPE: TcxGridDBBandedColumn;
    gr_result_vOSTATOK_END_Q: TcxGridDBBandedColumn;
    gr_result_vOSTATOK_END_P: TcxGridDBBandedColumn;
    gr_result_vOSTATOK_Q: TcxGridDBBandedColumn;
    gr_result_vOSTATOK_P: TcxGridDBBandedColumn;
    gr_result_vPRIHOD_Q: TcxGridDBBandedColumn;
    gr_result_vPRIHOD_P: TcxGridDBBandedColumn;
    gr_result_vSPIS_Q: TcxGridDBBandedColumn;
    gr_result_vSPIS_P: TcxGridDBBandedColumn;
    gr_result_vUTSEN_Q: TcxGridDBBandedColumn;
    gr_result_vUTSEN_P: TcxGridDBBandedColumn;
    gr_result_vPROD_Q: TcxGridDBBandedColumn;
    gr_result_vPROD_P: TcxGridDBBandedColumn;
    gr_result_vKORR_Q: TcxGridDBBandedColumn;
    gr_result_vKORR_P: TcxGridDBBandedColumn;
    gr_result_vREPRICE_Q: TcxGridDBBandedColumn;
    gr_result_vREPRICE_P: TcxGridDBBandedColumn;
    gr_result_vSTORE_Q: TcxGridDBBandedColumn;
    gr_result_vSTORE_P: TcxGridDBBandedColumn;
    gr_result_vP_ADD: TcxGridDBBandedColumn;
    gr_result_vPP_Q: TcxGridDBBandedColumn;
    gr_result_vPP_P: TcxGridDBBandedColumn;
    ToolButton1: TToolButton;
    Panel7: TPanel;
    chb_show_q: TcxCheckBox;
    chb_show_p: TcxCheckBox;
    nom_addedN_ID: TFloatField;
    nom_addedCODE: TStringField;
    nom_addedH_CODE: TStringField;
    nom_addedS_NAME_RU: TStringField;
    nom_addedS_ID: TFloatField;
    nom_addedF_TYPE: TStringField;
    nom_addedF_SUB_TYPE: TStringField;
    nom_addedCOUNTRY: TStringField;
    nom_addedCOLOUR: TStringField;
    nom_addedC_ID: TFloatField;
    nom_addedFT_ID: TFloatField;
    nom_addedFST_ID: TFloatField;
    nom_addedFULL_NAME: TStringField;
    nom_addedADDED: TFloatField;
    nom_addedID_DEPARTMENTS: TFloatField;
    nom_addedGTD: TStringField;
    nom_addedSPESIFICATION: TStringField;
    nom_addedPRICE: TFloatField;
    nom_addedQUANTITY: TIntegerField;
    nom_addedQUANTITY_PRICE: TFloatField;
    nom_addedPRICE_LIST: TFloatField;
    gr_result_vSUMMARY: TcxGridDBBandedColumn;
    gr_result_vPP_SUMMARY: TcxGridDBBandedColumn;
    chb_show_summ: TcxCheckBox;
    Panel8: TPanel;
    pc_stat: TcxPageControl;
    tsh_stata: TcxTabSheet;
    tsh_summary: TcxTabSheet;
    cxVerticalGrid1: TcxVerticalGrid;
    cxVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxVerticalGrid1MultiEditorRow1: TcxMultiEditorRow;
    cxVerticalGrid1MultiEditorRow2: TcxMultiEditorRow;
    cxVerticalGrid1MultiEditorRow3: TcxMultiEditorRow;
    cxVerticalGrid1MultiEditorRow4: TcxMultiEditorRow;
    cxVerticalGrid2: TcxVerticalGrid;
    cxCategoryRow1: TcxCategoryRow;
    cxMultiEditorRow1: TcxMultiEditorRow;
    cxMultiEditorRow2: TcxMultiEditorRow;
    cxMultiEditorRow3: TcxMultiEditorRow;
    cxMultiEditorRow4: TcxMultiEditorRow;
    cxVerticalGrid2MultiEditorRow1: TcxMultiEditorRow;
    cxVerticalGrid2MultiEditorRow2: TcxMultiEditorRow;
    cxVerticalGrid2MultiEditorRow3: TcxMultiEditorRow;
    cxVerticalGrid2MultiEditorRow4: TcxMultiEditorRow;
    cxVerticalGrid2MultiEditorRow5: TcxMultiEditorRow;
    SaveDialog12: TSaveDialog;
    nom_addedCOMPILED_NAME_OTDEL: TStringField;
    Label6: TLabel;
    edGTD: TEdit;
    tlb_export: TToolButton;
    chb_service_out: TCheckBox;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label7: TLabel;
    te_search: TcxTextEdit;
    aSearchName: TAction;
    dxBarStatic5: TdxBarStatic;
    resultCOLOUR: TStringField;
    resultSPESIFICATION: TStringField;
    resultGREAT_NAME: TStringField;
    resultN_ID: TFloatField;
    resultCODE: TStringField;
    resultH_CODE: TStringField;
    resultS_NAME_RU: TStringField;
    resultF_SUB_TYPE: TStringField;
    resultF_TYPE: TStringField;
    resultOSTATOK_END_Q: TFloatField;
    resultOSTATOK_END_P: TFloatField;
    resultOSTATOK_Q: TFloatField;
    resultOSTATOK_P: TFloatField;
    resultPRIHOD_Q: TFloatField;
    resultPRIHOD_P: TFloatField;
    resultSPIS_Q: TFloatField;
    resultSPIS_P: TFloatField;
    resultUTSEN_Q: TFloatField;
    resultUTSEN_P: TFloatField;
    resultPROD_Q: TFloatField;
    resultPROD_P: TFloatField;
    resultKORR_Q: TFloatField;
    resultKORR_P: TFloatField;
    resultREPRICE_Q: TFloatField;
    resultREPRICE_P: TFloatField;
    resultSTORE_Q: TFloatField;
    resultSTORE_P: TFloatField;
    resultP_ADD: TFloatField;
    resultP_ADD2: TFloatField;
    resultPP_Q: TFloatField;
    resultPP_P: TFloatField;
    resultSUMMARY: TFloatField;
    resultPP_SUMMARY: TFloatField;
    resultCOMPILED_NAME_OTDEL: TStringField;
    DOCNEW1_DATAN_ID: TFloatField;
    DOCNEW1_DATACODE: TStringField;
    DOCNEW1_DATAS_NAME_RU: TStringField;
    DOCNEW1_DATAS_ID: TFloatField;
    DOCNEW1_DATACOUNTRY: TStringField;
    DOCNEW1_DATAC_ID: TFloatField;
    DOCNEW1_DATAF_TYPE: TStringField;
    DOCNEW1_DATAF_SUB_TYPE: TStringField;
    DOCNEW1_DATAFT_ID: TFloatField;
    DOCNEW1_DATAFST_ID: TFloatField;
    DOCNEW1_DATAFULL_NAME: TStringField;
    DOCNEW1_DATASPESIFICATION: TStringField;
    DOCNEW1_DATAH_CODE: TStringField;
    DOCNEW1_DATAPRICE_LIST: TFloatField;
    DOCNEW1_DATACOMPILED_NAME_OTDEL: TStringField;
    DOCNEW1_DATANOTUSE: TIntegerField;
    dxBarStatic6: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    stNotUse: TcxStyle;
    grid_dviz_ViewNOTUSE: TcxGridDBColumn;
    nom_addedNOTUSE: TIntegerField;
    gr_added_vNOTUSE: TcxGridDBColumn;
    DOCNEW1_DATAQUANTITY: TFloatField;
    grid_dviz_ViewQUANTITY: TcxGridDBColumn;
    DOCNEW1_DATAOUR_CODE: TStringField;
    nom_addedOUR_CODE: TStringField;
    grid_dviz_ViewFULL_NAME: TcxGridDBColumn;
    grid_dviz_ViewOUR_CODE: TcxGridDBColumn;
    gr_added_vS_ID: TcxGridDBColumn;
    gr_added_vCOLOUR: TcxGridDBColumn;
    gr_added_vC_ID: TcxGridDBColumn;
    gr_added_vFULL_NAME1: TcxGridDBColumn;
    gr_added_vADDED: TcxGridDBColumn;
    gr_added_vID_DEPARTMENTS: TcxGridDBColumn;
    gr_added_vGTD: TcxGridDBColumn;
    gr_added_vPRICE: TcxGridDBColumn;
    gr_added_vQUANTITY: TcxGridDBColumn;
    gr_added_vQUANTITY_PRICE: TcxGridDBColumn;
    gr_added_vOUR_CODE: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Filter(Sender: TObject);
    procedure AddedCBClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGridEh_ResultDblClick(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure move_focusExecute(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure gr_result_vDblClick(Sender: TObject);
    procedure gr_result_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chb_show_qClick(Sender: TObject);
    procedure chb_show_pClick(Sender: TObject);
    procedure chb_show_summClick(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure resultBeforeOpen(DataSet: TDataSet);
    procedure nom_addedBeforeOpen(DataSet: TDataSet);
    procedure DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_dviz_ViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gr_added_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gr_result_vDataControllerFilterChanged(Sender: TObject);
    procedure gr_result_vDataControllerFilterBeforeChange(
      Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
      const AFilterText: string);

  private
    path: string;
    procedure MoveOutTemp(param_: integer);
    { Private declarations }

  public
    { Public declarations }
    param_, var_: integer;
    StrList_types_arr : ArrOfInt;
    StrList_subtypes_arr : ArrOfInt;

  end;

var
  ReportTovarnFullForm: TReportTovarnFullForm;

implementation

{$R *.dfm}
uses DataM, Store_View_Filtr, all_nacl, nacl_new, Report_Tovarn_Nacls, oper_select{, frx2xto30};


//
//  Создание формы
//
procedure TReportTovarnFullForm.FormCreate(Sender: TObject);
begin
  Doc_DateTimePicker1.Date := IncMonth(Date,-1);
  Doc_DateTimePicker2.Date := Date;
  Store_PC.ActivePageIndex := 0;
end;


//
// Открытие формы
//
procedure TReportTovarnFullForm.FormShow(Sender: TObject);
var  RegFil : TRegIniFile;
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_tovar_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_dviz';
  grid_dviz_View.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  ASaveViewName := 'store_dviz_sec';
  AStoreKey     := path + '/ini/store_dviz_sec_'+DM.OraSession.Username+'.ini';
  gr_added_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  Store_PC.ActivePageIndex := 0;
  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;

  dxBarButton15.Enabled := DataM.Operator_print;
  ToolButton5.Enabled := DataM.Operator_print;

  screen.cursor            := crhourglass;
  Filter(Sender);
  screen.cursor            := crdefault;
  Label3.Caption := DataM.department_name +' :: Движение товара';
  grid_dviz.SetFocus;
end;


//
//  Закрытие формы
//
procedure TReportTovarnFullForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var sql_str: string;
    RegFil : TRegIniFile;
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  try
    DOCNEW1_data.Close;
    nom_added.Close;

    AOptions      := [];
    AStoreKey     := path + '/ini/StoreHouse_tovar_'+DM.OraSession.Username+'.ini';
    ASaveViewName := 'store_dviz';
    grid_dviz_View.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
    AStoreKey     := path + '/ini/store_dviz_sec_'+DM.OraSession.Username+'.ini';
    ASaveViewName := 'store_dviz_sec';
    gr_added_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

    sql_str       := 'delete from STORE_DOC_DATA_TEMP';
    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add(sql_str);
    DM.Ora_SQL.Execute;

    Action:= caFree;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  Закрываем
//
procedure TReportTovarnFullForm.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
// Фильтрация --------------------------------------------------------
//
procedure TReportTovarnFullForm.Filter(Sender: TObject);
begin
  try
    TOraQuery(grid_dviz_view.DataController.DataSet).Filter:='';
    TOraQuery(grid_dviz_view.DataController.DataSet).ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    TOraQuery(grid_dviz_view.DataController.DataSet).Close;
    TOraQuery(grid_dviz_view.DataController.DataSet).Open;

    TOraQuery(gr_added_v.DataController.DataSet).Filter:='';
    TOraQuery(gr_added_v.DataController.DataSet).ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    TOraQuery(gr_added_v.DataController.DataSet).Close;
    TOraQuery(gr_added_v.DataController.DataSet).Open;

  except on E: Exception do
    begin
      screen.cursor := crdefault;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;

  screen.cursor:=crdefault;

end;
//------------------------------------------------------------------------------


//
//  Добавить наменклатуру к списку
//
procedure TReportTovarnFullForm.BitBtn6Click(Sender: TObject);
var i: integer;
begin
  screen.cursor:=crhourglass;

  if (grid_dviz_View.Controller.SelectedRowCount > 0) then
  begin
    OraQuery.Close;
    OraQuery.SQL.Clear;
    OraQuery.SQL.Add('begin store_pkg.ins_in_temp(:n_id_, :store_type_); end;');
    OraQuery.ParamByName('store_type_').AsInteger := 1;
    for i := 0 to grid_dviz_View.Controller.SelectedRowCount-1 do
    begin
      OraQuery.ParamByName('n_id_').AsInteger := grid_dviz_View.Controller.SelectedRows[i].Values[grid_dviz_ViewN_ID.Index];
      OraQuery.Execute;
    end;

    DOCNEW1_DATA.Refresh;
    nom_added.Refresh;
    grid_dviz_View.Controller.ClearSelection;
  end;

  screen.cursor:=crdefault;
  grid_dviz.SetFocus;
end;


//
//  Убрать наменклатуру из списку
//
procedure TReportTovarnFullForm.BitBtn5Click(Sender: TObject);
var i: integer;
begin

  screen.cursor:=crhourglass;

  if (gr_added_v.Controller.SelectedRowCount > 0) then
  begin

    OraQuery.Close;
    OraQuery.SQL.Clear;
    OraQuery.SQL.Add('DELETE FROM STORE_DOC_DATA_TEMP WHERE N_ID = :p1');

    for i := 0 to gr_added_v.Controller.SelectedRowCount-1 do
    begin
      OraQuery.ParamByName('p1').AsInteger := gr_added_v.Controller.SelectedRows[i].Values[gr_added_vN_ID.Index];
      OraQuery.Execute;
    end;

    DOCNEW1_DATA.Refresh;
    nom_added.Refresh;
    gr_added_v.Controller.ClearSelection;
  end;

  screen.cursor:=crdefault;
  gr_added.SetFocus;

end;


//
//  Выделить все
//
procedure TReportTovarnFullForm.BitBtn8Click(Sender: TObject);
begin
  if gr_added.IsFocused = true then
     gr_added_v.Controller.SelectAll
  else
     grid_dviz_View.Controller.SelectAll;
end;


//
//  Фокус по CTRL+TAB
//
procedure TReportTovarnFullForm.move_focusExecute(Sender: TObject);
begin
if (Store_PC.ActivePageIndex = 0) then
begin
  if ( grid_dviz.Focused = true ) then gr_added.SetFocus
  else
    grid_dviz.SetFocus;
end
else
begin
  if ( pc_stat.ActivePageIndex = 0 ) then pc_stat.ActivePageIndex := 1
  else
    pc_stat.ActivePageIndex := 0;
end;
end;


procedure TReportTovarnFullForm.nom_addedBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

procedure TReportTovarnFullForm.resultBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
// Добавляем всю наменклатуру
//
procedure TReportTovarnFullForm.BitBtn7Click(Sender: TObject);
begin
  MoveOutTemp(1);
end;


//
// Удаление всего из временной таблицы
//
procedure TReportTovarnFullForm.BitBtn9Click(Sender: TObject);
begin
  MoveOutTemp(0);
end;


//
//  Запуск процы по перемещению во временную таблицу
//
procedure TReportTovarnFullForm.MoveOutTemp(param_: integer);
var v_ft_id: integer;
begin
  screen.cursor:=crhourglass;
  v_ft_id := 0;
  try
    OraQuery.Close;
    OraQuery.SQL.Clear;
    OraQuery.SQL.Add('begin STORE_PKG.get_service_type(:v_id_dep, :v_ft_id); end;');
    OraQuery.ParamByName('v_id_dep').AsInteger := strtoint(DataM.department_id);
    OraQuery.ParamByName('v_ft_id').AsInteger  := 0;
    OraQuery.Execute;
    v_ft_id := OraQuery.ParamByName('v_ft_id').AsInteger;

    OraQuery.Close;
    OraQuery.SQL.Clear;
    OraQuery.SQL.Add('begin STORE_PKG.NOM_TO_TEMP(:in_otdel, :V_SERVICE, :param_, :v_office); end;');
    OraQuery.ParamByName('in_otdel').AsInteger := strtoint(DataM.department_id);

    OraQuery.ParamByName('V_SERVICE').AsInteger := 0;
    if chb_service_out.Checked then
    begin
      OraQuery.ParamByName('V_SERVICE').AsInteger := v_ft_id;
 //     if StrToInt(DataM.department_id) = 61  then OraQuery.ParamByName('V_SERVICE').AsInteger := DM.v61_service;
 //     if StrToInt(DataM.department_id) = 62  then OraQuery.ParamByName('V_SERVICE').AsInteger := DM.v62_service;
 //     if StrToInt(DataM.department_id) = 121 then OraQuery.ParamByName('V_SERVICE').AsInteger := DM.v121_service;
    end;

    OraQuery.ParamByName('param_').AsInteger := param_;
    OraQuery.ParamByName('v_office').AsInteger := dm.id_office;

    OraQuery.Execute;
    DOCNEW1_DATA.Refresh;
    nom_added.Refresh;
    screen.cursor := crdefault;
    gr_added.SetFocus;

  except on E: Exception do
  begin
    screen.cursor := crdefault;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
//  Показываем результаты
//
procedure TReportTovarnFullForm.BitBtn1Click(Sender: TObject);
var sss: real;
    v_ft_id: integer;
begin
  try
    screen.cursor := crhourglass;

    Doc_DateTimePicker1.PostEditValue;
    Doc_DateTimePicker2.PostEditValue;

    TOraQuery(gr_result_v.DataController.DataSet).Close;
    Label_time1.Caption := DateTimeToStr(Doc_DateTimePicker1.Date);
    Label_time2.Caption := DateTimeToStr(Doc_DateTimePicker2.Date);
    Store_PC.ActivePageIndex := 1;

    OraStoredProc.ParamByName('DDATE_BEGIN').AsDate := Doc_DateTimePicker1.Date;
    OraStoredProc.ParamByName('DDATE_END').AsDate   := Doc_DateTimePicker2.Date;

    // те, по кому было движение
    if (CB_rem_nulls.Checked=true) then
      OraStoredProc.ParamByName('rem_nulls').AsInteger := 1
    else
      OraStoredProc.ParamByName('rem_nulls').AsInteger := 0;

    OraStoredProc.ParamByName('V_GTD').AsString     := edGTD.Text;
    OraStoredProc.ParamByName('V_OFFICE').AsInteger := DM.id_office;

    OraStoredProc.ParamByName('v_show_nulls').AsInteger := BoolToInt(CB_Null_Not_View.Checked);
{
    OraStoredProc.ParamByName('V_SERVICE').AsInteger := v_ft_id;
    if chb_service_out.Checked then
    begin
      if DataM.department_id = 61  then OraStoredProc.ParamByName('V_SERVICE').AsInteger := DM.v61_service;
      if DataM.department_id = 62  then OraStoredProc.ParamByName('V_SERVICE').AsInteger := DM.v62_service;
      if DataM.department_id = 121 then OraStoredProc.ParamByName('V_SERVICE').AsInteger := DM.v121_service;
    end;
}

    chb_show_q.EditValue := false;
    chb_show_p.EditValue := false;
    chb_show_summ.EditValue := false;
    gr_result_v.DataController.Filter.Active := false;
    gr_result_v.DataController.Filter.Clear;

    OraStoredProc.Execute;
    TOraQuery(gr_result_v.DataController.DataSet).Open;

  except on E: Exception do
    begin
      screen.cursor := crdefault;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  End;

{
  if (CB_Null_Not_View.Checked=true) then
  begin
    gr_result_v.DataController.DataSet.Filter := '';
    gr_result_v.DataController.DataSet.Filter := ' ostatok_q<>0 or ostatok_p<>0 or prihod_q<>0 or spis_q<>0 or utsen_q<>0 or prod_q<>0 or ostatok_end_q<>0';
    gr_result_v.DataController.DataSet.Filtered := true;
  end;
}

  if (CB_Null_Not_View.Checked=false) then
  begin
    gr_result_v.DataController.DataSet.Filter := '';
    gr_result_v.DataController.DataSet.Filtered := true;
  end;

  // начало
  cxMultiEditorRow1.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[2];
  cxMultiEditorRow1.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[1];
  // приход
  cxMultiEditorRow2.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[4];
  cxMultiEditorRow2.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[3];
  // продажа
  cxMultiEditorRow3.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[6];
  cxMultiEditorRow3.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[5];
  // списание
  cxMultiEditorRow4.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[8];
  cxMultiEditorRow4.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[7];
  // уценка
  cxVerticalGrid2MultiEditorRow1.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[10];
  cxVerticalGrid2MultiEditorRow1.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[9];
  // коррекция
  cxVerticalGrid2MultiEditorRow2.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[12];
  cxVerticalGrid2MultiEditorRow2.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[11];
  // переоценка
  cxVerticalGrid2MultiEditorRow3.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[14];
  cxVerticalGrid2MultiEditorRow3.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[13];
  // конец
  cxVerticalGrid2MultiEditorRow4.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[16];
  cxVerticalGrid2MultiEditorRow4.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[15];
  // сумма
  if (not VarIsNull(cxMultiEditorRow1.Properties.Editors.Items[0].Value)) then
    sss := cxMultiEditorRow1.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxMultiEditorRow2.Properties.Editors.Items[0].Value)) then
    sss := sss + cxMultiEditorRow2.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxMultiEditorRow3.Properties.Editors.Items[0].Value)) then
    sss := sss - cxMultiEditorRow3.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxMultiEditorRow4.Properties.Editors.Items[0].Value)) then
    sss := sss - cxMultiEditorRow4.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxVerticalGrid2MultiEditorRow1.Properties.Editors.Items[0].Value)) then
    sss := sss - cxVerticalGrid2MultiEditorRow1.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxVerticalGrid2MultiEditorRow2.Properties.Editors.Items[0].Value)) then
    sss := sss - cxVerticalGrid2MultiEditorRow2.Properties.Editors.Items[0].Value;

  if (not VarIsNull(cxVerticalGrid2MultiEditorRow3.Properties.Editors.Items[0].Value)) then
    sss := sss + cxVerticalGrid2MultiEditorRow3.Properties.Editors.Items[0].Value;

  cxVerticalGrid2MultiEditorRow5.Properties.Editors.Items[0].Value := sss;
  cxVerticalGrid2MultiEditorRow5.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[17]; //22

// Остаток на конец - сумма
  cxVerticalGrid1MultiEditorRow1.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[16];
// Остаток на конец - количество
  cxVerticalGrid1MultiEditorRow1.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[15];

// Остаток по складу - сумма
  cxVerticalGrid1MultiEditorRow2.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[19];
// Остаток по складу - количество
  cxVerticalGrid1MultiEditorRow2.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[18];

// Количество не сходится - позиций
  cxVerticalGrid1MultiEditorRow3.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[21];
// Количество не сходится - количество
  cxVerticalGrid1MultiEditorRow3.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[18] - gr_result_v.DataController.Summary.FooterSummaryValues[15];

// Стоимость не сходится - позиций
  cxVerticalGrid1MultiEditorRow4.Properties.Editors.Items[0].Value := gr_result_v.DataController.Summary.FooterSummaryValues[22];
// Стоимость не сходится - сумма
  cxVerticalGrid1MultiEditorRow4.Properties.Editors.Items[1].Value := gr_result_v.DataController.Summary.FooterSummaryValues[19] - gr_result_v.DataController.Summary.FooterSummaryValues[16];

  screen.cursor := crdefault;
  gr_result.SetFocus;
end;


//
// Просмотр отчета по документам продаж------------------------------------
//
procedure view_doc_report(ID_DOC:integer);
var theForm: TForm;
begin
  screen.cursor:=crhourglass;
  with ReportTovarnFullForm do
    if (result.RecordCount<>0) then
    begin
      try
        theForm := TReportTovarnNaclsForm.Create(Application);
        TReportTovarnNaclsForm(theForm).N_ID := result.Fieldbyname('N_ID').Asinteger;
        TReportTovarnNaclsForm(theForm).DateTrue := 1;
        TReportTovarnNaclsForm(theForm).DOC_DATE1 := Doc_DateTimePicker1.Date;
        TReportTovarnNaclsForm(theForm).DOC_DATE2 := Doc_DateTimePicker2.Date;
        TReportTovarnNaclsForm(theForm).Label1.Visible := (result.Fieldbyname('PP_Q').AsInteger > 0) or (result.Fieldbyname('PP_P').AsInteger > 0);
        if TReportTovarnNaclsForm(theForm).Label1.Visible then
           TReportTovarnNaclsForm(theForm).Label1.Caption := 'Не сходится на сумму: ' + CurrToStr(result.Fieldbyname('OSTATOK_END_P').AsFloat - result.Fieldbyname('STORE_P').AsFloat);
        
        theForm.ShowModal;
      finally
        theForm.Free;
      end;
    end;
  screen.cursor:=crdefault;
end;


//
//  По двойному клику смотрим хождение выбранного товара
//
procedure TReportTovarnFullForm.DBGridEh_ResultDblClick(Sender: TObject);
begin
  view_doc_report(result.FieldByName('N_ID').AsInteger);
end;


procedure TReportTovarnFullForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

procedure TReportTovarnFullForm.dxBarButton15Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_result.xls';
     ExportGridToExcel(f, gr_result, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog12.Execute then
  begin
     ExportGridToExcel(SaveDialog12.FileName, gr_result, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog12.FileName), nil, nil, SW_RESTORE);
  end;
}
  gr_result.SetFocus;
end;


//
//  Печать
//
procedure TReportTovarnFullForm.ToolButton5Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (result.RecordCount<>0) then
  begin
    try
        MakeSortForPrint(TOraQuery(gr_result_v.DataController.DataSet),TCxGridDBTableView(gr_result_v));
        gr_result_v.DataController.DataSet.DisableControls;
        frxReport1.LoadFromFile(path+'raports\Report_allmove.fr3');
        Memo1 := frxReport1.FindObject('Memo4') as TfrxMemoView;
        Memo1.Text := 'Отдел: '+ DataM.department_name + ' / c ' + DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);
        frxReport1.ShowReport;
        gr_result_v.DataController.DataSet.EnableControls;
    except
    on E: Exception do
      begin
        gr_result_v.DataController.DataSet.EnableControls;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
  end;
end;



procedure TReportTovarnFullForm.gr_result_vDataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet;
  const AFilterText: string);
begin
  //ShowMessage(AFilterText);
  //if AFilterText <> '' then
  //  ADataSet.Filter := ADataSet.Filter + ' and (ostatok_q<>0 or ostatok_p<>0 or prihod_q<>0 or spis_q<>0 or utsen_q<>0 or prod_q<>0 or ostatok_end_q<>0)';
end;

procedure TReportTovarnFullForm.gr_result_vDataControllerFilterChanged(
  Sender: TObject);
begin
//    gr_result_v.DataController.DataSet.Filter := '';
//    gr_result_v.DataController.DataSet.Filter := ' ostatok_q<>0 or ostatok_p<>0 or prihod_q<>0 or spis_q<>0 or utsen_q<>0 or prod_q<>0 or ostatok_end_q<>0';
//    gr_result_v.DataController.DataSet.Filtered := true;
end;



//
//  Двойной клик
//
procedure TReportTovarnFullForm.gr_result_vDblClick(Sender: TObject);
begin
  view_doc_report(result.FieldByName('N_ID').AsInteger);
end;




//
//  Отрисовка исходных данных
//
procedure TReportTovarnFullForm.grid_dviz_ViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  res : variant;
begin
{
  res := grid_dviz_View.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_dviz_View.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
}
end;
procedure TReportTovarnFullForm.gr_added_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  res : variant;
begin
{
  res := gr_added_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, gr_added_v.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
}
end;


//
//  Отрисовка результата данных
//
procedure TReportTovarnFullForm.gr_result_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  v_q, v_qn : variant;
begin

  v_q := gr_result_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, gr_result_v.GetColumnByFieldName('PP_Q').Index
         );

  v_qn := gr_result_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, gr_result_v.GetColumnByFieldName('PP_P').Index
         );

	IF (gr_result_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'STORE_Q') and (v_q = 1) then
  begin
     ACanvas.Brush.Color := st_not_equal.Color;
  end;

	IF (gr_result_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'STORE_P') and (1 = v_qn) then
  begin
     ACanvas.Brush.Color := st_not_equal.Color;
  end;

  v_q := gr_result_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, gr_result_v.GetColumnByFieldName('PP_SUMMARY').Index
         );

	IF (gr_result_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'SUMMARY') and (1 = v_q) then
  begin
     ACanvas.Brush.Color := st_not_equal.Color;
  end;

end;


// Показываем несходящиеся позиции
procedure TReportTovarnFullForm.chb_show_qClick(Sender: TObject);
begin
  gr_result_v.DataController.Filter.Clear;
  if chb_show_q.Checked = true then
  begin
    chb_show_p.Checked := false;
    gr_result_vPP_Q.DataBinding.AddToFilter(nil, foEqual, 1);
    gr_result_v.DataController.Filter.Active := True;
  end;
end;

// Показываем несходящуюся арифметику
procedure TReportTovarnFullForm.chb_show_summClick(Sender: TObject);
begin
  gr_result_v.DataController.Filter.Clear;
  if chb_show_summ.Checked = true then
  begin
    gr_result_vPP_SUMMARY.DataBinding.AddToFilter(nil, foEqual, 1);
    gr_result_v.DataController.Filter.Active := True;
  end
end;

// Показываем несходящиеся суммы
procedure TReportTovarnFullForm.chb_show_pClick(Sender: TObject);
begin
  gr_result_v.DataController.Filter.Clear;
  if chb_show_p.Checked = true then
  begin
    chb_show_q.Checked := false;
    gr_result_vPP_P.DataBinding.AddToFilter(nil, foEqual, 1);
    gr_result_v.DataController.Filter.Active := True;
  end
end;
















procedure TReportTovarnFullForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
end;

procedure TReportTovarnFullForm.ToolButton1Click(Sender: TObject);
begin
      grid_dviz_view.DataController.DataSet.First;
      while grid_dviz_view.DataController.DataSet.EOF = False do
      begin
        try
        grid_dviz_view.DataController.DataSet.Edit;
        grid_dviz_view.DataController.DataSet.FieldByName('added_1').AsInteger:= 1;
        grid_dviz_view.DataController.DataSet.Post;
        grid_dviz_view.DataController.DataSet.Next;
        except
        ShowMessage('Не удалось!');
        End;
      end;
      grid_dviz_view.DataController.DataSet.First;
end;

procedure TReportTovarnFullForm.BitBtn10Click(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  Label_time1.Caption:=DateTimeToStr(Now);
  result.Open;
  Label_time2.Caption:=DateTimeToStr(Now);
  screen.cursor:=crdefault;
end;


// Скопируем значение ячейкт в буфер
procedure TReportTovarnFullForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_result_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TReportTovarnFullForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_result_v.DataController, 0);
end;


// поиск по названию
procedure TReportTovarnFullForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

//
//  Поиск
//
procedure TReportTovarnFullForm.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(Panel3.Width / 2) - 90;
    Panel_fill.Top     := trunc(Panel3.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;

procedure TReportTovarnFullForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var grid: TDBGridEh;
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_dviz.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    if Store_PC.ActivePageIndex = 0 then
    begin
      grid_dviz_View.DataController.Filter.Clear;
      if (param_ = 1) then
        np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      if (param_ = 2) then
        np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      if (param_ = 3) then
        np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      grid_dviz_View.DataController.Filter.Active := True;
    end
    else
      gr_result_v.DataController.Filter.Clear;
      if (param_ = 1) then
        gr_result_vGREAT_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      if (param_ = 2) then
        gr_result_vGREAT_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      if (param_ = 3) then
        gr_result_vGREAT_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(te_search.Text) + '%');
      gr_result_v.DataController.Filter.Active := True;
    begin

    end;

    Panel_fill.Visible := false;
    te_search.Text := '';
    if Store_PC.ActivePageIndex = 0 then
      grid_dviz.SetFocus
    else
      gr_result.SetFocus;
    //grid.FieldColumns['QUANTITY'].Field.FocusControl;
  end;
end;

end.
