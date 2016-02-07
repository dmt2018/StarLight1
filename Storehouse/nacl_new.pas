unit nacl_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList, DBCtrls,
  ActnList, Mask, Ora, MemDS, ToolWin, GridsEh, Registry,
  DBCtrlsEh, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxBar, dxBarExtItems, cxGridExportLink,
  cxCalc, DBAccess, ShellAPI, PI_Library_reg;

type
  TnaclnewForm = class(TForm)
    Panel_Sklad1: TPanel;
    Panel9: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    ClientChoos: TLabel;
    Image1: TImage;
    Label14: TLabel;
    Special_Prices: TOraQuery;
    Special_PricesID_CLIENTS: TFloatField;
    Special_PricesSPR_DATE: TDateTimeField;
    Special_Prices_DS: TOraDataSource;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    CLIENTS_DS: TOraDataSource;
    CLIENTS: TOraQuery;
    CLIENTSID_CLIENTS: TIntegerField;
    CLIENTSFIO: TStringField;
    CLIENTSNICK: TStringField;
    DocInfo_Panel: TPanel;
    Label9: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    EditComments: TEdit;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel6: TPanel;
    Panel17: TPanel;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton17: TToolButton;
    ToolButton24: TToolButton;
    Panel4: TPanel;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Store_TS_2: TTabSheet;
    Panel10: TPanel;
    AddedCB: TCheckBox;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel7: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    StatusBar: TStatusBar;
    Label1: TLabel;
    Edit_Order_Id: TEdit;
    Action1: TAction;
    Action2: TAction;
    SaveNacl: TAction;
    aAllInserted: TAction;
    Panel12: TPanel;
    Label7: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Panel13: TPanel;
    DBText4: TDBText;
    CLIENTSTTYPE: TIntegerField;
    CLIENTSTYPE_NAME: TStringField;
    CLIENTSDISCOUNT: TFloatField;
    pod_fio: TLabel;
    DBCheckBoxEh1: TDBCheckBoxEh;
    artikul_search: TAction;
    DBText3: TDBText;
    Label4: TLabel;
    DocDate_Label: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    EditPercent: TcxSpinEdit;
    BitBtn1: TcxButton;
    Panel14: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    grid_prod: TcxGrid;
    grid_prod_v: TcxGridDBTableView;
    st_CODE: TcxGridDBColumn;
    st_H_CODE: TcxGridDBColumn;
    st_Hol_type: TcxGridDBColumn;
    st_f_type: TcxGridDBColumn;
    st_F_SUB_TYPE: TcxGridDBColumn;
    st_FULL_NAME: TcxGridDBColumn;
    st_SPESIFICATION: TcxGridDBColumn;
    st_QUANTITY: TcxGridDBColumn;
    st_PRICE_PERCENT: TcxGridDBColumn;
    st_PRICE: TcxGridDBColumn;
    st_QUANTITY_PRICE: TcxGridDBColumn;
    st_COUNTRY: TcxGridDBColumn;
    st_COLOUR: TcxGridDBColumn;
    grid_prod_vN_ID: TcxGridDBColumn;
    grid_prod_vFT_ID: TcxGridDBColumn;
    grid_prod_vFST_ID: TcxGridDBColumn;
    grid_prod_vNBUTTON: TcxGridDBColumn;
    grid_prod_vHOL_SUB_TYPE: TcxGridDBColumn;
    grid_prod_vBUT_NAME: TcxGridDBColumn;
    grid_prod_l: TcxGridLevel;
    st_PRICE_LIST: TcxGridDBColumn;
    st_QUANTITY_NOW: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_priority: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    mbtn_expand: TdxBarButton;
    mbtn_collapse: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    pm_noms: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    aClearFilter: TAction;
    aChangeType: TAction;
    grid_prod_vColumn1: TcxGridDBColumn;
    aArtStep: TAction;
    dxBarStatic5: TdxBarStatic;
    st_warning: TcxStyle;
    dxBarStatic6: TdxBarStatic;
    aNameStep: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    SaveDialog1: TSaveDialog;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    DBEdit_fill: TDBEditEh;
    dxBarStatic9: TdxBarStatic;
    aDelete: TAction;
    st_legend_b: TcxStyle;
    st_S_NAME_RU: TcxGridDBColumn;
    Store_TS_3: TTabSheet;
    Action3: TAction;
    grid_prod_vGTD: TcxGridDBColumn;
    st_small: TcxStyle;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    DOC_DATAID_DOC: TFloatField;
    DOC_DATAN_ID: TFloatField;
    DOC_DATACODE: TStringField;
    DOC_DATAH_CODE: TStringField;
    DOC_DATAF_TYPE: TStringField;
    DOC_DATAF_SUB_TYPE: TStringField;
    DOC_DATAFULL_NAME: TStringField;
    DOC_DATAQUANTITY: TIntegerField;
    DOC_DATAQUANTITY_NOW: TFloatField;
    DOC_DATASTORE_TYPE_NAME: TStringField;
    DOC_DATASTORE_TYPE: TIntegerField;
    DOC_DATAPRICE: TFloatField;
    DOC_DATAPRICE_LIST: TFloatField;
    DOC_DATAQUANTITY_PRICE: TFloatField;
    DOC_DATAPRICE_PERCENT: TFloatField;
    DOC_DATAGTD: TStringField;
    DOC_DATASPESIFICATION: TStringField;
    DOC_DATAS_NAME_RU: TStringField;
    DOC_DATACOMPILED_NAME_OTDEL: TStringField;
    DOC_DATACOLOUR: TStringField;
    DOC_DATACOUNTRY: TStringField;
    DOC_DATANOTUSE: TIntegerField;
    grid_prod_vNOTUSE: TcxGridDBColumn;
    stNotUse: TcxStyle;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    procedure FormShow(Sender: TObject);
    procedure ClientChoosClick(Sender: TObject);
    procedure Store_PCChange(Sender: TObject);
    procedure Filter(Sender: TObject);
    procedure DBGridEhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure AddedCBClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure DBGridEhKeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure SaveNaclExecute(Sender: TObject);
    procedure DOCNEW1_DATAAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPercentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure artikul_searchExecute(Sender: TObject);
    procedure aAllInsertedExecute(Sender: TObject);
    procedure mbtn_expandClick(Sender: TObject);
    procedure mbtn_collapseClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure aChangeTypeExecute(Sender: TObject);
    procedure aArtStepExecute(Sender: TObject);
    procedure grid_prod_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aNameStepExecute(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure grid_prod_vDataControllerFilterChanged(Sender: TObject);
    procedure DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure search_execute(param: integer);
    procedure aDeleteExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure grid_prod_vDblClick(Sender: TObject);
    procedure DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);

  private
    path: string;
    { Private declarations }

  public
    { Public declarations }
    param_: integer;
    id: integer;   //номер документа
    n_id: integer;
    department_index: integer;  //номер отдела
    department_name: string;   //название отдела
    client_id: integer;        //на какого клиента
    order_id: integer; //номер заказа
    str_flower:  string;

    price_znak:  string;
    price_percent: string;
    price_part:integer;
  end;

var
  naclnewForm: TnaclnewForm;

implementation

uses DataM, Client_choos, global, change_prices, Dialog_number,
  oper_select, UChoiseType, UFullInfo;
{$R *.dfm}


//-----инициализация формы---------------------
procedure TnaclnewForm.Initialize();
begin
  if (id <> 0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TnaclnewForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Prodaza_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_prodaz';
  grid_prod_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  dxBarButton1.Down := st_CODE.Visible;
  dxBarButton2.Down := st_H_CODE.Visible;
  dxBarButton3.Down := st_Hol_type.Visible;
  dxBarButton4.Down := st_f_type.Visible;
  dxBarButton5.Down := st_F_SUB_TYPE.Visible;
  dxBarButton6.Down := st_FULL_NAME.Visible;
  dxBarButton7.Down := st_SPESIFICATION.Visible;
  dxBarButton8.Down := st_QUANTITY.Visible;
  dxBarButton9.Down  := st_PRICE_LIST.Visible;
  dxBarButton10.Down := st_PRICE_PERCENT.Visible;
  dxBarButton11.Down := st_PRICE.Visible;
  dxBarButton12.Down := st_COUNTRY.Visible;
  dxBarButton13.Down := st_COLOUR.Visible;
  dxBarButton15.Down := st_QUANTITY_PRICE.Visible;
  dxBarButton16.Down := st_QUANTITY_NOW.Visible;

  price_part                := 0;
  EditPercent.EditValue     := 0;
  str_flower                := '';
  label2.Caption            := str_flower;
  DocDate_Label.Caption     := DataM.GlobalDate_FORMAT;
  Store_PC.ActivePageIndex  := 0;
  StatusBar.Panels[0].Text  := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text  := '  Оператор: '+DataM.Operator_Name;
  screen.cursor             := crhourglass;
  Initialize();
  Filter(Sender);
  screen.cursor             := crdefault;
  Label3.Caption            := department_name +' :: Накладная продажи';
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TnaclnewForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  if grid_prod_v.DataController.DataSet.State = dsEdit then
     grid_prod_v.DataController.DataSet.Post;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Prodaza_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_prodaz';
  grid_prod_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  Action:= caFree;
end;


//
//  Нажимаем CTRL+ENTER
//
procedure TnaclnewForm.DocSave_ActionExecute(Sender: TObject);
begin
 BitBtnSave.Click;
end;


//
//  Нажимаем ENTER на скидке для перерасчета
//
procedure TnaclnewForm.EditPercentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//-----инициализация создания нового ID------------
//
procedure TnaclnewForm.New(id: integer);
begin
  try
    grid_prod_v.DataController.DataSource := DOCNEW1_DATA_DS;
    CLIENTS.Close;
    CLIENTS.ParamByName('ID_CLIENTS').AsInteger := client_id;
    CLIENTS.Open;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;

  if (CLIENTS.FieldByName('DISCOUNT').AsInteger <> 0) then
  begin
    EditPercent.Text := inttostr(ABS(CLIENTS.FieldByName('DISCOUNT').AsInteger));
    BitBtn1.Click;
  end;
end;


//
//-----инициализация просмотра ID------------
//
procedure TnaclnewForm.View(id: integer);
begin
  if (id <> 0) then
  begin
    try
      grid_prod_v.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    EditComments.Enabled  := false;
    client_id             := doc.FieldByName('ID_CLIENT').AsInteger;
    Edit_Order_Id.Text    := doc.FieldByName('Order_Id').AsString;

    grid_prod_v.OptionsData.Editing := false;
    ClientChoos.Visible   := false;
    DocInfo_Panel.Visible := true;
    Panel13.Visible       := false;

    department_name       := doc.FieldByName('department_name').AsString;
    DocDate_Label.Caption := doc.FieldByName('DOC_DATE').AsString;

    Panel10.Visible:=false;
    Panel17.Visible:=false;
    Label2.Visible:=false;
    Panel12.Visible:=false;
    Panel13.Visible:=false;
  end;

  try
    CLIENTS.Close;
    CLIENTS.ParamByName('ID_CLIENTS').AsInteger := client_id;
    CLIENTS.Open;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  End;
end;
//--------------------------------------------


//
//  Кнопка пересчет
//
procedure TnaclnewForm.BitBtn1Click(Sender: TObject);
begin
   DM.OraSession.ExecProc('STORE_PKG.set_price_part', [EditPercent.EditValue]);
   Filter(Sender);
   grid_prod.SetFocus;
end;


//
//Фильтрация--------------------------------------------------------
//
procedure TnaclnewForm.Filter(Sender: TObject);
begin
  screen.cursor := crhourglass;
  grid_prod_v.DataController.DataSet.Close;

  if (Store_PC.ActivePage.Name = 'Store_TS_1') then
      TOraQuery(grid_prod_v.DataController.DataSet).ParamByName('STORE_').AsInteger := 1;
  if (Store_PC.ActivePage.Name = 'Store_TS_2') then
      TOraQuery(grid_prod_v.DataController.DataSet).ParamByName('STORE_').AsInteger := 2;

  if (id = 0) then
  begin
    TOraQuery(grid_prod_v.DataController.DataSet).ParamByName('ID_DEP_').AsInteger := department_index;
    DOCNEW1_DATA.ParamByName('BUTTON_').AsInteger := 0;
    DOCNEW1_DATA.ParamByName('price_part').AsInteger := EditPercent.EditValue {price_part};
    if (Store_PC.ActivePage.Name = 'Store_TS_3') then
      DOCNEW1_DATA.ParamByName('quant_p_').AsInteger := 999
    else
      DOCNEW1_DATA.ParamByName('quant_p_').AsInteger := 0;
  end;

  grid_prod_v.DataController.DataSet.Filter   := '1=1';
  grid_prod_v.DataController.DataSet.Filtered := false;

  if (AddedCB.Checked = true) then
  begin
    grid_prod_v.DataController.DataSet.Filter   := grid_prod_v.DataController.DataSet.Filter + ' and added>0 and QUANTITY<>0 ';
    grid_prod_v.DataController.DataSet.Filtered := true;
  end;

  try
    grid_prod_v.DataController.DataSet.Open;
    grid_prod_v.DataController.Groups.FullExpand;
      if (n_id > 0) and (id > 0) then
        grid_prod_v.DataController.DataSet.Locate('n_id', n_id, []);
  except on E: Exception do
    begin
      screen.cursor := crdefault;
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
  End;

  screen.cursor := crdefault;
end;
//------------------------------------------------------------------------------


//
// Очищаем фильтры
//
procedure TnaclnewForm.aClearFilterExecute(Sender: TObject);
begin
  grid_prod_v.DataController.Filter.Clear;
  grid_prod_v.DataController.DataSet.Filter   := '1=1';
  if (AddedCB.Checked = true) then
  begin
    grid_prod_v.DataController.DataSet.Filter   := grid_prod_v.DataController.DataSet.Filter + ' and added>0 and QUANTITY<>0 ';
    grid_prod_v.DataController.DataSet.Filtered := true;
  end;
end;


//
//  Выводим окно для выбора типа
//
procedure TnaclnewForm.aChangeTypeExecute(Sender: TObject);
var var_: integer;
begin
  if (strtoint(DataM.department_id) = 61) then var_ := 2 else var_ := 1;

  if (Panel_fill.Visible = false) then
  begin
    frm_choise_type := Tfrm_choise_type.Create(Application);
    try
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := strtoint(DataM.department_id);
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := var_;
      frm_choise_type.Q_FLOWER_TYPE.Open;
      if frm_choise_type.ShowModal = mrOk then
      begin
       grid_prod_v.DataController.Filter.Clear;
       if var_ = 1 then
          st_f_type.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString)
       else
          st_F_SUB_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_prod_v.DataController.Filter.Active := True;
       grid_prod.SetFocus;
      end;
    finally
      frm_choise_type.Free;
    end;
  end;
{
  try
    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(department_id);
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid_prod_vNBUTTON.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPENBUTTON.AsString);
       grid_prod_v.DataController.Filter.Active := True;
       grid_prod_v.DataController.Groups.FullExpand;
    end;
  finally
    frm_choise_type.Free;
  end;
}  
end;


//
//  После записи обнуляем параметры
//
procedure TnaclnewForm.DOCNEW1_DATAAfterPost(DataSet: TDataSet);
begin
  str_flower := '';
  label2.Caption := str_flower;
  if (department_index <> 62) then
    st_H_CODE.Focused := true
  else
    st_FULL_NAME.Focused := true;
  DOCNEW1_DATA.RefreshRecord;
end;


procedure TnaclnewForm.DOCNEW1_DATABeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
// Обнуляем строку поиска по названию
//
procedure TnaclnewForm.DBGridEhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strflower: string;
  i1, i2: integer;
begin
  if (id = 0) and (grid_prod_v.ViewData.FilterRow.Focused = false) then
  begin
    if (Key = VK_CONTROL) {or (Key = VK_CANCEL)} then
    begin
      str_flower := '';
      label2.Caption := str_flower;
    end;

    if (Key = VK_BACK) then
    begin
      i1:=0;
      i2:=Length(str_flower)-1;
      strflower:=Copy(str_flower,i1,i2);

      str_flower := strflower;
      label2.Caption := str_flower;
    end;
  end;
end;


//
//  По F5 смотрим только добавленные
//
procedure TnaclnewForm.aAllInsertedExecute(Sender: TObject);
begin
  if AddedCB.Checked = false then AddedCB.Checked := true else AddedCB.Checked := false;
end;


//
//  Просмотр только добавленных
//
procedure TnaclnewForm.AddedCBClick(Sender: TObject);
begin
  Filter(Sender);
end;


//
//  При смене склада применяем фильтр
//
procedure TnaclnewForm.Store_PCChange(Sender: TObject);
begin
  Filter(Sender);
end;


//
//  По CTRL+1 - основной склад
//
procedure TnaclnewForm.Action1Execute(Sender: TObject);
begin
  Store_PC.TabIndex := 0;
  Store_PCChange(Sender);
end;


//
//  По CTRL+2 - склад уценки
//
procedure TnaclnewForm.Action2Execute(Sender: TObject);
begin
  Store_PC.TabIndex := 1;
  Store_PCChange(Sender);
end;


//
//  По CTRL+3 - склад 0-ых позиций
//
procedure TnaclnewForm.Action3Execute(Sender: TObject);
begin
  Store_PC.TabIndex := 2;
  Store_PCChange(Sender);
end;


//
//  Быстрый поиск по складу в названии
//
procedure TnaclnewForm.DBGridEhKeyPress(Sender: TObject; var Key: Char);
begin
  if (id = 0) and (grid_prod_v.ViewData.FilterRow.Focused = false) then
  begin
    if ( DBCheckBoxEh1.Checked = true ) then
    begin
       st_H_CODE.Focused := true;
       str_flower := str_flower + Key;
       DOCNEW1_DATA.Locate('H_CODE', str_flower, [loCaseInsensitive, loPartialKey]);
    end
    else
    begin
      if ((Key in ['0'..'9']) or (Key = '-')) and (grid_prod_v.DataController.DataSet.State = dsBrowse) {DBGridEh.FieldColumns['QUANTITY'].Field.IsIndexField = false }  then
      begin
        st_QUANTITY.Focused := true;
      end;

      if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') or (Key in ['а'..'я']) or (Key in ['А'..'Я']) then
      begin
        st_FULL_NAME.Focused := true;
        str_flower := str_flower + Key;
        DOCNEW1_DATA.Locate('FULL_NAME', str_flower, [loCaseInsensitive, loPartialKey]);
      end;
    end;
    label2.Caption := str_flower;
  end;
end;


//
//  По F6 переключам поиск на артикул
//
procedure TnaclnewForm.artikul_searchExecute(Sender: TObject);
begin
  if (DBCheckBoxEh1.Checked) then DBCheckBoxEh1.Checked := false else DBCheckBoxEh1.Checked := true;
end;


//
//  По F8 записываем накладную
//
procedure TnaclnewForm.SaveNaclExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;


//
//  Выбираем клиента
//
procedure TnaclnewForm.ClientChoosClick(Sender: TObject);
var theForm: TForm;
begin
  try
    //Получаем текущий ID клиента
    client_id :=  CLIENTS.FieldByName('ID_CLIENTS').AsInteger;

    theForm := TClientChoosForm.Create(Application);
    TClientChoosForm(theForm).PanelOrder.Visible  := false;
    //TClientChoosForm(theForm).Panel1.Visible      := false;

    if theForm.ShowModal = mrOK then
    begin
      client_id := TClientChoosForm(theForm).CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
      CLIENTS.Close;
      CLIENTS.ParamByName('ID_CLIENTS').AsInteger :=client_id;
      CLIENTS.Open;
    end;
    theForm.Free;

  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      theForm.Free;
    end;
  End;

end;


//
//  Уценка текущей позиции
//
procedure TnaclnewForm.ToolButton17Click(Sender: TObject);
var theForm: TForm;
    in_QUANTITY, in_n_id, in_OTDEL, in_Percent: integer;
    in_DOC_DATE:      TDatetime;
    in_OPERATOR_NAME: string;
begin
  try
    theForm := TChangePricesForm.Create(Application);
    if theForm.ShowModal = mrOk then
    begin
      in_QUANTITY      := Strtoint(TChangePricesForm(theForm).Number.Text);
      in_Percent       := Strtoint(TChangePricesForm(theForm).EditPercent.Text);
      in_OPERATOR_NAME := DataM.Operator_NAME;

      if (in_Percent >= 99) then
      begin
        MessageBox(Handle, 'Процент уценки не может быть больше 99%!', 'Внимание!', MB_ICONINFORMATION);
        exit;
      end;

      if (in_QUANTITY <> 0) and (in_Percent <> 0) then
      begin
        try
           in_n_id      := grid_prod_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
           in_DOC_DATE  := DataM.GlobalDate;
           in_OTDEL     := StrToInt(DataM.department_id);

           DM.OraSession.ExecProc('STORE_PKG.CHANGE_PRICE', [in_n_id, in_Percent, in_QUANTITY, in_DOC_DATE, in_OTDEL, in_OPERATOR_NAME]) ;
           DOCNEW1_DATA.RefreshRecord;

           if MessageDlg('Уценка прошла успешно! Вы хотите добавить уцененный товар в накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
           begin
              DM.Ora_SQL.SQL.Clear;
              DM.Ora_SQL.SQL.Add('begin STORE_PKG.insert_fast_ucenka(:n_id_, :QUANTITY_); end;');
              DM.Ora_SQL.ParamByName('n_id_').AsInteger := in_n_id;
              DM.Ora_SQL.ParamByName('QUANTITY_').AsInteger := in_QUANTITY;
              DM.Ora_SQL.Execute;
              MessageBox(Handle, 'Товар был выписан со склада уценки!', 'Результат', MB_ICONINFORMATION);
           end;
        except on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
        End;
      end;
    end;
  finally
    theForm.Free;
  end;
end;


//
//  ЛОМ
//
procedure TnaclnewForm.ToolButton1Click(Sender: TObject);
var theForm: TDialog_number_Form;
    in_QUANTITY, in_n_id, in_OTDEL: integer;
    in_DOC_DATE:tDatetime;
begin
  try
    theForm := TDialog_number_Form.Create(Application);
    if theForm.ShowModal = mrOk then
    begin
      in_QUANTITY := Strtoint(TDialog_number_Form(theForm).Number.Text);
      if (in_QUANTITY<>0) then
      begin
        try
         in_n_id      := grid_prod_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
         in_DOC_DATE  := DataM.GlobalDate;
         in_OTDEL     := StrToInt(DataM.department_id);
         DM.OraSession.ExecProc('STORE_PKG.Lom_Add', [in_n_id, in_QUANTITY, in_DOC_DATE, in_OTDEL]) ;
         MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
         DOCNEW1_DATA.RefreshRecord;
        except on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
        End;
      end;
    end;
  finally
    theForm.Free;
  end;
end;


//
//  Разворачиваем
//
procedure TnaclnewForm.mbtn_expandClick(Sender: TObject);
begin
  grid_prod_v.DataController.Groups.FullExpand;
end;


// Скопируем значение ячейкт в буфер
procedure TnaclnewForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_prod_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TnaclnewForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_prod_v.DataController, 0);
end;

//
//  Сворачиваем
//
procedure TnaclnewForm.mbtn_collapseClick(Sender: TObject);
begin
  grid_prod_v.DataController.Groups.FullCollapse;
end;


//
//  Настройка столбцов ---------------------------------------------------------
//
procedure TnaclnewForm.dxBarButton1Click(Sender: TObject);
begin
  st_CODE.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton2Click(Sender: TObject);
begin
  st_H_CODE.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton3Click(Sender: TObject);
begin
  st_Hol_type.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton4Click(Sender: TObject);
begin
  st_f_type.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton5Click(Sender: TObject);
begin
  st_F_SUB_TYPE.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton6Click(Sender: TObject);
begin
  st_FULL_NAME.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton7Click(Sender: TObject);
begin
  st_SPESIFICATION.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton8Click(Sender: TObject);
begin
  st_QUANTITY.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton12Click(Sender: TObject);
begin
  st_COUNTRY.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton13Click(Sender: TObject);
begin
  st_COLOUR.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton9Click(Sender: TObject);
begin
  st_PRICE_PERCENT.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton10Click(Sender: TObject);
begin
  st_PRICE_LIST.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton11Click(Sender: TObject);
begin
  st_QUANTITY_PRICE.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton15Click(Sender: TObject);
begin
  st_PRICE.Visible := TdxBarButton(Sender).Down;
end;

procedure TnaclnewForm.dxBarButton16Click(Sender: TObject);
begin
  st_QUANTITY_NOW.Visible := TdxBarButton(Sender).Down;
end;
// -----------------------------------------------------------------------------


// Красим грид
procedure TnaclnewForm.grid_prod_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  v_q, v_qn : variant;
  res : variant;
begin
  if (grid_prod_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'QUANTITY') then
  begin
    // Красим если отмеченная позиция не совпадает по кол-ву и на складе
    v_q := grid_prod_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_prod_v.GetColumnByFieldName('QUANTITY').Index
                );
    v_qn := grid_prod_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_prod_v.GetColumnByFieldName('QUANTITY_NOW').Index
                );

    if (v_q > v_qn) then
    begin
      ACanvas.Font.Color := st_warning.TextColor;
      ACanvas.Font.Style := st_warning.Font.Style;
    end;
  end;

  res := grid_prod_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_prod_v.GetColumnByFieldName('NOTUSE').Index
         );
	IF (1 = res) then
     ACanvas.Brush.Color := stNotUse.Color;

end;


//
// Поиск по артиклу
//
procedure TnaclnewForm.aArtStepExecute(Sender: TObject);
begin
  search_execute(1);
end;


//
//  Поиск по названию
//
procedure TnaclnewForm.aNameStepExecute(Sender: TObject);
begin
  search_execute(2);
end;


//
//  Поиск
//
procedure TnaclnewForm.search_execute(param: integer);
begin
    param_             := param;
    Panel_fill.Left    := trunc(grid_prod.Width / 2) - 90;
    Panel_fill.Top     := trunc(grid_prod.Height / 2) - 20;
    Panel_fill.Visible := true;
    DBEdit_fill.SetFocus;
end;


//
//  Экспорт в excel
//
procedure TnaclnewForm.dxBarButton19Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_prodazha.xls';
     ExportGridToExcel(f, grid_prod, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_prod, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
}
end;


//
//  При фильтрах перескакиваем на количество
//
procedure TnaclnewForm.grid_prod_vDataControllerFilterChanged(
  Sender: TObject);
begin
  if grid_prod_v.ViewData.RecordCount > 0 then
  begin
    grid_prod_v.DataController.Groups.FullExpand;
    grid_prod_v.ViewData.FilterRow.Focused := false;
    grid_prod_v.ViewData.Rows[1].Focused   := true;
    st_QUANTITY.Focused                    := true;
  end;
end;


procedure TnaclnewForm.grid_prod_vDblClick(Sender: TObject);
begin
  if (grid_prod_v.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_prod_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
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
//  Принимаем фильтр
//
procedure TnaclnewForm.DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_prod.SetFocus;
  end;  

  if (Key = VK_RETURN) then
  begin
    grid_prod_v.DataController.Filter.Clear;
    if (param_ = 1) then
       st_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');
    if (param_ = 2) then
       st_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');
    grid_prod_v.DataController.Filter.Active := True;

    if (AddedCB.Checked = true) then
    begin
      grid_prod_v.DataController.DataSet.Filter   := grid_prod_v.DataController.DataSet.Filter + ' and added>0 and QUANTITY<>0 ';
      grid_prod_v.DataController.DataSet.Filtered := true;
    end;

    Panel_fill.Visible := false;
    DBEdit_fill.Text := '';
    grid_prod.SetFocus;
  end;
end;


//
//  Удаление строки
//
procedure TnaclnewForm.aDeleteExecute(Sender: TObject);
begin
  try
    if (grid_prod_v.DataController.DataSet.FieldByName('quantity').IsNull = false) and (grid_prod_v.DataController.DataSet.FieldByName('quantity').AsInteger > 0) then
    begin
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('delete from STORE_DOC_DATA_TEMP where n_id = :n_id_');
      DM.Ora_SQL.ParamByName('n_id_').AsInteger := grid_prod_v.DataController.DataSet.FieldByName('n_id').AsInteger;
      DM.Ora_SQL.Execute;
      TOraQuery(grid_prod_v.DataController.DataSet).RefreshRecord;
    end;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  End;
end;


//
//  Фильтруем данные
//
procedure TnaclnewForm.CheckBox1Click(Sender: TObject);
begin
  Filter(Sender);
end;


end.
