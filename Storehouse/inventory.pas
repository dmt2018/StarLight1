unit inventory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGridEh, StdCtrls, Buttons, ComCtrls,
  DB, Ora, MemDS, ActnList, ToolWin, global, useful_functions,
  DASQLMonitor, OraSQLMonitor,  GridsEh, Registry, frxClass, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCurrencyEdit,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxButtons, cxGridExportLink, DBAccess, PI_library,
  frxExportRTF, frxExportXLS, frxExportText, frxExportHTML, frxExportPDF,
  frxDBSet, ShellAPI, cxContainer, dxBar, dxBarExtItems, cxImage, IniFiles,
  PI_Library_reg, cxSpinEdit, cxCalc;

type
  TinventoryForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    EditComments: TEdit;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel7: TPanel;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Store_TS_2: TTabSheet;
    Panel10: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel17: TPanel;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton17: TToolButton;
    ToolButton4: TToolButton;
    Add_Action: TAction;
    Delete_Action: TAction;
    ShowOnlyAdded_Action: TAction;
    ShowAll_Action: TAction;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    DocInfo_Panel: TPanel;
    Label9: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    Panel4: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label3: TLabel;
    Panel13: TPanel;
    StatusBar: TStatusBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DocPrint_Action: TAction;
    OraStoredProc: TOraStoredProc;
    filter_off: TAction;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    BitBtn2: TBitBtn;
    Panel9: TPanel;
    AddedCB: TCheckBox;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    grid_sp: TcxGrid;
    grid_sp_View: TcxGridDBTableView;
    np_CODE: TcxGridDBColumn;
    np_H_CODE: TcxGridDBColumn;
    np_f_type: TcxGridDBColumn;
    np_F_SUB_TYPE: TcxGridDBColumn;
    np_FULL_NAME: TcxGridDBColumn;
    np_SPESIFICATION: TcxGridDBColumn;
    np_QUANTITY: TcxGridDBColumn;
    np_PRICE: TcxGridDBColumn;
    np_QUANTITY_NOW: TcxGridDBColumn;
    grid_sp_Level: TcxGridLevel;
    np_ADDED_1: TcxGridDBColumn;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog2: TSaveDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    np_ADDED: TcxGridDBColumn;
    np_N_ID: TcxGridDBColumn;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    fr_DOC_DS: TfrxDBDataset;
    np_S_NAME_RU: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_prihod: TcxStyle;
    st_reprice: TcxStyle;
    st_small: TcxStyle;
    np_sum_price_difference: TcxGridDBColumn;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    aFilterType: TAction;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aSearchOurCode: TAction;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarDockControl1: TdxBarDockControl;
    np_pics: TcxGridDBColumn;
    grid_sp_ViewPHOTO: TcxGridDBColumn;
    cb_pics: TCheckBox;
    np_our_code: TcxGridDBColumn;
    N4: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    np_q_difference: TcxGridDBColumn;
    grid_sp_ViewNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure Filter(Sender: TObject);
    procedure Store_PCChange(Sender: TObject);
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure Add_ActionExecute(Sender: TObject);
    procedure AddedCBClick(Sender: TObject);

    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure docAfterOpen(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure grid_sp_ViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure grid_sp_ViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure grid_sp_ViewKeyPress(Sender: TObject; var Key: Char);
    procedure do_check;
    procedure aFilterTypeExecute(Sender: TObject);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_sp_ViewDblClick(Sender: TObject);
    procedure grid_sp_ViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
    procedure grid_sp_ViewDataControllerFilterChanged(Sender: TObject);
    procedure cb_picsClick(Sender: TObject);
    procedure DOCNEW1_DATAAfterPost(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);


  private
    path: string;
    param_: integer;
    procedure SheckIt(param_: integer);
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    n_id: integer;
    department_index: integer;
    department_name: string;
    
    StrList_types_arr : ArrOfInt;
    StrList_subtypes_arr : ArrOfInt;

  end;

var
  inventoryForm: TinventoryForm;

implementation
{$R *.dfm}
uses DataM, Store_View_Filtr, UChoiseType, UFullInfo;




procedure UpdateRecordPictureByFileName(ADataController: TcxCustomDataController;
  AFileName: Variant; ARecordIndex, APictureColumnIndex: Integer);
var
  AValue: string;
  APicture: TPicture;
begin
  AValue := '';
  if (VarToStr(AFileName) <> '') then
  BEGIN
    AFileName := def_folder + DataM.department_id + '\tm\'  + AFileName;
    if FileExists(aFileName) then
    begin
      APicture := TPicture.Create;
      try
        APicture.LoadFromFile(AFileName);
        SavePicture(APicture, AValue);
      finally
        FreeAndNil(APicture);
      end;
    end
    else
      AValue := '';
  END;
  ADataController.Values[ARecordIndex, APictureColumnIndex] := AValue;
end;

procedure UpdateRecordPicture(ADataController: TcxCustomDataController;
  ARecordIndex, AFileNameColumnIndex, APictureColumnIndex: Integer);
begin
  UpdateRecordPictureByFileName(ADataController,
    ADataController.Values[ARecordIndex, AFileNameColumnIndex],
    ARecordIndex, APictureColumnIndex);
end;

procedure LoadPictures(ADataController: TcxCustomDataController;
  AFileNameColumnIndex, APictureColumnIndex: Integer);
var
  I: Integer;
begin
  ADataController.BeginUpdate;
  try
    for I := 0 to ADataController.RecordCount - 1 do
      UpdateRecordPicture(ADataController, I, AFileNameColumnIndex,
        APictureColumnIndex);
  finally
    ADataController.EndUpdate;
  end;
end;


procedure TinventoryForm.grid_sp_ViewDataControllerFilterChanged(
  Sender: TObject);
begin
  grid_sp_View.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_sp_View.DataController, grid_sp_ViewPHOTO.Index, np_pics.Index);
end;

procedure TinventoryForm.cb_picsClick(Sender: TObject);
begin
  np_pics.Visible     := cb_pics.Checked;

  grid_sp_View.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_sp_View.DataController, grid_sp_ViewPHOTO.Index, np_pics.Index);
  grid_sp.SetFocus;
end;








//-----инициализация формы---------------------
procedure TinventoryForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TinventoryForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  RegIni : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Invent_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Inventarizacia';
  grid_sp_View.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  DocDate_Label.Caption:=DataM.GlobalDate_FORMAT;
  Store_PC.ActivePageIndex := 0;

  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;

  RegIni := TIniFile.Create(path+'store.ini');
  def_folder := RegIni.ReadString('folder', 'Value', '..');
  np_pics.Visible     := cb_pics.Checked;

  screen.cursor  := crhourglass;
  Initialize();
  Filter(Sender);
  screen.cursor  := crdefault;
  Label3.Caption := department_name +' :: Накладная инвентаризации';
end;


//
// -----инициализация создания нового ID------------
//
procedure TinventoryForm.New(id: integer);
begin
    try
      np_ADDED_1.Visible      := true;
      Panel17.Visible         := false;
      DOCNEW1_DATA.Close;
      DOCNEW1_DATA.ParamByName('ID_DEPARTMENTS').Value := department_index;
      grid_sp_View.DataController.DataSource           := DOCNEW1_DATA_DS;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
end;





//
// -----инициализация просмотра ID------------
//
procedure TinventoryForm.View(id: integer);
begin
  if (id<>0) then
  begin
    try
      grid_sp_View.DataController.DataSource := DOC_DATA_DS;
      DOC_DATA.ParamByName('STORE_TYPE').AsInteger := 1;

      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    EditComments.Enabled  := false;
    grid_sp_View.OptionsData.Editing := false;
    DocInfo_Panel.Visible := true;

    //BitBtn_Cancel.Visible   := false;
    Panel17.Visible         := false;
    Panel9.Visible          := Panel17.Visible;

    np_ADDED_1.Visible      := false;
    department_name         := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption   := doc.FieldByName('DOC_DATE').AsString;
  end;
end;
//--------------------------------------------


//
//  CTRL+ENTER запись
//
procedure TinventoryForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;


//
// Применяем фильтр
//
procedure TinventoryForm.BitBtn2Click(Sender: TObject);
begin
  grid_sp_View.DataController.Filter.Clear;
  grid_sp.SetFocus;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TinventoryForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  if (DOCNEW1_DATA.Active = true) and (DOCNEW1_DATA.State = dsEdit) then DOCNEW1_DATA.Post;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Invent_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Inventarizacia';
  grid_sp_View.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


// Фильтрация --------------------------------------------------------
procedure TinventoryForm.Filter(Sender: TObject);
begin
  grid_sp_View.DataController.DataSet.Close;
  TOraQuery(grid_sp_view.DataController.DataSet).Filter := '';

  if (AddedCB.Checked=true) then
  begin
    TOraQuery(grid_sp_view.DataController.DataSet).Filter:=' added_1<>0';
    TOraQuery(grid_sp_view.DataController.DataSet).Filtered:=true;
  end;

  if (Store_PC.ActivePage.Name='Store_TS_1') then
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('STORE_TYPE').AsInteger := 1
  else
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('STORE_TYPE').AsInteger := 2;

  if (id=0) then
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('ID_DEPARTMENTS').AsInteger := department_index;

  try
    grid_sp_View.DataController.DataSet.Open;
    if (n_id > 0) and (id > 0) then
        grid_sp_View.DataController.DataSet.Locate('n_id', n_id, []);

  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  End;

  screen.cursor:=crdefault;
end;
//------------------------------------------------------------------------------



procedure TinventoryForm.docAfterOpen(DataSet: TDataSet);
begin
  try
    DOC_DATA.Close;
    DOC_DATA.Open;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;
end;


//
// Меняем PageControl
//
procedure TinventoryForm.Store_PCChange(Sender: TObject);
begin
  Filter(Sender);
   cb_picsClick(nil);
end;


//
// Нажимаем только добавленные
//
procedure TinventoryForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
  cb_picsClick(nil);
end;


//
//  Экспорт в Эксель
//
procedure TinventoryForm.spis_m1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_inventory.xls';
     ExportGridToExcel(f, grid_sp, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{  if SaveDialog2.Execute then
  begin
     ExportGridToExcel(SaveDialog2.FileName, grid_sp, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog2.FileName), nil, nil, SW_RESTORE);
  end;
  }
   cb_picsClick(nil);
end;


//
//  Восстанавливаем таблицу
//
procedure TinventoryForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_sp_View.DataController.Filter.Clear;
  j := grid_sp_View.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_sp_View.SortedItems[0].SortOrder := soNone;
  end;
   cb_picsClick(nil);
end;


//
// печать
//
procedure TinventoryForm.ToolButton1Click(Sender: TObject);
begin
  if (DOCNEW1_DATA.RecordCount <> 0) then
  try
    MakeSortForPrint(TOraQuery(grid_sp_View.DataController.DataSet),grid_sp_View);
    frxReport1.LoadFromFile(path+'raports\invent.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


//
// Красим если отмеченная позиция не совпадает по кол-ву и на складе
//
procedure TinventoryForm.grid_sp_ViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  v_q, v_qn, v_ch, res : variant;
begin
  if not AViewInfo.Selected {and (grid_doneView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK')} then
  begin
    // Красим если отмеченная позиция не совпадает по кол-ву и на складе
    v_q := grid_sp_View.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_sp_View.GetColumnByFieldName('QUANTITY').Index
                );
    v_qn := grid_sp_View.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_sp_View.GetColumnByFieldName('QUANTITY_NOW').Index
                );
    v_ch := grid_sp_View.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_sp_View.GetColumnByFieldName('ADDED_1').Index
                );

    if (v_q <> v_qn) and (v_ch > 0) then
      ACanvas.Brush.Color := clYellow;
  end;

  res := grid_sp_View.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_sp_View.GetColumnByFieldName('NOTUSE').Index
         );
	IF (1 = res) then
     ACanvas.Brush.Color := stNotUse.Color;

end;


//
// Выделить все
//
procedure TinventoryForm.N2Click(Sender: TObject);
begin
  SheckIt(1);
end;

//
// Снять выделенное
//
procedure TinventoryForm.N3Click(Sender: TObject);
begin
  SheckIt(0);
end;


//
// Проца выделения / развыделения
//
procedure TinventoryForm.SheckIt(param_: integer);
var i: integer;
begin
  screen.cursor:=crhourglass;
  dm.OraQuery1.Close;
  dm.OraQuery1.SQL.Clear;
  dm.OraQuery1.SQL.Add('begin STORE_PKG.set_check_inv(:added_1_, :added_, :N_ID_, :QUANTITY_, :STORE_TYPE_, :PRICE_); end; ');
  for i := 0 to grid_sp_View.ViewData.RowCount-1 do
  begin
    dm.OraQuery1.ParamByName('added_1_').AsInteger := param_;

    if (grid_sp_View.ViewData.Rows[i].Values[grid_sp_View.GetColumnByFieldName('added').Index]  = NULL) then
      dm.OraQuery1.ParamByName('added_').AsInteger := 0
    else
      dm.OraQuery1.ParamByName('added_').AsInteger := grid_sp_View.ViewData.Rows[i].Values[grid_sp_View.GetColumnByFieldName('added').Index];

    dm.OraQuery1.ParamByName('N_ID_').AsInteger := grid_sp_View.ViewData.Rows[i].Values[grid_sp_View.GetColumnByFieldName('N_ID').Index];
    dm.OraQuery1.ParamByName('QUANTITY_').AsInteger := 0; //grid_sp_View.ViewData.Rows[i].Values[grid_sp_View.GetColumnByFieldName('QUANTITY').Index];

    if (Store_PC.ActivePage.Name='Store_TS_1') then
      dm.OraQuery1.ParamByName('STORE_TYPE_').AsInteger := 1
    else
      dm.OraQuery1.ParamByName('STORE_TYPE_').AsInteger := 2;

    dm.OraQuery1.ParamByName('PRICE_').AsCurrency := grid_sp_View.ViewData.Rows[i].Values[grid_sp_View.GetColumnByFieldName('PRICE').Index];
    dm.OraQuery1.Execute;
  end;

  grid_sp_View.DataController.DataSet.Refresh;
   cb_picsClick(nil);
  screen.cursor:=crdefault;
  grid_sp.SetFocus;
end;


procedure TinventoryForm.grid_sp_ViewCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

  if (ACellViewInfo.Item.Name = 'np_ADDED_1') then
  begin
    do_check;
  end;
//  AHandled := true;
end;


procedure TinventoryForm.grid_sp_ViewKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=' ') then
    do_check;
end;

procedure TinventoryForm.do_check;
var val: integer;
begin
  try
     val := np_ADDED_1.EditValue; // DM.Q_CASH_SCHECKED.AsInteger;
     grid_sp_View.DataController.DataSet.Edit;
     grid_sp_View.DataController.DataSet.FieldByName('ADDED_1').AsInteger := abs(val - 1);
     grid_sp_View.DataController.DataSet.Post;
     grid_sp_View.ViewData.DataController.GotoNext;

     cb_picsClick(nil);     
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;












//
//  Добавляем в инвентаризацию
//
procedure TinventoryForm.ToolButton17Click(Sender: TObject);
begin
//  Add_ActionExecute(Sender);
end;


//
//  Добавляем инвентаризацию
//
procedure TinventoryForm.Add_ActionExecute(Sender: TObject);
begin
  // Неиспользу, потому что проще через фильтры все сделать 
{
  theForm:=TStoreViewFiltrForm.Create(Application);


  TStoreViewFiltrForm(theform).flower_types.ParamByName('ID_DEPARTMENTS').AsInteger := department_index;
  TStoreViewFiltrForm(theform).flower_subtypes.ParamByName('ID_DEPARTMENTS').AsInteger := department_index;


  TStoreViewFiltrForm(theform).StrList_types_arr:=StrList_types_arr;
  TStoreViewFiltrForm(theform).StrList_subtypes_arr:=StrList_subtypes_arr;

  if theForm.ShowModal = mrOk then
  begin

  screen.cursor:=crhourglass;

  VST:=TStoreViewFiltrForm(theForm).VST;


  //Собираем все отмеченные типы
  ii:=0;
  StrList_types := '';
  tmpNode :=  VST.GetFirst; // Перебор узлов
  if tmpNode.CheckType <> ctNone then begin
    while Assigned(tmpNode) do begin
      if tmpNode.CheckState = csCheckedNormal then begin
        tmpNodeData := VST.GetNodeData(tmpNode);
        if (Assigned(tmpNodeData) and (tmpNode.Parent = VST.RootNode)) then
          begin
          if ii=0 then StrList_types := StrList_types + inttostr(tmpNodeData^.Number)
          else StrList_types := StrList_types + ',' +  inttostr(tmpNodeData^.Number);
          ii:=ii+1;
          end;
       end;
      tmpNode :=  VST.GetNext(tmpNode);
    end;
  end;

  //Собираем все отмеченные подтипы
  ii:=0;
  StrList_subtypes := '';
  tmpNode :=  VST.GetFirst; // Перебор узлов
  if tmpNode.CheckType <> ctNone then begin
    while Assigned(tmpNode) do begin
      if tmpNode.CheckState = csCheckedNormal then begin
        tmpNodeData := VST.GetNodeData(tmpNode);
        if Assigned(tmpNodeData) and not(tmpNode.Parent = VST.RootNode) then
          begin
          if ii=0 then StrList_subtypes := StrList_subtypes + inttostr(tmpNodeData^.Number)
          else StrList_subtypes := StrList_subtypes + ',' +  inttostr(tmpNodeData^.Number);
          ii:=ii+1;
          end;
       end;
      tmpNode :=  VST.GetNext(tmpNode);
    end;

  end;

 showmessage (StrList_subtypes);
 showmessage (StrList_types);

 OraStoredProc.ParamByName('ttypes').AsString:=StrList_types;
 OraStoredProc.ParamByName('sub_ttypes').AsString:=StrList_subtypes;
 OraStoredProc.Execute;

screen.cursor:=crdefault;
}

 // end;
end;


//
//  Фильтр по типам
//
procedure TinventoryForm.aFilterTypeExecute(Sender: TObject);
var var_: integer;
begin
  if (strtoint(DataM.department_id) = 61) then var_ := 2 else var_ := 1;

  if (Panel_fill.Visible = false) then
  begin
    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := strtoint(DataM.department_id);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := var_;
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid_sp_View.DataController.Filter.Clear;
       if var_ = 1 then
          np_f_type.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString)
       else
          np_F_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_sp_View.DataController.Filter.Active := True;
       grid_sp.SetFocus;
    end;
  end;
end;

procedure TinventoryForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TinventoryForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TinventoryForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;


//
//  Поиск
//
procedure TinventoryForm.search_execute(param: integer);
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


procedure TinventoryForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_sp.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_sp_View.DataController.Filter.Clear;
    if (param_ = 1) then
       np_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 2) then
       np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 3) then
       np_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    grid_sp_View.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid_sp.SetFocus;
  end;
end;


procedure TinventoryForm.grid_sp_ViewDblClick(Sender: TObject);
begin
  if (grid_sp_View.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_sp_View.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
  end;
end;


procedure TinventoryForm.grid_sp_ViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (grid_sp_View.DataController.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_sp_View.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
  end;
end;


procedure TinventoryForm.DOCNEW1_DATAAfterPost(DataSet: TDataSet);
begin
     cb_picsClick(nil);
end;

procedure TinventoryForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


// Скопируем значение ячейкт в буфер
procedure TinventoryForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sp_View.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TinventoryForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sp_View.DataController, 0);
end;


end.
