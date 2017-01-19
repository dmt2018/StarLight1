unit frm_DM;

interface

uses
  SysUtils, IniFiles, IdTCPConnection, IdTCPClient, PI_Library_reg,
  IdExplicitTLSClientServerBase, IdFTP, Windows, StrUtils, IdBaseComponent,
  IdComponent, Dialogs, frxChBox, frxClass, frxDBSet, DB, Ora, frxExportMail,
  frxExportXML, frxExportImage, frxExportRTF, frxExportXLS, frxExportHTML,
  frxExportPDF, DBAccess, MemDS, Classes, Controls, ImgList, cxGraphics;

type
  TDM = class(TDataModule)
    Main_session: TOraSession;
    Q_SQL: TOraQuery;
    Q_SQL_DS: TOraDataSource;
    Q_FLOWER_TYPE: TOraQuery;
    Q_FLOWER_TYPEFT_ID: TFloatField;
    Q_FLOWER_TYPEF_TYPE: TStringField;
    Q_FLOWER_TYPE_DS: TOraDataSource;
    Q_FL_SUBTYPE: TOraQuery;
    Q_FL_SUBTYPEFST_ID: TFloatField;
    Q_FL_SUBTYPEF_SUB_TYPE: TStringField;
    Q_FL_SUBTYPEFT_ID: TFloatField;
    Q_FL_SUBTYPE_DS: TOraDataSource;
    Q_SQL_SPIS: TOraQuery;
    Q_SQL_SPIS_DS: TOraDataSource;
    Ora_SQL: TOraSQL;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    Q_STORE: TOraQuery;
    Q_STORE_DS: TOraDataSource;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxXMLExport1: TfrxXMLExport;
    frxMailExport1: TfrxMailExport;
    Q_STORESTORE_TYPE: TFloatField;
    Q_STOREID_DEPARTMENTS: TIntegerField;
    Q_STOREFULL_NAME: TStringField;
    Q_STOREF_NAME: TStringField;
    Q_STOREF_NAME_RU: TStringField;
    Q_STOREF_TYPE: TStringField;
    Q_STOREF_SUB_TYPE: TStringField;
    Q_STORECODE: TStringField;
    Q_STORELEN: TIntegerField;
    Q_STOREPACK: TIntegerField;
    Q_STORECOLOUR: TStringField;
    Q_STORECOL_ID: TFloatField;
    Q_STOREFT_ID: TFloatField;
    Q_STOREFST_ID: TFloatField;
    Q_STOREFN_ID: TFloatField;
    Q_STORES_ID: TFloatField;
    Q_STOREC_ID: TFloatField;
    Q_STOREH_CODE: TStringField;
    Q_STORECOUNTRY: TStringField;
    Q_STOREQUANTITY: TFloatField;
    Q_STOREN_ID: TFloatField;
    Q_STOREPRICE: TFloatField;
    Q_STORERESERV: TFloatField;
    Q_STOREITOGO: TFloatField;
    ins_res_proc: TOraStoredProc;
    Q_ORDERS: TOraQuery;
    Q_ORDERS_DS: TOraDataSource;
    Q_ORDERS_ORDERS: TOraQuery;
    Q_ORDERS_ORDERSID_ORDERS_CLIENTS: TFloatField;
    Q_ORDERS_ORDERSN_TRUCK: TIntegerField;
    Q_ORDERS_ORDERSCAPACITY: TFloatField;
    Q_ORDERS_ORDERSD_DATE: TDateTimeField;
    Q_ORDERS_ORDERSNICK: TStringField;
    Q_ORDERS_ORDERSPHONE: TStringField;
    Q_ORDERS_ORDERSFIO: TStringField;
    Q_ORDERS_ORDERSSSS: TFloatField;
    Q_ORDERS_ORDERS_DS: TOraDataSource;
    Q_ORDERS_ORDERSNN: TFloatField;
    Q_ORDERS_ORDERSWEIGHT: TFloatField;
    Q_ORDERS_LIST: TOraStoredProc;
    Q_ORDERS_LIST_DS: TOraDataSource;
    q_raznos: TOraQuery;
    q_raznos_ds: TOraDataSource;
    q_raznos_st: TOraQuery;
    q_raznos_st_DS: TOraDataSource;
    q_raznos_t: TOraQuery;
    q_raznos_t_DS: TOraDataSource;
    q_raznos_2: TOraQuery;
    q_raznos_2_ds: TOraDataSource;
    Q_ORDERSID_ORDERS: TFloatField;
    Q_ORDERSINVOICE: TFloatField;
    Q_ORDERSD_DATE: TDateTimeField;
    Q_ORDERSDATE_TRUCK: TDateTimeField;
    Q_ORDERSINFO: TStringField;
    Q_ORDERSNUMM: TFloatField;
    Q_STORESPESIFICATION: TStringField;
    Q_ORDERSNN: TFloatField;
    Q_ORDERSDATE_TRUCK_OUT: TDateTimeField;
    q_raznos_2N_ID: TFloatField;
    q_raznos_2TRUCK: TIntegerField;
    q_raznos_2WEIGHT: TFloatField;
    q_raznos_2SUM_N: TFloatField;
    q_raznos_2ID_ORDERS: TFloatField;
    q_raznos_2NICK: TStringField;
    q_raznos_2VBN: TIntegerField;
    q_raznos_2LEN: TIntegerField;
    q_raznos_2PACK: TIntegerField;
    q_raznos_2HOL_TYPE: TStringField;
    q_raznos_2F_NAME_RU: TStringField;
    q_raznos_2COUNTRY: TStringField;
    q_raznos_2F_SUB_TYPE: TStringField;
    q_raznos_2F_TYPE: TStringField;
    frxReport1: TfrxReport;
    Q_ORDERS_ORDERSPACK_: TIntegerField;
    Q_ORDERS_ORDERSID_ORDERS: TFloatField;
    Q_ORDERS_ORDERSID_CLIENTS: TIntegerField;
    store_exec: TOraStoredProc;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    IntegerField4: TIntegerField;
    FloatField13: TFloatField;
    StringField12: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    Q_ORDERS_ORDERSALPHA: TStringField;
    fr_order_orders: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    fr_orders: TfrxDBDataset;
    fr_order_list: TfrxDBDataset;
    q_raznos_stTRUCK: TFloatField;
    q_raznos_stWEIGHT: TFloatField;
    q_raznos_stQQQ: TFloatField;
    q_raznos_stID_ORDERS: TFloatField;
    q_raznos_stF_SUB_TYPE: TStringField;
    q_raznos_stF_TYPE: TStringField;
    q_raznos_stHOL_SUB_TYPE: TStringField;
    q_raznos_stFT_ID: TFloatField;
    q_raznos_stFST_ID: TFloatField;
    q_raznos_tTRUCK: TFloatField;
    q_raznos_tWEIGHT: TFloatField;
    q_raznos_tQQQ: TFloatField;
    q_raznos_tID_ORDERS: TFloatField;
    q_raznos_tF_TYPE: TStringField;
    q_raznos_tFT_ID: TFloatField;
    Q_ORDERS_ORDERSNICK_USER: TStringField;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSREGIONS_NAME: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_ORDERS_LISTCOMPILED_NAME_OTDEL: TStringField;
    Q_ORDERS_LISTH_NAME_F: TStringField;
    Q_ORDERS_LISTH_NAME: TStringField;
    Q_ORDERS_LISTF_NAME: TStringField;
    Q_ORDERS_LISTFN_ID: TFloatField;
    Q_ORDERS_LISTF_SUB_TYPE: TStringField;
    Q_ORDERS_LISTF_TYPE: TStringField;
    Q_ORDERS_LISTN_ID: TFloatField;
    Q_ORDERS_LISTLEN: TIntegerField;
    Q_ORDERS_LISTPACK: TIntegerField;
    Q_ORDERS_LISTVBN: TIntegerField;
    Q_ORDERS_LISTWEIGHT: TFloatField;
    Q_ORDERS_LISTFST_ID: TFloatField;
    Q_ORDERS_LISTFT_ID: TFloatField;
    Q_ORDERS_LISTC_ID: TFloatField;
    Q_ORDERS_LISTS_ID: TFloatField;
    Q_ORDERS_LISTS_NAME_RU: TStringField;
    Q_ORDERS_LISTCOLOUR: TStringField;
    Q_ORDERS_LISTCOL_ID: TFloatField;
    Q_ORDERS_LISTCOUNTRY: TStringField;
    Q_ORDERS_LISTID_DEPARTMENTS: TFloatField;
    Q_ORDERS_LISTHOL_SUB_TYPE: TStringField;
    Q_ORDERS_LISTREMARKS: TStringField;
    Q_ORDERS_LISTHT_ID: TFloatField;
    Q_ORDERS_LISTRUS_MARKS: TStringField;
    Q_ORDERS_LISTH_CODE: TStringField;
    Q_ORDERS_LISTHOL_TYPE: TStringField;
    Q_ORDERS_LISTSUB_WEIGHT: TFloatField;
    Q_ORDERS_LISTSTORE_ALL: TFloatField;
    Q_ORDERS_LISTID_ORDERS_CLIENTS: TFloatField;
    Q_ORDERS_LISTFL_ORDERS_ALL: TFloatField;
    Q_ORDERS_LISTFL_ORDERS: TFloatField;
    Q_ORDERS_LISTID_ORDERS_LIST: TFloatField;
    Q_ORDERS_LISTZATIRKA: TIntegerField;
    Q_ORDERS_LISTTRUCK: TIntegerField;
    Q_ORDERS_LISTBAR_CODE: TStringField;
    Q_ORDERS_LISTCODE: TFloatField;
    odOrder: TOpenDialog;
    Q_ORDERS_LISTSTORE_SPIS: TFloatField;
    Q_ORDERS_LISTSTORE_UCEN: TFloatField;
    Q_ORDERS_LISTSTORE_PROD: TFloatField;
    IdFTP1: TIdFTP;
    Q_ORDERS_ORDERSIN_FILE: TStringField;
    StorProc: TOraStoredProc;
    Q_ORDERS_ORDERSMISS_CODE: TStringField;
    Q_ORDERS_ORDERSISMISSCODE: TFloatField;
    cdsOrderMSK: TOraQuery;
    dsOrderMSK: TOraDataSource;
    cdsOrderMSKN_ID: TFloatField;
    cdsOrderMSKQUANTITY: TIntegerField;
    cdsOrderMSKCODE: TFloatField;
    cdsOrderMSKCOMPILED_NAME_OTDEL: TStringField;
    cdsOrderMSKPRICE: TFloatField;
    frxOrderMsk: TfrxDBDataset;
    cdsOrderMSKLEN: TIntegerField;
    cdsOrderMSKCOLOUR: TStringField;
    frxOrderTotal: TfrxDBDataset;
    dsOrderTotal: TOraDataSource;
    cdsOrderTotal: TOraQuery;
    cdsOrderTotalN_ID: TFloatField;
    cdsOrderTotalCODE: TFloatField;
    cdsOrderTotalCOMPILED_NAME_OTDEL: TStringField;
    cdsOrderTotalPRICE: TFloatField;
    cdsOrderTotalLEN: TIntegerField;
    cdsOrderTotalCOLOUR: TStringField;
    cdsOrderTotalQUANTITY: TFloatField;
    cdsOrderTotalSTOK: TFloatField;
    cdsOrderTotalSUMM: TFloatField;
    Q_ORDERS_LISTCOUNT_DATA: TIntegerField;
    Q_ORDERS_ORDERSCHECKED: TFloatField;
    Q_ORDERS_LISTREMARKS_TMP: TStringField;
    Q_ORDERSCHECKED: TFloatField;
    Q_ORDERS_ORDERSQQQ: TFloatField;
    Q_ORDERS_LISTPRICE: TFloatField;
    cdsNom: TOraQuery;
    cdsNomN_ID: TFloatField;
    cxImageList1: TcxImageList;
    SaveDialog1: TSaveDialog;
    Q_ORDERS_LISTPACK_: TFloatField;
    Q_ORDERS_LISTNBUTTON: TFloatField;
    Q_ORDERSDIST_IND_ID: TFloatField;
    Q_ORDERS_LISTNOM_NEW: TIntegerField;
    Q_ORDERS_LISTNOM_START: TIntegerField;
    Q_ORDERS_LISTNOM_END: TIntegerField;
    Q_ORDERS_LISTDIAMETER: TFloatField;
    Q_ORDERS_LISTWEIGHTDRY: TFloatField;
    Q_ORDERS_LISTCUST_COEF: TFloatField;
    Q_ORDERS_LISTNOPRINT: TIntegerField;
    Q_ORDERS_LISTNOTUSE: TIntegerField;
    Q_ORDERS_LISTPHOTO: TStringField;
    Q_ORDERS_LISTTNVED: TStringField;
    Q_ORDERS_LISTNAME_CODE: TStringField;
    Q_ORDERS_LISTHOL_COLOR: TStringField;
    Q_ORDERS_LISTID_OFFICE: TIntegerField;
    Q_ORDERS_LISTORD: TFloatField;
    cdsNom2: TOraQuery;
    cdsNom2N_ID: TFloatField;
    Q_ORDERS_LISTSPEC: TFloatField;
    Q_ORDERS_LISTPREV_STOCK_AMOUNT: TFloatField;
    Q_ORDERS_LISTSTOCK_DISTRIBUTION: TFloatField;
    Q_ORDERS_LISTCLIENT_DISTRIBUTION: TFloatField;
    Q_ORDERS_LISTCORRECTION: TFloatField;
    fr_raznos: TfrxDBDataset;
    Q_ORDERSORDER_SEQ: TFloatField;
    Q_ORDERSS_ID: TIntegerField;
    Q_ORDERSS_NAME_RU: TStringField;
    tmpSQL: TOraQuery;
    q_raznosN_ID: TFloatField;
    q_raznosTRUCK: TFloatField;
    q_raznosWEIGHT: TFloatField;
    q_raznosSUM_N: TFloatField;
    q_raznosSUM_CORR: TFloatField;
    q_raznosSUM_DIR: TFloatField;
    q_raznosSUM_PACK: TFloatField;
    q_raznosSUM_ITOG: TFloatField;
    q_raznosZATIRKA: TFloatField;
    q_raznosID_ORDERS: TFloatField;
    q_raznosVBN: TIntegerField;
    q_raznosLEN: TIntegerField;
    q_raznosPACK: TIntegerField;
    q_raznosH_NAME: TStringField;
    q_raznosNAME_CODE: TStringField;
    q_raznosH_CODE: TStringField;
    q_raznosREMARKS: TStringField;
    q_raznosF_NAME: TStringField;
    q_raznosCOMPILED_NAME_OTDEL: TStringField;
    q_raznosCOUNTRY: TStringField;
    q_raznosF_SUB_TYPE: TStringField;
    q_raznosF_TYPE: TStringField;
    q_raznosHOL_SUB_TYPE: TStringField;
    q_raznosFST_ID: TFloatField;
    q_raznosPACKED: TFloatField;
    q_raznosORD: TFloatField;
    q_raznosHOL_TYPE: TStringField;
    q_raznosHOL_TYPE_: TStringField;
    Q_ORDERSSUM_PRICE: TFloatField;
    Q_ORDERS_ORDERSSUM_PRICE: TFloatField;
    Q_ORDERS_LISTRESERV: TFloatField;
    Q_ORDERS_LISTSTOCK_DISTRIBUTION_DONE: TFloatField;
    Q_ORDERS_LISTCLIENT_DISTRIBUTION_DONE: TFloatField;
    Q_ORDERSHAVE_NOTVALID_FLOWERS: TFloatField;
    Q_ORDERS_ORDERSHAVE_NOTVALID_FLOWERS: TFloatField;
    Q_ORDERS_ORDERSBLOCK1: TIntegerField;
    Q_ORDERS_ORDERSBLOCK2: TIntegerField;
    Q_ORDERS_ORDERSHAVE_OLD_FLOWERS: TFloatField;
    OraQuery1: TOraQuery;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    q_raznosREMARKS_TMP: TStringField;
    Q_ORDERSOLD_PRICE: TIntegerField;
    Q_ORDERS_ORDERSPRIORITY: TIntegerField;
    Q_CLIENTSCHECKED: TFloatField;
    procedure Main_sessionAfterConnect(Sender: TObject);
    procedure Q_ORDERS_LIST_OLDAfterPost(DataSet: TDataSet);
    procedure Q_ORDERS_LISTBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure Q_ORDERS_ORDERSBeforeEdit(DataSet: TDataSet);
    procedure Q_ORDERS_ORDERSAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    old_quantity: integer;
    DeptID: integer;
    id_office : integer;
    curAlpha: string;
    isPacking: integer;
    isEdit: boolean;
    isFilterByDobor: boolean;
    { Public declarations }
    function UpploadOrderFromInet(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
    function UpploadOrderFromInetNewSite(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
    function UpploadDoborFromInet(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
    function CreateClientOrder(idOrder: integer; idClient: integer; FullFileName : String):Integer;
    function CreateOrder(pId: integer; pPrihod: TDateTime; pText : String; pVihod: TDateTime):Integer;
    procedure ShowInfoAboutOrder(idOrder: integer; dateCargo: string; idClient: integer; alpha: string; idOrdClient: integer);
    function CheckExportFolder(Hwnd: THandle; pOrder: integer):String;
    function CountSameClients(pId: integer; pClient: integer):String;
    function MakeTXTFile(Hwnd: THandle; pOrder: integer; pathStr: string):String;
    function MakeCSVFile(Hwnd: THandle; pOrder: integer; pathStr: string):String;
    procedure ExportToFile(pTruck: integer; pathStr: string);
    procedure MakeTXTFileByTruck(Hwnd: THandle; pOrder: integer; pathStr: string);
  end;

var
  DM: TDM;

implementation

uses frm_first_dialog, frm_orders_list, UInfo, UShowOrder, client_choos;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := first_dialog_frm.path+'orders.ini';
    RegIni := TIniFile.Create(path);
    IdFTP1.Host     := RegIni.ReadString('FTP', 'host', '');
    IdFTP1.Username := RegIni.ReadString('FTP', 'login', '');
    IdFTP1.Password := RegIni.ReadString('FTP', 'pass', '');
    isFilterByDobor := RegIni.ReadBool('defFilterByDobor','value', false);
    isEdit := true;
  finally
    RegIni.Free;
  end;

  odOrder.InitialDir := first_dialog_frm.uDefDir;
  if first_dialog_frm.uSortClient then
     Q_CLIENTS.IndexFieldNames := 'NICK'
  else
     Q_CLIENTS.IndexFieldNames := 'FIO';

  if first_dialog_frm.uDefSort = 0 then
     Q_ORDERS_LIST.IndexFieldNames := 'compiled_name_otdel';
  if first_dialog_frm.uDefSort = 1 then
     Q_ORDERS_LIST.IndexFieldNames := 'NBUTTON;compiled_name_otdel';
  if first_dialog_frm.uDefSort = 2 then
     Q_ORDERS_LIST.IndexFieldNames := 'NBUTTON;h_name';
{
  if isFilterByDobor then
    DM.Q_ORDERS_ORDERS.ParamByName('set_type').AsInteger := 3
  else
    DM.Q_ORDERS_ORDERS.ParamByName('set_type').AsInteger := 2;
}    
end;


procedure TDM.Main_sessionAfterConnect(Sender: TObject);
begin
    // Устанавливаем параметры сессии
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('alter session set nls_date_format=''dd.mm.yyyy''');
  DM.Q_SQL.Execute;
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('alter session set nls_time_format=''hh24:mi:ss''');
  DM.Q_SQL.Execute;
  DM.Q_SQL.Close;
  // -------------------------------

  id_office := GetOfficeID;

  first_dialog_frm.DBComboBoxEh1.OnChange := nil;
  FillComboEh(Q_SQL, first_dialog_frm.DBComboBoxEh1, 'SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS WHERE STATE = 1 ORDER BY NAME');
  first_dialog_frm.DBComboBoxEh1.ItemIndex := first_dialog_frm.DBComboBoxEh1.KeyItems.IndexOf(IntToStr(DeptID));
end;


// Обновление таблицы после ввода заказа
procedure TDM.Q_ORDERS_LIST_OLDAfterPost(DataSet: TDataSet);
begin
  if (Q_ORDERS_LIST.Active = true) and (Q_ORDERS_LISTFL_ORDERS.IsNull = false)  then
  begin
    Q_ORDERS_LIST.RefreshRecord;
  end;
end;


procedure TDM.Q_ORDERS_ORDERSAfterPost(DataSet: TDataSet);
begin
  if curAlpha <> Q_ORDERS_ORDERSALPHA.AsString then
  begin
// 2014-10-19 Попробуем найти заказ с которым будет объединение на предмет разных признаков паковки
    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'select count(*) as nn from orders_clients where active = 1 and id_orders=:p1 and ID_ORDERS_CLIENTS<>:p2 and ID_CLIENTS=:p3 and PACK_=:p5 and (ALPHA = :p4 or (ALPHA is null and :p4 is null))';
    DM.Q_SQL.ParamByName('p1').Value := Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.ParamByName('p2').Value := Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
    DM.Q_SQL.ParamByName('p3').Value := Q_ORDERS_ORDERSID_CLIENTS.AsInteger;
    DM.Q_SQL.ParamByName('p4').Value := Q_ORDERS_ORDERSALPHA.AsString;
    DM.Q_SQL.ParamByName('p5').Value := abs(1-Q_ORDERS_ORDERSPACK_.AsInteger);
    DM.Q_SQL.Open;
    if DM.Q_SQL.FieldByName('nn').AsInteger > 0 then
    begin
      if MessageDlg('Вы объединяете упакованного и неупакованного клиента. Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrNo then
      begin
        isEdit := false;
        Q_ORDERS_ORDERS.Edit;
        Q_ORDERS_ORDERSALPHA.AsString := curAlpha;
        Q_ORDERS_ORDERS.Post;
        curAlpha := '';
        isEdit := true;
        exit;
      end;
    end;
    


    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.join_clients_order(:ID_ORDERS_CLIENTS,:ALPHA); end;';
    DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
    DM.Q_SQL.ParamByName('ALPHA').Value := Q_ORDERS_ORDERSALPHA.AsString;
    DM.Q_SQL.Execute;
    Q_ORDERS_ORDERS.Refresh;
    curAlpha := '';
  end;
end;

procedure TDM.Q_ORDERS_ORDERSBeforeEdit(DataSet: TDataSet);
begin
  if isEdit then
  begin
    curAlpha  := Q_ORDERS_ORDERSALPHA.AsString;
    isPacking := Q_ORDERS_ORDERSPACK_.AsInteger;
  end;
end;

procedure TDM.Q_ORDERS_LISTBeforePost(DataSet: TDataSet);
begin
  orders_list.save_or := true;
end;




// Загрузить заказ из интернета
function TDM.UpploadOrderFromInet(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
var conf: textfile;
    Date1, Date2, Client, Email, tmpstr, alpha: string;
    z_code, z_q, z_name, err_log, err_log_short, vInfo: string;
    id_cl, idClient, idOrder, fistPos, res: integer;
    dateCargo, dateIn: TDateTime;
    fs : TFormatSettings;
begin
  // Открываем файл с заказом
  try
    AssignFile(conf, FullFileName);
    Reset(conf);
    try
    Readln(conf, Date1);  // Дата прихода машины в МСК
    Readln(conf, Date2);  // Дата выхода машины из Голландии
    Readln(conf, Client);
    Readln(conf, Email);
    Readln(conf);

    Date1 := copy(Date1,7,length(Date1));
    Date2 := copy(Date2,7,length(Date2));
    GetLocaleFormatSettings(1251,fs);
    fs.DateSeparator := '-';
    fs.ShortDateFormat := 'yyyy-mm-dd';
    dateIn := StrToDate(Date1,fs);
    dateCargo := StrToDate(Date2,fs);
    idClient := 0;
    Q_CLIENTS.Open;

// 1. Считаем код клиента с файла и сопоставим его с базой
    Client := Trim(copy(Client,pos(':',Client)+1,length(Client)-1));
    if Client = '' then
    begin
      MessageBox(Hwnd, 'Строка с клиентом пустая!', 'Внимание', MB_ICONERROR);
      // Предоставим выбор клиента
      clientchoosForm := TclientchoosForm.Create(nil);
      try
        clientchoosForm.block_client_ := 0;
        if clientchoosForm.showmodal = mrOk then
          idClient := clientchoosForm.choised_client_
        else
        begin
          result := false;
          exit;
        end;
      finally
        clientchoosForm.Free;
      end;
    end;


    if (idClient = 0) then
    begin
      if Not Q_CLIENTS.Locate('nick',Client,[loCaseInsensitive]) then
      begin
        MessageBox(Hwnd, PChar('Клиент с кодом '+Client+' не найден!'), 'Внимание', MB_ICONERROR);
        // Предоставим выбор клиента
        clientchoosForm := TclientchoosForm.Create(nil);
        try
          clientchoosForm.block_client_ := 0;
          if clientchoosForm.showmodal = mrOk then
            idClient := clientchoosForm.choised_client_
          else
          begin
            result := false;
            exit;
          end;
        finally
          clientchoosForm.Free;
        end;

      end
      else idClient := Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
    end;
    //Q_CLIENTS.Close;
// -------------------------------

// 2. По дате отправки найдем заказ или добавим новый
    if vOrder > 0 then
      idOrder := vOrder
    else
    begin
      if Q_ORDERS.Locate('DATE_TRUCK_OUT',dateCargo,[]) then
      begin
        idOrder := Q_ORDERSID_ORDERS.AsInteger;
      end
      else
      begin
        idOrder := CreateOrder(0, dateIn, '', dateCargo);
        DM.Q_ORDERS.Refresh;
        DM.Q_ORDERS.Locate('ID_ORDERS',idOrder,[]);
      end;
    end;

    if idOrder > 0 then
    begin
      Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(Main_session.Username);
      Q_ORDERS_ORDERS.Open;
    end
    else
    begin
      MessageBox(Hwnd, PChar('Нет выбранного заказа!'), 'Внимание', MB_ICONERROR);
      result := false;
      exit;
    end;
// -------------------------------


// 3. Проверим нет ли уже добавленного заказа клиента. Если есть, то спросим добавить в найденный
    alpha := Client;
    Q_ORDERS_ORDERS.Refresh;
    if Q_ORDERS_ORDERS.Locate('ID_CLIENTS',idClient,[]) then
    begin
      alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + CountSameClients(DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger, idClient);
//      alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + alpha;
      res := MessageDlg(PChar('Клиент с кодом '+Client+' уже есть в заказе.'#13'Yes - Добавить данные в уже существущий заказ'#13'No - Создать новый заказ "'+trim(alpha)+'"'#13'Cancel - отмена операции'),mtConfirmation,[mbYes, mbNo, mbCancel],0);
      if res = mrYes then
      begin
        id_cl := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
        alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + DM.Q_ORDERS_ORDERSALPHA.AsString;
      end else id_cl := 0;
      if res = mrCancel then exit;
      
    end else id_cl := 0;
// -------------------------------


// 4. Сделаем заказ
    if (id_cl = 0) then
    begin
      id_cl := CreateClientOrder(idOrder, idClient, FullFileName);
    end;

    if (id_cl = 0) then
    begin
      MessageBox(Hwnd, PChar('Заказ для клиента '+alpha+' не был создан!'), 'Ошибка', MB_ICONERROR);
      result := false;
      exit;
    end;
// -------------------------------


// 5. Добавим позиции в заказ
    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';
    DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := id_cl;

    err_log := '';
    err_log_short := '';
    vInfo   := '';
    while not Eof(conf) do
    begin
      Readln(conf, tmpstr);
      z_code := '';
      z_q    := '';

      z_code := Trim(copy(tmpstr,pos('.',tmpstr)+1,length(tmpstr)));
      z_code := Trim(copy(z_code,1,pos('.',z_code)-1));
      z_q := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)-1));
      z_name := Trim(copy(tmpstr,1,pos(';',tmpstr)-1));

      if (z_code <> '') and (z_q <> '') then
      begin
        cdsNom2.Close;
        cdsNom2.ParamByName('p_code').AsString := z_code;
        cdsNom2.ParamByName('p_dep').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
        cdsNom2.Open;
        if not cdsNom2.IsEmpty then
        begin
          DM.Q_SQL.ParamByName('N_ID').Value        := cdsNom2N_ID.AsInteger;
          DM.Q_SQL.ParamByName('FL_ORDERS').Value   := StrToInt(z_q);
          DM.Q_SQL.ParamByName('TRUCK').Value       := 0;
          DM.Q_SQL.ParamByName('sub_weight').Value  := 0;
          DM.Q_SQL.ParamByName('v_site_data').Value := ReplaceStr(tmpstr,'''','`');
          DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
          DM.Q_SQL.Execute;
        end
        else
        begin
          // Решено информацию оставлять как в файле прихода
          err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
          err_log_short := err_log_short + z_code +';' + z_q + #13#10;
          vInfo   := vInfo + z_name + ' - ' + z_q + #13#10;
        end;

        cdsNom.Close;
      end;
    end;
// -------------------------------

// 6. Если есть ошибки по позициям, покажем их
    if vInfo <> '' then
    begin
      Q_SQL.Close;
      Q_SQL.SQL.Clear;
      Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set miss_code=miss_code||'''+err_log+''', miss_code_short=miss_code_short||'''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(id_cl);
      Q_SQL.Execute;
      Q_SQL.Close;
    end;
// -------------------------------


    Main_session.Commit;
    DM.Q_ORDERS.RefreshRecord;
    DM.Q_ORDERS_ORDERS.RefreshRecord;
    finally
      CloseFile(conf);
    end;

    if vInfo <> '' then
    begin
       OpenFormForShow('Заказ обработан успешно. Создан заказ на клиента "'+trim(alpha)+'", '+DM.Q_ORDERSDATE_TRUCK_OUT.AsString+#13#10+'Коды не найденные в номенклатуре:'+#13#10+vInfo);
    end
    else
       MessageBox(Hwnd, PChar('Заказ обработан успешно. Создан заказ на клиента "'+trim(alpha)+'", '+DM.Q_ORDERSDATE_TRUCK_OUT.AsString), 'Результат', MB_ICONINFORMATION);

    ShowInfoAboutOrder(idOrder, DateToStr(dateCargo), idClient, DM.Q_ORDERS_ORDERSALPHA.AsString, id_cl);
    Q_CLIENTS.Close;

    result := true;

  except
     on E: Exception do
      MessageBox(Hwnd, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;






// Загрузить заказ из интернета
function TDM.UpploadOrderFromInetNewSite(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
var conf: textfile;
    Date1, Date2, Client, Email, tmpstr, alpha, tmp, order_num: string;
    z_price, z_code, z_q, z_name, err_log, err_log_short, vInfo, dep, dep_order, ortype, depid, arrive, depart: string;
    id_cl, idClient, idOrder, fistPos, res, order_type: integer;
    dateCargo, dateIn: TDateTime;
    fs : TFormatSettings;
begin
  // Открываем файл с заказом
  try
    AssignFile(conf, FullFileName);
    Reset(conf);
    try
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




order:	1167
ortype:	2
depid:	3
date:	14-06-2015 16:42
office:	Старлайт Казань
depart:	Срезанные цветы
login:	16 KAVG
bcode:	1600199921163
name:	КАРАНДАКОВА ВИОЛЕТТА ГЕННАДЬЕВНА
email:	kazan@starlight.ru
phone:	89030625212(магазин) :89656009610 89063274170 Наташа: 89050250820 Ксюша: 89093095045 Лена: 8(903)062-56-35 : 8(903)062-56-35
city:	Татарстан респ.
addr:	
summ:	0.00
rem:	
departure:	2015-06-17
arrive:	2015-06-21

--

}
    Readln(conf, order_num);  // order:	2586
    Readln(conf, ortype);     // ortype:	2      1=>'Покупка товаров со склада', 2=>'Предзаказ товаров из новой поставки', 3=>'Предзаказ
    order_type := StrToInt( Trim(copy(ortype,pos(':',ortype)+1,length(ortype)-1)) );
    if (order_type < 2) and (order_type > 3) then
    begin
      MessageBox(Hwnd, 'Данный заказ не является предзаказом', 'Внимание', MB_ICONERROR);
      exit;
    end;

    Readln(conf, depid);      // depid:	3
    Readln(conf, Date1);      // date:	22-08-2014 18:46
    Readln(conf, tmp);        // office:	Старлайт Москва
    Readln(conf, tmp);        // depart:	Горшечный
    Readln(conf, Client);     // login:	M PAGR
    Readln(conf, tmp);        // bcode:	9000199906733
    Readln(conf, tmp);        // name:	ПАРАДИЗ ГРУПП
    Readln(conf, Email);      // email:	miyamshi@domfarfora.ru, salpagarova@domfarfora.ru
    Readln(conf, order_num);  // phone:	+7 (926) 602-9956
    Readln(conf, tmp);        // city:	Москва
    Readln(conf, tmp);        // addr:	107045, г. Москва, Луков переулок, дом 4, офис 8
//    Readln(conf, tmp);        // shipp:	0.00    стоимость доставки
    Readln(conf, tmp);        // summ:	11987.00
    Readln(conf, tmp);        // rem:             примечания к заказу
    Readln(conf, depart);     // depart:	2014-12-09  дата выхода от поставщика
    Readln(conf, arrive);     // arrive:	2014-12-09  дата прибытия в Москву (для предзаказов)
    Readln(conf, tmp);        // --
    Readln(conf, tmp);        // #;depart_id;barcode;title;price;qty;summ
    //Readln(conf);

    arrive := copy(arrive,9,10);
    GetLocaleFormatSettings(1251,fs);
    fs.DateSeparator := '-';
    fs.DecimalSeparator := '.';
    fs.ShortDateFormat := 'yyyy-mm-dd';
    dateIn := StrToDate(arrive,fs);

    depart := copy(depart,12,10);
    fs.ShortDateFormat := 'yyyy-mm-dd';
    dateCargo := StrToDate(depart,fs);
    idClient  := 0;
    Q_CLIENTS.Open;

// 1. Считаем код клиента с файла и сопоставим его с базой
    Client := Trim(copy(Client,pos(':',Client)+1,length(Client)-1));
    if Client = '' then
    begin
      MessageBox(Hwnd, 'Строка с клиентом пустая!', 'Внимание', MB_ICONERROR);
      // Предоставим выбор клиента
      clientchoosForm := TclientchoosForm.Create(nil);
      try
        clientchoosForm.block_client_ := 0;
        if clientchoosForm.showmodal = mrOk then
          idClient := clientchoosForm.choised_client_
        else
        begin
          result := false;
          exit;
        end;
      finally
        clientchoosForm.Free;
      end;
    end;

    if (idClient = 0) then
    begin
      if Not Q_CLIENTS.Locate('nick',Client,[loCaseInsensitive]) then
      begin
        MessageBox(Hwnd, PChar('Клиент с кодом '+Client+' не найден!'), 'Внимание', MB_ICONERROR);

        clientchoosForm := TclientchoosForm.Create(nil);
        try
//        id_client_ := 0;
//        CUR_DATE   := de_date.EditValue;
          clientchoosForm.block_client_ := 0;
          if clientchoosForm.showmodal = mrOk then
            idClient := clientchoosForm.choised_client_
          else
          begin
            result := false;
            exit;
          end;
        finally
          clientchoosForm.Free;
        end;
      end
      else idClient := Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
    end;
    //Q_CLIENTS.Close;
// -------------------------------

// 2. По дате отправки найдем заказ или добавим новый
    if vOrder > 0 then
    begin
      idOrder := vOrder;

      // 2016-10-11
      // СДЕЛАЙТЕ,ПОЖАЛУЙСТА ИНФОРМАЦИОННОЕ ОКНО ,КОТОРОЕ БУДЕТ СПРАШИАВАТЬ " ВЫ ДЕЙСТВИТЕЛЬНО ХОТИТЕ ЗАГРУЗИТЬ ЗАКАЗ НА "ДРУГУЮ  ДАТУ"( Т Е НА ДАТУ ,КОТОРАЯ НЕ СООТВЕТСТВУЕТ ОН-ЛАЙН ДАТЕ)
      if dateCargo <> Q_ORDERSDATE_TRUCK_OUT.AsDateTime then
      begin
        if mrNo = MessageDlg(PChar('Вы действительно хотите загрузить заявку на '+DateToStr(dateCargo)+' в заказ на '+Q_ORDERSDATE_TRUCK_OUT.AsString+'.'),mtConfirmation,[mbYes, mbNo],0) then
        begin
          //MessageBox(Hwnd, PChar('Заказ для клиента '+alpha+' не был создан!'), 'Ошибка', MB_ICONERROR);
          result := false;
          exit;
        end;
      end;
    end

    else
    begin
      if Q_ORDERS.Locate('DATE_TRUCK_OUT',dateCargo,[]) then
      begin
        idOrder := Q_ORDERSID_ORDERS.AsInteger;
      end
      else
      begin
        idOrder := CreateOrder(0, dateIn, '', dateCargo);
        DM.Q_ORDERS.Refresh;
        DM.Q_ORDERS.Locate('ID_ORDERS',idOrder,[]);
      end;
    end;

    if idOrder > 0 then
    begin
      Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(Main_session.Username);
      Q_ORDERS_ORDERS.Open;
    end
    else
    begin
      MessageBox(Hwnd, PChar('Нет выбранного заказа!'), 'Внимание', MB_ICONERROR);
      CloseFile(conf);
      result := false;
      exit;
    end;
// -------------------------------


// 3. Проверим нет ли уже добавленного заказа клиента. Если есть, то спросим добавить в найденный
    alpha := Client;
    Q_ORDERS_ORDERS.Refresh;
    if Q_ORDERS_ORDERS.Locate('ID_CLIENTS',idClient,[]) then
    begin
      alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + CountSameClients(DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger, idClient);
//      alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + alpha;
      res := MessageDlg(PChar('Клиент с кодом '+Client+' уже есть в заказе.'#13'Yes - Добавить данные в уже существущий заказ'#13'No - Создать новый заказ "'+trim(alpha)+'"'#13'Cancel - отмена операции'),mtConfirmation,[mbYes, mbNo, mbCancel],0);
      if res = mrYes then
      begin
        id_cl := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
        alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + DM.Q_ORDERS_ORDERSALPHA.AsString;
      end else id_cl := 0;
      if res = mrCancel then exit;
      
    end else id_cl := 0;
// -------------------------------


// 4. Сделаем заказ
    if (id_cl = 0) then
    begin
      id_cl := CreateClientOrder(idOrder, idClient, FullFileName);
    end;

    if (id_cl = 0) then
    begin
      MessageBox(Hwnd, PChar('Заказ для клиента '+alpha+' не был создан!'), 'Ошибка', MB_ICONERROR);
      result := false;
      exit;
    end;
// -------------------------------


// 5. Добавим позиции в заказ
    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';
    DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := id_cl;

    err_log := '';
    err_log_short := '';
    vInfo   := '';
    Readln(conf, tmpstr);
    while not Eof(conf) do
    begin
      Readln(conf, tmpstr);
      z_code := '';
      z_q    := '';
      z_price := '';

      tmp := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
      dep := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_code := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_name := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_price := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_q := Trim(copy(tmp,1,pos(';',tmp)-1));

      if (z_code <> '') and (z_q <> '') then
      begin
        dep_order := '';
        if first_dialog_frm.DBComboBoxEh1.Value = 121 then dep_order := '2';
        if first_dialog_frm.DBComboBoxEh1.Value = 61 then dep_order := '1';
        if first_dialog_frm.DBComboBoxEh1.Value = 62 then dep_order := '3';

        if dep_order = dep then
        begin
          cdsNom.Close;
          cdsNom.ParamByName('p_code').AsString := z_code;
          cdsNom.ParamByName('p_dep').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
          cdsNom.Open;
          if not cdsNom.IsEmpty then
          begin
            DM.Q_SQL.ParamByName('N_ID').Value        := cdsNomN_ID.AsInteger;
            DM.Q_SQL.ParamByName('FL_ORDERS').Value   := StrToFloat(z_q,fs);
            DM.Q_SQL.ParamByName('TRUCK').Value       := 0;
            DM.Q_SQL.ParamByName('sub_weight').Value  := 0;
            DM.Q_SQL.ParamByName('v_site_data').Value := ReplaceStr(tmpstr,'''','`');
            DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
            DM.Q_SQL.Execute;
          end
          else
          begin
            // Решено информацию оставлять как в файле прихода
            err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
            err_log_short := err_log_short + z_code +';' + z_q + #13#10;
            vInfo   := vInfo + z_name + ' - ' + z_q + #13#10;
          end;
          cdsNom.Close;
        end;
      end;
    end;
// -------------------------------

// 6. Если есть ошибки по позициям, покажем их
    if vInfo <> '' then
    begin
      Q_SQL.Close;
      Q_SQL.SQL.Clear;
      Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set miss_code=miss_code||'''+err_log+''', miss_code_short=miss_code_short||'''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(id_cl);
      Q_SQL.Execute;
      Q_SQL.Close;
    end;
// -------------------------------


    Main_session.Commit;
    DM.Q_ORDERS.RefreshRecord;
    DM.Q_ORDERS_ORDERS.RefreshRecord;
    finally
      CloseFile(conf);
    end;

    if vInfo <> '' then
    begin
       OpenFormForShow('Заказ обработан успешно. Создан заказ на клиента "'+trim(alpha)+'", '+DateToStr(dateCargo)+#13#10+'Коды не найденные в номенклатуре:'+#13#10+vInfo);
    end
    else
       MessageBox(Hwnd, PChar('Заказ обработан успешно. Создан заказ на клиента "'+trim(alpha)+'", '+DateToStr(dateCargo)), 'Результат', MB_ICONINFORMATION);

    ShowInfoAboutOrder(idOrder, DateToStr(dateCargo), idClient, DM.Q_ORDERS_ORDERSALPHA.AsString, id_cl);
    Q_CLIENTS.Close;

    result := true;

  except
     on E: Exception do
      MessageBox(Hwnd, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;



// Загрузить добор из интернета
function TDM.UpploadDoborFromInet(Hwnd: THandle; FullFileName: String; vOrder: Integer):Boolean;
var conf: textfile;
    Date1, Date2, Client, Email, tmpstr, alpha, tmp, order_num, truck_sale_id, SQLstr: string;
    z_price, z_code, z_q, z_name, err_log, err_log_short, vInfo, dep, dep_order, ortype, depid, arrive, depart: string;
    id_cl, idClient, idOrder, fistPos, res: integer;
    dateCargo, dateIn: TDateTime;
    fs : TFormatSettings;
begin
  // Открываем файл с заказом
  try
    AssignFile(conf, FullFileName);
    Reset(conf);
    try
{
"order:	1424"
"ortype:	4"						
"depid:	3"						
"date:	07-12-2015 13:49"						
"office:	Старлайт Москва"						
"depart:	Срезанные цветы"						
"login:	59F ANTI"						
"bcode:	9000199983116"						
"name:	АНТИПИН НИКОЛАЙ МАКСИМОВИЧ"						
"email:	melamori__@mail.ru"						
"phone:	"						
"city:	Пермский край"						
"addr:	"						
"summ:	22000.10"						
"rem:	"						
"departure:	2015-12-07"						
"arrive:	2015-12-10"						
inv_id: 10007897
						
--						
#	depart_id	barcode	title	price	qty	summ
}
    Readln(conf, order_num);  // order:	1424
    Readln(conf, ortype);     // ortype:	4      1=>'Покупка товаров со склада', 2=>'Предзаказ товаров из новой поставки', 3=>'Предзаказ, 4=>С колес

    if StrToInt( Trim(copy(ortype,pos(':',ortype)+1,length(ortype)-1)) ) <> 4 then
    begin
      MessageBox(Hwnd, 'Данный заказ не является продажей с колес', 'Внимание', MB_ICONERROR);
      exit;
    end;

    Readln(conf, depid);      // depid:	3
    Readln(conf, Date1);      // date:	22-08-2014 18:46
    Readln(conf, tmp);        // office:	Старлайт Москва
    Readln(conf, tmp);        // depart:	Горшечный
    Readln(conf, Client);     // login:	M PAGR
    Readln(conf, tmp);        // bcode:	9000199906733
    Readln(conf, tmp);        // name:	ПАРАДИЗ ГРУПП
    Readln(conf, Email);      // email:	miyamshi@domfarfora.ru, salpagarova@domfarfora.ru
    Readln(conf, order_num);  // phone:	+7 (926) 602-9956
    Readln(conf, tmp);        // city:	Москва
    Readln(conf, tmp);        // addr:	107045, г. Москва, Луков переулок, дом 4, офис 8
    Readln(conf, tmp);        // summ:	11987.00
    Readln(conf, depart);     // depart:	2014-12-09  дата выхода от поставщика
    Readln(conf, arrive);     // arrive:	2014-12-09  дата прибытия в Москву (для предзаказов)
    Readln(conf, truck_sale_id); // inv_id: 10007897
    Readln(conf, tmp);        // rem:             примечания к заказу
    Readln(conf, tmp);        //
    Readln(conf, tmp);        // --
    Readln(conf, tmp);        // #;depart_id;barcode;title;price;qty;summ

    GetLocaleFormatSettings(1251,fs);
    arrive              := copy(arrive,9,10);
    fs.DateSeparator    := '-';
    fs.DecimalSeparator := '.';
    fs.ShortDateFormat  := 'yyyy-mm-dd';
    dateIn              := StrToDate(arrive,fs);

    depart              := copy(depart,12,10);
    fs.ShortDateFormat  := 'yyyy-mm-dd';
    dateCargo           := StrToDate(depart,fs);

    // 1. Считаем код клиента с файла и сопоставим его с базой
    idClient  := 0;
    Q_CLIENTS.Open;
    Client := Trim(copy(Client,pos(':',Client)+1,length(Client)-1));
    if Client = '' then
    begin
      MessageBox(Hwnd, 'Строка с клиентом пустая!', 'Внимание', MB_ICONERROR);
      // Предоставим выбор клиента
      clientchoosForm := TclientchoosForm.Create(nil);
      try
        clientchoosForm.block_client_ := 0;
        if clientchoosForm.showmodal = mrOk then
          idClient := clientchoosForm.choised_client_
        else
        begin
          result := false;
          exit;
        end;
      finally
        clientchoosForm.Free;
      end;
    end;

    if (idClient = 0) then
    begin
      if Not Q_CLIENTS.Locate('nick',Client,[loCaseInsensitive]) then
      begin
        MessageBox(Hwnd, PChar('Клиент с кодом '+Client+' не найден!'), 'Внимание', MB_ICONERROR);

        clientchoosForm := TclientchoosForm.Create(nil);
        try
          clientchoosForm.block_client_ := 0;
          if clientchoosForm.showmodal = mrOk then
          begin
            idClient := clientchoosForm.choised_client_;
            Q_CLIENTS.Locate('ID_CLIENTS',idClient,[]);
            Client   := Q_CLIENTS.FieldByName('NICK').AsString;
          end
          else
          begin
            result := false;
            exit;
          end;
        finally
          clientchoosForm.Free;
        end;
      end
      else idClient := Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
    end;
// -------------------------------

// 2. Найдем заказ или добавим новый

    idOrder := vOrder;
    if idOrder > 0 then
    begin
      Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(Main_session.Username);
      Q_ORDERS_ORDERS.Open;
    end
    else
    begin
      MessageBox(Hwnd, PChar('Нет выбранного заказа!'), 'Внимание', MB_ICONERROR);
      CloseFile(conf);
      result := false;
      exit;
    end;
// -------------------------------


  with Q_SQL do
  begin
    Close;
    SQLstr := 'select id_orders_clients from orders_clients where id_orders ='+IntToStr(idOrder)+' and IN_FILE like ''webshop%'' and active=1 and PACK_=0 and ID_CLIENTS='+IntToStr(idClient);
    SQL.Clear;
    SQL.Add(SQLstr);
    Open;
    if recordcount > 0 then
      id_cl := FieldByName('id_orders_clients').AsInteger
    else
    begin
      // Создадим новый заказ клиента
      Close;
      SQL.Clear;
      SQL.Add('begin PACK_ORDERS.save_new_order(:id_, :ID_ORDERS_F_, :ID_CLIENT_, :DDATE_, :user_, :NN_, :v_file); end; ');
      ParamByName('id_').Value := 0;
      ParamByName('ID_ORDERS_F_').Value := idOrder;
      ParamByName('ID_CLIENT_').Value   := idClient;
      ParamByName('user_').AsString     := UpperCase(Main_session.Username);
      ParamByName('DDATE_').AsDateTime  := Date;
      ParamByName('NN_').Value          := 0;
      ParamByName('v_file').AsString    := 'webshop - '+ExtractFileName(FullFileName);

      // Пытаемся выполнить SQL запрос
      try
        Execute;
        id_cl := ParamByName('id_').AsInteger;

        Close;
        SQL.Clear;
        SQL.Add( 'update ORDERS_CLIENTS set N_TYPE=3 where ID_ORDERS_CLIENTS='+IntToStr(id_cl) );
        Execute;

      except
        on E: Exception do ShowMessage('Ошибка записи!'#13#10+E.Message);
      End;
    end;
  end;

// 5. Добавим позиции в заказ
    DM.Q_SQL.Close;
    dm.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';
    DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := id_cl;

    err_log       := '';
    err_log_short := '';
    vInfo         := '';

    while not Eof(conf) do
    begin
      Readln(conf, tmpstr);
      z_code  := '';
      z_q     := '';
      z_price := '';

      tmp := Trim(copy(tmpstr,pos(';',tmpstr)+1,length(tmpstr)));
      dep := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_code := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_name := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_price := Trim(copy(tmp,1,pos(';',tmp)-1));

      tmp := Trim(copy(tmp,pos(';',tmp)+1,length(tmp)));
      z_q := Trim(copy(tmp,1,pos(';',tmp)-1));

      if (z_code <> '') and (z_q <> '') then
      begin
        dep_order := '';
        if first_dialog_frm.DBComboBoxEh1.Value = 121 then dep_order := '2';
        if first_dialog_frm.DBComboBoxEh1.Value = 61 then dep_order := '1';
        if first_dialog_frm.DBComboBoxEh1.Value = 62 then dep_order := '3';

        if dep_order = dep then
        begin
          cdsNom.Close;
          cdsNom.ParamByName('p_code').AsString := z_code;
          cdsNom.ParamByName('p_dep').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
          cdsNom.Open;
          if not cdsNom.IsEmpty then
          begin
            DM.Q_SQL.ParamByName('N_ID').Value        := cdsNomN_ID.AsInteger;
            DM.Q_SQL.ParamByName('FL_ORDERS').Value   := StrToFloat(z_q,fs);
            DM.Q_SQL.ParamByName('TRUCK').Value       := 0;
            DM.Q_SQL.ParamByName('sub_weight').Value  := 0;
            DM.Q_SQL.ParamByName('v_site_data').Value := ReplaceStr(tmpstr,'''','`');
            DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
            DM.Q_SQL.Execute;
          end
          else
          begin
            // Решено информацию оставлять как в файле прихода
            err_log := err_log + ReplaceStr(tmpstr,'''','`') + #13#10;
            err_log_short := err_log_short + z_code +';' + z_q + #13#10;
            vInfo   := vInfo + z_name + ' - ' + z_q + #13#10;
          end;
          cdsNom.Close;
        end;
      end;
    end;
// -------------------------------

// 6. Если есть ошибки по позициям, покажем их
    if vInfo <> '' then
    begin
      Q_SQL.Close;
      Q_SQL.SQL.Clear;
      Q_SQL.SQL.Text := 'update ORDERS_CLIENTS set miss_code=miss_code||'''+err_log+''', miss_code_short=miss_code_short||'''+err_log_short+''' where ID_ORDERS_CLIENTS='+IntToStr(id_cl);
      Q_SQL.Execute;
      Q_SQL.Close;
    end;
// -------------------------------


    Main_session.Commit;
    DM.Q_ORDERS.RefreshRecord;
    DM.Q_ORDERS_ORDERS.RefreshRecord;

    finally
      CloseFile(conf);
    end;

    if vInfo <> '' then
    begin
       OpenFormForShow('Заказ обработан успешно. Создан заказ на клиента "'+trim(Client)+'", '+DateToStr(dateCargo)+#13#10+'Коды не найденные в номенклатуре:'+#13#10+vInfo);
    end
    else
       MessageBox(Hwnd, PChar('Заказ обработан успешно. Создан заказ на клиента "'+trim(alpha)+'", '+DateToStr(dateCargo)), 'Результат', MB_ICONINFORMATION);

    ShowInfoAboutOrder(idOrder, DateToStr(dateCargo), idClient, DM.Q_ORDERS_ORDERSALPHA.AsString, id_cl);

    Q_CLIENTS.Close;

    result := true;

  except
     on E: Exception do
      MessageBox(Hwnd, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;




function TDM.CreateClientOrder(idOrder: integer; idClient: integer; FullFileName : String):Integer;
begin
  try
    Q_SQL.Close;
    Q_SQL.SQL.Clear;
    Q_SQL.SQL.Add('begin PACK_ORDERS.save_new_order(:id_, :ID_ORDERS_F_, :ID_CLIENT_, :DDATE_, :user_, :NN_, :v_file); end; ');
    Q_SQL.ParamByName('id_').Value          := 0;
    Q_SQL.ParamByName('ID_ORDERS_F_').Value := idOrder;
    Q_SQL.ParamByName('ID_CLIENT_').Value   := idClient;
    Q_SQL.ParamByName('user_').AsString     := UpperCase(DM.Main_session.Username);
    Q_SQL.ParamByName('DDATE_').AsDateTime  := Date;
    Q_SQL.ParamByName('NN_').Value          := 0;
    Q_SQL.ParamByName('v_file').AsString    := ExtractFileName(FullFileName);
    Q_SQL.Execute;
    Result := DM.Q_SQL.ParamByName('id_').AsInteger;
  except
    on E: Exception do
    begin
      result := 0;
      ShowMessage('Ошибка записи клиентского заказа!'#13#10+E.Message);
    end;
  End;
end;


function TDM.CreateOrder(pId: integer; pPrihod: TDateTime; pText : String; pVihod: TDateTime):Integer;
begin
  try
    Ora_SQL.SQL.Clear;
    Ora_SQL.SQL.Add('begin PACK_ORDERS.save_order(:id_, :P0, :P1, :P2, :P3, :state_, :P4, :pS_ID); end; ');
    Ora_SQL.ParamByName('id_').AsInteger := pId;
    Ora_SQL.ParamByName('p0').AsDate := pPrihod;
    Ora_SQL.ParamByName('p1').AsDateTime := now;
    Ora_SQL.ParamByName('p2').Value := pText;
    Ora_SQL.ParamByName('P3').Value := first_dialog_frm.DBComboBoxEh1.Value;
    Ora_SQL.ParamByName('state_').AsInteger := pId+1;
    Ora_SQL.ParamByName('p4').AsDate := pVihod;
    Ora_SQL.ParamByName('pS_ID').Value := first_dialog_frm.uSupplier;
    Ora_SQL.Execute;
    result := Ora_SQL.ParamByName('id_').AsInteger;
  except
    on E: Exception do
    begin
      result := 0;
      ShowMessage('Ощибка при записи заказа!'#13#10+E.Message);
    end;
  End;
end;


function TDM.CountSameClients(pId: integer; pClient: integer):String;
begin
  try
    Ora_SQL.SQL.Clear;
    Ora_SQL.SQL.Add('begin PACK_ORDERS.new_alpha(:pID_ORDER, :pID_CLIENT, :pNewAlpha); end;');
    Ora_SQL.ParamByName('pID_ORDER').AsInteger := pId;
    Ora_SQL.ParamByName('pID_CLIENT').AsInteger := pClient;
    Ora_SQL.ParamByName('pNewAlpha').AsString := '';
    Ora_SQL.Execute;
    result := Ora_SQL.ParamByName('pNewAlpha').AsString;
  except
    on E: Exception do
    begin
      result := '';
      ShowMessage('Ощибка при записи заказа!'#13#10+E.Message);
    end;
  End;
end;



function TDM.CheckExportFolder(Hwnd: THandle; pOrder: integer):String;
var str, client, sql2, path2, hol_date: string;
    conf: textfile;
begin
    // Открываем файл с настройками
    try
      AssignFile(conf, first_dialog_frm.path+'connections/connections.txt');
      Reset(conf);
      Readln(conf, path2);
      CloseFile(conf);
    except
       on E: Exception do
        MessageBox(Hwnd, PChar(E.Message), 'Внимание', MB_ICONERROR);
    End;

    try
      if DM.Q_ORDERSID_ORDERS.AsInteger > 0 then
      begin
        // Создание папки с датой заказа -------------------------------------------
        str := DM.Q_ORDERSDATE_TRUCK_OUT.AsString;
        hol_date := str[1]+str[2]+str[4]+str[5]+str[7]+str[8]+str[9]+str[10];
        //str := path2 + str[1]+str[2]+'_'+str[4]+str[5]+'_'+str[7]+str[8]+str[9]+str[10];
        str := path2 + str[7]+str[8]+str[9]+str[10] +'_'+ str[4]+str[5] +'_'+ str[1]+str[2]+'_'+DM.Q_ORDERSS_ID.AsString;

        if not DirectoryExists(str) then
        if not CreateDir(str) then
        begin
          raise Exception.Create('Cannot create '+str);
          exit;
        end;
        // -------------------------------------------------------------------------

        // Создание папок внутри папки заказа ----------------------------------
        if not DirectoryExists(str+'\CSV') then
        if not CreateDir(str+'\CSV') then
        begin
          raise Exception.Create('Cannot create '+str);
          exit;
        end;
        if not DirectoryExists(str+'\PACK') then
        if not CreateDir(str+'\PACK') then
        begin
          raise Exception.Create('Cannot create '+str);
          exit;
        end;
        // -------------------------------------------------------------------------
        result := str;
      end;
    except
      on E: Exception do
      begin
         MessageBox(Hwnd, PChar(E.Message), 'Внимание', MB_ICONERROR);
      end;
    end;
end;





// Выгрузка данных в файл
procedure TDM.ExportToFile(pTruck: integer; pathStr: string);
var sum_all_, sum_, item: integer;
    F, F_CSV: TextFile;
    str, head_str, detail_str: string;
begin
  try
    q_raznos.Close;
    if pTruck = 99 then
    begin
      q_raznos.ParamByName('truck_').AsInteger := 99;
      q_raznos.ParamByName('packed_').AsInteger := 1; // 0-не упакованные, 1-все подряд
    end
    else
    begin
      if pTruck = 98 then
      begin
        q_raznos.ParamByName('truck_').AsInteger := 99;
        q_raznos.ParamByName('packed_').AsInteger := 0; // 0-не упакованные, 1-все подряд
      end
      else
      begin
        q_raznos.ParamByName('truck_').AsInteger := pTruck;
        q_raznos.ParamByName('packed_').AsInteger := 0; // 0-не упакованные, 1-все подряд
      end;
    end;
    q_raznos.Open;

    if q_raznos.RecordCount > 0 then
    begin
      case pTruck of
        99: str := '\TOTAL.txt';
        98: str := '\SUBTOTAL.txt';
        else str := '\TOTAL' + IntToStr(pTruck) + '.txt';
      end;

//          ShowMessage(IntToStr(q_raznos.RecordCount));

      AssignFile(F, pathStr + str);
      Rewrite(F);
      try
        Q_SQL_SPIS.Close;
        Q_SQL_SPIS.SQL.Clear;
        Q_SQL_SPIS.SQL.Add('SELECT HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1 order by ord');
        Q_SQL_SPIS.Open;


        sum_all_ := 0;
        Q_SQL_SPIS.First;
        while not DM.Q_SQL_SPIS.Eof do
        begin
          q_raznos.Filter := 'HOL_TYPE=''' + DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + ''' AND ZATIRKA = 0 ';
          q_raznos.Filtered := true;

          if q_raznos.RecordCount > 0 then
          begin
            if (pTruck > 0) and (pTruck < 98) then
            begin
              AssignFile(F_CSV, pathStr + '\CSV\' + IntToStr(pTruck) + 'T' + FormatDateTime('mmyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime) + DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString +'.CSV');
              Rewrite(F_CSV);
              // Пишем заголовок
              head_str := 'MOL-IMPORT2.1;RU1;RU1;'+FormatDateTime('ddmmyyyy', DM.Q_ORDERSDATE_TRUCK_OUT.AsDateTime);
              head_str := head_str + ';T'+IntToStr(pTruck)+'/'+DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString;  // Ordercode
              if (DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString = 'CH') then
                head_str := head_str + ';;@#C'  // Internalcode
              else
                head_str := head_str + ';;';  // Internalcode
              head_str := head_str + ';;'+IntToStr(pTruck);  // Truck
              head_str := head_str + ';;;;;;;;;;;;;;;;';
              WriteLn(F_CSV, head_str+#10);
            end;


            case pTruck of
              99: WriteLn(F, 'truck  ' + #9 + '*'+Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + #9 + 'TOTAL' + #9 + #9 + DM.Q_ORDERSDATE_TRUCK_OUT.AsString);
              98: WriteLn(F, 'truck  ' + #9 + '*'+Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + #9 + 'SUBTOTAL' + #9 + #9 + DM.Q_ORDERSDATE_TRUCK_OUT.AsString);
              else WriteLn(F, 'truck  ' + IntToStr(pTruck) + #9 + '*'+Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + #9 + 'TOTAL' + #9 + #9 + DM.Q_ORDERSDATE_TRUCK_OUT.AsString);
            end;

            WriteLn(F, '----------------------------------------------------------------');
            sum_ := 0;

            q_raznos.First;
            while not q_raznos.Eof do
            begin
              if (q_raznosZATIRKA.AsInteger = 0 ) {or (DM.q_raznosPACK_.AsInteger = 1)}  then
              begin
                if pTruck = 99 then
                  item := DM.q_raznosSUM_ITOG.AsInteger
                else
                begin
                  item := DM.q_raznosSUM_N.AsInteger + DM.q_raznosSUM_DIR.AsInteger;
                end;

                sum_ := sum_ + item;
                sum_all_ := sum_all_ + item;
                WriteLn(F, '  ' + IntToStr(item) + #9 + '|   | ' + DM.q_raznosH_NAME.AsString);
                WriteLn(F, #9 + '|   |');
                WriteLn(F, '----------------------------------------------------------------');

                if (pTruck > 0) and (pTruck < 98) then
                begin
                  //if DM.q_raznosSUM_CORR.IsNull or ((not DM.q_raznosSUM_CORR.IsNull) and (DM.q_raznosSUM_CORR.AsInteger > 0)) then
                  if item > 0 then                  
                  begin
                    detail_str := ';;;' + DM.q_raznosNAME_CODE.AsString;
                    detail_str := detail_str + ';;1;' + IntToStr(item);
                    detail_str := detail_str + ';;' + DM.q_raznosREMARKS.AsString;
                    if DM.q_raznosSUM_DIR.AsInteger > 0 then
                      detail_str := detail_str + ';;;;'+'<<'+DM.q_raznosSUM_DIR.AsString+'>>'+DM.q_raznosH_NAME.AsString   // Description Starlight (кладем гол. название)
                    else
                      detail_str := detail_str + ';;;;'+DM.q_raznosH_NAME.AsString;   // Description Starlight (кладем гол. название)




        tmpSQL.Close;
        tmpSQL.SQL.Clear;
        tmpSQL.SQL.Add('SELECT sum( nvl(a.correction,a.quantity) ) FROM orders_list a, orders_clients b WHERE a.COUNT_DATA=1 and a.ID_ORDERS_CLIENTS = b.ID_ORDERS_CLIENTS and b.id_orders = '+DM.q_raznosID_ORDERS.AsString+' and a.N_ID='+DM.q_raznosN_ID.AsString );
        tmpSQL.Open;
        if tmpSQL.Fields[0].AsInteger > 0 then
           detail_str := detail_str +  '[['+tmpSQL.Fields[0].AsString+']]';
        tmpSQL.Close;




                    detail_str := detail_str + ';S20;' + DM.q_raznosLEN.AsString;    // Length
                    //detail_str := detail_str + ';S21;';    // Weight
                    detail_str := detail_str + ';S22;';    // Number of heads
                    //detail_str := detail_str + ';S23;';    // ?????
                    //detail_str := detail_str + ';S24;';    // ?????
                    detail_str := detail_str + ';S25;';    // Number heads of shrub
                    detail_str := detail_str + ';VD2;;';    // Pieces per box
                    // Пишем строку с данными
                    WriteLn(F_CSV, detail_str);
                  end;
                end;

              end;
              DM.q_raznos.Next;
            end;
            if (pTruck > 0) and (pTruck < 98) then    CloseFile(F_CSV);
            WriteLn(F, 'STEMS' + #9 + IntToStr(sum_));
            WriteLn(F, '');
          end;

          DM.Q_SQL_SPIS.Next;
        end;
        // -------------------------------------------------------------------------

        WriteLn(F, 'TOTAL' + #9 + IntToStr(sum_all_));
        WriteLn(F, '');
      finally
        CloseFile(F);
      end;
    end;

  finally
    Q_SQL_SPIS.Close;
    q_raznos.Close;
    q_raznos.Filter := '';
    q_raznos.Filtered := false;
  end;
end;

// ФОрмирование файлов по машинам и общий
procedure TDM.MakeTXTFileByTruck(Hwnd: THandle; pOrder: integer; pathStr: string);
var sql2, head_str: string;
    F, F_CSV: TextFile;
begin
  try
    // выбираем все задействованные грузовики в заказе
    sql2 := 'begin pack_orders.get_truck(:id_order_, :CURSOR_); end;';
    Q_SQL.Close;
    Q_SQL.SQL.Clear;
    Q_SQL.SQL.Add(sql2);
    Q_SQL.ParamByName('id_order_').AsInteger := pOrder;
    Q_SQL.ParamByName('CURSOR_').DataType := ftCursor;
    Q_SQL.Open;

    // Бегаем по доступным фурам
    while not DM.Q_SQL.Eof do
    begin
      ExportToFile(q_sql.FieldByName('truck').AsInteger, pathStr);
      Q_SQL.next;
    end;
    ExportToFile(99, pathStr);
    ExportToFile(98, pathStr);
  finally
    DM.Q_SQL.Close;
  end;
end;




function TDM.MakeTXTFile(Hwnd: THandle; pOrder: integer; pathStr: string):String;
var F: textfile;
    client, client_path: string;
    sum_, sum_all_ : integer;
begin
  dm.Q_ORDERS_LIST.DisableControls;

  client := DM.Q_ORDERS_ORDERSNICK.AsString;
  if (DM.Q_ORDERS_ORDERSALPHA.IsNull = false) then client := client + '[' + DM.Q_ORDERS_ORDERSALPHA.AsString + ']';

  if (DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1) then
    client_path := pathStr+ '\' + client + '_.txt'
  else
    client_path := pathStr+ '\' + client + '.txt';

  AssignFile(F, client_path);
  Rewrite(F);
  sum_all_ := 0;

  try
    // Открываем таблицу с гол. типами
    DM.Q_SQL_SPIS.Close;
    DM.Q_SQL_SPIS.SQL.Clear;
    DM.Q_SQL_SPIS.SQL.Add('SELECT HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1 order by ord');
    DM.Q_SQL_SPIS.Open;


    // Начинаем бегать по каждому голандскому типу
    while not DM.Q_SQL_SPIS.Eof do
    begin
      dm.Q_ORDERS_LIST.Filter := 'HOL_TYPE=''' + DM.Q_SQL_SPIS.FieldByName('HOL_TYPE').AsString + ''' AND FL_ORDERS > 0';
      dm.Q_ORDERS_LIST.Filtered := true;
      //dm.Q_ORDERS_LIST.IndexFieldNames := 'H_NAME_F';

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
          if DM.Q_ORDERS_LISTCORRECTION.IsNull then
          begin
            WriteLn(F, '  ' + DM.Q_ORDERS_LISTFL_ORDERS.AsString + #9 + '|   | ' + DM.Q_ORDERS_LISTH_NAME_F.AsString);
            sum_ := sum_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
            sum_all_ := sum_all_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
          end
          else
          begin
            WriteLn(F, '  ' + DM.Q_ORDERS_LISTCORRECTION.AsString + #9 + '|   | ' + DM.Q_ORDERS_LISTH_NAME_F.AsString);
            sum_ := sum_ + DM.Q_ORDERS_LISTCORRECTION.AsInteger;
            sum_all_ := sum_all_ + DM.Q_ORDERS_LISTCORRECTION.AsInteger;
          end;

// 2014-11-16 При коррекции надо выгружать то, что в итоге будет
//            sum_ := sum_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
//            sum_all_ := sum_all_ + DM.Q_ORDERS_LISTFL_ORDERS.AsInteger;
//          WriteLn(F, '  ' + DM.Q_ORDERS_LISTFL_ORDERS.AsString + #9 + '|   | ' + DM.Q_ORDERS_LISTH_NAME_F.AsString);
          WriteLn(F, #9 + '|   |');
          WriteLn(F, '----------------------------------------------------------------');
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


    //dm.Q_ORDERS_LIST.Filter := '';
    DM.Q_ORDERS_LIST.Filter := 'FL_ORDERS is not null and FL_ORDERS <> 0';
    DM.Q_ORDERS_LIST.Filtered := true;
    //DM.Q_ORDERS_LIST.IndexFieldNames := '';

  finally
    CloseFile(F);
    DM.Q_ORDERS_LIST.EnableControls;
  end;

  result := client_path;

end;



function TDM.MakeCSVFile(Hwnd: THandle; pOrder: integer; pathStr: string):String;
var F: textfile;
    client, client_path, type_search: string;
    sum_, sum_all_ : integer;
    export_prefix: string;
    export_type: integer;
begin
  Q_ORDERS_LIST.DisableControls;

  // Открываем таблицу с гол. типами
  Q_SQL.Close;
  Q_SQL.SQL.Clear;
  Q_SQL.SQL.Add('SELECT HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1 and HOL_TYPE in (''RO'',''GR'',''CH'',''OT'') order by ord');
  Q_SQL.Open;

  client := Q_ORDERS_ORDERSNICK.AsString;
  if (Q_ORDERS_ORDERSALPHA.IsNull = false) then client := client + '-' + Q_ORDERS_ORDERSALPHA.AsString;

  tmpSQL.Close;
  tmpSQL.SQL.Clear;
  tmpSQL.SQL.Add('begin pack_orders.get_csv_prefix_parameter(:p_ID_CLIENT, :cursor_); end;');
  tmpSQL.ParamByName('p_ID_CLIENT').AsInteger  := Q_ORDERS_ORDERSID_CLIENTS.AsInteger;
  tmpSQL.ParamByName('cursor_').DataType := ftCursor;
  tmpSQL.Open;
  export_type := 0;
  if tmpSQL.RecordCount > 0 then
  begin
    export_prefix := tmpSQL.FieldByName('prefix').AsString;
    export_type   := tmpSQL.FieldByName('export_type').AsInteger;
  end
  else
    export_prefix := '@#X';
  tmpSQL.Close;

  // Начинаем бегать по каждому голандскому типу
  while not Q_SQL.Eof do
  begin

    if (Q_ORDERS_ORDERSPACK_.AsInteger = 1) and (export_type = 1) then
    begin
      // Временное решение по группировке данных в файл OT.
      // Потом через настройку переделать
      client_path := pathStr+ '\CSV\' + client + '_'+Q_SQL.FieldByName('HOL_TYPE').AsString+'.csv';
      type_search := Q_SQL.FieldByName('HOL_TYPE').AsString;
    end
    else
    begin
      client_path := pathStr+ '\CSV\' + client + '.csv';
      type_search := '';
    end;


    // Открываем таблицу с гол. типами
    Q_SQL_SPIS.Close;
    Q_SQL_SPIS.SQL.Clear;
    Q_SQL_SPIS.SQL.Add('begin PACK_ORDERS.csv_export(:pID_ORDER_CLIENT, :p_hol_type, :p_prefix, :CURSOR_); end;');
    Q_SQL_SPIS.ParamByName('pID_ORDER_CLIENT').AsInteger  := pOrder;
    Q_SQL_SPIS.ParamByName('p_hol_type').AsString         := type_search;
    Q_SQL_SPIS.ParamByName('p_prefix').AsString           := export_prefix;
    Q_SQL_SPIS.ParamByName('CURSOR_').DataType            := ftCursor;
    Q_SQL_SPIS.Open;

    if Q_SQL_SPIS.RecordCount > 1 then
    begin
      AssignFile(F, client_path);
      Rewrite(F);
      sum_all_ := 0;

      try
        // Начинаем бегать по каждому голандскому типу
        while not DM.Q_SQL_SPIS.Eof do
        begin
          WriteLn(F,  DM.Q_SQL_SPIS.FieldByName('str').asString);
          DM.Q_SQL_SPIS.Next;
        end; // while not DM.Q_SQL_SPIS.Eof do
        // -------------------------------------------------------------------------

        Q_SQL_SPIS.Close;
      finally
        CloseFile(F);
        Q_ORDERS_LIST.EnableControls;
      end;
    end;

    if (Q_ORDERS_ORDERSPACK_.AsInteger = 0) then break;
    q_sql.Next;
  end;

  result := client_path;

end;




procedure TDM.ShowInfoAboutOrder(idOrder: integer; dateCargo: string; idClient: integer; alpha: string; idOrdClient: integer);
begin
  frm_show_order := Tfrm_show_order.Create(nil);
  try

    if not Q_Clients.Active then
    begin
      Q_CLIENTS.Open;
    end;
    if Q_CLIENTSID_CLIENTS.AsInteger <> idClient then
      Q_CLIENTS.Locate('ID_CLIENTS',idClient,[]);

    frm_show_order.DBGridEh1.SumList.Active := true;
    frm_show_order.DBText1.Caption := IntToStr(idOrder);
    frm_show_order.DBText2.Caption := dateCargo;
    frm_show_order.DBText3.Caption := DM.Q_CLIENTS.FieldByName('NICK').AsString;
    frm_show_order.DBText4.Caption := DM.Q_CLIENTS.FieldByName('FIO').AsString;
    frm_show_order.DBText5.Caption := alpha;

    frm_show_order.CDS_ORDERS_LIST.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
    frm_show_order.CDS_ORDERS_LIST.ParamByName('id_cl_').AsInteger := idOrdClient; //idClient;
    frm_show_order.CDS_ORDERS_LIST.ParamByName('id_').AsInteger := idOrder;
    frm_show_order.CDS_ORDERS_LIST.Open;
//    Q_CLIENTS.Close;

    frm_show_order.CDS_STAT.ParamByName('id_dep_').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
    frm_show_order.CDS_STAT.ParamByName('id_order_').AsInteger := idOrder;
    frm_show_order.CDS_STAT.ParamByName('id_client_').AsInteger := frm_show_order.CDS_ORDERS_LISTid_orders_clients.asInteger;
    frm_show_order.CDS_STAT.ParamByName('id_fst_').AsInteger := 0;
    frm_show_order.CDS_STAT.ParamByName('fst_').AsString := '';
    frm_show_order.CDS_STAT.ParamByName('zatir_').AsInteger := 0;
    frm_show_order.CDS_STAT.ParamByName('n_id_').AsInteger := 0;
    frm_show_order.CDS_STAT.Open;

    frm_show_order.ShowModal;
  finally
    frm_show_order.Free;
  end;
end;


end.
