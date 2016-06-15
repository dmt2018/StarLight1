unit store_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DBGridEh, DB, Ora,
  MemDS, useful_functions, PI_library, Buttons,
  Menus, GridsEh, Registry, frxClass, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxGridExportLink,
  frxExportHTML, frxExportText, frxExportRTF, frxExportXLS, frxExportPDF,
  frxDBSet, DBAccess, ShellAPI, cxCheckBox, cxImage, IniFiles, ActnList,
  cxContainer, dxBar, dxBarExtItems, PI_Library_reg, DateUtils, cxSpinEdit;

type
  TstoreViewForm = class(TForm)
    Panel11: TPanel;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Bevel10: TBevel;
    Store_TS_2: TTabSheet;
    Bevel9: TBevel;
    Panel12: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    Panel13: TPanel;
    STORE_VIEW: TOraQuery;
    STORE_VIEW_DS: TOraDataSource;
    StatusBar: TStatusBar;
    Panel7: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Close_BitBtn: TcxButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    grid_sview: TcxGrid;
    grid_sview_v: TcxGridDBTableView;
    np_OUR_CODE: TcxGridDBColumn;
    np_H_CODE: TcxGridDBColumn;
    np_f_type: TcxGridDBColumn;
    np_F_SUB_TYPE: TcxGridDBColumn;
    np_FULL_NAME: TcxGridDBColumn;
    np_SPESIFICATION: TcxGridDBColumn;
    np_QUANTITY: TcxGridDBColumn;
    np_PRICE: TcxGridDBColumn;
    np_QUANTITY_PRICE: TcxGridDBColumn;
    np_COUNTRY: TcxGridDBColumn;
    grid_sview_l: TcxGridLevel;
    np_reserv: TcxGridDBColumn;
    np_S_NAME_RU: TcxGridDBColumn;
    SaveDialog6: TSaveDialog;
    frxReport1: TfrxReport;
    fr_DB_STORE_VIEW: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxHTMLExport1: TfrxHTMLExport;
    Store_TS_3: TTabSheet;
    Bevel1: TBevel;
    grid_sview_vColumn1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_prihod: TcxStyle;
    st_reprice: TcxStyle;
    st_small: TcxStyle;
    ToolButton4: TToolButton;
    cb_pics: TCheckBox;
    grid_sview_vLEN: TcxGridDBColumn;
    grid_sview_vPACK: TcxGridDBColumn;
    grid_sview_vCOLOUR: TcxGridDBColumn;
    grid_sview_vFT_ID: TcxGridDBColumn;
    grid_sview_vFST_ID: TcxGridDBColumn;
    grid_sview_vC_ID: TcxGridDBColumn;
    grid_sview_vCOL_ID: TcxGridDBColumn;
    grid_sview_vS_ID: TcxGridDBColumn;
    np_IS_PHOTO: TcxGridDBColumn;
    grid_sview_vPHOTO: TcxGridDBColumn;
    np_pics: TcxGridDBColumn;
    np_CODE: TcxGridDBColumn;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    ActionList1: TActionList;
    filter_off: TAction;
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
    grid_sview_vFULL_NAME: TcxGridDBColumn;
    grid_sview_vID_OFFICE: TcxGridDBColumn;
    grid_sview_vBRIEF: TcxGridDBColumn;
    cb_gtd: TCheckBox;
    grid_sview_vGTD: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    mnExcel: TMenuItem;
    N4: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    STORE_VIEWN_ID: TFloatField;
    STORE_VIEWFULL_NAME: TStringField;
    STORE_VIEWF_TYPE: TStringField;
    STORE_VIEWF_SUB_TYPE: TStringField;
    STORE_VIEWCODE: TStringField;
    STORE_VIEWH_CODE: TStringField;
    STORE_VIEWLEN: TIntegerField;
    STORE_VIEWPACK: TIntegerField;
    STORE_VIEWCOLOUR: TStringField;
    STORE_VIEWCOUNTRY: TStringField;
    STORE_VIEWQUANTITY: TFloatField;
    STORE_VIEWPRICE: TFloatField;
    STORE_VIEWFT_ID: TFloatField;
    STORE_VIEWFST_ID: TFloatField;
    STORE_VIEWC_ID: TFloatField;
    STORE_VIEWCOL_ID: TFloatField;
    STORE_VIEWS_ID: TFloatField;
    STORE_VIEWQUANTITY_PRICE: TFloatField;
    STORE_VIEWRESERV: TFloatField;
    STORE_VIEWSPESIFICATION: TStringField;
    STORE_VIEWS_NAME_RU: TStringField;
    STORE_VIEWIS_PHOTO: TFloatField;
    STORE_VIEWPHOTO: TStringField;
    STORE_VIEWOUR_CODE: TStringField;
    STORE_VIEWCOMPILED_NAME_OTDEL: TStringField;
    STORE_VIEWID_OFFICE: TIntegerField;
    STORE_VIEWBRIEF: TStringField;
    STORE_VIEWGTD: TStringField;
    aShowReserv: TAction;
    mnShowReserv: TMenuItem;
    N2: TMenuItem;
    STORE_VIEWNOTUSE: TIntegerField;
    grid_sview_vNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    STORE_VIEWPICS: TStringField;
    procedure FormCreate(Sender: TObject);

    procedure Store_FilterOn();
    procedure Store_PCChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure cb_picsClick(Sender: TObject);
    procedure grid_sview_vDataControllerFilterChanged(Sender: TObject);
    procedure grid_sview_vDblClick(Sender: TObject);
    procedure grid_sview_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure filter_offExecute(Sender: TObject);
    procedure aFilterTypeExecute(Sender: TObject);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure search_execute(param: integer);
    procedure STORE_VIEWBeforeOpen(DataSet: TDataSet);
    procedure cb_gtdClick(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure aShowReservExecute(Sender: TObject);
    procedure grid_sview_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure STORE_VIEW_DSDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    path: string;
    param_: integer;
  public
    { Public declarations }
  end;

var
  storeViewForm: TstoreViewForm;
  Storeview_SQL_beg : string;

implementation

uses global_date, global, dataM, oper_select, UFullInfo, UChoiseType,
  UReservInfo;



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


procedure TstoreViewForm.grid_sview_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_sview_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_sview_v.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;



procedure TstoreViewForm.grid_sview_vDataControllerFilterChanged(
  Sender: TObject);
begin
  if cb_pics.Checked = true then
     LoadPictures(grid_sview_v.DataController, grid_sview_vPHOTO.Index, np_pics.Index);
end;




procedure TstoreViewForm.grid_sview_vDblClick(Sender: TObject);
begin
  if (STORE_VIEW.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := STORE_VIEWN_ID.AsInteger;
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

procedure TstoreViewForm.grid_sview_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (STORE_VIEW.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := STORE_VIEWN_ID.AsInteger;
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


//
//  Создаем форму
//
procedure TstoreViewForm.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+ DataM.Operator_Name;
  Label1.Caption           := DataM.department_name +' :: Просмотр остатков на складе';
  screen.cursor := crhourglass;

  //Активизируем страницу склада-----------------------
  Store_PC.ActivePageIndex := 0;
  Store_FilterOn();
  //--------------------------------------------------

  screen.cursor := crdefault;
end;


//Фильтрация склада--------------------------------------------------------
procedure TstoreViewForm.Store_FilterOn();
begin
  try
    screen.cursor := crhourglass;

    STORE_VIEW.Close;
    STORE_VIEW.ParamByName('ID_DEPARTMENTS_').AsInteger := strtoint(DataM.department_id);

    if (Store_PC.ActivePage.Name='Store_TS_1') then
      STORE_VIEW.ParamByName('STORE_TYPE_').AsInteger := 1;
    if (Store_PC.ActivePage.Name='Store_TS_2') then
      STORE_VIEW.ParamByName('STORE_TYPE_').AsInteger := 2;
    if (Store_PC.ActivePage.Name='Store_TS_3') then
      STORE_VIEW.ParamByName('STORE_TYPE_').AsInteger := 0;
{
    if cb_gtd.Checked then
      STORE_VIEW.ParamByName('v_gtd').AsInteger := 1
    else
      STORE_VIEW.ParamByName('v_gtd').AsInteger := 0;
}
    STORE_VIEW.Open;
    if cb_pics.Checked = true then
       LoadPictures(grid_sview_v.DataController, grid_sview_vPHOTO.Index, np_pics.Index);
  except on E: Exception do
  begin
    screen.cursor := crdefault;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  End;
  screen.cursor := crdefault;
end;
//------------------------------------------------------------------------------


procedure TstoreViewForm.Store_PCChange(Sender: TObject);
begin
  Store_FilterOn();
end;


procedure TstoreViewForm.STORE_VIEWBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

procedure TstoreViewForm.STORE_VIEW_DSDataChange(Sender: TObject;
  Field: TField);
begin

end;

//
//  Открытие формы
//
procedure TstoreViewForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  RegIni : TIniFile;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Store_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_ostatki';
  grid_sview_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  RegIni := TIniFile.Create(path+'store.ini');
  def_folder := RegIni.ReadString('folder', 'Value', '..');

  cb_pics.Checked     := false;
  np_IS_PHOTO.Visible := not cb_pics.Checked;
  np_pics.Visible     := cb_pics.Checked;

  grid_sview_vBRIEF.Visible := not (GetOfficeID = DM.id_office);
  grid_sview_vGTD.Visible   := cb_gtd.Checked;

  ToolButton15.Enabled := DataM.Operator_print;
  ToolButton1.Enabled := DataM.Operator_print;
end;



//
//  Печать
//
procedure TstoreViewForm.ToolButton15Click(Sender: TObject);
var Memo1: TfrxMemoView;
    i: integer;
begin
  if (STORE_VIEW.RecordCount<>0) then
    try
      MakeSortForPrint(STORE_VIEW,grid_sview_v);
      grid_sview_v.DataController.DataSet.DisableControls;


{
  if cb_pics.EditValue = true then
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceRepPics.fr3', 'QUANTITY > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRepPics_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end
  else
  begin
    if beWithGroup.EditValue = true then
    begin
      print_price(StartDir + '/Reps/PriceRep.fr3', 'QUANTITY > 0');
    end
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRep_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end;
}

      if cb_pics.Checked then
      begin
        frxReport1.LoadFromFile(path+'raports\store_list_pic.fr3');
      end
      else
      begin
        frxReport1.LoadFromFile(path+'raports\store_list.fr3');
      end;
        frxReport1.PrepareReport;
        Memo1 := frxReport1.FindObject('Memo3') as TfrxMemoView;
        Memo1.Text := DataM.department_name;

        Memo1 := frxReport1.FindObject('Memo2') as TfrxMemoView;
        Memo1.Text := DM.title_name;

      frxReport1.ShowReport;
      grid_sview_v.DataController.DataSet.EnableControls;
      if cb_pics.Checked = true then
         LoadPictures(grid_sview_v.DataController, grid_sview_vPHOTO.Index, np_pics.Index);
    except
        on E: Exception
          do begin
            ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
            grid_sview_v.DataController.DataSet.DisableControls;
          end;
    End;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TstoreViewForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Store_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_ostatki';
  grid_sview_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


procedure TstoreViewForm.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  Восстанавливаем таблицу
//
procedure TstoreViewForm.ToolButton3Click(Sender: TObject);
var i, j: integer;
begin
  grid_sview_v.DataController.Filter.Clear;
  j := grid_sview_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_sview_v.SortedItems[0].SortOrder := soNone;
  end;
end;


//
//  Экспорт в Эксель
//
procedure TstoreViewForm.ToolButton1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_view.xls';
     ExportGridToExcel(f, grid_sview, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog6.Execute then
  begin
     ExportGridToExcel(SaveDialog6.FileName, grid_sview, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog6.FileName), nil, nil, SW_RESTORE);
  end;
}
end;



procedure TstoreViewForm.cb_gtdClick(Sender: TObject);
begin
  grid_sview_vGTD.Visible := cb_gtd.Checked;
end;

procedure TstoreViewForm.cb_picsClick(Sender: TObject);
begin
  np_IS_PHOTO.Visible := not cb_pics.Checked;
  np_pics.Visible     := cb_pics.Checked;

  if cb_pics.Checked = true then
     LoadPictures(grid_sview_v.DataController, grid_sview_vPHOTO.Index, np_pics.Index);
  grid_sview.SetFocus;
end;



procedure TstoreViewForm.filter_offExecute(Sender: TObject);
begin
  grid_sview_v.DataController.Filter.Clear;
  grid_sview.SetFocus;
end;


procedure TstoreViewForm.aFilterTypeExecute(Sender: TObject);
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
       grid_sview_v.DataController.Filter.Clear;
       if var_ = 1 then
          np_f_type.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString)
       else
          np_F_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_sview_v.DataController.Filter.Active := True;
       grid_sview.SetFocus;
    end;
  end;
end;


procedure TstoreViewForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TstoreViewForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TstoreViewForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;


procedure TstoreViewForm.aShowReservExecute(Sender: TObject);
var grid: TDataSet;
begin
  grid := STORE_VIEW;
  if not grid.Active or grid.IsEmpty or (grid.FieldByName('reserv').AsInteger < 1) then exit;
  OpenFormForShow(grid.FieldByName('n_id').AsInteger, grid.FieldByName('COMPILED_NAME_OTDEL').AsString);
end;

//
//  Поиск
//
procedure TstoreViewForm.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(grid_sview.Width / 2) - 90;
    Panel_fill.Top     := trunc(grid_sview.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;


procedure TstoreViewForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_sview.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_sview_v.DataController.Filter.Clear;
    if (param_ = 1) then
       np_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 2) then
       np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 3) then
       np_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    grid_sview_v.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid_sview.SetFocus;
  end;
end;



procedure TstoreViewForm.mnExcelClick(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_view.xls';
     ExportGridToExcel(f, grid_sview, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, grid_sview, True, True, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    grid_sview.SetFocus;
  except
    NULL;
  end;
}
  grid_sview.SetFocus;
end;

// Скопируем значение ячейкт в буфер
procedure TstoreViewForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sview_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TstoreViewForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_sview_v.DataController, 0);
end;



end.
