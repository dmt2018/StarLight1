unit buttons_for;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, Buttons, ToolWin, ComCtrls,
  DB, MemDS, DBAccess, Ora, PI_Library,
  Menus, ActnList, cxGraphics, cxCustomData, cxStyles, cxTL, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxInplaceContainer, cxTLData, cxDBTL,
  cxTextEdit, cxContainer, cxCheckBox, IniFiles, cxCurrencyEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLookAndFeelPainters, cxButtons, cxShellBrowserDialog, cxPC, cxDBEdit;

type
  Tfrm_buttons = class(TForm)
    fst_view_ds: TDataSource;
    fst_view: TOraQuery;
    but_view: TOraQuery;
    but_view_ds: TDataSource;
    but_viewNN: TFloatField;
    but_viewFST_ID: TFloatField;
    but_viewF_SUB_TYPE: TStringField;
    but_viewHOL_SUB_TYPE: TStringField;
    but_viewFT_ID: TFloatField;
    but_viewF_TYPE: TStringField;
    but_viewHT_ID: TFloatField;
    but_viewHOL_TYPE: TStringField;
    but_viewID_DEPARTMENTS: TFloatField;
    ActionList1: TActionList;
    move_left: TAction;
    full_expand: TAction;
    full_inpand: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    but_viewF_CHAR: TStringField;
    but_viewID_DEP: TIntegerField;
    but_viewNBUTTON: TIntegerField;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    fst_viewNN: TFloatField;
    fst_viewFST_ID: TFloatField;
    fst_viewF_SUB_TYPE: TStringField;
    fst_viewHOL_SUB_TYPE: TStringField;
    fst_viewFT_ID: TFloatField;
    fst_viewF_TYPE: TStringField;
    fst_viewHT_ID: TFloatField;
    fst_viewHOL_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewNBUTTON: TStringField;
    CDS_CLIENTS: TOraQuery;
    CDS_CLIENTSID_CLIENTS: TIntegerField;
    CDS_CLIENTSNICK: TStringField;
    CDS_CLIENTSFIO: TStringField;
    DS_CLIENTS: TOraDataSource;
    Panel4: TPanel;
    btnClose: TcxButton;
    cxShellBrowserDlgOrder: TcxShellBrowserDialog;
    pcMain: TcxPageControl;
    tshButtons: TcxTabSheet;
    tshSettings: TcxTabSheet;
    pnlBottom: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    fntLabel: TLabel;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label7: TLabel;
    lcbStok: TcxLookupComboBox;
    edDays: TcxCurrencyEdit;
    edClient: TcxTextEdit;
    cbFont: TcxComboBox;
    edClientFile: TcxTextEdit;
    chbFilter: TcxCheckBox;
    defPath: TcxTextEdit;
    btnSetDir: TcxButton;
    rgOrders: TRadioGroup;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    DBComboBoxEh2: TDBComboBoxEh;
    chBoxNotSelected: TcxCheckBox;
    Panel3: TPanel;
    Splitter1: TSplitter;
    grid_but: TcxGrid;
    grid_butView1: TcxGridDBTableView;
    fbtn_F_TYPE: TcxGridDBColumn;
    fbtn_F_SUB_TYPE: TcxGridDBColumn;
    fbtn_F_CHAR: TcxGridDBColumn;
    fbtn_NBUTTON: TcxGridDBColumn;
    grid_butView1HOL_SUB_TYPE: TcxGridDBColumn;
    grid_butView1FT_ID: TcxGridDBColumn;
    grid_butView1HT_ID: TcxGridDBColumn;
    grid_butView1HOL_TYPE: TcxGridDBColumn;
    grid_butView1ID_DEPARTMENTS: TcxGridDBColumn;
    grid_butView1ID_DEP: TcxGridDBColumn;
    grid_butView1NN: TcxGridDBColumn;
    grid_butView1FST_ID: TcxGridDBColumn;
    grid_butLevel1: TcxGridLevel;
    Grid_types: TcxGrid;
    Grid_typesView1: TcxGridDBTableView;
    fst_F_TYPE: TcxGridDBColumn;
    fst_F_SUB_TYPE: TcxGridDBColumn;
    fst_HOL_SUB_TYPE: TcxGridDBColumn;
    fst_NBUTTON: TcxGridDBColumn;
    fst_FT_ID: TcxGridDBColumn;
    fst_HT_ID: TcxGridDBColumn;
    fst_HOL_TYPE: TcxGridDBColumn;
    fst_ID_DEPARTMENTS: TcxGridDBColumn;
    fst_NN: TcxGridDBColumn;
    fst_FST_ID: TcxGridDBColumn;
    Grid_typesLevel1: TcxGridLevel;
    edit_panel: TPanel;
    SpeedButton3: TSpeedButton;
    DBEditEh1: TDBEditEh;
    cxCheckBox1: TcxCheckBox;
    chbSortByNick: TcxCheckBox;
    edClient2: TcxTextEdit;
    tshMapping: TcxTabSheet;
    Panel2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    grOldClients: TcxGrid;
    grOldClientsV: TcxGridDBTableView;
    grOldClientsL: TcxGridLevel;
    edOldClient: TcxTextEdit;
    btnAddClient: TcxButton;
    cdsOldClients: TOraQuery;
    dsOldClients: TDataSource;
    cdsOldClientsOLD_CLIENT: TStringField;
    cdsOldClientsID_CLIENT: TFloatField;
    grOldClientsVOLD_CLIENT: TcxGridDBColumn;
    grOldClientsVID_CLIENT: TcxGridDBColumn;
    cbNewClient: TcxLookupComboBox;
    cxButton1: TcxButton;
    cdsOldClientsNICK: TStringField;
    grOldClientsVNICK: TcxGridDBColumn;
    chbHideCargoMoving: TcxCheckBox;
    chbNewOrder: TcxCheckBox;
    lcb_supplier: TcxLookupComboBox;
    Label10: TLabel;
    Bevel3: TBevel;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    DS_SUPPLIER: TOraDataSource;
    chbFilterByRus: TcxCheckBox;
    chbFilterByDobor: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure DBComboBoxEh2Change(Sender: TObject);
    procedure full_expandExecute(Sender: TObject);
    procedure full_inpandExecute(Sender: TObject);
    procedure move_leftExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEditEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N7Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure Grid_typesView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edDaysPropertiesChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure chBoxNotSelectedClick(Sender: TObject);
    procedure btnSetDirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClientClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    path: string;
  public
    { Public declarations }
  end;

var
  frm_buttons: Tfrm_buttons;

implementation

uses frm_DM, frm_first_dialog;

{$R *.dfm}

//
//  При открытии фомы заполняем справочник отделов
//
procedure Tfrm_buttons.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS_CLIENTS.Close;
  cdsOldClients.Close;
  CDS_SUPPLIER.Close;
end;

procedure Tfrm_buttons.FormCreate(Sender: TObject);
begin
  pcMain.ActivePageIndex := 0;
end;

procedure Tfrm_buttons.FormShow(Sender: TObject);
var RegIni : TIniFile;
    vSTOK, vDAYS, vFont, vDefSort, vSupplier: integer;
    vClient, vClient2, vClientFile, vDefDir: string;
    vFilter, vSortByNick, vHideCargoMoving, vOrderFormat, vFilterByRus, vFilterByDobor: boolean;
begin
  path   := first_dialog_frm.path+'orders.ini';
  RegIni := TIniFile.Create(path);
  try
    vSTOK   := RegIni.ReadInteger('STOK', 'value', 0);
    vDAYS   := RegIni.ReadInteger('DAYS', 'value', 0);
    vClient := RegIni.ReadString('Client', 'value', '');
    vClient2 := RegIni.ReadString('Client2', 'value', '');
    vClientFile := RegIni.ReadString('ClientFile', 'value', '');
    vFont   := RegIni.ReadInteger('Font', 'value', 9);
    vFilter := RegIni.ReadBool('Filter','value', false);
    vDefDir := RegIni.ReadString('iniDir', 'value', 'c:\');
    vDefSort   := RegIni.ReadInteger('defSort', 'value', 0);
    vSortByNick := RegIni.ReadBool('defSortClient','value', false);
    vHideCargoMoving := RegIni.ReadBool('defHideCargoMoving','value', false);
    vOrderFormat := RegIni.ReadBool('defOrderFormat','value', false);
    vSupplier := RegIni.ReadInteger('defSupplier','value', 0);
    vFilterByRus := RegIni.ReadBool('defFilterByRus','value', false);
    vFilterByDobor := RegIni.ReadBool('defFilterByDobor','value', false);
  finally
    RegIni.Free;
  end;


  FillComboEh(DM.Q_SQL, DBComboBoxEh1, 'SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS WHERE STATE = 1 ORDER BY NAME');
  DBComboBoxEh1.ItemIndex := DBComboBoxEh1.KeyItems.IndexOf(IntToStr(DM.DeptID));

  CDS_CLIENTS.Open;
  cdsOldClients.Open;
  CDS_SUPPLIER.Open;
  edDays.Properties.OnChange       := nil;
  lcbStok.Properties.OnChange      := nil;
  edClient.Properties.OnChange     := nil;
  edClient2.Properties.OnChange    := nil;
  edClientFile.Properties.OnChange := nil;
  defPath.Properties.OnChange      := nil;
  cbFont.Properties.OnChange       := nil;
  rgOrders.OnClick                 := nil;
  chbFilter.Properties.OnChange    := nil;
  chbSortByNick.Properties.OnChange      := nil;
  chbHideCargoMoving.Properties.OnChange := nil;
  chbNewOrder.Properties.OnChange        := nil;
  lcb_supplier.Properties.OnChange       := nil;
  chbFilterByRus.Properties.OnChange     := nil;
  chbFilterByDobor.Properties.OnChange   := nil;

  edDays.EditValue        := vDAYS;
  lcbStok.EditValue       := vSTOK;
  edClient.EditValue      := vClient;
  edClient2.EditValue     := vClient2;
  edClientFile.EditValue  := vClientFile;
  cbFont.EditValue    := vFont;
  chbFilter.EditValue := vFilter;
  defPath.EditValue := vDefDir;
  rgOrders.ItemIndex := vDefSort;
  chbSortByNick.EditValue := vSortByNick;
  chbHideCargoMoving.EditValue := vHideCargoMoving;
  chbNewOrder.EditValue := vOrderFormat;
  if vSupplier > 0 then lcb_supplier.EditValue := vSupplier else lcb_supplier.ItemIndex := 0;
  chbFilterByRus.EditValue     := vFilterByRus;
  chbFilterByDobor.EditValue   := vFilterByDobor;

  edDays.Properties.OnChange          := edDaysPropertiesChange;
  lcbStok.Properties.OnChange         := edDaysPropertiesChange;
  edClient.Properties.OnChange        := edDaysPropertiesChange;
  edClient2.Properties.OnChange       := edDaysPropertiesChange;
  edClientFile.Properties.OnChange    := edDaysPropertiesChange;
  cbFont.Properties.OnChange          := edDaysPropertiesChange;
  defPath.Properties.OnChange         := edDaysPropertiesChange;
  rgOrders.OnClick                    := edDaysPropertiesChange;
  chbFilter.Properties.OnChange       := edDaysPropertiesChange;
  chbSortByNick.Properties.OnChange   := edDaysPropertiesChange;
  chbHideCargoMoving.Properties.OnChange := edDaysPropertiesChange;
  chbNewOrder.Properties.OnChange     := edDaysPropertiesChange;
  lcb_supplier.Properties.OnChange    := edDaysPropertiesChange;
  chbFilterByRus.Properties.OnChange  := edDaysPropertiesChange;
  chbFilterByDobor.Properties.OnChange  := edDaysPropertiesChange;

  if (DM.DeptID > 0 ) then
  begin
    fst_view.Close;
    fst_view.ParamByName('P1').AsInteger := DM.DeptID;
    fst_view.Open;
    Grid_types.SetFocus;
    DBComboBoxEh1.OnChange := DBComboBoxEh1Change;
  end;
end;


procedure Tfrm_buttons.edDaysPropertiesChange(Sender: TObject);
var RegIni : TIniFile;
begin
  RegIni := TIniFile.Create(path);
  try
    lcbStok.PostEditValue;
    edDays.PostEditValue;
    edClient.PostEditValue;
    edClient2.PostEditValue;
    edClientFile.PostEditValue;
    defPath.PostEditValue;
    chbFilterByRus.PostEditValue;
    chbFilterByDobor.PostEditValue;

    RegIni.WriteInteger('STOK', 'value', lcbStok.EditValue);
    RegIni.WriteInteger('DAYS', 'value', edDays.EditValue);
    RegIni.WriteString('Client', 'value', edClient.EditValue);
    RegIni.WriteString('Client2', 'value', edClient2.EditValue);
    RegIni.WriteString('ClientFile', 'value', edClientFile.EditValue);
    RegIni.WriteInteger('Font', 'value', cbFont.EditValue);
    RegIni.WriteBool('Filter', 'value', chbFilter.EditValue);
    RegIni.WriteString('iniDir', 'value', defPath.EditValue);
    RegIni.WriteInteger('defSort', 'value', rgOrders.ItemIndex);
    RegIni.WriteBool('defSortClient', 'value', chbSortByNick.EditValue);
    RegIni.WriteBool('defHideCargoMoving', 'value', chbHideCargoMoving.EditValue);
    RegIni.WriteBool('defOrderFormat', 'value', chbNewOrder.EditValue);
    RegIni.WriteInteger('defSupplier', 'value', lcb_supplier.EditValue);
    RegIni.WriteBool('defFilterByRus', 'value', chbFilterByRus.EditValue);
    RegIni.WriteBool('defFilterByDobor', 'value', chbFilterByDobor.EditValue);

    first_dialog_frm.uFont := cbFont.EditValue;
  finally
    RegIni.Free;
  end;
end;


//
//  При смене отдела перегружаем список подтипов
//
procedure Tfrm_buttons.DBComboBoxEh1Change(Sender: TObject);
begin
  if (DBComboBoxEh1.Value > 0 ) then
  begin
    fst_view.Close;
    fst_view.ParamByName('P1').AsInteger := DBComboBoxEh1.Value;
    fst_view.Open;

    DBComboBoxEh2Change(Sender);
    fst_view.Refresh;
    Grid_types.Repaint;
    Grid_types.SetFocus;
  end;
end;


//
//  При смене отдела перегружаем список подтипов
//
procedure Tfrm_buttons.DBComboBoxEh2Change(Sender: TObject);
begin
  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) then
  begin
    but_view.Close;
    but_view.ParamByName('P1').AsInteger := DBComboBoxEh1.Value;
    but_view.ParamByName('P2').AsInteger := DBComboBoxEh2.Value;
    but_view.Open;
    grid_butView1.DataController.Groups.FullExpand;

    Grid_types.SetFocus;
    fst_view.Refresh;
    Grid_types.Repaint;
  end;
end;


//
//  Раскрытие списка подтипов
//
procedure Tfrm_buttons.full_expandExecute(Sender: TObject);
begin
  Grid_typesView1.DataController.Groups.FullExpand;
end;


//
//  Сжатие списка подтипов
//
procedure Tfrm_buttons.full_inpandExecute(Sender: TObject);
begin
  Grid_typesView1.DataController.Groups.FullCollapse;
end;


//
// Перекидывание подтипов на кнопку
//
procedure Tfrm_buttons.move_leftExecute(Sender: TObject);
var id: integer;
begin
  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) and (Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsInteger > 0) then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;

    if (Grid_typesView1.Controller.FocusedRow.Expandable = true) then
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.set_button(0,'+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +','+ Grid_typesView1.DataController.DataSet.FieldByName('ft_id').AsString +'); end; ')
    else
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.set_button('+ Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsString +','+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +',0); end; ');
    DM.Q_SQL.Execute;

    id := Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    fst_view.Refresh;
    fst_view.locate('fst_id',id,[]);
    but_view.Refresh;
    grid_butView1.DataController.Groups.FullExpand;
    Grid_types.Repaint;
  end else ShowMessage('Надо выбрать отдел и кнопку!');
end;



//
//  Раскрытие списка кнопки
//
procedure Tfrm_buttons.Action2Execute(Sender: TObject);
begin
  grid_butView1.DataController.Groups.FullExpand;
end;


//
//  Сжатие списка кнопки
//
procedure Tfrm_buttons.Action3Execute(Sender: TObject);
begin
  grid_butView1.DataController.Groups.FullCollapse;
end;


// Добавление соответствия
procedure Tfrm_buttons.btnAddClientClick(Sender: TObject);
begin
  edOldClient.PostEditValue;
  cbNewClient.PostEditValue;
  if (edOldClient.EditValue = NULL) or (cbNewClient.EditValue < 1) then exit;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('insert into old_client_map values('''+ VarToStr(edOldClient.EditValue) +''','+ VarToStr(cbNewClient.EditValue) +')');
  DM.Q_SQL.Execute;
  DM.Main_session.Commit;
  cdsOldClients.Refresh;
end;

procedure Tfrm_buttons.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_buttons.btnSetDirClick(Sender: TObject);
begin
  if cxShellBrowserDlgOrder.Execute then defPath.EditValue := cxShellBrowserDlgOrder.Path;
end;

procedure Tfrm_buttons.chBoxNotSelectedClick(Sender: TObject);
begin
  if (Sender as TcxCheckBox).checked then
  begin
    fst_NBUTTON.DataBinding.AddToFilter(nil,foEqual,null,'пусто',true);
    Grid_typesView1.DataController.Filter.Active := true;
  end
  else
  begin
    Grid_typesView1.DataController.Filter.Clear;
    Grid_typesView1.DataController.Filter.Active := false;
  end;
end;


// Удаление соответствия
procedure Tfrm_buttons.cxButton1Click(Sender: TObject);
begin
  if (not cdsOldClients.Active) or cdsOldClients.IsEmpty then exit;

  cdsOldClients.Delete;
  DM.Main_session.Commit;
  cdsOldClients.Refresh;
end;


//
// Убирание подтипов из кнопки
//
procedure Tfrm_buttons.Action1Execute(Sender: TObject);
begin
  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) and (but_view.FieldByName('fst_id').AsInteger > 0) then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;

    if (grid_butView1.Controller.FocusedRow.Expandable = true) then
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.remove_button(0,'+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +', '+ grid_butView1.DataController.DataSet.FieldByName('ft_id').AsString +'); end; ')
    else
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.remove_button('+ grid_butView1.DataController.DataSet.FieldByName('fst_id').AsString +','+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +', 0); end; ');

    DM.Q_SQL.Execute;
    fst_view.Refresh;
    but_view.Refresh;
    grid_butView1.DataController.Groups.FullExpand;
    Grid_types.Repaint;
  end else ShowMessage('Надо выбрать отдел и кнопку!');
end;


//
//  Назначаем поиск
//
procedure Tfrm_buttons.N5Click(Sender: TObject);
begin
  edit_panel.Left := grid_but.Left +  trunc(grid_but.width / 2) - 200;
  edit_panel.Top :=  grid_but.top + trunc(grid_but.height / 2);
  edit_panel.Visible := true;
  DBEditEh1.SetFocus;
end;


//
//  Запись строки
//
procedure Tfrm_buttons.SpeedButton3Click(Sender: TObject);
begin
  if (trim(DBEditEh1.Text) <> '') then
  begin
    dm.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.add('begin PACK_ORDERS.change_s(:dep_, :button_, :char_, :all_, :fst_id_); end;');
    DM.Q_SQL.ParamByName('dep_').AsInteger := DBComboBoxEh1.Value;
    DM.Q_SQL.ParamByName('button_').AsInteger := DBComboBoxEh2.Value;
    DM.Q_SQL.ParamByName('char_').AsString := DBEditEh1.Text;
    DM.Q_SQL.ParamByName('all_').AsInteger := cxCheckBox1.EditValue;
    DM.Q_SQL.ParamByName('fst_id_').AsInteger := grid_butView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    DM.Q_SQL.Execute;
    but_view.Refresh;
    edit_panel.Visible := false;
    DBEditEh1.Text := '';
  end;
end;


//
//  Запись по ENTER
//
procedure Tfrm_buttons.DBEditEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     SpeedButton3Click(Sender);
  if (Key = VK_ESCAPE) then
  begin
     edit_panel.Visible := false;
     DBEditEh1.Text := '';
  end;
end;


//
// Убираем строку с кнопки
//
procedure Tfrm_buttons.N7Click(Sender: TObject);
begin
    dm.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.add('begin PACK_ORDERS.change_s(:dep_, :button_, :char_, :all_, :fst_id_); end;');
    DM.Q_SQL.ParamByName('dep_').AsInteger := DBComboBoxEh1.Value;
    DM.Q_SQL.ParamByName('button_').AsInteger := DBComboBoxEh2.Value;
    DM.Q_SQL.ParamByName('char_').AsString := '';
    DM.Q_SQL.ParamByName('all_').AsInteger := 0;
    DM.Q_SQL.ParamByName('fst_id_').AsInteger := grid_butView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    DM.Q_SQL.Execute;
    but_view.Refresh;
end;

procedure Tfrm_buttons.PopupMenu2Popup(Sender: TObject);
begin
  if (DBComboBoxEh2.ItemIndex > -1) and (but_view.RecordCount > 0) then
  begin
    N5.Enabled := true;
    N7.Enabled := true;
  end
  else
  begin
    N5.Enabled := false;
    N7.Enabled := false;
  end;
end;



//
//  Окраска таблицы с подтипами
//
procedure Tfrm_buttons.Grid_typesView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var param: Variant;
begin
    if ( AViewInfo.Selected  = false) and (fst_view.Active = true) and (DBComboBoxEh2.Value > 0) then
    begin
      param := Grid_typesView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, Grid_typesView1.GetColumnByFieldName('NBUTTON').Index
                );
      if (VarToStr(param) = DBComboBoxEh2.Text) then ACanvas.Brush.Color := clSkyBlue else ACanvas.Brush.Color := clWindow;
    end;
end;

end.
