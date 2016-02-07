unit UMoney;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxDropDownEdit, StdCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxCalendar, Mask, DBCtrlsEh, PI_library, cxCheckBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCurrencyEdit,
  DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Series, TeEngine,
  TeeProcs, Chart, cxPC, dxBar, ActnList, ImgList, cxBarEditItem, dxBarExtItems
  , cxGridExportLink, cxTimeEdit, ExtDlgs, cxImageComboBox, PI_Library_reg;

type
  TfrmMoney = class(TForm)
    top_panel: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Store_DepsCBEx: TDBComboBoxEh;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    rg_date_result: TRadioGroup;
    chek_dates: TCheckBox;
    SaveDialog1: TSaveDialog;
    bm_main: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_otchet: TdxBarLargeButton;
    btn_clear: TdxBarLargeButton;
    btn_save: TdxBarLargeButton;
    btn_excel: TdxBarLargeButton;
    cb_legend: TcxBarEditItem;
    cxImageList1: TcxImageList;
    ActionList1: TActionList;
    aSearch: TAction;
    aClear: TAction;
    bdc_money: TdxBarDockControl;
    pc_main: TcxPageControl;
    tch_graph: TcxTabSheet;
    chart_stat: TChart;
    Series1: TFastLineSeries;
    tsh_data: TcxTabSheet;
    grid_allnakl: TcxGrid;
    grid_allnakl_v: TcxGridDBTableView;
    galn_DOC_NUMBER: TcxGridDBColumn;
    galn_DOC_DATE: TcxGridDBColumn;
    galn_DOC_DATE_REAL: TcxGridDBColumn;
    galn_NICK: TcxGridDBColumn;
    galn_FIO: TcxGridDBColumn;
    galn_QUANTITY_ALL: TcxGridDBColumn;
    galn_PRICE_ALL: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
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
    grid_allnakl_l: TcxGridLevel;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
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
    docINV_ID: TFloatField;
    docORDER_ID: TFloatField;
    docSUPPLIER_DATE: TDateTimeField;
    docSUPPLIER_NUMBER: TStringField;
    docPRICE_PCC: TFloatField;
    docZARABOTOK: TFloatField;
    docPROCENT: TFloatField;
    grid_allnakl_vzarabotok: TcxGridDBColumn;
    grid_allnakl_vPROCENT: TcxGridDBColumn;
    cds_stat: TOraQuery;
    ds_stat: TOraDataSource;
    tshStat: TcxTabSheet;
    gr_stat: TcxGrid;
    gr_stat_v: TcxGridDBTableView;
    gr_stat_vD_MONTH: TcxGridDBColumn;
    gr_stat_vD_YEAR: TcxGridDBColumn;
    gr_stat_vSUM_PRICE: TcxGridDBColumn;
    gr_stat_vQUANTITY: TcxGridDBColumn;
    gr_stat_vSUM_NACENKA: TcxGridDBColumn;
    gr_stat_vPROCENT: TcxGridDBColumn;
    gr_stat_l: TcxGridLevel;
    aCtrlEnter: TAction;
    gr_stat_vPRICE: TcxGridDBColumn;
    gr_stat_vPRICE_NACENKA: TcxGridDBColumn;
    gr_stat_vD_QUART: TcxGridDBColumn;
    gr_stat_vD_WEEK: TcxGridDBColumn;
    gr_stat_vD_DAY: TcxGridDBColumn;
    Series2: TFastLineSeries;
    SavePictureDialog1: TSavePictureDialog;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    procedure FormShow(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure Doc_DateTimePicker1PropertiesChange(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure aClearExecute(Sender: TObject);
    procedure grid_allnakl_vDblClick(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMoney: TfrmMoney;

implementation

uses DataModule, UNaklInfo;

{$R *.dfm}

//
// Очистим фильтры
//
procedure TfrmMoney.aClearExecute(Sender: TObject);
begin
  DOC.ParamByName('DOC_DATE1_').AsDate := Now();
  DOC.ParamByName('DOC_DATE2_').AsDate := Now();
  DOC.ParamByName('v_office').AsInteger := dm.id_office;
  rg_date_result.ItemIndex             := 2;
  doc.Close;
end;


procedure TfrmMoney.aCtrlEnterExecute(Sender: TObject);
begin
  if (pc_main.ActivePage.Tag = 1) then
    grid_allnakl_vDblClick(grid_allnakl_v);
end;


//
// Покажем данные
//
procedure TfrmMoney.aSearchExecute(Sender: TObject);
var str_tmp: string;
begin
  Doc_DateTimePicker1.PostEditValue;
  Doc_DateTimePicker2.PostEditValue;
  
	if ((chek_dates.Checked = false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
  then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
      try
      	screen.cursor:=crhourglass;

  	    DOC.Close;
	      DOC.ParamByName('id_dep_').Value := Store_DepsCBEx.Value;
      	if (chek_dates.Checked = false) then
        begin
  	      DOC.ParamByName('DOC_DATE1_').AsDate := Doc_DateTimePicker1.Date;
    	    DOC.ParamByName('DOC_DATE2_').AsDate := Doc_DateTimePicker2.Date;
      	end
        else
        begin
  	      DOC.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	    DOC.ParamByName('DOC_DATE2_').AsDate := Now();
      	end;
    	  DOC.ParamByName('ID_DOC_TYPE_').Value := 4;
        DOC.ParamByName('v_office').AsInteger := dm.id_office;
      	DOC.Open;

  	    cds_stat.Close;
	      cds_stat.ParamByName('id_dep_').Value := Store_DepsCBEx.Value;
      	if (chek_dates.Checked = false) then
        begin
  	      cds_stat.ParamByName('DOC_DATE1_').AsDate := Doc_DateTimePicker1.Date;
    	    cds_stat.ParamByName('DOC_DATE2_').AsDate := Doc_DateTimePicker2.Date;
      	end
        else
        begin
  	      cds_stat.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	    cds_stat.ParamByName('DOC_DATE2_').AsDate := Now();
      	end;
    	  cds_stat.ParamByName('ID_DOC_TYPE_').Value := 4;
    	  cds_stat.ParamByName('p_vid').Value := rg_date_result.ItemIndex;
        cds_stat.ParamByName('v_office').AsInteger := dm.id_office;
      	cds_stat.Open;

        if (rg_date_result.ItemIndex <= 0) then gr_stat_vD_DAY.Visible := true else gr_stat_vD_DAY.Visible := false;
        if (rg_date_result.ItemIndex <= 1) then gr_stat_vD_WEEK.Visible := true else gr_stat_vD_WEEK.Visible := false;
        if (rg_date_result.ItemIndex <= 2) then gr_stat_vD_MONTH.Visible := true else gr_stat_vD_MONTH.Visible := false;
        if (rg_date_result.ItemIndex <= 3) then gr_stat_vD_QUART.Visible := true else gr_stat_vD_QUART.Visible := false;

        chart_stat.Series[0].Clear;
        chart_stat.Series[1].Clear;
        if (cds_stat.RecordCount > 0) then
        begin
          while (not cds_stat.Eof) do
          begin
            str_tmp := cds_stat.FieldByName('d_year').AsString;
            if (rg_date_result.ItemIndex = 0) then str_tmp := str_tmp + '.' + cds_stat.FieldByName('d_day').AsString;
            if (rg_date_result.ItemIndex = 1) then str_tmp := str_tmp + ' нед.№' + cds_stat.FieldByName('d_week').AsString;
            if (rg_date_result.ItemIndex = 2) then str_tmp := str_tmp + '.' + cds_stat.FieldByName('d_month').AsString;
            if (rg_date_result.ItemIndex = 3) then str_tmp := str_tmp + ' кв.№' + cds_stat.FieldByName('d_quart').AsString;

            chart_stat.Series[0].Add(cds_stat.FieldByName('sum_price').AsInteger,str_tmp,clRed);
            chart_stat.Series[1].Add(cds_stat.FieldByName('sum_nacenka').AsInteger,str_tmp,clNavy);
            cds_stat.Next;
          end;
          cds_stat.First;
        end;



	      screen.cursor:=crdefault;
        if (pc_main.ActivePageIndex = 1) then
          grid_allnakl.SetFocus;
        if (pc_main.ActivePageIndex = 2) then
          gr_stat.SetFocus;
      except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
      End;
  end;

end;


//
//  Выгрузим усе в эксель
//
procedure TfrmMoney.btn_excelClick(Sender: TObject);
begin
  if (doc.RecordCount > 0) and (pc_main.ActivePage.Tag > 0) and (SaveDialog1.Execute) then
  begin
    if (pc_main.ActivePage.Tag = 1) then
    begin
      grid_allnakl_v.DataController.SelectAll;
      ExportGridToExcel(SaveDialog1.FileName, grid_allnakl, True, False, True, 'xls');
    end;
    if (pc_main.ActivePage.Tag = 2) then
    begin
      gr_stat_v.DataController.SelectAll;
      ExportGridToExcel(SaveDialog1.FileName, gr_stat, True, False, True, 'xls');
    end;
  end;
end;


procedure TfrmMoney.btn_saveClick(Sender: TObject);
begin
  if (CDS_STAT.RecordCount > 0) and (SavePictureDialog1.Execute) then
  begin
    chart_stat.SaveToBitmapFile(SavePictureDialog1.FileName);
  end;
end;

procedure TfrmMoney.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;

//
//  При смене даты уберем галку
//
procedure TfrmMoney.Doc_DateTimePicker1PropertiesChange(Sender: TObject);
begin
  chek_dates.Checked := false;
end;


//
//  Откроем форму
//
procedure TfrmMoney.FormShow(Sender: TObject);
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

  try
    with DM.SQL_Q do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin BUH_PKG.get_deps_on_user(:cursor_); end;');
        ParamByName('cursor_').AsCursor;
        Open;
      except
        on E: Exception do
         MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
        end;
      End;

    FillComboOlmer(DM.SQL_Q, Store_DepsCBEx, '');
    Doc_DateTimePicker1.EditValue := Now();
    Doc_DateTimePicker2.EditValue := Now();
  except
    on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
  end;
end;

procedure TfrmMoney.grid_allnakl_vDblClick(Sender: TObject);
begin
    if (DOC.Active = true) and (DOC.RecordCount > 0) then
    begin
      try
        frmNaklInfo := TfrmNaklInfo.Create(Application);

  	    frmNaklInfo.DOC.Close;
	      frmNaklInfo.DOC.ParamByName('id_dep_').Value := Store_DepsCBEx.Value;
	      frmNaklInfo.DOC.ParamByName('DOC_NUMBER_').AsString := doc.FieldByName('DOC_NUMBER').AsString;
      	if (chek_dates.Checked = false) then
        begin
  	      frmNaklInfo.DOC.ParamByName('DOC_DATE1_').AsDate := Doc_DateTimePicker1.Date;
    	    frmNaklInfo.DOC.ParamByName('DOC_DATE2_').AsDate := Doc_DateTimePicker2.Date;
      	end
        else
        begin
  	      frmNaklInfo.DOC.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	    frmNaklInfo.DOC.ParamByName('DOC_DATE2_').AsDate := Now();
      	end;
    	  frmNaklInfo.DOC.ParamByName('ID_DOC_TYPE_').Value := 4;
	      frmNaklInfo.DOC.ParamByName('fio_').AsString      := '';
	      frmNaklInfo.DOC.ParamByName('nick_').AsString     := '';
      	frmNaklInfo.DOC.Open;

        frmNaklInfo.doc_data.Open;
        frmNaklInfo.ShowModal;
      finally
        begin
          frmNaklInfo.doc_data.Close;
          frmNaklInfo.DOC.Close;
          frmNaklInfo.Free;
        end;
      end;
    end;
end;

end.
