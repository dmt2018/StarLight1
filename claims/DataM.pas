unit DataM;

interface

uses
  SysUtils, Classes, DBAccess, Ora, DB, MemDS, PI_library, frxExportTXT,
  frxExportMail, frxExportCSV, frxExportRTF, frxExportXLS, frxExportHTML,
  frxClass, frxExportPDF, frxDBSet, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Q_CLAIMS: TOraQuery;
    Q_CLAIMS_DS: TOraDataSource;
    Q_INV: TOraQuery;
    Q_INV_DS: TOraDataSource;
    Q_CLAIMS_LIST: TOraQuery;
    Q_CLAIMS_LIST_DS: TOraDataSource;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSFIO: TStringField;
    Q_FLOWERS: TOraQuery;
    DS_FLOWERS: TOraDataSource;
    frxDB_CLAIMS: TfrxDBDataset;
    frxDB_CLAIMS_LIST: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxTXTExport1: TfrxTXTExport;
    Q_NOM: TOraQuery;
    Q_NOM_DS: TOraDataSource;
    Q_CLAIMS_LISTCLAIMS_LIST_ID: TFloatField;
    Q_CLAIMS_LISTTTYPE: TFloatField;
    Q_CLAIMS_LISTS_ID: TFloatField;
    Q_CLAIMS_LISTID_CLIENTS: TFloatField;
    Q_CLAIMS_LISTFN_ID: TFloatField;
    Q_CLAIMS_LISTQUANTITY: TIntegerField;
    Q_CLAIMS_LISTHFL: TFloatField;
    Q_CLAIMS_LISTCUST: TFloatField;
    Q_CLAIMS_LISTDEFECT: TStringField;
    Q_CLAIMS_LISTINFO: TStringField;
    Q_CLAIMS_LISTQUANTITY2: TIntegerField;
    Q_CLAIMS_LISTHFL2: TFloatField;
    Q_CLAIMS_LISTCUST2: TFloatField;
    Q_CLAIMS_LISTFLOWER: TStringField;
    Q_CLAIMS_LISTS_NAME_RU: TStringField;
    Q_CLAIMS_LISTNICK: TStringField;
    Q_CLAIMS_LISTCOMPILED_NAME: TStringField;
    Q_CLAIMS_LISTF_NAME: TStringField;
    Q_CLAIMS_LISTTTYPE_NAME: TStringField;
    frxReport1: TfrxReport;
    Ora_SQL: TOraQuery;
    Q_INVINV_ID: TFloatField;
    Q_INVINV_DATE: TDateTimeField;
    Q_INVCOMMENTS: TStringField;
    Q_INVINV_SUM: TFloatField;
    Q_INVSENDED_TO_WAREHOUSE: TIntegerField;
    Q_INVWAREHOUSE_SENDED_DATE: TDateTimeField;
    Q_INVSUPPLIER_DATE: TDateTimeField;
    Q_INVSUPPLIER_NUMBER: TStringField;
    Q_INVIPP_ID: TFloatField;
    Q_INVIPP_COMMENT: TStringField;
    Q_INVID_DEPARTMENTS: TFloatField;
    Q_INVDEPT_NAME: TStringField;
    Q_INVINVOICE_TITLE: TStringField;
    Q_INVS_ID_DEFAULT: TFloatField;
    Q_INVC_ID_DEFAULT: TFloatField;
    Q_INVREADY_SUM: TFloatField;
    Q_INVAS_IS_SUM: TFloatField;
    Q_INVAS_IS_SUM_NOT_PROCESSED: TFloatField;
    Q_INVREADY_UNITS: TFloatField;
    Q_INVAS_IS_UNITS: TFloatField;
    Q_INVREADY_POS: TFloatField;
    Q_INVAS_IS_POS: TFloatField;
    Q_INVDONE_NUM: TFloatField;
    Q_INVPAST_NUM: TFloatField;
    Q_INVTOTAL_SUM: TFloatField;
    DS_TYPES: TOraDataSource;
    CDS_TYPES: TOraQuery;
    CDS_TYPESFT_ID: TFloatField;
    CDS_TYPESF_TYPE: TStringField;
    Q_CLAIMS_LISTID_OFFICE: TIntegerField;
    Q_CLAIMSCLAIMS_ID: TFloatField;
    Q_CLAIMSDDATE: TDateTimeField;
    Q_CLAIMSN_TRACK: TIntegerField;
    Q_CLAIMSINV_ID: TFloatField;
    Q_CLAIMSINV_DATE: TDateTimeField;
    Q_CLAIMSSUPPLIER_DATE: TDateTimeField;
    Q_CLAIMSSUPPLIER_NUMBER: TStringField;
    Q_CLAIMSID_DEPARTMENTS: TFloatField;
    Q_CLAIMSSUMM_INV: TFloatField;
    Q_CLAIMSPERCENT2: TFloatField;
    Q_CLAIMSDOP_INFO: TStringField;
    Q_CLAIMSNAME: TStringField;
    Q_CLAIMSSENDED_TO_WAREHOUSE: TIntegerField;
    Q_CLAIMSINV_MINUS: TIntegerField;
    Q_CLAIMSMINUS_INV_ID: TFloatField;
    Q_CLAIMSID_OFFICE: TIntegerField;
    Q_CLAIMSBRIEF: TStringField;
    Q_NOMINV_ID: TFloatField;
    Q_NOMN_ID: TFloatField;
    Q_NOMUNITS: TFloatField;
    Q_NOMPRICE_PER_UNIT: TFloatField;
    Q_NOMAMOUNT_IN_THE_PACK: TFloatField;
    Q_NOMH_CODE: TStringField;
    Q_NOMFULL_NAME: TStringField;
    Q_NOMLEN: TIntegerField;
    Q_NOMCOLOUR: TStringField;
    Q_NOMCOUNTRY: TStringField;
    Q_NOMS_NAME_RU: TStringField;
    Q_NOMRUS_MARKS: TStringField;
    Q_NOMDIAMETER: TFloatField;
    Q_NOMFT_ID: TFloatField;
    Q_NOMF_TYPE: TStringField;
    Q_NOMFST_ID: TFloatField;
    Q_NOMF_SUB_TYPE: TStringField;
    Q_NOMCUST_COEF: TFloatField;
    Q_NOMGTD: TStringField;
    Q_NOMPACK: TIntegerField;
    Q_FLOWERSCOMPILED_NAME: TStringField;
    Q_FLOWERSFULL_NAME: TStringField;
    Q_FLOWERSF_NAME: TStringField;
    Q_FLOWERSF_NAME_RU: TStringField;
    Q_FLOWERSF_SUB_TYPE: TStringField;
    Q_FLOWERSF_TYPE: TStringField;
    Q_FLOWERSID_DEPARTMENTS: TFloatField;
    Q_FLOWERSDEPT: TStringField;
    Q_FLOWERSFT_ID: TFloatField;
    Q_FLOWERSHOL_SUB_TYPE: TStringField;
    Q_FLOWERSSUB_WEIGHT: TFloatField;
    Q_FLOWERSHT_ID: TFloatField;
    Q_FLOWERSN_ID: TFloatField;
    Q_FLOWERSFN_ID: TFloatField;
    Q_FLOWERSFST_ID: TFloatField;
    Q_FLOWERSS_ID: TFloatField;
    Q_FLOWERSC_ID: TFloatField;
    Q_FLOWERSCOL_ID: TFloatField;
    Q_FLOWERSH_CODE: TStringField;
    Q_FLOWERSH_NAME: TStringField;
    Q_FLOWERSCODE: TFloatField;
    Q_FLOWERSLEN: TIntegerField;
    Q_FLOWERSPACK: TIntegerField;
    Q_FLOWERSDIAMETER: TFloatField;
    Q_FLOWERSVBN: TIntegerField;
    Q_FLOWERSHOL_TYPE: TStringField;
    Q_FLOWERSWEIGHT: TFloatField;
    Q_FLOWERSREMARKS: TStringField;
    Q_FLOWERSS_NAME_RU: TStringField;
    Q_FLOWERSBAR_CODE: TStringField;
    Q_FLOWERSCUST_COEF: TFloatField;
    Q_FLOWERSPHOTO: TStringField;
    Q_FLOWERSIS_PHOTO: TFloatField;
    Q_FLOWERSCOLOUR: TStringField;
    Q_FLOWERSCOUNTRY: TStringField;
    Q_FLOWERSTYPE_SUBTYPE: TStringField;
    Q_FLOWERSHOL_MARKS: TStringField;
    Q_FLOWERSRUS_MARKS: TStringField;
    Q_FLOWERSGREAT_NAME: TStringField;
    Q_FLOWERSGREAT_NAME_F: TStringField;
    Q_FLOWERSNAME_CODE: TStringField;
    procedure OraSession1AfterConnect(Sender: TObject);
    procedure Q_CLAIMSBeforeOpen(DataSet: TDataSet);
    procedure Q_INVBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    b_edit, b_delete, b_print, b_addit : boolean;
    curr_dep_id: integer;
    id_office: integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses edit_claim_f, editor_f;

{$R *.dfm}

procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;

procedure TDM.Q_CLAIMSBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;


procedure TDM.Q_INVBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

end.
