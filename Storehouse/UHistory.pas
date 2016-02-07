unit UHistory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ActnList, StdCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxButtons, DBCtrls, ComCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, Ora, MemDS, PI_Library_reg,
  cxGridExportLink, ShellAPI;

type
  TfrmHistory = class(TForm)
    Panel11: TPanel;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    DocInfo_Panel: TPanel;
    Label10: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    Panel9: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    Label2: TLabel;
    EditComments: TEdit;
    Label1: TLabel;
    de_date: TcxDateEdit;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    AddedCB: TCheckBox;
    ActionList1: TActionList;
    aFilterClear: TAction;
    grid_hst: TcxGrid;
    grid_hst_v: TcxGridDBTableView;
    rp_ADDED_1: TcxGridDBColumn;
    rp_H_CODE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_f_type: TcxGridDBColumn;
    rp_F_SUB_TYPE: TcxGridDBColumn;
    rp_S_NAME_RU: TcxGridDBColumn;
    rp_SPESIFICATION: TcxGridDBColumn;
    rp_CODE: TcxGridDBColumn;
    rp_QUANTITY: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    rp_PRICE_LIST: TcxGridDBColumn;
    rp_PRICE_DIFFERENCE: TcxGridDBColumn;
    rp_sum_price_difference: TcxGridDBColumn;
    grid_hst_l: TcxGridLevel;
    Btn_Filter: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    st_prihod: TcxStyle;
    st_reprice: TcxStyle;
    st_small: TcxStyle;
    aRefresh: TAction;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    aSetColumns: TAction;
    grid_hst_vN_ID: TcxGridDBColumn;
    grid_hst_vCOUNTRY: TcxGridDBColumn;
    grid_hst_vCOLOUR: TcxGridDBColumn;
    grid_hst_vFST_ID: TcxGridDBColumn;
    grid_hst_vHOL_SUB_TYPE: TcxGridDBColumn;
    grid_hst_vHOL_TYPE: TcxGridDBColumn;
    grid_hst_vFT_ID: TcxGridDBColumn;
    grid_hst_vPRICE_NEW_1: TcxGridDBColumn;
    grid_hst_vSTORE_TYPE: TcxGridDBColumn;
    grid_hst_vQUANTITY_REAL: TcxGridDBColumn;
    grid_hst_vADDED: TcxGridDBColumn;
    rp_QUANTITY_PRICE: TcxGridDBColumn;
    grid_hst_vPRICE_PERCENT: TcxGridDBColumn;
    aAdded: TAction;
    ClientChoos: TLabel;
    Image1: TImage;
    Label4: TLabel;
    aSave: TAction;
    PopupMenu1: TPopupMenu;
    mnExcel: TMenuItem;
    N4: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    DOC_DATAN_ID: TFloatField;
    DOC_DATACOUNTRY: TStringField;
    DOC_DATACOLOUR: TStringField;
    DOC_DATARUS_MARKS: TStringField;
    DOC_DATAFST_ID: TFloatField;
    DOC_DATAHOL_SUB_TYPE: TStringField;
    DOC_DATAHOL_TYPE: TStringField;
    DOC_DATAH_CODE: TStringField;
    DOC_DATAF_TYPE: TStringField;
    DOC_DATAF_SUB_TYPE: TStringField;
    DOC_DATAFT_ID: TFloatField;
    DOC_DATAFULL_NAME: TStringField;
    DOC_DATACODE: TFloatField;
    DOC_DATAS_NAME_RU: TStringField;
    DOC_DATAPRICE: TFloatField;
    DOC_DATAPRICE_NEW_1: TFloatField;
    DOC_DATASTORE_TYPE: TIntegerField;
    DOC_DATAPRICE_LIST: TFloatField;
    DOC_DATAQUANTITY: TIntegerField;
    DOC_DATAQUANTITY_REAL: TFloatField;
    DOC_DATAPRICE_DIFFERENCE: TFloatField;
    DOC_DATASUM_PRICE_DIFFERENCE: TFloatField;
    DOC_DATAADDED_1: TFloatField;
    DOC_DATAADDED: TFloatField;
    DOC_DATAQUANTITY_PRICE: TFloatField;
    DOC_DATAPRICE_PERCENT: TFloatField;
    grid_hst_vNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    procedure aFilterClearExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRefreshExecute(Sender: TObject);
    procedure aSetColumnsExecute(Sender: TObject);
    procedure aAddedExecute(Sender: TObject);
    procedure AddedCBClick(Sender: TObject);
    procedure grid_hst_vCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure do_check;
    procedure grid_hst_vKeyPress(Sender: TObject; var Key: Char);
    procedure DOC_DATABeforePost(DataSet: TDataSet);
    procedure ClientChoosClick(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure grid_hst_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    path: string;
    { Private declarations }
  public
    { Public declarations }
    department_index: integer;
    store_type: integer;
  end;

var
  frmHistory: TfrmHistory;

implementation

uses dataM, client_choos;

{$R *.dfm}

// Очистим фильтр
procedure TfrmHistory.aFilterClearExecute(Sender: TObject);
begin
  grid_hst_v.DataController.Filter.Clear;
  grid_hst.SetFocus;
end;

// Сохраним параметры на закрытие формы
procedure TfrmHistory.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_history_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_pereocenka_list';
//  grid_hst_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

// Настроим окно при открытии
procedure TfrmHistory.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_history_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_pereocenka_list';
//  grid_hst_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;

  screen.cursor := crhourglass;
  aSetColumns.Execute;
  aRefresh.Execute;
  screen.cursor := crdefault;

  //de_date.EditValue := Now();
end;



// Ставим чекбоксы
procedure TfrmHistory.grid_hst_vCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (ACellViewInfo.Item.Name = 'rp_ADDED_1') then
    do_check;
  AHandled := true;
end;


procedure TfrmHistory.grid_hst_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_hst_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_hst_v.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;


procedure TfrmHistory.grid_hst_vKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=' ') then
    do_check;
end;


procedure TfrmHistory.do_check;
var val: integer;
begin
  try
     val := rp_ADDED_1.EditValue;
     grid_hst_v.DataController.DataSet.Edit;
     grid_hst_v.DataController.DataSet.FieldByName('ADDED_1').AsInteger := abs(val - 1);
     grid_hst_v.DataController.DataSet.Post;
     grid_hst_v.ViewData.DataController.GotoNext;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;



// Сохраним
procedure TfrmHistory.aSaveExecute(Sender: TObject);
begin
  if (store_type = 4) and (ClientChoos.Tag > 0) then
    ModalResult := mrOk;
  if (store_type = 2) or (store_type = 3) or (store_type = 6) then
    ModalResult := mrOk;
end;


// Расставим колонки
procedure TfrmHistory.aSetColumnsExecute(Sender: TObject);
begin
  // Продажи
  if (store_type = 4) then
  begin
    rp_PRICE.Caption                := 'Цена продажи';
    rp_PRICE_LIST.Caption           := 'Цена';
    rp_price_difference.Visible     := false;
    rp_sum_price_difference.Visible := false;
    rp_QUANTITY_PRICE.Visible       := true;
    rp_PRICE.Styles.Content         := st_prihod;
    rp_PRICE_LIST.Styles.Content    := st_prihod;
    ClientChoos.Visible             := true;
    Image1.Visible                  := ClientChoos.Visible;
    Label4.Visible                  := ClientChoos.Visible;
  end;
  // Списание
  if (store_type = 2) then
  begin
    rp_PRICE.Caption                := 'Цена';
    rp_PRICE_LIST.Caption           := 'Цена по прайс-листу';
    rp_PRICE_LIST.Visible           := true;
    rp_price_difference.Visible     := false;
    rp_sum_price_difference.Visible := false;
    rp_QUANTITY_PRICE.Visible       := true;
    rp_PRICE.Styles.Content         := st_prihod;
    rp_PRICE_LIST.Styles.Content    := st_prihod;
    ClientChoos.Visible             := false;
    Image1.Visible                  := ClientChoos.Visible;
    Label4.Visible                  := ClientChoos.Visible;
  end;
  // Уценка
  if (store_type = 3) then
  begin
    rp_PRICE.Caption                := 'Новая цена';
    rp_PRICE_LIST.Caption           := 'Цена по прайс-листу';
    rp_PRICE_LIST.Visible           := true;
    rp_price_difference.Visible     := false;
    rp_sum_price_difference.Visible := true;
    rp_sum_price_difference.Caption := 'Сумма уценки';
    rp_QUANTITY_PRICE.Visible       := false;
    rp_PRICE.Styles.Content         := st_prihod;
    rp_PRICE_LIST.Styles.Content    := st_prihod;
    ClientChoos.Visible             := false;
    Image1.Visible                  := ClientChoos.Visible;
    Label4.Visible                  := ClientChoos.Visible;
  end;
  // Переоценка
  if (store_type = 6) then
  begin
    rp_PRICE.Caption                := 'Новая цена';
    rp_PRICE_LIST.Caption           := 'Цена по прайс-листу';
    rp_PRICE_LIST.Visible           := true;
    rp_price_difference.Visible     := true;
    rp_sum_price_difference.Visible := true;
    rp_sum_price_difference.Caption := 'Переоценено на';
    rp_QUANTITY_PRICE.Visible       := true;
    rp_PRICE.Styles.Content         := st_prihod;
    rp_PRICE_LIST.Styles.Content    := st_prihod;
    ClientChoos.Visible             := false;
    Image1.Visible                  := ClientChoos.Visible;
    Label4.Visible                  := ClientChoos.Visible;
  end;
end;

// Укажим клиента
procedure TfrmHistory.ClientChoosClick(Sender: TObject);
var theForm: TForm;
begin
  try
    //Получаем текущий ID клиента
    //client_id :=  CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

    theForm := TClientChoosForm.Create(Application);
    TClientChoosForm(theForm).PanelOrder.Visible  := false;
    //TClientChoosForm(theForm).Panel1.Visible      := false;

    if theForm.ShowModal = mrOK then
    begin
      ClientChoos.Tag := TClientChoosForm(theForm).CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
      label4.Caption := TClientChoosForm(theForm).CLIENTS.FieldByName('NICK').AsString + ' ' + TClientChoosForm(theForm).CLIENTS.FieldByName('FIO').AsString;
    end;
    theForm.Free;

  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      theForm.Free;
    end;
  End;
end;

procedure TfrmHistory.DOC_DATABeforePost(DataSet: TDataSet);
begin
  if (RadioButton1.Checked) then 
    DOC_DATASTORE_TYPE.Value := 1
  else
    DOC_DATASTORE_TYPE.Value := 2;
end;

// Обновим данные
procedure TfrmHistory.aRefreshExecute(Sender: TObject);
begin
  try
      DOC_DATA.Close;
      DOC_DATA.ParamByName('id_dep').Value := department_index;
      DOC_DATA.Open;

      // Если ТОЛЬКО ДОБАВЛЕННЫЕ
      if (AddedCB.Checked=true) then
        aAdded.Execute;

  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;
end;

// Посмотрим только добавленные
procedure TfrmHistory.aAddedExecute(Sender: TObject);
begin
  if (AddedCB.Checked) then AddedCB.Checked := false else AddedCB.Checked := true;
  AddedCBClick(AddedCB);
end;
procedure TfrmHistory.AddedCBClick(Sender: TObject);
begin
  if (not AddedCB.Checked) then
  begin
    grid_hst_v.DataController.Filter.Clear;
    grid_hst_v.DataController.Filter.Active := false;
  end
  else
  begin
    rp_ADDED_1.DataBinding.AddToFilter(nil, foEqual, 1);
    grid_hst_v.DataController.Filter.Active := True;
  end;
end;


procedure TfrmHistory.mnExcelClick(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_uhistory.xls';
     ExportGridToExcel(f, grid_hst, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, grid_hst, True, True, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    grid_hst.SetFocus;
  except
    NULL;
  end;
}
    grid_hst.SetFocus;
end;

// Скопируем значение ячейкт в буфер
procedure TfrmHistory.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_hst_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TfrmHistory.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_hst_v.DataController, 0);
end;


end.
