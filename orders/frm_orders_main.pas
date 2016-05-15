unit frm_orders_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, ActnList, PI_Library, DBGridEhImpExp, StrUtils,
  GridsEh, DB, Menus, dxBar, dxBarExtItems, cxClasses, ShellAPI, IniFiles, frxClass, PI_Library_reg,
  DBGridEhGrouping, cxImageComboBox, cxDropDownEdit, ImgList, cxGraphics,
  cxBarEditItem, cxCalendar, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGridLevel, cxGrid, cxCheckBox;

type
  Torders_main = class(TForm)
    Panel5: TPanel;
    Panel4: TPanel;
    ActionList1: TActionList;
    add: TAction;
    edit: TAction;
    del: TAction;
    Ctrl_Enter: TAction;
    filter_on: TAction;
    filter_off: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    dbcMain: TdxBarDockControl;
    N6: TMenuItem;
    mnJoin: TMenuItem;
    bmOrders: TdxBarManager;
    bm_debtBar2: TdxBar;
    dxBarStatic6: TdxBarStatic;
    blbRefresh: TdxBarLargeButton;
    blbAdd: TdxBarLargeButton;
    blbEdit: TdxBarLargeButton;
    blbDel: TdxBarLargeButton;
    bkbFindOrder: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    blbCargo: TdxBarLargeButton;
    blbPrint: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarStatic13: TdxBarStatic;
    dxBarStatic14: TdxBarStatic;
    dxBarStatic15: TdxBarStatic;
    dxBarStatic16: TdxBarStatic;
    dxBarStatic17: TdxBarStatic;
    bbPrintList: TdxBarButton;
    bbPrintRaport: TdxBarButton;
    imgOffice: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    blbFiles: TdxBarLargeButton;
    bc_fontsize: TcxBarEditItem;
    barOrders: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    bpmPrint: TdxBarPopupMenu;
    pmPrintStock: TdxBarButton;
    pmPrintList: TdxBarButton;
    bpmFiles: TdxBarPopupMenu;
    bbFileSup: TdxBarButton;
    bbFileMSK: TdxBarButton;
    blbLoadFile: TdxBarLargeButton;
    aLoadFile: TAction;
    bkbOldOrderLoad: TdxBarLargeButton;
    dxBarStatic5: TdxBarStatic;
    aLoadFromBDF: TAction;
    aStatistic: TAction;
    dxBarStatic18: TdxBarStatic;
    dxBarStatic19: TdxBarStatic;
    dxBarStatic20: TdxBarStatic;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    pnlDateSet: TPanel;
    de_begin: TcxDateEdit;
    de_end: TcxDateEdit;
    mnSeperateOrder: TMenuItem;
    grOrders_l: TcxGridLevel;
    grOrders: TcxGrid;
    grOrders_v: TcxGridDBBandedTableView;
    grOrders_vID_ORDERS: TcxGridDBBandedColumn;
    grOrders_vINVOICE: TcxGridDBBandedColumn;
    grOrders_vD_DATE: TcxGridDBBandedColumn;
    grOrders_vDATE_TRUCK: TcxGridDBBandedColumn;
    grOrders_vINFO: TcxGridDBBandedColumn;
    grOrders_vNUMM: TcxGridDBBandedColumn;
    grOrders_vNN: TcxGridDBBandedColumn;
    grOrders_vDATE_TRUCK_OUT: TcxGridDBBandedColumn;
    grOrders_vCHECKED: TcxGridDBBandedColumn;
    grOrders_vDIST_IND_ID: TcxGridDBBandedColumn;
    grOrders_vORDER_SEQ: TcxGridDBBandedColumn;
    grOrders_vS_ID: TcxGridDBBandedColumn;
    grOrders_vS_NAME_RU: TcxGridDBBandedColumn;
    grOrders_vSUM_PRICE: TcxGridDBBandedColumn;
    grOrders_vHAVE_NOTVALID_FLOWERS: TcxGridDBBandedColumn;
    bbFileXLS: TdxBarButton;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure filter_onExecute(Sender: TObject);
    procedure filter_offExecute(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnToMSKClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure mnJoinClick(Sender: TObject);
    procedure aLoadFileExecute(Sender: TObject);
    procedure bkbOldOrderLoadClick(Sender: TObject);
    procedure aLoadFromBDFExecute(Sender: TObject);
    procedure aStatisticExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure de_beginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure de_beginPropertiesEditValueChanged(Sender: TObject);
    procedure mnSeperateOrderClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure grOrders_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbFileXLSClick(Sender: TObject);
  private
    pnl_msg: TPanel;
    { Private declarations }
  public
    function isEditable: boolean;
    { Public declarations }
  end;

var
  orders_main: Torders_main;

implementation

uses frm_DM, new_order_f, frm_orders_clients, frm_first_dialog,
  show_track_f, raznos_f, frm_orders_list, UFindClient, ULoadOldOrder,
  UExportDBF;

{$R *.dfm}

function Torders_main.isEditable: boolean;
begin
  if (dm.Q_ORDERSDATE_TRUCK.AsDateTime < now) or (dm.q_ordersDIST_IND_ID.AsInteger > 0) then
  begin
    Application.MessageBox('Заказ нельзя изменить!','Внимание',MB_ICONWARNING);
    result := false;
  end
  else result := true;
end;


// Подгрузка заказа из файла
procedure Torders_main.aLoadFileExecute(Sender: TObject);
begin
  if first_dialog_frm.uOrderFormat then
    DM.odOrder.FilterIndex := 2
  else
    DM.odOrder.FilterIndex := 1;

  if not DM.odOrder.Execute then exit;

  try
    pnl_msg := TPanel(MakePanelLabel(Panel4,300,100,'Идет обработка заказа'));
    pnl_msg.Repaint;

    if first_dialog_frm.uOrderFormat then
      DM.UpploadOrderFromInetNewSite(Handle, DM.odOrder.FileName, 0)
    else
      DM.UpploadOrderFromInet(Handle, DM.odOrder.FileName, 0);

  finally
    pnl_msg.Free;
  end;
end;


//
//  Добавление заказа
//
procedure Torders_main.BitBtn10Click(Sender: TObject);
begin
  new_order := Tnew_order.Create(Application);
  try
    new_order.Caption := '  Новый заказ';
    new_order.f_edit := 1;
    new_order.Memo1.Text := '';
    if first_dialog_frm.uSupplier > 0 then new_order.lookcombo_suplier.EditValue := first_dialog_frm.uSupplier;

    if (new_order.showmodal = mrOK) then
       DBGridEh1DblClick(self);

    FormShow(self);
  finally
    new_order.Free;
  end;
end;



procedure Torders_main.BitBtn13Click(Sender: TObject);
begin
  close;
end;


//
//  Редактироване заказа
//
procedure Torders_main.BitBtn11Click(Sender: TObject);
begin
  if (DM.Q_ORDERSID_ORDERS.AsInteger > 0) then
  begin
    // Выполнение блокировки редактируемой записи
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.check_order(:P0, :P1, :P2, :P3, :num_); end;');
    DM.Q_SQL.ParamByName('P0').Value := DM.Q_ORDERS.FieldByName('ID_ORDERS').Value;
    DM.Q_SQL.ParamByName('P2').AsDateTime := DM.Q_ORDERS.FieldByName('DATE_TRUCK').AsDateTime;
    DM.Q_SQL.ParamByName('P3').AsDateTime := DM.Q_ORDERS.FieldByName('D_DATE').AsDateTime;
    DM.Q_SQL.ParamByName('num_').Value := 0;

    try
      DM.Q_SQL.Execute;

      if DM.Q_SQL.ParamByName('num_').AsInteger > 0 then
      begin
        new_order := Tnew_order.Create(Application);
        try
          new_order.Caption := '  Редактор заказа';
          new_order.f_edit := 2;
          new_order.DateTimePicker1.Value := DM.Q_ORDERSD_DATE.AsDateTime;
          new_order.DateTimePicker2.Value := DM.Q_ORDERSDATE_TRUCK.AsDateTime;
          new_order.DateTimePicker3.Value := DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime;
          new_order.lookcombo_suplier.EditValue := DM.Q_ORDERSS_ID.AsInteger;
          new_order.Memo1.Text := DM.Q_ORDERSINFO.AsString;
          new_order.lcb_prices.Tag := DM.Q_ORDERSold_price.AsInteger;
          new_order.showmodal;
        finally
          new_order.Free;
        end;
      end
      else raise Exception.CreateFmt('Данные редактируются другим пользователем!',[]);
    except
      on E: Exception do
      begin
          DM.Q_ORDERS.Refresh;
          ShowMessage('Ошибка!'#13#10+E.Message);
      end;
    End;
  end else ShowMessage('Нет данных для редактирования!');
  FormShow(self);
end;


//
//  Удаление заказа
//
procedure Torders_main.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
    if (DM.Q_ORDERS.RecordCount > 0) then
    begin
      if not isEditable then exit;
      
      if MessageDlg('Вы действительно хотите удалить заказ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          // Удаление заказа
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('UPDATE ORDERS SET ACTIVE=0 WHERE ID_ORDERS = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;

          DM.Q_ORDERS.Next;
          idd := DM.Q_ORDERSID_ORDERS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.Main_session.Commit;
            DM.Q_ORDERS.Refresh;
            DM.Q_ORDERS.Locate('ID_ORDERS',idd,[]);
          except
            on E: Exception do  ShowMessage('Ошибка!'#13#10+E.Message);
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
    FormShow(self);
end;


//
//  Просмотр списка клиентов в заказе
//
procedure Torders_main.DBGridEh1DblClick(Sender: TObject);
begin
  if DM.Q_ORDERSID_ORDERS.AsInteger > 0 then
  begin
    orders_clients := Torders_clients.Create(Application);
    try
      DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(DM.Main_session.Username);
      DM.Q_ORDERS_ORDERS.Open;

      orders_clients.Panel2.Caption := ' ' + first_dialog_frm.DBComboBoxEh1.Text + ' ';
      orders_clients.add.Enabled := first_dialog_frm.edit;
      orders_clients.del.Enabled := first_dialog_frm.delete;
      orders_clients.aLoadOrder.Enabled := first_dialog_frm.edit;
      orders_clients.raznoss.Enabled := first_dialog_frm.edit;
      orders_clients.mnIntoTruck.Enabled := first_dialog_frm.edit;

      orders_clients.print_order.Enabled := first_dialog_frm.print;
      orders_clients.pmPrintOrder.Enabled := first_dialog_frm.print;
      orders_clients.pmPrintTrolls.Enabled := first_dialog_frm.print;
      orders_clients.ShowModal;
      DM.Q_ORDERS_ORDERS.Close;
      DM.Q_ORDERS.RefreshRecord;
    finally
      orders_clients.Free;
    end;
  end
  else ShowMessage('Нет данных для просмотра');
end;


procedure Torders_main.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  path: string;
begin
  path := ExtractFilePath(Application.ExeName);
  AOptions := [];
  AStoreKey     := path + '/ini/orders_tbl_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'MainTable';
  grOrders_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

procedure Torders_main.FormCreate(Sender: TObject);
begin
  de_begin.Properties.OnEditValueChanged := nil;
  de_end.Properties.OnEditValueChanged := nil;
  de_begin.EditValue := Now - 14;
  de_end.EditValue   := Now + 30;
  de_begin.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;
  de_end.Properties.OnEditValueChanged := de_beginPropertiesEditValueChanged;
end;

procedure Torders_main.FormShow(Sender: TObject);
var AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
    path: string;
begin
  path   := ExtractFilePath(Application.ExeName);
  AOptions := [];
  AStoreKey := path + '/ini/orders_tbl_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'MainTable';
  grOrders_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  grOrders.Font.Size  := first_dialog_frm.uFont;
  grOrders.SetFocus;
end;



procedure Torders_main.grOrders_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var var1, var2: Variant;
begin
  if ( AViewInfo.Selected  = false) then
  begin
    var1 := grOrders_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grOrders_v.GetColumnByFieldName('DATE_TRUCK').Index
            );
    var2 := grOrders_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grOrders_v.GetColumnByFieldName('DIST_IND_ID').Index
            );
    if (var1 < now) or (var2 > 0) then
    begin
      ACanvas.Brush.Color := TColor($00E6E6E6);
    end;
  end;

  if DM.id_office = 1 then
  begin
    if (grOrders_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'HAVE_NOTVALID_FLOWERS') then
    begin
      var1 := grOrders_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grOrders_v.GetColumnByFieldName('HAVE_NOTVALID_FLOWERS').Index
                );
      If (var1 > 0) then
      begin
        ACanvas.Brush.Color := clRed;
      end;
    end;
  end;
end;

//
// Обновление данных
//
procedure Torders_main.SpeedButton4Click(Sender: TObject);
var i: integer;
begin
  i := DM.Q_ORDERSID_ORDERS.AsInteger;
  de_begin.PostEditValue;
  de_end.PostEditValue;
  DM.Q_ORDERS.ParamByName('d1').AsDate := de_begin.EditValue;
  DM.Q_ORDERS.ParamByName('d2').AsDate := de_end.EditValue;
  DM.Q_ORDERS.Refresh;
  DM.Q_ORDERS.Locate('ID_ORDERS', i, []);
  grOrders.SetFocus;
end;


//
// Печать списка клиентов
//
procedure Torders_main.BitBtn4Click(Sender: TObject);
begin
  if ( Dm.Q_ORDERSNUMM.AsInteger > 0 ) and ( pmPrintList.Enabled = true ) then
  begin
    try
      if DM.Q_ORDERS_ORDERS.Active = false then
      begin
        DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := ''; //UpperCase(DM.Main_session.Username);
        dm.Q_ORDERS_ORDERS.Open;
      end;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_list.fr3');
      DM.frxReport1.ShowReport;
      dm.Q_ORDERS_ORDERS.Close;
      grOrders.SetFocus;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
  end;
  FormShow(self);
end;


//
//  Подготовка файлов к отправке
//
procedure Torders_main.BitBtn7Click(Sender: TObject);
{
var str, client, sql2, path2: string;
    hol_date, head_str, detail_str: string;
    F, F4, conf, F_CSV: textfile;
    aaa, sum_, sum_all_: integer;
    Ch: Char;
}
var str, res: string;
begin
  if ( Dm.Q_ORDERSNUMM.AsInteger = 0 ) or ( bbFileSup.Enabled = false ) then exit;

  try
    pnl_msg := TPanel(MakePanelLabel(Panel4,300,100,'Идет обработка заказа'));
    pnl_msg.Repaint;

    DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := ''; //UpperCase(DM.Main_session.Username);
    DM.Q_ORDERS_ORDERS.Open;
    DM.Q_ORDERS_ORDERS.Filter := 'PACK_ = 1';
    DM.Q_ORDERS_ORDERS.Filtered := true;

//    if DM.Q_ORDERS_ORDERS.IsEmpty then exit;

    str := DM.CheckExportFolder(Handle, DM.Q_ORDERSID_ORDERS.AsInteger);
    DM.Q_ORDERS_ORDERS.First;
    while not DM.Q_ORDERS_ORDERS.Eof do
    begin
      dm.Q_ORDERS_LIST.Close;
      dm.Q_ORDERS_LIST.ParamByName('ADDIT_').AsInteger := 0;
      dm.Q_ORDERS_LIST.ParamByName('ID_DEP_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
      dm.Q_ORDERS_LIST.ParamByName('ID_CL_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
      dm.Q_ORDERS_LIST.ParamByName('id_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
      dm.Q_ORDERS_LIST.ParamByName('spec_').AsInteger := 1;
      dm.Q_ORDERS_LIST.ParamByName('TRUC_DATE_').AsDate := DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime; //DM.Q_ORDERSDATE_TRUCK.AsDateTime;
      dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := 0;
      dm.Q_ORDERS_LIST.Open;
      dm.Q_ORDERS_LIST.Filter := 'FL_ORDERS > 0';
      dm.Q_ORDERS_LIST.Filtered := true;

      res := DM.MakeCSVFile(Handle, DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger, str);
      res := DM.MakeTXTFile(Handle, DM.Q_ORDERSID_ORDERS.AsInteger, str);

      DM.Q_ORDERS_ORDERS.Next;
    end;

    DM.MakeTXTFileByTruck(Handle, DM.Q_ORDERSID_ORDERS.AsInteger, str);

    MessageBox(Handle, 'Генерация файлов прошла успешно','Результат...',MB_ICONINFORMATION);
    ShellExecute(Handle, nil, PChar(str), nil, nil, SW_RESTORE);

  finally
    dm.Q_ORDERS_LIST.Close;
    dm.Q_ORDERS_LIST.Filter := '';
    dm.Q_ORDERS_LIST.Filtered := false;
    DM.Q_ORDERS_ORDERS.Close;
    DM.Q_ORDERS_ORDERS.Filter := '';
    DM.Q_ORDERS_ORDERS.Filtered := false;
    pnl_msg.free;
  end;

end;






//
// Применяем фильтр
//
procedure Torders_main.filter_onExecute(Sender: TObject);
begin
//  DBGridEh1.ApplyFilter;
end;


//
// Отменяем фильтр
//
procedure Torders_main.filter_offExecute(Sender: TObject);
begin
  grOrders_v.DataController.Filter.Clear;
  grOrders_v.DataController.Filter.Active := false;
end;

procedure Torders_main.de_beginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then SpeedButton4Click(Sender);
end;


procedure Torders_main.de_beginPropertiesEditValueChanged(Sender: TObject);
begin
  SpeedButton4Click(Sender);
end;

//
//  Поиск заказа
//
procedure Torders_main.BitBtn8Click(Sender: TObject);
var idd2: integer;
begin
  frm_find_client := Tfrm_find_client.Create(Application);
  try
    DM.Q_CLIENTS.Open;
    frm_find_client.DBGridEh2.SumList.Active := true;
    frm_find_client.cds_client_orders.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
    frm_find_client.cds_client_orders.Open;
    if (frm_find_client.ShowModal = mrOk) then
    begin
       idd2 := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;
       DM.Q_SQL.SQL.Clear;
       DM.Q_SQL.SQL.Add('begin copy_order(:ID_ORDER, :ID_CL_ORDER, :user_, :isJoin); end;');
       DM.Q_SQL.ParamByName('ID_CL_ORDER').AsInteger := frm_find_client.cds_client_orders.FieldByName('id_orders_clients').AsInteger;
       DM.Q_SQL.ParamByName('ID_ORDER').AsInteger := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;
       DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
       DM.Q_SQL.ParamByName('isJoin').AsInteger := 0;
       DM.Q_SQL.Execute;

       DM.Q_ORDERS.Refresh;
       DM.Q_ORDERS.Locate('ID_ORDERS',idd2,[]);

       ShowMessage('Заказ клиента помещен в новый заказ!');
       grOrders.SetFocus;
    end;
  finally
    frm_find_client.Free;
  end;
end;


// Файлы для Андрея
procedure Torders_main.btnToMSKClick(Sender: TObject);
var str, tmp_str, client, client2, path2, clientFile: string;
    hol_date, head_str, detail_str, detail_str2, detail_str_new: string;
    conf, conf_msk, conf_msk_new: textfile;
    RegIni : TIniFile;
    m : TStrArray;
    i: integer;
    z_code, z_q, z_name, tmpstr: string;
begin
  if not DM.Q_ORDERS.Active or DM.Q_ORDERS.IsEmpty or (Dm.Q_ORDERSNUMM.AsInteger = 0) or not bbFileMSK.Enabled then exit;

  // Открываем файл с настройками
  try
    AssignFile(conf, first_dialog_frm.path+'connections/connections.txt');
    Reset(conf);
    Readln(conf, path2);
    CloseFile(conf);
  except
     on E: Exception do
     begin
        MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
        exit;
     end;
  End;


  RegIni := TIniFile.Create(first_dialog_frm.path+'orders.ini');
  try
    client     := RegIni.ReadString('Client', 'value', '');
    client2    := RegIni.ReadString('Client2', 'value', '');
    clientFile := RegIni.ReadString('ClientFile', 'value', '');
  finally
    RegIni.Free;
  end;


  try
    Screen.Cursor := crHourGlass;

    // Создание папки с датой заказа -------------------------------------------
    str := DM.Q_ORDERSDATE_TRUCK_OUT.AsString;
    if str = '' then str := DM.Q_ORDERSDATE_TRUCK.AsString;
    
    hol_date := str[1]+str[2]+str[4]+str[5]+str[7]+str[8]+str[9]+str[10];
    str := path2 + str[1]+str[2]+'_'+str[4]+str[5]+'_'+str[7]+str[8]+str[9]+str[10]+'_'+DM.Q_ORDERSS_ID.AsString;

    if not DirectoryExists(str) then
    if not CreateDir(str) then
    begin
       raise Exception.Create('Cannot create '+str);
       exit;
    end;
    // -------------------------------------------------------------------------

    // Создание папок внутри папки заказа ----------------------------------
    if not DirectoryExists(str+'\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK') then
    if not CreateDir(str+'\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK') then
    begin
       raise Exception.Create('Cannot create '+str);
       exit;
    end;
    // -------------------------------------------------------------------------

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin pack_orders.get_order_for_msk(:id_order_, :CURSOR_); end;');
    DM.Q_SQL.ParamByName('id_order_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.ParamByName('CURSOR_').DataType := ftCursor;
    DM.Q_SQL.Open;

    if (DM.Q_SQL.RecordCount = 0) then exit;

{
    // Создаем CSV файл ------------------------------------------------
    if clientFile <> '' then
      tmp_str := str+ '\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK\' + clientFile + '.txt'
    else
      tmp_str := str+ '\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK\' + client[1]+client[2] + '.txt';
ShowMessage(tmp_str);

    AssignFile(conf, tmp_str);
    Rewrite(conf);
ShowMessage('5');
}
    if clientFile <> '' then
      tmp_str := str+ '\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK\' + clientFile + '_msk.csv'
    else
      tmp_str := str+ '\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK\' + client[1]+client[2] + '_msk.csv';
{
    AssignFile(conf_msk, tmp_str+'.txt');
    Rewrite(conf_msk);
ShowMessage('6');
}
    AssignFile(conf_msk_new, tmp_str);
    Rewrite(conf_msk_new);
    // -----------------------------------------------------------------
{
    head_str := 'DATE1:'+ FormatDateTime('yyyy-mm-dd',DM.Q_ORDERSDATE_TRUCK.AsDateTime);
    WriteLn(conf, head_str);
    WriteLn(conf_msk, head_str);
    head_str := 'DATE2:'+ FormatDateTime('yyyy-mm-dd',DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime);
    WriteLn(conf, head_str);
    WriteLn(conf_msk, head_str);

    head_str := 'USER:'+client;
    WriteLn(conf, head_str);
    head_str := 'USER:'+client2;
    WriteLn(conf_msk, head_str);

    head_str := 'EMAIL:info@starlight.ru';
    WriteLn(conf, head_str);
    WriteLn(conf_msk, head_str);
    head_str := 'CODE;QTY';
    WriteLn(conf, head_str);
    WriteLn(conf_msk, head_str);
}

    WriteLn(conf_msk_new, 'order:	'+DM.Q_ORDERSID_ORDERS.AsString);
    WriteLn(conf_msk_new, 'ortype:	2');
    WriteLn(conf_msk_new, 'depid:	3');
    head_str := 'date: '+ FormatDateTime('dd-mm-yyyy',Now);
    WriteLn(conf_msk_new, head_str);
    WriteLn(conf_msk_new, 'office: '+VarToStr(first_dialog_frm.cbOffices.EditValue));
    WriteLn(conf_msk_new, 'depart: '+first_dialog_frm.DBComboBoxEh1.EditText);
    WriteLn(conf_msk_new, 'login:	'+client2);
    WriteLn(conf_msk_new, 'bcode:	0');
    WriteLn(conf_msk_new, 'name:	'+DM.Main_session.Username);
    WriteLn(conf_msk_new, 'email:	info@starlight.ru');
    WriteLn(conf_msk_new, 'phone:');
    WriteLn(conf_msk_new, 'city:');
    WriteLn(conf_msk_new, 'addr:');
    WriteLn(conf_msk_new, 'summ:	'+DM.Q_ORDERSSUM_PRICE.AsString);
    WriteLn(conf_msk_new, 'rem:');
    WriteLn(conf_msk_new, 'departure:	'+FormatDateTime('yyyy-mm-dd',DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime) ); // 2015-06-17
    WriteLn(conf_msk_new, 'arrive:	'+FormatDateTime('yyyy-mm-dd',DM.Q_ORDERSDATE_TRUCK.AsDateTime) ); // 2015-06-21
    WriteLn(conf_msk_new, '');
    WriteLn(conf_msk_new, '--');
    WriteLn(conf_msk_new, '#;depart_id;barcode;title;price;qty;summ');
{
order:	1016
ortype:	2
depid:	3
date:	10-03-2015 11:52
office:	Старлайт Москва
depart:	Срезанные цветы
login:	chist
bcode:	3
name:	Чистяков Сергей Владимирович
email:	chist@pridelab.ru
phone:	+7 (926) 602-9956
city:	Домодедово
addr:	ул.Савецкая
summ:	0.00
rem:
arrive:

--
#;depart_id;barcode;title;price;qty;summ
}

    DM.Q_SQL.First;
    while not DM.Q_SQL.Eof do
    begin
//        detail_str := DM.Q_SQL.FieldByName('code').AsString + ';' + DM.Q_SQL.FieldByName('quantity').AsString + ';' + DM.Q_SQL.FieldByName('COMPILED_NAME_OTDEL').AsString;
        detail_str_new := IntToStr(DM.Q_SQL.RecNo) + ';' +
          DM.Q_SQL.FieldByName('dept').AsString + ';' +
          DM.Q_SQL.FieldByName('code').AsString + ';' +
          DM.Q_SQL.FieldByName('COMPILED_NAME_OTDEL').AsString + ';' +
          DM.Q_SQL.FieldByName('price').AsString + ';' +
          DM.Q_SQL.FieldByName('quantity').AsString  + ';' +
          DM.Q_SQL.FieldByName('summ').AsString;
        if (DM.Q_SQL.FieldByName('quantity').AsString <> '') and (DM.Q_SQL.FieldByName('quantity').AsInteger <> 0) then
        begin
//          WriteLn(conf, detail_str);
//          WriteLn(conf_msk, detail_str);
          WriteLn(conf_msk_new, detail_str_new);
        end;
        DM.Q_SQL.Next;
    end; // while not DM.Q_ORDERS_ORDERS.Eof do
{
    // Добавить в файл все нераспознанные данные -----------------------
    DM.Q_ORDERS_ORDERS.Open;
    while not DM.Q_ORDERS_ORDERS.Eof do
    begin
      if (DM.Q_ORDERS_ORDERSISMISSCODE.AsInteger = 1) then
      begin
        m:=split(DM.Q_ORDERS_ORDERSMISS_CODE.AsString);
        for I := 0 to Length(m)-1 do
        begin
          tmpstr :=  m[i]; //DM.Q_ORDERS_ORDERSMISS_CODE.AsString;
          z_code := Trim(copy(tmpstr,pos('.',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(z_code,1,pos('.',z_code)-1));
          z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)-1));
          z_name := Trim(copy(tmpstr,1,pos(';',tmpstr)-1));
          if (z_code <> '') and (z_q <> '') then
          begin
            WriteLn(conf, trim(z_code)+';'+trim(z_q)+';'+trim(z_name));
            WriteLn(conf_msk, trim(tmpstr));
          end;
        end;

        //WriteLn(conf, trim(DM.Q_ORDERS_ORDERS.FieldByName('MISS_CODE').AsString) );
      end;
      DM.Q_ORDERS_ORDERS.Next;
    end;

    DM.Q_ORDERS_ORDERS.Close;
    // -----------------------------------------------------------------
}
  finally
    DM.Q_SQL.Close;
    Screen.Cursor := crDefault;

//    CloseFile(conf);
//    CloseFile(conf_msk);
    CloseFile(conf_msk_new);
    MessageBox(Handle, PChar('Файл сформирован успешно.'), 'Результат', MB_ICONINFORMATION);
    ShellExecute(Handle, nil, PChar(str+'\'+DM.Q_ORDERSID_ORDERS.AsString+'_MSK'), nil, nil, SW_RESTORE);
  end;
end;



// Печать стока
procedure Torders_main.btnPrintClick(Sender: TObject);
var RegIni : TIniFile;
    vSTOK, vDAYS: integer;
    path: string;
    memo: TfrxMemoView;
begin
  path   := first_dialog_frm.path+'orders.ini';
  RegIni := TIniFile.Create(path);
  try
    vSTOK  := RegIni.ReadInteger('STOK', 'value', 0);
  finally
    RegIni.Free;
  end;

    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('SELECT OFFICE_NAME FROM OFFICES where id_office='+inttostr(dm.id_office));
      DM.Q_SQL.Open;

      dm.cdsOrderMSK.Close;
      dm.cdsOrderMSK.ParamByName('pClient').AsInteger  := vSTOK;
      dm.cdsOrderMSK.ParamByName('pOrder').AsInteger   := DM.Q_ORDERSID_ORDERS.AsInteger;
      dm.cdsOrderMSK.Open;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_msk.fr3');

      memo := DM.frxReport1.FindObject('MemoOffice') as TfrxMemoView;
      memo.Text := DM.Q_SQL.FieldByName('OFFICE_NAME').AsString;

      DM.frxReport1.ShowReport;

      DM.cdsOrderMSK.Close;
      DM.Q_SQL.Close;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
end;


//
// Объединение отмеченных инвойсов в новый заказ для дальнейшей разноски
procedure Torders_main.mnJoinClick(Sender: TObject);
var tmpStr: string;
    pID: integer;
begin
  if not DM.Q_ORDERS.Active or DM.Q_ORDERS.IsEmpty then exit;

  try
    tmpStr := '';
    DM.Q_ORDERS.First;
    DM.Q_ORDERS.DisableControls;
    while not DM.Q_ORDERS.Eof do
    begin
      if DM.Q_ORDERSCHECKED.AsInteger = 1 then
        tmpStr := tmpStr + DM.Q_ORDERSID_ORDERS.AsString + ', ';
      DM.Q_ORDERS.Next;
    end;
    if length(tmpStr) > 1 then
    begin
      tmpStr := copy(tmpStr,1,length(tmpStr)-2);

      pID := 0;
      // Заведем общий заказ
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin pack_orders.join_orders(:vOrders, :vOutID); end;');
      DM.Q_SQL.ParamByName('vOrders').AsString := tmpStr;
      DM.Q_SQL.ParamByName('vOutID').AsInteger  := pID;
      DM.Q_SQL.Execute;
      pID := DM.Q_SQL.ParamByName('vOutID').AsInteger;

      DM.Q_ORDERS.Refresh;
      DM.Q_ORDERS.Locate('ID_ORDERS',pID,[]);

    end;
  finally
    DM.Q_ORDERS.EnableControls;
  end;
end;


procedure Torders_main.mnSeperateOrderClick(Sender: TObject);
begin
  if not DM.Q_ORDERS.Active or DM.Q_ORDERS.IsEmpty then exit;
  if not isEditable then exit;

  try
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.seperate_order_by_supplier(:pOrder); end; ');
    DM.Q_SQL.ParamByName('pOrder').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.Execute;
    MessageBox(Handle, PChar('Сформирован новый заказ на других поставщиков.'), 'Результат', MB_ICONINFORMATION);
  finally
    DM.Q_ORDERS.Refresh;
  end;

end;

procedure Torders_main.PopupMenu1Popup(Sender: TObject);
begin
  mnSeperateOrder.Enabled := DM.Q_ORDERSHAVE_NOTVALID_FLOWERS.AsInteger > 0;
end;

// Подгрузка старого заказ
procedure Torders_main.bkbOldOrderLoadClick(Sender: TObject);
begin
  frmOldOrder := TfrmOldOrder.Create(Application);
  try
    frmOldOrder.showmodal;
  finally
    frmOldOrder.Free;
  end;
end;


procedure Torders_main.aLoadFromBDFExecute(Sender: TObject);
begin
  frmLoadFromDBF := TfrmLoadFromDBF.Create(Application);
  try
    frmLoadFromDBF.showmodal;
    DM.Q_ORDERS.Refresh;
  finally
    frmLoadFromDBF.Free;
  end;
end;

//
//  Загрузка по машинам
//
procedure Torders_main.aStatisticExecute(Sender: TObject);
var i, kol, kol2: integer;
    sum, sum2: real;
begin
  if Dm.Q_ORDERSNUMM.AsInteger > 0 then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.get_weight(:id_, :CURSOR_); end; ');
    DM.Q_SQL.ParamByName('id_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.ParamByName('CURSOR_').DataType := ftCursor;
    DM.Q_SQL.Open;
    DM.Q_SQL.First;
    i := 1;
    sum := 0;

    show_track := Tshow_track.Create(Application);
    try
      show_track.StringGrid1.RowCount := 2;
      show_track.StringGrid1.Cells[0,0] := 'Машина';
      show_track.StringGrid1.Cells[1,0] := 'Объем';
      show_track.StringGrid1.Cells[2,0] := 'Стеблей';
      show_track.StringGrid1.Cells[3,0] := 'Объем упак.';
      show_track.StringGrid1.Cells[4,0] := 'Стеблей упак.';

      while not DM.Q_SQL.Eof do
      begin
        if DM.Q_SQL.FieldByName('TRUCK').IsNull = true then show_track.StringGrid1.Cells[0,i] := 'не определено'
        else
        begin
          show_track.StringGrid1.Cells[0,i] := DM.Q_SQL.FieldByName('TRUCK').AsString;
          sum := sum + DM.Q_SQL.FieldValues['SS'];
          kol := kol + DM.Q_SQL.FieldValues['quant'];
          sum2 := sum2 + DM.Q_SQL.FieldValues['sum_pack'];
          kol2 := kol2 + DM.Q_SQL.FieldValues['quant_pack'];
        end;
        show_track.StringGrid1.Cells[1,i] := DM.Q_SQL.FieldValues['SS'];
        show_track.StringGrid1.Cells[2,i] := DM.Q_SQL.FieldValues['quant'];
        show_track.StringGrid1.Cells[3,i] := DM.Q_SQL.FieldValues['sum_pack'];
        show_track.StringGrid1.Cells[4,i] := DM.Q_SQL.FieldValues['quant_pack'];
        show_track.StringGrid1.RowCount := show_track.StringGrid1.RowCount + 1;

        DM.Q_SQL.Next;
        i := i + 1;
      end;

      show_track.StringGrid1.Cells[0,i] := 'Всего';
      show_track.StringGrid1.Cells[1,i] := floattostr(sum);
      show_track.StringGrid1.Cells[2,i] := inttostr(kol);
      show_track.StringGrid1.Cells[3,i] := floattostr(sum2);
      show_track.StringGrid1.Cells[4,i] := inttostr(kol2);
      show_track.ShowModal;
    finally
      show_track.Free;
    end;
  end;
  FormShow(self);
end;

procedure Torders_main.bbFileXLSClick(Sender: TObject);
var F_CSV: TextFile;
    head_str, detail_str, file_str, str: string;
    sum_all_, sum_, item: integer;
begin
  DM.q_raznos.Close;
  DM.q_raznos.ParamByName('truck_').AsInteger := 99;
  DM.q_raznos.ParamByName('packed_').AsInteger := 1; // 0-не упакованные, 1-все подряд
  DM.q_raznos.Open;

  str := DM.CheckExportFolder(Handle, DM.Q_ORDERSID_ORDERS.AsInteger);
  file_str := str + '\CSV\' + DM.Q_ORDERSS_ID.AsString + '__' + FormatDateTime('mmyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime) +'.CSV';
  AssignFile(F_CSV, file_str);
  try
    Rewrite(F_CSV);
    // Пишем заголовок
    head_str := FormatDateTime('dd.mm.yyyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime)+';;;';
    WriteLn(F_CSV, head_str);
    head_str := 'TYPE;SUB_TYPE;NAME;RUS_NAME;LENGTH;QUANTITY';
    WriteLn(F_CSV, head_str);

    while not DM.q_raznos.Eof do
    begin
      if (DM.q_raznosZATIRKA.AsInteger = 0 ) then
      begin
        item := DM.q_raznosSUM_ITOG.AsInteger;
        if item > 0 then
        begin
          detail_str := DM.q_raznosHOL_TYPE.AsString +';'+ DM.q_raznoshol_SUB_TYPE.AsString +';'+ DM.q_raznosH_NAME.AsString +';'+ DM.q_raznosCOMPILED_NAME_OTDEL.AsString +';'+ DM.q_raznosLEN.AsString +';'+ IntToStr(item) +';';
          WriteLn(F_CSV, detail_str);
        end;
      end;
      DM.q_raznos.Next;
    end;

  finally
    CloseFile(F_CSV);
  end;

  // 2016-04-30 По просьбе Дины добавлен файл SUBTOTAL (Jira: STARLIGHT-12)
  DM.q_raznos.Close;
  DM.q_raznos.ParamByName('truck_').AsInteger := 99;
  DM.q_raznos.ParamByName('packed_').AsInteger := 0; // 0-не упакованные, 1-все подряд
  DM.q_raznos.Open;


  file_str := str + '\CSV\' + DM.Q_ORDERSS_ID.AsString + '__' + FormatDateTime('mmyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime) +'_SUBTOTAL.CSV';
  AssignFile(F_CSV, file_str);
  try
    Rewrite(F_CSV);
    // Пишем заголовок
    head_str := FormatDateTime('dd.mm.yyyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime)+';;;';
    WriteLn(F_CSV, head_str);
    head_str := 'TYPE;SUB_TYPE;NAME;RUS_NAME;LENGTH;QUANTITY';
    WriteLn(F_CSV, head_str);

    while not DM.q_raznos.Eof do
    begin
      if (DM.q_raznosZATIRKA.AsInteger = 0 ) then
      begin
        item := DM.q_raznosSUM_ITOG.AsInteger;
        if item > 0 then
        begin
          detail_str := DM.q_raznosHOL_TYPE.AsString +';'+ DM.q_raznoshol_SUB_TYPE.AsString +';'+ DM.q_raznosH_NAME.AsString +';'+ DM.q_raznosCOMPILED_NAME_OTDEL.AsString +';'+ DM.q_raznosLEN.AsString +';'+ IntToStr(item) +';';
          WriteLn(F_CSV, detail_str);
        end;
      end;
      DM.q_raznos.Next;
    end;

  finally
    CloseFile(F_CSV);
  end;

  MessageBox(Handle, 'Генерация файлов прошла успешно','Результат...',MB_ICONINFORMATION);
  ShellExecute(Handle, nil, PChar(str + '\CSV\'), nil, nil, SW_RESTORE);

end;

end.
