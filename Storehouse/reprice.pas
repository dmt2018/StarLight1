unit reprice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Ora, MemDS, DBAccess, ComCtrls, StdCtrls, Buttons,
  DBCtrls, Grids, DBGridEh, ExtCtrls, GridsEh, Registry, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit,
  cxSpinEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridExportLink,
  cxCheckBox, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ShellApi, dxBar, dxBarExtItems, cxImage, IniFiles, PI_Library_reg;

type
  TrepriceForm = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    EditComments: TEdit;
    Panel2: TPanel;
    DocInfo_Panel: TPanel;
    Label10: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    Panel9: TPanel;
    Panel10: TPanel;
    StatusBar: TStatusBar;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    ctrl_enter: TAction;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    BitBtn2: TBitBtn;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    grid_rp: TcxGrid;
    grid_rp_v: TcxGridDBTableView;
    rp_CODE: TcxGridDBColumn;
    rp_H_CODE: TcxGridDBColumn;
    rp_f_type: TcxGridDBColumn;
    rp_F_SUB_TYPE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_SPESIFICATION: TcxGridDBColumn;
    rp_PRICE_LIST: TcxGridDBColumn;
    rp_PRICE_DIFFERENCE: TcxGridDBColumn;
    rp_QUANTITY: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    grid_rp_l: TcxGridLevel;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog14: TSaveDialog;
    rp_sum_price_difference: TcxGridDBColumn;
    DOCNEW1_DATA_DS: TOraDataSource;
    DOCNEW1_DATA: TOraQuery;
    rp_ADDED_1: TcxGridDBColumn;
    Label1: TLabel;
    de_reprice: TcxDateEdit;
    cxStyleRepository1: TcxStyleRepository;
    st_prihod: TcxStyle;
    st_reprice: TcxStyle;
    rp_S_NAME_RU: TcxGridDBColumn;
    rp_store_type_name: TcxGridDBColumn;
    st_small: TcxStyle;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    aFilterType: TAction;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aSearchOurCode: TAction;
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
    grid_rp_vPHOTO: TcxGridDBColumn;
    np_our_code: TcxGridDBColumn;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    N2: TMenuItem;
    mnRepriceFromFile: TMenuItem;
    mnRepriceFromStore: TMenuItem;
    grid_rp_vNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    mnRepriceFromStoreSel: TMenuItem;
    grid_rp_vN_ID: TcxGridDBColumn;
    AddedCB: TCheckBox;
    procedure FormShow(Sender: TObject);

    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure Filter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure grid_rp_vKeyPress(Sender: TObject; var Key: Char);
    procedure do_check;
    procedure grid_rp_vCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure aFilterTypeExecute(Sender: TObject);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_rp_vDblClick(Sender: TObject);
    procedure grid_rp_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
    procedure grid_rp_vDataControllerFilterChanged(Sender: TObject);
    procedure cb_picsClick(Sender: TObject);
    procedure DOCNEW1_DATAAfterPost(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure mnRepriceFromFileClick(Sender: TObject);
    procedure mnRepriceFromStoreClick(Sender: TObject);
    procedure grid_rp_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnRepriceFromStoreSelClick(Sender: TObject);
    procedure AddedCBClick(Sender: TObject);

  private
    path: string;
    param_: integer;
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    n_id: integer;
    edit_q: boolean;
    department_index: integer;
    department_name: string;
  end;

var
  repriceForm: TrepriceForm;

implementation

uses DataM, global, UChoiseType, UFullInfo, UOldPrice;

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



procedure TrepriceForm.grid_rp_vDataControllerFilterChanged(Sender: TObject);
begin
  grid_rp_v.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_rp_v.DataController, grid_rp_vPHOTO.Index, np_pics.Index);
end;


procedure TrepriceForm.cb_picsClick(Sender: TObject);
begin
  np_pics.Visible     := cb_pics.Checked;

  grid_rp_v.OptionsView.CellAutoHeight := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_rp_v.DataController, grid_rp_vPHOTO.Index, np_pics.Index);
  grid_rp.SetFocus;
end;






//-----инициализация формы---------------------

procedure TrepriceForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TrepriceForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  RegIni : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Reprice_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_pereocenka_list';
  grid_rp_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  DocDate_Label.Caption:=DataM.GlobalDate_FORMAT;

  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;

  RegIni := TIniFile.Create(path+'store.ini');
  def_folder := RegIni.ReadString('folder', 'Value', '..');
  np_pics.Visible     := cb_pics.Checked;

  screen.cursor:=crhourglass;
  Initialize();
  Filter(Sender);
  screen.cursor:=crdefault;

  rp_QUANTITY.Options.Editing := edit_q;
  if (edit_q) then
    rp_QUANTITY.Styles.Content := st_prihod;

  Label3.Caption := department_name +' :: Накладная переоценки';

  mnRepriceFromFile.Enabled  := (GetOfficeID > 1);
  mnRepriceFromStore.Enabled := mnRepriceFromFile.Enabled;
  mnRepriceFromStoreSel.Enabled := mnRepriceFromFile.Enabled;
end;


procedure TrepriceForm.grid_rp_vCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (ACellViewInfo.Item.Name = 'rp_ADDED_1') then
  begin
    do_check;
  end;
  AHandled := true;
end;


procedure TrepriceForm.grid_rp_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_rp_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_rp_v.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;


procedure TrepriceForm.grid_rp_vKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=' ') then
    do_check;
end;


procedure TrepriceForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;

procedure TrepriceForm.do_check;
var val: integer;
begin
  try
     val := rp_ADDED_1.EditValue; // DM.Q_CASH_SCHECKED.AsInteger;
     grid_rp_v.DataController.DataSet.Edit;
     grid_rp_v.DataController.DataSet.FieldByName('ADDED_1').AsInteger := abs(val - 1);
     grid_rp_v.DataController.DataSet.Post;
     grid_rp_v.ViewData.DataController.GotoNext;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TrepriceForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  if (DOCNEW1_DATA.Active = true) and (DOCNEW1_DATA.State = dsEdit) then DOCNEW1_DATA.Post;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Reprice_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_pereocenka_list';
  grid_rp_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
// Очищаем фильтр
//
procedure TrepriceForm.BitBtn2Click(Sender: TObject);
begin
  grid_rp_v.DataController.Filter.Clear;
  grid_rp.SetFocus;
end;


//-----инициализация создания нового ID------------
procedure TrepriceForm.New(id: integer);
begin
    try
//      np_ADDED_1.Visible      := true;
      DOCNEW1_DATA.Close;
      DOCNEW1_DATA.ParamByName('ID_DEPARTMENTS').Value := department_index;
      DOCNEW1_DATA.Open;
      grid_rp_v.DataController.DataSource           := DOCNEW1_DATA_DS;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
end;




//-----инициализация просмотра ID------------
procedure TrepriceForm.View(id: integer);
begin

  if (id <> 0) then
  begin
    try
      grid_rp_v.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    EditComments.Enabled  := false;
    grid_rp_v.OptionsData.Editing := false;
    DocInfo_Panel.Visible := true;
    //BitBtn_Cancel.Visible := false;
    department_name       := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption := doc.FieldByName('DOC_DATE').AsString;
  end;

end;
//--------------------------------------------






//Фильтрация--------------------------------------------------------
procedure TrepriceForm.Filter(Sender: TObject);
begin
  screen.cursor := crhourglass;
  grid_rp_v.DataController.DataSet.Close;

  TOraQuery(grid_rp_v.DataController.DataSet).Filter := '';

  if (AddedCB.Checked=true) then
  begin
    TOraQuery(grid_rp_v.DataController.DataSet).Filter:=' added_1<>0';
    TOraQuery(grid_rp_v.DataController.DataSet).Filtered:=true;
  end;

  try
    grid_rp_v.DataController.DataSet.Open;
      if (n_id > 0) and (id > 0) then
        grid_rp_v.DataController.DataSet.Locate('n_id', n_id, []);
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  End;
  screen.cursor:=crdefault;
end;
//--------------------------------------------------------------------





//
//  Экспорт в Эксель
//
procedure TrepriceForm.spis_m1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_reprice.xls';
     ExportGridToExcel(f, grid_rp, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog14.Execute then
  begin
     ExportGridToExcel(SaveDialog14.FileName, grid_rp, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog14.FileName), nil, nil, SW_RESTORE);
  end;
}
  cb_picsClick(nil);
end;


//
//  Восстанавливаем таблицу
//
procedure TrepriceForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_rp_v.DataController.Filter.Clear;
  j := grid_rp_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_rp_v.SortedItems[0].SortOrder := soNone;
  end;
  cb_picsClick(nil);
end;





procedure TrepriceForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TrepriceForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TrepriceForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;

//
//  Поиск
//
procedure TrepriceForm.search_execute(param: integer);
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


// Применение поиска
procedure TrepriceForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_rp.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_rp_v.DataController.Filter.Clear;
    if (param_ = 1) then
       rp_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 2) then
       rp_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 3) then
       rp_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
       grid_rp_v.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid_rp.SetFocus;
  end;
end;


//
//  Фильтр по типам
//
procedure TrepriceForm.aFilterTypeExecute(Sender: TObject);
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
       grid_rp_v.DataController.Filter.Clear;
       if var_ = 1 then
          rp_f_type.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString)
       else
          rp_F_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_rp_v.DataController.Filter.Active := True;
       grid_rp.SetFocus;
    end;
  end;
end;


procedure TrepriceForm.grid_rp_vDblClick(Sender: TObject);
begin
  if (grid_rp_v.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_rp_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
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

procedure TrepriceForm.grid_rp_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (grid_rp_v.DataController.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_rp_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
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


procedure TrepriceForm.DOCNEW1_DATAAfterPost(DataSet: TDataSet);
begin
  cb_picsClick(nil);
end;

procedure TrepriceForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


// Скопируем значение ячейкт в буфер
procedure TrepriceForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_rp_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TrepriceForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_rp_v.DataController, 0);
end;


// Подгрузка через файл
procedure TrepriceForm.mnRepriceFromFileClick(Sender: TObject);
begin
  UOldPrice.OpenForShowModal;
  grid_rp_v.DataController.DataSet.Refresh;
end;


// Подгрузка со склада
procedure TrepriceForm.mnRepriceFromStoreClick(Sender: TObject);
begin
  with DM.Q_SQL do
  begin
    Close;
    SQL.Text := 'begin store_pkg.sync_price_list_link(:v_id_dep); end;';
    ParamByName('v_id_dep').AsInteger := strtoint(DataM.department_id);
    Execute;
  end;
  EditComments.Text := EditComments.Text + ' Синхронизация цен';
  grid_rp_v.DataController.DataSet.Refresh;
end;

// Подгрузка со склада по выбранным
procedure TrepriceForm.mnRepriceFromStoreSelClick(Sender: TObject);
var i: integer;
begin
  grid_rp_v.DataController.DataSet.DisableControls;
  try
    with DM.Q_SQL do
    begin
      Close;
      SQL.Text := 'insert into TMP_EXP_DOC values(:p1)';
      for i := 0 to grid_rp_v.ViewData.RecordCount-1 do
      begin
        ParamByName('p1').AsInteger := grid_rp_v.ViewData.Records[i].Values[grid_rp_vN_ID.Index];
        Execute;
      end;
    end;

    with DM.Q_SQL do
    begin
      Close;
      SQL.Text := 'begin store_pkg.sync_price_list_link_sel(:v_id_dep); end;';
      ParamByName('v_id_dep').AsInteger := strtoint(DataM.department_id);
      Execute;
    end;
    EditComments.Text := EditComments.Text + ' Синхронизация цен';

    grid_rp_v.DataController.DataSet.Refresh;
  finally
    grid_rp_v.DataController.DataSet.EnableControls;
  end;
end;


procedure TrepriceForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
  cb_picsClick(nil);
end;


end.
