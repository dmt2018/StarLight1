unit utsenka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList, DBCtrls,
  Ora, MemDS, ActnList, GridsEh, Registry,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxGraphics, cxDropDownEdit, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxGridExportLink, DBAccess, ShellAPI,
  dxBar, dxBarExtItems, IniFiles, cxImage, PI_Library_reg, cxCalc;

type
  TutsenkaForm = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    EditComments: TEdit;
    Panel10: TPanel;
    Panel2: TPanel;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    DOC_DS: TOraDataSource;
    DocInfo_Panel: TPanel;
    Label10: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel7: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel9: TPanel;
    StatusBar: TStatusBar;
    Panel13: TPanel;
    Label6: TLabel;
    Label12: TLabel;
    Panel5: TPanel;
    AddedCB: TCheckBox;
    filter_off: TAction;
    BitBtn2: TBitBtn;
    EditPercent: TcxSpinEdit;
    Znak_EditPercent: TcxComboBox;
    BitBtn1: TcxButton;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    grid_uc: TcxGrid;
    grid_ucView: TcxGridDBTableView;
    uc_CODE: TcxGridDBColumn;
    uc_H_CODE: TcxGridDBColumn;
    uc_f_type: TcxGridDBColumn;
    uc_F_SUB_TYPE: TcxGridDBColumn;
    uc_FULL_NAME: TcxGridDBColumn;
    uc_SPESIFICATION: TcxGridDBColumn;
    uc_QUANTITY: TcxGridDBColumn;
    uc_PRICE: TcxGridDBColumn;
    uc_PRICE_LIST: TcxGridDBColumn;
    uc_SUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_uc_Level: TcxGridLevel;
    uc_PRICE_PERCENT: TcxGridDBColumn;
    uc_QUANTITY_NOW: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxS_header: TcxStyle;
    cxS_data: TcxStyle;
    btn_refresh: TcxButton;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog4: TSaveDialog;
    uc_S_NAME_RU: TcxGridDBColumn;
    st_small: TcxStyle;
    aFilterType: TAction;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aSearchOurCode: TAction;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarDockControl1: TdxBarDockControl;
    cb_pics: TCheckBox;
    np_pics: TcxGridDBColumn;
    grid_ucViewPHOTO: TcxGridDBColumn;
    uc_our_code: TcxGridDBColumn;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    grid_ucViewNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure docAfterOpen(DataSet: TDataSet);
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure AddedCBClick(Sender: TObject);
    procedure Filter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPercent2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_refreshClick(Sender: TObject);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure aFilterTypeExecute(Sender: TObject);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure search_execute(param: integer);
    procedure grid_ucViewDblClick(Sender: TObject);
    procedure grid_ucViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
    procedure grid_ucViewDataControllerFilterChanged(Sender: TObject);
    procedure cb_picsClick(Sender: TObject);
    procedure DOCNEW1_DATAAfterPost(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure grid_ucViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);

  private
    { Private declarations }
    path: string;
  public
    { Public declarations }
    id: integer;
    n_id: integer;
    param_: integer;
    department_index: integer;
    department_name: string;

    price_znak:     string;
    price_percent:  string;
    price_part:     integer;
  end;

var
  utsenkaForm: TutsenkaForm;

implementation

uses DataM, Client_choos, global, change_prices, UChoiseType, UFullInfo;

{$R *.dfm}


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


procedure TutsenkaForm.grid_ucViewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_ucView.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_ucView.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;



procedure TutsenkaForm.grid_ucViewDataControllerFilterChanged(Sender: TObject);
begin
  grid_ucView.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_ucView.DataController, grid_ucViewPHOTO.Index, np_pics.Index);
end;


procedure TutsenkaForm.cb_picsClick(Sender: TObject);
begin
  np_pics.Visible     := cb_pics.Checked;

  grid_ucView.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_ucView.DataController, grid_ucViewPHOTO.Index, np_pics.Index);
  grid_uc.SetFocus;
end;







//-----инициализация формы---------------------
procedure TutsenkaForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TutsenkaForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  RegIni : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Ucenka_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Ucenka';
  grid_ucView.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  DocDate_Label.Caption:=DataM.GlobalDate_FORMAT;

  StatusBar.Panels[0].Text:='  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text:='  Оператор: '+DataM.Operator_Name;

  RegIni := TIniFile.Create(path+'store.ini');
  def_folder := RegIni.ReadString('folder', 'Value', '..');
  np_pics.Visible     := cb_pics.Checked;

  screen.cursor:=crhourglass;
  Initialize();
  Filter(Sender);
  screen.cursor:=crdefault;

  Label3.Caption := department_name +' :: Накладная уценки';
end;


//
//  После открытия инф. о накладной, открываем данные
//
procedure TutsenkaForm.docAfterOpen(DataSet: TDataSet);
begin
  try
    DOC_DATA.Close;
    DOC_DATA.Open;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TutsenkaForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  if (DOCNEW1_DATA.Active = true) and (DOCNEW1_DATA.State = dsEdit) then DOCNEW1_DATA.Post;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Ucenka_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Ucenka';
  grid_ucView.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Нажимаем CTRL+ENTER
//
procedure TutsenkaForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;


//
// Очищаем фильтр
//
procedure TutsenkaForm.BitBtn2Click(Sender: TObject);
begin
  grid_ucView.DataController.Filter.Clear;
  grid_uc.SetFocus;
end;


//
//  Нажимаем ENTER на скидке для перерасчета
//
procedure TutsenkaForm.EditPercent2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//-----инициализация создания нового ID------------
procedure TutsenkaForm.New(id: integer);
begin
   grid_ucView.DataController.DataSource := DOCNEW1_DATA_DS;
end;


//-----инициализация просмотра ID------------
procedure TutsenkaForm.View(id: integer);
begin
  if (id<>0) then
  begin
    try
      grid_ucView.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger :=id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    EditComments.Enabled  := false;
    grid_ucView.OptionsData.Editing := false;
    DocInfo_Panel.Visible := true;
    Panel13.Visible       := false;
    department_name       := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption := doc.FieldByName('DOC_DATE').AsString;
  end;
end;
//--------------------------------------------


//
//  Кнопка пересчет
//
procedure TutsenkaForm.BitBtn1Click(Sender: TObject);
begin
   DM.OraSession.ExecProc('STORE_PKG.set_price_part', [EditPercent.EditValue]);
   Filter(Sender);
   cb_picsClick(nil);
   grid_uc.SetFocus;
end;


//
// Фильтрация--------------------------------------------------------
//
procedure TutsenkaForm.Filter(Sender: TObject);
begin
  screen.cursor := crhourglass;
  grid_ucView.DataController.DataSet.Close;

  if (id=0) then
  begin
    TOraQuery(grid_ucView.DataController.DataSet).ParamByName('ID_DEPARTMENTS').AsInteger := department_index;
    DOCNEW1_DATA.ParamByName('price_part').AsInteger := price_part;
  end;

  try
    grid_ucView.DataController.DataSet.Open;
    if (n_id > 0) and (id > 0) then
        grid_ucView.DataController.DataSet.Locate('n_id', n_id, []);
  except on E: Exception do
    begin
      screen.cursor:=crdefault;
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
  End;

  grid_ucView.DataController.DataSet.Filter := '';

  // Если ТОЛЬКО ДОБАВЛЕННЫЕ
  if (AddedCB.Checked=true) then
  begin
    grid_ucView.DataController.DataSet.Filter := ' added > 0 and QUANTITY <> 0';
    grid_ucView.DataController.DataSet.Filtered := true;
  end;

  screen.cursor:=crdefault;
end;
//--------------------------------------------------------------------


//
// Нажимаем ТОЛЬКО ДОБАВЛЕННЫЕ
//
procedure TutsenkaForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
   cb_picsClick(nil);
end;


//
//  Обновление данных
//
procedure TutsenkaForm.btn_refreshClick(Sender: TObject);
begin
  grid_ucView.DataController.DataSet.Refresh;
   cb_picsClick(nil);
end;


//
//  Экспорт в Эксель
//
procedure TutsenkaForm.spis_m1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_ucenka.xls';
     ExportGridToExcel(f, grid_uc, True, True, true, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog4.Execute then
  begin
     ExportGridToExcel(SaveDialog4.FileName, grid_uc, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog4.FileName), nil, nil, SW_RESTORE);
  end;
}
   cb_picsClick(nil);
end;


//
//  Восстанавливаем таблицу
//
procedure TutsenkaForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_ucView.DataController.Filter.Clear;
  j := grid_ucView.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_ucView.SortedItems[0].SortOrder := soNone;
  end;
   cb_picsClick(nil);
end;



//
//  Фильтр по типам
//
procedure TutsenkaForm.aFilterTypeExecute(Sender: TObject);
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
       grid_ucView.DataController.Filter.Clear;
       if var_ = 1 then
          uc_f_type.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString)
       else
          uc_F_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_ucView.DataController.Filter.Active := True;
       grid_uc.SetFocus;
    end;
  end;
end;

procedure TutsenkaForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TutsenkaForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TutsenkaForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;


//
//  Поиск
//
procedure TutsenkaForm.search_execute(param: integer);
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


procedure TutsenkaForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_uc.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_ucView.DataController.Filter.Clear;
    if (param_ = 1) then
       uc_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 2) then
       uc_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 3) then
       uc_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    grid_ucView.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid_uc.SetFocus;
  end;
end;


procedure TutsenkaForm.grid_ucViewDblClick(Sender: TObject);
begin
  if (grid_ucView.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_ucView.DataController.DataSet.FieldByName('N_ID').AsInteger;
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



procedure TutsenkaForm.grid_ucViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (grid_ucView.DataController.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_ucView.DataController.DataSet.FieldByName('N_ID').AsInteger;
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

procedure TutsenkaForm.DOCNEW1_DATAAfterPost(DataSet: TDataSet);
begin
     cb_picsClick(nil);
end;

procedure TutsenkaForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


// Скопируем значение ячейкт в буфер
procedure TutsenkaForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_ucView.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TutsenkaForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_ucView.DataController, 0);
end;


end.
