unit UReader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxImageComboBox, cxDropDownEdit, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxButtons, Grids, cxPC, cxLabel,
  cxContainer, cxMaskEdit, cxCalendar, StdCtrls, Buttons, ExtCtrls, ImgList,
  dxBar, cxBarEditItem, dxBarExtItems, IniFiles, cxVGrid, cxInplaceContainer,
  Registry, ExcelXP, ActiveX, ComObj, ActnList, cxProgressBar, PI_library,
  OraError, MemDS, DBAccess, Ora, cxGridExportLink, ShellAPI, cxCheckBox;

  type
    TTitles = record
    Title : String;
    column : integer;
  end;

type
  TfrmReader = class(TForm)
    bmReader: TdxBarManager;
    bm_debtBar2: TdxBar;
    barFooter: TdxBar;
    dxBarStatic6: TdxBarStatic;
    blbRefresh: TdxBarLargeButton;
    blbSetColumn: TdxBarLargeButton;
    blbSaveColumn: TdxBarLargeButton;
    blbDel: TdxBarLargeButton;
    bkbClearColumn: TdxBarLargeButton;
    blbSave: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    lblFile: TdxBarStatic;
    blbLoadFile: TdxBarLargeButton;
    dbcMain: TdxBarDockControl;
    imgList: TcxImageList;
    pcReadInvoice: TcxPageControl;
    tshReadInvoice: TcxTabSheet;
    SG: TStringGrid;
    pnlTopRead: TPanel;
    btnRecognize: TcxButton;
    btnSaveSrc: TcxButton;
    tshInspectInvoice: TcxTabSheet;
    grid_translate: TcxGrid;
    grid_translate_v: TcxGridDBTableView;
    grid_translate_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_translate_vCODE: TcxGridDBColumn;
    grid_translate_vH_CODE: TcxGridDBColumn;
    grid_translate_vNOM_REMARKS: TcxGridDBColumn;
    ORDER_NUMBER: TcxGridDBColumn;
    DESCRIPTION: TcxGridDBColumn;
    grid_translate_vSKU: TcxGridDBColumn;
    UNITS1: TcxGridDBColumn;
    AMOUNT_PER_UNIT1: TcxGridDBColumn;
    TOTAL_AMOUNT1: TcxGridDBColumn;
    AMOUNT_IN_THE_PACK1: TcxGridDBColumn;
    HOL_SUB_TYPE: TcxGridDBColumn;
    HOL_COLOUR1: TcxGridDBColumn;
    SHORT_CODE1: TcxGridDBColumn;
    SHORT_NAME1: TcxGridDBColumn;
    grid_translate_vTRUCK: TcxGridDBColumn;
    grid_translate_vTROLLEY: TcxGridDBColumn;
    BAR_CODE1: TcxGridDBColumn;
    grid_translate_vREMARKS: TcxGridDBColumn;
    grid_translate_vSPEC_LENGTH: TcxGridDBColumn;
    grid_translate_vSPEC_HEADS: TcxGridDBColumn;
    grid_translate_vSPEC_HEADS_SHRUB: TcxGridDBColumn;
    grid_translate_vSPEC_VD2: TcxGridDBColumn;
    grid_translate_vSPEC_WIDTH: TcxGridDBColumn;
    grid_translate_vSPEC_HIGHT: TcxGridDBColumn;
    grid_translate_vCLIENT: TcxGridDBColumn;
    grid_translate_vVOLUME: TcxGridDBColumn;
    grid_translate_vVOLDRY: TcxGridDBColumn;
    grid_translate_vCOUNTRY_: TcxGridDBColumn;
    _ORDER_MARKNAME: TcxGridDBColumn;
    PACKING_MARKS: TcxGridDBColumn;
    PACKING_CODE: TcxGridDBColumn;
    _MARKS_CONTENT1: TcxGridDBColumn;
    _MARKS_NAMES1: TcxGridDBColumn;
    TRANSLATION1: TcxGridDBColumn;
    _INVOICE_DATA_AS_IS_ID: TcxGridDBColumn;
    _grid_freshView1INV_ID: TcxGridDBColumn;
    grid_translate_vRECOGNISED: TcxGridDBColumn;
    grid_translate_vSRC_TROLLEY: TcxGridDBColumn;
    grid_translate_vID_OFFICE: TcxGridDBColumn;
    grid_translate_vDATE_CHANGE: TcxGridDBColumn;
    grid_translate_vNOM_NEW: TcxGridDBColumn;
    grid_translate_vNOM_START: TcxGridDBColumn;
    grid_translate_vN_ID: TcxGridDBColumn;
    grid_translate_vID: TcxGridDBColumn;
    grid_translate_l: TcxGridLevel;
    btnSave: TcxButton;
    btnNewNom: TcxButton;
    btnGoToNew: TcxButton;
    BeginEnd: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    ColumnNames: TPopupMenu;
    pnl_help: TPanel;
    spbCloseHelp: TSpeedButton;
    cxVerticalGrid1: TcxVerticalGrid;
    cxVerticalGrid1EditorRow1: TcxEditorRow;
    cxVerticalGrid1EditorRow2: TcxEditorRow;
    cxVerticalGrid1EditorRow3: TcxEditorRow;
    cxVerticalGrid1EditorRow4: TcxEditorRow;
    cxVerticalGrid1EditorRow5: TcxEditorRow;
    cxVerticalGrid1EditorRow6: TcxEditorRow;
    cxVerticalGrid1EditorRow7: TcxEditorRow;
    cxVerticalGrid1EditorRow8: TcxEditorRow;
    cxVerticalGrid1EditorRow9: TcxEditorRow;
    cxVerticalGrid1EditorRow10: TcxEditorRow;
    cxVerticalGrid1EditorRow11: TcxEditorRow;
    cxVerticalGrid1EditorRow12: TcxEditorRow;
    cxVerticalGrid1EditorRow13: TcxEditorRow;
    cxVerticalGrid1EditorRow14: TcxEditorRow;
    cxVerticalGrid1EditorRow15: TcxEditorRow;
    cxVerticalGrid1EditorRow16: TcxEditorRow;
    cxVerticalGrid1EditorRow17: TcxEditorRow;
    cxVerticalGrid1EditorRow18: TcxEditorRow;
    cxVerticalGrid1EditorRow19: TcxEditorRow;
    cxVerticalGrid1EditorRow20: TcxEditorRow;
    cxVerticalGrid1EditorRow21: TcxEditorRow;
    cxVerticalGrid1EditorRow22: TcxEditorRow;
    cxVerticalGrid1EditorRow23: TcxEditorRow;
    cxVerticalGrid1EditorRow24: TcxEditorRow;
    cxVerticalGrid1EditorRow25: TcxEditorRow;
    cxVerticalGrid1EditorRow26: TcxEditorRow;
    cxVerticalGrid1EditorRow27: TcxEditorRow;
    cxVerticalGrid1EditorRow28: TcxEditorRow;
    cxVerticalGrid1EditorRow29: TcxEditorRow;
    cxVerticalGrid1EditorRow30: TcxEditorRow;
    cxVerticalGrid1EditorRow31: TcxEditorRow;
    cxVerticalGrid1EditorRow32: TcxEditorRow;
    OpenDialog1: TOpenDialog;
    lblInvoice: TdxBarStatic;
    ActionList: TActionList;
    OnSelMenuItem: TAction;
    OnSelBegEnd: TAction;
    aRecognize: TAction;
    aSaveSrc: TAction;
    aAddNom: TAction;
    aUpdate: TAction;
    aRefresh: TAction;
    pg_main: TcxProgressBar;
    cdsTranslate: TOraQuery;
    dsTranslate: TDataSource;
    btnLoadInv: TcxButton;
    pnlEditInvoice: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Image5: TImage;
    Image1: TImage;
    Label8: TLabel;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    ed_comment: TcxTextEdit;
    ed_suplier: TcxTextEdit;
    icb_suplier: TcxImageComboBox;
    cb_truck: TcxComboBox;
    icb_GTDcountry: TcxImageComboBox;
    aStep1: TAction;
    aStep2: TAction;
    grid_translate_vNOM_END: TcxGridDBColumn;
    grid_translate_vNOM_ADD: TcxGridDBColumn;
    grid_translate_vNOM_SPECIAL: TcxGridDBColumn;
    grid_translate_vNOM_PACK: TcxGridDBColumn;
    grid_translate_vID_OFFICE_1: TcxGridDBColumn;
    grid_translate_vFN_ID: TcxGridDBColumn;
    grid_translate_vFT_ID: TcxGridDBColumn;
    grid_translate_vFST_ID: TcxGridDBColumn;
    grid_translate_vC_ID: TcxGridDBColumn;
    grid_translate_vS_ID: TcxGridDBColumn;
    grid_translate_vCOL_ID: TcxGridDBColumn;
    grid_translate_vLEN: TcxGridDBColumn;
    grid_translate_vPACK: TcxGridDBColumn;
    grid_translate_vHT_ID: TcxGridDBColumn;
    grid_translate_vDIAMETER: TcxGridDBColumn;
    grid_translate_vWEIGHT: TcxGridDBColumn;
    grid_translate_vWEIGHTDRY: TcxGridDBColumn;
    grid_translate_vCUST_COEF: TcxGridDBColumn;
    grid_translate_vVBN: TcxGridDBColumn;
    grid_translate_vH_NAME: TcxGridDBColumn;
    grid_translate_vTNVED: TcxGridDBColumn;
    grid_translate_vHOL_TYPE: TcxGridDBColumn;
    srMainStyle: TcxStyleRepository;
    stEditable: TcxStyle;
    aShowNom: TAction;
    aRemoveNom: TAction;
    pmTransMain: TPopupMenu;
    mnAddNom: TMenuItem;
    mnEditNom: TMenuItem;
    N2: TMenuItem;
    mnRemoveNom: TMenuItem;
    bsSetNom: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    stSetNom: TcxStyle;
    bsEQbyName: TdxBarStatic;
    stEQbyName: TcxStyle;
    dxBarStatic4: TdxBarStatic;
    bsEQbyParams: TdxBarStatic;
    stEQbyParams: TcxStyle;
    dxBarStatic7: TdxBarStatic;
    grid_translate_vN_ID_DESC: TcxGridDBColumn;
    aSetNom: TAction;
    mnSetNom: TMenuItem;
    N4: TMenuItem;
    mnExportToExcel: TMenuItem;
    ureaderFields: TMenuItem;
    aShowFullInfo: TAction;
    lbl_total: TcxLabel;
    lbl_percent: TcxLabel;
    lbl_set: TcxLabel;
    lbl_name: TcxLabel;
    lbl_art: TcxLabel;
    aClearFilter: TAction;
    N1: TMenuItem;
    aCalcStat: TAction;
    grid_translate_vIS_PHOTO: TcxGridDBColumn;
    grid_translate_vPHOTO: TcxGridDBColumn;
    grid_translate_vINVOICE_DATA_ID: TcxGridDBColumn;
    pg_execute: TcxProgressBar;
    grid_translate_vCHECKED: TcxGridDBColumn;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    stNeedToCheck: TcxStyle;
    aCalcStat1: TMenuItem;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    grid_translate_vNOM_PACK_HOL: TcxGridDBColumn;
    grid_translate_vREPLACEMENT: TcxGridDBColumn;
    grid_translate_vREPLACEMENT_IS_FIND: TcxGridDBColumn;
    bsNoReplacment: TdxBarStatic;
    stNoReplacment: TcxStyle;
    dxBarStatic13: TdxBarStatic;
    grid_translate_vNN: TcxGridDBColumn;
    bsIsNotSingle: TdxBarStatic;
    stIsNotSingle: TcxStyle;
    dxBarStatic14: TdxBarStatic;
    blbMapping: TdxBarLargeButton;
    mnMapping: TMenuItem;
    cdsTranslateNN: TFloatField;
    cdsTranslateINV_ID: TFloatField;
    cdsTranslateORDER_NUMBER: TFloatField;
    cdsTranslateORDER_MARKNAME: TStringField;
    cdsTranslatePACKING_MARKS: TStringField;
    cdsTranslatePACKING_CODE: TStringField;
    cdsTranslateDESCRIPTION: TStringField;
    cdsTranslateUNITS: TFloatField;
    cdsTranslateSKU: TStringField;
    cdsTranslateAMOUNT_IN_THE_PACK: TFloatField;
    cdsTranslateINVOICE_DATA_AS_IS_ID: TFloatField;
    cdsTranslateHOL_COLOUR: TStringField;
    cdsTranslateHOL_SUB_TYPE: TStringField;
    cdsTranslateMARKS_CONTENT: TStringField;
    cdsTranslateMARKS_NAMES: TStringField;
    cdsTranslateSHORT_CODE: TStringField;
    cdsTranslateSHORT_NAME: TStringField;
    cdsTranslateRECOGNISED: TIntegerField;
    cdsTranslateBAR_CODE: TStringField;
    cdsTranslateTRANSLATION: TStringField;
    cdsTranslateAMOUNT_PER_UNIT: TFloatField;
    cdsTranslateTOTAL_AMOUNT: TFloatField;
    cdsTranslateREMARKS: TStringField;
    cdsTranslateSPEC_LENGTH: TFloatField;
    cdsTranslateSPEC_HEADS: TStringField;
    cdsTranslateSPEC_HEADS_SHRUB: TStringField;
    cdsTranslateSPEC_VD2: TStringField;
    cdsTranslateSPEC_WIDTH: TFloatField;
    cdsTranslateSPEC_HIGHT: TFloatField;
    cdsTranslateTROLLEY: TFloatField;
    cdsTranslateTRUCK: TIntegerField;
    cdsTranslateCLIENT: TStringField;
    cdsTranslateSRC_TROLLEY: TStringField;
    cdsTranslateID_OFFICE: TIntegerField;
    cdsTranslateDATE_CHANGE: TDateTimeField;
    cdsTranslateVOLUME: TFloatField;
    cdsTranslateVOLDRY: TFloatField;
    cdsTranslateNOM_NEW: TIntegerField;
    cdsTranslateNOM_START: TIntegerField;
    cdsTranslateCOUNTRY_: TStringField;
    cdsTranslateNOM_END: TIntegerField;
    cdsTranslateNOM_ADD: TIntegerField;
    cdsTranslateNOM_SPECIAL: TIntegerField;
    cdsTranslateNOM_PACK: TIntegerField;
    cdsTranslateNOM_PACK_HOL: TIntegerField;
    cdsTranslateREPLACEMENT: TStringField;
    cdsTranslateREPLACEMENT_IS_FIND: TFloatField;
    cdsTranslateN_ID: TFloatField;
    cdsTranslateCOMPILED_NAME_OTDEL: TStringField;
    cdsTranslateCODE: TFloatField;
    cdsTranslateH_CODE: TStringField;
    cdsTranslateNOM_REMARKS: TStringField;
    cdsTranslateID_OFFICE_1: TFloatField;
    cdsTranslateFN_ID: TFloatField;
    cdsTranslateFT_ID: TFloatField;
    cdsTranslateFST_ID: TFloatField;
    cdsTranslateC_ID: TFloatField;
    cdsTranslateS_ID: TFloatField;
    cdsTranslateCOL_ID: TFloatField;
    cdsTranslateLEN: TFloatField;
    cdsTranslatePACK: TFloatField;
    cdsTranslateHT_ID: TFloatField;
    cdsTranslateDIAMETER: TFloatField;
    cdsTranslateWEIGHT: TFloatField;
    cdsTranslateWEIGHTDRY: TFloatField;
    cdsTranslateCUST_COEF: TFloatField;
    cdsTranslateVBN: TFloatField;
    cdsTranslateH_NAME: TStringField;
    cdsTranslateTNVED: TStringField;
    cdsTranslateHOL_TYPE: TStringField;
    cdsTranslateIS_PHOTO: TFloatField;
    cdsTranslatePHOTO: TStringField;
    cdsTranslateN_ID_DESC: TFloatField;
    cdsTranslateINVOICE_DATA_ID: TFloatField;
    cdsTranslateCHECKED: TIntegerField;
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure blbSetColumnClick(Sender: TObject);
    procedure blbSaveColumnClick(Sender: TObject);
    procedure bkbClearColumnClick(Sender: TObject);
    procedure blbDelClick(Sender: TObject);
    procedure RefreshGrid(par: boolean);
    procedure blbLoadFileClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aSaveSrcExecute(Sender: TObject);
    procedure spbCloseHelpClick(Sender: TObject);
    procedure aRecognizeExecute(Sender: TObject);
    procedure SGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XXClick(Sender: TObject);
    procedure OnSelMenuItemExecute(Sender: TObject);
    procedure OnSelBegEndExecute(Sender: TObject);
    procedure btnGoToNewClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure btnLoadInvClick(Sender: TObject);
    procedure aStep1Execute(Sender: TObject);
    procedure aStep2Execute(Sender: TObject);
    procedure aAddNomExecute(Sender: TObject);
    procedure aShowNomExecute(Sender: TObject);
    procedure aRemoveNomExecute(Sender: TObject);
    procedure grid_translate_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aSetNomExecute(Sender: TObject);
    procedure mnExportToExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aShowFullInfoExecute(Sender: TObject);
    procedure grid_translate_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_translate_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pmTransMainPopup(Sender: TObject);
    procedure lbl_setDblClick(Sender: TObject);
    procedure lbl_artDblClick(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure aCalcStatExecute(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure grid_translate_vEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure dxBarStatic1Click(Sender: TObject);
    procedure bsNoReplacmentClick(Sender: TObject);
    procedure bsIsNotSingleClick(Sender: TObject);
    procedure blbMappingClick(Sender: TObject);
    procedure mnMappingClick(Sender: TObject);
  private
    { Служебные сущности для работы с эеселем }
    SGTitles : array [0..11] of TTitles;
    FIXLSApp: ExcelXP._Application;
    FIWorkbook: ExcelXP._Workbook;
    procedure CreateExcel (NewInstance: boolean);
    procedure ShowExcel;
    procedure HideExcel;
    procedure ReleaseExcel;
    procedure ClearSG;
    function AllowToPass : boolean;
    function SaveFile(res_val : variant) : boolean;
    procedure FildsShow(Sender: TObject);
    procedure sort_table(filter_param: String);

    { Private declarations }
  public
    MenuItemSelected : integer;
    FullFileName: string;
    currentInvID, def_suplier, def_country, def_country_gtd, AS_IS_POS: integer;
    def_change_country, def_change_hol_name: boolean;
    property IXLSApp: ExcelXP._Application read FIXLSApp;
    property IWorkbook: ExcelXP._Workbook read FIWorkbook;
    procedure SetInvoice;
    procedure executeSQL(sqlStr: String);
    { Public declarations }
  end;

var
  frmReader: TfrmReader;

implementation

uses SheetChooser, Globals, DataModule, NewDict, invchooser, UNomenclatureList,
  UNomsInfo, UFullInfo, UMapping;

{$R *.dfm}



// EXCEL файлы  ****************************************************************
procedure TfrmReader.CreateExcel(NewInstance: boolean);
var IU: IUnknown;
    isCreate: boolean;
begin
  try
    // Tricks:
    //        в случает вызова Excel-а, как сервера автоматизации:
    //          - все автозагружаемые книги не загружаются (и слава богу!);
    //          - создается процесс, но Excel в случае создания нового процесса,
    //            естественно, невидим.
    if not Assigned(IXLSApp) then
    begin // а зачем его создавать, если уже есть?
      isCreate := NewInstance or
        (not SUCCEEDED( GetActiveObject(ExcelXP.CLASS_ExcelApplication, nil, IU) ) );
      if isCreate then
        FIXLSApp := CreateComObject(ExcelXP.CLASS_ExcelApplication) as ExcelXP._Application
      else
        FIXLSApp := IU as ExcelXP._Application;
    end;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TfrmReader.ShowExcel;
begin
  try
    if Assigned(IXLSApp) then
    begin
      IXLSApp.Visible[0] := true;
      if IXLSApp.WindowState[0] = TOLEEnum(ExcelXP.xlMinimized) then
        IXLSApp.WindowState[0] := TOLEEnum(ExcelXP.xlNormal);
      IXLSApp.ScreenUpdating[0] := true;
      IXLSApp.DisplayAlerts[0] := true;
    end;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TfrmReader.spbCloseHelpClick(Sender: TObject);
begin
  pnl_help.Visible := false;
end;

procedure TfrmReader.HideExcel;
begin
  if Assigned(IXLSApp) then
  begin
    IXLSApp.Visible[0] := false;
  end;
end;



procedure TfrmReader.ReleaseExcel;
begin
  try
    if Assigned(IXLSApp) then
    begin
      if (IXLSApp.Workbooks.Count > 0) and (not IXLSApp.Visible[0]) then
      begin
        IXLSApp.WindowState[0] := TOLEEnum(xlMinimized);
        IXLSApp.Visible[0] := true;
        if not(csDestroying in ComponentState) then Self.SetFocus;
        Application.BringToFront;
      end;
    end;
    FIXLSApp.Quit;
    FIXLSApp := nil;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;
// *****************************************************************************



// Таблица с данными из файла **************************************************

//  Очищаем таблицу
procedure TfrmReader.ClearSG;
VAR
  i,j : integer;
Begin               
  for i := 0 to SG.ColCount - 1 do
    for j := 0 to SG.RowCount - 1 do
      SG.Cells[i,j] := '';
End;

// Begin set
procedure TfrmReader.N13Click(Sender: TObject);
begin
  MenuItemSelected := 0;
  OnSelBegEnd.Execute;
end;

// End set
procedure TfrmReader.N14Click(Sender: TObject);
begin
  MenuItemSelected := 1;
  OnSelBegEnd.Execute;
end;


// Установка Begin End
procedure TfrmReader.OnSelBegEndExecute(Sender: TObject);
begin
  Globals.BegEndArr[MenuItemSelected].row := SG.Selection.top;
  RefreshGrid(false);
end;

// Установка заголовков меню
procedure TfrmReader.OnSelMenuItemExecute(Sender: TObject);
VAR
  max_i,i : integer;
begin
  try
    max_i := Length(Globals.Recogniser_new);
    for i := 0 to max_i - 1 do
    Begin
      if Globals.Recogniser_new[i].column = SG.Selection.Left then Globals.Recogniser_new[i].column := -1;
    End;
    if ColumnNames.Items.Items[MenuItemSelected].Checked then
    begin
      ColumnNames.Items.Items[MenuItemSelected].Checked := false;
    end
    else
    begin
      Globals.Recogniser_new[MenuItemSelected].column := SG.Selection.Left;
      ColumnNames.Items.Items[MenuItemSelected].Checked := true;
    end;
    RefreshGrid(true);
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


// Обновление таблицы
procedure TfrmReader.RefreshGrid(par: boolean);
VAR
  i,max_i : integer;
begin
  try
    max_i := Length(Globals.BegEndArr);
    for i := 0 to SG.ColCount -1 do Sg.Cells[0,i] := '';
    for i := 0 to SG.RowCount -1 do Sg.Cells[i,0] := '';
    for i := 0 to max_i - 1 do
    Begin
      if Globals.BegEndArr[i].row <> -1 then Sg.Cells[0,Globals.BegEndArr[i].row] := Globals.BegEndArr[i].Name;
    End;
    max_i := Length(Globals.Recogniser_new);
    for i := 0 to max_i - 1 do
    Begin
      if Globals.Recogniser_new[i].column <> -1 then Sg.Cells[Globals.Recogniser_new[i].column,0] := Globals.Recogniser_new[i].Name;
    End;
    SG.Repaint;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TfrmReader.XXClick(Sender: TObject);
begin
  MenuItemSelected := TMenuItem(Sender).MenuIndex;
  OnSelMenuItem.Execute;
end;

// Открытие контекстного меню
procedure TfrmReader.SGMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
Var
  ACol, ARow: Longint;
  rect : TGridRect;
  XP,YP : integer;
  pntG, pntS : TPoint;

begin
  if Button = mbRight then
    Begin
      pntG.X := X;
      pntG.Y := Y;
      pntS := TStringGrid(Sender).ClientToScreen(pntG);
      TStringGrid(Sender).MouseToCell(X, Y, ACol, ARow);
      rect.Top := ARow;
      rect.Left := ACol;
      rect.Bottom := ARow;
      rect.Right := ACol;
      TStringGrid(Sender).Selection := rect;
      XP := pntS.X;
      YP := pntS.Y;
      if (Acol = 0) and (Arow <> 0) then BeginEnd.Popup(XP,YP);
      if (Acol <> 0) and (Arow = 0) then ColumnNames.Popup(XP,YP);
    End;
end;
// *****************************************************************************



// Работа с настройками по колонкам ********************************************

//  Очистим колонки
procedure TfrmReader.bkbClearColumnClick(Sender: TObject);
var max_i, i: integer;
begin
    for i := 0 to SG.ColCount -1 do Sg.Cells[0,i] := '';
    max_i := Length(Globals.Recogniser_new);
    for i := 0 to max_i - 1 do
    begin
       Globals.Recogniser_new[i].column := -1;
       ColumnNames.Items.Items[i].Checked := false;
    end;
    RefreshGrid(true);
end;

//  Расставляем столбцы из ini файла
procedure TfrmReader.blbSetColumnClick(Sender: TObject);
var ColIni : TIniFile;
    i : integer;
    str : string;
begin
  if icb_suplier.EditValue > 0 then
  begin
    str := ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_'+VarToStr(icb_suplier.EditValue)+'_columns.ini';
    if not FileExists(str) then
      str := ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_columns.ini';
  end;
  ColIni := TIniFile.Create(str);
  for i := 0 to Length(Recogniser_new) - 1 do
    Begin
      Recogniser_new[i].column := ColIni.ReadInteger('cols','col_'+IntToStr(i),-1);
      if (Recogniser_new[i].column > -1) {and (ColumnNames.Items.count < i)} then
        ColumnNames.Items.Items[i].Checked := true;
    End;
  ColIni.Free;
  RefreshGrid(true);
end;


//  Записываем столбцы в ini файл
procedure TfrmReader.blbSaveColumnClick(Sender: TObject);
var ColIni : TIniFile;
    i : integer;
    str: string;
begin
  if MessageDlg('Записать новые значения столбцов?'+#10+'Старые значения будут утеряны!', mtConfirmation,[mbNo, mbOk],0) = mrOk then
  begin
    if icb_suplier.EditValue > 0 then
      str := ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_'+VarToStr(icb_suplier.EditValue)+'_columns.ini'
    else
      str := ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_columns.ini';
    ColIni := TIniFile.Create(str);
    for i := 0 to Length(Recogniser_new) - 1 do
    Begin
      ColIni.WriteInteger('cols','col_'+IntToStr(i),Recogniser_new[i].column);
    End;
    ColIni.Free;
  end;
end;

//  Памятка по колонкам
procedure TfrmReader.blbDelClick(Sender: TObject);
begin
  pnl_help.Left           := trunc(pcReadInvoice.Width / 2) - 200;
  pnl_help.Top            := trunc(pcReadInvoice.Height / 2) - 150;
  pnl_help.Visible        := true;
end;

// Закрыть окно
procedure TfrmReader.dxBarLargeButton9Click(Sender: TObject);
begin
  Close;
end;
// *****************************************************************************




procedure TfrmReader.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := ProgPath + '/ini/recognizer_main_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'Invoices';
  grid_translate_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

procedure TfrmReader.FormCreate(Sender: TObject);
VAR i : Integer;
    TmpItem : TMenuItem;
    ColIni : TIniFile;
begin
  try
    N13.Caption := Globals.BegEndArr[0].Name;
    N14.Caption := Globals.BegEndArr[1].Name;
    ColumnNames.Items.Clear;

    for i := 0 to Length(Recogniser_new) -1 do
    Begin
      TmpItem := TMenuItem.Create(ColumnNames);
      TmpItem.Name := 'XX' + IntToStr(i);
      TmpItem.Caption := Recogniser_new[i].Name;
      TmpItem.OnClick := XXClick;
      ColumnNames.Items.Add(TmpItem);
    End;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_suplier, '');

    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    i := ColIni.ReadInteger('supplier','value',-1);
    icb_suplier.EditValue := i;
    def_suplier := i;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT c_id, country FROM countries order by country');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_GTDcountry, '');

    i := ColIni.ReadInteger('def_countryTrans','value',-1);
    icb_GTDcountry.EditValue := i;
    def_country_gtd := i;

    def_change_country := ColIni.ReadBool('change_country','value', false);
    def_change_hol_name := ColIni.ReadBool('change_hol_name','value', false);

    i := ColIni.ReadInteger('def_country','value',-1);
    def_country := i;

    DateTimePicker1.EditValue := Now();
    DateTimePicker2.EditValue := Now();
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TfrmReader.FormShow(Sender: TObject);
var i: integer;
    NewItem: TMenuItem;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
begin
  pcReadInvoice.ActivePageIndex := 0;

  AStoreKey     := ProgPath + '/ini/recognizer_main_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'Invoices';
  grid_translate_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);


  for i := 0 to grid_translate_v.ColumnCount - 1 do
  begin
    if (grid_translate_v.Columns[i].Tag < 999) then
    begin
      NewItem := TMenuItem.Create(ureaderFields);
      NewItem.Caption := grid_translate_v.Columns[i].Caption;
      NewItem.tag := i;
      NewItem.Checked := grid_translate_v.Columns[i].Visible;
      NewItem.Name := 'mn'+grid_translate_v.Columns[i].Name;
      NewItem.OnClick := FildsShow;
      ureaderFields.Add(NewItem);
    end;
  end;
end;

procedure TfrmReader.FildsShow(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then (Sender as TMenuItem).Checked := false else (Sender as TMenuItem).Checked := true;
  grid_translate_v.Columns[(Sender as TMenuItem).Tag].Visible := (Sender as TMenuItem).Checked;
end;





// Доступы к чтению исходного файла
procedure TfrmReader.aStep1Execute(Sender: TObject);
begin
  blbLoadFile.Enabled := true;
  blbRefresh.Enabled  := false;
  pnlTopRead.Enabled := true;

  blbSetColumn.Enabled   := lblFile.Caption <> 'Откройте файл для начала работы';
  blbSaveColumn.Enabled  := blbSetColumn.Enabled;
  bkbClearColumn.Enabled := blbSetColumn.Enabled;
  pnlEditInvoice.Enabled := blbSetColumn.Enabled;
  blbDel.Enabled := true;
  cdsTranslate.Close;

  lbl_set.Caption  := '';
  lbl_art.Caption  := '';
  lbl_name.Caption := '';
  AS_IS_POS := 0;
  lbl_percent.Caption := '% распознания -  ';

  currentInvID := 0;
  lblInvoice.Caption := '№ инвойса - ';
end;

// Доступы к разбору инвойса
procedure TfrmReader.aStep2Execute(Sender: TObject);
begin
  blbLoadFile.Enabled := false;
  blbRefresh.Enabled  := true;
  pnlTopRead.Enabled := false;

  blbSetColumn.Enabled   := false;
  blbSaveColumn.Enabled  := false;
  bkbClearColumn.Enabled := false;
  pnlEditInvoice.Enabled := false;
  blbDel.Enabled := false;
  aRefresh.Execute;

  currentInvID := 0;
  lblInvoice.Caption := '№ инвойса - ';
end;





// Работа с исходными данными из файла *****************************************

//  Сохраняем инвойс при EXCEL файле
procedure TfrmReader.aSaveSrcExecute(Sender: TObject);
VAR
  sql_str, tmp_str: string;
  res_val : Variant;
  i : integer;
  SKU,UNITS,AMOUNT_PER_UNIT,ORDER_NUMBER,PACKING_MARKS,
  TOTAL_AMOUNT, HOL_COLOUR, HOL_SUB_TYPE, ORDER_MARKNAME,PACKING_CODE,
  DESCRIPTION,SHORT_CODE,MARKS_CONTENT,MARKS_NAMES,SHORT_NAME,
  BAR_CODE, TRANSLATION, REMARKS, TROLLEY, TRUCK, CLIENT, AMOUNT_IN_THE_PACK : Variant;
  SPEC_LENGTH, SPEC_HEADS, SPEC_HEADS_SHRUB, SPEC_VD2, SPEC_WIDTH, SPEC_HIGHT : Variant;
  WEIGHT, WEIGHTDRY, NOM_NEW, NOM_START, COUNTRY, NOM_END, NOM_ADD, NOM_SPEC, NOM_PACK, NOM_PACK_HOL, replacement : Variant;
  error_string, error_param: string;
begin
  try
    if not AllowToPass then Exit;

    // Добавляем основную информацию об инвойсе
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
      ParamByName('IN_INV_DATE').AsDate           := DateTimePicker1.EditValue;
      ParamByName('IN_COMMENTS').AsString         := VarToStr(ed_comment.EditValue);
      ParamByName('IN_SUP_INV_DATE').AsDate       := DateTimePicker2.EditValue;
      ParamByName('IN_SUP_NUMBER').AsString       := VarToStr(ed_suplier.EditValue);
      ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
      ParamByName('IN_INV_MINUS').AsInteger       := 0;
      ParamByName('IN_S_ID').Value                := icb_suplier.EditValue;
      ParamByName('in_INV_ID').AsInteger          := res_val;
      ParamByName('IN_FILE_').AsString            := ExtractFileName(OpenDialog1.FileName);
      ParamByName('IN_OFFICE_ID').AsInteger       := dm.id_office;
      ParamByName('IN_country_gtd').AsInteger     := icb_GTDcountry.EditValue;
      Execute;
      res_val := ParamByName('in_INV_ID').Value;

      def_suplier := icb_suplier.EditValue;
      //def_country := invchooserForm.InvoicesC_ID_DEFAULT.AsInteger;
      def_country_gtd := icb_GTDcountry.EditValue;

      if res_val = -1 then
      Begin
        MessageBox(Handle, 'Произошла ошибка при добавлении основной информации об инвойсе!', 'Ошибка', MB_ICONERROR);
        Exit;
      End;
    End;

    if not SaveFile(res_val) then
    begin
      with DM.SelQ do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin INVOICE_PKG.delete_invoice(:INV_ID_); end;');
        ParamByName('INV_ID_').AsInteger := res_val;
        Execute;
      End;
      Exit;
    end;

    pg_main.Properties.Max := BegEndArr[1].row;
    pg_main.Visible   := true;
    pg_main.Repaint;

    // Цикл по StringGrid
    for i := BegEndArr[0].row to BegEndArr[1].row do
    Begin
        error_string := 'Обрабатываема строка - '+IntToStr(i);

        // Добавляем значения в сырой инвойс
        with DM.SelQ do
        Begin
            Close;
            SQL.Clear;
            sql_str := 'begin ';
            sql_str := sql_str + ' INVOICE_PKG.INV_REG_INSERT_DATA(:INV_ID_, :ORDER_NUMBER_, :ORDER_MARKNAME_, :PACKING_MARKS_, :PACKING_CODE_, :DESCRIPTION_, :UNITS_, :SKU_, :AMOUNT_IN_THE_PACK_, ';
            sql_str := sql_str + ' :HOL_COLOUR_, :HOL_SUB_TYPE_, :MARKS_CONTENT_, :MARKS_NAMES_, :SHORT_CODE_, :SHORT_NAME_, :BAR_CODE_, :TRANSLATION_, :AMOUNT_PER_UNIT_, :TOTAL_AMOUNT_, :REMARKS_, ';
            sql_str := sql_str + ' :SPEC_LENGTH_, :SPEC_HEADS_, :SPEC_HEADS_SHRUB_, :SPEC_VD2_, :SPEC_WIDTH_, :SPEC_HIGHT_, :TROLLEY_, :TRUCK_, :CLIENT_, :VOLUME_, :VOLDRY_, ';
            sql_str := sql_str + ' :NOM_NEW_, :NOM_START_, :COUNTRY_, :NOM_END_, :NOM_ADD_, :NOM_SPEC_, :NOM_PACK_, :NOM_PACK_HOL_, :replacement_';
            sql_str := sql_str + ' ); end;';
            SQL.Add(sql_str);

            if Recogniser_new[0].column <> -1 then ORDER_NUMBER := StrToVar(SG.Cells[Recogniser_new[0].column,i])
                                          else ORDER_NUMBER := 0;               // № Заказа
            if Recogniser_new[14].column <> -1 then ORDER_MARKNAME := StrToVar(SG.Cells[Recogniser_new[14].column,i])
                                          else ORDER_MARKNAME := NULL;          // Название заказа
            if Recogniser_new[17].column <> -1 then PACKING_MARKS := StrToVar(SG.Cells[Recogniser_new[17].column,i])
                                          else PACKING_MARKS := NULL;           // Номер коробки

            if Recogniser_new[9].column <> -1 then AMOUNT_IN_THE_PACK := StrToVar(SG.Cells[Recogniser_new[9].column,i])
                                          else AMOUNT_IN_THE_PACK := NULL;           // Количество в коробке

            UNITS := StrToVarInt(SG.Cells[Recogniser_new[18].column,i]);             // Общее кол.

            if Recogniser_new[28].column <> -1 then PACKING_CODE := StrToVar(SG.Cells[Recogniser_new[28].column,i])
                                          else PACKING_CODE := NULL;            // Тип упаковки
            if Recogniser_new[1].column <> -1 then SKU := SG.Cells[Recogniser_new[1].column,i]
                                          else SKU := NULL;                     // Артикул
            if Recogniser_new[15].column <> -1 then DESCRIPTION := StrToVar(SG.Cells[Recogniser_new[15].column,i])
                                          else DESCRIPTION := NULL;             // Название полное

            AMOUNT_PER_UNIT := StrToVarFloat(SG.Cells[Recogniser_new[31].column,i]);// Цена

            // Сумма
            if Recogniser_new[27].column <> -1 then TOTAL_AMOUNT := StrToVarFloat(SG.Cells[Recogniser_new[27].column,i])
                                           else try TOTAL_AMOUNT := AMOUNT_PER_UNIT*UNITS except TOTAL_AMOUNT := NULL; end;

            if Recogniser_new[4].column <> -1 then HOL_SUB_TYPE := StrToVar(SG.Cells[Recogniser_new[4].column,i])
                                           else HOL_SUB_TYPE := NULL;           // Голандский подтип
            if Recogniser_new[30].column <> -1 then HOL_COLOUR := StrToVar(SG.Cells[Recogniser_new[30].column,i])
                                           else HOL_COLOUR := NULL;             // Цвет
            if Recogniser_new[8].column <> -1 then SHORT_CODE := StrToVar(SG.Cells[Recogniser_new[8].column,i])
                                           else SHORT_CODE := NULL;             // Код названия
            if Recogniser_new[6].column <> -1 then MARKS_CONTENT := StrToVar(SG.Cells[Recogniser_new[6].column,i])
                                           else MARKS_CONTENT := NULL;          // Значение доп. кодов
            if Recogniser_new[19].column <> -1 then MARKS_NAMES := StrToVar(SG.Cells[Recogniser_new[19].column,i])
                                           else MARKS_NAMES := NULL;            // Описание доп. кодов
            if Recogniser_new[13].column <> -1 then SHORT_NAME := StrToVar(SG.Cells[Recogniser_new[13].column,i])
                                           else SHORT_NAME := NULL;             // Название без префиксов
            if Recogniser_new[32].column <> -1 then BAR_CODE := StrToVar(SG.Cells[Recogniser_new[32].column,i])
                                           else BAR_CODE := NULL;               // Штрих-код
            if Recogniser_new[20].column <> -1 then TRANSLATION := StrToVar(SG.Cells[Recogniser_new[20].column,i])
                                           else TRANSLATION := NULL;            // Перевод
            if Recogniser_new[22].column <> -1 then REMARKS := StrToVar(SG.Cells[Recogniser_new[22].column,i])
                                           else REMARKS := NULL;                // Ремаркс

            if Recogniser_new[33].column <> -1 then SPEC_LENGTH       := StrToVar(SG.Cells[Recogniser_new[33].column,i])
                                           else SPEC_LENGTH       := NULL;      // Длина (S20)
            if Recogniser_new[34].column <> -1 then SPEC_HEADS        := StrToVar(SG.Cells[Recogniser_new[34].column,i])
                                           else SPEC_HEADS        := NULL;      // Кол. голов (S22)
            if Recogniser_new[35].column <> -1 then SPEC_HEADS_SHRUB  := StrToVar(SG.Cells[Recogniser_new[35].column,i])
                                           else SPEC_HEADS_SHRUB  := NULL;      // Кол. голов куст. (S25)
            if Recogniser_new[36].column <> -1 then SPEC_VD2          := StrToVar(SG.Cells[Recogniser_new[36].column,i])
                                           else SPEC_VD2          := NULL;      // Кол-во в коробке (VD2)
            if Recogniser_new[37].column <> -1 then SPEC_WIDTH        := StrToVar(SG.Cells[Recogniser_new[37].column,i])
                                           else SPEC_WIDTH        := NULL;      // Диаметр горшка (S01)
            if Recogniser_new[38].column <> -1 then SPEC_HIGHT        := StrToVar(SG.Cells[Recogniser_new[38].column,i])
                                           else SPEC_HIGHT        := NULL;      // Высота горшка (S02)
            if Recogniser_new[29].column <> -1 then
              TROLLEY           := StrToVar(SG.Cells[Recogniser_new[29].column,i])
            else
            begin
              if Recogniser_new[17].column <> -1 then TROLLEY := StrToVar(SG.Cells[Recogniser_new[17].column,i])      // Тележка
              else TROLLEY := NULL;
            end;
            if Recogniser_new[12].column <> -1 then
            begin
              if cb_truck.ItemIndex = 0 then
                TRUCK := StrToVar(SG.Cells[Recogniser_new[12].column,i])
              else
                TRUCK := cb_truck.ItemIndex;
            end
                                          else TRUCK := NULL;

            if Recogniser_new[7].column <> -1 then CLIENT            := StrToVar(SG.Cells[Recogniser_new[7].column,i])
                                           else CLIENT            := NULL;      // Клиент
            if Recogniser_new[3].column <> -1 then WEIGHT            := StrToVar(SG.Cells[Recogniser_new[3].column,i])
                                           else WEIGHT            := 0;      // Объем цветка на воде
            if Recogniser_new[2].column <> -1 then WEIGHTDRY         := StrToVar(SG.Cells[Recogniser_new[2].column,i])
                                           else WEIGHTDRY         := 0;      // Объем цветка на сухую

            // Новинка
            if Recogniser_new[16].column <> -1 then NOM_NEW := StrToVar(SG.Cells[Recogniser_new[16].column,i]) else NOM_NEW := NULL;
            // Старт сезона
            if Recogniser_new[24].column <> -1 then NOM_START := StrToVar(SG.Cells[Recogniser_new[24].column,i]) else NOM_START := NULL;
            // Страна
            if Recogniser_new[26].column <> -1 then COUNTRY := StrToVar(SG.Cells[Recogniser_new[26].column,i]) else COUNTRY := NULL;

            // Признак конца сезона
            if Recogniser_new[11].column <> -1 then NOM_END := StrToVar(SG.Cells[Recogniser_new[11].column,i]) else NOM_END := NULL;
            // Признак добавки к заказу
            if Recogniser_new[5].column <> -1 then NOM_ADD := StrToVar(SG.Cells[Recogniser_new[5].column,i]) else NOM_ADD := NULL;
            // Признак спецпредложения
            if Recogniser_new[23].column <> -1 then NOM_SPEC := StrToVar(SG.Cells[Recogniser_new[23].column,i]) else NOM_SPEC := NULL;
            // Кол-во стеблей в упаковке
            if Recogniser_new[25].column <> -1 then NOM_PACK := StrToVar(SG.Cells[Recogniser_new[25].column,i]) else NOM_PACK := NULL;

            // Кол-во стеблей в упаковке от поставщика
            if Recogniser_new[39].column <> -1 then NOM_PACK_HOL := StrToVar(SG.Cells[Recogniser_new[39].column,i]) else NOM_PACK_HOL := NULL;

            // Замена поставщика
            if Recogniser_new[40].column <> -1 then replacement := StrToVar(SG.Cells[Recogniser_new[40].column,i]) else replacement := NULL;

            ParamByName('INV_ID_').AsInteger         := res_val;
            ParamByName('ORDER_NUMBER_').AsInteger   := 0; //ORDER_NUMBER;
            ParamByName('ORDER_MARKNAME_').AsString  := trim(VarToStr(ORDER_MARKNAME));
            ParamByName('PACKING_MARKS_').AsString   := trim(VarToStr(PACKING_MARKS));
            ParamByName('PACKING_CODE_').AsString    := trim(VarToStr(PACKING_CODE));
            ParamByName('DESCRIPTION_').AsString     := CutSpaces(trim(VarToStr(DESCRIPTION)));
            ParamByName('UNITS_').AsInteger          := UNITS;
            ParamByName('SKU_').AsString             := trim(VarToStr(SKU));
            ParamByName('AMOUNT_IN_THE_PACK_').Value := AMOUNT_IN_THE_PACK;
            ParamByName('HOL_COLOUR_').AsString      := trim(VarToStr(HOL_COLOUR));
            ParamByName('HOL_SUB_TYPE_').AsString    := trim( StringReplace(VarToStr(HOL_SUB_TYPE),'(*)','', [rfReplaceAll, rfIgnoreCase]) );
            ParamByName('MARKS_CONTENT_').AsString   := trim(VarToStr(MARKS_CONTENT));
            ParamByName('MARKS_NAMES_').AsString     := trim(VarToStr(MARKS_NAMES));
            ParamByName('SHORT_CODE_').AsString      := trim(VarToStr(SHORT_CODE));
            ParamByName('SHORT_NAME_').AsString      := CutSpaces(trim(VarToStr(SHORT_NAME)));
            ParamByName('BAR_CODE_').AsString        := trim(VarToStr(BAR_CODE));
            ParamByName('TRANSLATION_').AsString     := trim(VarToStr(TRANSLATION));
            ParamByName('AMOUNT_PER_UNIT_').AsFloat  := AMOUNT_PER_UNIT;
            ParamByName('TOTAL_AMOUNT_').AsFloat     := TOTAL_AMOUNT;
            ParamByName('REMARKS_').AsString         := trim(VarToStr(REMARKS));

            if (SPEC_LENGTH = NULL) then
              ParamByName('SPEC_LENGTH_').Value        := null
            else
              ParamByName('SPEC_LENGTH_').Value        := StrToInt(StringReplace(VarToStr(SPEC_LENGTH),'CM','', [rfReplaceAll, rfIgnoreCase]));

            ParamByName('SPEC_HEADS_').AsString       := trim(VarToStr(SPEC_HEADS));
            ParamByName('SPEC_HEADS_SHRUB_').AsString := trim(VarToStr(SPEC_HEADS_SHRUB));
            ParamByName('SPEC_VD2_').AsString         := trim(VarToStr(SPEC_VD2));
            ParamByName('SPEC_WIDTH_').Value          := SPEC_WIDTH;
            ParamByName('SPEC_HIGHT_').Value          := SPEC_HIGHT;
            ParamByName('TROLLEY_').AsString          := trim(VarToStr(TROLLEY));
            ParamByName('TRUCK_').AsString            := trim(VarToStr(TRUCK)); //TRUCK;
            ParamByName('CLIENT_').AsString           := trim(VarToStr(CLIENT));
            ParamByName('VOLUME_').AsFloat            := WEIGHT;
            ParamByName('VOLDRY_').AsFloat            := WEIGHTDRY;
            ParamByName('NOM_NEW_').AsString          := trim(VarToStr(NOM_NEW));
            ParamByName('NOM_START_').AsString        := trim(VarToStr(NOM_START));
            ParamByName('COUNTRY_').AsString          := trim(VarToStr(COUNTRY));
            ParamByName('NOM_END_').AsString          := trim(VarToStr(NOM_END));
            ParamByName('NOM_ADD_').AsString          := trim(VarToStr(NOM_ADD));
            ParamByName('NOM_SPEC_').AsString         := trim(VarToStr(NOM_SPEC));
            ParamByName('NOM_PACK_').AsString         := trim(VarToStr(NOM_PACK));
            ParamByName('NOM_PACK_HOL_').AsString     := trim(VarToStr(NOM_PACK_HOL));
            ParamByName('replacement_').AsString     := trim(VarToStr(replacement));

            Execute;
        End; // цикл по StringGrid

        pg_main.Position := i;
        pg_main.Repaint;
    end;

    currentInvID := res_val;
    SetInvoice;
    
    ShowMessage('Операция завершена успешно!');
    pg_main.Visible   := false;

  except on e : EOraError do
      Begin
        Application.MessageBox(PChar(e.Message + #13 + VarToStr(error_string) + #13 + VarToStr(error_param)),'Ошибка записи в БД',MB_ICONWARNING);
      End;
  End;
end;


//  Распознать текущий инвойс
procedure TfrmReader.aRecognizeExecute(Sender: TObject);
var tmp_id: integer;
begin
  if currentInvID > 0 then
  begin
    tmp_id := currentInvID;
    pcReadInvoice.ActivePageIndex := 1;
    aStep2.Execute;
    lblInvoice.Caption := '№ инвойса - №'+VarToStr(tmp_id);
    lbl_total.Caption := 'Позиций в инвойсе - '+IntToStr(SG.RowCount-1);
    currentInvID := tmp_id;
    btnGoToNew.Enabled := true;
    aCalcStat.Execute;
  end;
end;

// Открыть файл
procedure TfrmReader.blbLoadFileClick(Sender: TObject);
var Values: OLEVariant;
    ISheet: ExcelXP._Worksheet;
    IRange: ExcelXP.ExcelRange;
    i, j, end_row: integer;
    SCount : integer;
    StrList : TStringList;
    Alphabet : String;
    Ext : string;
    nodeStr,InfStr : string;
    info_i : integer;
//    InvInfo: IXMLNode;
    fs : TFormatSettings;
    RegIni : TRegIniFile;
begin
  FullFileName := '';

  FillRecogniser_new;
  FillBegEndArr;
  ClearSG;
  GetLocaleFormatSettings(1251,fs);
  fs.DateSeparator    := '-';
  fs.ShortDateFormat  := 'MM-dd-yyyy';
  Alphabet            := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  StrList             := TStringList.Create;

  try
    RegIni:=TRegIniFile.Create('Software');
    RegIni.OpenKey('StarDB', true);
    RegIni.OpenKey('ExRead', true);
    OpenDialog1.InitialDir := RegIni.ReadString('LastOpenedFileDir', 'LOFD', ExtractFilePath(ParamStr(0)));
    if not OpenDialog1.Execute then abort;
    FullFileName := OpenDialog1.FileName;
    RegIni.WriteString('LastOpenedFileDir', 'LOFD', ExtractFilePath(FullFileName));
    RegIni.Free;
  except
    MessageBox(Handle, 'Файл не выбран!', 'Внимание', MB_ICONWARNING);
    Exit;
  End;

  try
     CreateExcel(false);
     ShowExcel;
     FIWorkbook := IXLSApp.Workbooks.Open(FullFileName,
               EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
               EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, false, 0);
     Self.BringToFront;
     Self.Repaint;
     Application.BringToFront;

     if Assigned(IWorkbook) then
     begin

        try
            SCount := IWorkbook.Worksheets.Count;
            StrList := TStringList.Create;
            for i := 1 to SCount do
            Begin
                ISheet := IWorkbook.Worksheets.Item[i] as ExcelXP._Worksheet;
                StrList.Add(Isheet.Name);
                ISheet := nil;
            End;

            ChooseSheet := TChooseSheet.Create(Application);
            ChooseSheet.ListBox1.Items := StrList;
            StrList.Free;
            ChooseSheet.ShowModal;

            if ChooseSheet.completed then
            Begin
                try
                  ISheet := IWorkbook.Worksheets.Item[ChooseSheet.SheetChoosed] as ExcelXP._Worksheet;
                  IRange := ISheet.UsedRange[0];

                  if IRange.Columns.Count > 2 then
                  Begin
                      SG.ColCount := IRange.Columns.Count + 1;
                      SG.RowCount := IRange.Rows.Count+2;

                      Globals.BegEndArr[0].row := 1;
                      Globals.BegEndArr[1].row := IRange.Rows.Count;
                      RefreshGrid(false);

                      Values := IRange.Value2;
                      end_row := 0;
                      for i := 0 to IRange.Rows.Count do
                      begin
                          for j := 1 to IRange.Columns.Count do
                          begin
                            if i = 0 then
                            begin
                              if j > 26 then
                                SG.Cells[j,i] := Alphabet[j-26]+'1'
                              else
                                SG.Cells[j,i] := Alphabet[j];
                            end
                            else
                            begin
                              if (j = 1) and (VarToStr(Values[i, j]) <> '') then
                                end_row := i;
                              SG.Cells[j,i] := Values[i, j];
                            end;
                          end;
                      end;

                      //blbRefresh.Enabled     := (length(FullFileName) > 0);
                      //blbSave.Enabled        := (length(FullFileName) > 0);
                      blbSetColumn.Enabled   := (length(FullFileName) > 0);
                      blbSaveColumn.Enabled  := (length(FullFileName) > 0);
                      bkbClearColumn.Enabled := (length(FullFileName) > 0);
                      lblFile.Caption        := FullFileName;
                      aSaveSrc.Enabled       := true;
                      pnlEditInvoice.Enabled := true;

                  End
                  else MessageBox(Handle, 'В этом файле недостаточное количетсво столбцов!', 'Внимание', MB_ICONWARNING);

                finally
                  IRange := nil;
                  ISheet := nil;
                end;
            End;
        except
          raise Exception.Create('Не могу прочитать данные в массив!');
        end;
     end;   // if Assigned(IWorkbook) then

  finally
    FIWorkbook:= nil;
    ReleaseExcel; // святое дело
  End;
end;


//  Проверка на возможность продолжать сохранение инвойса
function TfrmReader.AllowToPass : boolean;
var res: boolean;
begin
  res := true;

    if (Recogniser_new[18].column = -1)      // общее кол-во
        or (Recogniser_new[15].column = -1)  // название полное
        or (Recogniser_new[31].column = -1) // цена
        or (Recogniser_new[13].column = -1) // название без префиксов
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены!'+
                          #10' - общее кол-во'+
                          #10' - название полное'+
                          #10' - название без префиксов'+
                          #10' - цена',
                          'Внимание', MB_ICONWARNING);
        ShowMessage('Не все ключевые названия столбцов проставлены!');
        res := false;
    End;

    if (CUR_DEPT_ID = 61) and (
        (Recogniser_new[27].column = -1)    // Диаметр
        or (Recogniser_new[26].column = -1) // Высота
        )
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены для горшечного отдела!'+
                          #10' - Диаметр'+
                          #10' - Высота',
                          'Внимание', MB_ICONWARNING);
        res := false;
    End;


    if (BegEndArr[0].row = -1) or (BegEndArr[1].row = -1) then
    Begin
        MessageBox(Handle, 'Не проставлены начало и конец!', 'Внимание', MB_ICONWARNING);
        res := false;
    End;


    if (icb_suplier.EditValue = 0) then
    Begin
        MessageBox(Handle, 'Необходимо проставить поставщика!', 'Внимание', MB_ICONWARNING);
        res := false;
    End;

    result := res;
end;

// Запишем файл с приходом
function TfrmReader.SaveFile(res_val : variant) : boolean;
var res: boolean;
    dir_name: string;
begin
  res := true;

  // Создание папок внутри папки программы -----------------------------
  if not DirectoryExists(ProgPath+'\IN') then
  if not CreateDir(ProgPath+'\IN') then
  begin
    MessageBox(Handle, PChar('Ошибка создания директории - '+ProgPath+'\IN'), 'Внимание', MB_ICONWARNING);
    res := false;
  end;
  if not DirectoryExists(ProgPath+'\IN\'+VarToStr(res_val)) then
  if not CreateDir(ProgPath+'\IN\'+VarToStr(res_val)) then
  begin
    MessageBox(Handle, PChar('Ошибка создания директории - '+ProgPath+'\IN\'+VarToStr(res_val)), 'Внимание', MB_ICONWARNING);
    res := false;
  end;
  dir_name := ProgPath+'\IN\'+VarToStr(res_val);
  // -------------------------------------------------------------------

  CopyFile(PChar(OpenDialog1.FileName), PChar(dir_name+'\'+ExtractFileName(OpenDialog1.FileName)), true);
  result := res;
end;

//  Уставки для инвойса
procedure TfrmReader.SetInvoice;
begin
  aRecognize.Enabled := (currentInvID > 0);
  if currentInvID > 0 then
    lblInvoice.Caption := '№ инвойса - №'+VarToStr(currentInvID)
  else
    lblInvoice.Caption := '№ инвойса - ';
end;
// *****************************************************************************





procedure TfrmReader.aRefreshExecute(Sender: TObject);
var bm: TBookMark;
begin
  if cdsTranslate.Active then
  begin
    bm     := grid_translate_v.DataController.DataSet.GetBookmark;
    try
    cdsTranslate.Refresh;
    finally
      grid_translate_v.DataController.DataSet.GotoBookmark(bm);
      grid_translate_v.DataController.DataSet.FreeBookmark(bm);
    end;
  end
  else
  begin
    cdsTranslate.ParamByName('p_inv_id').AsInteger := currentInvID;
    cdsTranslate.Open;
    aAddNom.Enabled := (not cdsTranslate.IsEmpty and ed);
    btnSave.Enabled := (not cdsTranslate.IsEmpty and ed);
  end;
end;


procedure TfrmReader.btnGoToNewClick(Sender: TObject);
begin
  if currentInvID > 0 then
  begin
    pcReadInvoice.ActivePageIndex := 0;
    aStep1.Execute;
    (Sender as TcxButton).Enabled := false;
  end;
end;

// Открытие инвойса для распознавания
procedure TfrmReader.btnLoadInvClick(Sender: TObject);
var idd: integer;
begin
  idd := 0;
  Cursor := crHourGlass;
  aStep2.Execute;
  invchooserForm := TinvchooserForm.Create(Application);
  try
    invchooserForm.Invoices.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
    invchooserForm.Invoices.Open;
    if invchooserForm.ShowModal = mrOk then
    begin
      AS_IS_POS := 0;
      idd := invchooserForm.InvoicesINV_ID.AsInteger;
      AS_IS_POS := invchooserForm.InvoicesAS_IS_POS.AsInteger;
      lbl_total.Caption := 'Позиций в инвойсе - '+IntToStr(AS_IS_POS);
      if invchooserForm.InvoicesS_ID_DEFAULT.AsInteger > 0 then
        def_suplier := invchooserForm.InvoicesS_ID_DEFAULT.AsInteger;
      if invchooserForm.InvoicesC_ID_DEFAULT.AsInteger > 0 then
        def_country := invchooserForm.InvoicesC_ID_DEFAULT.AsInteger;
      if invchooserForm.InvoicesCOUNTRY_GTD.AsInteger > 0 then
        def_country_gtd := invchooserForm.InvoicesCOUNTRY_GTD.AsInteger;
    end;
  finally
    cursor := crDefault;
    invchooserForm.Free;
  end;

  if idd > 0 then
  begin
    currentInvID := idd;
    Cursor := crHourGlass;
    cdsTranslate.Close;
    cdsTranslate.ParamByName('p_inv_id').AsInteger := idd;
    cdsTranslate.Open;

    aAddNom.Enabled := (not cdsTranslate.IsEmpty and ed);
    btnSave.Enabled := (not cdsTranslate.IsEmpty and ed);
    aCalcStat.Execute;

    lblInvoice.Caption := '№ инвойса - №'+VarToStr(idd);
    btnGoToNew.Enabled := true;
  end;
end;



procedure TfrmReader.aCalcStatExecute(Sender: TObject);
var idd, cnt, cnt_desc, cnt_inv: integer;
begin
    cnt := 0;
    cnt_desc := 0;
    cnt_inv := 0;
    cursor := crHourGlass;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT count(i.invoice_data_as_is_id) as brown, count(m.invoice_data_as_is_id) as green, count(*) as total');
    DM.SelQ.SQL.Add('FROM invoice_data_as_is a');
    DM.SelQ.SQL.Add('left outer join invoice_data_as_is_map m on m.invoice_data_as_is_id = a.invoice_data_as_is_id');
    DM.SelQ.SQL.Add('left outer join invoice_data i on i.invoice_data_as_is_id = a.invoice_data_as_is_id');
    DM.SelQ.SQL.Add('where a.inv_id = :p1');
    DM.SelQ.ParamByName('p1').AsInteger := currentInvID; //invchooserForm.InvoicesINV_ID.AsInteger;
    try
      DM.SelQ.Open;
    finally
      cursor := crDefault;
    end;

    lbl_set.Caption  := DM.SelQ.FieldByName('green').AsString; // IntToStr(cnt);
    lbl_art.Caption  := IntToStr(DM.SelQ.FieldByName('total').AsInteger - DM.SelQ.FieldByName('green').AsInteger); // IntToStr(cnt_desc);
    lbl_name.Caption := DM.SelQ.FieldByName('brown').AsString; //IntToStr(cnt_inv);
    if AS_IS_POS > 0 then
      lbl_percent.Caption := '% распознания -  '+IntToStr(round((DM.SelQ.FieldByName('green').AsInteger/AS_IS_POS)*100));
      lbl_total.Caption   := 'Позиций в инвойсе - '+IntToStr(AS_IS_POS)+' / '+ lbl_set.Caption;
    DM.SelQ.Close;
end;




// Добавить номенклатуру
procedure TfrmReader.aAddNomExecute(Sender: TObject);
var res, i, op1, op2, op3, idd : integer;
begin
  if cdsTranslate.IsEmpty or not cdsTranslateN_ID.IsNull { or cdsTranslateN_ID_DESC.IsNull } then exit;

  idd :=  cdsTranslateINVOICE_DATA_AS_IS_ID.AsInteger;
  NewD := TNewD.Create(Application);
  try
    NewD.N_ID_    := -1; //aUpdate.Tag;
    NewD.OUT_ID   := 0;
    NewD.cds      := (grid_translate_v.DataController.DataSet as TOraQuery);
    DM.n_id_      := aUpdate.Tag;
    NewD.editing  := (aUpdate.Tag > 0);
//**    NewD.editing  := false;

    NewD.or_id    := idd;
    NewD.or_kod   := cdsTranslateSHORT_CODE.AsString;
    NewD.or_group := cdsTranslateHOL_SUB_TYPE.AsString;
//    NewD.or_code  := cdsTranslateSHORT_CODE.AsString;
//    NewD.or_flow  := DictViewFLOW.AsInteger;
//    NewD.or_title := DictViewTITLE.AsString;
//    NewD.or_mark  := DictViewREMARKS.AsString;
//    NewD.or_gr    := DictViewGR.AsString;
//    NewD.or_spec  := DictViewMARK.AsString;
    NewD.or_color     := cdsTranslateHOL_COLOUR.AsString;
    NewD.or_suplier   := def_suplier;
    NewD.or_remarks   := cdsTranslateREMARKS.AsString;
    NewD.or_nom_new   := (cdsTranslateNOM_NEW.AsInteger = 1);
    NewD.or_nom_start := (cdsTranslateNOM_START.AsInteger = 1);
    NewD.or_nom_end   := (cdsTranslateNOM_END.AsInteger = 1);

    NewD.or_volume := cdsTranslateVOLUME.AsFloat;
    NewD.or_volume_dry := cdsTranslateVOLDRY.AsFloat;

    if (trim(cdsTranslateCOUNTRY_.AsString) <> '') then
    begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT c_id FROM countries where upper(country)=:p1 or upper(country_eng)=:p2');
      DM.SelQ.ParamByName('p1').AsString := AnsiUpperCase(trim(cdsTranslateCOUNTRY_.AsString));
      DM.SelQ.ParamByName('p2').AsString := AnsiUpperCase(trim(cdsTranslateCOUNTRY_.AsString));
      DM.SelQ.Open;
      if not DM.SelQ.IsEmpty then
        NewD.or_country := DM.SelQ.FieldByName('c_id').Value;
      DM.SelQ.Close;
    end
    else
      NewD.or_country  := def_country;


    NewD.or_eng_name := cdsTranslateSHORT_NAME.AsString;
    NewD.or_eng_full_name := cdsTranslateDESCRIPTION.AsString;
//    NewD.or_name     := DictViewBASERU.AsString;
    NewD.or_s20      := cdsTranslateSPEC_LENGTH.AsString;
    NewD.or_s22      := cdsTranslateSPEC_HEADS.AsString;
    NewD.or_s25      := cdsTranslateSPEC_HEADS_SHRUB.AsString;
    NewD.or_vd2      := cdsTranslateSPEC_VD2.AsString;
    NewD.or_pack     := cdsTranslateNOM_PACK.AsInteger;
    NewD.or_pack_hol := cdsTranslateNOM_PACK_HOL.AsInteger;

    if cdsTranslateSPEC_LENGTH.AsString <> '' then
    begin
       if pos('CM',cdsTranslateSPEC_LENGTH.AsString) > 0 then
         NewD.or_len      := trim(copy(cdsTranslateSPEC_LENGTH.AsString,0,pos('CM',cdsTranslateSPEC_LENGTH.AsString)-1))
       else
         NewD.or_len      := trim(cdsTranslateSPEC_LENGTH.AsString);
    end
    else
      NewD.or_len      := '0';
      NewD.cb_length.EditValue   := NewD.or_len;
      NewD.ed_postname.EditValue := NewD.or_eng_full_name;
      NewD.ed_remarks.EditValue  := NewD.or_mark;
      NewD.ed_barcode.EditValue  := NewD.or_code;
      NewD.btnNomSearch.Visible := true;
      res := NewD.ShowModal;
      if ( res = mrOk) {and not isAutoLoad} then
      begin
        executeSQL('insert into invoice_data_as_is_map values('+IntToStr(idd)+', '+IntToStr(NewD.OUT_ID)+','''+StringReplace(cdsTranslateSKU.AsString,'''','''''', [rfReplaceAll])+''',null)');
        if not DM.Nomenclature.Active then
          DM.Nomenclature.Open
        else
          DM.Nomenclature.Refresh;
        aCalcStat.Execute;
      end;

  finally
    NewD.Free;
    aUpdate.Tag := -1;
  end;
end;








procedure TfrmReader.executeSQL(sqlStr: String);
begin
  try
    with DM.SelQ do
    Begin
      SQL.Clear;
      SQL.Add(sqlStr);
//      ParamByName('invoice_data_as_is_id').Value := cdsTranslateINVOICE_DATA_AS_IS_ID.AsInteger;
      Execute;
      cdsTranslate.RefreshRecord;
    End;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


// Просмотр похожей номенклатуры
procedure TfrmReader.aShowNomExecute(Sender: TObject);
var res: integer;
begin
  frmNomenclature := TfrmNomenclature.Create(Application);
  try
    if (cdsTranslate.fieldByName('SHORT_CODE').AsString <> '') then
    begin
      frmNomenclature.code_name    := cdsTranslateSHORT_CODE.AsString;
      frmNomenclature.full_name    := cdsTranslateDESCRIPTION.AsString;
      frmNomenclature.item_length  := cdsTranslateSPEC_LENGTH.AsInteger;
      frmNomenclature.color_name   := cdsTranslateHOL_COLOUR.AsString;
      frmNomenclature.remarks_name := cdsTranslateREMARKS.AsString;                                                                                 

      frmNomenclature.lbl_content.Caption := cdsTranslateSHORT_CODE.AsString + ' | ' + cdsTranslateDESCRIPTION.AsString + ' | ' + cdsTranslateREMARKS.AsString;
      frmNomenclature.pnl_head.Visible := true;
      frmNomenclature.aFilterByCode.Execute;
      frmNomenclature.aFilterByRemarks.Execute;
    end;
    res := frmNomenclature.ShowModal;
//    ShowMessage(IntToStr(res));
//    ShowMessage(BoolToStr(cdsTranslateN_ID.IsNull));
    if (res = mrOk) and cdsTranslateN_ID.IsNull then
    begin
//      ShowMessage('Q');
//      if MessageDlg( PChar('Установить для позиции "'+cdsTranslateDESCRIPTION.AsString+'" выбранную номенклатуру "'+DM.NomenclatureCOMPILED_NAME_OTDEL.AsString+'"'), mtConfirmation,[mbOk, mbNo],0) = mrOk then
//      begin
        if DM.NomenclatureH_CODE.AsString <> cdsTranslatesku.AsString then
          executeSQL('insert into invoice_data_as_is_map values('+cdsTranslateINVOICE_DATA_AS_IS_ID.AsString+', '+DM.NomenclatureN_ID.AsString+','''+StringReplace(cdsTranslatesku.AsString,'''','''''', [rfReplaceAll])+''',1)')
        else
          executeSQL('insert into invoice_data_as_is_map values('+cdsTranslateINVOICE_DATA_AS_IS_ID.AsString+', '+DM.NomenclatureN_ID.AsString+','''+StringReplace(cdsTranslatesku.AsString,'''','''''', [rfReplaceAll])+''',null)');
//      end;
        DM.STAR_DB.Commit;
    end;
  finally
    frmNomenclature.Free;
  end;
end;


// Убрать установленную позицию
procedure TfrmReader.aRemoveNomExecute(Sender: TObject);
var i, cc, id, n_id, n_id_desc: integer;
    SavePlace : TBookmark;
begin
  if cdsTranslate.IsEmpty or not cdsTranslateINVOICE_DATA_ID.IsNull then exit;

  cc := grid_translate_v.Controller.SelectedRowCount;
  if cc = 0 then
  begin
    MessageBox(Handle, 'Необходимо выделить хотя бы одну запись', 'Внимание', MB_ICONWarning);
    exit;
  end;

  try
    SavePlace := cdsTranslate.GetBookmark;
    cdsTranslate.DisableControls;
    cursor := crHourGlass;
    pg_execute.Position := 0;
    if cc = 1 then
      pg_execute.Properties.Max := 1
    else
      pg_execute.Properties.Max := cc-1;
    pg_execute.Visible := true;
    for I := 0 to cc - 1 do
    begin
      id   := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[_INVOICE_DATA_AS_IS_ID.Index]);
//      n_id := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[grid_translate_vN_ID.Index]);
//      n_id_desc := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[grid_translate_vN_ID_DESC.Index]);
      pg_execute.Position := i;
      pg_execute.Repaint;
      if id > 0 then
        executeSQL( 'delete from invoice_data_as_is_map where invoice_data_as_is_id = '+IntToStr(id) );
//        executeSQL( 'delete from invoice_data_as_is_map where invoice_data_as_is_id = '+IntToStr(id) +' and n_id = '+IntToStr(n_id) );
    end;
  finally
    if cc > 1 then
    begin
      cdsTranslate.Refresh;
      aCalcStat.Execute;
      cdsTranslate.GotoBookmark(SavePlace);
      cdsTranslate.FreeBookmark(SavePlace);
      pg_execute.Visible := false;
    end;
    cdsTranslate.EnableControls;
    aCalcStat.Execute;
    cursor := crDefault;
  end;
end;


// Добавить установку позиции
procedure TfrmReader.aSetNomExecute(Sender: TObject);
var i, cc, id, n_id, n_id_desc: integer;
    sku: string;
    SavePlace : TBookmark;
begin
  if cdsTranslate.IsEmpty or not cdsTranslateINVOICE_DATA_ID.IsNull then exit;

  cc := grid_translate_v.Controller.SelectedRowCount;
  if cc = 0 then
  begin
    MessageBox(Handle, 'Необходимо выделить хотя бы одну запись', 'Внимание', MB_ICONWarning);
    exit;
  end;

  try
    SavePlace := cdsTranslate.GetBookmark;
    cdsTranslate.DisableControls;
    cursor := crHourGlass;
    pg_execute.Visible := false;
    pg_execute.Position := 0;
    if cc = 1 then
      pg_execute.Properties.Max := 1
    else
      pg_execute.Properties.Max := cc-1;
    pg_execute.Visible := true;
    for I := 0 to cc - 1 do
    begin
      id   := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[_INVOICE_DATA_AS_IS_ID.Index]);
      n_id := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[grid_translate_vN_ID.Index]);
      n_id_desc := VarToInt(grid_translate_v.Controller.SelectedRows[i].Values[grid_translate_vN_ID_DESC.Index]);
      sku := VarToStr(grid_translate_v.Controller.SelectedRows[i].Values[grid_translate_vSKU.Index]);
      pg_execute.Position := i;
      pg_execute.Repaint;
      if (n_id = -1) and (n_id_desc > 0) then
        executeSQL('INSERT INTO invoice_data_as_is_map SELECT '+IntToStr(id)+', '+IntToStr(n_id_desc)+','''+StringReplace(sku,'''','''''', [rfReplaceAll])+''', null FROM dual WHERE NOT EXISTS (SELECT 1 FROM invoice_data_as_is_map WHERE invoice_data_as_is_id = '+IntToStr(id)+')');
    end;
  finally
    if cc > 1 then
    begin
      cdsTranslate.Refresh;
      aCalcStat.Execute;
      cdsTranslate.GotoBookmark(SavePlace);
      cdsTranslate.FreeBookmark(SavePlace);
      pg_execute.Visible := false;
    end;
    cdsTranslate.EnableControls;
    aCalcStat.Execute;
    cursor := crDefault;
  end;
end;



// Раскрасим позиции
procedure TfrmReader.grid_translate_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var  var1 : variant;
begin

  if not AViewInfo.Selected and (grid_translate_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_OTDEL') then
  begin
    // Красим позиции совпавшие по артиклу
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('N_ID_DESC').Index
            );
    if (var1 > 0) then ACanvas.Brush.Color := stEQbyParams.Color;

    // Красим установленные позиции
    // Это условие всегда должно быть последним
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('N_ID').Index
            );
    if (var1 > 0) then ACanvas.Brush.Color := stSetNom.Color;
  end;

  if not AViewInfo.Selected then
  begin
    // Красим позиции сохраненные в инвойсе
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('INVOICE_DATA_ID').Index
            );
    if (var1 > 0) then ACanvas.Brush.Color := stEQbyName.Color;

    // Красим позиции сохраненные в инвойсе
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('CHECKED').Index
            );
    if (var1 = 0) then ACanvas.Brush.Color := stNeedToCheck.Color;


    // Красим позиции с заменой, что не находят номенклатуру
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('replacement_is_find').Index
            );
    if (var1 > 0) and (grid_translate_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'REPLACEMENT') then ACanvas.Brush.Color := stNoReplacment.Color;

    // Красим позиции с двойной номенклатурой
    var1 := grid_translate_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_translate_v.GetColumnByFieldName('nn').Index
            );
    if (var1 > 1) then ACanvas.Brush.Color := stIsNotSingle.Color;
  end;

end;


procedure TfrmReader.grid_translate_vEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := cdsTranslateINVOICE_DATA_ID.IsNull;
end;



// Экспорт в Эксель
procedure TfrmReader.mnExportToExcelClick(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
     ExportGridToExcel(DM.SaveDialog.FileName, grid_translate, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
end;

// Просмотр полной информации по номенклатуре
procedure TfrmReader.aShowFullInfoExecute(Sender: TObject);
begin
  if cdsTranslate.IsEmpty or (cdsTranslateN_ID.IsNull and cdsTranslateN_ID_DESC.IsNull) then exit;
  frm_full_info := Tfrm_full_info.Create(Application);
  try
    With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      if cdsTranslateN_ID.IsNull then
        SelNom.ParamByName('N_ID').Value := grid_translate_v.DataController.DataSet.FieldByName('N_ID_DESC').AsInteger
      else
        SelNom.ParamByName('N_ID').Value := grid_translate_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
    End;
  finally
    frm_full_info.Free;
  end;
end;

procedure TfrmReader.grid_translate_vCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  aShowFullInfo.Execute;
end;

procedure TfrmReader.grid_translate_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then aShowFullInfo.Execute;
end;

procedure TfrmReader.pmTransMainPopup(Sender: TObject);
begin
 mnAddNom.Enabled    := not (cdsTranslate.IsEmpty or not cdsTranslateN_ID.IsNull);
 mnEditNom.Enabled   := false;
 mnSetNom.Enabled    := (not (cdsTranslate.IsEmpty or not cdsTranslateN_ID.IsNull or cdsTranslateN_ID_DESC.IsNull)) and cdsTranslateINVOICE_DATA_ID.IsNull;
 mnRemoveNom.Enabled := (not (cdsTranslate.IsEmpty or cdsTranslateN_ID.IsNull)) and cdsTranslateINVOICE_DATA_ID.IsNull;
end;


procedure TfrmReader.lbl_artDblClick(Sender: TObject);
begin
  sort_table('N_ID_DESC');
end;

procedure TfrmReader.lbl_setDblClick(Sender: TObject);
begin
  sort_table('N_ID');
end;

procedure TfrmReader.dxBarStatic1Click(Sender: TObject);
begin
  sort_table('CHECKED');
end;

procedure TfrmReader.bsIsNotSingleClick(Sender: TObject);
begin
  sort_table('NN');
end;

procedure TfrmReader.bsNoReplacmentClick(Sender: TObject);
begin
  sort_table('REPLACEMENT_IS_FIND');
end;

procedure TfrmReader.sort_table(filter_param: String);
begin
  grid_translate_v.DataController.Filter.Clear;
  if filter_param <> '' then
  begin
    if filter_param = 'N_ID_DESC' then
    begin
      grid_translate_vN_ID_DESC.DataBinding.AddToFilter(nil, foNotEqual, NULL);
      grid_translate_vN_ID.DataBinding.AddToFilter(nil, foEqual, NULL)
    end;
    if filter_param = 'N_ID' then grid_translate_vN_ID.DataBinding.AddToFilter(nil, foNotEqual, NULL);
    if filter_param = 'CHECKED' then grid_translate_vCHECKED.DataBinding.AddToFilter(nil, foEqual, 0);
    if filter_param = 'REPLACEMENT_IS_FIND' then grid_translate_vREPLACEMENT_IS_FIND.DataBinding.AddToFilter(nil, foGreater, 0);
    if filter_param = 'NN' then grid_translate_vNN.DataBinding.AddToFilter(nil, foGreater, 1);
    grid_translate_v.DataController.Filter.Active := True;
  end;
end;



procedure TfrmReader.aClearFilterExecute(Sender: TObject);
begin
  grid_translate_v.DataController.Filter.Clear;
end;


// Сохранение распознавания в разобранном инвойсе
procedure TfrmReader.btnSaveClick(Sender: TObject);
var cnt_inv, i, new_id: integer;
    replace_country: boolean;
begin
  if cdsTranslate.IsEmpty then exit;

//  replace_country := false;
  replace_country := (MessageDlg( 'Провести замену стран по исходным данным инвойса в текущей номенклатуре?', mtConfirmation,[mbOk, mbNo],0) = mrOk);

  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
  DM.SelQ.ParamByName('IN_INV_ID').AsInteger                := currentInvID;
  DM.SelQ.ParamByName('IN_STORN').AsInteger                 := 0;
  DM.SelQ.ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
  DM.SelQ.ParamByName('IN_GTD').Value                       := '';
  DM.SelQ.ParamByName('IN_GTD_COUNTRY').Value               := def_country_gtd;

  cursor := crHourGlass;
  cdsTranslate.DisableControls;
  try
    cdsTranslate.First;
    pg_execute.Position := 0;
    pg_execute.Properties.Max := cdsTranslate.RecordCount-1;
    pg_execute.Visible := true;
    i := 0;
    cnt_inv := 0;
    while not cdsTranslate.Eof do
    begin
      if cdsTranslateINVOICE_DATA_ID.IsNull and (not cdsTranslateN_ID.IsNull) then
      begin
        new_id := 0;
        DM.SelQ.ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := cdsTranslateINVOICE_DATA_AS_IS_ID.AsInteger;
        DM.SelQ.ParamByName('IN_N_ID').AsInteger                  := cdsTranslateN_ID.AsInteger;
        DM.SelQ.ParamByName('IN_UNITS').AsInteger                 := cdsTranslateUNITS.AsInteger;
        DM.SelQ.ParamByName('IN_PRICE_PER_UNIT').AsFloat          := cdsTranslateAMOUNT_PER_UNIT.AsCurrency;
        DM.SelQ.ParamByName('IN_TOTAL_SUM').AsFloat               := cdsTranslateAMOUNT_PER_UNIT.AsCurrency * cdsTranslateUNITS.AsInteger;
        DM.SelQ.ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := cdsTranslateAMOUNT_IN_THE_PACK.AsInteger;
        DM.SelQ.ParamByName('IN_NEW').AsInteger                   := cdsTranslateNOM_NEW.AsInteger;
        DM.SelQ.ParamByName('IN_SPEC').AsInteger                  := cdsTranslateNOM_SPECIAL.AsInteger;
        DM.SelQ.ParamByName('IN_CLIENT').AsString                 := cdsTranslateCLIENT.AsString;
        DM.SelQ.ParamByName('IN_parent').value                    := NULL;
        DM.SelQ.Execute;
        new_id := DM.SelQ.ParamByName('OUT_INVOICE_DATA_ID').AsInteger;

        // Вызов процедуры по смене веса при его наличии
        if (cdsTranslateVOLUME.AsFloat <> 0) or (cdsTranslateVOLDRY.AsFloat <> 0) then
        begin
          DM.ForceQ.Close;
          DM.ForceQ.SQL.Text := 'begin INVOICE2_PKG.CHANGE_VOLUME(:N_ID_, :VOLUME_, :VOLDRY_); end;';
          DM.ForceQ.ParamByName('N_ID_').AsInteger   := cdsTranslateN_ID.AsInteger;
          DM.ForceQ.ParamByName('VOLUME_').Value     := cdsTranslateVOLUME.AsFloat;
          DM.ForceQ.ParamByName('VOLDRY_').Value     := cdsTranslateVOLDRY.AsFloat;
          DM.ForceQ.Execute;
        end;

        if def_change_hol_name = true then
        begin
          DM.ForceQ.Close;
          DM.ForceQ.SQL.Text := 'begin INVOICE2_PKG.CHANGE_HOL_NAME(:N_ID_, :p_hol_name); end;';
          DM.ForceQ.ParamByName('N_ID_').AsInteger     := cdsTranslateN_ID.AsInteger;
          DM.ForceQ.ParamByName('p_hol_name').AsString := cdsTranslateDESCRIPTION.AsString;
          DM.ForceQ.Execute;
        end;

        if def_change_country = true then
        begin
          DM.ForceQ.Close;
          DM.ForceQ.SQL.Text := 'begin INVOICE2_PKG.CHANGE_COUNTRY(:N_ID_, :p_hol_country); end;';
          DM.ForceQ.ParamByName('N_ID_').AsInteger         := cdsTranslateN_ID.AsInteger;
          DM.ForceQ.ParamByName('p_hol_country').AsString  := cdsTranslateCOUNTRY_.AsString;
          DM.ForceQ.Execute;
        end;

        if ( (cdsTranslateVOLUME.AsFloat <> 0) or (cdsTranslateVOLDRY.AsFloat <> 0) ) or def_change_hol_name or def_change_country then DM.STAR_DB.Commit;

        if replace_country and (new_id > 0) then
        begin
          DM.ForceQ.Close;
          DM.ForceQ.SQL.Clear;
          DM.ForceQ.SQL.Add('begin invoice_pkg.change_country_by_asis(:p1); end;');
          DM.ForceQ.ParamByName('p1').AsInteger := new_id;
          DM.ForceQ.Execute;
        end;
        
        cnt_inv := cnt_inv + 1;
      end;
      pg_execute.Position := i;
      pg_execute.Repaint;
      i := i+1;
      cdsTranslate.Next;
    end;
    cdsTranslate.First;
  finally
    cdsTranslate.EnableControls;
    cursor := crDefault;
    aRefresh.Execute;
    aCalcStat.Execute;
    pg_execute.Visible := false;
  end;
end;


//
// Просмотр сопоставлений
//
procedure TfrmReader.blbMappingClick(Sender: TObject);
var cur_h_code_asis: string;
begin
  cur_h_code_asis := '';
  ShowFfmMapping(cur_h_code_asis);
  aRefresh.Execute;
end;


procedure TfrmReader.mnMappingClick(Sender: TObject);
var cur_h_code_asis: string;
begin
  cur_h_code_asis := VarToStr(grid_translate_vSKU.EditValue);
  ShowFfmMapping(cur_h_code_asis);
  aRefresh.Execute;
end;


end.
