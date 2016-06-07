unit UClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxCheckBox, StdCtrls, ExtDlgs, ActnList, ImgList, dxBar,
  cxBarEditItem, dxBarExtItems, cxClasses, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, DB, DBAccess, Ora, MemDS, cxImageComboBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, TeEngine, Series, TeeProcs, Chart, cxPC, cxGridExportLink,
  cxCheckComboBox, cxColorComboBox, PI_Library_reg;

type
  TfrmClients = class(TForm)
    params_panel: TPanel;
    bdc_main: TdxBarDockControl;
    top_panel: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    d_date_begin: TcxDateEdit;
    d_date_end: TcxDateEdit;
    chek_regions: TCheckBox;
    chek_dates: TCheckBox;
    bm_clients: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_otchet: TdxBarLargeButton;
    btn_clear: TdxBarLargeButton;
    btn_save: TdxBarLargeButton;
    btn_excel: TdxBarLargeButton;
    cb_legend: TcxBarEditItem;
    img_clients: TcxImageList;
    alist_clients: TActionList;
    aSearch: TAction;
    aClear: TAction;
    spd_clients: TSavePictureDialog;
    sd_clients: TSaveDialog;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Panel4: TPanel;
    btn_help: TcxButton;
    Panel1: TPanel;
    btnClose: TcxButton;
    CDS_REGIONS: TOraQuery;
    DS_REGIONS: TOraDataSource;
    CDS_REGIONSID_REGIONS: TIntegerField;
    CDS_REGIONSNAME: TStringField;
    Panel2: TPanel;
    pc_main: TcxPageControl;
    tch_graph: TcxTabSheet;
    chart_stat: TChart;
    tsh_data: TcxTabSheet;
    grid_allnakl: TcxGrid;
    grid_allnakl_v: TcxGridDBTableView;
    grid_allnakl_l: TcxGridLevel;
    cds_result: TOraQuery;
    ds_result: TOraDataSource;
    grid_allnakl_vOPERATION: TcxGridDBColumn;
    grid_allnakl_vQUANTITY: TcxGridDBColumn;
    grid_allnakl_vSUMM: TcxGridDBColumn;
    grid_allnakl_vIN_RUB: TcxGridDBColumn;
    grid_allnakl_vNICK: TcxGridDBColumn;
    Series1: TPieSeries;
    cb_clients: TcxCheckComboBox;
    chb_regions: TcxCheckComboBox;
    cds_resultOPERATION: TIntegerField;
    cds_resultQUANTITY: TFloatField;
    cds_resultSUMM: TFloatField;
    cds_resultIN_RUB: TFloatField;
    cds_resultNICK: TStringField;
    cds_resultREGION: TIntegerField;
    cds_resultFIO: TStringField;
    cds_resultALPHA: TStringField;
    cds_resultREGION_NAME: TStringField;
    grid_allnakl_vREGION: TcxGridDBColumn;
    grid_allnakl_vFIO: TcxGridDBColumn;
    grid_allnakl_vALPHA: TcxGridDBColumn;
    grid_allnakl_vREGION_NAME: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cds_resultT_LONG: TStringField;
    grid_allnakl_vT_LONG: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    check_alpha: TCheckBox;
    pm_regions: TPopupMenu;
    aExcel: TAction;
    Excel1: TMenuItem;
    N1: TMenuItem;
    aExpand: TAction;
    aCollapse: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    cxColorComboBox1: TcxColorComboBox;
    cds_resultDDATE: TDateTimeField;
    grid_allnakl_vDDATE: TcxGridDBColumn;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    tshStore: TcxTabSheet;
    doc: TOraQuery;
    docID_DOC: TFloatField;
    docDOC_NUMBER: TFloatField;
    docID_DOC_TYPE: TIntegerField;
    docID_DEPARTMENTS: TIntegerField;
    docDEPARTMENT_NAME: TStringField;
    docOPERATOR_NAME: TStringField;
    docDOC_DATE: TDateTimeField;
    docDOC_DATE_REAL: TDateTimeField;
    docID_CLIENT: TIntegerField;
    docNICK: TStringField;
    docFIO: TStringField;
    docQUANTITY_ALL: TFloatField;
    docPRICE_ALL: TFloatField;
    docSUM_PRICE_OLD: TFloatField;
    docSUM_PRICE_NEW: TFloatField;
    docSUM_PRICE_DIFFERENCE: TFloatField;
    docCOMMENTS: TStringField;
    docINV_ID: TFloatField;
    docORDER_ID: TFloatField;
    docSUPPLIER_DATE: TDateTimeField;
    docSUPPLIER_NUMBER: TStringField;
    docSUPLIER: TStringField;
    docID_OFFICE: TIntegerField;
    docBRIEF: TStringField;
    DOC_DS: TOraDataSource;
    grDocs: TcxGrid;
    grDocsV: TcxGridDBTableView;
    grid_allnakl_vBRIEF: TcxGridDBColumn;
    galn_DOC_NUMBER: TcxGridDBColumn;
    galn_DOC_DATE: TcxGridDBColumn;
    galn_DOC_DATE_REAL: TcxGridDBColumn;
    galn_NICK: TcxGridDBColumn;
    galn_FIO: TcxGridDBColumn;
    galn_QUANTITY_ALL: TcxGridDBColumn;
    galn_PRICE_ALL: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    galn_COMMENTS: TcxGridDBColumn;
    grid_allnakl_vID_DOC: TcxGridDBColumn;
    grid_allnakl_vID_DOC_TYPE: TcxGridDBColumn;
    grid_allnakl_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_allnakl_vDEPARTMENT_NAME: TcxGridDBColumn;
    grid_allnakl_vOPERATOR_NAME: TcxGridDBColumn;
    grid_allnakl_vID_CLIENT: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_OLD: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_NEW: TcxGridDBColumn;
    grid_allnakl_vINV_ID: TcxGridDBColumn;
    grid_allnakl_vORDER_ID: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_DATE: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_allnakl_vSUPLIER: TcxGridDBColumn;
    grid_allnakl_vID_OFFICE: TcxGridDBColumn;
    grDocsL: TcxGridLevel;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    doc_dataID_DOC: TFloatField;
    doc_dataN_ID: TFloatField;
    doc_dataCODE: TStringField;
    doc_dataH_CODE: TStringField;
    doc_dataF_TYPE: TStringField;
    doc_dataF_SUB_TYPE: TStringField;
    doc_dataFULL_NAME: TStringField;
    doc_dataQUANTITY: TIntegerField;
    doc_dataQUANTITY_NOW: TFloatField;
    doc_dataSTORE_TYPE_NAME: TStringField;
    doc_dataSTORE_TYPE: TIntegerField;
    doc_dataPRICE_LIST: TFloatField;
    doc_dataQUANTITY_PRICE: TFloatField;
    doc_dataPRICE_PERCENT: TFloatField;
    doc_dataPRICE: TFloatField;
    doc_dataGTD: TStringField;
    doc_dataSPESIFICATION: TStringField;
    doc_dataPRICE_PCC: TFloatField;
    doc_dataSUM_PRICE_PCC: TFloatField;
    cds_resultID_OFFICE: TIntegerField;
    cds_resultID_CLIENTS: TIntegerField;
    cds_resultBRIEF: TStringField;
    grid_allnakl_vID_OFFICE1: TcxGridDBColumn;
    grid_allnakl_vID_CLIENTS: TcxGridDBColumn;
    grid_allnakl_vBRIEF1: TcxGridDBColumn;
    cds_result_all: TOraQuery;
    ds_result_all: TOraDataSource;
    cds_result_allID_OFFICE: TIntegerField;
    cds_result_allOPERATION: TIntegerField;
    cds_result_allQUANTITY: TFloatField;
    cds_result_allSUMM: TFloatField;
    cds_result_allIN_RUB: TFloatField;
    cds_result_allDDATE: TDateTimeField;
    cds_result_allBRIEF: TStringField;
    cds_result_allT_LONG: TStringField;
    tshTotal: TcxTabSheet;
    grTotal: TcxGrid;
    grTotalL: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    grTotalV: TcxGridLevel;
    cds_result_allSUMM_TOTAL: TFloatField;
    cds_result_allPERCENT: TFloatField;
    grTotalLSUMM_TOTAL: TcxGridDBColumn;
    grTotalLPERCENT: TcxGridDBColumn;
    tsh_clientsChart: TcxTabSheet;
    Chart_clients: TChart;
    PieSeries1: TPieSeries;
    procedure btnCloseClick(Sender: TObject);
    procedure cb_typePropertiesEditValueChanged(Sender: TObject);
    procedure chek_regionsClick(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure d_date_beginPropertiesEditValueChanged(Sender: TObject);
    procedure aClearExecute(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure check_alphaClick(Sender: TObject);
    procedure cb_clientsPropertiesEditValueChanged(Sender: TObject);
    procedure aExcelExecute(Sender: TObject);
    procedure aExpandExecute(Sender: TObject);
    procedure aCollapseExecute(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grDocsVDblClick(Sender: TObject);
    procedure chart_statClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart_clientsClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClients: TfrmClients;

  arr: array[1..9] of TColor = (clMoneyGreen, clGreen, clSkyBlue, clCream, clMaroon, clOlive, clNavy, clRed, clYellow);

implementation

uses DataModule, UNaklInfo;

{$R *.dfm}

procedure TfrmClients.aClearExecute(Sender: TObject);
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


procedure TfrmClients.aSearchExecute(Sender: TObject);
var i: integer;
    vv, res_cl, res_reg, otd: string;
    total: currency;
begin
  cb_clients.PostEditValue;
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
  if otd = '' then
    application.MessageBox('Выберите отдел продаж','Внимание!',MB_ICONINFORMATION)
  else
    otd := copy(otd,1,length(otd)-1);



  chb_regions.PostEditValue;
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

  d_date_begin.PostEditValue;
  d_date_end.PostEditValue;

	if ((chek_dates.Checked = false) and (d_date_begin.Date > d_date_end.Date))
  then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
      try
      	screen.cursor:=crhourglass;

  	    cds_result.Close;
        cds_result_all.Close;
  	    DOC.Close;

      	if (chek_dates.Checked = false) then
        begin
  	      cds_result.ParamByName('DOC_DATE1_').AsDate := d_date_begin.Date;
    	    cds_result.ParamByName('DOC_DATE2_').AsDate := d_date_end.Date;

  	      DOC.ParamByName('DOC_DATE1_').AsDate := d_date_begin.Date;
    	    DOC.ParamByName('DOC_DATE2_').AsDate := d_date_end.Date;

  	      cds_result_all.ParamByName('DOC_DATE1_').AsDate := d_date_begin.Date;
    	    cds_result_all.ParamByName('DOC_DATE2_').AsDate := d_date_end.Date;
      	end
        else
        begin
  	      cds_result.ParamByName('DOC_DATE1_').AsDate := StrToDate('01.01.2005');
    	    cds_result.ParamByName('DOC_DATE2_').AsDate := Now();

  	      DOC.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	    DOC.ParamByName('DOC_DATE2_').AsDate := Now();

  	      cds_result_all.ParamByName('DOC_DATE1_').AsDate := StrToDate('01.01.2005');
    	    cds_result_all.ParamByName('DOC_DATE2_').AsDate := Now();
      	end;
        if (res_cl <> '') then
        begin
      	  cds_result.ParamByName('p_alpha').AsString := res_cl;
      	  DOC.ParamByName('p_alpha').AsString := res_cl;
      	  cds_result_all.ParamByName('p_alpha').AsString := res_cl;
        end
        else
        begin
      	  cds_result.ParamByName('p_alpha').AsString := '';
      	  DOC.ParamByName('p_alpha').AsString := '';
      	  cds_result_all.ParamByName('p_alpha').AsString := '';
        end;

        if (res_reg <> '') then
        begin
      	  cds_result.ParamByName('p_region').AsString := res_reg;
      	  DOC.ParamByName('p_region').AsString := res_reg;
      	  cds_result_all.ParamByName('p_region').AsString := res_reg;
        end
        else
        begin
      	  cds_result.ParamByName('p_region').AsString := '';
      	  cds_result_all.ParamByName('p_region').AsString := '';
      	  DOC.ParamByName('p_region').AsString := '';
        end;

        cds_result.ParamByName('v_office').AsInteger := dm.id_office;
    	  cds_result.ParamByName('p_otdel').AsString   := otd;
      	cds_result.Open;

        cds_result_all.ParamByName('v_office').AsInteger := dm.id_office;
    	  cds_result_all.ParamByName('p_otdel').AsString   := otd;
      	cds_result_all.Open;

        total := VarToInt(grid_allnakl_v.DataController.Summary.FooterSummaryValues[16]);

        //grid_allnakl_v.DataController.Groups.FullExpand;
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



  otd := '';
  if CheckBox1.Checked then otd := otd + '62,';
  if CheckBox2.Checked then otd := otd + '61,';
  if CheckBox3.Checked then otd := otd + '121,';
  if otd = '' then
    application.MessageBox('Выберите отдел продаж','Внимание!',MB_ICONINFORMATION)
  else
    otd := copy(otd,1,length(otd)-1);


        DOC.ParamByName('v_office').AsInteger := dm.id_office;
    	  DOC.ParamByName('p_otdel').AsString   := otd;
      	DOC.Open;






	      screen.cursor:=crdefault;
      except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
      End;
  end;
end;



procedure TfrmClients.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClients.aCollapseExecute(Sender: TObject);
begin
  grid_allnakl_v.DataController.Groups.FullCollapse;
end;

procedure TfrmClients.aExpandExecute(Sender: TObject);
begin
  grid_allnakl_v.DataController.Groups.FullExpand;
end;

procedure TfrmClients.aExcelExecute(Sender: TObject);
begin
  if (cds_result.Active) and (cds_result.RecordCount > 0) and (sd_clients.Execute) then
  begin
    grid_allnakl_v.DataController.SelectAll;
    ExportGridToExcel(sd_clients.FileName, grid_allnakl, True, true, True, 'xls');
  end;
end;

procedure TfrmClients.btn_saveClick(Sender: TObject);
begin
  if (cds_result.Active) and (cds_result.RecordCount > 0) and (spd_clients.Execute) then
  begin
    chart_stat.SaveToBitmapFile(spd_clients.FileName);
  end;
end;

procedure TfrmClients.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;

procedure TfrmClients.cb_clientsPropertiesEditValueChanged(Sender: TObject);
begin
  check_alpha.Checked := false;
end;

procedure TfrmClients.cb_typePropertiesEditValueChanged(Sender: TObject);
begin
  chek_regions.Checked := false;
end;

procedure TfrmClients.Chart_clientsClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var res: string;
begin
  res := Series.XLabel[ValueIndex];
  if Trim(res) <> '' then
  begin
    galn_NICK.DataBinding.AddToFilter(nil,foEqual,res,res,true);
    grDocsV.DataController.Filter.Active := true;
    pc_main.ActivePageIndex := 2;
    grDocs.SetFocus;
  end;
end;

procedure TfrmClients.chart_statClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var res: string;
    i, j, ChildCount, RecIndex, CurIndex: integer;
begin
  res := Series.XLabel[ValueIndex];
  res := copy(res, pos(')', res)+2, length(res)-1);
        with grid_allnakl_v.DataController do
        begin
          for I := 0 to Groups.ChildCount[-1] - 1 do
          begin
            if Groups.GroupDisplayTexts[i] = res then
            begin
              Chart_clients.Series[0].Clear;
              Chart_clients.Title.Caption := res;
              ChildCount := grid_allnakl_v.DataController.Groups.ChildCount[i];

              for j := 0 to ChildCount - 1 do
              begin
                RecIndex := grid_allnakl_v.DataController.Groups.ChildRecordIndex[i, j];
                CurIndex := grid_allnakl_v.DataController.GetRowIndexByRecordIndex(RecIndex, True);

                cxColorComboBox1.ItemIndex := j+1;
                cxColorComboBox1.PostEditValue;
                Chart_clients.Series[0].Add(grid_allnakl_v.ViewData.Rows[CurIndex].Values[grid_allnakl_vSUMM.Index], VarToStr(grid_allnakl_v.ViewData.Rows[CurIndex].Values[grid_allnakl_vNICK.Index]), cxColorComboBox1.EditingValue);
              end;
              Chart_clients.Series[0].ColorEachPoint := true;
              Chart_clients.Legend.Title.Text.Clear;
              Chart_clients.Legend.Title.Text.Add('Клиентов: '+VarToStr(Summary.GroupSummaryValues[i,1]));
              Chart_clients.Legend.Title.Text.Add('Всего накладных: '+VarToStr(Summary.GroupSummaryValues[i,2]));
              Chart_clients.Legend.Title.Text.Add('На сумму '+VarToStr(Summary.GroupSummaryValues[i,3]));
            end;
         end;
        end;
   pc_main.ActivePageIndex := 4;
end;

procedure TfrmClients.check_alphaClick(Sender: TObject);
begin
  if check_alpha.Checked then
  begin
    cb_clients.Properties.OnEditValueChanged := nil;
    cb_clients.EditValue := 0;
    cb_clients.Properties.OnEditValueChanged := cb_clientsPropertiesEditValueChanged;
  end;
end;

procedure TfrmClients.chek_regionsClick(Sender: TObject);
begin
  if chek_regions.Checked then
  begin
    chb_regions.Properties.OnEditValueChanged := nil;
    chb_regions.EditValue := 0;
    chb_regions.Properties.OnEditValueChanged := cb_typePropertiesEditValueChanged;
  end;
end;

procedure TfrmClients.d_date_beginPropertiesEditValueChanged(Sender: TObject);
begin
  chek_dates.Checked := false;
end;

procedure TfrmClients.FormShow(Sender: TObject);
begin
    pc_main.ActivePageIndex := 1;
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

procedure TfrmClients.grDocsVDblClick(Sender: TObject);
begin
  if not doc.Active or doc.IsEmpty then exit;

  frmNaklInfo := TfrmNaklInfo.Create(Application);
  doc_data.Open;
//  showmessage(inttostr(doc_data.recordcount));
  With frmNaklInfo do
  Begin
    vg_doc.DataController.DataSource := frmClients.doc_ds;
    gr_data.DataSource := frmClients.doc_data_ds;
    Caption := 'Полная нформация по накладной продажи';
    v_vid := 1;
    ShowModal;
    vg_doc.DataController.DataSource := nil;
    gr_data.DataSource := nil;
    doc_data.Close;
    Free;
  End;

end;

end.
