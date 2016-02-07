unit DataM;

interface

uses
  SysUtils, Classes, DB, Ora, MemDS, DBAccess, Dialogs, frxExportMail,
  frxExportCSV, frxExportRTF, frxExportXML, frxExportHTML, frxClass,
  frxExportPDF, frxDBSet, frxChBox, frxExportXLS, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Ora_SQL: TOraSQL;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    OPERATIONS: TOraQuery;
    OPERATIONS_DS: TOraDataSource;
    Q_SQL: TOraQuery;
    Q_DEBETORS: TOraQuery;
    Q_DEBETORS_DS: TOraDataSource;
    OraStoredProc1: TOraStoredProc;
    prichast: TOraQuery;
    prichast_DS: TOraDataSource;
    frx_debetors: TfrxDBDataset;
    frx_client_debt: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    SaveDialog: TSaveDialog;
    Q_OPER_SEARCH: TOraQuery;
    Q_OPER_SEARCH_DS: TOraDataSource;
    Q_OPER_SEARCHNN: TFloatField;
    Q_OPER_SEARCHID_CLIENT_DEBT: TFloatField;
    Q_OPER_SEARCHID_DEBETORS: TFloatField;
    Q_OPER_SEARCHDEBET: TFloatField;
    Q_OPER_SEARCHRATE: TFloatField;
    Q_OPER_SEARCHD_DATE: TDateTimeField;
    Q_OPER_SEARCHR_DDATE: TDateTimeField;
    Q_OPER_SEARCHOPERATION: TIntegerField;
    Q_OPER_SEARCHINVOICE: TStringField;
    Q_OPER_SEARCHSUMM: TFloatField;
    Q_OPER_SEARCHINFO: TStringField;
    Q_OPER_SEARCHIN_RUB: TFloatField;
    Q_OPER_SEARCHT_SHORT: TStringField;
    Q_OPER_SEARCHT_LONG: TStringField;
    Q_OPER_SEARCHNICK: TStringField;
    frx_prichast: TfrxDBDataset;
    Q_OPER_SEARCHACTIVE: TIntegerField;
    prichastID_CLIENTS: TIntegerField;
    prichastNICK: TStringField;
    prichastFIO: TStringField;
    prichastNAME: TStringField;
    prichastAA: TFloatField;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSDDATE: TDateTimeField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSREGION: TIntegerField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSREGIONS_NAME: TStringField;
    Q_CLIENTSGR_NAME: TStringField;
    Q_CLIENTSTTYPE_NAME: TStringField;
    Q_CLIENTSCORRECTOR: TStringField;
    Q_CLIENTSPHONE: TStringField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSREG_TYPE_NAME: TStringField;
    Q_CLIENTSSALES: TFloatField;
    Q_CLIENTSNN: TFloatField;
    Q_CLIENTSCOUNTS: TIntegerField;
    Q_CLIENTSDEB_CLIENT: TIntegerField;
    Q_CLIENT_DEBT: TOraQuery;
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
    Q_CLIENT_DEBTIN_RUB: TFloatField;
    Q_CLIENT_DEBTT_SHORT: TStringField;
    Q_CLIENT_DEBTT_LONG: TStringField;
    Q_CLIENT_DEBTT_TYPE: TIntegerField;
    Q_CLIENT_DEBTNICK: TStringField;
    Q_CLIENT_DEBTCHART: TFloatField;
    Q_CLIENT_DEBTACTIVE: TIntegerField;
    Q_CLIENT_DEBT_DS: TOraDataSource;
    Q_DEBETORSNICK: TStringField;
    Q_DEBETORSFIO: TStringField;
    Q_DEBETORSDOSTAVKA: TIntegerField;
    Q_DEBETORSID_DEBETORS: TFloatField;
    Q_DEBETORSID_CLIENTS: TIntegerField;
    Q_DEBETORSLAST_DDATE: TDateTimeField;
    Q_DEBETORSSTATE: TIntegerField;
    Q_DEBETORSBEZNAL: TIntegerField;
    Q_DEBETORSMARK: TIntegerField;
    Q_DEBETORSDEBET: TFloatField;
    Q_DEBETORSCREDIT_DAYS: TIntegerField;
    Q_DEBETORSINFO: TStringField;
    Q_DEBETORSDDATE: TDateTimeField;
    Q_DEBETORSRUBL: TIntegerField;
    Q_DEBETORSCHART: TFloatField;
    Q_DEBETORSBLOCK1: TIntegerField;
    Q_DEBETORSPHONE: TStringField;
    Q_DEBETORSREGION: TIntegerField;
    Q_DEBETORSGROUP_NAME: TStringField;
    Q_DEBETORSID_CLIENTS_GROUPS: TIntegerField;
    Q_DEBETORSKKK: TStringField;
    Q_DEBETORSMARK_KOL: TFloatField;
    Q_DEBETORSMAX_DATE: TDateTimeField;
    Q_DEBETORSCHART2: TFloatField;
    Q_DEBETORSIS_LOCK: TIntegerField;
    Q_DEBETORSLOCK_FOR: TIntegerField;
    Q_DEBETORSLOCK_CLIENT: TStringField;
    Q_DEBETORSSALES: TFloatField;
    Q_DEBETORSWW: TStringField;
    OPERATIONSID_OPERATIONS: TIntegerField;
    OPERATIONST_SHORT: TStringField;
    OPERATIONST_LONG: TStringField;
    OPERATIONST_TYPE_: TIntegerField;
    OPERATIONSDOLG: TIntegerField;
    OPERATIONST_TYPE: TStringField;
    Q_CLIENT_DEBTDISCOUNT: TFloatField;
    Q_CLIENT_DEBTDISC_PROC: TIntegerField;
    Q_CLIENT_DEBTIS_LOCK: TIntegerField;
    Q_CLIENT_DEBTLOCK_FOR: TIntegerField;
    Q_CLIENT_DEBTDOLG: TFloatField;
    Q_CLIENT_DEBTITOG_DISCOUNT: TFloatField;
    OraQuery1: TOraQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField2: TFloatField;
    IntegerField6: TIntegerField;
    StringField3: TStringField;
    DateTimeField2: TDateTimeField;
    IntegerField7: TIntegerField;
    FloatField3: TFloatField;
    IntegerField8: TIntegerField;
    StringField4: TStringField;
    IntegerField9: TIntegerField;
    StringField5: TStringField;
    IntegerField10: TIntegerField;
    StringField6: TStringField;
    FloatField4: TFloatField;
    DateTimeField3: TDateTimeField;
    FloatField5: TFloatField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField7: TStringField;
    FloatField6: TFloatField;
    StringField8: TStringField;
    Q_DEBETORSBLOCK2: TIntegerField;
    Q_DEBETORSCHART_GROUP: TFloatField;
    Q_DEBETORSCHART_FOR_GROUP: TFloatField;
    Q_DEBETORSID_OFFICE: TIntegerField;
    Q_DEBETORSBRIEF: TStringField;
    Q_OPER_SEARCHBRIEF: TStringField;
    Q_DEBETORSGROUP_MAX_DATE: TDateTimeField;
    Q_DEBETORSITOG_DISCOUNT: TFloatField;
    Q_DEBETORSINN: TStringField;
    procedure Q_CLIENT_DEBTAfterOpen(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure Q_DEBETORSBeforeOpen(DataSet: TDataSet);
    procedure Q_CLIENTSBeforeOpen(DataSet: TDataSet);
    procedure Q_OPER_SEARCHBeforeOpen(DataSet: TDataSet);
    procedure prichastBeforeOpen(DataSet: TDataSet);
    procedure OraSession1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    b_edit, b_delete, b_print, b_addit : boolean;
    ppp : currency;
    id_office: integer;
    is_all: boolean;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses client_debt_edit_f, debetors_f,
  deb_edit_f, client_debt_f;



{$R *.dfm}

procedure TDM.Q_CLIENTSBeforeOpen(DataSet: TDataSet);
begin
  Q_CLIENTS.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_CLIENT_DEBTAfterOpen(DataSet: TDataSet);
begin
  Q_CLIENT_DEBT.Last;
end;

procedure TDM.Q_DEBETORSBeforeOpen(DataSet: TDataSet);
begin
  Q_DEBETORS.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_OPER_SEARCHBeforeOpen(DataSet: TDataSet);
begin
  Q_OPER_SEARCH.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  OraSession1.Close;
end;

procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('select count(*) as nn from DEBETOR_PERMISSIONS z, clients c where z.user_id = c.ID_CLIENTS and upper(c.login) = :p1');
  DM.Q_SQL.Prepare;
  DM.Q_SQL.ParamByName('p1').Value := UpperCase(DM.OraSession1.Username);
  DM.Q_SQL.Open;
  is_all := not (DM.Q_SQL.FieldByName('nn').AsInteger > 0);
  DM.Q_SQL.Close;
end;

procedure TDM.prichastBeforeOpen(DataSet: TDataSet);
begin
  prichast.ParamByName('v_office').AsInteger := id_office;
end;

end.
