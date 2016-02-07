unit prihod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DB, Ora, MemDS, ActnList, GridsEh, Registry,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, Menus,
  cxLookAndFeelPainters, cxButtons, cxGridExportLink, DBAccess, ShellApi,
  cxContainer, dxBar, dxBarExtItems, PI_Library_reg, cxSpinEdit;

type
  TprihodForm = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    DocInfo_Panel: TPanel;
    Label10: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit_Inv_Id: TEdit;
    EditComments: TEdit;
    Panel6: TPanel;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel8: TPanel;
    StatusBar: TStatusBar;
    BitBtn1: TBitBtn;
    a_f10: TAction;
    grid_np: TcxGrid;
    grid_npView1: TcxGridDBTableView;
    np_SPESIFICATION: TcxGridDBColumn;
    np_H_CODE: TcxGridDBColumn;
    np_CODE: TcxGridDBColumn;
    np_QUANTITY: TcxGridDBColumn;
    np_PRICE: TcxGridDBColumn;
    np_QUANTITY_PRICE: TcxGridDBColumn;
    np_gtd: TcxGridDBColumn;
    np_FULL_NAME: TcxGridDBColumn;
    np_F_SUB_TYPE: TcxGridDBColumn;
    np_f_type: TcxGridDBColumn;
    grid_np_Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    st_new: TcxStyle;
    st_new2: TcxStyle;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog5: TSaveDialog;
    np_S_NAME_RU: TcxGridDBColumn;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
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
    st_nullprice: TcxStyle;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    np_our_code: TcxGridDBColumn;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    grid_npView1NOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure docAfterOpen(DataSet: TDataSet);
    procedure DocSave_ActionExecute(Sender: TObject);

    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);

    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure grid_npView1DblClick(Sender: TObject);
    procedure grid_npView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_npView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);

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
  prihodForm: TprihodForm;

implementation
uses invchooser, dataM, global, oper_select, UFullInfo;

{$R *.dfm}


//-----инициализация формы---------------------
procedure TprihodForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TprihodForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_npView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  DocDate_Label.Caption     := DataM.GlobalDate_FORMAT;
  StatusBar.Panels[0].Text  := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text  := '  Оператор: '+DataM.Operator_Name;

  screen.cursor             := crhourglass;
  Initialize();
  screen.cursor             := crdefault;
  Label3.Caption            := department_name +' :: Накладная прихода';
end;



//-----инициализация создания нового ID------------
procedure TprihodForm.New(id: integer);
begin
    try
      DOCNEW1_DATA.Close;
      DOCNEW1_DATA.ParamByName('ID_DEPARTMENTS').Value := department_index;
      grid_npView1.DataController.DataSource := DOCNEW1_DATA_DS;
      DOCNEW1_DATA.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
end;


//-----инициализация просмотра ID------------
procedure TprihodForm.View(id: integer);
begin
  if (id<>0) then
  begin
    try
      grid_npView1.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger :=id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    Edit_Inv_Id.Text      := doc.FieldByName('Inv_Id').AsString;
    EditComments.Enabled  := false;
    DocInfo_Panel.Visible := true;
    department_name       := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption := doc.FieldByName('DOC_DATE').AsString;
  end;
end;
//--------------------------------------------


//
//  CTRL+ENTER запись
//
procedure TprihodForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;


//
// Применяем фильтр
//
procedure TprihodForm.BitBtn1Click(Sender: TObject);
begin
    grid_npView1.DataController.Filter.Clear;
    grid_np.SetFocus;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TprihodForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin

  if (grid_npView1.ViewData.RecordCount = 0) and (ModalResult = mrOK) then
  begin
     MessageBox(Handle, 'Нет данных для приходования', 'Ошибка!', MB_ICONERROR);
     Action := caNone;
     exit;
  end;

  if grid_npView1.DataController.DataSet.Locate('price',0,[]) and (ModalResult = mrOk) then
  begin
     MessageBox(Handle, 'Нельзя приходовать на склад товар с 0-й ценой!', 'Ошибка!', MB_ICONERROR);
     Action := caNone;
     exit;
  end;

  if grid_npView1.DataController.DataSet.Locate('notuse',1,[]) and (ModalResult = mrOk) then
  begin
     MessageBox(Handle, 'Нельзя приходовать на склад товар с неиспользуемой номенклатурой!', 'Ошибка!', MB_ICONERROR);
     Action := caNone;
     exit;
  end;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_npView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


procedure TprihodForm.docAfterOpen(DataSet: TDataSet);
begin
  try
    DOC_DATA.Close;
    DOC_DATA.Open;
    if (n_id > 0) and (id > 0) then
        DOC_DATA.Locate('n_id', n_id, []);
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;                      
end;


//
//  Экспорт в Эксель
//
procedure TprihodForm.spis_m1Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_prihod.xls';
     ExportGridToExcel(f, grid_np, True, True, true, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog5.Execute then
  begin
     ExportGridToExcel(SaveDialog5.FileName, grid_np, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog5.FileName), nil, nil, SW_RESTORE);
  end;
}
end;


//
//  Восстанавливаем таблицу
//
procedure TprihodForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_npView1.DataController.Filter.Clear;
  j := grid_npView1.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_npView1.SortedItems[0].SortOrder := soNone;
  end;
end;


procedure TprihodForm.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;

procedure TprihodForm.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;

procedure TprihodForm.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;


//
//  Поиск
//
procedure TprihodForm.search_execute(param: integer);
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


procedure TprihodForm.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_np.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_npView1.DataController.Filter.Clear;
    if (param_ = 1) then
       np_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 2) then
       np_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    if (param_ = 3) then
       np_CODE.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%', VarToStr(te_search.EditValue));
    grid_npView1.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid_np.SetFocus;
  end;
end;



procedure TprihodForm.grid_npView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  Col, res : Variant;
begin
  if (not AViewInfo.Selected) and (grid_npView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'PRICE') then
  begin
      Col := grid_npView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_npView1.GetColumnByFieldName('PRICE').Index
                  );
      if (Col = 0) then
          ACanvas.Brush.Color := st_nullprice.Color;
  end;

  res := grid_npView1.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_npView1.GetColumnByFieldName('NOTUSE').Index
         );
	IF (1 = res) then
     ACanvas.Brush.Color := stNotUse.Color;

end;



procedure TprihodForm.grid_npView1DblClick(Sender: TObject);
begin
  if (grid_npView1.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_npView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
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

procedure TprihodForm.grid_npView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (grid_npView1.DataController.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_npView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
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


// Скопируем значение ячейкт в буфер
procedure TprihodForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_npView1.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TprihodForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_npView1.DataController, 0);
end;

end.
