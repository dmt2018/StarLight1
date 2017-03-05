unit URefbooks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxImageComboBox,
  cxLabel, cxButtonEdit, ActnList, dxBar, cxBarEditItem, dxBarExtItems,
  cxClasses, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, star_lib,
  cxTextEdit, cxCurrencyEdit, Menus;

type
  TfrmRefbooks = class(TForm)
    pcrefbooks: TcxPageControl;
    tshRegions: TcxTabSheet;
    tshCityes: TcxTabSheet;
    tshPromo: TcxTabSheet;
    tshClientTypes: TcxTabSheet;
    tshDeparts: TcxTabSheet;
    tshPositions: TcxTabSheet;
    tshCountries: TcxTabSheet;
    tshSuppliers: TcxTabSheet;
    tshUnits: TcxTabSheet;
    grPromo: TcxGrid;
    grPromoView: TcxGridDBTableView;
    grPromoNN: TcxGridDBColumn;
    grPromoName: TcxGridDBColumn;
    grPromoInfo: TcxGridDBColumn;
    grPromoLevel: TcxGridLevel;
    Q_Promo: TOraQuery;
    Q_PromoID_ADVERTISMENTS: TIntegerField;
    Q_PromoNAME: TStringField;
    Q_PromoINFO: TStringField;
    Q_PromoID_OFFICE: TIntegerField;
    Q_PromoNN: TFloatField;
    Q_PromoBRIEF: TStringField;
    Q_Promo_DS: TOraDataSource;
    bmMain: TdxBarManager;
    bmToolBar: TdxBar;
    bmFooter: TdxBar;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    btnExit: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    btnHotKeys: TdxBarButton;
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExit: TAction;
    SelQ: TOraQuery;
    grCities: TcxGrid;
    grCitiesView: TcxGridDBTableView;
    grCitiesCity: TcxGridDBColumn;
    grCitiesKod: TcxGridDBColumn;
    grCitiesLevel: TcxGridLevel;
    Q_CITIES: TOraQuery;
    Q_CITIESID_CITY: TIntegerField;
    Q_CITIESCITY: TStringField;
    Q_CITIESKOD: TStringField;
    Q_CITIESID_REGION: TIntegerField;
    Q_CITIESID_OFFICE: TIntegerField;
    Q_CITIESBRIEF: TStringField;
    Q_CITIESNAME: TStringField;
    Q_CITIES_DS: TOraDataSource;
    grRegions: TcxGrid;
    grRegionsView: TcxGridDBTableView;
    grRegionsNN: TcxGridDBColumn;
    grRegionsName: TcxGridDBColumn;
    grRegionsInfo: TcxGridDBColumn;
    grRegionsKladr: TcxGridDBColumn;
    grRegionsKod: TcxGridDBColumn;
    grRegionsLevel: TcxGridLevel;
    Q_REGIONS: TOraQuery;
    Q_REGIONSID_REGIONS: TIntegerField;
    Q_REGIONSNAME: TStringField;
    Q_REGIONSINFO: TStringField;
    Q_REGIONSID_OFFICE: TIntegerField;
    Q_REGIONSNN: TFloatField;
    Q_REGIONSBRIEF: TStringField;
    Q_REGIONSKLADR: TStringField;
    Q_REGIONSKOD: TStringField;
    Q_REGIONS_DS: TOraDataSource;
    grClientTypes: TcxGrid;
    grClientTypesView: TcxGridDBTableView;
    tview_TYPESnn: TcxGridDBColumn;
    tview_TYPESBRIEF: TcxGridDBColumn;
    tview_TYPESNAME: TcxGridDBColumn;
    tview_TYPEST_TYPE: TcxGridDBColumn;
    tview_TYPESDISCOUNT: TcxGridDBColumn;
    tview_TYPESINFO: TcxGridDBColumn;
    tview_TYPESCONTRACTOR: TcxGridDBColumn;
    grClientTypesLevel: TcxGridLevel;
    Q_CT: TOraQuery;
    Q_CTID_CLIENT_TYPES: TIntegerField;
    Q_CTNAME: TStringField;
    Q_CTINFO: TStringField;
    Q_CTT_TYPE: TIntegerField;
    Q_CTDISCOUNT: TFloatField;
    Q_CTID_OFFICE: TIntegerField;
    Q_CTBRIEF: TStringField;
    Q_CTNN: TFloatField;
    Q_CTIS_CONTRACTOR: TIntegerField;
    Q_CT_DS: TOraDataSource;
    grDeps: TcxGrid;
    grDepsView: TcxGridDBTableView;
    grDepsNN: TcxGridDBColumn;
    grDepsName: TcxGridDBColumn;
    grDepsSTATE: TcxGridDBColumn;
    grDepsINFO: TcxGridDBColumn;
    grDepsLevel: TcxGridLevel;
    Q_DEPS: TOraQuery;
    Q_DEPSID_DEPARTMENTS: TIntegerField;
    Q_DEPSNAME: TStringField;
    Q_DEPSINFO: TStringField;
    Q_DEPSSTATE: TIntegerField;
    Q_DEPSID_OFFICE: TIntegerField;
    Q_DEPSNN: TFloatField;
    Q_DEPSBRIEF: TStringField;
    Q_DEPS_DS: TOraDataSource;
    grPost: TcxGrid;
    grPostView: TcxGridDBTableView;
    grPostNN: TcxGridDBColumn;
    grPostName: TcxGridDBColumn;
    grPostInfo: TcxGridDBColumn;
    grPostLevel: TcxGridLevel;
    Q_POST: TOraQuery;
    Q_POSTID_JOB_TITLES: TIntegerField;
    Q_POSTNAME: TStringField;
    Q_POSTINFO: TStringField;
    Q_POSTID_OFFICE: TIntegerField;
    Q_POSTNN: TFloatField;
    Q_POSTBRIEF: TStringField;
    Q_POST_DS: TOraDataSource;
    grCountries: TcxGrid;
    grCountriesView: TcxGridDBTableView;
    grCountriesNN: TcxGridDBColumn;
    grCountriesCTRS: TcxGridDBColumn;
    grCountriesCTRSLAT: TcxGridDBColumn;
    grCountriesKODC: TcxGridDBColumn;
    grCountriesKOD: TcxGridDBColumn;
    grCountriesLevel: TcxGridLevel;
    Q_CTRS: TOraQuery;
    Q_CTRSC_ID: TIntegerField;
    Q_CTRSCOUNTRY: TStringField;
    Q_CTRSNN: TFloatField;
    Q_CTRSCOUNTRY_ENG: TStringField;
    Q_CTRSMNEMO: TStringField;
    Q_CTRSBUH_CODE: TStringField;
    Q_CTRS_DS: TOraDataSource;
    grSuppliers: TcxGrid;
    grSuppliersView: TcxGridDBTableView;
    grSuppliersNN: TcxGridDBColumn;
    grSuppliersName: TcxGridDBColumn;
    grSuppliersCountry: TcxGridDBColumn;
    grSuppliersGTD: TcxGridDBColumn;
    grSuppliersDays: TcxGridDBColumn;
    grSuppliersPassiv: TcxGridDBColumn;
    grSuppliersLevel: TcxGridLevel;
    Q_Sup: TOraQuery;
    Q_SUP_DS: TOraDataSource;
    grUnits: TcxGrid;
    grUnitsView: TcxGridDBTableView;
    grUnitsKod: TcxGridDBColumn;
    grUnitsName: TcxGridDBColumn;
    grUnitsZnak1: TcxGridDBColumn;
    grUnitsZnak2: TcxGridDBColumn;
    grUnitsKodZnak1: TcxGridDBColumn;
    grUnitsKodZnak2: TcxGridDBColumn;
    grUnitsLevel: TcxGridLevel;
    Q_CDS: TOraQuery;
    Q_CDSNSI_UNITS_ID: TFloatField;
    Q_CDSUNIT_CODE: TIntegerField;
    Q_CDSNSI_NAME: TStringField;
    Q_CDSSYMBOL_NATIONAL: TStringField;
    Q_CDSSYMBOL_INTERNATIONAL: TStringField;
    Q_CDSCODE_LETTERING_NATIONAL: TStringField;
    Q_CDSCODE_LETTERING_INTERNATIONAL: TStringField;
    Q_CDS_DS: TOraDataSource;
    Q_SupNN: TFloatField;
    Q_SupS_ID: TFloatField;
    Q_SupS_NAME_RU: TStringField;
    Q_SupC_ID: TFloatField;
    Q_SupCOUNTRY: TStringField;
    Q_SupNEED_CUST: TIntegerField;
    Q_SupID_OFFICE: TIntegerField;
    Q_SupANALYZE_DAYS: TIntegerField;
    Q_SupIS_ACTIVE: TFloatField;
    PM_main: TPopupMenu;
    mnFooterToClipboard: TMenuItem;
    mnToClipboard: TMenuItem;
    mnClearFilter: TMenuItem;
    N4: TMenuItem;
    mnExportExcel: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure mnExportExcelClick(Sender: TObject);
    procedure mnFooterToClipboardClick(Sender: TObject);
    procedure mnToClipboardClick(Sender: TObject);
    procedure mnClearFilterClick(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
    function get_grid : tcxgrid;
  public
    { Public declarations }
    page: integer;
    frmDesc: TfrmRefbooks;
    function MainFormShow(v_page: integer) : boolean;
  end;

var
  frmRefbooks: TfrmRefbooks;
  newDesc: TfrmRefbooks;
  mas : array [0..8] of string;
implementation

{$R *.dfm}

uses UDM, UHotKeys, UEditRefBooks;


function TfrmRefbooks.MainFormShow(v_page: integer) : boolean;
var i, j: integer;
Begin
  // проверю, есть ли в массиве v_page, если да- справочник открыт уж
  for i := 0 to length(mas) - 1 do
    if ( mas[i] = inttostr(v_page) ) then
    begin
      //выбор текущей формы из имеющихся
      for j := 0 to Screen.FormCount - 1 do
        if Screen.Forms[j].FormStyle = fsmdichild then
          if Screen.Forms[j].tag = v_page then
            if (Screen.Forms[j].WindowState = wsMinimized) then Screen.Forms[j].WindowState := wsNormal;
      exit; // на выход из функции - больше тут делать нечего
    end;

  //заполню вакантное место массивa номером справочника
  for i := 0 to length(mas) - 1 do
  if ( mas[i] = '' ) then
  begin
    mas[i]  := inttostr(v_page);
    newDesc := TfrmRefbooks.Create(Application);
    try
      newDesc.page    := v_page;
      newDesc.tag     := v_page;
      newDesc.frmDesc :=newDesc;
      newDesc.Show;
      newDesc.aRefresh.Execute;
      newDesc.Name := 'frmRefbooks'+inttostr(newDesc.Tag); //!!! чтоб [имя] соотв. тому что за скобками (см onclose)
      LoadFormState(newDesc); //полож.окна
    finally
      null;
    end;
    break; // и сразу ухожу из цикла чтоб 9 одинак.справочников не открылось сразу
  end;
end;



// BOF :: Меню -----------------------------------------------------------------
function TfrmRefbooks.get_grid : tcxgrid;
var grid : tcxgrid;
    i: integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
      if (Components[i] as TcxGrid).Parent.visible = true then grid := (Components[i] as TcxGrid);
  result := grid;
end;

procedure TfrmRefbooks.mnExportExcelClick(Sender: TObject);
var grid : tcxgrid;
begin
  grid := get_grid;
  DM.MakeExportToExcel(grid);
end;

procedure TfrmRefbooks.mnClearFilterClick(Sender: TObject);
var grid : tcxgrid;
begin
  grid := get_grid;
  (grid.ActiveView.DataController as TcxDBDataController).Filter.Clear;
end;

procedure TfrmRefbooks.mnFooterToClipboardClick(Sender: TObject);
var grid : tcxgrid;
begin
  grid := get_grid;
  PoolToClipbaord( (grid.ActiveLevel.GridView as TcxGridDBTableView).DataController, 0);
end;

procedure TfrmRefbooks.mnToClipboardClick(Sender: TObject);
var grid : tcxgrid;
begin
  grid := get_grid;
  PoolToClipbaord( (grid.ActiveLevel.GridView as TcxGridDBTableView).DataController, 1);
end;

// EOF :: Меню -----------------------------------------------------------------
// -----------------------------------------------------------------------------



procedure TfrmRefbooks.aNewExecute(Sender: TObject);
 var id : variant;
begin
  if (pcrefbooks.ActivePage.PageIndex < 4) and (intDefOffice > 1) then
  begin
    MessageBox(Handle,'Вид данных добавляется только через главный офис компании.','Внимание!',MB_ICONERROR);
    exit;
  end;

  frmeditRefbooks.MainFormShow; //создание формы редактора

  try
  if pcrefbooks.ActivePage.PageIndex = 0 then
  begin
{
    frmEditRefBooks.Ed1.Text := '';
    frmEditRefBooks.Ed2.Text := '';
    frmEditRefBooks.Ed3.Text := '';
    frmEditRefBooks.Ed1.Tag  := 0;
    frmEditRefBooks.Memo1.Lines.Clear;
}
    frmEditRefBooks.ttype    := 1;
    frmEditRefBooks.Caption  := 'Регионы :: добавление';
    if frmEditRefBooks.ShowModal = mrOk then
    begin
      Q_REGIONS.Refresh;
      Q_REGIONS.Locate('id_regions', frmEditRefBooks.Ed1.Tag, []);
    end;
    grRegions.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=1 then
  begin
    frmEditRefBooks.Ed4.Text := '';
    frmEditRefBooks.Ed5.Text := '';
    frmEditRefBooks.Ed4.Tag  := 0;
    frmEditRefBooks.ttype    := 11;
    frmEditRefBooks.Caption  := 'Города :: добавление';
    frmEditRefBooks.ShowModal;
    Q_CITIES.Refresh;
    Q_CITIES.Locate('id_city', frmEditRefBooks.Ed4.Tag, []);
    grCities.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=2 then begin
    frmEditRefBooks.Ed6.Text := '';
    frmEditRefBooks.Ed6.Tag  := 0;
    frmEditRefBooks.Memo3.Lines.Clear;
    frmEditRefBooks.ttype    := 3;
    frmEditRefBooks.Caption  := 'Источники рекламы :: добавление';
    frmEditRefBooks.ShowModal;
    frmeditRefbooks.MainFormShow;
    Q_Promo.Refresh;
    Q_Promo.Locate('ID_ADVERTISMENTS', frmEditRefBooks.Ed6.Tag, []);
    grPromo.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=3 then begin
    frmEditRefBooks.Ed7.Text := '';
    frmEditRefBooks.Ed7.Tag  := 0;
    frmEditRefBooks.Memo4.Lines.Clear;
    frmEditRefBooks.ttype    := 5;
    frmEditRefBooks.Caption  := 'Типы клиентов :: добавление';
    frmEditRefBooks.ShowModal;
    Q_CT.Refresh;
    Q_CT.Locate('ID_CLIENT_TYPES', frmEditRefBooks.Ed7.Tag, []);
    grClientTypes.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=4 then begin
    frmEditRefBooks.Ed8.Text := '';
    frmEditRefBooks.Ed8.Tag  := 0;
    frmEditRefBooks.Memo5.Lines.Clear;
    frmEditRefBooks.ttype    := 7;
    frmEditRefBooks.Caption  := 'Отделы :: добавление';
    frmEditRefBooks.ShowModal;
    Q_DEPS.Refresh;
    Q_DEPS.Locate('ID_DEPARTMENTS', frmEditRefBooks.Ed8.Tag, []);
    grDeps.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=5 then begin
    frmEditRefBooks.Ed9.Text := '';
    frmEditRefBooks.Ed9.Tag  := 0;
    frmEditRefBooks.Memo6.Lines.Clear;
    frmEditRefBooks.ttype    := 9;
    frmEditRefBooks.Caption  := 'Должности :: добавление';
    frmEditRefBooks.ShowModal;
    Q_POST.Refresh;
    Q_POST.Locate('ID_JOB_TITLES', frmEditRefBooks.Ed9.Tag, []);
    grPost.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=6 then begin
    frmEditRefBooks.edit_country.Text      := '';
    frmEditRefBooks.edit_country.Tag       := 0;
    frmEditRefBooks.edit_country_eng.Text  := '';
    frmEditRefBooks.edit_country_code.Text := '';
    frmEditRefBooks.ed10.Text              := '';
    frmEditRefBooks.ttype                  := 13;
    frmEditRefBooks.Caption                := 'Страны :: добавление';
    frmEditRefBooks.ShowModal;
    Q_CTRS.Refresh;
    Q_CTRS.Locate('C_ID',frmEditRefBooks.edit_country.Tag,[]);
    grCountries.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=7 then begin
    frmEditRefBooks.edit_suplier.Text     := '';
    frmEditRefBooks.cb_supplier_days.Text := '';
    frmEditRefBooks.edit_suplier.Tag      := 0;
    frmEditRefBooks.ttype                 := 15;
    frmEditRefBooks.Caption               := 'Поставщики :: добавление';
    frmEditRefBooks.ShowModal;
    Q_SUP.Refresh;
    Q_SUP.Locate('S_ID',frmEditRefBooks.edit_suplier.Tag ,[]);
    grSuppliers.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=8 then begin
    frmEditRefBooks.edUnit_code.Text           := '';
    frmEditRefBooks.edUnit_name.Text           := '';
    frmEditRefBooks.edUnit_znach_national.Text := '';
    frmEditRefBooks.edUnit_znach_international.Text    := '';
    frmEditRefBooks.edUnit_code_litering_national.Text := '';
    frmEditRefBooks.edUnit_code_litering_international.Text := '';
    frmEditRefBooks.edUnit_code.Tag := 0;
    frmEditRefBooks.ttype           := 17;
    frmEditRefBooks.Caption         := 'Единицы измерения :: добавление';
    frmEditRefBooks.ShowModal;
    Q_CDS.Refresh;
    Q_CDS.Locate('nsi_units_id',frmEditRefBooks.edUnit_code.Tag ,[]);
    grUnits.SetFocus;
  end;
  finally
  end;
end;


procedure TfrmRefbooks.aEditExecute(Sender: TObject);
var grid : TCxGrid;
// var i   : integer;
//     sss : tcxgrid;
begin
  grid := get_grid;
{
 for i := 0 to ComponentCount - 1 do
 if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
 if (Components[i] as TcxGrid).Parent.visible = true then  sss := (Components[i] as TcxGrid);
}
  if ( (grid.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (pcrefbooks.ActivePage.PageIndex  in [0..5]) then
  if (intDefOffice <> (grid.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  frmeditRefbooks.MainFormShow;

  try
    if (pcrefbooks.ActivePage.PageIndex = 0) and (Q_REGIONS.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBooks.ttype := 2;
      frmEditRefBooks.Ed1.Tag    := Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
      frmEditRefBooks.Ed1.Text   := Q_REGIONS.FieldByName('NAME').AsString;
      frmEditRefBooks.MEMO1.Text := Q_REGIONS.FieldByName('INFO').AsString;
      frmEditRefBooks.Caption    := 'Регионы :: редактирование';
      frmEditRefBooks.Ed2.Text   := Q_REGIONS.FieldByName('KOD').AsString;
      frmEditRefBooks.Ed3.Text   := Q_REGIONS.FieldByName('KLADR').AsString;
      frmEditRefBooks.ShowModal;
      Q_REGIONS.RefreshRecord;
      grRegions.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=1) and (Q_CITIES.FieldByName('city').AsString <> '') then
    begin
      frmEditRefBooks.ttype           := 12;
      frmEditRefBooks.Ed4.Tag         := Q_CITIES.FieldByName('ID_city').AsInteger;
      frmEditRefBooks.Ed4.Text        := Q_CITIES.FieldByName('city').AsString;
      frmEditRefBooks.Ed5.Text        := Q_CITIES.FieldByName('kod').AsString;
      frmEditRefBooks.lcb_runames.Tag := Q_CITIES.FieldByName('id_region').AsInteger;
      frmEditRefBooks.Caption         := 'Города :: редактирование';
      frmEditRefBooks.ShowModal;
      Q_CITIES.Refresh;
      Q_CITIES.Locate('id_city', frmEditRefBooks.Ed4.Tag, []);
      grCities.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=2) and (Q_PROMO.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBooks.ttype      := 4;
      frmEditRefBooks.Ed6.Tag    := Q_Promo.FieldByName('ID_ADVERTISMENTS').AsInteger;
      frmEditRefBooks.Ed6.Text   := Q_Promo.FieldByName('NAME').AsString;
      frmEditRefBooks.MEMO3.Text := Q_Promo.FieldByName('INFO').AsString;
      frmEditRefBooks.Caption    := 'Источники рекламы :: редактирование';
      frmEditRefBooks.ShowModal;
      Q_Promo.Refresh;
      Q_Promo.Locate('ID_ADVERTISMENTS', frmEditRefBooks.Ed6.Tag, []);
      grPromo.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=3) and (Q_CT.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBooks.ttype      := 6;
      frmEditRefBooks.Ed7.Tag    := Q_CT.FieldByName('ID_CLIENT_TYPES').AsInteger;
      frmEditRefBooks.Ed7.Text   := Q_CT.FieldByName('NAME').AsString;
      frmEditRefBooks.MEMO4.Text := Q_CT.FieldByName('INFO').AsString;
      frmEditRefBooks.Caption    := 'Типы клиентов :: редактирование';
      if Q_CT.FieldByName('T_TYPE').AsInteger = 1 then frmEditRefBooks.checkbox1.checked := true else frmEditRefBooks.checkbox1.checked := false;
      if Q_CT.FieldByName('is_contractor').AsInteger = 1 then frmEditRefBooks.checkbox2.checked := true else frmEditRefBooks.checkbox2.checked := false;
      if (Q_CT.FieldByName('DISCOUNT').AsInteger>0) then frmEditRefBooks.Znak_EditPercent.ItemIndex:=1;
      if (Q_CT.FieldByName('DISCOUNT').AsInteger<0) then frmEditRefBooks.Znak_EditPercent.ItemIndex:=0;
      frmEditRefBooks.DBNumberEditEh1.Text:=inttostr(ABS(Q_CT.FieldByName('DISCOUNT').AsInteger));
      frmEditRefBooks.ShowModal;
      Q_CT.Refresh;
      Q_CT.Locate('ID_CLIENT_TYPES', frmEditRefBooks.Ed7.Tag, []);
      grClientTypes.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=4) and (Q_DEPS.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBooks.ttype      := 8;
      frmEditRefBooks.Ed8.Tag    := Q_DEPS.FieldByName('ID_DEPARTMENTS').AsInteger;
      frmEditRefBooks.Ed8.Text   := Q_DEPS.FieldByName('NAME').AsString;
      frmEditRefBooks.MEMO5.Text := Q_DEPS.FieldByName('INFO').AsString;
      frmEditRefBooks.Caption    := 'Отделы :: редактирование';
      if Q_DEPS.FieldByName('STATE').AsInteger = 1 then frmEditRefBooks.chb3.checked := true else frmEditRefBooks.chb3.checked := false;
      frmEditRefBooks.ShowModal;
      Q_DEPS.Refresh;
      Q_DEPS.Locate('ID_DEPARTMENTS', frmEditRefBooks.Ed8.Tag, []);
      grDeps.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=5) and (Q_POST.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBooks.ttype      := 10;
      frmEditRefBooks.Ed9.Tag    := Q_POST.FieldByName('ID_JOB_TITLES').AsInteger;
      frmEditRefBooks.Ed9.Text   := Q_POST.FieldByName('NAME').AsString;
      frmEditRefBooks.MEMO6.Text := Q_POST.FieldByName('INFO').AsString;
      frmEditRefBooks.Caption    := 'Должности :: редактирование';
      frmEditRefBooks.ShowModal;
      Q_POST.Refresh;
      Q_POST.Locate('ID_JOB_TITLES', frmEditRefBooks.Ed9.Tag, []);
      grPost.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=6) and (Q_CTRS.FieldByName('COUNTRY').AsString <> '') then
    begin
      frmEditRefBooks.ttype                    := 14;
      frmEditRefBooks.Znak_EditPercent.Visible := false;
      frmEditRefBooks.DBNumberEditEh1.Visible  := false;
      frmEditRefBooks.edit_country.Text        := Q_CTRS.FieldByName('COUNTRY').AsString;
      frmEditRefBooks.edit_country.Tag         := Q_CTRS.FieldByName('C_ID').AsInteger;
      frmEditRefBooks.edit_country_eng.Text    := Q_CTRS.FieldByName('COUNTRY_ENG').AsString;
      frmEditRefBooks.edit_country_code.Text   := Q_CTRS.FieldByName('MNEMO').AsString;
      frmEditRefBooks.ed10.Text                := Q_CTRS.FieldByName('BUH_CODE').AsString;
      frmEditRefBooks.Caption                  := 'Страны :: редактирование';
      frmEditRefBooks.ShowModal;
      Q_CTRS.Refresh;
      Q_CTRS.Locate('C_ID',frmEditRefBooks.edit_country.Tag,[]);
      grCountries.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=7) and (Q_SUP.FieldByName('S_NAME_RU').AsString <> '') then
    begin
      frmEditRefBooks.ttype                  := 16;
      frmEditRefBooks.edit_suplier.Tag       := Q_SUP.FieldByName('S_ID').AsInteger;
      frmEditRefBooks.edit_suplier.Text      := Q_SUP.FieldByName('S_NAME_RU').AsString;
      //frmEditRefBooks.cb_suplier_c.EditValue := Q_SUP.FieldByName('C_ID').AsInteger;
      frmEditRefBooks.cb_suplier_c.Tag       := Q_SUP.FieldByName('C_ID').AsInteger;
      frmEditRefBooks.Caption                := 'Поставщики :: редактирование';
      if Q_SUP.FieldByName('NEED_CUST').AsString = '1' then frmEditRefBooks.cb_suplier.Checked := true;
      if Q_SUP.FieldByName('NEED_CUST').AsString = '0' then frmEditRefBooks.cb_suplier.Checked := false;
      //if Q_SUP.FieldByName('IS_ACTIVE').AsString = '1' then frmEditRefBooks.CheckBox4.Checked := true;
      //if Q_SUP.FieldByName('IS_ACTIVE').AsString = '0' then frmEditRefBooks.CheckBox4.Checked := false;
      frmEditRefBooks.cb_supplier_days.Text  := Q_SUP.FieldByName('ANALYZE_DAYS').AsString;
      frmEditRefBooks.ShowModal;
      Q_SUP.Refresh;
      Q_SUP.Locate('S_ID',frmEditRefBooks.edit_suplier.Tag ,[]);
      grSuppliers.SetFocus;
    end;
    if (pcrefbooks.ActivePage.PageIndex=8) and (Q_CDS.FieldByName('NSI_NAME').AsString <> '') then
    begin
    //не должно редактир-ся
     { frmEditRefBooks.ttype                  := 18;
      frmEditRefBooks.edUnit_code.Tag        := Q_CDS.FieldByName('nsi_units_id').AsInteger;
      frmEditRefBooks.edUnit_code.Text       := Q_CDS.FieldByName('unit_code').AsString;
      frmEditRefBooks.edUnit_name.EditValue  := Q_CDS.FieldByName('nsi_name').AsString;
      frmEditRefBooks.edUnit_znach_national.Text              := Q_CDS.FieldByName('symbol_national').AsString;
      frmEditRefBooks.edUnit_znach_international.Text         := Q_CDS.FieldByName('symbol_international').AsString;
      frmEditRefBooks.edUnit_code_litering_national.Text      := Q_CDS.FieldByName('code_lettering_national').AsString;
      frmEditRefBooks.edUnit_code_litering_international.Text := Q_CDS.FieldByName('code_lettering_international').AsString;
      frmEditRefBooks.Caption                := 'Единицы измерения :: редактирование';
      frmEditRefBooks.ShowModal;
      Q_CDS.Refresh;
      Q_CDS.Locate('nsi_units_id',frmEditRefBooks.edUnit_code.Tag ,[]);
      grUnits.SetFocus;    }
    end;
  finally
  end;
  end;
end;







procedure TfrmRefbooks.aDeleteExecute(Sender: TObject);
var idd, i: integer;
    cds : TcxGridDBTableView;
    sss : tcxgrid;
    OutText : string;
begin

 for i := 0 to ComponentCount - 1 do
 if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
 if (Components[i] as TcxGrid).Parent.visible = true then  sss := (Components[i] as TcxGrid);

  if ( (sss.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (pcrefbooks.ActivePage.PageIndex  in [0..5]) then
  if (intDefOffice <> (sss.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (sss.ActiveLevel.GridView as TcxGridDBTableView);
  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin

      // Пытаемся выполнить SQL запрос на удаление
      try
      if pcrefbooks.ActivePage.PageIndex=0 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
          selq.ParamByName('table_').AsString := 'BOOKS_REGIONS';
          selq.ParamByName('pk_').AsString    := 'ID_REGIONS';
          selq.ParamByName('id_').AsInteger   := Q_REGIONS.FieldByName('ID_REGIONS').Value;
          Q_REGIONS.Next;
          idd := Q_REGIONS.FieldByName('ID_REGIONS').Value;
          selq.Execute;
          Q_REGIONS.Refresh;
          Q_REGIONS.Locate('ID_REGIONS',idd,[]);
          selq.Close;
          grRegions.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=1 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
          selq.ParamByName('table_').AsString := 'books_cities';
          selq.ParamByName('pk_').AsString    := 'ID_CITY';
          selq.ParamByName('id_').AsInteger   := Q_CITIES.FieldByName('ID_CITY').Value;
          Q_CITIES.Next;
          idd := Q_CITIES.FieldByName('ID_CITY').Value;
          selq.Execute;
          Q_CITIES.Refresh;
          Q_CITIES.Locate('ID_CITY',idd,[]);
          selq.Close;
          grCities.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=2 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
          selq.ParamByName('table_').AsString := 'BOOKS_ADVERTISMENTS';
          selq.ParamByName('pk_').AsString    := 'ID_ADVERTISMENTS';
          selq.ParamByName('id_').AsInteger   := Q_promo.FieldByName('ID_ADVERTISMENTS').Value;
          Q_promo.Next;
          idd := Q_promo.FieldByName('ID_ADVERTISMENTS').Value;
          selq.Execute;
          Q_promo.Refresh;
          Q_promo.Locate('ID_ADVERTISMENTS',idd,[]);
          selq.Close;
          grPromo.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=3 then begin
         selq.Close;
         selq.SQL.Clear;
         selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
         selq.ParamByName('table_').AsString := 'BOOKS_CLIENT_TYPES';
         selq.ParamByName('pk_').AsString    := 'ID_CLIENT_TYPES';
         selq.ParamByName('id_').AsInteger   := Q_CT.FieldByName('ID_CLIENT_TYPES').Value;
         Q_CT.Next;
         idd := Q_CT.FieldByName('ID_CLIENT_TYPES').Value;
         selq.Execute;
         Q_CT.Refresh;
         Q_CT.Locate('ID_CLIENT_TYPES',idd,[]);
         selq.Close;
         grClientTypes.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=4 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
          selq.ParamByName('table_').AsString := 'BOOKS_DEPARTMENTS';
          selq.ParamByName('pk_').AsString    := 'ID_DEPARTMENTS';
          selq.ParamByName('id_').AsInteger   := Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          Q_DEPS.Next;
          idd := Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          selq.Execute;
          Q_DEPS.Refresh;
          Q_DEPS.Locate('ID_DEPARTMENTS',idd,[]);
          selq.Close;
          grDeps.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=5 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');
          selq.ParamByName('table_').AsString := 'BOOKS_JOB_TITLES';
          selq.ParamByName('pk_').AsString    := 'ID_JOB_TITLES';
          selq.ParamByName('id_').AsInteger   := Q_POST.FieldByName('ID_JOB_TITLES').Value;
          Q_POST.Next;
          idd := Q_POST.FieldByName('ID_JOB_TITLES').Value;
          selq.Execute;
          Q_POST.Refresh;
          Q_POST.Locate('ID_JOB_TITLES',idd,[]);
          selq.Close;
          grPost.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=6 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin NOMENCLATURE_PKG.DELETE_COUNTRY(:C_ID_, :OUT_TEXT); end;');
          selq.ParamByName('C_ID_').Value := Q_CTRS.FieldByName('C_ID').Value;
          selq.Execute;
          OutText := selq.ParamByName('OUT_TEXT').asstring;
          if (OutText <> '') then
            MessageBox(Handle, PChar(OutText), 'Ошибка', MB_ICONWARNING)
          else
          Q_CTRS.Refresh;
          selq.Close;
          grCountries.SetFocus;
      end;
      if pcrefbooks.ActivePage.PageIndex=7 then begin
          selq.Close;
          selq.SQL.Clear;
          selq.SQL.Add('begin NOMENCLATURE_PKG.DELETE_SUPPLIERS(:S_ID_, :OUT_TEXT); end;');
          selq.ParamByName('S_ID_').Value := Q_SUP.FieldByName('S_ID').Value;
          selq.Execute;
          OutText := selq.ParamByName('OUT_TEXT').asstring;
          if (OutText <> '') then
            MessageBox(Handle, PChar(OutText), 'Ошибка', MB_ICONWARNING)
          else
          Q_SUP.Refresh;
          selq.Close;
          grSuppliers.SetFocus;
      end;
      if (pcrefbooks.ActivePage.PageIndex=8) and (intDefOffice=1)  then begin
          grUnitsView.DataController.DataSet.Delete;
      end;
      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then MessageBox(Handle, 'У вас нет прав на данную операцию!', 'Не удалось выполнить операцию!', MB_ICONERROR)
          else
            if (StrPos(PChar(E.Message), PChar('02292')) <> nil) then MessageBox(Handle, 'Стираемая запись используется в данных других программ!'+#10#13+'Удаление возможно только не используемых значений!', 'Не удалось выполнить операцию!', MB_ICONERROR)
            else MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
          end;
        End;
    end;
  end
  else ShowMessage('В базе данных нет записей для удаления!');
  finally
  end;
  end;
end;




procedure TfrmRefbooks.aRefreshExecute(Sender: TObject);
begin
  pcrefbooks.ActivePageIndex := page;

  if pcrefbooks.ActivePage.PageIndex = 0 then
  begin
    Caption := 'Cправочники :: регионы';
    Q_REGIONS.Close;
    Q_REGIONS.ParamByName('V_OFFICE').AsInteger :=  intDefOffice;
    Q_REGIONS.Open;
    grRegions.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 1 then
  begin
    Caption := 'Cправочники :: города';
    Q_REGIONS.Close;  // чтоб был открыт датасет регионов для выбора в городах
    Q_REGIONS.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_REGIONS.Open;
    Q_CITIES.Close;
    Q_CITIES.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_CITIES.Open;
    grCities.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 2 then
  begin
    Caption := 'Cправочники :: реклама';
    Q_Promo.Close;
    Q_Promo.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_Promo.Open;
    grPromo.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 3 then
  begin
    Caption := 'Cправочники :: типы клиентов';
    Q_CT.Close;
    Q_CT.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_CT.Open;
    grClientTypes.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 4 then
  begin
    Caption := 'Cправочники :: отделы';
    Q_DEPS.Close;
    Q_DEPS.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_DEPS.Open;
    grDeps.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 5 then
  begin
    Caption := 'Cправочники :: должности';
    Q_POST.Close;
    Q_POST.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_POST.Open;
    grPost.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 6 then
  begin
    Caption := 'Cправочники :: страны';
    Q_CTRS.Close;
    Q_CTRS.Open;
    grCountries.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex=7 then
  begin
    Caption := 'Cправочники :: поставщики';
    Q_CTRS.Close;
    Q_CTRS.Open;
    Q_SUP.Close;
    Q_SUP.ParamByName('V_OFFICE').AsInteger := intDefOffice;
    Q_SUP.Open;
    grSuppliers.SetFocus;
  end;

  if pcrefbooks.ActivePage.PageIndex = 8 then
  begin
    Caption := 'Cправочники :: единицы измерения';
    Q_CDS.Close;
    Q_CDS.Open;
    grUnits.SetFocus;
  end;
end;




procedure TfrmRefbooks.btnHelpClick(Sender: TObject);
begin
 showmessage('штангенциркуль');
end;

procedure TfrmRefbooks.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmRefbooks.FormClose(Sender: TObject; var Action: TCloseAction);
 var i: integer;
begin
  if MessageDlg('Закрыть форму?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else    
  begin

    for i:=0 to length(mas)-1 do  begin
     //showmessage('element '+mas[i]+' forma.tag= '+inttostr(frmDesc.tag));
    if (mas[i]=inttostr(frmDesc.tag)) then begin
     mas[i]:='';
     break;
    end;
    end;

    frmDesc.Name:= 'frmRefbooks'+inttostr(frmDesc.Tag); //во избежание нижеследущего:
    //при новом открытии справочников имена форм формируются автоматом: имя_формы_1, имя_формы_2 и тд
    //а потом уже из ini подгруж-ся координаты к этим формам
    //а при закрытии справочников в ini имена пишутся начиная со справочника который закрыт 1м,
    //к примеру 1м попал имя_формы_3. => и если я его впоследствии открою 1м, то ему присвоятся коор-ты имя_формы_1

    SaveFormState(frmDesc); //полож.окна
    frmDesc := nil;
    Action := caFree;
  end;
end;



procedure TfrmRefbooks.FormCreate(Sender: TObject);
   var recUserRules : TUserRules; i:integer;
begin
  //Application.CreateForm(TfrmEditRefBooks, frmEditRefBooks);

  for i := 0 to ComponentCount-1 do
    if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
      (Components[i] as TcxGrid).Font.Size := intDefFont;

  for i := 0 to pcrefbooks.PageCount-1 do pcrefbooks.Pages[i].TabVisible := false;

  // получение прав на программу
  recUserRules  := getRules(DM.cdsRules,4);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;

  aNew.Enabled    := p_edit;
  aEdit.Enabled   := p_edit;
  aDelete.Enabled := p_delete;
end;

procedure TfrmRefbooks.aExitExecute(Sender: TObject);
begin
  Close;
end;

end.
