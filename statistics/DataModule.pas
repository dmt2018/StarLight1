unit DataModule;

interface

uses
  SysUtils, Classes, DB, Ora, MemDS, DBAccess, OraSmart, PI_Library_reg;

type
  TDM = class(TDataModule)
    stat_session: TOraSession;
    CDS_client_stat: TSmartQuery;
    DS_client_stat: TOraDataSource;
    Q_SQL: TOraSQL;
    CDS_sale_stat: TSmartQuery;
    DS_sale_stat: TOraDataSource;
    SP_EXECUTE: TOraStoredProc;
    DS_EXECUTE: TOraDataSource;
    SQL_Q: TOraQuery;
    cds_summs: TSmartQuery;
    ds_summs: TOraDataSource;
    cds_grants: TSmartQuery;
    ds_grants: TOraDataSource;
    StorProc: TOraStoredProc;
    cds_grantsID_PROGRAMS: TIntegerField;
    cds_grantsID_USER: TIntegerField;
    cds_grantsTAG: TIntegerField;
    cds_grantsC_START: TIntegerField;
    cds_grantsNICK: TStringField;
    cds_grantsFIO: TStringField;
    cds_grantsTAG_NAME: TStringField;
    procedure stat_sessionAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    id_office : integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

procedure TDM.stat_sessionAfterConnect(Sender: TObject);
begin

  // Устанавливаем параметры сессии
  //DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('alter session set nls_date_format=''dd.mm.yyyy hh24:mi:ss''');
  DM.Q_SQL.Execute;
  //DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('alter session set nls_time_format=''hh24:mi:ss''');
  DM.Q_SQL.Execute;
  // -------------------------------

  id_office := GetOfficeID;
end;

end.
