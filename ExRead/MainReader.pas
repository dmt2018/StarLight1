unit MainReader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, OleServer, ExcelXP, Masks, ActiveX,ComObj,
  Buttons, Menus, ActnList, xmldom, DBGrids, DB, DBClient, Xmlxform,
  XMLIntf, msxmldom, XMLDoc, ComCtrls, ExtCtrls, PI_library, Registry,
  OraError,IniFiles, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxProgressBar, cxGraphics, cxImageComboBox,
  cxStyles, cxVGrid, cxInplaceContainer, cxLabel, cxLookAndFeelPainters,
  cxButtons, cxPC, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Ora;

  type
    TTitles = record
    Title : String;
    column : integer;
  end;

type
  TReadInvoice = class(TForm)
    OpenDialog1: TOpenDialog;
    ColumnNames: TPopupMenu;
    ActionList: TActionList;
    OnSelMenuItem: TAction;
    BeginEnd: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    OnSelBegEnd: TAction;
    XMLTrans: TXMLTransform;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    XMLDoc: TXMLDocument;
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    ed_comment: TcxTextEdit;
    ed_suplier: TcxTextEdit;
    Panel_main: TPanel;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    Label3: TLabel;
    icb_suplier: TcxImageComboBox;
    btn_clear: TBitBtn;
    pnl_help: TPanel;
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
    SpeedButton1: TSpeedButton;
    btn_help: TBitBtn;
    cxVerticalGrid1EditorRow30: TcxEditorRow;
    Label9: TLabel;
    cb_truck: TcxComboBox;
    cxLabel12: TcxLabel;
    Image5: TImage;
    Image1: TImage;
    cxVerticalGrid1EditorRow31: TcxEditorRow;
    cxVerticalGrid1EditorRow32: TcxEditorRow;
    pcReadInvoice: TcxPageControl;
    tshReadInvoice: TcxTabSheet;
    tshInspectInvoice: TcxTabSheet;
    SG: TStringGrid;
    pnlTopRead: TPanel;
    btnRefreshTest: TcxButton;
    aRefreshTest: TAction;
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
    grid_fresh_vTRUCK: TcxGridDBColumn;
    grid_fresh_vTROLLEY: TcxGridDBColumn;
    BAR_CODE1: TcxGridDBColumn;
    TRANSLATION1: TcxGridDBColumn;
    _INVOICE_DATA_AS_IS_ID: TcxGridDBColumn;
    grid_fresh_vREMARKS: TcxGridDBColumn;
    _grid_freshView1INV_ID: TcxGridDBColumn;
    grid_fresh_vSPEC_LENGTH: TcxGridDBColumn;
    grid_fresh_vSPEC_HEADS: TcxGridDBColumn;
    grid_fresh_vSPEC_HEADS_SHRUB: TcxGridDBColumn;
    grid_fresh_vSPEC_VD2: TcxGridDBColumn;
    grid_fresh_vSPEC_WIDTH: TcxGridDBColumn;
    grid_fresh_vSPEC_HIGHT: TcxGridDBColumn;
    grid_fresh_vRECOGNISED: TcxGridDBColumn;
    grid_fresh_vCLIENT: TcxGridDBColumn;
    grid_fresh_vVOLUME: TcxGridDBColumn;
    grid_fresh_vVOLDRY: TcxGridDBColumn;
    grid_fresh_vSRC_TROLLEY: TcxGridDBColumn;
    grid_fresh_vID_OFFICE: TcxGridDBColumn;
    grid_fresh_vDATE_CHANGE: TcxGridDBColumn;
    grid_fresh_l: TcxGridLevel;
    btnSaveSrc: TcxButton;
    aSaveSrc: TAction;
    btnSave: TcxButton;
    aSaveExt: TAction;
    btnNewNim: TcxButton;
    cxButton4: TcxButton;
    aAddNom: TAction;
    aUpdate: TAction;
    cdsSrc: TOraQuery;
    dsSrc: TDataSource;
    SelQ: TOraQuery;
    cdsSrcORDER_NUMBER: TFloatField;
    cdsSrcORDER_MARKNAME: TStringField;
    cdsSrcPACKING_MARKS: TStringField;
    cdsSrcPACKING_CODE: TStringField;
    cdsSrcDESCRIPTION: TStringField;
    cdsSrcUNITS: TIntegerField;
    cdsSrcSKU: TStringField;
    cdsSrcAMOUNT_IN_THE_PACK: TIntegerField;
    cdsSrcHOL_COLOUR: TStringField;
    cdsSrcHOL_SUB_TYPE: TStringField;
    cdsSrcMARKS_CONTENT: TStringField;
    cdsSrcMARKS_NAMES: TStringField;
    cdsSrcSHORT_CODE: TStringField;
    cdsSrcSHORT_NAME: TStringField;
    cdsSrcRECOGNISED: TIntegerField;
    cdsSrcBAR_CODE: TStringField;
    cdsSrcTRANSLATION: TStringField;
    cdsSrcAMOUNT_PER_UNIT: TFloatField;
    cdsSrcTOTAL_AMOUNT: TFloatField;
    cdsSrcREMARKS: TStringField;
    cdsSrcSPEC_LENGTH: TFloatField;
    cdsSrcSPEC_HEADS: TStringField;
    cdsSrcSPEC_HEADS_SHRUB: TStringField;
    cdsSrcSPEC_VD2: TStringField;
    cdsSrcSPEC_WIDTH: TFloatField;
    cdsSrcSPEC_HIGHT: TFloatField;
    cdsSrcTROLLEY: TFloatField;
    cdsSrcTRUCK: TIntegerField;
    cdsSrcCLIENT: TStringField;
    cdsSrcSRC_TROLLEY: TStringField;
    cdsSrcVOLUME: TFloatField;
    cdsSrcVOLDRY: TFloatField;
    cdsSrcNOM_NEW: TIntegerField;
    cdsSrcNOM_START: TIntegerField;
    cdsSrcCOUNTRY_: TStringField;
    cdsSrcN_ID: TFloatField;
    cdsSrcCOMPILED_NAME_OTDEL: TStringField;
    grid_fresh_vNOM_NEW: TcxGridDBColumn;
    grid_fresh_vNOM_START: TcxGridDBColumn;
    grid_fresh_vCOUNTRY_: TcxGridDBColumn;
    grid_fresh_vN_ID: TcxGridDBColumn;
    grid_fresh_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    cxExcelMain: TcxStyleRepository;
    cxNoEdit: TcxStyle;
    cdsSrcCODE: TFloatField;
    cdsSrcH_CODE: TStringField;
    grid_fresh_vCODE: TcxGridDBColumn;
    grid_fresh_vH_CODE: TcxGridDBColumn;
    aRefresh: TAction;
    cdsSrcNOM_REMARKS: TStringField;
    grid_fresh_vNOM_REMARKS: TcxGridDBColumn;
    cdsSrcID: TFloatField;
    grid_fresh_vID: TcxGridDBColumn;
    pmNomExRead: TPopupMenu;
    mnAddNom: TMenuItem;
    mnEditNom: TMenuItem;
    N3: TMenuItem;
    mnRefreshNom: TMenuItem;
    Label8: TLabel;
    icb_GTDcountry: TcxImageComboBox;
    cdsSrcID_OFFICE: TIntegerField;
    cdsSrcFN_ID: TFloatField;
    cdsSrcFT_ID: TFloatField;
    cdsSrcFST_ID: TFloatField;
    cdsSrcC_ID: TFloatField;
    cdsSrcS_ID: TFloatField;
    cdsSrcCOL_ID: TFloatField;
    cdsSrcLEN: TIntegerField;
    cdsSrcPACK: TIntegerField;
    cdsSrcHT_ID: TFloatField;
    cdsSrcDIAMETER: TFloatField;
    cdsSrcWEIGHT: TFloatField;
    cdsSrcWEIGHTDRY: TFloatField;
    cdsSrcCUST_COEF: TFloatField;
    cdsSrcVBN: TIntegerField;
    cdsSrcH_NAME: TStringField;
    cdsSrcTNVED: TStringField;
    cdsSrcHOL_TYPE: TStringField;
    lblFile: TLabel;
    cdsSrcINV_ID: TFloatField;
    cdsSrcINVOICE_DATA_AS_IS_ID: TFloatField;
    cdsSrcDATE_CHANGE: TDateTimeField;
    cdsSrcNOM_END: TIntegerField;
    cdsSrcNOM_ADD: TIntegerField;
    cdsSrcNOM_SPECIAL: TIntegerField;
    cdsSrcNOM_PACK: TIntegerField;
    cdsSrcNOM_PACK_HOL: TIntegerField;
    cdsSrcREPLACEMENT: TStringField;
    cdsSrcREPLACEMENT_IS_FIND: TFloatField;
    cdsSrcIS_PHOTO: TFloatField;
    cdsSrcPHOTO: TStringField;
    cdsSrcN_ID_DESC: TFloatField;
    cdsSrcINVOICE_DATA_ID: TFloatField;
    cdsSrcCHECKED: TIntegerField;
    grid_fresh_vFN_ID: TcxGridDBColumn;
    grid_fresh_vFT_ID: TcxGridDBColumn;
    grid_fresh_vFST_ID: TcxGridDBColumn;
    grid_fresh_vC_ID: TcxGridDBColumn;
    grid_fresh_vS_ID: TcxGridDBColumn;
    grid_fresh_vCOL_ID: TcxGridDBColumn;
    grid_fresh_vLEN: TcxGridDBColumn;
    grid_fresh_vPACK: TcxGridDBColumn;
    grid_fresh_vHT_ID: TcxGridDBColumn;
    grid_fresh_vDIAMETER: TcxGridDBColumn;
    grid_fresh_vWEIGHT: TcxGridDBColumn;
    grid_fresh_vWEIGHTDRY: TcxGridDBColumn;
    grid_fresh_vCUST_COEF: TcxGridDBColumn;
    grid_fresh_vVBN: TcxGridDBColumn;
    grid_fresh_vH_NAME: TcxGridDBColumn;
    grid_fresh_vTNVED: TcxGridDBColumn;
    grid_fresh_vHOL_TYPE: TcxGridDBColumn;
    grid_fresh_vNOM_END: TcxGridDBColumn;
    grid_fresh_vNOM_ADD: TcxGridDBColumn;
    grid_fresh_vNOM_SPECIAL: TcxGridDBColumn;
    grid_fresh_vNOM_PACK: TcxGridDBColumn;
    grid_fresh_vNOM_PACK_HOL: TcxGridDBColumn;
    grid_fresh_vREPLACEMENT: TcxGridDBColumn;
    grid_fresh_vREPLACEMENT_IS_FIND: TcxGridDBColumn;
    grid_fresh_vIS_PHOTO: TcxGridDBColumn;
    grid_fresh_vPHOTO: TcxGridDBColumn;
    grid_fresh_vN_ID_DESC: TcxGridDBColumn;
    grid_fresh_vINVOICE_DATA_ID: TcxGridDBColumn;
    grid_fresh_vCHECKED: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XXClick(Sender: TObject);
    procedure OnSelMenuItemExecute(Sender: TObject);
    procedure SGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure OnSelBegEndExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btn_clearClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure aRefreshTestExecute(Sender: TObject);
    procedure aSaveExtExecute(Sender: TObject);
    procedure aAddNomExecute(Sender: TObject);
    procedure aUpdateExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure grid_fresh_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SGTitles : array [0..11] of TTitles;
    { Private declarations }
    FIXLSApp: ExcelXP._Application;
    FIWorkbook: ExcelXP._Workbook;
    procedure CreateExcel (NewInstance: boolean);
    procedure ShowExcel;
    procedure HideExcel;
    procedure ReleaseExcel;
    procedure ClearSG;
  public
    { Public declarations }
    MenuItemSelected : integer;
    property IXLSApp: ExcelXP._Application read FIXLSApp;
    property IWorkbook: ExcelXP._Workbook read FIWorkbook;
    procedure RefreshGrid();
  end;

var
  ReadInvoice: TReadInvoice;

implementation

uses SheetChooser,Globals, DataModule, NewDict;

{$R *.dfm}


//
// Создание формы
//
procedure TReadInvoice.FormCreate(Sender: TObject);
VAR i : Integer;
    TmpItem : TMenuItem;
    ColIni : TIniFile;
begin
  try
    N13.Caption := Globals.BegEndArr[0].Name;
    N14.Caption := Globals.BegEndArr[1].Name;
    ColumnNames.Items.Clear;

    for i := 0 to Length(Recogniser) -1 do
    Begin
      TmpItem := TMenuItem.Create(ColumnNames);
      TmpItem.Name := 'XX' + IntToStr(i);
      TmpItem.Caption := Recogniser[i].Name;
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

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT c_id, country FROM countries order by country');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_GTDcountry, '');

    i := ColIni.ReadInteger('def_countryTrans','value',-1);
    icb_GTDcountry.EditValue := i;

    DateTimePicker1.EditValue := Now();
    DateTimePicker2.EditValue := Now();
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  Показ формы
//
procedure TReadInvoice.FormShow(Sender: TObject);
begin
  Panel1.Visible        := false;
  Panel_main.Visible    := false;
  Timer1.Enabled        := true;
  ed_comment.EditValue  := '';
  ed_suplier.EditValue  := '';
  pcReadInvoice.ActivePageIndex := 0;
end;


procedure TReadInvoice.grid_fresh_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) and cdsSrc.Active and (cdsSrc.State = dsEdit) then
  begin
    cdsSrc.Post;
    cdsSrc.RefreshRecord;
  end;
end;

//
//  Очищаем таблицу
//
procedure TReadInvoice.ClearSG;
VAR
  i,j : integer;
Begin
  for i := 0 to SG.ColCount - 1 do
    for j := 0 to SG.RowCount - 1 do
      SG.Cells[i,j] := '';
End;


procedure TReadInvoice.CreateExcel(NewInstance: boolean);
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


procedure TReadInvoice.ShowExcel;
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


procedure TReadInvoice.HideExcel;
begin
  if Assigned(IXLSApp) then
  begin
    IXLSApp.Visible[0] := false;
  end;
end;


procedure TReadInvoice.ReleaseExcel;
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


//
//  Открываем EXCEL файл
//
procedure TReadInvoice.Button1Click(Sender: TObject);
var FullFileName: string;
    Values: OLEVariant;
    ISheet: ExcelXP._Worksheet;
    IRange: ExcelXP.ExcelRange;
    i, j: integer;
    SCount : integer;
    StrList : TStringList;
    Alphabet : String;
    Ext : string;
    nodeStr,InfStr : string;
    info_i : integer;
    InvInfo: IXMLNode;
    fs : TFormatSettings;
    RegIni : TRegIniFile;
begin
  FillRecogniser;
  FillBegEndArr;
  ClearSG;
  GetLocaleFormatSettings(1251,fs);
  fs.DateSeparator    := '-';
  fs.ShortDateFormat  := 'MM-dd-yyyy';
  Alphabet            := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  StrList             := TStringList.Create;
  lblFile.Caption := '';
  lblFile.Visible := false;
  lblFile.Repaint;

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


  Panel1.Visible := true;
  Panel_main.Visible := true;

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
                      Values := IRange.Value2;
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
                            else SG.Cells[j,i] := Values[i, j];
                          end;
                      end;
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
    lblFile.Caption := FullFileName;
    lblFile.Visible := true;
    lblFile.Repaint;
    FIWorkbook:= nil;
    ReleaseExcel; // святое дело
  End;

end;



procedure TReadInvoice.XXClick(Sender: TObject);
begin
  MenuItemSelected := TMenuItem(Sender).MenuIndex;
  OnSelMenuItem.Execute;
end;


procedure TReadInvoice.OnSelMenuItemExecute(Sender: TObject);
VAR
  max_i,i : integer;
begin
  try
    max_i := Length(Globals.Recogniser);
    for i := 0 to max_i - 1 do
    Begin
      if Globals.Recogniser[i].column = SG.Selection.Left then Globals.Recogniser[i].column := -1;
    End;
    if ColumnNames.Items.Items[MenuItemSelected].Checked then
    begin
      //Globals.Recogniser[MenuItemSelected].column := SG.Selection.Left;
      ColumnNames.Items.Items[MenuItemSelected].Checked := false;
    end
    else
    begin
      Globals.Recogniser[MenuItemSelected].column := SG.Selection.Left;
      ColumnNames.Items.Items[MenuItemSelected].Checked := true;
    end;
    RefreshGrid();
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


procedure TReadInvoice.SGMouseDown(Sender: TObject; Button: TMouseButton;
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


procedure TReadInvoice.N13Click(Sender: TObject);
begin
  MenuItemSelected := 0;
  OnSelBegEnd.Execute;
end;


procedure TReadInvoice.N14Click(Sender: TObject);
begin
  MenuItemSelected := 1;
  OnSelBegEnd.Execute;
end;


procedure TReadInvoice.OnSelBegEndExecute(Sender: TObject);
begin
  Globals.BegEndArr[MenuItemSelected].row := SG.Selection.top;
  RefreshGrid();
end;


procedure TReadInvoice.RefreshGrid();
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
    max_i := Length(Globals.Recogniser);
    for i := 0 to max_i - 1 do
    Begin
      if Globals.Recogniser[i].column <> -1 then Sg.Cells[Globals.Recogniser[i].column,0] := Globals.Recogniser[i].Name;
    End;
    SG.Repaint;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;




//
//  Сохраняем инвойс при EXCEL файле
//
procedure TReadInvoice.BitBtn2Click(Sender: TObject);
VAR
  sql_str, dir_name, tmp_str: string;
  res_val : Variant;
  i : integer;
  SKU,UNITS,AMOUNT_PER_UNIT,ORDER_NUMBER,PACKING_MARKS,
  TOTAL_AMOUNT, HOL_COLOUR, HOL_SUB_TYPE, ORDER_MARKNAME,PACKING_CODE,
  DESCRIPTION,SHORT_CODE,MARKS_CONTENT,MARKS_NAMES,SHORT_NAME,
  BAR_CODE, TRANSLATION, REMARKS, TROLLEY, TRUCK, CLIENT : Variant;
  SPEC_LENGTH, SPEC_HEADS, SPEC_HEADS_SHRUB, SPEC_VD2, SPEC_WIDTH, SPEC_HIGHT : Variant;
  WEIGHT, WEIGHTDRY, NOM_NEW, NOM_START, COUNTRY, NOM_END, NOM_ADD, NOM_SPEC, NOM_PACK, NOM_PACK_HOL, replacement : Variant;
  error_string, error_param: string;
begin
  try
    if (Recogniser[5].column = -1)      // общее кол-во
        or (Recogniser[9].column = -1)  // название полное
        or (Recogniser[10].column = -1) // цена
//        or (Recogniser[8].column = -1)  // артикул
        or (Recogniser[17].column = -1) // название без префиксов
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены!'+
                          #10' - общее кол-во'+
                          #10' - название полное'+
                          #10' - название без префиксов'+
                          #10' - цена',
                          'Внимание', MB_ICONWARNING);
//                          #10' - артикул'+
        ShowMessage('Не все ключевые названия столбцов проставлены!');
        Exit;
    End;

    if (CUR_DEPT_ID = 61) and (
        (Recogniser[27].column = -1)    // Диаметр
        or (Recogniser[26].column = -1) // Высота
        )
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены для горшечного отдела!'+
                          #10' - Диаметр'+
                          #10' - Высота',
                          'Внимание', MB_ICONWARNING);
        Exit;
    End;


    if (BegEndArr[0].row = -1) or (BegEndArr[1].row = -1) then
    Begin
        MessageBox(Handle, 'Не проставлены начало и конец!', 'Внимание', MB_ICONWARNING);
        Exit;
    End;


    if (icb_suplier.EditValue = 0) then
    Begin
        MessageBox(Handle, 'Необходимо проставить поставщика!', 'Внимание', MB_ICONWARNING);
        Exit;
    End;
{
    if (Trim(VarToStr(ed_suplier.EditValue)) = '') then
    Begin
        MessageBox(Handle, 'Необходимо указать № поставщика!', 'Внимание', MB_ICONWARNING);
        Exit;
    End;
}


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
      if res_val = -1 then
      Begin
        MessageBox(Handle, 'Произошла ошибка при добавлении основной информации об инвойсе!', 'Ошибка', MB_ICONERROR);
        Exit;
      End;
    End;


      // Создание папок внутри папки программы -----------------------------
      if not DirectoryExists(ProgPath+'\IN') then
      if not CreateDir(ProgPath+'\IN') then
      begin
          raise Exception.Create('Cannot create directory');
          exit;
      end;
      if not DirectoryExists(ProgPath+'\IN\'+VarToStr(res_val)) then
      if not CreateDir(ProgPath+'\IN\'+VarToStr(res_val)) then
      begin
          raise Exception.Create('Cannot create directory');
          exit;
      end;
      dir_name := ProgPath+'\IN\'+VarToStr(res_val);
    // -------------------------------------------------------------------
      CopyFile(PChar(OpenDialog1.FileName), PChar(dir_name+'\'+ExtractFileName(OpenDialog1.FileName)), true);



      pg_main.Properties.Max := BegEndArr[1].row;
      pnl_progress.Visible   := true;
      pg_main.Repaint;
      Label2.Repaint;

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


{
  Recogniser[3].Name := 'Кол. коробок';
  Recogniser[3].column := -1;
  Recogniser[4].Name := 'Кол. в коробке';
  Recogniser[4].column := -1;
  Recogniser[7].Name := 'Поставщик';
  Recogniser[7].column := -1;
}

            if Recogniser[0].column <> -1 then ORDER_NUMBER := StrToVar(SG.Cells[Recogniser[0].column,i])
                                          else ORDER_NUMBER := 0;               // № Заказа
            if Recogniser[1].column <> -1 then ORDER_MARKNAME := StrToVar(SG.Cells[Recogniser[1].column,i])
                                          else ORDER_MARKNAME := NULL;          // Название заказа
            if Recogniser[2].column <> -1 then PACKING_MARKS := StrToVar(SG.Cells[Recogniser[2].column,i])
                                          else PACKING_MARKS := NULL;           // Номер коробки

            UNITS := StrToVarInt(SG.Cells[Recogniser[5].column,i]);             // Общее кол.

            if Recogniser[6].column <> -1 then PACKING_CODE := StrToVar(SG.Cells[Recogniser[6].column,i])
                                          else PACKING_CODE := NULL;            // Тип упаковки
            if Recogniser[8].column <> -1 then SKU := SG.Cells[Recogniser[8].column,i]
                                          else SKU := NULL;                     // Артикул
            if Recogniser[9].column <> -1 then DESCRIPTION := StrToVar(SG.Cells[Recogniser[9].column,i])
                                          else DESCRIPTION := NULL;             // Название полное
            error_string := error_string + ', ' + DESCRIPTION;

            AMOUNT_PER_UNIT := StrToVarFloat(SG.Cells[Recogniser[10].column,i]);// Цена

            // Сумма
            if Recogniser[11].column <> -1 then TOTAL_AMOUNT := StrToVarFloat(SG.Cells[Recogniser[11].column,i])
                                           else try TOTAL_AMOUNT := AMOUNT_PER_UNIT*UNITS except TOTAL_AMOUNT := NULL; end;

            if Recogniser[12].column <> -1 then HOL_SUB_TYPE := StrToVar(SG.Cells[Recogniser[12].column,i])
                                           else HOL_SUB_TYPE := NULL;           // Голандский подтип
            if Recogniser[13].column <> -1 then HOL_COLOUR := StrToVar(SG.Cells[Recogniser[13].column,i])
                                           else HOL_COLOUR := NULL;             // Цвет
            if Recogniser[14].column <> -1 then SHORT_CODE := StrToVar(SG.Cells[Recogniser[14].column,i])
                                           else SHORT_CODE := NULL;             // Код названия
            if Recogniser[15].column <> -1 then MARKS_CONTENT := StrToVar(SG.Cells[Recogniser[15].column,i])
                                           else MARKS_CONTENT := NULL;          // Значение доп. кодов
            if Recogniser[16].column <> -1 then MARKS_NAMES := StrToVar(SG.Cells[Recogniser[16].column,i])
                                           else MARKS_NAMES := NULL;            // Описание доп. кодов
            if Recogniser[17].column <> -1 then SHORT_NAME := StrToVar(SG.Cells[Recogniser[17].column,i])
                                           else SHORT_NAME := NULL;             // Название без префиксов
            if Recogniser[18].column <> -1 then BAR_CODE := StrToVar(SG.Cells[Recogniser[18].column,i])
                                           else BAR_CODE := NULL;               // Штрих-код
            if Recogniser[19].column <> -1 then TRANSLATION := StrToVar(SG.Cells[Recogniser[19].column,i])
                                           else TRANSLATION := NULL;            // Перевод
            if Recogniser[20].column <> -1 then REMARKS := StrToVar(SG.Cells[Recogniser[20].column,i])
                                           else REMARKS := NULL;                // Ремаркс

            if Recogniser[21].column <> -1 then SPEC_LENGTH       := StrToVar(SG.Cells[Recogniser[21].column,i])
                                           else SPEC_LENGTH       := NULL;      // Длина (S20)
            if Recogniser[22].column <> -1 then SPEC_HEADS        := StrToVar(SG.Cells[Recogniser[22].column,i])
                                           else SPEC_HEADS        := NULL;      // Кол. голов (S22)
            if Recogniser[23].column <> -1 then SPEC_HEADS_SHRUB  := StrToVar(SG.Cells[Recogniser[23].column,i])
                                           else SPEC_HEADS_SHRUB  := NULL;      // Кол. голов куст. (S25)
            if Recogniser[24].column <> -1 then SPEC_VD2          := StrToVar(SG.Cells[Recogniser[24].column,i])
                                           else SPEC_VD2          := NULL;      // Кол-во в коробке (VD2)
            if Recogniser[25].column <> -1 then SPEC_WIDTH        := StrToVar(SG.Cells[Recogniser[25].column,i])
                                           else SPEC_WIDTH        := NULL;      // Диаметр горшка (S01)
            if Recogniser[26].column <> -1 then SPEC_HIGHT        := StrToVar(SG.Cells[Recogniser[26].column,i])
                                           else SPEC_HIGHT        := NULL;      // Высота горшка (S02)
{
            if Recogniser[27].column <> -1 then
            begin
              tmp_str := trim(SG.Cells[Recogniser[27].column,i]);
              tmp_str := copy(tmp_str, pos(',',tmp_str)+1, length(tmp_str));
              tmp_str := copy(tmp_str, pos('.',tmp_str)+1, length(tmp_str));
              TROLLEY           := StrToVar(tmp_str);
            end
                                           else TROLLEY           := NULL;      // Тележка
}
            if Recogniser[27].column <> -1 then TROLLEY           := StrToVar(SG.Cells[Recogniser[27].column,i])
                                           else TROLLEY           := StrToVar(SG.Cells[Recogniser[2].column,i]);      // Тележка
            if Recogniser[28].column <> -1 then
            begin
              if cb_truck.ItemIndex = 0 then
                TRUCK := StrToVar(SG.Cells[Recogniser[28].column,i])
              else
                TRUCK := cb_truck.ItemIndex;
            end
                                          else TRUCK := NULL;

//            if Recogniser[28].column <> -1 then TRUCK             := StrToVar(SG.Cells[Recogniser[28].column,i])
//                                           else TRUCK             := NULL;      // Машина
            if Recogniser[29].column <> -1 then CLIENT            := StrToVar(SG.Cells[Recogniser[29].column,i])
                                           else CLIENT            := NULL;      // Клиент

            if Recogniser[30].column <> -1 then WEIGHT            := StrToVar(SG.Cells[Recogniser[31].column,i])
                                           else WEIGHT            := 0;      // Объем цветка на воде
            if Recogniser[31].column <> -1 then WEIGHTDRY         := StrToVar(SG.Cells[Recogniser[30].column,i])
                                           else WEIGHTDRY         := 0;      // Объем цветка на сухую

            // Новинка
            if Recogniser[32].column <> -1 then NOM_NEW := StrToVar(SG.Cells[Recogniser[32].column,i]) else NOM_NEW := NULL;
            // Старт сезона
            if Recogniser[33].column <> -1 then NOM_START := StrToVar(SG.Cells[Recogniser[33].column,i]) else NOM_START := NULL;
            // Страна
            if Recogniser[34].column <> -1 then COUNTRY := StrToVar(SG.Cells[Recogniser[34].column,i]) else COUNTRY := NULL;

            // Признак конца сезона
            if Recogniser[35].column <> -1 then NOM_END := StrToVar(SG.Cells[Recogniser[35].column,i]) else NOM_END := NULL;
            // Признак добавки к заказу
            if Recogniser[36].column <> -1 then NOM_ADD := StrToVar(SG.Cells[Recogniser[36].column,i]) else NOM_ADD := NULL;
            // Признак спецпредложения
            if Recogniser[37].column <> -1 then NOM_SPEC := StrToVar(SG.Cells[Recogniser[37].column,i]) else NOM_SPEC := NULL;
            // Кол-во стеблей в упаковке
            if Recogniser[38].column <> -1 then NOM_PACK := StrToVar(SG.Cells[Recogniser[38].column,i]) else NOM_PACK := NULL;

            // Кол-во стеблей в упаковке от поставщика
            //if Recogniser_new[39].column <> -1 then NOM_PACK_HOL := StrToVar(SG.Cells[Recogniser_new[39].column,i]) else
            NOM_PACK_HOL := NOM_PACK;

            // Замена поставщика
            //if Recogniser_new[40].column <> -1 then replacement := StrToVar(SG.Cells[Recogniser_new[40].column,i]) else
            replacement := NULL;


            ParamByName('INV_ID_').AsInteger         := res_val;

            error_param := 'ORDER_NUMBER='+VarToStr(ORDER_NUMBER);
            ParamByName('ORDER_NUMBER_').AsInteger   := 0; //ORDER_NUMBER;

            error_param := 'ORDER_MARKNAME='+VarToStr(ORDER_MARKNAME);
            ParamByName('ORDER_MARKNAME_').AsString  := trim(VarToStr(ORDER_MARKNAME));

            error_param := 'PACKING_MARKS='+VarToStr(PACKING_MARKS);
            ParamByName('PACKING_MARKS_').AsString   := trim(VarToStr(PACKING_MARKS));

            error_param := 'PACKING_CODE='+VarToStr(PACKING_CODE);
            ParamByName('PACKING_CODE_').AsString    := trim(VarToStr(PACKING_CODE));

            error_param := 'DESCRIPTION='+VarToStr(DESCRIPTION);
            ParamByName('DESCRIPTION_').AsString     := CutSpaces(trim(VarToStr(DESCRIPTION)));

            error_param := 'UNITS='+VarToStr(UNITS);
            ParamByName('UNITS_').AsInteger          := UNITS;

            error_param := 'SKU='+VarToStr(SKU);
            ParamByName('SKU_').AsString             := trim(VarToStr(SKU));

            //error_param := 'ORDER_NUMBER='+VarToStr(ORDER_NUMBER);
            ParamByName('AMOUNT_IN_THE_PACK_').Value := NULL;

            error_param := 'HOL_COLOUR='+VarToStr(HOL_COLOUR);
            ParamByName('HOL_COLOUR_').AsString      := trim(VarToStr(HOL_COLOUR));

            error_param := 'HOL_SUB_TYPE='+VarToStr(HOL_SUB_TYPE);
            ParamByName('HOL_SUB_TYPE_').AsString    := trim( StringReplace(VarToStr(HOL_SUB_TYPE),'(*)','', [rfReplaceAll, rfIgnoreCase]) );

            error_param := 'MARKS_CONTENT='+VarToStr(MARKS_CONTENT);
            ParamByName('MARKS_CONTENT_').AsString   := trim(VarToStr(MARKS_CONTENT));

            error_param := 'MARKS_NAMES='+VarToStr(MARKS_NAMES);
            ParamByName('MARKS_NAMES_').AsString     := trim(VarToStr(MARKS_NAMES));

            error_param := 'SHORT_CODE='+VarToStr(SHORT_CODE);
            ParamByName('SHORT_CODE_').AsString      := trim(VarToStr(SHORT_CODE));

            error_param := 'SHORT_NAME='+VarToStr(SHORT_NAME);
            ParamByName('SHORT_NAME_').AsString      := CutSpaces(trim(VarToStr(SHORT_NAME)));

            error_param := 'BAR_CODE='+VarToStr(BAR_CODE);
            ParamByName('BAR_CODE_').AsString        := trim(VarToStr(BAR_CODE));

            error_param := 'TRANSLATION='+VarToStr(TRANSLATION);
            ParamByName('TRANSLATION_').AsString     := trim(VarToStr(TRANSLATION));

            error_param := 'AMOUNT_PER_UNIT='+VarToStr(AMOUNT_PER_UNIT);
            ParamByName('AMOUNT_PER_UNIT_').AsFloat  := AMOUNT_PER_UNIT;

            error_param := 'TOTAL_AMOUNT='+VarToStr(TOTAL_AMOUNT);
            ParamByName('TOTAL_AMOUNT_').AsFloat     := TOTAL_AMOUNT;

            error_param := 'REMARKS='+VarToStr(REMARKS);
            ParamByName('REMARKS_').AsString         := trim(VarToStr(REMARKS));

            if (SPEC_LENGTH = NULL) then
              ParamByName('SPEC_LENGTH_').Value        := null
            else
            begin
              error_param := 'SPEC_LENGTH='+VarToStr(SPEC_LENGTH);
              ParamByName('SPEC_LENGTH_').Value        := StrToInt(StringReplace(VarToStr(SPEC_LENGTH),'CM','', [rfReplaceAll, rfIgnoreCase]));
            end;

            error_param := 'SPEC_HEADS='+VarToStr(SPEC_HEADS);
            ParamByName('SPEC_HEADS_').AsString       := trim(VarToStr(SPEC_HEADS));

            error_param := 'SPEC_HEADS_SHRUB='+VarToStr(SPEC_HEADS_SHRUB);
            ParamByName('SPEC_HEADS_SHRUB_').AsString := trim(VarToStr(SPEC_HEADS_SHRUB));

            error_param := 'SPEC_VD2='+VarToStr(SPEC_VD2);
            ParamByName('SPEC_VD2_').AsString         := trim(VarToStr(SPEC_VD2));

            error_param := 'SPEC_WIDTH='+VarToStr(SPEC_WIDTH);
            ParamByName('SPEC_WIDTH_').Value          := SPEC_WIDTH;

            error_param := 'SPEC_HIGHT='+VarToStr(SPEC_HIGHT);
            ParamByName('SPEC_HIGHT_').Value          := SPEC_HIGHT;

            error_param := 'TROLLEY='+VarToStr(TROLLEY);
            ParamByName('TROLLEY_').AsString          := trim(VarToStr(TROLLEY));

            error_param := 'TRUCK='+VarToStr(TRUCK);
            ParamByName('TRUCK_').AsString            := trim(VarToStr(TRUCK)); //TRUCK;

            error_param := 'CLIENT='+VarToStr(CLIENT);
            ParamByName('CLIENT_').AsString           := trim(VarToStr(CLIENT));

            error_param := 'WEIGHT='+VarToStr(WEIGHT);
            ParamByName('VOLUME_').AsFloat              := WEIGHT;

            error_param := 'WEIGHTDRY='+VarToStr(WEIGHTDRY);
            ParamByName('VOLDRY_').AsFloat              := WEIGHTDRY;

            error_param := 'NOM_NEW='+VarToStr(NOM_NEW);
            ParamByName('NOM_NEW_').AsString          := trim(VarToStr(NOM_NEW));

            error_param := 'NOM_START='+VarToStr(NOM_START);
            ParamByName('NOM_START_').AsString        := trim(VarToStr(NOM_START));

            error_param := 'COUNTRY='+VarToStr(COUNTRY);
            ParamByName('COUNTRY_').AsString          := trim(VarToStr(COUNTRY));

            ParamByName('NOM_END_').AsString          := trim(VarToStr(NOM_END));
            ParamByName('NOM_ADD_').AsString          := trim(VarToStr(NOM_ADD));
            ParamByName('NOM_SPEC_').AsString         := trim(VarToStr(NOM_SPEC));
            ParamByName('NOM_PACK_').AsString         := trim(VarToStr(NOM_PACK));
            //ParamByName('NOM_PACK_HOL_').AsString     := '0';
            ParamByName('NOM_PACK_HOL_').AsString     := trim(VarToStr(NOM_PACK_HOL));
            ParamByName('replacement_').AsString     := trim(VarToStr(replacement));
            Execute;

          End; // цикл по StringGrid

          pg_main.Position := i;
          pg_main.Repaint;
      end;

      ShowMessage('Операция завершена успешно!');
      pnl_progress.Visible   := false;

  except on e : EOraError do
      Begin
        Application.MessageBox(PChar(e.Message + #13 + VarToStr(error_string) + #13 + VarToStr(error_param)),'Ошибка записи в БД',MB_ICONWARNING);
      End;
  End;

end;


// Тестовое распознавание
procedure TReadInvoice.aRefreshTestExecute(Sender: TObject);
var i: integer;
    sql_str: string;
    SKU,UNITS,AMOUNT_PER_UNIT,ORDER_NUMBER,PACKING_MARKS,
    TOTAL_AMOUNT, HOL_COLOUR, HOL_SUB_TYPE, ORDER_MARKNAME,PACKING_CODE,
    DESCRIPTION,SHORT_CODE,MARKS_CONTENT,MARKS_NAMES,SHORT_NAME,
    BAR_CODE, TRANSLATION, REMARKS, TROLLEY, TRUCK, CLIENT : Variant;
    SPEC_LENGTH, SPEC_HEADS, SPEC_HEADS_SHRUB, SPEC_VD2, SPEC_WIDTH, SPEC_HIGHT : Variant;
    WEIGHT, WEIGHTDRY, NOM_NEW, NOM_START, COUNTRY, NOM_END, NOM_ADD, NOM_SPEC, NOM_PACK : Variant;
    res_val : Variant;
    error_string: string;
begin
  if (BegEndArr[0].row = -1) or (BegEndArr[1].row = -1) then
  Begin
    MessageBox(Handle, 'Не проставлены начало и конец!', 'Внимание', MB_ICONWARNING);
    Exit;
  End;

  try
    pg_main.Properties.Max := BegEndArr[1].row;
    pnl_progress.Visible   := true;
    pg_main.Repaint;
    Label2.Repaint;

    // Добавляем значения в сырой инвойс
    with SelQ do
    Begin
      Close;
      SQL.Clear;
      sql_str := 'begin ';
      sql_str := sql_str + ' INVOICE_PKG.INV_REG_INSERT_DATA_TEMP(:ORDER_NUMBER_, :ORDER_MARKNAME_, :PACKING_MARKS_, :PACKING_CODE_, :DESCRIPTION_, :UNITS_, :SKU_, :AMOUNT_IN_THE_PACK_, ';
      sql_str := sql_str + ' :HOL_COLOUR_, :HOL_SUB_TYPE_, :MARKS_CONTENT_, :MARKS_NAMES_, :SHORT_CODE_, :SHORT_NAME_, :BAR_CODE_, :TRANSLATION_, :AMOUNT_PER_UNIT_, :TOTAL_AMOUNT_, :REMARKS_, ';
      sql_str := sql_str + ' :SPEC_LENGTH_, :SPEC_HEADS_, :SPEC_HEADS_SHRUB_, :SPEC_VD2_, :SPEC_WIDTH_, :SPEC_HIGHT_, :TROLLEY_, :TRUCK_, :CLIENT_, :VOLUME_, :VOLDRY_, :NOM_NEW_, :NOM_START_, ';
      sql_str := sql_str + ' :COUNTRY_, :NOM_END_, :NOM_ADD_, :NOM_SPEC_, :NOM_PACK_); end;';
      SQL.Add(sql_str);

      // Цикл по StringGrid
      for i := BegEndArr[0].row to BegEndArr[1].row do
      Begin
        error_string := 'Обрабатываема строка - '+IntToStr(i);
        // № Заказа
        if Recogniser[0].column <> -1 then ORDER_NUMBER := StrToVar(SG.Cells[Recogniser[0].column,i]) else ORDER_NUMBER := 0;
        // Название заказа
        if Recogniser[1].column <> -1 then ORDER_MARKNAME := StrToVar(SG.Cells[Recogniser[1].column,i]) else ORDER_MARKNAME := NULL;
        // Номер коробки
        if Recogniser[2].column <> -1 then PACKING_MARKS := StrToVar(SG.Cells[Recogniser[2].column,i]) else PACKING_MARKS := NULL;
        // Общее кол.
        UNITS := StrToVarInt(SG.Cells[Recogniser[5].column,i]);
        // Тип упаковки
        if Recogniser[6].column <> -1 then PACKING_CODE := StrToVar(SG.Cells[Recogniser[6].column,i]) else PACKING_CODE := NULL;
        // Артикул
        if Recogniser[8].column <> -1 then SKU := SG.Cells[Recogniser[8].column,i] else SKU := NULL;
        // Название полное
        if Recogniser[9].column <> -1 then DESCRIPTION := StrToVar(SG.Cells[Recogniser[9].column,i]) else DESCRIPTION := NULL;
        error_string := error_string + ', ' + DESCRIPTION;
        // Цена
        AMOUNT_PER_UNIT := StrToVarFloat(SG.Cells[Recogniser[10].column,i]);
        // Сумма
        if Recogniser[11].column <> -1 then TOTAL_AMOUNT := StrToVarFloat(SG.Cells[Recogniser[11].column,i])
        else try TOTAL_AMOUNT := AMOUNT_PER_UNIT*UNITS except TOTAL_AMOUNT := NULL; end;
        // Голандский подтип
        if Recogniser[12].column <> -1 then HOL_SUB_TYPE := StrToVar(SG.Cells[Recogniser[12].column,i]) else HOL_SUB_TYPE := NULL;
        // Цвет
        if Recogniser[13].column <> -1 then HOL_COLOUR := StrToVar(SG.Cells[Recogniser[13].column,i]) else HOL_COLOUR := NULL;
        // Код названия
        if Recogniser[14].column <> -1 then SHORT_CODE := StrToVar(SG.Cells[Recogniser[14].column,i]) else SHORT_CODE := NULL;
        // Значение доп. кодов
        if Recogniser[15].column <> -1 then MARKS_CONTENT := StrToVar(SG.Cells[Recogniser[15].column,i]) else MARKS_CONTENT := NULL;
        // Описание доп. кодов
        if Recogniser[16].column <> -1 then MARKS_NAMES := StrToVar(SG.Cells[Recogniser[16].column,i]) else MARKS_NAMES := NULL;
        // Название без префиксов
        if Recogniser[17].column <> -1 then SHORT_NAME := StrToVar(SG.Cells[Recogniser[17].column,i]) else SHORT_NAME := NULL;
        // Штрих-код
        if Recogniser[18].column <> -1 then BAR_CODE := StrToVar(SG.Cells[Recogniser[18].column,i]) else BAR_CODE := NULL;
        // Перевод
        if Recogniser[19].column <> -1 then TRANSLATION := StrToVar(SG.Cells[Recogniser[19].column,i]) else TRANSLATION := NULL;
        // Ремаркс
        if Recogniser[20].column <> -1 then REMARKS := StrToVar(SG.Cells[Recogniser[20].column,i]) else REMARKS := NULL;
        // Длина (S20)
        if Recogniser[21].column <> -1 then SPEC_LENGTH := StrToVar(SG.Cells[Recogniser[21].column,i]) else SPEC_LENGTH := NULL;
        // Кол. голов (S22)
        if Recogniser[22].column <> -1 then SPEC_HEADS := StrToVar(SG.Cells[Recogniser[22].column,i]) else SPEC_HEADS := NULL;
        // Кол. голов куст. (S25)
        if Recogniser[23].column <> -1 then SPEC_HEADS_SHRUB := StrToVar(SG.Cells[Recogniser[23].column,i]) else SPEC_HEADS_SHRUB := NULL;
        // Кол-во в коробке (VD2)
        if Recogniser[24].column <> -1 then SPEC_VD2 := StrToVar(SG.Cells[Recogniser[24].column,i]) else SPEC_VD2 := NULL;
        // Диаметр горшка (S01)
        if Recogniser[25].column <> -1 then SPEC_WIDTH := StrToVar(SG.Cells[Recogniser[25].column,i]) else SPEC_WIDTH := NULL;
        // Высота горшка (S02)
        if Recogniser[26].column <> -1 then SPEC_HIGHT := StrToVar(SG.Cells[Recogniser[26].column,i]) else SPEC_HIGHT := NULL;
        // Тележка
        if Recogniser[27].column <> -1 then TROLLEY := StrToVar(SG.Cells[Recogniser[27].column,i]) else TROLLEY := NULL;
        // Машина
        if Recogniser[28].column <> -1 then
        begin
          if cb_truck.ItemIndex = 0 then
            TRUCK := StrToVar(SG.Cells[Recogniser[28].column,i])
          else
            TRUCK := cb_truck.ItemIndex;
        end
        else TRUCK := NULL;
        // Клиент
        if Recogniser[29].column <> -1 then CLIENT := StrToVar(SG.Cells[Recogniser[29].column,i]) else CLIENT := NULL;
        // Высота горшка (S02)
        if Recogniser[30].column <> -1 then WEIGHT := StrToVar(SG.Cells[Recogniser[30].column,i]) else WEIGHT := NULL;
        // Высота горшка (S02)
        if Recogniser[31].column <> -1 then WEIGHTDRY := StrToVar(SG.Cells[Recogniser[31].column,i]) else WEIGHTDRY := NULL;

        // Новинка
        if Recogniser[32].column <> -1 then NOM_NEW := StrToVar(SG.Cells[Recogniser[32].column,i]) else NOM_NEW := NULL;
        // Старт сезона
        if Recogniser[33].column <> -1 then NOM_START := StrToVar(SG.Cells[Recogniser[33].column,i]) else NOM_START := NULL;
        // Страна
        if Recogniser[34].column <> -1 then COUNTRY := StrToVar(SG.Cells[Recogniser[34].column,i]) else COUNTRY := NULL;

        // Признак конца сезона
        if Recogniser[35].column <> -1 then NOM_END := StrToVar(SG.Cells[Recogniser[35].column,i]) else NOM_END := NULL;
        // Признак добавки к заказу
        if Recogniser[36].column <> -1 then NOM_ADD := StrToVar(SG.Cells[Recogniser[36].column,i]) else NOM_ADD := NULL;
        // Признак спецпредложения
        if Recogniser[37].column <> -1 then NOM_SPEC := StrToVar(SG.Cells[Recogniser[37].column,i]) else NOM_SPEC := NULL;
        // Кол-во стеблей в упаковке
        if Recogniser[38].column <> -1 then NOM_PACK := StrToVar(SG.Cells[Recogniser[38].column,i]) else NOM_PACK := NULL;


        try
          ParamByName('ORDER_NUMBER_').AsInteger   := ORDER_NUMBER;
          ParamByName('ORDER_MARKNAME_').AsString  := trim(VarToStr(ORDER_MARKNAME));
          ParamByName('PACKING_MARKS_').AsString   := trim(VarToStr(PACKING_MARKS));
          ParamByName('PACKING_CODE_').AsString    := trim(VarToStr(PACKING_CODE));
          ParamByName('DESCRIPTION_').AsString     := CutSpaces(trim(VarToStr(DESCRIPTION)));
          ParamByName('UNITS_').AsInteger          := UNITS;
          ParamByName('SKU_').AsString             := trim(VarToStr(SKU));
          ParamByName('AMOUNT_IN_THE_PACK_').Value := 0;
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
            ParamByName('SPEC_LENGTH_').Value       := StrToInt(StringReplace(VarToStr(SPEC_LENGTH),'CM','', [rfReplaceAll, rfIgnoreCase])); // SPEC_LENGTH;
          ParamByName('SPEC_HEADS_').AsString       := trim(VarToStr(SPEC_HEADS));
          ParamByName('SPEC_HEADS_SHRUB_').AsString := trim(VarToStr(SPEC_HEADS_SHRUB));
          ParamByName('SPEC_VD2_').AsString         := trim(VarToStr(SPEC_VD2));
          ParamByName('SPEC_WIDTH_').Value          := SPEC_WIDTH;
          ParamByName('SPEC_HIGHT_').Value          := SPEC_HIGHT;
          ParamByName('TROLLEY_').AsString          := trim(VarToStr(TROLLEY));
          ParamByName('TRUCK_').AsString            := trim(VarToStr(TRUCK)); //TRUCK;
          ParamByName('CLIENT_').AsString           := trim(VarToStr(CLIENT));
          ParamByName('VOLUME_').Value              := WEIGHT;
          ParamByName('VOLDRY_').Value              := WEIGHTDRY;
          ParamByName('NOM_NEW_').AsString          := trim(VarToStr(NOM_NEW));
          ParamByName('NOM_START_').AsString        := trim(VarToStr(NOM_START));
          ParamByName('COUNTRY_').AsString          := trim(VarToStr(COUNTRY));
          ParamByName('NOM_END_').AsString          := trim(VarToStr(NOM_END));
          ParamByName('NOM_ADD_').AsString          := trim(VarToStr(NOM_ADD));
          ParamByName('NOM_SPEC_').AsString         := trim(VarToStr(NOM_SPEC));
          ParamByName('NOM_PACK_').AsString         := trim(VarToStr(NOM_PACK));
          Execute;

        except on e : EOraError do
          Application.MessageBox(PChar(e.Message + #13 + VarToStr(error_string)),'Ошибка записи в БД',MB_ICONWARNING);
        End;

        pg_main.Position := i;
        pg_main.Repaint;
      End; // цикл по StringGrid
    end;

    ShowMessage('Операция завершена успешно!');
    pnl_progress.Visible   := false;

  except on e : EOraError do
    Application.MessageBox(PChar(e.Message + #13 + VarToStr(error_string)),'Ошибка распознавания',MB_ICONWARNING);
  End;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT count(1) FROM creator.invoice_data_as_is_temp');
    DM.SelQ.Open;
    //ShowMessage(DM.SelQ.Fields[0].AsString);

    if cdsSrc.Active then
      cdsSrc.Refresh
    else
      cdsSrc.Open;
    pcReadInvoice.ActivePageIndex := 1;
  except on e : EOraError do
    Application.MessageBox(PChar(e.Message),'Ошибка открытия данных',MB_ICONWARNING);
  End;

end;

// Сохранение инвойса из временной таблицы
procedure TReadInvoice.aSaveExtExecute(Sender: TObject);
begin
  null;
end;

procedure TReadInvoice.BitBtn1Click(Sender: TObject);
begin
  Close;
end;


procedure TReadInvoice.Timer1Timer(Sender: TObject);
begin
  if Label4.Font.Color = clRed then Label4.Font.Color := clBlack
                               else Label4.Font.Color := clRed;
end;


//
//  Записываем столбцы в ini файл
//
procedure TReadInvoice.BitBtn5Click(Sender: TObject);
VAR
ColIni : TIniFile;
i : integer;
begin
  if MessageDlg('Записать новые значения столбцов?'+#10+'Старые значения будут утеряны!', mtConfirmation,[mbNo, mbOk],0) = mrOk then
  begin
    ColIni := TIniFile.Create(ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_columns.ini');
    for i := 0 to Length(Recogniser) - 1 do
    Begin
      ColIni.WriteInteger('cols','col_'+IntToStr(i),Recogniser[i].column);
    End;
    ColIni.Free;
  end;
end;


//
//  Расставляем столбцы из ini файла
//
procedure TReadInvoice.BitBtn6Click(Sender: TObject);
VAR
ColIni : TIniFile;
i : integer;
begin
  ColIni := TIniFile.Create(ProgPath+'/connections/'+IntToStr(CUR_DEPT_ID)+'_columns.ini');
  for i := 0 to Length(Recogniser) - 1 do
    Begin
      Recogniser[i].column := ColIni.ReadInteger('cols','col_'+IntToStr(i),-1);
      if Recogniser[i].column > -1 then
        ColumnNames.Items.Items[i].Checked := true;
    End;
  ColIni.Free;
  RefreshGrid();
end;


//
// Очистим колонки
//
procedure TReadInvoice.btn_clearClick(Sender: TObject);
var max_i, i: integer;
begin
    for i := 0 to SG.ColCount -1 do Sg.Cells[0,i] := '';
    max_i := Length(Globals.Recogniser);
    for i := 0 to max_i - 1 do
    begin
       Globals.Recogniser[i].column := -1;
       ColumnNames.Items.Items[i].Checked := false;
    end;
    RefreshGrid();
end;


procedure TReadInvoice.btn_helpClick(Sender: TObject);
begin
  pnl_help.Left           := trunc(Panel_main.Width / 2) - 200;
  pnl_help.Top            := trunc(Panel_main.Height / 2) - 150;
  pnl_help.Visible        := true;
end;

procedure TReadInvoice.SpeedButton1Click(Sender: TObject);
begin
  pnl_help.Visible := false;
end;



// Добавить номенклатуру
procedure TReadInvoice.aAddNomExecute(Sender: TObject);
var res, i, op1, op2, op3 : integer;
    isAutoLoad: boolean;
begin
  if not cdsSrc.Active or cdsSrc.IsEmpty or not cdsSrcN_ID.IsNull and (aUpdate.Tag = -1) then exit;
  isAutoLoad := true;
  NewD := TNewD.Create(Application);
  try
    NewD.Panel1.Font.Size := grid_fresh.Font.Size;
    NewD.isAutoLoad   := isAutoLoad;
    NewD.N_ID_    := aUpdate.Tag;
    NewD.OUT_ID   := 0;
    NewD.cds      := (grid_fresh_v.DataController.DataSet as TOraQuery);
    DM.n_id_      := aUpdate.Tag;
    NewD.editing  := (aUpdate.Tag > 0);
//    NewD.editing  := false;

    NewD.or_id    := cdsSrcID.AsInteger;
    NewD.or_kod   := cdsSrcSHORT_CODE.AsString;      // Код названия цветка
    NewD.or_code  := cdsSrcBAR_CODE.AsString;  // Штрих-код поставщика
//    NewD.or_flow  := cdsSrcFLOW.AsInteger;    // не используется
//    NewD.or_title := cdsSrcTITLE.AsString;    // не используется
//    NewD.or_mark  := cdsSrcREMARKS.AsString;  // не используется
    NewD.or_group := cdsSrcHOL_SUB_TYPE.AsString;    // тип поставщика для нашей подгруппы
//    NewD.or_gr    := cdsSrcGR.AsString;       // группа
//    NewD.or_spec  := cdsSrcMARK.AsString;     // не используется
    NewD.or_color := cdsSrcHOL_COLOUR.AsString;    // цвет
    NewD.or_suplier  := icb_suplier.EditValue;  // поставщик
    NewD.or_remarks  := cdsSrcREMARKS.AsString;


    if not cdsSrc.IsEmpty and (trim(cdsSrcCOUNTRY_.AsString) <> '') then
    begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT c_id FROM countries where upper(country)=:p1 or upper(country_eng)=:p2');
      DM.SelQ.ParamByName('p1').AsString := AnsiUpperCase(trim(cdsSrcCOUNTRY_.AsString));
      DM.SelQ.ParamByName('p2').AsString := AnsiUpperCase(trim(cdsSrcCOUNTRY_.AsString));
      DM.SelQ.Open;
      if not DM.SelQ.IsEmpty then
        NewD.or_country := DM.SelQ.FieldByName('c_id').Value;
      DM.SelQ.Close;
    end
    else
      NewD.or_country  := 0;


    NewD.or_eng_name := cdsSrcSHORT_NAME.AsString;        // название поставщика
    NewD.or_eng_full_name := cdsSrcDESCRIPTION.AsString; // полное название товара
    NewD.or_name     := ''; //cdsSrcBASERU.AsString;      // русское название
    NewD.or_s20      := cdsSrcSPEC_LENGTH.AsString;
    NewD.or_s22      := cdsSrcSPEC_HEADS.AsString;
    NewD.or_s25      := cdsSrcSPEC_HEADS_SHRUB.AsString;
    NewD.or_vd2      := cdsSrcSPEC_VD2.AsString;
    //NewD.or_pack     := cdsSrcUNITS.AsInteger;       // штук в упаковке

    NewD.or_volume   := cdsSrcVOLUME.AsFloat;
    NewD.or_volume_dry := cdsSrcVOLDRY.AsFloat;

       //NewD.or_len      := trim(copy(cdsSrcSPEC_LENGTH.AsString,0,pos('CM',cdsSrcSPEC_LENGTH.AsString)-1))
    if cdsSrcSPEC_LENGTH.AsString <> '' then
       NewD.or_len      := cdsSrcSPEC_LENGTH.AsString
    else
       NewD.or_len      := '0';




//    if isAutoLoad then
//    begin
      if trim(NewD.or_group) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT a.fst_id, a.ft_id, a.F_SUB_TYPE, b.F_TYPE FROM flower_subtypes a, flower_types b where upper(a.hol_sub_type) like :p1 and a.ft_id=b.ft_id and b.id_departments=:p2');
        DM.SelQ.ParamByName('p1').AsString  := UpperCase(trim('%'+NewD.or_group+'%'));
        DM.SelQ.ParamByName('p2').AsInteger := CUR_DEPT_ID;
        DM.SelQ.Open;
        if (not DM.SelQ.IsEmpty) and (DM.SelQ.RecordCount = 1) then
        begin
          NewD.lookcombo_type.EditValue    := DM.SelQ.FieldByName('ft_id').Value;
          NewD.lookcombo_subtype.EditValue := DM.SelQ.FieldByName('fst_id').Value;
        end;
      end;

      if NewD.or_suplier > 0 then
        NewD.lookcombo_suplier.EditValue := NewD.or_suplier;
      if NewD.or_country > 0 then
        NewD.lookcombo_country.EditValue := NewD.or_country;
      if trim(NewD.or_gr) <> '' then
        NewD.imcb_holtype.EditValue := StrToInt(trim(NewD.or_gr));

      if trim(NewD.or_color) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT col_id FROM h_colours where upper(hol_colour)=:p1');
        DM.SelQ.ParamByName('p1').AsString := UpperCase(trim(NewD.or_color));
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
          NewD.lookcombo_color.EditValue := DM.SelQ.FieldByName('col_id').Value
        else
        begin
          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.Add('SELECT col_id FROM colours where upper(colour)=:p1');
          DM.SelQ.ParamByName('p1').AsString := UpperCase(trim(NewD.or_color));
          DM.SelQ.Open;
          if not DM.SelQ.IsEmpty then
            NewD.lookcombo_color.EditValue := DM.SelQ.FieldByName('col_id').Value
        end;
      end;

      NewD.ed_hcode.EditValue := NewD.or_kod + '.' + NewD.or_color + '.' + NewD.or_len;
      if trim(NewD.or_spec) <> '' then NewD.ed_hcode.EditValue := NewD.ed_hcode.EditValue + '.' + NewD.or_spec;

      NewD.cb_length.EditValue   := NewD.or_len;
      NewD.ed_postname.EditValue := NewD.or_eng_full_name;
      NewD.ed_remarks.EditValue  := NewD.or_mark;
      NewD.ed_barcode.EditValue  := NewD.or_code;

      if trim(NewD.or_kod) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT fn_id FROM flower_name_translations where upper(name_code)=:p1 and id_departments=:p2 order by default_translation desc');
        DM.SelQ.ParamByName('p1').AsString  := UpperCase(trim(NewD.or_kod));
        DM.SelQ.ParamByName('p2').AsInteger := CUR_DEPT_ID;
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.lookcombo_name.EditValue    := DM.SelQ.FieldByName('fn_id').Value;
        end
        else
      end;


      if trim(NewD.or_s20) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S20'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          if pos('CM',NewD.or_s20) > 0 then
            NewD.ed_translate.EditValue := trim(copy(NewD.or_s20,0,pos('CM',NewD.or_s20)-1))
          else
            NewD.ed_translate.EditValue := NewD.or_s20;
          NewD.SpeedButton3Click(nil);
        end;
      end;

      if trim(NewD.or_s22) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S22'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          if pos('CM',NewD.or_s22) > 0 then
            NewD.ed_translate.EditValue := trim(copy(NewD.or_s22,0,pos('CM',NewD.or_s22)-1))
          else
            NewD.ed_translate.EditValue := NewD.or_s22;
          NewD.SpeedButton3Click(nil);
        end;
      end;

      if trim(NewD.or_s25) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S25'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          if pos('CM',NewD.or_s25) > 0 then
            NewD.ed_translate.EditValue := trim(copy(NewD.or_s25,0,pos('CM',NewD.or_s25)-1))
          else
            NewD.ed_translate.EditValue := NewD.or_s25;
          NewD.SpeedButton3Click(nil);
        end;
      end;
      NewD.OUT_ID := 0;


      if (NewD.lookcombo_name.EditValue > 0)
        and (NewD.lookcombo_type.EditValue > 0)
        and (NewD.lookcombo_subtype.EditValue > 0)
        and (NewD.lookcombo_country.EditValue > 0)
        and (NewD.lookcombo_suplier.EditValue > 0)
        and (NewD.lookcombo_color.EditValue > 0)
        and (NewD.imcb_holtype.EditValue > 0)
        and (NewD.lookcombo_type.EditValue > 0)
        and (NewD.ed_barcode.EditValue <> '')
        and (NewD.ed_postname.EditValue <> '')
        and (NewD.ed_hcode.EditValue <> '')
        and (NewD.or_remarks = '')
      then
      begin
        NewD.BitBtn1Click(nil);
        if NewD.ModalResult = mrOk then
          cdsSrc.RefreshRecord;
      end
      else res := NewD.ShowModal;
{
    end
    else
    begin
      res := NewD.ShowModal;
      if ( res = mrOk) and not isAutoLoad then
      begin
        cdsSrc.RefreshRecord;
        CalcStat;
        cdsSrc.Next;
      end;
    end;

      isAbort := ((res = mrAbort) and isAutoLoad);
}
  finally
    NewD.Free;
    aUpdate.Tag := -1;
  end;
end;

// Редактировать номенклатуру
procedure TReadInvoice.aUpdateExecute(Sender: TObject);
var
 arRec: Variant;
 i: integer;
begin
  if (grid_fresh_v.ViewData.RecordCount = 0) or (grid_fresh_vN_ID.EditValue = NULL) then exit;


  if (DM.id_office <> grid_fresh_v.DataController.DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  NewD          := TNewD.Create(Application);
  try
    NewD.Panel1.Font.Size := grid_fresh.Font.Size;
    NewD.editing  := true;
    NewD.OUT_ID   := 0;
    NewD.N_ID_    := grid_fresh_v.DataController.DataSet.FieldByName('N_ID').Value;
    NewD.cds      := (grid_fresh_v.DataController.DataSet as TOraQuery);
    NewD.ShowModal;

  finally
    NewD.Free;
  end;

  grid_fresh.SetFocus;
end;

// Обновление таблицы
procedure TReadInvoice.aRefreshExecute(Sender: TObject);
begin
  if cdsSrc.Active then
      cdsSrc.Refresh;
end;


end.

