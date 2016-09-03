unit USealesByClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PI_Library_reg, Menus, cxLookAndFeelPainters, cxGraphics, cxCheckBox,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxTextEdit, cxCurrencyEdit, DBAccess, Ora, MemDS, TeEngine, Series, TeeProcs,
  Chart, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC, dxBar, ExtDlgs,
  ActnList, ImgList, cxBarEditItem, dxBarExtItems, cxImageComboBox,
  cxDropDownEdit, cxCheckComboBox, StdCtrls, cxContainer, cxMaskEdit,
  cxCalendar, cxButtons, ExtCtrls, cxGridExportLink, cxColorComboBox;

type
  TfrmSalesByClients = class(TForm)
    Panel4: TPanel;
    btn_help: TcxButton;
    Panel1: TPanel;
    btnClose: TcxButton;
    Panel2: TPanel;
    top_panel: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    d_date_end: TcxDateEdit;
    chek_regions: TCheckBox;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    cb_clients: TcxCheckComboBox;
    chb_regions: TcxCheckComboBox;
    check_alpha: TCheckBox;
    cbOffices: TcxImageComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    bm_clients: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_otchet: TdxBarLargeButton;
    btn_clear: TdxBarLargeButton;
    btn_save: TdxBarLargeButton;
    btn_excel: TdxBarLargeButton;
    cb_legend: TcxBarEditItem;
    pm_regions: TPopupMenu;
    Excel1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    img_clients: TcxImageList;
    alist_clients: TActionList;
    aSearch: TAction;
    aClear: TAction;
    aExcel: TAction;
    aExpand: TAction;
    aCollapse: TAction;
    spd_clients: TSavePictureDialog;
    sd_clients: TSaveDialog;
    bcMainSalesByClient: TdxBarDockControl;
    pc_main: TcxPageControl;
    tsh_data: TcxTabSheet;
    grid_allnakl: TcxGrid;
    grid_allnakl_v: TcxGridDBTableView;
    grid_allnakl_l: TcxGridLevel;
    tch_graph: TcxTabSheet;
    chart_stat: TChart;
    Series1: TPieSeries;
    CDS_REGIONS: TOraQuery;
    CDS_REGIONSID_REGIONS: TIntegerField;
    CDS_REGIONSNAME: TStringField;
    DS_REGIONS: TOraDataSource;
    cds_result: TOraQuery;
    ds_result: TOraDataSource;
    grid_allnakl_vBRIEF: TcxGridDBColumn;
    grid_allnakl_vOPERATION: TcxGridDBColumn;
    grid_allnakl_vT_LONG: TcxGridDBColumn;
    grid_allnakl_vNICK: TcxGridDBColumn;
    grid_allnakl_vCLIENT_GROUP: TcxGridDBColumn;
    grid_allnakl_vID_CLIENTS_GROUPS: TcxGridDBColumn;
    grid_allnakl_vGR_SUMM: TcxGridDBColumn;
    d_date_begin: TcxDateEdit;
    Label2: TLabel;
    cxColorComboBox1: TcxColorComboBox;
    edCurrency: TcxCurrencyEdit;
    Label3: TLabel;
    edQuantity: TcxCurrencyEdit;
    cds_resultBRIEF: TStringField;
    cds_resultOPERATION: TIntegerField;
    cds_resultT_LONG: TStringField;
    cds_resultGR_SUMM: TFloatField;
    cds_resultCLIENT_GROUP: TStringField;
    cds_resultID_CLIENTS_GROUPS: TIntegerField;
    cds_resultR_DDATE: TDateTimeField;
    cds_resultCNT: TFloatField;
    cds_resultNICKS: TStringField;
    grid_allnakl_vR_DDATE: TcxGridDBColumn;
    grid_allnakl_vCNT: TcxGridDBColumn;
    cds_resultCNT_DIST: TFloatField;
    cds_resultMIDLE_CHECK: TFloatField;
    grid_allnakl_vCNT_DIST: TcxGridDBColumn;
    grid_allnakl_vMIDLE_CHECK: TcxGridDBColumn;
    procedure btnCloseClick(Sender: TObject);
    procedure chb_regionsPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chek_regionsClick(Sender: TObject);
    procedure check_alphaClick(Sender: TObject);
    procedure cb_clientsPropertiesEditValueChanged(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure aClearExecute(Sender: TObject);
    procedure aExcelExecute(Sender: TObject);
    procedure aExpandExecute(Sender: TObject);
    procedure aCollapseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    function collectData: boolean;

    { Public declarations }
  end;

var
  frmSalesByClients: TfrmSalesByClients;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmSalesByClients.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSalesByClients.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;

procedure TfrmSalesByClients.cb_clientsPropertiesEditValueChanged(
  Sender: TObject);
begin
  check_alpha.Checked := false;
end;

procedure TfrmSalesByClients.chb_regionsPropertiesEditValueChanged(
  Sender: TObject);
begin
  if chek_regions.Checked then
  begin
    chb_regions.Properties.OnEditValueChanged := nil;
    chb_regions.EditValue := 0;
    chb_regions.Properties.OnEditValueChanged := chb_regionsPropertiesEditValueChanged;
  end;
end;

procedure TfrmSalesByClients.check_alphaClick(Sender: TObject);
begin
  if check_alpha.Checked then
  begin
    cb_clients.Properties.OnEditValueChanged := nil;
    cb_clients.EditValue := 0;
    cb_clients.Properties.OnEditValueChanged := cb_clientsPropertiesEditValueChanged;
  end;
end;

procedure TfrmSalesByClients.chek_regionsClick(Sender: TObject);
begin
  if chek_regions.Checked then
  begin
    chb_regions.Properties.OnEditValueChanged := nil;
    chb_regions.EditValue := 0;
    chb_regions.Properties.OnEditValueChanged := chb_regionsPropertiesEditValueChanged;
  end;
end;

procedure TfrmSalesByClients.FormShow(Sender: TObject);
begin
    dm.id_office := GetOfficeID;
    cbOffices.Enabled := (dm.id_office = 1);
    if (cbOffices.Enabled) then
    begin
      try
        cbOffices.Properties.OnChange := nil;
        DM.SQL_Q.Close;
        DM.SQL_Q.SQL.Clear;
        DM.SQL_Q.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.SQL_Q.Open;
        FillImgComboCx(DM.SQL_Q, cbOffices, 'Все');
        DM.SQL_Q.Close;
        cbOffices.EditValue := DM.id_office;
        cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
      except
        on E: Exception do ShowMessage(E.Message);
      end;
    end;
end;

function TfrmSalesByClients.collectData: boolean;
var res: boolean;
    vv, otd:  string;
    i: integer;
begin
  res := true;
  cb_clients.PostEditValue;
  otd := '';
  if CheckBox1.Checked then otd := otd + IntToStr(CheckBox1.Tag)+',';
  if CheckBox2.Checked then otd := otd + IntToStr(CheckBox2.Tag)+',';
  if CheckBox3.Checked then otd := otd + IntToStr(CheckBox3.Tag)+',';
  if otd = '' then
  begin
    application.MessageBox('Выберите отдел продаж','Внимание!',MB_ICONINFORMATION);
    res := false;
  end;

  chb_regions.PostEditValue;
  d_date_begin.PostEditValue;
  d_date_end.PostEditValue;
  edCurrency.PostEditValue;

	if (d_date_begin.Date > d_date_end.Date) then
  begin
  	ShowMessage('Первая дата не может быть больше второй!');
    res := false;
  end;

  result := res;
end;


procedure TfrmSalesByClients.aClearExecute(Sender: TObject);
begin
  d_date_begin.EditValue := Now()-30;
  d_date_end.EditValue := Now();
  chek_regions.Checked := true;

  CheckBox1.Checked := true;
  CheckBox2.Checked := true;
  CheckBox3.Checked := true;

  cds_result.Close;
  chart_stat.Series[0].Clear;
end;



procedure TfrmSalesByClients.aCollapseExecute(Sender: TObject);
begin
  grid_allnakl_v.DataController.Groups.FullCollapse;
end;

procedure TfrmSalesByClients.aExcelExecute(Sender: TObject);
begin
  if (cds_result.Active) and (cds_result.RecordCount > 0) and (sd_clients.Execute) then
  begin
    grid_allnakl_v.DataController.SelectAll;
    ExportGridToExcel(sd_clients.FileName, grid_allnakl, True, true, True, 'xls');
  end;
end;


procedure TfrmSalesByClients.aExpandExecute(Sender: TObject);
begin
  grid_allnakl_v.DataController.Groups.FullExpand;
end;

//
//  Поиск
//
procedure TfrmSalesByClients.aSearchExecute(Sender: TObject);
var i: integer;
    vv, res_cl, res_reg, otd: string;
    total: currency;
begin
  if not collectData then exit;

  edQuantity.PostEditValue;
  edCurrency.PostEditValue;

	vv := cb_clients.EditValue;
  res_cl := '';
 	for i:=0 to cb_clients.Properties.Items.Count do
  begin
    if ( vv[i+1] = '1' ) then
      if res_cl = '' then
        res_cl := '''' + cb_clients.Properties.Items.Items[i].Description + ''''
      else
        res_cl := res_cl + ',''' + cb_clients.Properties.Items.Items[i].Description + '''';
  end;

//  a.operation in (4, 1, 32)  4-аксессуары, 1-срезка, 32-горшки
  otd := '';
  if CheckBox1.Checked then otd := otd + IntToStr(CheckBox1.Tag)+',';
  if CheckBox2.Checked then otd := otd + IntToStr(CheckBox2.Tag)+',';
  if CheckBox3.Checked then otd := otd + IntToStr(CheckBox3.Tag)+',';
  otd := copy(otd,1,length(otd)-1);

	vv := chb_regions.EditValue;
  res_reg := '';
 	for i:=0 to chb_regions.Properties.Items.Count do
  begin
   	if ( vv[i+1] = '1' ) then
      if res_reg = '' then
        res_reg := IntToStr(chb_regions.Properties.Items.Items[i].Tag)
      else
        res_reg := res_reg + ',' + IntToStr(chb_regions.Properties.Items.Items[i].Tag);
  end;

 try
   	screen.cursor := crhourglass;
    cds_result.Close;

	  cds_result.ParamByName('DOC_DATE1_').AsDate := d_date_begin.Date;
    cds_result.ParamByName('DOC_DATE2_').AsDate := d_date_end.Date;

    if (res_cl <> '') then
      cds_result.ParamByName('p_alpha').AsString := res_cl
    else
      cds_result.ParamByName('p_alpha').AsString := '';

    if (res_reg <> '') then
   	  cds_result.ParamByName('p_region').AsString := res_reg
    else
   	  cds_result.ParamByName('p_region').AsString := '';

    cds_result.ParamByName('v_office').AsInteger := dm.id_office;
    cds_result.ParamByName('p_otdel').AsString   := otd;
    cds_result.ParamByName('p_kol').AsInteger    := edQuantity.EditValue;
    cds_result.ParamByName('p_summ').AsInteger   := edCurrency.EditValue;
   	cds_result.Open;

    total := VarToInt(grid_allnakl_v.DataController.Summary.FooterSummaryValues[19]);

    chart_stat.Series[0].Clear;
    with grid_allnakl_v.DataController do
    begin
      for I := 0 to Groups.ChildCount[-1] - 1 do
      begin
        if not VarIsNull(Summary.GroupSummaryValues[i,3]) then
        begin
          cxColorComboBox1.ItemIndex := i;
          cxColorComboBox1.PostEditValue;
          chart_stat.Series[0].Add(Summary.GroupSummaryValues[i,3], ' ('+ inttostr(round((Summary.GroupSummaryValues[i,3] / total)*100))+ '%) ' + Groups.GroupDisplayTexts[i], cxColorComboBox1.EditingValue);
        end;
      end;
    end;
    chart_stat.Series[0].ColorEachPoint := true;
    chart_stat.Legend.Title.Text.Clear;
    chart_stat.Legend.Title.Text.Add('Всего накладных: '+VarToStr(grid_allnakl_v.DataController.Summary.FooterSummaryValues[15]));
    chart_stat.Legend.Title.Text.Add('На сумму '+CurrToStrF(total,ffCurrency, 2));

	  screen.cursor := crdefault;
  except
    on E: Exception do
      begin
        screen.cursor := crdefault;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
end;


end.
