unit URefbooks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxImageComboBox,
  cxLabel, cxButtonEdit, ActnList, dxBar, cxBarEditItem, dxBarExtItems,
  cxClasses, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, star_lib;

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
    Q_SupS_ID: TFloatField;
    Q_SupS_NAME_RU: TStringField;
    Q_SupC_ID: TFloatField;
    Q_SupNEED_CUST: TIntegerField;
    Q_SupCOUNTRY: TStringField;
    Q_SupNN: TFloatField;
    Q_SupID_OFFICE: TIntegerField;
    Q_SupANALYZE_DAYS: TIntegerField;
    Q_SupIS_ACTIVE: TFloatField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmRefbooks: TfrmRefbooks;

implementation

{$R *.dfm}

uses umain, UDM, UHotKeys, UEditRefBook;

function TfrmRefbooks.MainFormShow : boolean;
Begin
 if not Assigned(frmRefbooks) then
  begin
    frmRefbooks := TfrmRefbooks.Create(Application);
    try
      frmRefbooks.Show;
      LoadFormState(frmRefbooks); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmRefbooks.WindowState = wsMinimized) then frmRefbooks.WindowState := wsNormal;
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
 //showmessage(Components[i].name);

  if ( (sss.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (pcrefbooks.ActivePage.PageIndex  in [0..5]) then
  if (id_office <> (sss.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
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
          selq.ParamByName('pk_').AsString := 'ID_REGIONS';
          selq.ParamByName('id_').AsInteger := Q_REGIONS.FieldByName('ID_REGIONS').Value;
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
          selq.ParamByName('pk_').AsString := 'ID_CITY';
          selq.ParamByName('id_').AsInteger := Q_CITIES.FieldByName('ID_CITY').Value;
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
          selq.ParamByName('pk_').AsString := 'ID_ADVERTISMENTS';
          selq.ParamByName('id_').AsInteger := Q_promo.FieldByName('ID_ADVERTISMENTS').Value;
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
         selq.ParamByName('pk_').AsString := 'ID_CLIENT_TYPES';
         selq.ParamByName('id_').AsInteger := Q_CT.FieldByName('ID_CLIENT_TYPES').Value;
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
          selq.ParamByName('pk_').AsString := 'ID_DEPARTMENTS';
          selq.ParamByName('id_').AsInteger := Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
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
          selq.ParamByName('pk_').AsString := 'ID_JOB_TITLES';
          selq.ParamByName('id_').AsInteger := Q_POST.FieldByName('ID_JOB_TITLES').Value;
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
      if (pcrefbooks.ActivePage.PageIndex=8) and (dm.id_office = 1) then begin
         (grUnits.ActiveView.DataController as TcxDBDataController).DataSet.Delete;
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

procedure TfrmRefbooks.aEditExecute(Sender: TObject);
 var i   : integer;
     sss : tcxgrid;
begin
 for i := 0 to ComponentCount - 1 do
 if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
 if (Components[i] as TcxGrid).Parent.visible = true then  sss := (Components[i] as TcxGrid);

 if ( (sss.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (sss.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;
  try
    if (pcrefbooks.ActivePage.PageIndex=0) and (Q_REGIONS.FieldByName('NAME').AsString <> '') then
    begin
      frmEditRefBook.ttype := 2;
      frmEditRefBook.Edit1.Tag := Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
      frmEditRefBook.Edit1.Text := Q_REGIONS.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_REGIONS.FieldByName('INFO').AsString;
      frmEditRefBook.Label6.Caption := 'Регионы :: редактирование';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.pnlCity.Visible    := true;
      frmEditRefBook.Label8.Caption     := 'Код региона';
      frmEditRefBook.Label9.Visible     := false;
      frmEditRefBook.Label10.Visible    := false;
      frmEditRefBook.imcbRegion.Visible := false;
      frmEditRefBook.Edit2.Text := Q_REGIONS.FieldByName('KOD').AsString;
      frmEditRefBook.Edit3.Text := Q_REGIONS.FieldByName('KLADR').AsString;
      frmEditRefBook.ShowModal;
      Q_REGIONS.Refresh;
      Q_REGIONS.Locate('id_regions', frmEditRefBook.Edit1.Tag, []);
      grRegions.SetFocus;
    end;


  finally
  end;
  end;
end;

procedure TfrmRefbooks.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmRefbooks.aNewExecute(Sender: TObject);
 var id : variant;
begin
  if (pcrefbooks.ActivePage.PageIndex<4) and (id_office > 1) then
  begin
    MessageBox(Handle,'Вид данных добавляется только через главный офис компании.','Внимание!',MB_ICONERROR);
    exit;
  end;
  try
  if pcrefbooks.ActivePage.PageIndex=0 then begin
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible  := false;
      frmEditRefBook.Edit1.Text               := '';
      frmEditRefBook.Edit1.Tag                := 0;
      frmEditRefBook.Memo1.Lines.Clear;
      frmEditRefBook.ttype              := 1;
      frmEditRefBook.Label6.Caption     := 'Регионы :: добавление';
      frmEditRefBook.CheckBox1.Visible  := false;
      frmEditRefBook.Label7.Visible     := false;
      frmEditRefBook.pnlCity.Visible    := true;
      frmEditRefBook.Label8.Caption     := 'Код региона';
      frmEditRefBook.Label9.Visible     := false;
      frmEditRefBook.Label10.Visible    := false;
      frmEditRefBook.imcbRegion.Visible := false;
      frmEditRefBook.ShowModal;
      Q_REGIONS.Refresh;
      Q_REGIONS.Locate('id_regions', frmEditRefBook.Edit1.Tag, []);
      grRegions.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=1 then begin
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype              := 11;
    frmEditRefBook.Label6.Caption     := 'Города :: добавление';
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label11.Visible    := false;
    frmEditRefBook.Edit3.Visible      := false;
    frmEditRefBook.ShowModal;
    Q_CITIES.Refresh;
    Q_CITIES.Locate('id_city', frmEditRefBook.Edit1.Tag, []);
    grCities.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=2 then begin
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype              := 3;
    frmEditRefBook.Label6.Caption     := 'Источники рекламы :: добавление';
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.ShowModal;
    Q_Promo.Refresh;
    Q_Promo.Locate('ID_ADVERTISMENTS', frmEditRefBook.Edit1.Tag, []);
    grPromo.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=3 then begin
    frmEditRefBook.CheckBox2.Visible:=true;
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype                    := 5;
    frmEditRefBook.Label6.Caption           := 'Типы клиентов :: добавление';
    frmEditRefBook.CheckBox1.Visible        := true;
    frmEditRefBook.CheckBox1.Caption        := ' печать № свидетельства о регистрации';
    frmEditRefBook.Label7.Visible           := true;
    frmEditRefBook.DBNumberEditEh1.Visible  := true;
    frmEditRefBook.Znak_EditPercent.Visible := true;
    frmEditRefBook.ShowModal;
    Q_CT.Refresh;
    Q_CT.Locate('ID_CLIENT_TYPES', frmEditRefBook.Edit1.Tag, []);
    grClientTypes.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=4 then begin
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype             := 7;
    frmEditRefBook.Label6.Caption    := 'Отделы :: добавление';
    frmEditRefBook.CheckBox1.Visible := true;
    frmEditRefBook.CheckBox1.Caption := ' является отделом продаж';
    frmEditRefBook.Label7.Visible    := false;
    frmEditRefBook.ShowModal;
    Q_DEPS.Refresh;
    Q_DEPS.Locate('ID_DEPARTMENTS', frmEditRefBook.Edit1.Tag, []);
    grDeps.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=5 then begin
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype             := 9;
    frmEditRefBook.Label6.Caption    := 'Должности :: добавление';
    frmEditRefBook.CheckBox1.Visible := false;
    frmEditRefBook.Label7.Visible    := false;
    frmEditRefBook.ShowModal;
    Q_POST.Refresh;
    Q_POST.Locate('ID_JOB_TITLES', frmEditRefBook.Edit1.Tag, []);
    grPost.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=6 then begin
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype                    := 13;
    frmEditRefBook.Label6.Caption           := 'Страны :: добавление';
    frmEditRefBook.Label8.Caption           := 'Код (буквы)';
    frmEditRefBook.Label11.Caption          := 'Код (циф.)';
    frmEditRefBook.Label2.Caption           := 'Страна (лат.)';
    frmEditRefBook.imcbRegion.Visible := false;
    frmEditRefBook.Label9.Visible     := false;
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.Label11.Visible    := true;
    frmEditRefBook.Edit3.Visible      := true;
    frmEditRefBook.ShowModal;
    Q_CTRS.Refresh;
    Q_CTRS.Locate('C_ID',ID,[]);
    grCountries.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=7 then begin  // пока не пашет
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit2.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Visible            := false;
    frmEditRefBook.ttype                    := 15;
    frmEditRefBook.Label6.Caption           := 'Поставщики :: добавление';
    frmEditRefBook.Label8.Caption           := 'Кол-во дней';
    frmEditRefBook.Label11.Visible          := false;
    frmEditRefBook.Label9.Caption           := 'Страна';
    frmEditRefBook.CheckBox1.Visible  := true;
    frmEditRefBook.CheckBox2.Visible  := true;
    frmEditRefBook.CheckBox1.Caption  := 'Таможня/ГТД';
    frmEditRefBook.CheckBox2.Caption  := 'Неактивная номенклатура';
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.Label2.Visible     := false;
    frmEditRefBook.Label8.Visible     := true;
    frmEditRefBook.edit3.Visible      := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.imcbregion.Visible := true;
    frmEditRefBook.ShowModal;
    Q_SUP.Refresh;
    Q_SUP.Locate('S_ID',ID,[]);
    grSuppliers.SetFocus;
  end;
  if pcrefbooks.ActivePage.PageIndex=8 then begin
    ///// не готово
  end;
  finally
  end;
end;

procedure TfrmRefbooks.aRefreshExecute(Sender: TObject);
 var i:integer;
begin

for i:=0 to pcrefbooks.PageCount-1 do pcrefbooks.Pages[i].TabVisible:=false;
pcrefbooks.ActivePageIndex:=frmmain.page;

if pcrefbooks.ActivePage.PageIndex=0 then begin
 Caption := 'Cправочники :: регионы';
 pcrefbooks.Pages[0].TabVisible:=true;
 Q_REGIONS.Close;
 Q_REGIONS.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_REGIONS.Open;
 grRegions.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=1 then begin
 Caption := 'Cправочники :: города';
 pcrefbooks.Pages[1].TabVisible:=true;
 Q_CITIES.Close;
 Q_CITIES.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_CITIES.Open;
 grCities.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=2 then begin
 Caption := 'Cправочники :: реклама';
 pcrefbooks.Pages[2].TabVisible:=true;
 Q_Promo.Close;
 Q_Promo.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_Promo.Open;
 grPromo.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=3 then begin
 Caption := 'Cправочники :: типы клиентов';
 pcrefbooks.Pages[3].TabVisible:=true;
 Q_CT.Close;
 Q_CT.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_CT.Open;
 grClientTypes.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=4 then begin
 Caption := 'Cправочники :: отделы';
 pcrefbooks.Pages[4].TabVisible:=true;
 Q_DEPS.Close;
 Q_DEPS.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_DEPS.Open;
 grDeps.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=5 then begin
 Caption := 'Cправочники :: должности';
 pcrefbooks.Pages[5].TabVisible:=true;
 Q_POST.Close;
 Q_POST.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_POST.Open;
 grPost.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=6 then begin
 Caption := 'Cправочники :: страны';
 pcrefbooks.Pages[6].TabVisible:=true;
 Q_CTRS.Close;
 Q_CTRS.Open;
 grCountries.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=7 then begin
 Caption := 'Cправочники :: поставщики';
 pcrefbooks.Pages[7].TabVisible:=true;
 Q_SUP.Close;
 Q_SUP.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_SUP.Open;
 grSuppliers.SetFocus;
end;
if pcrefbooks.ActivePage.PageIndex=8 then begin
 Caption := 'Cправочники :: единицы измерения';
 pcrefbooks.Pages[8].TabVisible:=true;
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
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
    SaveFormState(frmRefbooks); //полож.окна
    frmRefbooks := nil;
    Action := caFree;
  end;
end;

procedure TfrmRefbooks.FormCreate(Sender: TObject);
   var recUserRules : TUserRules; i:integer;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);

 for i:=0 to ComponentCount-1 do
 if (Components[i] is TControl) and  (Components[i] is TcxGrid) then
 (Components[i] as TcxGrid).Font.Size := intDefFont;
 //grRegions.Font.Size := intDefFont;
 
 frmEditRefBook.CheckBox2.Visible:=false;

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

procedure TfrmRefbooks.FormShow(Sender: TObject);
begin
 if (imgOffice.Enabled) then
  begin
   try
    id_office := GetOfficeID;
    imgOffice.Enabled := (id_office = 1);

    imgOffice.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    SelQ.Close;
    imgOffice.EditValue := id_office;

    aRefresh.Execute;
   except
    on E: Exception do ShowMessage(E.Message);
   end;
  end;
end;

end.
