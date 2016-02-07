unit DataM;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, OraSmart, OraErrHand, Dialogs, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Ora_SQL: TOraSQL;
    Q_IDD: TOraQuery;
    Q_EMPL: TOraQuery;
    Q_EMPL_DS: TOraDataSource;
    Q_PROGS: TOraQuery;
    Q_PROGS_DS: TOraDataSource;
    Q_GROUPS: TOraQuery;
    Q_GROUPS_DS: TOraDataSource;
    Q_GR_PR: TOraQuery;
    Q_GR_PR_DS: TOraDataSource;
    Q_EM_PR: TOraQuery;
    Q_EM_PR_DS: TOraDataSource;
    Q_PROGSID_ADMIN_PROGRAMS: TIntegerField;
    Q_PROGSNAME: TStringField;
    Q_PROGSINFO: TStringField;
    Q_GROUPSID_ROLE_GROUPS: TIntegerField;
    Q_GROUPSNAME: TStringField;
    Q_GROUPSINFO: TStringField;
    Q_GR_PRID_PROGRAMS: TIntegerField;
    Q_GR_PRID_ROLE_GROUPS: TIntegerField;
    Q_GR_PRC_START: TIntegerField;
    Q_GR_PRC_EDIT: TIntegerField;
    Q_GR_PRC_DEL: TIntegerField;
    Q_GR_PRC_PRINT: TIntegerField;
    Q_GR_PRC_ADDIT: TIntegerField;
    Q_GR_PRNAME: TStringField;
    Q_SET_CASH: TOraQuery;
    Q_SET_CASH_DS: TOraDataSource;
    Q_SET_CASHN_CASH: TIntegerField;
    Q_SET_CASHID_CLIENTS: TFloatField;
    Q_SET_CASHFIO: TStringField;
    Q_SET_CASHLOGIN: TStringField;
    Q_SET_CASHNICK: TStringField;
    Q_EM_PRID_EMPLOYEES: TIntegerField;
    Q_EM_PRID_ROLE_GROUPS: TIntegerField;
    Q_EM_PRNAME: TStringField;
    Q_EMPLNN: TFloatField;
    Q_EMPLACTIVE: TIntegerField;
    Q_EMPLCCODE: TStringField;
    Q_EMPLFIO: TStringField;
    Q_EMPLID_CLIENTS: TIntegerField;
    Q_EMPLLOGIN: TStringField;
    Q_EMPLNICK: TStringField;
    Q_EMPLSTAFF: TIntegerField;
    Q_EMPLCOUNT: TIntegerField;
    Q_GROUPSID_DEP: TIntegerField;
    Q_GROUPSDEP_NAME: TStringField;
    Q_EM_PRID_DEP: TIntegerField;
    Q_EM_PRDEP_NAME: TStringField;
    Q_EMPLID_OFFICE: TIntegerField;
    Q_EMPLBRIEF: TStringField;
    Q_GROUPSID_OFFICE: TIntegerField;
    Q_GROUPSBRIEF: TStringField;
    Q_SET_CASHID_OFFICE: TIntegerField;
    Q_SET_CASHBRIEF: TStringField;
    Q_SET_DEBITOR: TOraQuery;
    Q_SET_DEBITOR_DS: TOraDataSource;
    Q_SET_DEBITORDEBETORS: TFloatField;
    Q_SET_DEBITORFIO: TStringField;
    Q_SET_DEBITORLOGIN: TStringField;
    Q_SET_DEBITORNICK: TStringField;
    Q_SET_DEBITORID_OFFICE: TIntegerField;
    Q_SET_DEBITORBRIEF: TStringField;
    Q_SET_DEBITORID_CLIENTS: TIntegerField;
    procedure OraSession1AfterConnect(Sender: TObject);
    procedure Q_PROGSAfterOpen(DataSet: TDataSet);
    procedure Q_GROUPSAfterOpen(DataSet: TDataSet);
    procedure Q_EMPL2AfterOpen(DataSet: TDataSet);
    procedure Q_GROUPSAfterScroll(DataSet: TDataSet);
    procedure Q_EMPLAfterScroll(DataSet: TDataSet);
    procedure Q_EMPLAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    id_office: integer;
    procedure RefreshAll;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses main_form, pr_edit_f;

{$R *.dfm}

procedure TDM.RefreshAll;
begin
  // Открытие сотрудников
  DM.Q_EMPL.AfterScroll := nil;
  DM.Q_EMPL.Close;
  DM.Q_EMPL.ParamByName('v_office').AsInteger := id_office;
  DM.Q_EMPL.Open;
  DM.Q_EMPL.AfterScroll := Q_EMPLAfterScroll;
//  DM.Q_EMPL2.Open;
  DM.Q_SET_CASH.Close;
  DM.Q_SET_CASH.ParamByName('v_office').AsInteger := id_office;
  DM.Q_SET_CASH.Open;
  // Открытие программ
  DM.Q_PROGS.Close;
  DM.Q_PROGS.Open;
  // Открытие групп
  DM.Q_GROUPS.AfterScroll := nil;
  DM.Q_GROUPS.Close;
  DM.Q_GROUPS.ParamByName('v_office').AsInteger := id_office;
  DM.Q_GROUPS.Open;
  DM.Q_GROUPS.AfterScroll := Q_GROUPSAfterScroll;

  // Открытие дебиторов
  DM.Q_SET_DEBITOR.Close;
  DM.Q_SET_DEBITOR.ParamByName('v_office').AsInteger := id_office;
  DM.Q_SET_DEBITOR.Open;
end;


procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
  RefreshAll;
end;

//
// Запоняем список программами
procedure TDM.Q_PROGSAfterOpen(DataSet: TDataSet);
begin
  pr_editor.ComboBox1.Items.Clear;
  main.DBGrid2.DataSource := nil;

  FillComboOlmer(Q_PROGS,pr_editor.ComboBox1,'');

  main.DBGrid2.DataSource := DM.Q_PROGS_DS;
end;

//
// Запоняем список группами
procedure TDM.Q_GROUPSAfterOpen(DataSet: TDataSet);
begin
  main.ComboBox3.OnChange := nil;
  main.DBGrid4.DataSource := nil;

  FillComboOlmer(Q_GROUPS,main.ComboBox2,'Выберите группу для добавления...');
  FillComboOlmer(Q_GROUPS,main.ComboBox3,'Все');

  main.DBGrid4.DataSource := DM.Q_GROUPS_DS;
  main.ComboBox3.OnChange := main.ComboBox6Change;
  Q_GROUPSAfterScroll(nil);
end;


procedure TDM.Q_EMPL2AfterOpen(DataSet: TDataSet);
begin
{
  main.ComboBox5.Items.Clear;
  try
    DM.Q_EMPL2.First;
    while not DM.Q_EMPL2.Eof do
    begin
      main.ComboBox5.Items.Add(DM.Q_EMPL2FIO.AsString);
      DM.Q_EMPL2.Next;
    end;
  except
    on E: Exception do ShowMessage('Не удалось заполнить список из БД!');
  end;
}
end;

//
// Открываем список программ для группы
procedure TDM.Q_GROUPSAfterScroll(DataSet: TDataSet);
begin
    Q_GR_PR.Close;
    Q_GR_PR.ParamByName('role_').AsInteger := Q_GROUPSID_ROLE_GROUPS.AsInteger;
    Q_GR_PR.ParamByName('v_office').AsInteger := id_office;
    Q_GR_PR.Open;
end;

//
// Открываем список ролей для сотрудника
procedure TDM.Q_EMPLAfterScroll(DataSet: TDataSet);
begin
    Q_EM_PR.Close;
    Q_EM_PR.ParamByName('role_').AsInteger := Q_EMPLID_CLIENTS.AsInteger;
    Q_EM_PR.ParamByName('v_office').AsInteger := id_office;
    Q_EM_PR.Open;
end;

procedure TDM.Q_EMPLAfterRefresh(DataSet: TDataSet);
begin
  FillComboEh(Q_IDD, main.DBComboBoxEh1, 'select id_clients, FIO from employees_view where (id_office = '+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+' = 0) and active=1 and login is not null order by FIO');
  Q_IDD.Close;
  Q_EMPLAfterScroll(nil);
end;

end.
