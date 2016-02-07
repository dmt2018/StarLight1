unit DataM;

interface

uses
  SysUtils, Classes, DB, Ora, MemDS, DBAccess, Dialogs, PI_Library_reg, DBTables;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    OPERATIONS: TOraQuery;
    OPERATIONS_DS: TOraDataSource;
    Q_CASH: TOraQuery;
    Q_CASH_DS: TOraDataSource;
    Q_SQL: TOraQuery;
    Q_CASH_S: TOraQuery;
    Q_CASH_S_DS: TOraDataSource;
    Q_DEBETORS: TOraQuery;
    Q_DEBETORS_DS: TOraDataSource;
    Q_CLIENT_DEBT: TOraQuery;
    Q_CLIENT_DEBT_DS: TOraDataSource;
    Q_CLIENT_DEBT_A: TOraQuery;
    Q_CLIENT_DEBT_A_DS: TOraDataSource;
    OraStoredProc1: TOraStoredProc;
    Q_DEBETORSID_DEBETORS: TFloatField;
    Q_DEBETORSID_CLIENTS: TIntegerField;
    Q_DEBETORSLAST_DDATE: TDateTimeField;
    Q_DEBETORSSTATE: TIntegerField;
    Q_DEBETORSBEZNAL: TIntegerField;
    Q_DEBETORSDEBET: TFloatField;
    Q_DEBETORSCREDIT_DAYS: TIntegerField;
    Q_DEBETORSINFO: TStringField;
    Q_DEBETORSDDATE: TDateTimeField;
    Q_DEBETORSRUBL: TIntegerField;
    Q_DEBETORSCHART: TFloatField;
    Q_DEBETORSPHONE: TStringField;
    Q_DEBETORSREGION: TIntegerField;
    Q_DEBETORSNICK: TStringField;
    Q_DEBETORSFIO: TStringField;
    Q_DEBETORSGROUP_NAME: TStringField;
    Q_CASHID_CASH: TFloatField;
    Q_CASHID_CLIENTS: TIntegerField;
    Q_CASHPAYDESK: TIntegerField;
    Q_CASHOPERATION: TIntegerField;
    Q_CASHINVOICE: TFloatField;
    Q_CASHSUMM: TFloatField;
    Q_CASHIN_RUB: TFloatField;
    Q_CASHOUT_RUB: TFloatField;
    Q_CASHIN_USD: TFloatField;
    Q_CASHOUT_USD: TFloatField;
    Q_CASHIN_EU: TFloatField;
    Q_CASHOUT_EU: TFloatField;
    Q_CASHINFO: TStringField;
    Q_CASHCORRECTOR: TStringField;
    Q_CASHDDATE_IN: TDateTimeField;
    Q_CASHDDATE_DONE: TDateTimeField;
    Q_CASHR_DDATE: TDateTimeField;
    Q_CASHD_CHECKED: TIntegerField;
    Q_CASHR_PAYDESK: TIntegerField;
    Q_CASHCORRECTOR2: TStringField;
    Q_CASHCOR_DATE: TDateTimeField;
    Q_CASHT_SHORT: TStringField;
    Q_CASHT_LONG: TStringField;
    Q_CASHNICK: TStringField;
    Q_CASHFIO: TStringField;
    SaveDialog: TSaveDialog;
    Q_CASHID_CLIENTS_GROUPS: TIntegerField;
    OPERATIONSID_OPERATIONS: TIntegerField;
    OPERATIONST_SHORT: TStringField;
    OPERATIONST_LONG: TStringField;
    OPERATIONST_TYPE: TIntegerField;
    OPERATIONSDOLG: TIntegerField;
    Q_CASH_SCHECKED: TFloatField;
    Q_CASH_SID_CASH: TFloatField;
    Q_CASH_SID_CLIENTS: TIntegerField;
    Q_CASH_SPAYDESK: TIntegerField;
    Q_CASH_SOPERATION: TIntegerField;
    Q_CASH_SINVOICE: TFloatField;
    Q_CASH_SSUMM: TFloatField;
    Q_CASH_SIN_RUB: TFloatField;
    Q_CASH_SOUT_RUB: TFloatField;
    Q_CASH_SIN_USD: TFloatField;
    Q_CASH_SOUT_USD: TFloatField;
    Q_CASH_SIN_EU: TFloatField;
    Q_CASH_SOUT_EU: TFloatField;
    Q_CASH_SINFO: TStringField;
    Q_CASH_SCORRECTOR: TStringField;
    Q_CASH_SDDATE_IN: TDateTimeField;
    Q_CASH_SDDATE_DONE: TDateTimeField;
    Q_CASH_SR_DDATE: TDateTimeField;
    Q_CASH_SD_CHECKED: TIntegerField;
    Q_CASH_SCORRECTOR2: TStringField;
    Q_CASH_SCOR_DATE: TDateTimeField;
    Q_CASH_SR_PAYDESK: TIntegerField;
    Q_CASH_ST_SHORT: TStringField;
    Q_CASH_ST_LONG: TStringField;
    Q_CASH_SNICK: TStringField;
    Q_CASH_SFIO: TStringField;
    Q_CASH_SID_CLIENTS_GROUPS: TIntegerField;
    Q_CASH_SID_DEBETORS: TFloatField;
    Q_CASH_SIS_LOCK: TIntegerField;
    Q_CASH_SIS_LOC_FOR: TFloatField;
    Q_CASH_SGROUP_NAME: TStringField;
    Q_CASH_SIS_SALE: TFloatField;
    CDS_CL_DEBETORS: TOraQuery;
    DS_CL_DEBETORS: TOraDataSource;
    CDS_CL_DEBETORSID_CLIENTS: TIntegerField;
    CDS_CL_DEBETORSNICK: TStringField;
    CDS_CL_DEBETORSFIO: TStringField;
    CDS_CL_DEBETORSDDATE: TDateTimeField;
    CDS_CL_DEBETORSCCODE: TStringField;
    CDS_CL_DEBETORSREGION: TIntegerField;
    CDS_CL_DEBETORSTTYPE: TIntegerField;
    CDS_CL_DEBETORSID_CLIENTS_GROUPS: TIntegerField;
    CDS_CL_DEBETORSGROUP_NAME: TStringField;
    CDS_CL_DEBETORSBLOCK1: TIntegerField;
    CDS_CL_DEBETORSBLOCK2: TIntegerField;
    CDS_CL_DEBETORSID_DEBETORS: TFloatField;
    CDS_CL_DEBETORSSALES: TFloatField;
    CDS_CL_DEBETORSIS_LOCK: TIntegerField;
    CDS_CL_DEBETORSPHONE: TStringField;
    CDS_CL_DEBETORSBEZNAL: TIntegerField;
    CDS_CL_DEBETORSRUBL: TIntegerField;
    CDS_CL_DEBETORSSTATE: TIntegerField;
    CDS_CL_DEBETORSDEBET: TFloatField;
    CDS_CL_DEBETORSCREDIT_DAYS: TIntegerField;
    CDS_CL_DEBETORSLAST_DDATE: TDateTimeField;
    Q_CLIENT_DEBT_ANN: TFloatField;
    Q_CLIENT_DEBT_AID_CLIENT_DEBT: TFloatField;
    Q_CLIENT_DEBT_AID_DEBETORS: TFloatField;
    Q_CLIENT_DEBT_ADEBET: TFloatField;
    Q_CLIENT_DEBT_ARATE: TFloatField;
    Q_CLIENT_DEBT_AD_DATE: TDateTimeField;
    Q_CLIENT_DEBT_AR_DDATE: TDateTimeField;
    Q_CLIENT_DEBT_AOPERATION: TIntegerField;
    Q_CLIENT_DEBT_AINVOICE: TStringField;
    Q_CLIENT_DEBT_ASUMM: TFloatField;
    Q_CLIENT_DEBT_AINFO: TStringField;
    Q_CLIENT_DEBT_ADISCOUNT: TFloatField;
    Q_CLIENT_DEBT_ADISC_PROC: TIntegerField;
    Q_CLIENT_DEBT_AIN_RUB: TFloatField;
    Q_CLIENT_DEBT_AT_SHORT: TStringField;
    Q_CLIENT_DEBT_AT_LONG: TStringField;
    Q_CLIENT_DEBT_AT_TYPE: TIntegerField;
    Q_CLIENT_DEBT_ANICK: TStringField;
    Q_CLIENT_DEBT_ACHART: TFloatField;
    Q_CLIENT_DEBT_AACTIVE: TIntegerField;
    Q_CLIENT_DEBTNN: TFloatField;
    Q_CLIENT_DEBTID_CLIENT_DEBT: TFloatField;
    Q_CLIENT_DEBTID_DEBETORS: TFloatField;
    Q_CLIENT_DEBTDEBET: TFloatField;
    Q_CLIENT_DEBTRATE: TFloatField;
    Q_CLIENT_DEBTD_DATE: TDateTimeField;
    Q_CLIENT_DEBTR_DDATE: TDateTimeField;
    Q_CLIENT_DEBTOPERATION: TIntegerField;
    Q_CLIENT_DEBTINVOICE: TStringField;
    Q_CLIENT_DEBTSUMM: TFloatField;
    Q_CLIENT_DEBTINFO: TStringField;
    Q_CLIENT_DEBTDISCOUNT: TFloatField;
    Q_CLIENT_DEBTDISC_PROC: TIntegerField;
    Q_CLIENT_DEBTIN_RUB: TFloatField;
    Q_CLIENT_DEBTT_SHORT: TStringField;
    Q_CLIENT_DEBTT_LONG: TStringField;
    Q_CLIENT_DEBTT_TYPE: TIntegerField;
    Q_CLIENT_DEBTNICK: TStringField;
    Q_CLIENT_DEBTCHART: TFloatField;
    Q_CLIENT_DEBTACTIVE: TIntegerField;
    CDS_CL_DEBETORSIS_LOC_FOR: TFloatField;
    Q_CASH_SOLD_ID_DEBETORS: TFloatField;
    CDS_CL_DEBETORSMAX_DATE: TDateTimeField;
    Q_CASH_SRUBL: TIntegerField;
    Q_CASH_SBEZNAL: TIntegerField;
    Q_DELETED: TOraQuery;
    Q_DELETED_DS: TOraDataSource;
    Q_CASHGROUP_NAME: TStringField;
    OPERATIONSTYPE_NAME: TStringField;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSDDATE: TDateTimeField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSREGION: TIntegerField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSREGIONS_NAME: TStringField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTSPHONE: TStringField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSCOUNT: TIntegerField;
    Q_CLIENTSREG_TYPE_NAME: TStringField;
    Q_CASHCC: TFloatField;
    Q_CASHID_OFFICE: TIntegerField;
    Q_CASHBRIEF: TStringField;
    Q_CASH_SID_OFFICE: TIntegerField;
    Q_CASH_SBRIEF: TStringField;
    CDS_CL_DEBETORSID_OFFICE: TIntegerField;
    CDS_CL_DEBETORSBRIEF: TStringField;
    Q_CLIENT_DEBTID_OFFICE: TIntegerField;
    Q_CLIENT_DEBTBRIEF: TStringField;
    Q_CLIENT_DEBT_AID_OFFICE: TIntegerField;
    Q_CLIENT_DEBT_ABRIEF: TStringField;
    Q_DEBETORSMARK: TIntegerField;
    Q_DEBETORSIS_LOCK: TIntegerField;
    Q_DEBETORSLOCK_FOR: TIntegerField;
    Q_DEBETORSID_OFFICE: TIntegerField;
    Q_DEBETORSDATE_CHANGE: TDateTimeField;
    Q_DEBETORSBRIEF: TStringField;
    Query1: TQuery;
    DataSource1: TDataSource;
    Table1: TTable;
    DataSource2: TDataSource;
    Table2: TTable;
    DataSource3: TDataSource;
    Session1: TSession;
    Q_CASHCASH_SEQ: TFloatField;
    Q_CASH_SCASH_SEQ: TFloatField;
    Q_DELETEDID_CASH: TFloatField;
    Q_DELETEDID_CLIENTS: TIntegerField;
    Q_DELETEDPAYDESK: TIntegerField;
    Q_DELETEDOPERATION: TIntegerField;
    Q_DELETEDINVOICE: TFloatField;
    Q_DELETEDSUMM: TFloatField;
    Q_DELETEDIN_RUB: TFloatField;
    Q_DELETEDOUT_RUB: TFloatField;
    Q_DELETEDIN_USD: TFloatField;
    Q_DELETEDOUT_USD: TFloatField;
    Q_DELETEDIN_EU: TFloatField;
    Q_DELETEDOUT_EU: TFloatField;
    Q_DELETEDINFO: TStringField;
    Q_DELETEDCORRECTOR: TStringField;
    Q_DELETEDDDATE_IN: TDateTimeField;
    Q_DELETEDDDATE_DONE: TDateTimeField;
    Q_DELETEDR_DDATE: TDateTimeField;
    Q_DELETEDD_CHECKED: TIntegerField;
    Q_DELETEDR_PAYDESK: TIntegerField;
    Q_DELETEDCORRECTOR2: TStringField;
    Q_DELETEDCOR_DATE: TDateTimeField;
    Q_DELETEDT_SHORT: TStringField;
    Q_DELETEDT_LONG: TStringField;
    Q_DELETEDNICK: TStringField;
    Q_DELETEDFIO: TStringField;
    Q_DELETEDUSER_DELETED: TStringField;
    Q_DELETEDDATE_DELETED: TDateTimeField;
    Q_DELETEDCOME_FROM: TIntegerField;
    Q_DELETEDID_OFFICE: TFloatField;
    Q_DELETEDBRIEF: TStringField;
    procedure Q_CLIENT_DEBTAfterPost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Q_CASHBeforePost(DataSet: TDataSet);
    procedure Q_CASH_SBeforePost(DataSet: TDataSet);
    procedure Q_CLIENT_DEBT_AAfterPost(DataSet: TDataSet);
    procedure Q_CLIENTSBeforeOpen(DataSet: TDataSet);
    procedure Q_DELETEDBeforeOpen(DataSet: TDataSet);
    procedure Q_CASHBeforeOpen(DataSet: TDataSet);
    procedure Q_CASH_SBeforeOpen(DataSet: TDataSet);
    procedure Q_DEBETORSBeforeOpen(DataSet: TDataSet);
    procedure CDS_CL_DEBETORSBeforeOpen(DataSet: TDataSet);
    procedure OraSession1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    b_edit, b_delete, b_print, b_addit : boolean;
      { Public declarations }
    id_office: integer;
  end;

var
  DM: TDM;

implementation

uses svod_f, nakl_edit_f, deb_edit_f, import_debet_f;



{$R *.dfm}

procedure TDM.Q_DEBETORSBeforeOpen(DataSet: TDataSet);
begin
  Q_DEBETORS.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_DELETEDBeforeOpen(DataSet: TDataSet);
begin
  Q_DELETED.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.CDS_CL_DEBETORSBeforeOpen(DataSet: TDataSet);
begin
  CDS_CL_DEBETORS.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_CLIENTSBeforeOpen(DataSet: TDataSet);
begin
  Q_CLIENTS.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_CASHBeforeOpen(DataSet: TDataSet);
begin
  Q_CASH.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_CASH_SBeforeOpen(DataSet: TDataSet);
begin
  Q_CASH_S.ParamByName('v_office').AsInteger := id_office;
end;









procedure TDM.Q_CLIENT_DEBTAfterPost(DataSet: TDataSet);
var idd, ind2: integer;
begin
  idd := DM.Q_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
  DM.Q_CLIENT_DEBT.Refresh;
//  DM.Q_CLIENT_DEBT.FindKey(idd);
  DM.Q_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',idd,[]);
end;

procedure TDM.Q_CLIENT_DEBT_AAfterPost(DataSet: TDataSet);
var idd, ind2: integer;
begin
  idd := DM.Q_CLIENT_DEBT_AID_CLIENT_DEBT.AsInteger;
  DM.Q_CLIENT_DEBT_A.Refresh;
//  DM.Q_CLIENT_DEBT_A.FindKey(idd);
  DM.Q_CLIENT_DEBT_A.Locate('ID_CLIENT_DEBT',idd,[]);
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  OraSession1.Close;
end;

procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;

procedure TDM.Q_CASHBeforePost(DataSet: TDataSet);
begin
  DM.Q_CASHCOR_DATE.AsDateTime := Date() + Time();
  if DM.Q_CASHR_PAYDESK.AsInteger = 0 then DM.Q_CASHR_PAYDESK.AsInteger := 4;
  DM.Q_CASHCORRECTOR2.AsString := DM.OraSession1.Username;
end;

procedure TDM.Q_CASH_SBeforePost(DataSet: TDataSet);
begin
  DM.Q_CASH_SCOR_DATE.AsDateTime := Date() + Time();
  DM.Q_CASH_SCORRECTOR2.AsString := DM.OraSession1.Username;
end;

end.
