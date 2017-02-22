unit frm_orders_list;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  ActnList, DBGridEh, DB, Mask, DBCtrlsEh, PI_Library, EhLibODAC, IniFiles,
  GridsEh, Registry, Menus, DBGridEhImpExp, EhLibADO, ADODB, MemDS, MemData,
  dxBar, dxBarExtItems, cxClasses, cxStyles, StrUtils, ImgList, cxGraphics,
  DBGridEhGrouping, ShellAPI, Clipbrd, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookAndFeelPainters,
  cxCheckBox, cxButtons;

type
  Torders_list = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    filter_on: TAction;
    Label1: TLabel;
    DBText5: TDBText;
    Panel6: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    DBGridEh1: TDBGridEh;
    BitBtn9: TBitBtn;
    filter_off: TAction;
    Post_Data: TAction;
    ComboBox1: TDBComboBoxEh;
    ComboBox2: TDBComboBoxEh;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBCheckBoxEh2: TDBCheckBoxEh;
    Panel3: TPanel;
    Label3: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Save_: TAction;
    Cancel_: TAction;
    N3: TMenuItem;
    N4: TMenuItem;
    Delete_: TAction;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Panel_fill: TPanel;
    DBEdit_fill: TDBEditEh;
    search_: TAction;
    pod_nick: TLabel;
    pod_fio: TLabel;
    aShowOrder: TAction;
    Label17: TLabel;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    btnEditName: TBitBtn;
    btnAddRemarks: TBitBtn;
    add_remarks: TAction;
    N19: TMenuItem;
    mnAddNom: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    Label4: TLabel;
    Label6: TLabel;
    N23: TMenuItem;
    DBText6: TDBText;
    Panel1: TPanel;
    BitBtn13: TBitBtn;
    btnLoadOrder: TBitBtn;
    aLoadOrder: TAction;
    aFullInfo: TAction;
    N24: TMenuItem;
    aFullInfo1: TMenuItem;
    bdc_sales: TdxBarDockControl;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    aFilterTypes: TAction;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    stWarning: TcxStyle;
    chbFilterEh: TDBCheckBoxEh;
    cxImageList1: TcxImageList;
    N25: TMenuItem;
    N26: TMenuItem;
    btnStat: TBitBtn;
    aShowStatistic: TAction;
    BitBtn4: TBitBtn;
    aMakeTxtFile: TAction;
    dxBarStatic2: TdxBarStatic;
    N27: TMenuItem;
    mnEditNom: TMenuItem;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    stSpec: TcxStyle;
    mnCopyToClipBoard: TMenuItem;
    gb_analizy: TGroupBox;
    btnLoadStock: TcxButton;
    chbAllOrders: TcxCheckBox;
    DBText7: TDBText;
    mnSyncWeight: TMenuItem;
    procedure BitBtn13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Post_DataExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBCheckBoxEh1Click(Sender: TObject);
    procedure DBCheckBoxEh2Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure N4Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);

    procedure LoadData(key: integer);
    procedure search_Execute(Sender: TObject);
    procedure DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aShowOrderExecute(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Grid_Set;
    procedure btnEditNameClick(Sender: TObject);
    procedure btnAddRemarksClick(Sender: TObject);
    procedure mnAddNomClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure aLoadOrderExecute(Sender: TObject);
    procedure aFullInfoExecute(Sender: TObject);
    procedure aFilterTypesExecute(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure aShowStatisticExecute(Sender: TObject);
    procedure aMakeTxtFileExecute(Sender: TObject);
    procedure mnEditNomClick(Sender: TObject);
    procedure mnCopyToClipBoardClick(Sender: TObject);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure chbAllOrdersPropertiesEditValueChanged(Sender: TObject);
    procedure btnLoadStockClick(Sender: TObject);
    procedure mnSyncWeightClick(Sender: TObject);

  private
    { Private declarations }
    //def_folder: string;
    pnl_msg: TPanel;
    procedure Save_Nom(n_id_: integer);
    procedure do_check;
    procedure ApplayFilter;

  public
    { Public declarations }
    str_nick: string;
    str_fio:  string;
    stroka:   string;
    save_or:  boolean;
  end;

var
  orders_list: Torders_list;

implementation

uses frm_DM, frm_first_dialog, Ustat, NewInvNomU, UAddSomething, UFullInfo,
  UInfo, UChoiseType, NewDict;

{$R *.dfm}


procedure Torders_list.BitBtn13Click(Sender: TObject);
begin
  close;
end;

//
//  В гриде номенклатуры быстрый ввод кол-ва товара
//
procedure Torders_list.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['/']) then
  search_Execute(Sender);

  if (Key in ['0'..'9']) and (DBGridEh1.SelectedField.FieldName <> 'TRUCK') then
  begin
    DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl;
    str_fio := '';
    str_nick := '';
  end;

  if (Key in ['а'..'я']) or (Key in ['А'..'Я']) or (Key = ' ') then
  begin
     DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Field.FocusControl;
     str_fio := str_fio + Key;
     DM.Q_ORDERS_LIST.Locate('COMPILED_NAME_OTDEL', str_fio, [loCaseInsensitive, loPartialKey]);
  end;

  if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') then
  begin
     DBGridEh1.FieldColumns['H_NAME'].Field.FocusControl;
     str_nick := str_nick + Key;
     DM.Q_ORDERS_LIST.Locate('H_NAME', str_nick, [loCaseInsensitive, loPartialKey]);
  end;

  label12.Caption := str_nick;
  label13.Caption := str_fio;
end;

procedure Torders_list.do_check;
var val, val2: integer;
begin
  if (DBGridEh1.SelectedField.FieldName <> 'COUNT_DATA') and (DBGridEh1.SelectedField.FieldName <> 'PACK_') then exit;
  try
     val := DM.Q_ORDERS_LISTPACK_.AsInteger;
     val2 := DM.Q_ORDERS_LISTCOUNT_DATA.AsInteger;
     DM.Q_ORDERS_LIST.Edit;
     if DBGridEh1.SelectedField.FieldName = 'PACK_' then
       DM.Q_ORDERS_LISTPACK_.AsInteger := abs(val - 1);
     if DBGridEh1.SelectedField.FieldName = 'COUNT_DATA' then
     DM.Q_ORDERS_LISTCOUNT_DATA.AsInteger := abs(val2 - 1);
     DM.Q_ORDERS_LIST.Post;
     //gr_debets_v.ViewData.DataController.GotoNext;
     DM.Q_ORDERS_LIST.Next;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;



// Shift+F6
procedure Torders_list.Action7Execute(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox2.ItemIndex - 1;
  ComboBox2Change(self);
end;

// F6
procedure Torders_list.Action8Execute(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox2.ItemIndex + 1;
  ComboBox2Change(self);
end;


//
//  Применяем фильтр
//
procedure Torders_list.BitBtn4Click(Sender: TObject);
begin
  Post_DataExecute(Sender);

  DBGridEh1.ApplyFilter;
  DBCheckBoxEh2.Checked := false;
  DBGridEh1.SetFocus;
end;


//
//  ФИЛЬТР ПО ТИПУ
//
procedure Torders_list.ComboBox1Change(Sender: TObject);
begin
  If ComboBox1.ItemIndex > 0 then
  begin
    DBGridEh1.FieldColumns['F_TYPE'].STFilter.ExpressionStr := ComboBox1.Text;
    ComboBox2.OnChange := nil;
    FillComboEh(DM.Q_SQL, ComboBox2, 'SELECT a.FST_ID, a.F_SUB_TYPE FROM FLOWER_SUBTYPES a, FLOWER_TYPES b WHERE a.FT_ID='+ComboBox1.Value+' AND a.FT_ID=b.FT_ID ORDER BY F_SUB_TYPE');
    DBGridEh1.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := '';

    if ComboBox2.Items.Count > 0 then
    begin
      ComboBox2.OnChange := ComboBox2Change;
      ComboBox2.Enabled := true;
    end;
  end
  else     DBGridEh1.FieldColumns['F_TYPE'].STFilter.ExpressionStr := '';
  DBGridEh1.ApplyFilter;
  DBCheckBoxEh2.Checked := false;
end;


//
//  Выпадающий список подтипов
//
procedure Torders_list.ComboBox2Change(Sender: TObject);
begin
  If ComboBox2.ItemIndex > 0 then
    DBGridEh1.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := ComboBox2.Text
  else
    DBGridEh1.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := '';

  DBGridEh1.ApplyFilter;
  DBCheckBoxEh2.Checked := false;
end;


procedure Torders_list.cxDateEdit1PropertiesChange(Sender: TObject);
begin

end;

//
//  Выключаем фильтр
//
procedure Torders_list.BitBtn9Click(Sender: TObject);
begin
  Post_DataExecute(Sender);

  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  ComboBox2.Enabled := false;

  DBGridEh1.ClearFilter;
  DBGridEh1.ApplyFilter;

  dm.Q_ORDERS_LIST.Close;
  DM.Q_ORDERS_LIST.Filtered := false;
  DM.Q_ORDERS_LIST.Filter := '';
  dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := 0;

//  DBCheckBoxEh1Click(self);
  dm.Q_ORDERS_LIST.Open;
{
  if DBCheckBoxEh2.Checked = true then
  begin
    DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS is not null and FL_ORDERS <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
  end;

  if gb_analizy.Visible and (chbAllOrders.EditValue = true) then
  begin
    DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS_ALL is not null and FL_ORDERS_ALL <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
  end;
}
  if first_dialog_frm.uDefSort = 0 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'compiled_name_otdel;REMARKS';
  if first_dialog_frm.uDefSort = 1 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'ord;compiled_name_otdel;REMARKS';
  if first_dialog_frm.uDefSort = 2 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'ord;h_name;REMARKS';

//  stroka := '';
  ApplayFilter;
  Label17.Caption := '';
  DBGridEh1.SetFocus;
end;

procedure Torders_list.ApplayFilter;
var filter_str: string;
begin
  filter_str := '';

  // Просмотр заказа целиком
  if DBCheckBoxEh2.Checked = true then
    filter_str := '(FL_ORDERS is not null and FL_ORDERS <> 0)';

  // Просмотр позиций всех заказов
  if gb_analizy.Visible and (chbAllOrders.EditValue = true) then
    filter_str := '(FL_ORDERS_ALL is not null and FL_ORDERS_ALL <> 0)';

  if DBCheckBoxEh1.Checked = true then
  begin
    if filter_str <> '' then filter_str := filter_str + ' and ';

    if (first_dialog_frm.addit = true) then
      filter_str := filter_str + '(store_all <> 0 or PREV_STOCK_AMOUNT <> 0 or STOCK_DISTRIBUTION <> 0 or CLIENT_DISTRIBUTION <> 0 or STOCK_DISTRIBUTION_DONE <> 0' +
      ' or CLIENT_DISTRIBUTION_DONE <> 0 or (FL_ORDERS is not null and fl_orders <> 0) or (FL_ORDERS_ALL is not null and fl_orders_all <> 0))'
    else
      filter_str := filter_str + '(price > 0 or (FL_ORDERS is not null and fl_orders <> 0) or (FL_ORDERS_ALL is not null and fl_orders_all <> 0))';
  end;

  DM.Q_ORDERS_LIST.Filter := filter_str;
  if filter_str <> '' then
    DM.Q_ORDERS_LIST.Filtered := true;

  DBGridEh1.SumList.RecalcAll;
  DBGridEh1.SetFocus;
end;


//
// Нажатие CTRL+ENTER для ввода кол-ва товара и его последующего помещения в корзину клиента
//
procedure Torders_list.Post_DataExecute(Sender: TObject);
begin
  If DM.Q_ORDERS_LIST.State = dsEdit then
  begin
    DBGridEh1.EditorMode := false;
    DM.Q_ORDERS_LIST.Post;
  end;
end;



// Закрываем таблицу при закрытии формы
procedure Torders_list.FormClose(Sender: TObject; var Action: TCloseAction);
var  RegFil : TRegIniFile;
     iniFile: string;
begin
  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'.ini';
  DBGridEh1.SaveGridLayoutIni(iniFile, 'order_list',true);

  if (DBGridEh1.FieldColumns['FL_ORDERS'].Footer.SumValue = 0) then
    BitBtn2Click(self);

  DBGridEh1.SumList.Active := false;

  if (save_or = true) then
  begin
      if MessageDlg('Данные не сохранены! Сохранить?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        BitBtn3Click(self);
        BitBtn13Click(self);
      end
      else
      begin
        BitBtn2Click(self);
        BitBtn13Click(self);
      end;
  end;
end;


//
//  При каждом показе формы
//
procedure Torders_list.FormShow(Sender: TObject);
var
  RegIni : TIniFile;
  path, iniFile: string;
begin
{
  path   := first_dialog_frm.path+'orders.ini';
  RegIni := TIniFile.Create(path);
  try
     def_folder  := RegIni.ReadString('folder', 'Value', '..');
  finally
     RegIni.Free;
  end;
}
  chbFilterEh.Checked := first_dialog_frm.uFilter;
//ShowMessage('1');
  if first_dialog_frm.uDefSort = 0 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'compiled_name_otdel;REMARKS';
  if first_dialog_frm.uDefSort = 1 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'ord;compiled_name_otdel;REMARKS';
  if first_dialog_frm.uDefSort = 2 then
     DM.Q_ORDERS_LIST.IndexFieldNames := 'ord;h_name;REMARKS';
//ShowMessage('2');

  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'.ini';
//  DBGridEh1.RestoreGridLayoutIni(iniFile, 'order_list',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);
  DBGridEh1.RestoreGridLayoutIni(iniFile, 'order_list',[grpColIndexEh, grpColWidthsEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

  orders_list.DBGridEh1.FieldColumns['STOCK_DISTRIBUTION'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['CLIENT_DISTRIBUTION'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['STOCK_DISTRIBUTION_DONE'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['CLIENT_DISTRIBUTION_DONE'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['STORE_ALL'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
//  orders_list.DBGridEh1.FieldColumns['RESERV'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['FL_ORDERS_ALL'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['STORE_PROD'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['STORE_SPIS'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['STORE_UCEN'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
  orders_list.DBGridEh1.FieldColumns['PREV_STOCK_AMOUNT'].Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);

//ShowMessage('3');
//  DBCheckBoxEh1.Visible := first_dialog_frm.addit;
//ShowMessage('4');

  gb_analizy.Visible := (first_dialog_frm.addit and not first_dialog_frm.uHideCargoMoving);
//ShowMessage('5');

  ComboBox1.OnChange := nil;
  FillComboEh(DM.Q_SQL_SPIS, ComboBox1, 'SELECT FT_ID, F_TYPE FROM FLOWER_TYPES WHERE id_departments = ' + first_dialog_frm.DBComboBoxEh1.Value + ' ORDER BY F_TYPE');
  ComboBox1.OnChange := ComboBox1Change;
//ShowMessage('6');

  N6.Checked := DBGridEh1.FieldColumns['H_NAME'].Visible;
  N7.Checked := DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
  N8.Checked := DBGridEh1.FieldColumns['F_TYPE'].Visible;
  N9.Checked := DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible;
  N26.Checked := DBGridEh1.FieldColumns['HOL_TYPE'].Visible;
  N10.Checked := DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible;
  N11.Checked := DBGridEh1.FieldColumns['COLOUR'].Visible;
  N12.Checked := DBGridEh1.FieldColumns['LEN'].Visible;
  N13.Checked := DBGridEh1.FieldColumns['PACK'].Visible;
  N17.Checked := DBGridEh1.FieldColumns['S_NAME_RU'].Visible;
  N18.Checked := DBGridEh1.FieldColumns['COUNTRY'].Visible;
  N14.Checked := DBGridEh1.FieldColumns['RUS_MARKS'].Visible;
  N15.Checked := DBGridEh1.FieldColumns['H_CODE'].Visible;
  N16.Checked := DBGridEh1.FieldColumns['REMARKS'].Visible;
  N23.Checked := DBGridEh1.FieldColumns['TRUCK'].Visible;
  N25.Checked := DBGridEh1.FieldColumns['PRICE'].Visible;
  N27.Checked := DBGridEh1.FieldColumns['FL_ORDERS_ALL'].Visible;
//ShowMessage('7');

  if DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1 then
  begin
     orders_list.N23.Checked    := true;
     orders_list.N23.Enabled    := true;
     orders_list.Label6.visible := true;
     DBGridEh1.FieldColumns['TRUCK'].Visible := true;
  end
  else
  begin
     orders_list.N23.Checked    := false;
     orders_list.N23.Enabled    := false;
     orders_list.Label6.visible := false;
     DBGridEh1.FieldColumns['TRUCK'].Visible := false;
  end;
//ShowMessage('8');

  DBGridEh1.Font.Size := first_dialog_frm.uFont;

  save_or := false;
  // 2014-10-25 Оптимизация фильтров и многочисленных рефрешей -----------------
  if DM.Q_ORDERS_ORDERSQQQ.AsInteger > 0 then
    DBCheckBoxEh2.Checked := true
  else BitBtn9Click(self);
  // ---------------------------------------------------------------------------
//ShowMessage('9');

  dm.Q_ORDERS_LIST.DisableControls;
  dm.Q_ORDERS_LIST.Open;
//ShowMessage('10');
  DBGridEh1.SumList.Active := true;
  dm.Q_ORDERS_LIST.EnableControls;

//  DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl;
//ShowMessage('11');
end;




//
//  Удаление позиции в заказе
//
procedure Torders_list.BitBtn12Click(Sender: TObject);
var sql: string;
    idd, ind2: integer;
begin
  if (first_dialog_frm.delete = true) and (DM.Q_ORDERS_LISTFL_ORDERS.AsInteger > 0) and BitBtn12.Visible then
  begin
        DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl;
        DM.Q_ORDERS_LIST.Edit;
        DM.Q_ORDERS_LISTFL_ORDERS.AsInteger := 0;
        DM.Q_ORDERS_LIST.Post;
        DBGridEh1.EditorMode := false;
        DM.Q_ORDERS_LIST.Next;
  end;
end;


// Скрываем пустые значения при выборке товаров
procedure Torders_list.DBCheckBoxEh1Click(Sender: TObject);
begin
  BitBtn9Click(Sender);
{
  if DBCheckBoxEh1.Checked = true then
  begin
    if (first_dialog_frm.addit = true) then
      DM.Q_ORDERS_LIST.Filter := 'store_all <> 0 or PREV_STOCK_AMOUNT <> 0 or STOCK_DISTRIBUTION <> 0 or CLIENT_DISTRIBUTION <> 0 or STOCK_DISTRIBUTION_DONE <> 0 or CLIENT_DISTRIBUTION_DONE <> 0 or fl_orders <> 0 or fl_orders_all <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
  end
  else
  begin
    DM.Q_ORDERS_LIST.Filter := '';
    DM.Q_ORDERS_LIST.Filtered := false;
  end;
  DBGridEh1.SetFocus;
}  
end;



//
//  Подгружаем список номенклатуры на кнопку 
//
procedure Torders_list.LoadData(key: integer);
begin
  Post_DataExecute(nil);

  DBCheckBoxEh2.Checked := false;
  dm.Q_ORDERS_LIST.Close;
  dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := Key;
  dm.Q_ORDERS_LIST.Open;
  DBGridEh1.ClearFilter;
  DBGridEh1.ApplyFilter;
  Label17.Caption := ' F'+IntToStr(Key)+' ';
end;

//
//  Быстрый поиск
//
procedure Torders_list.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strfio, strnick: string;
  i1, i2: integer;
begin
  if (Key = VK_F2	) then
     LoadData(2);
  if (Key = VK_F3	) then
     LoadData(3);
  if (Key = VK_F4	) then
     LoadData(4);
  if (Key = VK_F5	) then
     LoadData(5);
  if (Key = VK_F6	) then
     LoadData(6);
  if (Key = VK_F7	) then
     LoadData(7);
  if (Key = VK_F8	) then
     LoadData(8);

  if (Key = VK_CONTROL) or (Key = VK_LEFT) or (Key = VK_UP) or (Key = VK_RIGHT) or (Key = VK_DOWN) or (Key = VK_PRIOR)	or (Key = VK_NEXT) then
  begin
    str_fio := '';
    str_nick := '';
    label12.Caption := str_nick;
    label13.Caption := str_fio;
  end;

  if (Key = VK_BACK) then
  begin
    i1:=0;
    i2:=Length(str_fio)-1;
    strfio:=Copy(str_fio,i1,i2);

    i1:=0;
    i2:=Length(str_nick)-1;
    strnick:=Copy(str_nick,i1,i2);

    str_fio := strfio;
    str_nick := strnick;

    label12.Caption := str_nick;
    label13.Caption := str_fio;
  end;

  if (Key=VK_INSERT) then
      do_check;

end;


//
//  Выделить через меню
//
procedure Torders_list.N1Click(Sender: TObject);
begin
  DBGridEh1.Selection.SelectAll;
end;


//
//  Сохранить выделенное через меню
//
procedure Torders_list.N2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if SaveDialog1.FilterIndex = 1 then
    begin
      SaveDialog1.DefaultExt := 'txt';
      SaveDBGridEhToExportFile(TDBGridEhExportAsText,DBGridEh1, SaveDialog1.FileName, False);
    end;

    if SaveDialog1.FilterIndex = 2 then
    begin
      SaveDialog1.DefaultExt := 'csv';
      SaveDBGridEhToExportFile(TDBGridEhExportAsCsv,DBGridEh1, SaveDialog1.FileName, False);
    end;

    if SaveDialog1.FilterIndex = 3 then
    begin
      SaveDialog1.DefaultExt := 'htm';
      SaveDBGridEhToExportFile(TDBGridEhExportAsHTML,DBGridEh1, SaveDialog1.FileName, False);
    end;

    if SaveDialog1.FilterIndex = 4 then
    begin
      SaveDialog1.DefaultExt := 'xls';
      SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1, SaveDialog1.FileName, False);
    end;
  end;
end;



//
//  Сохранение информации
//
procedure Torders_list.BitBtn3Click(Sender: TObject);
begin
  if not BitBtn3.Visible then BitBtn2Click(Sender);

  Post_DataExecute(Sender);

  with DM.Q_SQL do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('begin PACK_ORDERS.SEPERATE_ORDER(:pID_ORDERS_CLIENTS); end;');
    ParamByName('pID_ORDERS_CLIENTS').AsInteger :=  DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
    Execute;
  End;

  DM.Main_session.Commit;
  DM.Q_ORDERS_LIST.Refresh;
  DBGridEh1.SumList.RecalcAll;
  save_or := false;
  close;
end;


//
//  Отмена записи информации
//
procedure Torders_list.BitBtn2Click(Sender: TObject);
begin
  DM.Main_session.Rollback;
  DM.Q_ORDERS_LIST.Refresh;
  DBGridEh1.SumList.RecalcAll;
  save_or := false;
end;


//
//  Сортировка данных в таблице
//
procedure Torders_list.DBGridEh1TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
var i,j:Integer;
    sort_str: String;
begin
  case Column.Title.SortMarker of
    smNoneEh: Column.Title.SortMarker := smDownEh;
    smDownEh: Column.Title.SortMarker := smUpEh;
    smUpEh: Column.Title.SortMarker := smNoneEh;
  end;

  DBGridEh1.OptionsEh := DBGridEh1.OptionsEh + [dghAutoSortMarking, dghMultiSortMarking];

  for i:=1 to DBGridEh1.SortMarkedColumns.Count do
  begin
    if i=1 then
      sort_str := sort_str + DBGridEh1.SortMarkedColumns.Items[i-1].Field.FieldName
    else
      sort_str := sort_str + ';' + DBGridEh1.SortMarkedColumns.Items[i-1].Field.FieldName;

    case Column.Title.SortMarker of
      smUpEh : Sort_str := sort_str+' ASC';
      smDownEh : Sort_str := sort_str+' DESC';
      smNoneEh : sort_str := '';
    end;
  end;
  DM.Q_ORDERS_LIST.IndexFieldNames := sort_str;
  DBGridEh1.OptionsEh := DBGridEh1.OptionsEh - [dghAutoSortMarking, dghMultiSortMarking];
end;


//
//  Восстановка ширины столбцов
//
procedure Torders_list.N4Click(Sender: TObject);
begin
  DBGridEh1.FieldColumns['CLIENT_DISTRIBUTION'].Width := 60;
  DBGridEh1.FieldColumns['STOCK_DISTRIBUTION'].Width := 60;
  DBGridEh1.FieldColumns['CLIENT_DISTRIBUTION_DONE'].Width := 60;
  DBGridEh1.FieldColumns['STOCK_DISTRIBUTION_DONE'].Width := 60;
  DBGridEh1.FieldColumns['PREV_STOCK_AMOUNT'].Width := 60;
  DBGridEh1.FieldColumns['STORE_ALL'].Width := 60;
//  DBGridEh1.FieldColumns['RESERV'].Width := 60;
  DBGridEh1.FieldColumns['FL_ORDERS_ALL'].Width := 60;
  DBGridEh1.FieldColumns['FL_ORDERS'].Width := 70;
  DBGridEh1.FieldColumns['STORE_PROD'].Width := 65;
  DBGridEh1.FieldColumns['STORE_UCEN'].Width := 65;
  DBGridEh1.FieldColumns['UCENKA'].Width := 65;
  DBGridEh1.FieldColumns['H_NAME'].Width := 110;
  DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Width := 110;
  DBGridEh1.FieldColumns['F_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['F_SUB_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['HOL_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['COLOUR'].Width := 110;
  DBGridEh1.FieldColumns['LEN'].Width := 50;
  DBGridEh1.FieldColumns['PACK'].Width := 50;
  DBGridEh1.FieldColumns['S_NAME_RU'].Width := 100;
  DBGridEh1.FieldColumns['COUNTRY'].Width := 100;
  DBGridEh1.FieldColumns['RUS_MARKS'].Width := 100;
  DBGridEh1.FieldColumns['H_CODE'].Width := 100;
  DBGridEh1.FieldColumns['REMARKS'].Width := 70;

  N6.Checked := DBGridEh1.FieldColumns['H_NAME'].Visible;
  N7.Checked := DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
  N8.Checked := DBGridEh1.FieldColumns['F_TYPE'].Visible;
  N9.Checked := DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible;
  N26.Checked := DBGridEh1.FieldColumns['HOL_TYPE'].Visible;
  N10.Checked := DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible;
  N11.Checked := DBGridEh1.FieldColumns['COLOUR'].Visible;
  N12.Checked := DBGridEh1.FieldColumns['LEN'].Visible;
  N13.Checked := DBGridEh1.FieldColumns['PACK'].Visible;
  N17.Checked := DBGridEh1.FieldColumns['S_NAME_RU'].Visible;
  N18.Checked := DBGridEh1.FieldColumns['COUNTRY'].Visible;
  N14.Checked := DBGridEh1.FieldColumns['RUS_MARKS'].Visible;
  N15.Checked := DBGridEh1.FieldColumns['H_CODE'].Visible;
  N16.Checked := DBGridEh1.FieldColumns['REMARKS'].Visible;
  N23.Checked := DBGridEh1.FieldColumns['TRUCK'].Visible;
  N25.Checked := DBGridEh1.FieldColumns['PRICE'].Visible;
  N27.Checked := DBGridEh1.FieldColumns['FL_ORDERS_ALL'].Visible;

  DBGridEh1.Repaint;
end;


//
// Отрисовка выделенной строки в гриде
//
procedure Torders_list.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Column.FieldName <> 'FL_ORDERS_ALL') and (Column.FieldName <> 'FL_ORDERS')
      and (DM.Q_ORDERS_LISTZATIRKA.AsInteger = 1) and (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 0) then
	begin
      DBGridEh1.Canvas.Brush.Color:=$009BFFFF;
 	    DBGridEh1.Canvas.Font.Color:=clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
{
  // Покрасим импортированные данные от андрея если их больше 2-х
  if (Column.FieldName <> 'FL_ORDERS_ALL') and (Column.FieldName <> 'FL_ORDERS')
      and (DM.Q_ORDERS_LISTCOUNT_DATA.AsInteger > 1) and (DM.Q_ORDERS_ORDERSIN_FILE.AsString = 'CODES.DBF') then
	begin
      DBGridEh1.Canvas.Brush.Color:=stWarning.Color;
 	    DBGridEh1.Canvas.Font.Color:=clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
}
  // Покрасим позиции со спец.предложением
  if (Column.FieldName <> 'FL_ORDERS_ALL') and (Column.FieldName <> 'FL_ORDERS') and (DM.Q_ORDERS_LISTSPEC.AsInteger > 0) then
	begin
      DBGridEh1.Canvas.Brush.Color:=stSpec.Color;
 	    DBGridEh1.Canvas.Font.Color:=clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (State = [gdSelected]	) then
	begin
      DBGridEh1.Canvas.Brush.Color:=clBtnFace;
 	    DBGridEh1.Canvas.Font.Color:=clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;


procedure Torders_list.DBGridEh1DblClick(Sender: TObject);
begin
{
  if (DM.Q_ORDERS_LIST.FieldByName('COUNT_DATA').AsInteger > 1) then
  begin
     with DM.Q_SQL do
     Begin
        Close;
        SQL.Clear;
        SQL.Add('select SITE_DATA from ORDERS_LIST where ID_ORDERS_LIST='+DM.Q_ORDERS_LISTID_ORDERS_LIST.AsString);
        Open;
        //if Reco then
          OpenFormForShow(DM.Q_SQL.FieldByName('SITE_DATA').AsString);
     End;
  end;
}
end;


//
//  Открываем окно для поиска по вхождению
//
procedure Torders_list.search_Execute(Sender: TObject);
begin
  Post_DataExecute(Sender);

  Panel_fill.Left := trunc(DBGridEh1.Width / 2) - 90;
  Panel_fill.Top := trunc(DBGridEh1.Height / 2) - 20;
  Panel_fill.Visible := true;
  DBEdit_fill.SetFocus;
end;


//
//  Применяем фильтр
//
procedure Torders_list.DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    Panel_fill.Visible := false;
    DBGridEh1.SetFocus;
  end;  

  if (Key = VK_RETURN) then
  begin
     {
    te_search.PostEditValue;
    grid.ClearFilter;
    grid.FieldColumns['COMPILED_NAME_OTDEL'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    grid.ApplyFilter;
    Panel_fill.Visible := false;
    te_search.Text := '';



    if ( DM.Q_ORDERS_LIST.LocateEx('H_NAME', DBEdit_fill.Text, [lxCaseInsensitive, lxPartialCompare] ) = true ) then
      DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl
    else
      DM.Q_ORDERS_LIST.Last;

    Panel_fill.Visible := false;
    DBEdit_fill.Text := '';    }

{  09.09.2008  Дина решила не фильтр а locate применять }

    //if first_dialog_frm.uDefSort < 2 then
    if GetKeyboardLayout(GetWindowThreadProcessId(GetForegroundWindow, nil)) <> 67699721 then
    begin
//      if first_dialog_frm.uFilterByRus = true then
//        DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].STFilter.ExpressionStr := DBEdit_fill.Text
//      else
        DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].STFilter.ExpressionStr := '*' + DBEdit_fill.Text + '*';
    end
    else
      DBGridEh1.FieldColumns['H_NAME'].STFilter.ExpressionStr := '*' + DBEdit_fill.Text + '*';

    //DBGridEh1.ApplyFilter;
    //Panel_fill.Visible := false;
    //DBEdit_fill.Text := '';

    //if DM.Q_ORDERS_LIST.RecordCount > 0 then
  {  if ( DM.Q_ORDERS_LIST.LocateEx('COMPILED_NAME_OTDEL', DBEdit_fill.Text, [lxCaseInsensitive, lxPartialCompare] ) = true ) then
      DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl
    else
    if ( DM.Q_ORDERS_LIST.LocateEx('H_NAME', DBEdit_fill.Text, [lxCaseInsensitive, lxPartialCompare] ) = true ) then
      DBGridEh1.FieldColumns['FL_ORDERS'].Field.FocusControl
    else
    begin
      DBGridEh1.ClearFilter;
      DBGridEh1.ApplyFilter;
      DM.Q_ORDERS_LIST.Last;
    end;
    }
    DBGridEh1.ApplyFilter;
    Panel_fill.Visible := false;
    DBEdit_fill.Text := '';
    DBGridEh1.ClearFilter;

  if DBCheckBoxEh2.Checked = true then
  begin
    DM.Q_ORDERS_LIST.Filter := DM.Q_ORDERS_LIST.Filter + ' and FL_ORDERS is not null and FL_ORDERS <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
  end;


    DBGridEh1.SetFocus;
  end;
end;



//
//  Фильтруем данные только по заказанному товару
//
procedure Torders_list.aShowOrderExecute(Sender: TObject);
begin
  if (DBCheckBoxEh2.Checked = true) then
  begin
    DBCheckBoxEh2.Checked := false;
    DBCheckBoxEh2Click(Sender);
  end
  else
  begin
    DBCheckBoxEh2.Checked := true;
    DBCheckBoxEh2Click(Sender);
  end;
end;


//
//  Выводим статистику по заказу
//
procedure Torders_list.aShowStatisticExecute(Sender: TObject);
var n_id: integer;
begin
    Post_DataExecute(Sender);
    n_id := DM.Q_ORDERS_LISTN_ID.AsInteger;
    if DBCheckBoxEh2.Checked = false then aShowOrder.Execute;

    frm_stat := Tfrm_stat.Create(Application);
    try
      frm_stat.CDS_STAT.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
      frm_stat.CDS_STAT.ParamByName('id_order_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger;
      frm_stat.CDS_STAT.ParamByName('id_client_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
      frm_stat.CDS_STAT.ParamByName('id_fst_').AsInteger := DM.Q_ORDERS_LISTFST_ID.AsInteger;
      frm_stat.CDS_STAT.ParamByName('fst_').AsString := DM.Q_ORDERS_LISTF_SUB_TYPE.AsString;
      frm_stat.CDS_STAT.ParamByName('zatir_').AsInteger := -1;
      frm_stat.CDS_STAT.ParamByName('n_id_').AsInteger := n_id;
      frm_stat.CDS_STAT.Open;
      frm_stat.ShowModal;
    finally
      frm_stat.Free;
    end;
end;


//
//  Фильтрация списка товаров по заказанным клиентом
//
procedure Torders_list.DBCheckBoxEh2Click(Sender: TObject);
var str: string;
begin
  BitBtn9Click(Sender); // Очищаем фильтры
{
  if DBCheckBoxEh2.Checked = true then
  begin
    DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS is not null and FL_ORDERS <> 0';
  end
  else
  begin
    if trim(stroka) <> '' then
      DM.Q_ORDERS_LIST.Filter := stroka
    else
      DM.Q_ORDERS_LIST.Filter := '';
  end;
  DM.Q_ORDERS_LIST.Filtered := true;
  DBGridEh1.SetFocus;
}
end;


//
//  Устанавливаем видимость для колонок
//
procedure Torders_list.Grid_Set;
begin
  DBGridEh1.FieldColumns['H_NAME'].Visible              := N6.Checked;
  DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible := N7.Checked;
  DBGridEh1.FieldColumns['F_TYPE'].Visible              := N8.Checked;
  DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible          := N9.Checked;
  DBGridEh1.FieldColumns['HOL_TYPE'].Visible            := N26.Checked;
  DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible        := N10.Checked;
  DBGridEh1.FieldColumns['COLOUR'].Visible              := N11.Checked;
  DBGridEh1.FieldColumns['LEN'].Visible                 := N12.Checked;
  DBGridEh1.FieldColumns['PACK'].Visible                := N13.Checked;
  DBGridEh1.FieldColumns['S_NAME_RU'].Visible           := N17.Checked;
  DBGridEh1.FieldColumns['COUNTRY'].Visible             := N18.Checked;
  DBGridEh1.FieldColumns['RUS_MARKS'].Visible           := N14.Checked;
  DBGridEh1.FieldColumns['H_CODE'].Visible              := N15.Checked;
  DBGridEh1.FieldColumns['REMARKS'].Visible             := N16.Checked;
  DBGridEh1.FieldColumns['TRUCK'].Visible               := N23.Checked;
  DBGridEh1.FieldColumns['PRICE'].Visible               := N25.Checked;
  DBGridEh1.FieldColumns['FL_ORDERS_ALL'].Visible       := N27.Checked;
end;

procedure Torders_list.N6Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked = false then (Sender as TMenuItem).Checked := true else (Sender as TMenuItem).Checked := false;
  Grid_Set;
end;


//
// Изменить/добавить название для Дины
//
procedure Torders_list.btnEditNameClick(Sender: TObject);
var n_id: integer;
begin
  frm_add_something := Tfrm_add_something.Create(Application);
  try
    frm_add_something.Caption := 'Введите название';
    frm_add_something.edit_smth.Text := DM.Q_ORDERS_LISTH_NAME.AsString;
    if frm_add_something.ShowModal = mrOk then
    begin
     try
        n_id := DM.Q_ORDERS_LISTN_ID.AsInteger;
        with DM.store_exec do
        Begin
          Close;
          StoredProcName := 'PACK_ORDERS.EDIT_NAME';
          Prepare;
          ParamByName('N_ID_').Value := n_id;
          ParamByName('vName').Value := frm_add_something.edit_smth.Text;
          Execute;

          DM.Q_ORDERS_LIST.RefreshRecord;
          //DM.Q_ORDERS_LIST.Locate('ID_ORDERS_LIST',N_ID,[]);
          DBGridEh1.SetFocus;
        end;
     except
        on E: Exception do MessageBox(Application.Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
     end;
    end;
  finally
    frm_add_something.Free;
  end;
end;


// Подгружаем текущий склад в отдельное хранилище
procedure Torders_list.btnLoadStockClick(Sender: TObject);
begin
     try
        with DM.store_exec do
        Begin
          Close;
          StoredProcName := 'PACK_ORDERS.sync_store';
          Prepare;
          ParamByName('vIdOrder').Value := DM.Q_ORDERSID_ORDERS.AsInteger;
          Execute;

          DM.Q_ORDERS_LIST.Refresh;
          DBGridEh1.SetFocus;
        end;
     except
        on E: Exception do MessageBox(Application.Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
     end;
end;


procedure Torders_list.chbAllOrdersPropertiesEditValueChanged(Sender: TObject);
begin
  BitBtn9Click(Sender); // Очищаем фильтры
{
  if chbAllOrders.Checked = true then
  begin
    DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS_ALL is not null and FL_ORDERS_ALL <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
  end
  else
  begin
    if trim(stroka) <> '' then
    begin
      DM.Q_ORDERS_LIST.Filter := stroka;
      DM.Q_ORDERS_LIST.Filtered := true;
    end
    else
    begin
      DM.Q_ORDERS_LIST.Filter := '';
      DM.Q_ORDERS_LIST.Filtered := false;
    end;
  end;
  DBGridEh1.SetFocus;
  }
end;

// Добавление ремаркса для ЗАКАЗА
procedure Torders_list.btnAddRemarksClick(Sender: TObject);
var n_id: integer;
    bm: TBookMark;
begin
  if dm.Q_ORDERS_LIST.State = dsEdit then dm.Q_ORDERS_LIST.Post;

  if DM.Q_ORDERS_LISTID_ORDERS_LIST.IsNull then
  begin
    Application.MessageBox('Добавить REMARKS можно только для заказанной позиции','Внимание',MB_ICONWARNING);
    exit;
  end;

  if DM.Q_ORDERS_LISTFL_ORDERS.AsInteger = 0 then
  begin
    Application.MessageBox('Добавить REMARKS можно только для позиции с заказом > 0','Внимание',MB_ICONWARNING);
    exit;
  end;

  frm_add_something := Tfrm_add_something.Create(Application);
  bm := DM.Q_ORDERS_LIST.GetBookmark;
  try
    frm_add_something.Caption := 'Введите REMARKS';
    frm_add_something.edit_smth.Text := DM.Q_ORDERS_LISTREMARKS.AsString;
    if frm_add_something.ShowModal = mrOk then
    begin
     try
        //Теперь добавляем remarks в сам заказ
        n_id := DM.Q_ORDERS_LISTID_ORDERS_LIST.AsInteger;
        with DM.store_exec do
        Begin
          Close;
          StoredProcName := 'PACK_ORDERS.EDIT_REMARKS';
          Prepare;
          ParamByName('id_orders_').Value := DM.Q_ORDERSID_ORDERS.AsInteger;
          ParamByName('ID_ORDERS_CLIENTS_').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
          ParamByName('N_ID_').Value := DM.Q_ORDERS_LISTN_ID.AsInteger;
          ParamByName('Q_NUM_').Value := DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
          ParamByName('REMARKS_').Value := frm_add_something.edit_smth.Text;
          Execute;

          //DM.Q_ORDERS_LIST.RefreshRecord;
          DM.Q_ORDERS_LIST.Refresh;
          DBGridEh1.SetFocus;
        end;
     except
        on E: Exception do MessageBox(Application.Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
     end;
    end;
  finally
    dm.Q_ORDERS_LIST.GotoBookmark(bm);
    dm.Q_ORDERS_LIST.FreeBookmark(bm);
    frm_add_something.Free;
  end;
end;






//
//  Формируем TXT файл
//
procedure Torders_list.N21Click(Sender: TObject);
var str, client, path2: string;
    conf, F: textfile;
    sum_, sum_all_ : integer;
begin
  // Открываем настройки
  try
    AssignFile(conf, first_dialog_frm.path+'connections/connections.txt');
    Reset(conf);
    Readln(conf, path2);

    CloseFile(conf);
    except
      on E: Exception do begin ShowMessage('Ошибка при открытии файла connection.txt'); exit; end;
  End;

  if DM.Q_ORDERS_ORDERSSSS.AsInteger > 0 then
  begin
    // Создание папки с датой заказа -------------------------------------------
    str := DM.Q_ORDERSDATE_TRUCK_OUT.AsString;
    str := path2 + str[1]+str[2]+'_'+str[4]+str[5]+'_'+str[7]+str[8]+str[9]+str[10];

    if not DirectoryExists(str) then
    if not CreateDir(str) then
    begin
      raise Exception.Create('Cannot create '+str);
      exit;
    end;
    // -------------------------------------------------------------------------

    // Создание папок внутри папки заказа ----------------------------------
    if not DirectoryExists(str+'\XML') then
    if not CreateDir(str+'\XML') then
    begin
      raise Exception.Create('Cannot create '+str);
      exit;
    end;
    if not DirectoryExists(str+'\TXT') then
    if not CreateDir(str+'\TXT') then
    begin
      raise Exception.Create('Cannot create '+str);
      exit;
    end;

    // -------------------------------------------------------------------------

          client := DM.Q_ORDERS_ORDERSNICK.AsString;
          if (DM.Q_ORDERS_ORDERSALPHA.IsNull = false) then client := client + '[' + DM.Q_ORDERS_ORDERSALPHA.AsString + ']';

          if (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1) then
            AssignFile(F, str+ '\' + client + '_.txt')
          else
            AssignFile(F, str+ '\' + client + '.txt');

          Rewrite(F);

          dm.Q_ORDERS_LIST.Close;
          dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := 0;
          dm.Q_ORDERS_LIST.Open;

          sum_all_ := 0;

          // Открываем таблицу с гол. типами
          DM.Q_SQL_SPIS.Close;
          DM.Q_SQL_SPIS.SQL.Clear;
          DM.Q_SQL_SPIS.SQL.Add('SELECT HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1');
          DM.Q_SQL_SPIS.Open;

          // Начинаем бегать по каждому голандскому типу
          while not DM.Q_SQL_SPIS.Eof do
          begin
            dm.Q_ORDERS_LIST.Filter := 'HOL_TYPE=''' + DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + ''' AND FL_ORDERS > 0';
            dm.Q_ORDERS_LIST.Filtered := true;

            if (DM.Q_ORDERS_LIST.RecordCount > 0) then
            begin
                if (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1) then
                  WriteLn(F, 'truck  ' + DM.Q_ORDERS_ORDERSN_TRUCK.AsString + #9 + '*'+DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + #9 + client + '_' + #9 + #9 + DM.Q_ORDERSDATE_TRUCK_OUT.AsString)
                else
                  WriteLn(F, 'truck  ' + #9 + '*'+DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + #9 + client + #9 + #9 + DM.Q_ORDERSDATE_TRUCK_OUT.AsString);

                WriteLn(F, '----------------------------------------------------------------');

                sum_ := 0;
                while not DM.Q_ORDERS_LIST.Eof do
                begin
                  // Дина сказала, что не надо здесь учитывать затирку
                  //if (DM.Q_ORDERS_LISTZATIRKA.AsInteger = 0) or (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1) then
                  //begin
                    sum_ := sum_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
                    sum_all_ := sum_all_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
                    WriteLn(F, '  ' + DM.Q_ORDERS_LISTFL_ORDERS.AsString + #9 + '|   | ' + DM.Q_ORDERS_LISTH_NAME_F.AsString);
                    WriteLn(F, #9 + '|   |');
                    WriteLn(F, '----------------------------------------------------------------');
                  //end;

                    DM.Q_ORDERS_LIST.Next;
                end;

                WriteLn(F, 'STEMS' + #9 + IntToStr(sum_));
                WriteLn(F, '');
            end;

            DM.Q_SQL_SPIS.Next;
          end; // while not DM.Q_SQL_SPIS.Eof do
          // -------------------------------------------------------------------------
          DM.Q_SQL_SPIS.Close;

          WriteLn(F, 'TOTAL' + #9 + IntToStr(sum_all_));
          WriteLn(F, '');

          dm.Q_ORDERS_LIST.Filter := '';
          dm.Q_ORDERS_LIST.Filtered := false;

          CloseFile(F);
          MessageBox(Handle, 'Файл создан успешно','',MB_ICONINFORMATION);
  end;     // if DM.Q_ORDERS_ORDERSSSS.AsInteger > 0

end;

procedure Torders_list.N23Click(Sender: TObject);
begin
  if N23.Checked = false then N23.Checked := true else N23.Checked := false;
  Grid_Set;
end;


procedure Torders_list.N25Click(Sender: TObject);
begin
  if N25.Checked = false then N25.Checked := true else N25.Checked := false;
  Grid_Set;
end;



// Загрузить заказ
procedure Torders_list.aLoadOrderExecute(Sender: TObject);
var FullFileName: string;
    conf: textfile;
    Date1, Date2, Client, Email, tmpstr: string;
    z_code, z_q, z_name, err_log, err_log_short, vInfo: string;
begin
  null;
{ Нет смысла использовать
  if not DM.odOrder.Execute then exit;
  FullFileName := DM.odOrder.FileName;

  // Открываем файл с заказом
  try
    AssignFile(conf, FullFileName);
    Reset(conf);
    Readln(conf, Date1);
    Readln(conf, Date2);
    Readln(conf, Client);
    Readln(conf, Email);
    Readln(conf);

    Client := Trim(copy(Client,pos(':',Client)+1,length(Client)-1));
    if Client = '' then
    begin
      MessageBox(Handle, 'Строка с клиентом пустая!', 'Внимание', MB_ICONERROR);
      CloseFile(conf);
      exit;
    end;

    if Not DM.Q_CLIENTS.Locate('nick',Client,[loCaseInsensitive]) then
    begin
      MessageBox(Handle, PChar('Клиент с кодом '+Client+' не найден!'), 'Внимание', MB_ICONERROR);
      CloseFile(conf);
      exit;
    end;

    if (DM.Q_CLIENTSID_CLIENTS.AsInteger <> DM.Q_ORDERS_ORDERSID_CLIENTS.AsInteger) and
      (MessageDlg('Код заказа клиента и код клиента в файле не совпадают! Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrNo) then
    begin
      CloseFile(conf);
      exit;
    end;


    DBCheckBoxEh1.Checked     := false;
    DM.Q_ORDERS_LIST.Filter   := '';
    DM.Q_ORDERS_LIST.Filtered := false;

    err_log := '';
    err_log_short := '';
    vInfo   := '';
    while not Eof(conf) do
    begin
      z_code := '';
      z_q    := '';
      Readln(conf, tmpstr);
      z_code := Trim(copy(tmpstr,pos('.',tmpstr)+1,length(tmpstr)));
      z_code := Trim(copy(z_code,1,pos('.',z_code)-1));
      z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)-1));
      z_name := Trim(copy(tmpstr,1,pos(';',tmpstr)-1));

      if (z_code <> '') and (z_q <> '') then
      begin
        if DM.Q_ORDERS_LIST.Locate('CODE',z_code,[]) or DM.Q_ORDERS_LIST.Locate('bar_CODE',z_code,[]) then
        begin
          DM.Q_ORDERS_LIST.Edit;
          DM.Q_ORDERS_LISTFL_ORDERS.AsInteger := StrToInt(z_q);
          DM.Q_ORDERS_LIST.Post;
        end
        else
        begin
          err_log_short := err_log_short + z_code +';' + z_q + #13#10;
          err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
          //err_log := err_log + z_code +';' + z_q + #13#10;
          vInfo   := vInfo + z_name + ' - ' + z_q + #13#10;
        end;
      end;
    end;

      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set IN_FILE='''+ExtractFileName(FullFileName)+''' where ID_ORDERS_CLIENTS='+IntToStr(DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger);
      DM.Q_SQL.Execute;
      DM.Q_SQL.Close;

    if vInfo <> '' then
    begin
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set miss_code=miss_code||'''+err_log+''', miss_code_short=miss_code_short||'''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger);
      //DM.Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set miss_code=miss_code||'''+err_log+''' where ID_ORDERS_CLIENTS='+IntToStr(DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger);
      DM.Q_SQL.Execute;
      DM.Q_SQL.Close;
    end;

    CloseFile(conf);


    if vInfo <> '' then
    begin
       OpenFormForShow('Заказ обработан успешно'+#13#10+'Коды не найденные в номенклатуре:'+#13#10+vInfo);
    end
    else
       MessageBox(Handle, 'Заказ обработан успешно', 'Результат', MB_ICONINFORMATION);

    //MessageBox(Handle, PChar('Заказ обработан успешно'+#10+'Коды не найденные в номенклатуре:'+#10+err_log), 'Результат', MB_ICONINFORMATION);
  except
     on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
}
end;


// Создание текстового файла для поставщика
procedure Torders_list.aMakeTxtFileExecute(Sender: TObject);
var str, res: string;
begin
  Post_DataExecute(Sender);
  DM.Q_ORDERS_LIST.Refresh;
  str := DM.CheckExportFolder(Handle, DM.Q_ORDERSID_ORDERS.AsInteger);

  if DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1 then
  begin
     res := DM.MakeCSVFile(Handle, DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger, str);
     res := DM.MakeTXTFile(Handle, DM.Q_ORDERSID_ORDERS.AsInteger, str);
  end
  else
     res := DM.MakeTXTFile(Handle, DM.Q_ORDERSID_ORDERS.AsInteger, str);
  ShellExecute(Handle, nil, PChar(res), nil, nil, SW_RESTORE);
end;

// Полная информация
procedure Torders_list.aFullInfoExecute(Sender: TObject);
begin
  if DM.Q_ORDERS_LIST.IsEmpty then exit;

  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.Main_session;
      SelNom.ParamByName('N_ID').Value := DM.Q_ORDERS_LIST.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(first_dialog_frm.def_folder+IntToStr(first_dialog_frm.DBComboBoxEh1.Value)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(first_dialog_frm.def_folder+IntToStr(first_dialog_frm.DBComboBoxEh1.Value)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
end;





// Фильтрация по подтипам
procedure Torders_list.aFilterTypesExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  if (Panel_fill.Visible = false) then
  begin
    grid := DBGridEh1;

    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(first_dialog_frm.DBComboBoxEh1.Value);
    if chbFilterEh.Checked then
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := 1
    else
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := 2;
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid.ClearFilter;
//       if var_ = 1 then
//         grid.FieldColumns['F_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString
//       else
       if chbFilterEh.Checked then
         grid.FieldColumns['F_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString
       else
         grid.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString;
       grid.ApplyFilter;
       grid.SetFocus;
    end;
  end;
end;



// Добавление номенклатуры
procedure Torders_list.mnAddNomClick(Sender: TObject);
begin
  Save_Nom(DM.Q_ORDERS_LISTN_ID.AsInteger);
end;


// Клонирование номенклатуры
procedure Torders_list.mnEditNomClick(Sender: TObject);
begin
  if (DM.Q_ORDERS_LIST.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.Q_ORDERS_LIST.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    NewD          := TNewD.Create(Application);
    try
      NewD.editing  := false;
      NewD.N_ID_    := DM.Q_ORDERS_LIST.FieldByName('N_ID').AsInteger;
      NewD.ShowModal;
    finally
      NewD.Free;
    end;
  end;
  DBGridEh1.SetFocus;
end;


//
//  Записываем номенклатуру
//
procedure Torders_list.Save_Nom(n_id_: integer);
VAR
  FN_ID, FST_ID, S_ID, C_ID, COL_ID, N_ID : integer;
  H_CODE, H_NAME, BAR_CODE, LEN, PACK, HOL_TYPE, WEIGHT, DIAMETER,CUST_COEF : Variant;
  REMARKS: String;
  VBN : Integer;
begin
  NewInvNomF := TNewInvNomF.Create(Application);
  try
    NewInvNomF.CUR_DEPT_ID := first_dialog_frm.DBComboBoxEh1.Value;
    NewInvNomF.FN_ID       := DM.Q_ORDERS_LISTFN_ID.AsInteger;
    NewInvNomF.FT_ID       := DM.Q_ORDERS_LISTFT_ID.AsInteger;
    NewInvNomF.FST_ID      := DM.Q_ORDERS_LISTFST_ID.AsInteger;
    NewInvNomF.C_ID        := DM.Q_ORDERS_LISTC_ID.AsInteger;
    NewInvNomF.S_ID        := DM.Q_ORDERS_LISTS_ID.AsInteger;
    NewInvNomF.COL_ID      := DM.Q_ORDERS_LISTCOL_ID.AsInteger;
    NewInvNomF.HT_ID       := DM.Q_ORDERS_LISTHT_ID.AsInteger;
    NewInvNomF.Edit1.Text  := DM.Q_ORDERS_LISTH_CODE.AsString;
    NewInvNomF.Edit2.Text  := DM.Q_ORDERS_LISTF_NAME.AsString;
    NewInvNomF.Edit3.Text  := '';
    NewInvNomF.Edit4.Text  := DM.Q_ORDERS_LISTLEN.AsString;
    NewInvNomF.Edit5.Text  := DM.Q_ORDERS_LISTPACK.AsString;
    NewInvNomF.Edit8.Text  := '1';
    if (DM.Q_ORDERS_LISTVBN.AsInteger = 1) then
      NewInvNomF.vbn_box.Checked     := true
    else
      NewInvNomF.vbn_box.Checked     := false;

    if (NewInvNomF.ShowModal = mrOk) then
    begin
     // Если все нормально до добавляем новую номенклатуру
     FN_ID  := NewInvNomF.lookcombo_name.EditValue; // DBComboBoxEh1.Value;
     FST_ID := NewInvNomF.lookcombo_subtype.EditValue;
     C_ID   := NewInvNomF.lookcombo_country.EditValue;
     S_ID   := NewInvNomF.lookcombo_suplier.EditValue;
     COL_ID := NewInvNomF.lookcombo_color.EditValue;
     HOL_TYPE := NewInvNomF.lookcombo_htype.EditText;

     H_CODE := StrToVar(NewInvNomF.Edit1.Text);
     H_NAME := StrToVar(NewInvNomF.Edit2.Text);
     BAR_CODE := StrToVar(NewInvNomF.Edit3.Text);
     LEN := StrToVarInt(NewInvNomF.Edit4.Text);
     PACK := StrToVarFloat(NewInvNomF.Edit5.Text);
     WEIGHT := StrToVarFloat(NewInvNomF.Edit6.Text);
     DIAMETER := StrToVarFloat(NewInvNomF.Edit7.Text);
     CUST_COEF := StrToVarFloat(NewInvNomF.Edit8.Text);
     REMARKS := NewInvNomF.Edit9.Text;
     if NewInvNomF.vbn_box.Checked then VBN := 1
                        else VBN := 0;

     with DM.Q_SQL do
     Begin
        Close;
        SQL.Clear;
        SQL.Add('begin NOMENCLATURE_PKG.BAR_CODE_EXIST(:IN_BAR_CODE, :IN_ID_); end;');
        ParamByName('IN_BAR_CODE').Value := BAR_CODE;
        ParamByName('IN_ID_').AsInteger     := 0;
        Execute;
        if ParamByName('IN_ID_').Value = 1 then
        Begin
          ShowMessage('Такой внешний штрих-код уже есть в БД!');
          BAR_CODE := NULL;
        End;
     End;

     try
        with DM.store_exec do
        Begin
          Close;
          StoredProcName := 'NOMENCLATURE_PKG.EDIT_NOM';
          Prepare;
          ParamByName('N_ID_').Value := n_id_;
          ParamByName('FN_ID_').Value := FN_ID;
          ParamByName('FST_ID_').Value := FST_ID;
          ParamByName('S_ID_').Value := S_ID;
          ParamByName('C_ID_').Value := C_ID;
          ParamByName('H_CODE_').Value := H_CODE;
          ParamByName('H_NAME_').Value := H_NAME;
          ParamByName('LEN_').Value := LEN;
          ParamByName('PACK_').Value := PACK;
          ParamByName('COL_ID_').Value := COL_ID;
          ParamByName('VBN_').Value := VBN;
          ParamByName('HOL_TYPE_').Value := HOL_TYPE;
          ParamByName('WEIGHT_').Value := WEIGHT;
          ParamByName('DIAMETER_').Value := DIAMETER;
          ParamByName('BAR_CODE_').Value := BAR_CODE;
          ParamByName('CUST_COEF_').Value := CUST_COEF;
          ParamByName('REMARKS_').Value := REMARKS;
          ParamByName('IN_ID_').Value := 0;
          Execute;

          // Если не добавляем новую позицию, то ругаемся
          if ParamByName('IN_ID_').Value < 1 then
              MessageBox(Application.Handle, PChar(ParamByName('out_text').AsString), 'Ошибка', MB_ICONWARNING)
          else
          // Если добавляем новую позицию, то добавляем спецификации
          begin
            N_ID := ParamByName('IN_ID_').Value;
            BitBtn9Click(nil);
            DM.Q_ORDERS_LIST.Locate('N_ID',N_ID,[]);
          end;
        end;
     except
        on E: Exception do MessageBox(Application.Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING)
     end;
    end;
  finally
    NewInvNomF.Free;
  end;
end;


// Копирование значения в буфер обмена
procedure Torders_list.mnCopyToClipBoardClick(Sender: TObject);
begin
  clipboard.SetTextBuf(PChar(VarToStr(DBGridEh1.SelectedField.Value)));
end;


// Синхронизация веса по позиции во всем заказе
procedure Torders_list.mnSyncWeightClick(Sender: TObject);
begin

  try
    pnl_msg := TPanel(MakePanelLabel(Panel6,300,100,'Идет обработка...'));
    pnl_msg.Repaint;

    with DM.Q_SQL do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin PACK_ORDERS.sync_weight(:vIdOrder, :vN_ID); end;');
      ParamByName('vIdOrder').AsInteger :=  DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger;
      ParamByName('vN_ID').AsInteger    :=  DM.Q_ORDERS_LISTN_ID.AsInteger;
      Execute;
    End;

    DM.Q_ORDERS_LIST.Refresh;
    DBGridEh1.SumList.RecalcAll;

  finally
    pnl_msg.free;
  end;
end;



end.
