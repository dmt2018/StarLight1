unit MainReader;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, OleServer, ExcelXP, Masks, ActiveX,ComObj,
  Buttons, Menus, ActnList, xmldom, DBGrids, DB, DBClient, Xmlxform,
  XMLIntf, msxmldom, XMLDoc, ComCtrls, ExtCtrls, PI_library, Registry,
  OraError,IniFiles, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxProgressBar, cxGraphics, cxImageComboBox,
  cxCheckBox, cxLabel, cxStyles, cxVGrid, cxInplaceContainer, cxCurrencyEdit;

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
    BitBtn2: TBitBtn;
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
    SG: TStringGrid;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    Label3: TLabel;
    icb_suplier: TcxImageComboBox;
    aOpen: TAction;
    btn_clear: TBitBtn;
    chb_country: TcxCheckBox;
    Label8: TLabel;
    deTruck: TcxDateEdit;
    cb_truck: TcxComboBox;
    Label9: TLabel;
    cxLabel12: TcxLabel;
    pnl_help: TPanel;
    SpeedButton1: TSpeedButton;
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
    btn_help: TBitBtn;
    Label10: TLabel;
    ed_cource: TcxCurrencyEdit;
    cxVerticalGrid1EditorRow19: TcxEditorRow;
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
    procedure RefreshGrid(par: boolean);
  end;

var
  ReadInvoice: TReadInvoice;

implementation

uses SheetChooser, Globals, UDM;

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
    DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_suplier, '');

    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    try
      i := ColIni.ReadInteger('supplier','value',-1);
      icb_suplier.EditValue := i;
      chb_country.EditValue := ColIni.ReadInteger('country','value', 0);
    finally
      ColIni.Free;
    end;


    DateTimePicker1.EditValue := Now();
    DateTimePicker2.EditValue := Now();
    deTruck.EditValue := Now();
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

                      Globals.BegEndArr[0].row := 1;
                      Globals.BegEndArr[1].row := IRange.Rows.Count;
                      RefreshGrid(false);

                      Values := IRange.Value2;
                      for i := 0 to IRange.Rows.Count do
                      begin
                          for j := 1 to IRange.Columns.Count do
                          begin
                            if i = 0 then SG.Cells[j,i] := Alphabet[j]
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
    Globals.Recogniser[MenuItemSelected].column := SG.Selection.Left;
    ColumnNames.Items.Items[MenuItemSelected].Checked := true;
    RefreshGrid(true);
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
  RefreshGrid(false);
end;


procedure TReadInvoice.RefreshGrid(par: boolean);
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
  sql_str, dir_name, tmp_str, tmp_data: string;
  res_val : Variant;
  i : integer;

  ORDER_NUMBER, ORDER_MARKNAME, TRUCS, PACKING_CODE, PACKING_AMOUNT, AMOUNT_PER_UNIT
  , UNITS, PACKING_MARKS, DESCRIPTION, HOL_COUNTRY, HOL_SUB_TYPE, PD, TROLLEY
  , PRICE, SUMM, DIAMETR, HEIGHT, TITLE, H_CODE, UPACK, SRC_NAME, REMARK : Variant;
begin
  try
    if (Recogniser[1].column = -1) // Машина
        or (Recogniser[5].column = -1) // Количество
//        or (Recogniser[6].column = -1) // Цена
//        or (Recogniser[7].column = -1) // Сумма
        or (Recogniser[8].column = -1) // Название
//        or (Recogniser[18].column = -1) // Название (src) Его автоматом из названия возьму
        or (Recogniser[10].column = -1) // Страна
        or (Recogniser[11].column = -1) // Голандский подтип
        or (Recogniser[16].column = -1) // Код названия
        or (Recogniser[12].column = -1) // ФИТО тип
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены!'+
                          #10' - машина'+
                          #10' - общее кол-во'+
                          #10' - код названия'+
                          #10' - название'+
                          #10' - название (src)'+
                          #10' - страна'+
                          #10' - голандский подтип'+
                          #10' - ФИТО тип',
                          'Внимание', MB_ICONWARNING);
        Exit;
    End;


    // проверка для горшков
    if (CUR_DEPT_ID = 61) and (
        (Recogniser[13].column = -1) // Диаметр
        or (Recogniser[14].column = -1) // Высота
        or (Recogniser[15].column = -1) // Тележка
        )
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены для горшечного отдела!'+
                          #10' - Диаметр'+
                          #10' - Высота'+
                          #10' - Тележка',
                          'Внимание', MB_ICONWARNING);
        Exit;
    End;


    // проверка для срезки
    if (CUR_DEPT_ID = 62) and (
        (Recogniser[14].column = -1) // Высота
        or (Recogniser[17].column = -1) // Упаковка
        )
    then
    Begin
        MessageBox(Handle, 'Не все ключевые названия столбцов проставлены для отдела срезки!'+
                          #10' - Высота'+
                          #10' - Упаковка',
                          'Внимание', MB_ICONWARNING);
        Exit;
    End;


    if (BegEndArr[0].row = -1) or (BegEndArr[1].row = -1) then
    Begin
        MessageBox(Handle, 'Не проставлены начало и конец!', 'Внимание', MB_ICONWARNING);
        Exit;
    End;

    ed_cource.PostEditValue;
    // Добавляем основную информацию об инвойсе
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin custom_pkg.CUST_INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_TRUCK_DATE, :IN_ID_DEPARTMENTS, :IN_S_ID, :in_INV_ID, :IN_FILE, :IN_COURCE); end;');
      ParamByName('IN_INV_DATE').AsDate           := DateTimePicker1.EditValue;
      ParamByName('IN_COMMENTS').AsString         := VarToStr(ed_comment.EditValue);
      ParamByName('IN_SUP_INV_DATE').AsDate       := DateTimePicker2.EditValue;
      ParamByName('IN_SUP_NUMBER').AsString       := VarToStr(ed_suplier.EditValue);
      ParamByName('IN_TRUCK_DATE').AsDate         := deTruck.EditValue;
      ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
      ParamByName('IN_S_ID').Value                := icb_suplier.EditValue;
      ParamByName('in_INV_ID').AsInteger          := res_val;
      ParamByName('IN_FILE').AsString             := ExtractFileName(OpenDialog1.FileName);
      ParamByName('IN_COURCE').AsFloat            := ed_cource.EditValue;
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

          // Добавляем значения в сырой инвойс
          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            sql_str := 'begin ';
            sql_str := sql_str + ' custom_pkg.CUSTOMS_INV_REG_INSERT_DATA(:INV_ID_, :ORDER_NUMBER_, :TRUCS_, :PACKING_MARKS_, :PACKING_AMOUNT_, ';
            sql_str := sql_str + ' :AMOUNT_PER_UNIT_, :UNITS_, :PRICE_, :SUMM_, :TITLE_, :DESCRIPTION_, :HOL_COUNTRY_, :HOL_SUB_TYPE_, :PD_, ';
            sql_str := sql_str + ' :DIAMETR_, :HEIGHT_, :TROLLEY_, :H_CODE_, :UPACK_, :SRC_NAME_, :REMARK_); end;';
            SQL.Add(sql_str);

            ORDER_NUMBER := 0;
            PACKING_AMOUNT := 0;
            AMOUNT_PER_UNIT := 0;
            UNITS := 0;
            PRICE := 0;
            SUMM := 0;
            DIAMETR := 0;
            HEIGHT := 0;
            TROLLEY := 0;

            if Recogniser[0].column <> -1 then ORDER_NUMBER := StrToVarInt(SG.Cells[Recogniser[0].column,i])
                                          else ORDER_NUMBER := 0;
            if Recogniser[1].column <> -1 then
            begin
              if cb_truck.ItemIndex = 0 then
                TRUCS := StrToVar(SG.Cells[Recogniser[1].column,i])
              else
                TRUCS := cb_truck.ItemIndex;
            end
                                          else TRUCS := NULL;
            if Recogniser[2].column <> -1 then PACKING_MARKS := StrToVar(SG.Cells[Recogniser[2].column,i])
                                          else PACKING_MARKS := NULL;
            if Recogniser[3].column <> -1 then PACKING_AMOUNT := StrToVarInt(SG.Cells[Recogniser[3].column,i])
                                          else PACKING_AMOUNT := 0;
            if Recogniser[4].column <> -1 then AMOUNT_PER_UNIT := StrToVarInt(SG.Cells[Recogniser[4].column,i])
                                          else AMOUNT_PER_UNIT := 0;
            if Recogniser[5].column <> -1 then UNITS := StrToVarInt(SG.Cells[Recogniser[5].column,i])
                                          else UNITS := 0;
            if Recogniser[6].column <> -1 then PRICE := StrToVarFloat(SG.Cells[Recogniser[6].column,i])
                                          else PRICE := 0;
            if Recogniser[7].column <> -1 then SUMM := StrToVarFloat(SG.Cells[Recogniser[7].column,i])
                                          else SUMM := 0;
            if Recogniser[8].column <> -1 then TITLE := StrToVar(SG.Cells[Recogniser[8].column,i])
                                          else TITLE := NULL;
            if Recogniser[9].column <> -1 then DESCRIPTION := StrToVar(SG.Cells[Recogniser[9].column,i])
                                          else DESCRIPTION := NULL;
            if Recogniser[10].column <> -1 then
            begin
              if (CUR_DEPT_ID = 61) and (chb_country.Checked = true) then
                HOL_COUNTRY := 'Netherlands'
              else
              begin
                if ( SG.Cells[Recogniser[10].column,i] = '')  then
                  HOL_COUNTRY := 'Netherlands'
                else
                  HOL_COUNTRY := StrToVar(SG.Cells[Recogniser[10].column,i]);
              end;
            end
                                           else HOL_COUNTRY := NULL;
            if Recogniser[11].column <> -1 then HOL_SUB_TYPE := StrToVar(SG.Cells[Recogniser[11].column,i])
                                           else HOL_SUB_TYPE := NULL;
            if Recogniser[12].column <> -1 then PD := StrToVar(SG.Cells[Recogniser[12].column,i])
                                           else PD := NULL;
            if Recogniser[13].column <> -1 then DIAMETR := Round(StrToVarFloat(SG.Cells[Recogniser[13].column,i])*1.0001)
                                           else DIAMETR := 0;
            if Recogniser[14].column <> -1 then
            begin
              tmp_data := StringReplace(SG.Cells[Recogniser[14].column,i],'CM','', [rfReplaceAll, rfIgnoreCase]);
              HEIGHT := StrToVarInt(tmp_data)
            end
                                           else HEIGHT := 0;
{
            if Recogniser[15].column <> -1 then
            begin
              tmp_str := trim(SG.Cells[Recogniser[15].column,i]);
              tmp_str := copy(tmp_str, pos(',',tmp_str)+1, length(tmp_str));
              tmp_str := copy(tmp_str, pos('.',tmp_str)+1, length(tmp_str));
              TROLLEY           := StrToVar(tmp_str);
            end
                                           else TROLLEY := 0;
}
            if Recogniser[15].column <> -1 then TROLLEY := StrToVar(SG.Cells[Recogniser[15].column,i])
                                           else TROLLEY := NULL;
            if Recogniser[16].column <> -1 then H_CODE := StrToVar(SG.Cells[Recogniser[16].column,i])
                                           else H_CODE := NULL;
            if Recogniser[17].column <> -1 then UPACK := StrToVar(SG.Cells[Recogniser[17].column,i])
                                           else UPACK := NULL;
            if Recogniser[18].column <> -1 then SRC_NAME := StrToVar(SG.Cells[Recogniser[18].column,i])
                                           else SRC_NAME := TITLE;
            if Recogniser[19].column <> -1 then REMARK := StrToVar(SG.Cells[Recogniser[19].column,i])
                                           else REMARK := NULL;


            ParamByName('INV_ID_').AsInteger         := res_val;
            ParamByName('ORDER_NUMBER_').AsInteger   := ORDER_NUMBER;
            ParamByName('TRUCS_').AsString           := trim(VarToStr(TRUCS));
            ParamByName('PACKING_MARKS_').AsString   := trim(VarToStr(PACKING_MARKS));
            ParamByName('PACKING_AMOUNT_').AsInteger := PACKING_AMOUNT;
            ParamByName('AMOUNT_PER_UNIT_').AsInteger := AMOUNT_PER_UNIT;
            ParamByName('UNITS_').AsInteger          := UNITS;
            ParamByName('PRICE_').AsFloat            := PRICE;
            ParamByName('SUMM_').AsFloat             := SUMM;
            ParamByName('TITLE_').AsString           := CutSpaces(trim(VarToStr(TITLE)));
            ParamByName('DESCRIPTION_').AsString     := trim(VarToStr(DESCRIPTION));
            ParamByName('HOL_COUNTRY_').AsString     := trim(VarToStr(HOL_COUNTRY));
            ParamByName('HOL_SUB_TYPE_').AsString    := trim(VarToStr(HOL_SUB_TYPE));
            ParamByName('PD_').AsString              := trim( StringReplace(VarToStr(PD),'(*)','', [rfReplaceAll, rfIgnoreCase]) );
            ParamByName('DIAMETR_').AsInteger        := DIAMETR;
            ParamByName('HEIGHT_').AsInteger         := HEIGHT;
            ParamByName('TROLLEY_').AsString         := trim(VarToStr(TROLLEY));
            ParamByName('H_CODE_').AsString          := H_CODE;
            ParamByName('UPACK_').AsString           := trim(VarToStr(UPACK));
            ParamByName('SRC_NAME_').AsString        := CutSpaces(trim(VarToStr(SRC_NAME)));
            ParamByName('REMARK_').AsString          := CutSpaces(trim(VarToStr(REMARK)));
            Execute;

          End; // цикл по StringGrid

          pg_main.Position := i;
          pg_main.Repaint;
      end;

      ShowMessage('Операция завершена успешно!');
      pnl_progress.Visible   := false;

  except on e : EOraError do
      Begin
        ShowMessage('Errors!!! :' + #13 + e.Message + #13 + VarToStr(PACKING_MARKS));
      End;
  End;

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
  ColIni := TIniFile.Create(ProgPath+'/ini/'+IntToStr(CUR_DEPT_ID)+'_columns.ini');
  for i := 0 to Length(Recogniser) - 1 do
    Begin
      ColIni.WriteInteger('cols','col_'+IntToStr(i),Recogniser[i].column);
    End;
  ColIni.Free;
end;


//
//  Расставляем столбцы из ini файла
//
procedure TReadInvoice.BitBtn6Click(Sender: TObject);
VAR
ColIni : TIniFile;
i : integer;
begin
  ColIni := TIniFile.Create(ProgPath+'/ini/'+IntToStr(CUR_DEPT_ID)+'_columns.ini');
  for i := 0 to Length(Recogniser) - 1 do
    Begin
      Recogniser[i].column := ColIni.ReadInteger('cols','col_'+IntToStr(i),-1);
      if Recogniser[i].column > -1 then
        ColumnNames.Items.Items[i].Checked := true;
    End;
  ColIni.Free;
  RefreshGrid(false);
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
    RefreshGrid(false);
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


end.

