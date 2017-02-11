unit frm_orders_clients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls,
  ActnList, StrUtils, DBGridEh, EhLibODAC, Mask, Registry,
  DBCtrlsEh, PI_Library, DateUtils, GridsEh, DB, Menus,
  Xmlxform, XMLIntf, msxmldom, XMLDoc, OleServer, ExcelXP, cxControls,
  cxSSheet, dxBar, dxBarExtItems, cxClasses, MemDS, DBAccess, Ora, IniFiles,
  frxClass, PI_Library_reg, DBGridEhGrouping, cxImageComboBox, cxDropDownEdit,
  cxBarEditItem, DBGridEhImpExp, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCheckBox,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxTimeEdit, ShellApi, cxGridExportLink;

type
  Torders_clients = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Panel5: TPanel;
    ActionList1: TActionList;
    add: TAction;
    del: TAction;
    Ctrl_Enter: TAction;
    print_order: TAction;
    raznoss: TAction;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Select_all: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    pod_nick: TLabel;
    pod_fio: TLabel;
    statistic: TAction;
    print_order_list: TAction;
    Label11: TLabel;
    N9: TMenuItem;
    N10: TMenuItem;
    OpenDialog1: TOpenDialog;
    N11: TMenuItem;
    m_showusers: TMenuItem;
    Panel8: TPanel;
    aLoadOrder: TAction;
    cdsNom: TOraQuery;
    cdsNomN_ID: TFloatField;
    aCheckOrder: TAction;
    N12: TMenuItem;
    DeSelect_all: TAction;
    N13: TMenuItem;
    Panel6: TPanel;
    bmOrdersClients: TdxBarManager;
    bm_debtBar2: TdxBar;
    dxBarStatic6: TdxBarStatic;
    blbRefresh: TdxBarLargeButton;
    blbAdd: TdxBarLargeButton;
    blbEdit: TdxBarLargeButton;
    blbDel: TdxBarLargeButton;
    blbFindOrder: TdxBarLargeButton;
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
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    pmPrintClientOrder: TdxBarButton;
    pmPrintClientList: TdxBarButton;
    bbFileSup: TdxBarButton;
    bbFileMSK: TdxBarButton;
    blbLoadFile: TdxBarLargeButton;
    bdcOrderClients: TdxBarDockControl;
    pmPrintOrder: TdxBarButton;
    pmPrintTrolls: TdxBarButton;
    bpmCopyOrder: TdxBarPopupMenu;
    pmIntoOrder: TdxBarButton;
    pmOutOrder: TdxBarButton;
    blbImportFile: TdxBarLargeButton;
    pmCheckOrder: TdxBarButton;
    N14: TMenuItem;
    mnIntoTruck: TMenuItem;
    N15: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    N16: TMenuItem;
    mnCLearTruck: TMenuItem;
    aCancel: TAction;
    bpmPrint: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    bmOrdersClientsBar1: TdxBar;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic18: TdxBarStatic;
    dxBarStatic19: TdxBarStatic;
    dxBarStatic20: TdxBarStatic;
    dxBarStatic21: TdxBarStatic;
    dxBarStatic22: TdxBarStatic;
    dxBarButton4: TdxBarButton;
    aPrintOrderList: TAction;
    DBText4: TDBText;
    aShowOnlyPack: TAction;
    aShowOnlyNotPack: TAction;
    aShowOnlyPack1: TMenuItem;
    aShowOnlyNotPack1: TMenuItem;
    Label1: TLabel;
    DBText3: TDBText;
    dxBarStatic23: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    stWarning: TcxStyle;
    stSpec: TcxStyle;
    grClients_v: TcxGridDBTableView;
    grClients_l: TcxGridLevel;
    grClients: TcxGrid;
    grClients_vID_ORDERS_CLIENTS: TcxGridDBColumn;
    grClients_vN_TRUCK: TcxGridDBColumn;
    grClients_vCAPACITY: TcxGridDBColumn;
    grClients_vD_DATE: TcxGridDBColumn;
    grClients_vNICK: TcxGridDBColumn;
    grClients_vPHONE: TcxGridDBColumn;
    grClients_vFIO: TcxGridDBColumn;
    grClients_vSSS: TcxGridDBColumn;
    grClients_vNN: TcxGridDBColumn;
    grClients_vWEIGHT: TcxGridDBColumn;
    grClients_vPACK_: TcxGridDBColumn;
    grClients_vID_ORDERS: TcxGridDBColumn;
    grClients_vID_CLIENTS: TcxGridDBColumn;
    grClients_vALPHA: TcxGridDBColumn;
    grClients_vNICK_USER: TcxGridDBColumn;
    grClients_vIN_FILE: TcxGridDBColumn;
    grClients_vMISS_CODE: TcxGridDBColumn;
    grClients_vISMISSCODE: TcxGridDBColumn;
    grClients_vPr: TcxGridDBColumn;
    grClients_vQQQ: TcxGridDBColumn;
    grClients_vSUM_PRICE: TcxGridDBColumn;
    grClients_vHAVE_NOTVALID_FLOWERS: TcxGridDBColumn;
    grClients_vBLOCK1: TcxGridDBColumn;
    grClients_vBLOCK2: TcxGridDBColumn;
    grClients_vHAVE_OLD_FLOWERS: TcxGridDBColumn;
    DBText5: TDBText;
    mnChangeClient: TMenuItem;
    grClients_vPRIORITY: TcxGridDBColumn;
    blbImportWebShop: TdxBarLargeButton;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure m_showusersClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aLoadOrderExecute(Sender: TObject);
    procedure aCheckOrderExecute(Sender: TObject);
    procedure btnPrintAllClick(Sender: TObject);
    procedure Select_allExecute(Sender: TObject);
    procedure DeSelect_allExecute(Sender: TObject);
    procedure prnTrollClick(Sender: TObject);
    procedure pmIntoOrderClick(Sender: TObject);
    procedure pmOutOrderClick(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure mnCLearTruckClick(Sender: TObject);
    procedure aPrintOrderListExecute(Sender: TObject);
    procedure aShowOnlyPackExecute(Sender: TObject);
    procedure aShowOnlyNotPackExecute(Sender: TObject);
    procedure grClients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnChangeClientClick(Sender: TObject);
    procedure blbImportWebShopClick(Sender: TObject);

  private
    { Private declarations }
    pnl_msg: TPanel;
    procedure SelectRows(Param: integer);
  public
    str_nick: string;
    str_fio:  string;
    { Public declarations }
  end;

var
  orders_clients: Torders_clients;

implementation

uses frm_DM, frm_orders_new_client, frm_orders_list, frm_first_dialog,
  raznos_f, Ustat, Globals, UFullInfo, UInfo, UFindClient, UCopyOrder;


{$R *.dfm}

//
// открытие формы для добавления клиента к заказу
//
procedure Torders_clients.BitBtn10Click(Sender: TObject);
begin
  if add.Enabled = true then
  begin
    orders_new_client := Torders_new_client.Create(Application);
    try
      DM.Q_CLIENTS.Open;
      if orders_new_client.ShowModal = mrOK then
      begin
//        DBGridEh1.SumList.RecalcAll;
        grClients_v.DataController.Summary.Recalculate;
        DM.Q_ORDERS.RefreshRecord;
        DM.Q_ORDERS_ORDERS.Refresh;
        DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',orders_new_client.id_cl,[]);

        if dm.Q_CLIENTSID_CLIENTS.AsInteger = first_dialog_frm.uSTOK then
        begin
          try
            with DM.store_exec do
            Begin
              Close;
              StoredProcName := 'PACK_ORDERS.sync_store';
              Prepare;
              ParamByName('vIdOrder').Value := DM.Q_ORDERSID_ORDERS.AsInteger;
              Execute;
            end;
          except
            on E: Exception do MessageBox(Application.Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
          end;
        end;

        DBGridEh1DblClick(self);
        DM.Q_ORDERS.RefreshRecord;
      end;
      DM.Q_CLIENTS.Close;
    finally
      orders_new_client.Free;
    end;
  end;
end;


//
// удаление клиента из заказа
//
procedure Torders_clients.BitBtn12Click(Sender: TObject);
var ccode: string;
    idd, idd2: integer;
begin
  if del.Enabled = true then
  begin
    // Удаление клиента
    if (DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить клиента из заказа?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
         DM.Ora_SQL.SQL.Clear;

         DM.Ora_SQL.SQL.Add('begin PACK_ORDERS.delete_orderClient(:vID_ORDERS_CLIENTS); end;');
         DM.Ora_SQL.ParamByName('vID_ORDERS_CLIENTS').Value :=  DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger;
{
         if DM.Q_ORDERS_ORDERSSSS.AsInteger = 0 then
            // Просто удаляем клиента из заказа, т.к. не заказаны позиции
            DM.Ora_SQL.SQL.Add('DELETE FROM ORDERS_CLIENTS WHERE ID_ORDERS_CLIENTS = :ID')
         else
            // Эмилируем удаление переводя клиента в неактивное состояние
            DM.Ora_SQL.SQL.Add('UPDATE ORDERS_CLIENTS SET ACTIVE=0 WHERE ID_ORDERS_CLIENTS = :ID');

         DM.Ora_SQL.ParamByName('ID').Value := DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger;
 }
         idd2 := DM.Q_ORDERSID_ORDERS.AsInteger;
         DM.Q_ORDERS_ORDERS.Next;
         idd := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;


         // Пытаемся выполнить SQL запрос на удаление
         try
            DM.Ora_SQL.Execute;
            //DM.Main_session.Commit;
            DM.Q_ORDERS.RefreshRecord;
            DM.Q_ORDERS_ORDERS.Refresh;
            DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',idd,[]);
            //DBGridEh1.SumList.RecalcAll;
            grClients_v.DataController.Summary.Recalculate;
         except
           on E: Exception do ShowMessage('Ошибка!'#13#10+E.Message);
         End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
  end;
end;


// Копировать заказ на дату
procedure Torders_clients.BitBtn13Click(Sender: TObject);
begin
  close;
end;


//
//  Печать заказ клиента
//
procedure Torders_clients.BitBtn6Click(Sender: TObject);
begin
  if DM.Q_ORDERS_ORDERSSSS.AsInteger > 0 then
  begin
    try
      dm.Q_ORDERS_LIST.Close;
      dm.Q_ORDERS_LIST.ParamByName('ADDIT_').AsInteger := 0;
      dm.Q_ORDERS_LIST.ParamByName('ID_DEP_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
      dm.Q_ORDERS_LIST.ParamByName('ID_CL_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
      dm.Q_ORDERS_LIST.ParamByName('id_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
      dm.Q_ORDERS_LIST.ParamByName('spec_').AsInteger := 0;
      dm.Q_ORDERS_LIST.ParamByName('TRUC_DATE_').AsDate := DM.Q_ORDERSDATE_TRUCK.AsDateTime;
      dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := 0;
      dm.Q_ORDERS_LIST.Open;
      DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS IS NOT NULL';
      DM.Q_ORDERS_LIST.Filtered := true;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_client_list.fr3');
      DM.frxReport1.ShowReport;

      DM.Q_ORDERS_LIST.Close;
      grClients.SetFocus;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
  end;
end;



//
//  Печать клиентов
//
procedure Torders_clients.BitBtn4Click(Sender: TObject);
begin
  if DM.Q_ORDERS_ORDERS.RecordCount > 0 then
  begin
    try
      DM.Q_ORDERS_ORDERS.Filter := 'checked=1';
      DM.Q_ORDERS_ORDERS.Filtered := true;

      if Application.MessageBox('Печатать простую форму?','Выбор формы печати',MB_OKCANCEL) = mrOk then
        DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_list_lite.fr3')
      else
        DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_list.fr3');
      DM.frxReport1.ShowReport;
      grClients.SetFocus;

      DM.Q_ORDERS_ORDERS.Filtered := false;
      DM.Q_ORDERS_ORDERS.Filter := '';
      grClients_v.DataController.Filter.Clear;
      grClients_v.DataController.Filter.Active := false;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
  end;
end;

//
// Печать списка в заказе
//
procedure Torders_clients.aPrintOrderListExecute(Sender: TObject);
begin
  if DM.Q_ORDERS_ORDERS.RecordCount > 0 then
  begin
    try
      dm.q_raznos.ParamByName('truck_').AsInteger  := 99;
      dm.q_raznos.ParamByName('packed_').AsInteger := 1;
      DM.q_raznos.IndexFieldNames := 'ord;F_SUB_TYPE;COMPILED_NAME_OTDEL;REMARKS';
      DM.q_raznos.Open;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_report_rus.fr3');
      DM.frxReport1.ShowReport;
      grClients.SetFocus;

      DM.q_raznos.Close;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
  end;
end;


// Просмотр только НЕупакованных клиентов
procedure Torders_clients.aShowOnlyNotPackExecute(Sender: TObject);
begin
  DM.Q_ORDERS_ORDERS.Filter := 'PACK_=0';
  DM.Q_ORDERS_ORDERS.Filtered := true;
  aShowOnlyPack1.Checked := false;
  aShowOnlyNotPack1.Checked := true;
end;

// Просмотр только упакованных клиентов
procedure Torders_clients.aShowOnlyPackExecute(Sender: TObject);
begin
  DM.Q_ORDERS_ORDERS.Filter := 'PACK_=1';
  DM.Q_ORDERS_ORDERS.Filtered := true;
  aShowOnlyPack1.Checked := true;
  aShowOnlyNotPack1.Checked := false;
end;

//
//  Печать этикеток на троли
//
procedure Torders_clients.prnTrollClick(Sender: TObject);
begin
  if DM.Q_ORDERS_ORDERS.RecordCount > 0 then
  begin
    try
      DM.Q_ORDERS_ORDERS.Filter := 'checked=1';
      DM.Q_ORDERS_ORDERS.Filtered := true;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_list_troll.fr3');
      DM.frxReport1.ShowReport;
      grClients.SetFocus;

      DM.Q_ORDERS_ORDERS.Filtered := false;
      DM.Q_ORDERS_ORDERS.Filter := '';
      grClients_v.DataController.Filter.Clear;
      grClients_v.DataController.Filter.Active := false;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
  end;
end;




//
//  Открываем форму с номенклатурой для составления заказа
//
procedure Torders_clients.DBGridEh1DblClick(Sender: TObject);
var idd, d_between: integer;
    date_prih, date_prih2: TDateTime;
begin
  if (DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger > 0) then
  begin
//    if (DBGridEh1.SelectedField.FieldName = 'HAVE_OLD_FLOWERS') and (DM.Q_ORDERS_ORDERSHAVE_OLD_FLOWERS.AsInteger > 0) then
    if grClients_vHAVE_OLD_FLOWERS.Focused and (grClients_vHAVE_OLD_FLOWERS.EditValue > 0) then
    begin
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.get_not_use_noms(:p_ID_OD_CL, :cursor_); end;';
      DM.Q_SQL.ParamByName('p_ID_OD_CL').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
      DM.Q_SQL.ParamByName('cursor_').AsCursor;
      DM.Q_SQL.Open;
      OpenFormForShow(DM.Q_SQL.Fields[0].AsString);
      DM.Q_SQL.Close;
      exit;
    end;

//    if (DBGridEh1.SelectedField.FieldName = 'ISMISSCODE') then
    if grClients_vISMISSCODE.Focused then
    begin
      OpenFormForShow(DM.Q_ORDERS_ORDERS.FieldByName('MISS_CODE').AsString);
      exit;
    end;

      if DM.Q_ORDERS_ORDERS.State = dsEdit then DM.Q_ORDERS_ORDERS.Post;

      screen.Cursor :=  crHourGlass;
      orders_list := Torders_list.Create(Application);

      try
        orders_list.ComboBox2.Enabled := false;
{
        path   := first_dialog_frm.path+'orders.ini';
        RegIni := TIniFile.Create(path);
        try
          vSTOK  := RegIni.ReadInteger('STOK', 'value', 0);
          vDAYS  := RegIni.ReadInteger('DAYS', 'value', 0);
        finally
          RegIni.Free;
        end;
}


        // Выполняем процедуру, возвращающую курсор с номенклатурой
        if ( first_dialog_frm.addit = true ) then
          dm.Q_ORDERS_LIST.ParamByName('ADDIT_').AsInteger := 1
        else
          dm.Q_ORDERS_LIST.ParamByName('ADDIT_').AsInteger := 0;

        dm.Q_ORDERS_LIST.ParamByName('ID_DEP_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
        dm.Q_ORDERS_LIST.ParamByName('ID_CL_').AsInteger  := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
        dm.Q_ORDERS_LIST.ParamByName('id_').AsInteger     := DM.Q_ORDERSID_ORDERS.AsInteger;
        dm.Q_ORDERS_LIST.ParamByName('spec_').AsInteger   := first_dialog_frm.vDAYS;
        dm.Q_ORDERS_LIST.ParamByName('TRUC_DATE_').AsDate := DM.Q_ORDERSDATE_TRUCK.AsDateTime;
        dm.Q_ORDERS_LIST.ParamByName('button_').AsInteger := 0;

        DM.Q_FLOWER_TYPE.ParamByName('ID').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
        DM.Q_FLOWER_TYPE.Open;

        if ( first_dialog_frm.addit = true ) and (not first_dialog_frm.uHideCargoMoving) then
          orders_list.DBGridEh1.FieldColumns['FL_ORDERS'].Title.Caption := 'Количество|Заказ|Клиента'
        else
          orders_list.DBGridEh1.FieldColumns['FL_ORDERS'].Title.Caption := 'Заказ';

        orders_list.BitBtn12.Visible := first_dialog_frm.delete and (dm.Q_ORDERSDATE_TRUCK.AsDateTime >= now);
        orders_list.BitBtn2.Visible := first_dialog_frm.edit and (dm.Q_ORDERSDATE_TRUCK.AsDateTime >= now);
        orders_list.BitBtn3.Visible := first_dialog_frm.edit and (dm.Q_ORDERSDATE_TRUCK.AsDateTime >= now);
        orders_list.DBGridEh1.ReadOnly := not (first_dialog_frm.edit and (dm.Q_ORDERSDATE_TRUCK.AsDateTime >= now));
        screen.Cursor :=  crDefault;

        orders_list.showmodal;

        idd := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
        DM.Q_ORDERS_ORDERS.Refresh;
        DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',idd,[]);
        DM.Q_FLOWER_TYPE.Close;
        DM.Q_ORDERS_LIST.Close;

      finally
        orders_list.Free;
      end;

  end
  else ShowMessage('Нет данных для просмотра');
end;


procedure Torders_clients.FormShow(Sender: TObject);
var RegI : TRegIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
    path: string;
begin
  path   := ExtractFilePath(Application.ExeName);
  AOptions := [];
  AStoreKey := path + '/ini/clients_tbl_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'MainTable';
  grClients_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  grClients.Font.Size := first_dialog_frm.uFont;
//  DBGridEh1.Columns.Items[3].ReadOnly := not DM.Q_ORDERSDIST_IND_ID.IsNull;

  RegI := TRegIniFile.Create('StarLight_orders');
  try
    m_showusers.Checked := RegI.ReadBool('StarLight_orders', 'ShowAll', False);
    grClients.SetFocus;
  finally
    RegI.Free;
  end;
  DM.Q_ORDERS_ORDERS.Close;
  if (m_showusers.Checked = true) then
    DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := ''
  else
    DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(DM.Main_session.Username);

  DM.Q_ORDERS_ORDERS.ParamByName('t1').AsInteger := 0;
  if DM.isFilterByDobor then
    DM.Q_ORDERS_ORDERS.ParamByName('t2').AsInteger := 2
  else
    DM.Q_ORDERS_ORDERS.ParamByName('t2').AsInteger := 0;
  if DM.isFilterByWebShop then
    DM.Q_ORDERS_ORDERS.ParamByName('t3').AsInteger := 3
  else
    DM.Q_ORDERS_ORDERS.ParamByName('t3').AsInteger := 0;

  DM.Q_ORDERS_ORDERS.Open;
end;


procedure Torders_clients.grClients_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var var1, var2: Variant;
begin
  if DM.id_office = 1 then
  begin
    if (grClients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'HAVE_NOTVALID_FLOWERS') then
    begin
      var1 := grClients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('HAVE_NOTVALID_FLOWERS').Index
                );
      If (var1 > 0) then
      begin
        ACanvas.Brush.Color := clRed;
      end;
    end;
  end;

  if (grClients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') then
  begin
    var1 := grClients_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('BLOCK1').Index
            );
    var1 := grClients_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('BLOCK2').Index
            );
    If (var1 > 0) or (var2 > 0) then
    begin
      ACanvas.Brush.Color := stWarning.Color;
    end;
  end;

  if (grClients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'HAVE_OLD_FLOWERS') then
  begin
    var1 := grClients_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('HAVE_OLD_FLOWERS').Index
            );
    If (var1 > 0) then
    begin
      ACanvas.Brush.Color := clRed;
    end;
  end;

  if (grClients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'ISMISSCODE') then
  begin
    var1 := grClients_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('ISMISSCODE').Index
            );
    If (var1 > 0) then
    begin
      ACanvas.Brush.Color := clRed;
    end;
  end;

  if ( AViewInfo.Selected  = false) then
  begin
    var1 := grClients_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grClients_v.GetColumnByFieldName('IN_FILE').Index
            );
    if (var1 = 'добор из разноса') then
    begin
      ACanvas.Brush.Color := TColor($0091C8FF);
    end;
  end;

end;

//
//  Разнос заказа по машинам
//
procedure Torders_clients.BitBtn2Click(Sender: TObject);
begin
  if DM.Q_ORDERS_ORDERS.RecordCount > 0 then
  begin
    raznos := Traznos.Create(Application);
    try
      //raznos.cb_truck.EditValue := 99;
      dm.q_raznos_t.ParamByName('truck_').AsInteger := raznos.cb_truck.EditValue;
      dm.q_raznos_t.ParamByName('packed_').AsInteger := abs(1-BoolToInt(raznos.chbWithoutPacked.Checked));
      dm.q_raznos_t.Open;
      dm.q_raznos_st.ParamByName('truck_').AsInteger := raznos.cb_truck.EditValue;
      dm.q_raznos_st.ParamByName('packed_').AsInteger := abs(1-BoolToInt(raznos.chbWithoutPacked.Checked));
      dm.q_raznos_st.Open;
      dm.q_raznos.ParamByName('truck_').AsInteger := raznos.cb_truck.EditValue;
      dm.q_raznos.ParamByName('packed_').AsInteger := abs(1-BoolToInt(raznos.chbWithoutPacked.Checked));
      DM.q_raznos.Filter := '';
      DM.q_raznos.Filtered := false;
      dm.q_raznos.Open;

      raznos.DBGridEh1.SumList.Active := true;
      raznos.DBGridEh2.SumList.Active := true;
      raznos.DBGridEh3.SumList.Active := true;

      raznos.showmodal;

      raznos.DBGridEh1.SumList.Active := false;
      raznos.DBGridEh2.SumList.Active := false;
      raznos.DBGridEh3.SumList.Active := false;
      DM.q_raznos.Close;
      DM.q_raznos_st.Close;
      DM.q_raznos_t.Close;
      grClients.SetFocus;
    finally
      raznos.Free;
    end;
  end;
end;


//
//  Обновление данных
//
procedure Torders_clients.SpeedButton1Click(Sender: TObject);
var idd: integer;
begin
  grClients_v.DataController.Filter.Clear;
  grClients_v.DataController.Filter.Active := false;
  idd := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
  DM.Q_ORDERS_ORDERS.Refresh;
  grClients.SetFocus;
  DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',idd,[]);
end;


//
// Обработка быстрого поиска клиента в списке
//
procedure Torders_clients.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strfio, strnick: string;
  i1, i2: integer;
begin
  if (Key = VK_DELETE) or (Key = VK_CANCEL) then
  begin
    str_fio := '';
    str_nick := '';
    label6.Caption := str_nick;
    label7.Caption := str_fio;
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

    label6.Caption := str_nick;
    label7.Caption := str_fio;
  end;

  if (Key = VK_RETURN) then
  begin
    str_fio := copy(str_fio,0,length(str_fio)-1);
    str_nick := copy(str_nick,0,length(str_nick)-1);

    label6.Caption := str_nick;
    label7.Caption := str_fio;
    if DM.Q_ORDERS_ORDERS.State = dsEdit then DM.Q_ORDERS_ORDERS.Post;    
  end;
end;


procedure Torders_clients.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
//grClients_vPr.Focused
  if (Key in ['а'..'я']) or (Key in ['А'..'Я']) or ((Key = ' ') and (not grClients_vPr.Focused)) then
  begin
     str_fio := str_fio + Key;
     DM.Q_ORDERS_ORDERS.Locate('FIO', str_fio, [loCaseInsensitive, loPartialKey]);
  end;

  if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or ((Key = ' ') and (not grClients_vPr.Focused) and (not grClients_vALPHA.Focused)) then
  begin
     str_nick := str_nick + Key;
     DM.Q_ORDERS_ORDERS.Locate('NICK', str_nick, [loCaseInsensitive, loPartialKey]);
  end;

  label6.Caption := str_nick;
  label7.Caption := str_fio;
end;


//
// Показываем статистику по заказу
//
procedure Torders_clients.BitBtn5Click(Sender: TObject);
begin
  frm_stat := Tfrm_stat.Create(Application);
  try
    frm_stat.CDS_STAT.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
    frm_stat.CDS_STAT.ParamByName('id_order_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger;
    frm_stat.CDS_STAT.ParamByName('id_client_').AsInteger := 0;
    frm_stat.CDS_STAT.ParamByName('id_fst_').AsInteger := 0;
    frm_stat.CDS_STAT.ParamByName('fst_').AsString := '';
    frm_stat.CDS_STAT.ParamByName('zatir_').AsInteger := 0;
    frm_stat.CDS_STAT.ParamByName('n_id_').AsInteger := 0;
    frm_stat.CDS_STAT.Open;

    dm.q_raznos_st.Close;
    dm.q_raznos_st.ParamByName('truck_').AsInteger := 99;
    dm.q_raznos_st.ParamByName('packed_').AsInteger := 1;
    dm.q_raznos_st.Open;
    frm_stat.DBGridEh3.SumList.Active := true;

    frm_stat.cdsStatReg.ParamByName('id_order_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger;
    frm_stat.cdsStatReg.Open;


    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.get_weight(:id_, :CURSOR_); end; ');
    DM.Q_SQL.ParamByName('id_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.ParamByName('CURSOR_').DataType := ftCursor;
    DM.Q_SQL.Open;
    frm_stat.show_truck_stat := true;


    frm_stat.pc_stat_order.ActivePageIndex := 0;
    frm_stat.ShowModal;
  finally
    DM.Q_SQL.Close;
    dm.q_raznos_st.Close;
    frm_stat.Free;
  end;
end;


//
// Меняем признак поковки
//
procedure Torders_clients.N10Click(Sender: TObject);
begin
//  if MessageDlg('Вы действительно хотите сменить признак поковки?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
//  begin
      // Пытаемся выполнить хранимую процедуру
      try
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin PACK_ORDERS.change_pack(:ID_ORDERS_CLIENTS_, :IS_PACK_); end;');
          DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
          DM.Q_SQL.ParamByName('IS_PACK_').AsInteger := DM.Q_ORDERS_ORDERSPACK_.AsInteger;
          DM.Q_SQL.Execute;
          DM.Main_session.Commit;
          DM.Q_ORDERS_ORDERS.RefreshRecord;
          grClients.SetFocus;
      except
        on E: Exception do ShowMessage('Ошибка выполнения запроса!'#13#10+E.Message);
      End;
//  end;
end;


// Поместить заказ клиента в машину
procedure Torders_clients.N15Click(Sender: TObject);
var sql: string;
    idd: integer;
begin
  if DM.Q_ORDERS_ORDERSSSS.AsInteger > 0 then
  begin
//    if ((Sender as TMenuItem).Tag < 1) then ShowMessage('Необходимо выбрать номер машины!')
//    else
//    begin
      if (DM.Q_ORDERS_ORDERS.RecordCount < 1) then ShowMessage('В данном заказе нет клиентов!')
      else
      begin
        try
          idd := DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').Value;

          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin PACK_ORDERS.move_truck(:P0, :P3, :nn, :num_); end;');
          DM.Q_SQL.ParamByName('P0').Value := DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').Value;
          DM.Q_SQL.ParamByName('P3').Value := DM.Q_ORDERS_ORDERS.FieldByName('N_TRUCK').Value;
          DM.Q_SQL.ParamByName('NN').AsInteger := (Sender as TMenuItem).Tag;
          DM.Q_SQL.ParamByName('num_').Value := 0;
          DM.Q_SQL.Execute;

          if DM.Q_SQL.ParamByName('num_').AsInteger = 0 then
             raise Exception.CreateFmt('Запись занята другим пользователем!',[]);

          DM.Main_session.Commit;

          // Перепрыгиваем на редактированную запись
          DM.Q_ORDERS_ORDERS.RefreshRecord;
          //DM.Q_ORDERS_ORDERS.Refresh;
          //DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',idd,[]);

          grClients.SetFocus;
        except
          on E: Exception do
          begin
              ShowMessage('Ошибка!'#13#10+E.Message);
              DM.Q_ORDERS_ORDERS.Refresh;
          end;
        End;
      end;
//    end;
  end;
end;


// Убрать заказ из машины
procedure Torders_clients.mnCLearTruckClick(Sender: TObject);
begin
  N15Click(Sender)
end;


// Применить фильтр
procedure Torders_clients.N1Click(Sender: TObject);
begin
//  DBGridEh1.ApplyFilter;
end;

// Очистить фильтр
procedure Torders_clients.N2Click(Sender: TObject);
begin
  if (DM.Q_ORDERS_ORDERS.Filtered = true) then
  begin
    DM.Q_ORDERS_ORDERS.Filtered := false;
    DM.Q_ORDERS_ORDERS.Filter := '';
    aShowOnlyPack1.Checked := false;
    aShowOnlyNotPack1.Checked := false;
  end;
  grClients_v.DataController.Filter.Clear;
  grClients_v.DataController.Filter.Active := false;
end;

//
//  Подготовка файлов для отправки
//
procedure Torders_clients.N5Click(Sender: TObject);
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

          dm.Q_ORDERS_LIST.ParamByName('ADDIT_').AsInteger := 0;
          dm.Q_ORDERS_LIST.ParamByName('ID_DEP_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
          dm.Q_ORDERS_LIST.ParamByName('ID_CL_').AsInteger := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
          dm.Q_ORDERS_LIST.ParamByName('id_').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
          dm.Q_ORDERS_LIST.ParamByName('spec_').AsInteger := 1;
          dm.Q_ORDERS_LIST.ParamByName('TRUC_DATE_').AsDate := DM.Q_ORDERSDATE_TRUCK.AsDateTime;
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
                // if (DM.Q_ORDERS_LISTZATIRKA.AsInteger = 0) or (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1) then
                // begin
                  sum_ := sum_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
                  sum_all_ := sum_all_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
                  WriteLn(F, '  ' + DM.Q_ORDERS_LISTFL_ORDERS.AsString + #9 + '|   | ' + DM.Q_ORDERS_LISTH_NAME_F.AsString);
                  WriteLn(F, #9 + '|   |');
                  WriteLn(F, '----------------------------------------------------------------');
                // end;
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

          DM.Q_ORDERS_LIST.Close;
          dm.Q_ORDERS_LIST.Filter := '';
          dm.Q_ORDERS_LIST.Filtered := false;

          CloseFile(F);
          MessageBox(Handle, 'Файл создан успешно','',MB_ICONINFORMATION);
  end;     // if DM.Q_ORDERS_ORDERSSSS.AsInteger > 0
end;




procedure Torders_clients.N8Click(Sender: TObject);
begin
  if DM.SaveDialog1.Execute then
  begin
      DM.SaveDialog1.DefaultExt := 'xls';
      //SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,DBGridEh1, DM.SaveDialog1.FileName, False);
      ExportGridToExcel(DM.SaveDialog1.FileName, grClients, True, True, True, 'xls');
      ShellExecute(Handle, nil, PChar(DM.SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;

// Печать заказа
procedure Torders_clients.btnPrintAllClick(Sender: TObject);
var RegIni : TIniFile;
//    vSTOK, vDAYS: integer;
//    path: string;
    memo: TfrxMemoView;
begin
{
  path   := first_dialog_frm.path+'orders.ini';
  RegIni := TIniFile.Create(path);
  try
    vSTOK  := RegIni.ReadInteger('STOK', 'value', 0);
  finally
    RegIni.Free;
  end;
}
    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('SELECT OFFICE_NAME FROM OFFICES where id_office='+inttostr(dm.id_office));
      DM.Q_SQL.Open;

      dm.cdsOrderTotal.Close;
      dm.cdsOrderTotal.ParamByName('pClient').AsInteger  := first_dialog_frm.vSTOK;
      dm.cdsOrderTotal.ParamByName('pOrder').AsInteger   := DM.Q_ORDERSID_ORDERS.AsInteger;
      dm.cdsOrderTotal.Open;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_total.fr3');

      memo := DM.frxReport1.FindObject('MemoOffice') as TfrxMemoView;
      memo.Text := DM.Q_SQL.FieldByName('OFFICE_NAME').AsString + '. Список всех заказов офиса.';

      DM.frxReport1.ShowReport;

      DM.cdsOrderMSK.Close;
      DM.Q_SQL.Close;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
end;



procedure Torders_clients.m_showusersClick(Sender: TObject);
begin
  DM.Q_ORDERS_ORDERS.Close;
  if m_showusers.Checked = true then
  begin
    m_showusers.Checked := false;
    DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(DM.Main_session.Username);
  end
  else
  begin
    m_showusers.Checked := true;
    DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := '';
  end;
  DM.Q_ORDERS_ORDERS.Open;
end;

procedure Torders_clients.FormClose(Sender: TObject;
  var Action: TCloseAction);
var RegI : TRegIniFile;
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  path: string;
begin
  path := ExtractFilePath(Application.ExeName);
  AOptions := [];
  AStoreKey     := path + '/ini/clients_tbl_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'MainTable';
  grClients_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  RegI := TRegIniFile.Create('StarLight_orders');
  try
    RegI.WriteBool('StarLight_orders', 'ShowAll', m_showusers.Checked);
    grClients.SetFocus;
  finally
    RegI.Free;
  end;
end;




// Загрузить заказ
procedure Torders_clients.aLoadOrderExecute(Sender: TObject);
begin
  if first_dialog_frm.uOrderFormat then
    DM.odOrder.FilterIndex := 2
  else
    DM.odOrder.FilterIndex := 1;

  if not DM.odOrder.Execute then exit;
// Из основной формы автоматом заказ добавляется, а внутри заказа уже не буду смотреть на дату!
// Так любой заказ добавлялся в текущий, Дина хочет добавлять согласно дате выхода машины
// DM.UpploadOrderFromInet - из TXT файлов Андрея
//  if DM.UpploadOrderFromInetNewSite(Handle, DM.odOrder.FileName, DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger) then
  try
    pnl_msg := TPanel(MakePanelLabel(Panel6,300,100,'Идет обработка заказа'));
    pnl_msg.Repaint;

    if first_dialog_frm.uOrderFormat then
    begin
      if DM.UpploadOrderFromInetNewSite(Handle, DM.odOrder.FileName, DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger) then
        DM.Q_ORDERS_ORDERS.Refresh;
    end
    else
    begin
      if DM.UpploadOrderFromInet(Handle, DM.odOrder.FileName, DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger) then
        DM.Q_ORDERS_ORDERS.Refresh;
    end;

  finally
    pnl_msg.Free;
  end;
end;


// Загрузить добор
procedure Torders_clients.blbImportWebShopClick(Sender: TObject);
begin
  DM.odOrder.FilterIndex := 2;

  if not DM.odOrder.Execute then exit;

  try
    pnl_msg := TPanel(MakePanelLabel(Panel6,300,100,'Идет обработка заказа'));
    pnl_msg.Repaint;

    if DM.UpploadDoborFromInet(Handle, DM.odOrder.FileName, DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger) then
       DM.Q_ORDERS_ORDERS.Refresh;

  finally
    pnl_msg.Free;
  end;
end;



// Проверить заказ
procedure Torders_clients.aCheckOrderExecute(Sender: TObject);
var z_code, z_q, z_name, tmpstr, err_log, err_log_short, vInfo: string;
    m : TStrArray;
    i: integer;
begin
  try
    DM.Q_ORDERS_ORDERS.DisableControls;

    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';

    while not DM.Q_ORDERS_ORDERS.Eof do
    begin
      err_log_short := '';
      err_log := '';
      vInfo   := '';
      z_code  := '';
      z_q     := '';

      if DM.Q_ORDERS_ORDERSISMISSCODE.AsInteger = 1 then
      begin
        DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;

        m:=split(DM.Q_ORDERS_ORDERSMISS_CODE.AsString);
        for I := 0 to Length(m)-1 do
        begin

          tmpstr :=  m[i]; //DM.Q_ORDERS_ORDERSMISS_CODE.AsString;
        //25;3;2000000535302;Гиперикум Уайт Классик;48.70;10;487.00
          z_code := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(z_code,pos(';',z_code)+1,length(z_code)));
          z_code := Trim(copy(z_code,1,pos(';',z_code)-1));

          z_name := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_name := Trim(copy(z_name,pos(';',z_name)+1,length(z_name)));
          z_name := Trim(copy(z_name,pos(';',z_name)+1,length(z_name)));
          z_name := Trim(copy(z_name,1,pos(';',z_name)-1));

          z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_q := Trim(copy(z_q,pos(';',z_q)+1,length(z_q)));
          z_q := Trim(copy(z_q,pos(';',z_q)+1,length(z_q)));
          z_q := Trim(copy(z_q,pos(';',z_q)+1,length(z_q)));
          z_q := Trim(copy(z_q,pos(';',z_q)+1,length(z_q)));
          z_q := Trim(copy(z_q,1,pos(';',z_q)-1));

{
          z_code := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_code := Trim(copy(z_code,1,pos(';',z_code)-1));
          z_name := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_name := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_name := Trim(copy(z_name,1,pos(';',z_name)-1));
          tmpstr := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          tmpstr := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
          z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)-1));
          z_q := Trim(copy(z_q,1,pos(';',z_q)-1));
 }
          if (z_code <> '') and (z_q <> '') then
          begin
            cdsNom.Close;
            cdsNom.ParamByName('p_code').AsString := z_code;
            cdsNom.ParamByName('p_dep').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
            cdsNom.Open;
            if not cdsNom.IsEmpty then
            begin
              DM.Q_SQL.ParamByName('N_ID').Value       := cdsNomN_ID.AsInteger;
              DM.Q_SQL.ParamByName('FL_ORDERS').Value  := StrToInt(z_q);
              DM.Q_SQL.ParamByName('TRUCK').Value      := 0;
              DM.Q_SQL.ParamByName('sub_weight').Value := 0;
              DM.Q_SQL.ParamByName('v_site_data').Value := tmpstr;
              DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
              DM.Q_SQL.Execute;
            end
            else
            begin
              //err_log := err_log + z_code +';' + z_q + #13#10;
              err_log_short := err_log_short + z_code +';' + z_q + #13#10;
              err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
              vInfo   := vInfo + z_code + ' - ' + z_q + #13#10;
            end;

            cdsNom.Close;
          end;

        end;

          DM.Q_SQL_SPIS.Close;
          DM.Q_SQL_SPIS.SQL.Clear;
          DM.Q_SQL_SPIS.SQL.Text := 'update ORDERS_CLIENTS set miss_code='''+err_log+''', miss_code_short='''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger);
          DM.Q_SQL_SPIS.Execute;
          DM.Q_SQL_SPIS.Close;

      end;

      DM.Q_ORDERS_ORDERS.Next;
    end;


    DM.Q_ORDERS_ORDERS.EnableControls;
    DM.Q_ORDERS_ORDERS.Refresh;

  except
     on E: Exception do
     begin
       DM.Q_ORDERS_ORDERS.EnableControls;
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
     end;
  End;
end;


// Выделить/РазВыделить всех клиентов
procedure Torders_clients.SelectRows(Param: integer);
begin
  DM.Q_ORDERS_ORDERS.DisableControls;
  DM.Q_ORDERS_ORDERS.First;
  try
    while not DM.Q_ORDERS_ORDERS.Eof do
    begin
      DM.Q_ORDERS_ORDERS.Edit;
      DM.Q_ORDERS_ORDERSCHECKED.AsInteger := Param;
      DM.Q_ORDERS_ORDERS.Post;
      DM.Q_ORDERS_ORDERS.Next;
    end;
  finally
    DM.Q_ORDERS_ORDERS.EnableControls;
  end;
end;

// Выделить всех клиентов
procedure Torders_clients.Select_allExecute(Sender: TObject);
begin
  SelectRows(1);
end;

// РазВыделить всех клиентов
procedure Torders_clients.DeSelect_allExecute(Sender: TObject);
begin
  SelectRows(0);
end;


// Копировать клиента в текущий заказ
procedure Torders_clients.pmIntoOrderClick(Sender: TObject);
var idd2: integer;
    res : integer;
begin
  frm_find_client := Tfrm_find_client.Create(Application);
  try
    DM.Q_CLIENTS.Open;
    frm_find_client.DBGridEh2.SumList.Active := true;
    frm_find_client.cds_client_orders.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
    frm_find_client.cds_client_orders.Open;
    if (frm_find_client.ShowModal = mrOk) then
    begin
      // 2014-10-19 Попробуем найти заказ уже имеющийся на данного клиента, чтобы предотвратить бедствие!
      DM.Q_SQL.Close;
      dm.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'select count(*) as nn from orders_clients where active = 1 and id_orders=:p1 and ID_CLIENTS=:p3';
      DM.Q_SQL.ParamByName('p1').Value := DM.Q_ORDERSID_ORDERS.AsInteger;
      DM.Q_SQL.ParamByName('p3').Value := frm_find_client.cds_client_orders.FieldByName('id_clients').AsInteger;
      DM.Q_SQL.Open;
      if DM.Q_SQL.FieldByName('nn').AsInteger > 0 then
      begin
        res := MessageDlg('В текущем заказе есть данный клиент (кол-во '+DM.Q_SQL.FieldByName('nn').AsString+'). Добавить новый, присоединить к текущему, отменить?',mtConfirmation,[mbYes, mbOK, mbCancel],0);
        if res = mrCancel then exit;
      end;

      idd2 := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin copy_order(:ID_ORDER, :ID_CL_ORDER, :user_, :isJoin); end;');
      DM.Q_SQL.ParamByName('ID_CL_ORDER').AsInteger := frm_find_client.cds_client_orders.FieldByName('id_orders_clients').AsInteger;
      DM.Q_SQL.ParamByName('ID_ORDER').AsInteger := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;
      DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
      if res = mrOK then
        DM.Q_SQL.ParamByName('isJoin').AsInteger := 1
      else
        DM.Q_SQL.ParamByName('isJoin').AsInteger := 0;
      DM.Q_SQL.Execute;
      DM.Q_ORDERS.RefreshRecord;
      DM.Q_ORDERS_ORDERS.Refresh;

      Application.MessageBox(PChar('Заказ клиента '+DM.Q_CLIENTSNICK.AsString+' помещен в текущий заказ от '+DM.Q_ORDERSDATE_TRUCK_OUT.AsString+'!'),'Результат',MB_ICONINFORMATION);
      grClients.SetFocus;
    end;
  finally
    DM.Q_CLIENTS.Close;
    frm_find_client.Free;
  end;
end;

// Текущего клиента в другой заказ
procedure Torders_clients.pmOutOrderClick(Sender: TObject);
var idd, new_order, i, z_index: integer;
    alpha: string;
begin
  idd := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;
//  z_index := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
  z_index := VarToInt(grClients_vID_ORDERS_CLIENTS.EditValue); // DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
  if z_index > 0 then
  begin
    new_order := OpenFormForEdit(z_index);
    if grClients_v.Controller.SelectedRowCount > 1 then
    begin
      for I := 0 to grClients_v.Controller.SelectedRowCount-1 do
      begin
        if grClients_v.Controller.SelectedRows[i].Values[grClients_vID_ORDERS_CLIENTS.Index] <> z_index then
        begin
          alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + DM.CountSameClients(new_order, DM.Q_ORDERS_ORDERSID_CLIENTS.AsInteger);
          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin copy_order(:ID_ORDER, :ID_CL_ORDER, :user_, :isJoin); end;');
          DM.Q_SQL.ParamByName('ID_CL_ORDER').AsInteger := grClients_v.Controller.SelectedRows[i].Values[grClients_vID_ORDERS_CLIENTS.Index];
          DM.Q_SQL.ParamByName('ID_ORDER').AsInteger := new_order;
          DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
          DM.Q_SQL.ParamByName('isJoin').AsInteger := 0;
          DM.Q_SQL.Execute;
        end;
      end;
      MessageBox(Handle, PChar('Пачка заказов скопирована успешно'+#13+'№'+IntToStr(new_order)), 'Внимание', MB_ICONINFORMATION);
      DM.Main_session.Commit;
    end;
    DM.Q_ORDERS.Refresh;
    DM.Q_ORDERS.Locate('ID_ORDERS',idd,[]);
  end;
end;


// Сменим клиента в заказе
procedure Torders_clients.mnChangeClientClick(Sender: TObject);
begin
  if add.Enabled = true then
  begin
    orders_new_client := Torders_new_client.Create(Application);
    try
      DM.Q_CLIENTS.Open;
      orders_new_client.DBGridEh1.Tag := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
      if orders_new_client.ShowModal = mrOK then
      begin
        grClients_v.DataController.Summary.Recalculate;
        DM.Q_ORDERS_ORDERS.Refresh;
        DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',orders_new_client.DBGridEh1.Tag,[]);
      end;
      DM.Q_CLIENTS.Close;
    finally
      orders_new_client.Free;
    end;
  end;
end;


end.
