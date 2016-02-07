unit dataM;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, Dialogs, Menus, PI_Library_reg,
  ImgList, Controls, OraScript, xmldom, XMLIntf, msxmldom, XMLDoc, useful_functions,
  IniFiles, Forms;

type
  TDM = class(TDataModule)
    OraSession: TOraSession;
    Ora_SQL: TOraSQL;
    currency: TOraQuery;
    currency_ds: TOraDataSource;
    currencyDDATE: TDateTimeField;
    currencyUSD: TFloatField;
    currencyEUR: TFloatField;
    currencyUSD_EUR: TFloatField;
    departments: TOraQuery;
    departments_ds: TOraDataSource;
    departmentsID_DEPARTMENTS: TIntegerField;
    departmentsNAME: TStringField;
    ImageList1: TImageList;
    company: TOraQuery;
    company_ds: TOraDataSource;
    banc: TOraQuery;
    banc_ds: TOraDataSource;
    bancBANC_ID: TFloatField;
    bancCOMPANY_ID: TFloatField;
    bancBANC_NAME: TStringField;
    bancBANC_RS: TStringField;
    bancBANC_KS: TStringField;
    bancBANC_BIK: TStringField;
    ImageList_big: TImageList;
    USER: TOraQuery;
    USERFAM: TStringField;
    USERID_EMPLOYEES: TIntegerField;
    USERLOGIN: TStringField;
    USERNICK: TStringField;
    USER_DS: TOraDataSource;
    pref: TOraQuery;
    pref_ds: TOraDataSource;
    companyCOMPANY_ID: TFloatField;
    companyCOMPANY_NAME: TStringField;
    companyKPP: TStringField;
    companyINN: TStringField;
    companyADRESS: TStringField;
    companyPHONE: TStringField;
    companyFAX: TStringField;
    companyOTPUSK_PROIZVEL_FIO: TStringField;
    companyOTPUSK_RAZRESHIL_FIO: TStringField;
    companyGLAV_BUH: TStringField;
    companyOTPUSK_PROIZVEL_DOLJN: TStringField;
    companyOTPUSK_RAZRESHIL_DOLJN: TStringField;
    CDS_ADDRESS: TOraQuery;
    DS_ADDRESS: TOraDataSource;
    CDS_ADDRESSID: TIntegerField;
    CDS_ADDRESSID_CLIENTS: TIntegerField;
    CDS_ADDRESSADDRESS: TMemoField;
    StorProc: TOraStoredProc;
    Q_SQL: TOraQuery;
    cdsClients: TOraQuery;
    cdsClientsID_CLIENTS: TIntegerField;
    cdsClientsADDRESS: TMemoField;
    cdsClientsFIO: TStringField;
    cdsClientsINN: TStringField;
    cdsClientsKPP: TStringField;
    cdsClientsNICK: TStringField;
    cdsClientsPHONE: TMemoField;
    cdsClientsBANK: TMemoField;
    cdsClientsTTYPE_NAME: TStringField;
    dsClients: TOraDataSource;
    companyKPP2: TStringField;
    companyADRESS2: TStringField;
    procedure Ora_SQLPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);


    procedure readparameters();
    procedure OraSessionAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    id_office : integer;
    v61_service, v62_service, v121_service : integer;
    title_name:string;
    { Public declarations }
  end;

var
  DM: TDM;
  Operator_Name:string;
  Operator_Code:string;
  Operator_id:string;
  Operator_username:string;

  company_default:integer;
  banc_default:integer;
  nds_default: integer;
  bez_nds_default: integer;
  bez_nds_minus: integer;
  okpo_default:string;
  okud_default:string;
  okdp_default:string;

  Operator_print: boolean;
  Operator_delete: boolean;
  Operator_edit: boolean;
  Operator_admin: boolean;

  print_copy: Integer;

  department_id:string;
  department_name:string;

implementation

uses global, doc_view;
{$R *.dfm}


//
//  Ќазначаем банковские переменные по оператору
//
procedure TDM.readparameters();
begin
  try
  	pref.Close;
	  pref.ParamByName('ID_emp').AsInteger    := strtoint(Operator_id);
	  pref.ParamByName('v_company').AsInteger := company_default;
  	pref.Open;
  except
    on E: Exception do ShowMessage(E.Message);
  end;

  if not pref.IsEmpty then
  begin
//  company_default := pref.FieldByName('ID_COMPANY').AsInteger;
    banc_default    := pref.FieldByName('ID_BANC').AsInteger;
    nds_default     := pref.FieldByName('NDS').AsInteger;
    bez_nds_default := pref.FieldByName('BEZNDS').AsInteger;
    bez_nds_minus   := pref.FieldByName('BEZNDSMINUS').AsInteger;
    okpo_default    := pref.FieldByName('OKPO').AsString;
    okud_default    := pref.FieldByName('OKUD').AsString;
    okdp_default    := pref.FieldByName('OKDP').AsString;
  end;

	pref.Close;
end;



procedure TDM.DataModuleCreate(Sender: TObject);
var
  RegIni : TIniFile;
  path: string;
begin
  path         := ExtractFilePath(Application.ExeName);
  RegIni       := TIniFile.Create(path+'store_buh.ini');
  v61_service  := RegIni.ReadInteger('61_service', 'Value', 0);
  v62_service  := RegIni.ReadInteger('62_service', 'Value', 0);
  v121_service := RegIni.ReadInteger('121_service', 'Value', 0);
  title_name   := RegIni.ReadString('title', 'value', '');
end;

procedure TDM.OraSessionAfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;

procedure TDM.Ora_SQLPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  datasetErrors(E);
  abort;
end;


end.
