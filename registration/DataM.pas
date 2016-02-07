unit DataM;

interface

uses
  SysUtils, Classes, DBAccess, Ora, DB, MemDS, Dialogs, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTS_DS: TOraDataSource;
    Ora_SQL: TOraSQL;
    Q_IDD_DS: TOraDataSource;
    Q_IDD: TOraQuery;
    Q_GROUPS: TOraQuery;
    Q_GROUPS_DS: TOraDataSource;
    Q_TYPES: TOraQuery;
    Q_TYPES_DS: TOraDataSource;
    Q_REGIONS: TOraQuery;
    Q_REGIONS_DS: TOraDataSource;
    Q_ADVERT: TOraQuery;
    Q_ADVERT_DS: TOraDataSource;
    Q_SQL_DS: TOraDataSource;
    Q_SQL: TOraQuery;
    Q_G_CL: TOraQuery;
    Q_G_CL_DS: TOraDataSource;
    Q_EMPL: TOraQuery;
    Q_EMPL_DS: TOraDataSource;
    Q_TITLES: TOraQuery;
    Q_TITLES_DS: TOraDataSource;
    Q_JOBS: TOraQuery;
    Q_JOBS_DS: TOraDataSource;
    Q_DEPART: TOraQuery;
    Q_DEPART_DS: TOraDataSource;
    Q_DEPS: TOraQuery;
    Q_DEPS_DS: TOraDataSource;
    DEPS_EMPL: TOraQuery;
    DEPS_EMPL_DS: TOraDataSource;
    JOBS_EMPL: TOraQuery;
    JOBS_EMPL_DS: TOraDataSource;
    Q_EMPL_VIEW: TOraQuery;
    Q_EMPL_VIEW_DS: TOraDataSource;
    Q_CLIENT_VIEW: TOraQuery;
    Q_CLIENT_VIEW_DS: TOraDataSource;
    Q_ADVERTID_ADVERTISMENTS: TIntegerField;
    Q_ADVERTNAME: TStringField;
    Q_TYPESID_CLIENT_TYPES: TIntegerField;
    Q_TYPESNAME: TStringField;
    Q_REGIONSID_REGIONS: TIntegerField;
    Q_REGIONSNAME: TStringField;
    Q_GROUPSID_CLIENTS_GROUPS: TIntegerField;
    Q_GROUPSNAME: TStringField;
    Q_GROUPSINFO: TStringField;
    Q_DEPSID_EMPLOYEES: TIntegerField;
    Q_DEPSID_DEPARTMENTS: TIntegerField;
    Q_DEPSNAME: TStringField;
    Q_JOBSID_EMPLOYEES: TIntegerField;
    Q_JOBSID_JOB_TITLES: TIntegerField;
    Q_JOBSNAME: TStringField;
    Q_TITLESID_JOB_TITLES: TIntegerField;
    Q_TITLESNAME: TStringField;
    Q_DEPARTID_DEPARTMENTS: TIntegerField;
    Q_DEPARTNAME: TStringField;
    Q_SEARCH: TOraQuery;
    Q_SEARCH_DS: TOraDataSource;
    Q_EMPLNN: TFloatField;
    Q_EMPLACTIVE: TIntegerField;
    Q_EMPLCCODE: TStringField;
    Q_EMPLFIO: TStringField;
    Q_EMPLID_CLIENTS: TIntegerField;
    Q_EMPLLOGIN: TStringField;
    Q_EMPLNICK: TStringField;
    Q_EMPLSTAFF: TIntegerField;
    Q_G_CLID_CLIENTS: TIntegerField;
    Q_G_CLFIO: TStringField;
    Q_G_CLNICK: TStringField;
    Q_G_CLGROUP_NAME: TStringField;
    Q_G_CLTTYPE_NAME: TStringField;
    DEPS_EMPLFIO: TStringField;
    DEPS_EMPLID_CLIENTS: TIntegerField;
    DEPS_EMPLSTAFF: TIntegerField;
    JOBS_EMPLID_EMPLOYEES: TIntegerField;
    JOBS_EMPLID_JOB_TITLES: TIntegerField;
    JOBS_EMPLNAME: TStringField;
    Q_EMPLCOUNT: TIntegerField;
    OraSQL1: TOraSQL;
    SaveDialog: TSaveDialog;
    Q_ADVERTID_OFFICE: TIntegerField;
    Q_ADVERTBRIEF: TStringField;
    Q_REGIONSID_OFFICE: TIntegerField;
    Q_REGIONSBRIEF: TStringField;
    Q_TYPESID_OFFICE: TIntegerField;
    Q_TYPESBRIEF: TStringField;
    Q_GROUPSID_OFFICE: TIntegerField;
    Q_GROUPSBRIEF: TStringField;
    Q_EMPLID_OFFICE: TIntegerField;
    Q_EMPLBRIEF: TStringField;
    Q_TITLESBRIEF: TStringField;
    Q_TITLESID_OFFICE: TIntegerField;
    Q_EMPLREGIONS_NAME: TStringField;
    Q_EMPLREGION: TIntegerField;
    cds_adress: TOraQuery;
    ds_adress: TOraDataSource;
    cds_adressADDRESS: TStringField;
    Q_CLIENT_VIEWID_CLIENTS: TIntegerField;
    Q_CLIENT_VIEWFIO: TStringField;
    Q_CLIENT_VIEWNICK: TStringField;
    Q_CLIENT_VIEWCCODE: TStringField;
    Q_CLIENT_VIEWREGION: TIntegerField;
    Q_CLIENT_VIEWADDRESS: TStringField;
    Q_CLIENT_VIEWU_ADDRESS: TStringField;
    Q_CLIENT_VIEWPHONE: TStringField;
    Q_CLIENT_VIEWPASSPORT: TStringField;
    Q_CLIENT_VIEWCONTACT: TStringField;
    Q_CLIENT_VIEWCONT_PHONE: TStringField;
    Q_CLIENT_VIEWEMAIL: TStringField;
    Q_CLIENT_VIEWWWW: TStringField;
    Q_CLIENT_VIEWINN: TStringField;
    Q_CLIENT_VIEWREG_SVID: TStringField;
    Q_CLIENT_VIEWKPP: TStringField;
    Q_CLIENT_VIEWOKATO: TStringField;
    Q_CLIENT_VIEWBANK: TStringField;
    Q_CLIENT_VIEWAGREEMENT: TStringField;
    Q_CLIENT_VIEWADVERTISMENT: TIntegerField;
    Q_CLIENT_VIEWDDATE: TDateTimeField;
    Q_CLIENT_VIEWBLOCK1: TIntegerField;
    Q_CLIENT_VIEWBLOCK2: TIntegerField;
    Q_CLIENT_VIEWFLOWERS: TIntegerField;
    Q_CLIENT_VIEWPLANTS: TIntegerField;
    Q_CLIENT_VIEWMARK: TStringField;
    Q_CLIENT_VIEWTTYPE: TIntegerField;
    Q_CLIENT_VIEWID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENT_VIEWCORRECTOR: TStringField;
    Q_CLIENT_VIEWDATE_COR: TDateTimeField;
    Q_CLIENT_VIEWCORRECTOR_COR: TStringField;
    Q_CLIENT_VIEWDUTIES: TStringField;
    Q_CLIENT_VIEWINSURANCE: TStringField;
    Q_CLIENT_VIEWDATE_IN: TDateTimeField;
    Q_CLIENT_VIEWDATE_OUT: TDateTimeField;
    Q_CLIENT_VIEWL_SERVICE: TStringField;
    Q_CLIENT_VIEWSTAFF: TIntegerField;
    Q_CLIENT_VIEWACTIVE: TIntegerField;
    Q_CLIENT_VIEWLOGIN: TStringField;
    Q_CLIENT_VIEWINFO: TStringField;
    Q_CLIENT_VIEWREG_TYPE: TIntegerField;
    Q_CLIENT_VIEWCOUNT: TIntegerField;
    Q_CLIENT_VIEWDOSTAVKA: TIntegerField;
    Q_CLIENT_VIEWID_OFFICE: TIntegerField;
    Q_CLIENT_VIEWDATE_CHANGE: TDateTimeField;
    Q_CLIENT_VIEWPREFIX: TStringField;
    Q_CLIENT_VIEWID_CITY: TIntegerField;
    Q_CLIENT_VIEWREG_TYPE_NAME: TStringField;
    Q_CLIENT_VIEWGROUP_NAME: TStringField;
    Q_CLIENT_VIEWTTYPE_NAME: TStringField;
    Q_CLIENT_VIEWREGION_NAME: TStringField;
    Q_CLIENT_VIEWADVERT: TStringField;
    Q_CLIENT_VIEWCITY: TStringField;
    Q_EMPL_VIEWID_CLIENTS: TIntegerField;
    Q_EMPL_VIEWFIO: TStringField;
    Q_EMPL_VIEWNICK: TStringField;
    Q_EMPL_VIEWCCODE: TStringField;
    Q_EMPL_VIEWREGION: TIntegerField;
    Q_EMPL_VIEWADDRESS: TStringField;
    Q_EMPL_VIEWU_ADDRESS: TStringField;
    Q_EMPL_VIEWPHONE: TStringField;
    Q_EMPL_VIEWPASSPORT: TStringField;
    Q_EMPL_VIEWCONTACT: TStringField;
    Q_EMPL_VIEWCONT_PHONE: TStringField;
    Q_EMPL_VIEWEMAIL: TStringField;
    Q_EMPL_VIEWWWW: TStringField;
    Q_EMPL_VIEWINN: TStringField;
    Q_EMPL_VIEWREG_SVID: TStringField;
    Q_EMPL_VIEWKPP: TStringField;
    Q_EMPL_VIEWOKATO: TStringField;
    Q_EMPL_VIEWBANK: TStringField;
    Q_EMPL_VIEWAGREEMENT: TStringField;
    Q_EMPL_VIEWADVERTISMENT: TIntegerField;
    Q_EMPL_VIEWDDATE: TDateTimeField;
    Q_EMPL_VIEWBLOCK1: TIntegerField;
    Q_EMPL_VIEWBLOCK2: TIntegerField;
    Q_EMPL_VIEWFLOWERS: TIntegerField;
    Q_EMPL_VIEWPLANTS: TIntegerField;
    Q_EMPL_VIEWMARK: TStringField;
    Q_EMPL_VIEWTTYPE: TIntegerField;
    Q_EMPL_VIEWID_CLIENTS_GROUPS: TIntegerField;
    Q_EMPL_VIEWCORRECTOR: TStringField;
    Q_EMPL_VIEWDATE_COR: TDateTimeField;
    Q_EMPL_VIEWCORRECTOR_COR: TStringField;
    Q_EMPL_VIEWDUTIES: TStringField;
    Q_EMPL_VIEWINSURANCE: TStringField;
    Q_EMPL_VIEWDATE_IN: TDateTimeField;
    Q_EMPL_VIEWDATE_OUT: TDateTimeField;
    Q_EMPL_VIEWL_SERVICE: TStringField;
    Q_EMPL_VIEWSTAFF: TIntegerField;
    Q_EMPL_VIEWACTIVE: TIntegerField;
    Q_EMPL_VIEWLOGIN: TStringField;
    Q_EMPL_VIEWINFO: TStringField;
    Q_EMPL_VIEWREG_TYPE: TIntegerField;
    Q_EMPL_VIEWCOUNT: TIntegerField;
    Q_EMPL_VIEWDOSTAVKA: TIntegerField;
    Q_EMPL_VIEWID_OFFICE: TIntegerField;
    Q_EMPL_VIEWDATE_CHANGE: TDateTimeField;
    Q_EMPL_VIEWPREFIX: TStringField;
    Q_EMPL_VIEWID_CITY: TIntegerField;
    Q_EMPL_VIEWREGION_NAME: TStringField;
    Q_SEARCHID_CLIENTS: TIntegerField;
    Q_SEARCHFIO: TStringField;
    Q_SEARCHNICK: TStringField;
    Q_SEARCHCCODE: TStringField;
    Q_SEARCHREGION: TIntegerField;
    Q_SEARCHADDRESS: TStringField;
    Q_SEARCHU_ADDRESS: TStringField;
    Q_SEARCHPHONE: TStringField;
    Q_SEARCHPASSPORT: TStringField;
    Q_SEARCHCONTACT: TStringField;
    Q_SEARCHCONT_PHONE: TStringField;
    Q_SEARCHEMAIL: TStringField;
    Q_SEARCHWWW: TStringField;
    Q_SEARCHINN: TStringField;
    Q_SEARCHREG_SVID: TStringField;
    Q_SEARCHKPP: TStringField;
    Q_SEARCHOKATO: TStringField;
    Q_SEARCHBANK: TStringField;
    Q_SEARCHAGREEMENT: TStringField;
    Q_SEARCHADVERTISMENT: TIntegerField;
    Q_SEARCHDDATE: TDateTimeField;
    Q_SEARCHBLOCK1: TIntegerField;
    Q_SEARCHBLOCK2: TIntegerField;
    Q_SEARCHFLOWERS: TIntegerField;
    Q_SEARCHPLANTS: TIntegerField;
    Q_SEARCHMARK: TStringField;
    Q_SEARCHTTYPE: TIntegerField;
    Q_SEARCHID_CLIENTS_GROUPS: TIntegerField;
    Q_SEARCHCORRECTOR: TStringField;
    Q_SEARCHDATE_COR: TDateTimeField;
    Q_SEARCHCORRECTOR_COR: TStringField;
    Q_SEARCHDUTIES: TStringField;
    Q_SEARCHINSURANCE: TStringField;
    Q_SEARCHDATE_IN: TDateTimeField;
    Q_SEARCHDATE_OUT: TDateTimeField;
    Q_SEARCHL_SERVICE: TStringField;
    Q_SEARCHSTAFF: TIntegerField;
    Q_SEARCHACTIVE: TIntegerField;
    Q_SEARCHLOGIN: TStringField;
    Q_SEARCHINFO: TStringField;
    Q_SEARCHREG_TYPE: TIntegerField;
    Q_SEARCHCOUNT: TIntegerField;
    Q_SEARCHDOSTAVKA: TIntegerField;
    Q_SEARCHID_OFFICE: TIntegerField;
    Q_SEARCHDATE_CHANGE: TDateTimeField;
    Q_SEARCHPREFIX: TStringField;
    Q_SEARCHID_CITY: TIntegerField;
    Q_SEARCHGROUP_NAME: TStringField;
    Q_SEARCHTTYPE_NAME: TStringField;
    Q_SEARCHREGION_NAME: TStringField;
    Q_SEARCHADVERT: TStringField;
    Q_SEARCHBRIEF: TStringField;
    Q_SEARCHCITY: TStringField;
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
    Q_CLIENTSTTYPE_NAME: TStringField;
    Q_CLIENTSCORRECTOR: TStringField;
    Q_CLIENTSPHONE: TStringField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSCOUNT: TIntegerField;
    Q_CLIENTSREG_TYPE_NAME: TStringField;
    Q_CLIENTSSALES: TFloatField;
    Q_CLIENTSEMAIL: TStringField;
    Q_CLIENTSADDRESS: TStringField;
    Q_CLIENTSID_OFFICE: TFloatField;
    Q_CLIENTSBRIEF: TStringField;
    Q_CLIENTSPREFIX: TStringField;
    Q_CLIENTSCITY: TStringField;
    Q_CLIENTSMARK: TStringField;
    Q_CLIENTSINN: TStringField;
    procedure OraSession1AfterConnect(Sender: TObject);
    procedure Q_REGIONSAfterOpen(DataSet: TDataSet);
    procedure Q_TYPESAfterOpen(DataSet: TDataSet);
    procedure Q_ADVERTAfterOpen(DataSet: TDataSet);
    procedure Q_GROUPSAfterOpen(DataSet: TDataSet);
    procedure Q_TITLESAfterOpen(DataSet: TDataSet);
    procedure Q_DEPARTAfterOpen(DataSet: TDataSet);
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

uses main_form, edit_form, edit_e_form;

{$R *.dfm}

procedure TDM.RefreshAll;
begin
  try
    // Открытие источников рекламы
    DM.Q_ADVERT.SQL.Clear;
    DM.Q_ADVERT.SQL.Add('SELECT a.ID_ADVERTISMENTS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_ADVERTISMENTS a, offices o');
    DM.Q_ADVERT.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    DM.Q_ADVERT.SQL.Add('ORDER BY NAME');
    DM.Q_ADVERT.Open;

    // Открытие типов клиентов
    DM.Q_TYPES.SQL.Clear;
    DM.Q_TYPES.SQL.Add('SELECT a.ID_CLIENT_TYPES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_CLIENT_TYPES a, offices o ');
    DM.Q_TYPES.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    DM.Q_TYPES.SQL.Add('ORDER BY NAME');
    DM.Q_TYPES.Open;

    // Открытие регионов
    DM.Q_REGIONS.SQL.Clear;
    DM.Q_REGIONS.SQL.Add('SELECT a.ID_REGIONS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_REGIONS a, offices o ');
    DM.Q_REGIONS.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    DM.Q_REGIONS.SQL.Add('ORDER BY NAME');
    DM.Q_REGIONS.Open;

    // Открытие клиентов
    DM.Q_CLIENTS.Close;
    DM.Q_CLIENTS.SQL.Clear;
    DM.Q_CLIENTS.SQL.Add('SELECT * from CLIENTS_VIEW2 where (ID_OFFICE='+IntToStr(id_office)+' or '+IntToStr(id_office)+'=0)');
    DM.Q_CLIENTS.Open;

    // Открытие клиентов по группам
    DM.Q_G_CL.SQL.Clear;
    DM.Q_G_CL.SQL.Add('SELECT C.ID_CLIENTS, C.FIO, C.NICK, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME ');
    DM.Q_G_CL.SQL.Add('FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, CLIENTS C ');
    DM.Q_G_CL.SQL.Add('where C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.ID_CLIENT_TYPES AND C.ID_CLIENTS_GROUPS=:ID_CLIENTS_GROUPS ');
    DM.Q_G_CL.SQL.Add('ORDER BY C.NICK');
    DM.Q_G_CL.Open;

    // Открытие групп
    DM.Q_GROUPS.SQL.Clear;
    DM.Q_GROUPS.SQL.Add('SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o ');
    DM.Q_GROUPS.SQL.Add('where ((a.ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+') or id_clients_groups in (1,2)) and a.id_office = o.id_office');
    DM.Q_GROUPS.SQL.Add('ORDER BY NAME');
    DM.Q_GROUPS.Open;

    // Открытие сотрудников
    DM.Q_EMPL.SQL.Clear;
    DM.Q_EMPL.SQL.Add('SELECT E.* FROM EMPLOYEES_VIEW E where (e.ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+')');
    DM.Q_EMPL.Open;

    // Открытие списка отделов для выбранного сотрудника
    DM.Q_DEPS.SQL.Clear;
    DM.Q_DEPS.SQL.Add('SELECT ED.*, BD.NAME FROM BOOKS_DEPARTMENTS BD, EMPLOYEES_DEPARTMENTS ED WHERE ED.ID_DEPARTMENTS = BD.ID_DEPARTMENTS AND ED.ID_EMPLOYEES =:ID_CLIENTS ORDER BY NAME');
    DM.Q_DEPS.Open;

    // Открытие списка должностей для выбранного сотрудника
    DM.Q_JOBS.SQL.Clear;
    DM.Q_JOBS.SQL.Add('SELECT EJ.*, J.NAME FROM BOOKS_JOB_TITLES J, EMPLOYEES_JOB_TITLES EJ WHERE EJ.ID_JOB_TITLES = J.ID_JOB_TITLES AND EJ.ID_EMPLOYEES =:ID_CLIENTS ORDER BY NAME');
    DM.Q_JOBS.Open;

    // Открытие должностей
    DM.Q_TITLES.SQL.Clear;
    DM.Q_TITLES.SQL.Add('SELECT a.ID_JOB_TITLES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_JOB_TITLES a, offices o ');
    DM.Q_TITLES.SQL.Add('where (a.ID_OFFICE = 1 or a.id_office='+IntToStr(id_office)+') and a.id_office = o.id_office ');
    DM.Q_TITLES.SQL.Add('ORDER BY NAME');
    DM.Q_TITLES.Open;

    // Открытие отделов
    DM.Q_DEPART.SQL.Clear;
    DM.Q_DEPART.SQL.Add('SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS ORDER BY NAME');
    DM.Q_DEPART.Open;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('select distinct cast(nick as varchar2(2)) as ww from clients ');
    DM.Q_SQL.SQL.Add('where (ID_OFFICE='+IntToStr(id_office)+' or 0='+IntToStr(id_office)+') ');
    DM.Q_SQL.SQL.Add('and nick like ''_ %'' order by ww');
    DM.Q_SQL.Open;
    main.ComboBox12.Items.Clear;
  except
    on E: Exception do ShowMessage(E.Message);
  end;

  while not dm.Q_SQL.Eof do
  begin
    main.ComboBox12.Items.Add(DM.Q_SQL.FieldByName('ww').AsString);
    DM.Q_SQL.Next;
  end;
  DM.Q_SQL.Close;
  main.ComboBox12.ItemIndex := main.ComboBox12.Items.IndexOf('M');
end;



procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;

  RefreshAll;
end;


procedure TDM.Q_REGIONSAfterOpen(DataSet: TDataSet);
begin
  edits.ComboBox1.Items.Clear;
  DM.Q_REGIONS.First;
  while not DM.Q_REGIONS.Eof do
  begin
    edits.ComboBox1.Items.Add(DM.Q_REGIONS.FieldValues['NAME']);
    edits_e.ComboBox1.Items.Add(DM.Q_REGIONS.FieldValues['NAME']);
    DM.Q_REGIONS.Next;
  end;
  DM.Q_REGIONS.First;
end;

procedure TDM.Q_TYPESAfterOpen(DataSet: TDataSet);
begin
  edits.ComboBox3.Items.Clear;
  DM.Q_TYPES.First;
  while not DM.Q_TYPES.Eof do
  begin
    edits.ComboBox3.Items.Add(DM.Q_TYPES.FieldValues['NAME']);
    DM.Q_TYPES.Next;
  end;
  DM.Q_TYPES.First;
end;

procedure TDM.Q_ADVERTAfterOpen(DataSet: TDataSet);
begin
  edits.ComboBox2.Items.Clear;
  DM.Q_ADVERT.First;
  while not DM.Q_ADVERT.Eof do
  begin
    edits.ComboBox2.Items.Add(DM.Q_ADVERT.FieldValues['NAME']);
    DM.Q_ADVERT.Next;
  end;
  DM.Q_ADVERT.First;
end;

procedure TDM.Q_GROUPSAfterOpen(DataSet: TDataSet);
begin
  Q_G_CL.Close;
  Main.DBGrid2.DataSource.DataSet.DisableControls;
  DM.Q_GROUPS.last;
  DM.Q_GROUPS.First;
  edits.ComboBox4.Items.Clear;
  DM.Q_GROUPS.First;
  while not DM.Q_GROUPS.Eof do
  begin
    edits.ComboBox4.Items.Add(DM.Q_GROUPS.FieldValues['NAME']);
    DM.Q_GROUPS.Next;
  end;
  DM.Q_GROUPS.First;
  Main.DBGrid2.DataSource.DataSet.EnableControls;
  Q_G_CL.Open;
end;

procedure TDM.Q_TITLESAfterOpen(DataSet: TDataSet);
begin
  main.ComboBox3.Items.Clear;
  main.ComboBox3.Items.Add('');
  main.ComboBox5.Items.Clear;
  main.ComboBox5.Items.Add('');
  DM.Q_TITLES.First;
  while not DM.Q_TITLES.Eof do
  begin
    main.ComboBox3.Items.Add(DM.Q_TITLES.FieldValues['NAME']);
    main.ComboBox5.Items.Add(DM.Q_TITLES.FieldValues['NAME']);
    DM.Q_TITLES.Next;
  end;
  DM.Q_TITLES.First;
end;

procedure TDM.Q_DEPARTAfterOpen(DataSet: TDataSet);
begin
  main.ComboBox7.Items.Clear;
  main.ComboBox7.Items.Add('');
  main.ComboBox9.Items.Clear;
  main.ComboBox9.Items.Add('');
  DM.Q_DEPART.First;
  while not DM.Q_DEPART.Eof do
  begin
    main.ComboBox7.Items.Add(DM.Q_DEPART.FieldValues['NAME']);
    main.ComboBox9.Items.Add(DM.Q_DEPART.FieldValues['NAME']);
    DM.Q_DEPART.Next;
  end;
  DM.Q_DEPART.First;
end;

end.

