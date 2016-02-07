unit spisanie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList, DBCtrls,
  ActnList, Ora, MemDS, GridsEh, Registry,
  cxLookAndFeelPainters, cxButtons, cxDataStorage, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridExportLink,
  DBAccess, ShellApi, cxContainer, dxBar, dxBarExtItems, IniFiles, cxImage, PI_Library_reg,
  cxSpinEdit, cxCalc;

type
  TspisanieForm = class(TForm)
    Panel_Sklad1: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    EditComments: TEdit;
    Edit_Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DOC_DATA: TOraQuery;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Store_TS_2: TTabSheet;
    DocInfo_Panel: TPanel;
    Label9: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel10: TPanel;
    AddedCB: TCheckBox;
    Panel7: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel8: TPanel;
    StatusBar: TStatusBar;
    filter_off: TAction;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    BitBtn2: TBitBtn;
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
    np_QUANTITY_PRICE: TcxGridDBColumn;
    np_QUANTITY_NOW: TcxGridDBColumn;
    grid_sp_Level: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxS_header: TcxStyle;
    cxS_data: TcxStyle;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog3: TSaveDialog;
    np_S_NAME_RU: TcxGridDBColumn;
    st_small: TcxStyle;
    aFilterType: TAction;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aSearchOurCode: TAction;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    dxBarDockControl1: TdxBarDockControl;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    cb_pics: TCheckBox;
    np_pics: TcxGridDBColumn;
    grid_sp_ViewPHOTO: TcxGridDBColumn;
    np_our_code: TcxGridDBColumn;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    grid_sp_ViewNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure docAfterOpen(DataSet: TDataSet);
    procedure Filter(Sender: TObject);
    procedure Store_PCChange(Sender: TObject);
    procedure DocSave_ActionExecute(Sender: TObject);

    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure AddedCBClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
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
    procedure cb_picsClick(Sender: TObject);
    procedure grid_sp_ViewDataControllerFilterChanged(Sender: TObject);
    procedure DOCNEW1_DATAAfterPost(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure grid_sp_ViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);

  private
    path: string;
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    n_id: integer;
    param_: integer;
    department_index: integer;
    department_name: string;
  end;

var
  spisanieForm: TspisanieForm;

implementation

{$R *.dfm}
uses DataM, Client_choos, global, UChoiseType, UFullInfo;


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


procedure TspisanieForm.grid_sp_ViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_sp_View.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_sp_View.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;


procedure TspisanieForm.grid_sp_ViewDataControllerFilterChanged(
  Sender: TObject);
begin
  grid_sp_View.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_sp_View.DataController, grid_sp_ViewPHOTO.Index, np_pics.Index);
end;

procedure TspisanieForm.cb_picsClick(Sender: TObject);
begin
  np_pics.Visible     := cb_pics.Checked;

  grid_sp_View.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_sp_View.DataController, grid_sp_ViewPHOTO.Index, np_pics.Index);
  grid_sp.SetFocus;
end;










//-----инициализация формы---------------------
procedure TspisanieForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TspisanieForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  RegIni : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Spisanie_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Spisanie';
  grid_sp_View.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  DocDate_Label.Caption     := DataM.GlobalDate_FORMAT;
  Store_PC.ActivePageIndex  := 0;
  StatusBar.Panels[0].Text  := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text  := '  Оператор: '+DataM.Operator_Name;

  RegIni := TIniFile.Create(path+'store.ini');
  def_folder := RegIni.ReadString('folder', 'Value', '..');
  np_pics.Visible     := cb_pics.Checked;

  screen.cursor  := crhourglass;
  Initialize();
  Filter(Sender);
  screen.cursor  := crdefault;
  Label3.Caption := department_name +' :: Накладная списания';
end;



//
// -----инициализация создания нового ID------------
//
procedure TspisanieForm.New(id: integer);
begin
    try
      np_quantity_now.Visible := true;
      DOCNEW1_DATA.Close;
      DOCNEW1_DATA.ParamByName('ID_DEPARTMENTS').Value := department_index;
      grid_sp_View.DataController.DataSource := DOCNEW1_DATA_DS;
      DOCNEW1_DATA.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
end;


//
// -----инициализация просмотра ID------------
//
procedure TspisanieForm.View(id: integer);
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

    EditComments.Text       := doc.FieldByName('Comments').AsString;
    EditComments.Enabled    := false;
    grid_sp_View.OptionsData.Editing := false;
    DocInfo_Panel.Visible   := true;
    np_quantity_now.Visible := false;
    department_name         := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption   := doc.FieldByName('DOC_DATE').AsString;
  end;
end;
//--------------------------------------------


//
//  CTRL+ENTER запись
//
procedure TspisanieForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;



//
// Применяем фильтр
//
procedure TspisanieForm.BitBtn2Click(Sender: TObject);
begin
  grid_sp_View.DataController.Filter.Clear;
  grid_sp.SetFocus;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TspisanieForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  if (DOCNEW1_DATA.Active = true) and (DOCNEW1_DATA.State = dsEdit) then DOCNEW1_DATA.Post;
  
  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Spisanie_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Spisanie';
  grid_sp_View.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//Фильтрация--------------------------------------------------------
procedure TspisanieForm.Filter(Sender: TObject);
begin
  screen.cursor:=crhourglass;
  grid_sp_View.DataController.DataSet.Close;

  if (Store_PC.ActivePage.Name = 'Store_TS_1') then
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('STORE_TYPE').AsInteger := 1
  else
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('STORE_TYPE').AsInteger := 2;

  if (id = 0) then
    TOraQuery(grid_sp_view.DataController.DataSet).ParamByName('ID_DEPARTMENTS').AsInteger := department_index;

  try
    grid_sp_View.DataController.DataSet.Open;
    if (n_id > 0) and (id > 0) then
        grid_sp_View.DataController.DataSet.Locate('n_id', n_id, []);
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  End;

  grid_sp_View.DataController.DataSet.Filter := '';

  // Если ТОЛЬКО ДОБАВЛЕННЫЕ
  if (AddedCB.Checked=true) then
  begin
    grid_sp_View.DataController.DataSet.Filter := ' added > 0 and QUANTITY <> 0';
    grid_sp_View.DataController.DataSet.Filtered := true;
  end;

  screen.cursor:=crdefault;
end;
//--------------------------------------------------------------------








procedure TspisanieForm.docAfterOpen(DataSet: TDataSet);
begin
  try
    DOC_DATA.Close;
    DOC_DATA.Open;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;
end;


procedure TspisanieForm.Store_PCChange(Sender: TObject);
begin
  Filter(Sender);
   cb_picsClick(nil);
end;


procedure TspisanieForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
   cb_picsClick(nil);
end;


//
//  Экспорт в Эксель
//
procedure TspisanieForm.spis_m1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_spisanie.xls';
     ExportGridToExcel(f, grid_sp, True, True, true, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{  if SaveDialog3.Execute then
  begin
     ExportGridToExcel(SaveDialog3.FileName, grid_sp, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog3.FileName), nil, nil, SW_RESTORE);
  end;
}
   cb_picsClick(nil);
end;


//
//  Восстанавливаем таблицу
//
procedure TspisanieForm.spis_m2Click(Sender: TObject);
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
//  Фильтр по типам
//
procedure TspisanieForm.aFilterTypeExecute(Sender: TObject);
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

procedure TspisanieForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TspisanieForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TspisanieForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;

//
//  Поиск
//
procedure TspisanieForm.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(Panel9.Width / 2) - 90;
    Panel_fill.Top     := trunc(Panel9.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;


procedure TspisanieForm.te_searchKeyDown(Sender: TObject; var Key: Word;
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


procedure TspisanieForm.grid_sp_ViewDblClick(Sender: TObject);
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

procedure TspisanieForm.grid_sp_ViewKeyDown(Sender: TObject; var Key: Word;
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


procedure TspisanieForm.DOCNEW1_DATAAfterPost(DataSet: TDataSet);
begin
     cb_picsClick(nil);
end;

procedure TspisanieForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


// Скопируем значение ячейкт в буфер
procedure TspisanieForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sp_View.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TspisanieForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sp_View.DataController, 0);
end;

end.
