unit DataM;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, OraSmart, OraErrHand, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxCheckBox, PI_Library_reg;

type
  TDM = class(TDataModule)
    OraSession1: TOraSession;
    Q_ADVERT: TOraQuery;
    Q_ADVERT_DS: TOraDataSource;
    Ora_SQL: TOraSQL;
    Q_TYPES: TOraQuery;
    Q_TYPES_DS: TOraDataSource;
    Q_REGIONS: TOraQuery;
    Q_REGIONS_DS: TOraDataSource;
    Q_TITLES: TOraQuery;
    Q_TITLES_DS: TOraDataSource;
    Q_DEPS: TOraQuery;
    Q_DEPS_DS: TOraDataSource;
    Q_ADVERTID_ADVERTISMENTS: TIntegerField;
    Q_ADVERTNAME: TStringField;
    Q_ADVERTINFO: TStringField;
    Q_ADVERTID_OFFICE: TIntegerField;
    Q_ADVERTNN: TFloatField;
    Q_TYPESID_CLIENT_TYPES: TIntegerField;
    Q_TYPESNAME: TStringField;
    Q_TYPESINFO: TStringField;
    Q_TYPEST_TYPE: TIntegerField;
    Q_TYPESDISCOUNT: TFloatField;
    Q_TYPESID_OFFICE: TIntegerField;
    Q_TYPESNN: TFloatField;
    Q_REGIONSID_REGIONS: TIntegerField;
    Q_REGIONSNAME: TStringField;
    Q_REGIONSINFO: TStringField;
    Q_REGIONSID_OFFICE: TIntegerField;
    Q_REGIONSNN: TFloatField;
    Q_DEPSID_DEPARTMENTS: TIntegerField;
    Q_DEPSNAME: TStringField;
    Q_DEPSINFO: TStringField;
    Q_DEPSSTATE: TIntegerField;
    Q_DEPSID_OFFICE: TIntegerField;
    Q_DEPSNN: TFloatField;
    Q_TITLESID_JOB_TITLES: TIntegerField;
    Q_TITLESNAME: TStringField;
    Q_TITLESINFO: TStringField;
    Q_TITLESID_OFFICE: TIntegerField;
    Q_TITLESNN: TFloatField;
    SelQ: TOraQuery;
    Q_ADVERTBRIEF: TStringField;
    Q_TYPESBRIEF: TStringField;
    Q_REGIONSBRIEF: TStringField;
    Q_DEPSBRIEF: TStringField;
    Q_TITLESBRIEF: TStringField;
    Q_CITIES: TOraQuery;
    Q_CITIES_DS: TOraDataSource;
    Q_CITIESID_CITY: TIntegerField;
    Q_CITIESCITY: TStringField;
    Q_CITIESKOD: TStringField;
    Q_CITIESID_REGION: TIntegerField;
    Q_CITIESID_OFFICE: TIntegerField;
    Q_CITIESBRIEF: TStringField;
    Q_CITIESNAME: TStringField;
    Q_REGIONSKLADR: TStringField;
    Q_REGIONSKOD: TStringField;
    procedure OraSession1AfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    r_edit, r_delete, r_print : boolean;
    id_office: integer;
    procedure RefreshAll;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses main_form;

{$R *.dfm}

procedure TDM.RefreshAll;
begin
  DM.Q_ADVERT.SQL.Clear;
  DM.Q_ADVERT.SQL.Add('begin BOOKS.get_advertisments(:v_office, :cursor_); end;');
  DM.Q_ADVERT.ParamByName('v_office').AsInteger := id_office;
  DM.Q_ADVERT.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_ADVERT.Open;

  DM.Q_TYPES.SQL.Clear;
  DM.Q_TYPES.SQL.Add('begin BOOKS.get_CLIENT_TYPES(:v_office, :cursor_); end;');
  DM.Q_TYPES.ParamByName('v_office').AsInteger := id_office;
  DM.Q_TYPES.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_TYPES.Open;

  DM.Q_REGIONS.SQL.Clear;
  DM.Q_REGIONS.SQL.Add('begin BOOKS.get_REGIONS(:v_office, :cursor_); end;');
  DM.Q_REGIONS.ParamByName('v_office').AsInteger := id_office;
  DM.Q_REGIONS.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_REGIONS.Open;

  DM.Q_CITIES.SQL.Clear;
  DM.Q_CITIES.SQL.Add('begin BOOKS.get_cities(:v_office, :cursor_); end;');
  DM.Q_CITIES.ParamByName('v_office').AsInteger := id_office;
  DM.Q_CITIES.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_CITIES.Open;

  DM.Q_DEPS.SQL.Clear;
  DM.Q_DEPS.SQL.Add('begin BOOKS.get_DEPARTMENTS(:v_office, :cursor_); end;');
  DM.Q_DEPS.ParamByName('v_office').AsInteger := id_office;
  DM.Q_DEPS.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_DEPS.Open;

  DM.Q_TITLES.SQL.Clear;
  DM.Q_TITLES.SQL.Add('begin BOOKS.get_JOB_TITLES(:v_office, :cursor_); end;');
  DM.Q_TITLES.ParamByName('v_office').AsInteger := id_office;
  DM.Q_TITLES.ParamByName('cursor_').DataType := ftCursor;
  DM.Q_TITLES.Open;
end;


procedure TDM.OraSession1AfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
  RefreshAll;
end;

end.
