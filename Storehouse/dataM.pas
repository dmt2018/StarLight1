unit dataM;

interface

uses
  SysUtils, Classes, DB, Ora, MemDS, DBAccess, VirtualTable, OraScript, Dialogs,
  DBSumLst, DBCtrls, Menus, ImgList, Controls, PI_Library_reg, IniFiles, Forms;

type
  TDM = class(TDataModule)
    SaveDialog: TSaveDialog;
    Already_Add: TOraQuery;
    Ora_SQL: TOraSQL;
    OraQuery1: TOraQuery;
    ImageList: TImageList;
    D_IDD: TOraQuery;
    service_OraQuery: TOraQuery;
    OraSQL_Scan: TOraSQL;
    Scan: TOraQuery;
    StorProc: TOraStoredProc;
    Q_SQL: TOraQuery;
    USER: TOraQuery;
    USERFAM: TStringField;
    USERID_EMPLOYEES: TIntegerField;
    USERLOGIN: TStringField;
    USERNICK: TStringField;
    USER_DS: TOraDataSource;
    OraSession: TOraSession;
    ft_view: TOraQuery;
    ft_viewFT_ID: TFloatField;
    ft_viewF_TYPE: TStringField;
    ft_viewID_DEPARTMENTS: TFloatField;
    ft_viewNBUTTON: TIntegerField;
    ft_view_ds: TDataSource;
    fst_view_ds: TDataSource;
    fst_view: TOraQuery;
    fst_viewFST_ID: TFloatField;
    fst_viewF_SUB_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewNBUTTON: TIntegerField;
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

  GlobalDate:tDatetime;
  GlobalDate_FORMAT:string;


  Operator_username:string;
  Operator_id:string;

  Operator_print: boolean;
  Operator_delete: boolean;
  Operator_edit: boolean;
  Operator_admin: boolean;

  Operator_Name:string;
  Operator_Code:string;

  department_id:string;
  department_name:string;
implementation
uses global;
{$R *.dfm}


procedure TDM.DataModuleCreate(Sender: TObject);
var
  RegIni : TIniFile;
  path: string;
begin
  path         := ExtractFilePath(Application.ExeName);
  RegIni       := TIniFile.Create(path+'store.ini');
//  v61_service  := RegIni.ReadInteger('61_service', 'Value', 0);
//  v62_service  := RegIni.ReadInteger('62_service', 'Value', 0);
//  v121_service := RegIni.ReadInteger('121_service', 'Value', 0);
  title_name   := RegIni.ReadString('title', 'value', '');
end;

procedure TDM.OraSessionAfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;

end.
