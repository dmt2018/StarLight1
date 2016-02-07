unit DataM;

interface

uses
  SysUtils, Classes, DB, Ora, MemDS, DBAccess, Dialogs, DBTables, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    CASH_TMP: TOraQuery;
    CASH_TMP_DS: TOraDataSource;
    OPERATIONS: TOraQuery;
    OPERATIONS_DS: TOraDataSource;
    Q_SQL: TOraQuery;
    Q_SQL_DS: TOraDataSource;
    OPERATIONST_SHORT: TStringField;
    OPERATIONST_LONG: TStringField;
    OPERATIONSID_OPERATIONS: TIntegerField;
    Query1: TQuery;
    DataSource1: TDataSource;
    Table1: TTable;
    DataSource2: TDataSource;
    Table2: TTable;
    DataSource3: TDataSource;
    Session1: TSession;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    CASH_TMPID_CASH_TMP: TFloatField;
    CASH_TMPID_CLIENTS: TIntegerField;
    CASH_TMPPAYDESK: TIntegerField;
    CASH_TMPOPERATION: TIntegerField;
    CASH_TMPINVOICE: TFloatField;
    CASH_TMPCORRECTOR: TStringField;
    CASH_TMPR_PAYDESK: TIntegerField;
    CASH_TMPR_DDATE: TDateTimeField;
    CASH_TMPDDATE_DONE: TDateTimeField;
    CASH_TMPDDATE_IN: TStringField;
    CASH_TMPSUMM: TFloatField;
    CASH_TMPIN_RUB: TFloatField;
    CASH_TMPOUT_RUB: TFloatField;
    CASH_TMPIN_USD: TFloatField;
    CASH_TMPOUT_USD: TFloatField;
    CASH_TMPIN_EU: TFloatField;
    CASH_TMPOUT_EU: TFloatField;
    CASH_TMPINFO: TStringField;
    CASH_TMPT_SHORT: TStringField;
    CASH_TMPT_LONG: TStringField;
    CASH_TMPNICK: TStringField;
    CASH_TMPFIO: TStringField;
    CASH_TMPDDATE_IN_: TDateTimeField;
    CASH_TMPGROUP_NAME: TStringField;
    Q_CLIENTSGROUP_NAME: TStringField;
    OPERATIONSID_OFFICE: TIntegerField;
    SaveDialog: TSaveDialog;
    CASH_TMPCASH_SEQ: TFloatField;
    procedure CASH_TMPBeforeEdit(DataSet: TDataSet);
    procedure CASH_TMPBeforePost(DataSet: TDataSet);
    procedure OraSession1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    b_edit, b_delete, b_print, b_addit : boolean;
    id_office: integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses choise;

{$R *.dfm}

procedure TDM.CASH_TMPBeforeEdit(DataSet: TDataSet);
var ind: integer;
begin
  if CASH_TMPID_CASH_TMP.AsInteger > 0 then
  begin
          if CASH_TMPR_PAYDESK.AsInteger <> 0 then
          begin
            if (choises.param_ <> CASH_TMPR_PAYDESK.AsInteger) and (choises.param_ < 4) then
            begin
              ShowMessage('Вы не проводили эту операцию! Изменения не допустимы!');
              CASH_TMP.Cancel;
              CASH_TMP.Next;
              CASH_TMP.Prior;
            end;
            if (OraSession1.Username <> CASH_TMPCORRECTOR.AsString) and (choises.param_ < 4)  then
            begin
              ShowMessage('Вы не проводили эту операцию! Изменения не допустимы!');
              CASH_TMP.Cancel;
              CASH_TMP.Next;
              CASH_TMP.Prior;
            end;
          end;
  end else ShowMessage('Нет данных для редактирования!');
end;


procedure TDM.CASH_TMPBeforePost(DataSet: TDataSet);
begin
  if ((CASH_TMPR_PAYDESK.AsInteger > 0) and (CASH_TMPR_PAYDESK.AsInteger <> choises.param_) and (choises.param_ < 4)) then
  begin CASH_TMP.Cancel; end
  else
  begin
    if ((CASH_TMPIN_RUB.AsFloat <> 0) or (CASH_TMPOUT_RUB.AsFloat <> 0) or (CASH_TMPIN_USD.AsFloat <> 0) or (CASH_TMPOUT_USD.AsFloat <> 0) or (CASH_TMPIN_EU.AsFloat <> 0) or (CASH_TMPOUT_EU.AsFloat <> 0)) then
    begin
      CASH_TMPDDATE_DONE.AsDateTime := Date() + Time();
      CASH_TMPCORRECTOR.AsString    := OraSession1.Username;
      CASH_TMPR_PAYDESK.AsInteger   := choises.param_;
    end;
  end;
end;

procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;

end.
