unit DataModule;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, cxStyles, ActnList, Dialogs;

type
  TDM = class(TDataModule)
    StarSess: TOraSession;
    SelQ: TOraQuery;
    SelOrderList: TOraQuery;
    StorProc: TOraStoredProc;
    SelDistrInd: TOraQuery;
    SelDistrInd_DS: TOraDataSource;
    SelOrderClients: TOraQuery;
    SelOrderClients_DS: TOraDataSource;
    SelOrderList_DS: TOraDataSource;
    SelPrepDist: TOraQuery;
    SelPrepDist_DS: TOraDataSource;
    SelOrderDistribution: TOraQuery;
    SelOrderDistribution_DS: TOraDataSource;
    SelClients: TOraQuery;
    SelClientsID_CLIENTS: TIntegerField;
    SelClientsFIO: TStringField;
    SelClientsNICK: TStringField;
    SelDistribution: TOraQuery;
    SelDistributionDIST_IND_ID: TFloatField;
    SelDistributionDIST_ID: TFloatField;
    SelDistributionD_N_ID: TFloatField;
    SelDistributionDQ: TFloatField;
    SelDistributionOQ: TIntegerField;
    SelDistributionO_N_ID: TFloatField;
    SelDistributionPREP_DIST_ID: TFloatField;
    SelDistributionID_ORDERS_LIST: TFloatField;
    SelDistributionGREAT_NAME: TStringField;
    SelDistributionINVOICE_DATA_ID: TFloatField;
    SelDistributionID_STORE_MAIN: TFloatField;
    SelDistributionID_CLIENTS: TIntegerField;
    SelDistributionID_ORDERS: TFloatField;
    SelDistributionINVOICE_DATA_AS_IS_ID: TFloatField;
    SelDistributionORDER_MARKNAME: TStringField;
    SelDistributionPACKING_MARKS: TStringField;
    SelClients_DS: TOraDataSource;
    SelDistributionWHERE_FLOWER_IS: TStringField;
    SelDistrIndDIST_IND_ID: TFloatField;
    SelDistrIndDESCRIPTION: TStringField;
    SelDistrIndDIST_DATE: TDateTimeField;
    SelDistrIndREADY: TIntegerField;
    SelOrderClientsID_ORDERS_CLIENTS: TFloatField;
    SelOrderClientsID_ORDERS: TFloatField;
    SelOrderClientsID_CLIENTS: TIntegerField;
    SelOrderClientsN_TRUCK: TIntegerField;
    SelOrderClientsCAPACITY: TFloatField;
    SelOrderClientsD_DATE: TDateTimeField;
    SelOrderClientsPACK_: TIntegerField;
    SelOrderClientsALPHA: TStringField;
    SelOrderClientsN_TYPE: TIntegerField;
    SelOrderClientsSTATUS: TIntegerField;
    SelOrderClientsON_DATE: TDateTimeField;
    SelOrderClientsNICK: TStringField;
    SelOrderClientsFIO: TStringField;
    SelOrderClientsID_ORDERS_CLIENTS_: TFloatField;
    SelOrderDistributionDIST_IND_ID: TFloatField;
    SelOrderDistributionDIST_ID: TFloatField;
    SelOrderDistributionD_N_ID: TFloatField;
    SelOrderDistributionDQ: TFloatField;
    SelOrderDistributionOQ: TIntegerField;
    SelOrderDistributionO_N_ID: TFloatField;
    SelOrderDistributionPREP_DIST_ID: TFloatField;
    SelOrderDistributionID_ORDERS_LIST: TFloatField;
    SelOrderDistributionGREAT_NAME: TStringField;
    SelOrderDistributionINVOICE_DATA_ID: TFloatField;
    SelOrderDistributionID_STORE_MAIN: TFloatField;
    SelOrderDistributionID_CLIENTS: TIntegerField;
    SelOrderDistributionID_ORDERS: TFloatField;
    SelOrderDistributionINVOICE_DATA_AS_IS_ID: TFloatField;
    SelOrderDistributionORDER_MARKNAME: TStringField;
    SelOrderDistributionPACKING_MARKS: TStringField;
    SelOrderDistributionWHERE_FLOWER_IS: TStringField;
    SelOrderDistributionGREAT_NAME_F: TStringField;
    CDS_GOODS: TOraQuery;
    DS_GOODS: TOraDataSource;
    CDS_ORDER_NID: TOraQuery;
    DS_ORDER_NID: TOraDataSource;
    SelOrderListID_ORDERS_LIST: TFloatField;
    SelOrderListN_ID: TFloatField;
    SelOrderListQUANTITY: TIntegerField;
    SelOrderListID_ORDERS_CLIENTS: TFloatField;
    SelOrderListTRUCK: TIntegerField;
    SelOrderListWEIGHT: TFloatField;
    SelOrderListCOMPILED_NAME: TStringField;
    SelOrderListGREAT_NAME: TStringField;
    SelOrderListGREAT_NAME_F: TStringField;
    SelOrderListID_ORDERS_LIST_: TFloatField;
    SelOrderListZATIRKA: TIntegerField;
    SelOrderListDISTRIBUTED_NUMBER: TFloatField;
    SelOrderListDIST_ID: TFloatField;
    SelQ2: TOraQuery;
    SelDistrIndSTR_INV: TStringField;
    SelDistributionGREAT_NAME_F: TStringField;
    SelDistributionCOMPILED_NAME_OTDEL: TStringField;
    SelDistributionHOL_TYPE: TStringField;
    SelDistributionF_SUB_TYPE: TStringField;
    SelDistributionORD: TFloatField;
    SelDistributionFT_ID: TFloatField;
    SelPrepDistPREP_DIST_ID: TFloatField;
    SelPrepDistDIST_IND_ID: TFloatField;
    SelPrepDistN_ID: TFloatField;
    SelPrepDistINVOICE_DATA_ID: TFloatField;
    SelPrepDistID_STORE_MAIN: TFloatField;
    SelPrepDistTOTAL_QUANTITY: TFloatField;
    SelPrepDistLEFT_QUANTITY: TFloatField;
    SelPrepDistCOMPILED_NAME: TStringField;
    SelPrepDistCOMPILED_NAME_OTDEL: TStringField;
    SelPrepDistFT_ID: TFloatField;
    SelPrepDistFST_ID: TFloatField;
    SelPrepDistWHERE_FLOWER_IS: TStringField;
    SelPrepDistNBUTTON: TFloatField;
    SelPrepDistHOL_SUB_TYPE: TStringField;
    SelPrepDistF_NAME_RU: TStringField;
    SelPrepDistSTOCK: TFloatField;
    SelPrepDistALLORDER: TFloatField;
    SelPrepDistHOL_TYPE: TStringField;
    SelPrepDistF_TYPE: TStringField;
    SelPrepDistORDERID: TFloatField;
    srMain: TcxStyleRepository;
    stEditColor: TcxStyle;
    stViewColor: TcxStyle;
    SelPrepDistSALDO: TStringField;
    SelDistrIndDISTRIB_SEQ: TFloatField;
    CDS_ORDER_NIDID_ORDERS_CLIENTS: TFloatField;
    CDS_ORDER_NIDID_ORDERS: TFloatField;
    CDS_ORDER_NIDID_CLIENTS: TIntegerField;
    CDS_ORDER_NIDN_TRUCK: TIntegerField;
    CDS_ORDER_NIDCAPACITY: TFloatField;
    CDS_ORDER_NIDD_DATE: TDateTimeField;
    CDS_ORDER_NIDPACK_: TIntegerField;
    CDS_ORDER_NIDALPHA: TStringField;
    CDS_ORDER_NIDN_TYPE: TIntegerField;
    CDS_ORDER_NIDSTATUS: TIntegerField;
    CDS_ORDER_NIDON_DATE: TDateTimeField;
    CDS_ORDER_NIDNICK: TStringField;
    CDS_ORDER_NIDFIO: TStringField;
    CDS_ORDER_NIDID_ORDERS_CLIENTS_: TFloatField;
    CDS_ORDER_NIDN_ID: TFloatField;
    CDS_ORDER_NIDQUANTITY: TIntegerField;
    CDS_ORDER_NIDZATIRKA: TIntegerField;
    CDS_ORDER_NIDID_ORDERS_LIST: TFloatField;
    CDS_ORDER_NIDFULL_NAME: TStringField;
    CDS_ORDER_NIDGREAT_NAME: TStringField;
    CDS_ORDER_NIDGREAT_NAME_F: TStringField;
    CDS_ORDER_NIDCOMPILED_NAME_OTDEL_ORD: TStringField;
    CDS_ORDER_NIDIS_STOCK: TFloatField;
    CDS_ORDER_NIDDQ: TFloatField;
    CDS_ORDER_NIDDQ_CHECK: TFloatField;
    CDS_ORDER_NIDGREAT_NAME2: TStringField;
    CDS_ORDER_NIDGREAT_NAME_F2: TStringField;
    CDS_ORDER_NIDDIST_ID: TFloatField;
    CDS_ORDER_NIDCOMPILED_NAME_OTDEL: TStringField;
    CDS_ORDER_NIDDISTRIBUTED_NUMBER: TFloatField;
    CDS_ORDER_NIDPREP_DIST_ID: TFloatField;
    CDS_ORDER_NIDD_N_ID: TFloatField;
    SelDistrIndIS_SENDED: TDateTimeField;
    SelDistrIndSTR_ORDERS: TStringField;
    CDS_GOODSDIST_IND_ID: TFloatField;
    CDS_GOODSN_ID: TFloatField;
    CDS_GOODSN_ID_: TFloatField;
    CDS_GOODSQUANTITY: TFloatField;
    CDS_GOODSQQ: TFloatField;
    CDS_GOODSCOMPILED_NAME: TStringField;
    CDS_GOODSCOMPILED_NAME_OTDEL: TStringField;
    CDS_GOODSF_NAME_RU: TStringField;
    CDS_GOODSFT_ID: TFloatField;
    CDS_GOODSZATIRKA: TIntegerField;
    CDS_GOODSHOL_TYPE: TStringField;
    CDS_GOODSF_SUB_TYPE: TStringField;
    CDS_GOODSF_TYPE: TStringField;
    CDS_GOODSDISTRIBUTED_NUMBER: TFloatField;
    CDS_GOODSWHERE_FLOWER_IS: TStringField;
    CDS_GOODSNBUTTON: TFloatField;
    CDS_ORDER_NIDPRIORITY: TIntegerField;
    SelPrepDistITOG_PRICE: TFloatField;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    procedure StarSessBeforeConnect(Sender: TObject);
    procedure SelDistrIndBeforeOpen(DataSet: TDataSet);
    procedure SelOrderClientsBeforeOpen(DataSet: TDataSet);
    procedure SelPrepDistBeforeOpen(DataSet: TDataSet);
    procedure SelOrderListBeforeOpen(DataSet: TDataSet);
    procedure SelClientsBeforeOpen(DataSet: TDataSet);
    procedure SelOrderDistributionBeforeOpen(DataSet: TDataSet);
    procedure CDS_GOODSBeforeOpen(DataSet: TDataSet);
    procedure CDS_ORDER_NIDBeforeOpen(DataSet: TDataSet);
    procedure CDS_ORDER_NIDAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    function insert_new_order(idOrder: integer; idClient: integer) : integer;
    function insert_new_order_item(idOrderClient: integer; nID: integer; quantity: integer) : integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses GlobalsU;

{$R *.dfm}

procedure TDM.StarSessBeforeConnect(Sender: TObject);
begin
  TOraSession(Sender).Username := username;
  TOraSession(Sender).Password := password;
  TOraSession(Sender).Server   := ora_db_path;
end;

procedure TDM.SelDistrIndBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('ID_DEP_').Value       := CUR_DEPT_ID;
end;

procedure TDM.SelPrepDistBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('DIST_IND_ID_').Value  := CUR_DIST_IND_ID;
  TOraQuery(DataSet).ParamByName('vClient').Value       := CUR_CLIENT;
end;

procedure TDM.SelOrderClientsBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('ID_ORDER_').Value     := CUR_ID_ORDERS;
end;

procedure TDM.SelOrderListBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('DIST_IND_ID').Value   := CUR_DIST_IND_ID;
end;

procedure TDM.SelClientsBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('ID_ORDERS').Value     := CUR_ID_ORDERS;
end;

procedure TDM.SelOrderDistributionBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('DIST_IND_ID').Value   := CUR_DIST_IND_ID;
end;



procedure TDM.CDS_GOODSBeforeOpen(DataSet: TDataSet);
begin
  TOraQuery(DataSet).ParamByName('DIST_IND_ID_').Value  := CUR_DIST_IND_ID;
  //TOraQuery(DataSet).ParamByName('id_order_').Value     := CUR_ID_ORDERS;
  TOraQuery(DataSet).ParamByName('vClient').Value       := CUR_CLIENT;
end;

procedure TDM.CDS_ORDER_NIDBeforeOpen(DataSet: TDataSet);
begin
  //TOraQuery(DataSet).ParamByName('id_order_').Value     := CUR_ID_ORDERS;
  TOraQuery(DataSet).ParamByName('DIST_IND_ID_').Value  := CUR_DIST_IND_ID;
end;


procedure TDM.CDS_ORDER_NIDAfterPost(DataSet: TDataSet);
var id: integer;
begin
  {»зменим значение заказа, если оно помен€лось}
  SelQ.Close;
  SelQ.SQL.Clear;
  SelQ.SQL.Add('begin creator.DISTRIBUTION_PKG.modify_order(:vID_ORDERS_LIST, :vQUANTITY); end;');
  SelQ.ParamByName('vID_ORDERS_LIST').AsInteger  := CDS_ORDER_NIDID_ORDERS_LIST.AsInteger;
  SelQ.ParamByName('vQUANTITY').AsInteger        := CDS_ORDER_NIDQUANTITY.AsInteger;
  SelQ.Execute;

  {»зменим значение разноски}
  SelQ.Close;
  SelQ.SQL.Clear;
  SelQ.SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE2(:IN_PREP_DIST_ID, :ID_ORDERS_LIST, :DQ, :IN_DIST_ID); end;');
  if CDS_ORDER_NIDPREP_DIST_ID.IsNull then
    SelQ.ParamByName('IN_PREP_DIST_ID').AsInteger := SelPrepDistPREP_DIST_ID.AsInteger
  else
  begin
    SelQ.ParamByName('IN_PREP_DIST_ID').AsInteger := CDS_ORDER_NIDPREP_DIST_ID.AsInteger;
    SelPrepDist.Locate('PREP_DIST_ID',CDS_ORDER_NIDPREP_DIST_ID.AsInteger,[]);
  end;

  SelQ.ParamByName('ID_ORDERS_LIST').AsInteger  := CDS_ORDER_NIDID_ORDERS_LIST.AsInteger;
  SelQ.ParamByName('DQ').AsInteger              := CDS_ORDER_NIDDQ.AsInteger;
  SelQ.ParamByName('IN_DIST_ID').AsInteger      := CDS_ORDER_NIDDIST_ID.AsInteger;
  SelQ.Execute;
  SelPrepDist.RefreshRecord;
  CDS_GOODS.RefreshRecord;
  if (CDS_ORDER_NIDDQ.AsInteger = 0) then
  begin
    id := CDS_ORDER_NIDDIST_ID.AsInteger;
    CDS_ORDER_NID.Refresh;
    CDS_ORDER_NID.Locate('DIST_ID',id,[]);
  end;
  SelPrepDist.RefreshRecord;
end;



// ¬ указанном заказе ищет указаного клиента, чтобы был не упакованный.
// ≈сли найден заказ клиента, то возвращает ID_ORDER_CLIENT, иначе создает заказ и возвращает ID_ORDER_CLIENT
function TDM.insert_new_order(idOrder: integer; idClient: integer) : integer;
var SQLstr : string;
    id_ord_cl : integer;
begin
  if (idOrder = 0) or (idClient = 0) then result := 0;

  with SelQ do
  begin
    Close;
    SQLstr := 'select id_orders_clients from orders_clients where id_orders ='+IntToStr(idOrder)+' and IN_FILE = ''добор из разноса'' and active=1 and PACK_=0 and ID_CLIENTS='+IntToStr(idClient);
    SQL.Clear;
    SQL.Add(SQLstr);
    Open;
    if recordcount > 0 then
      id_ord_cl := FieldByName('id_orders_clients').AsInteger
    else
    begin
      // —оздадим новый заказ клиента
      Close;
      SQL.Clear;
      SQL.Add('begin PACK_ORDERS.save_new_order(:id_, :ID_ORDERS_F_, :ID_CLIENT_, :DDATE_, :user_, :NN_, :v_file); end; ');
      ParamByName('id_').Value := 0;
      ParamByName('ID_ORDERS_F_').Value := idOrder;
      ParamByName('ID_CLIENT_').Value   := idClient;
      ParamByName('user_').AsString     := UpperCase(StarSess.Username);
      ParamByName('DDATE_').AsDateTime  := Date;
      ParamByName('NN_').Value          := 0;
      ParamByName('v_file').AsString    := 'добор из разноса';

      // ѕытаемс€ выполнить SQL запрос
      try
        Execute;
        id_ord_cl := ParamByName('id_').AsInteger;

        Close;
        SQL.Clear;
        SQL.Add( 'update ORDERS_CLIENTS set N_TYPE=2 where ID_ORDERS_CLIENTS='+IntToStr(id_ord_cl) );
        Execute;

      except
        on E: Exception do ShowMessage('ќшибка записи!'#13#10+E.Message);
      End;
    end;
  end;
  result := id_ord_cl;
end;


// ¬ указанном клиентском заказе ищем позицию.
// ≈сли найдена позици€, то возвращает ID_ORDER_LIST, иначе создает позицию и возвращает ID_ORDER_LIST
function TDM.insert_new_order_item(idOrderClient: integer; nID: integer; quantity: integer) : integer;
var SQLstr : string;
    id_ord_list : integer;
begin
  if (idOrderClient = 0) or (nID = 0) then result := 0;

  id_ord_list := 0;
  with SelQ do
  begin
    Close;
    SQLstr := 'select ID_ORDERS_LIST from ORDERS_LIST where ID_ORDERS_CLIENTS ='+IntToStr(idOrderClient)+' and active=1 and PACK_=0 and n_id='+IntToStr(nID);
    SQL.Clear;
    SQL.Add(SQLstr);
    Open;
    if recordcount > 0 then
      id_ord_list := FieldByName('ID_ORDERS_LIST').AsInteger
    else
    begin
      Close;
      SQL.Clear;
      SQL.Add('begin distribution_pkg.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :Q_NUM_, :TRUCK, :sub_weight, :v_site_data, :v_id); end;');
      ParamByName('ID_ORDERS_CLIENTS').Value  := idOrderClient;
      ParamByName('N_ID').Value               := nID;
      ParamByName('Q_NUM_').Value             := quantity;
      ParamByName('TRUCK').Value              := 0;
      ParamByName('sub_weight').Value         := 0;
      ParamByName('v_site_data').Value        := '';
      ParamByName('v_id').Value               := id_ord_list;

      // ѕытаемс€ выполнить SQL запрос
      try
        Execute;
        id_ord_list := ParamByName('v_id').Value;
        Close;
{
        SQL.Clear;
        SQL.Add('SELECT creator.ORDERS_LIST_SEQ.CURRVAL as nn FROM DUAL');
        Open;
        id_ord_list := FieldByName('nn').AsInteger;
}
      except
        on E: Exception do ShowMessage('ќшибка записи!'#13#10+E.Message);
      End;

    end;
  end;

  result := id_ord_list;
end;


end.
