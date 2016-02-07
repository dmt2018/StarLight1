unit client_stat_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  StdCtrls, Mask, Tabs, ActnList, ExtDlgs, DB, cxCheckBox, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Menus, cxLookAndFeelPainters, cxButtons, cxPC, dxBar, dxBarExtItems, cxClasses,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, cxGridExportLink, cxImageComboBox,
  PI_Library_reg;

type
  Tclient_stat = class(TForm)
    top_panel: TPanel;
    params_panel: TPanel;
    ActionList1: TActionList;
    aSearch: TAction;
    SavePictureDialog1: TSavePictureDialog;
    d_date_begin: TcxDateEdit;
    chbox_period: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    d_date_end: TcxDateEdit;
    Panel4: TPanel;
    btn_help: TcxButton;
    btn_filtron: TcxButton;
    btn_save: TcxButton;
    btn_print: TcxButton;
    pc_clients: TcxPageControl;
    tsh_times: TcxTabSheet;
    tsh_summs: TcxTabSheet;
    tsh_invoices: TcxTabSheet;
    chart_client_stat: TChart;
    Series1: TFastLineSeries;
    Chart_sale_stat: TChart;
    FastLineSeries1: TFastLineSeries;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    gr_summs_v: TcxGridDBTableView;
    gr_summs_l: TcxGridLevel;
    gr_summs: TcxGrid;
    gr_summs_v_hours: TcxGridDBColumn;
    gr_summs_v_counts: TcxGridDBColumn;
    gr_summs_v_total_sum: TcxGridDBColumn;
    gr_summs_v_in_rub: TcxGridDBColumn;
    gr_summs_v_out_rub: TcxGridDBColumn;
    gr_summs_v_in_usd: TcxGridDBColumn;
    gr_summs_v_out_usd: TcxGridDBColumn;
    gr_summs_v_in_eu: TcxGridDBColumn;
    gr_summs_v_out_eu: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    gr_export: TMenuItem;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    btnClose: TcxButton;
    chbox_: TcxCheckBox;
    cbOffices: TcxImageComboBox;
    Label4: TLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure chbox_periodClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure gr_exportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
  private
    date_b_, date_e_: tdate;
    { Private declarations }
  public
    procedure draw_graph(proc_name: string; chart_name: TChart; param: integer);
    { Public declarations }
  end;

var
  client_stat: Tclient_stat;

implementation

uses DataModule;

{$R *.dfm}


//
//  Вкл/Выкл периода
//
procedure Tclient_stat.chbox_periodClick(Sender: TObject);
begin
  d_date_end.Enabled := chbox_period.Checked;
end;


//
//  Закрыть
//
procedure Tclient_stat.btnCloseClick(Sender: TObject);
begin
  close;
end;


//
//  Рисуем графики
//
procedure Tclient_stat.draw_graph(proc_name: string; chart_name: TChart; param: integer);
begin
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add(proc_name);
    DM.SQL_Q.ParamByName('date_b_').AsDate := date_b_;
    DM.SQL_Q.ParamByName('date_e_').AsDate := date_e_;
    DM.SQL_Q.ParamByName('v_office').AsInteger := dm.id_office;
    DM.SQL_Q.ParamByName('CURSOR_').AsCursor;
    DM.SQL_Q.Open;
    chart_name.Series[0].Clear;
    while not dm.SQL_Q.Eof do
    begin
      if (param = 1) then
      begin
         chart_name.Series[0].Add(DM.SQL_Q.FieldByName('counts').AsInteger, DM.SQL_Q.FieldByName('hours').AsString, clRed);
      end;

      if (param = 2) then
        chart_name.Series[0].Add(DM.SQL_Q.FieldByName('counts').AsInteger, DM.SQL_Q.FieldByName('days').AsString, clRed);

       DM.SQL_Q.Next;
    end;
    DM.SQL_Q.Close;
end;


// На показ формы подтянем офисы
procedure Tclient_stat.FormShow(Sender: TObject);
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
procedure Tclient_stat.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;


//
//  Экспорт в эксель
//
procedure Tclient_stat.gr_exportClick(Sender: TObject);
begin
  if ( SaveDialog1.Execute ) then
   	 ExportGridToExcel(SaveDialog1.FileName, gr_summs, true, true, true, 'xls');

end;

//
//  Поиск данных
//
procedure Tclient_stat.SpeedButton3Click(Sender: TObject);
begin
  date_b_ := d_date_begin.EditValue;
  if (chbox_period.Checked = true) then
    date_e_ := d_date_end.EditValue
  else
    date_e_ := date_b_;

  draw_graph('begin statistic.GET_CLIENTS_HOURS(:date_b_, :date_e_, :v_office, :CURSOR_); end;', chart_client_stat, 1);
  draw_graph('begin statistic.GET_CLIENTS_TOTAL(:date_b_, :date_e_, :v_office, :CURSOR_); end;', chart_sale_stat,   2);

  DM.cds_summs.Close;
  DM.cds_summs.SQL.Clear;
  DM.cds_summs.SQL.Add('begin statistic.get_clients_tada(:date_b_, :date_e_, :v_office, :CURSOR_); end;');
  DM.cds_summs.ParamByName('date_b_').AsDate := date_b_;
  DM.cds_summs.ParamByName('date_e_').AsDate := date_e_;
  DM.cds_summs.ParamByName('v_office').AsInteger := dm.id_office;
  DM.cds_summs.ParamByName('CURSOR_').AsCursor;
  DM.cds_summs.Open;

end;


//
//  Сохраняем график
//
procedure Tclient_stat.SpeedButton4Click(Sender: TObject);
begin
  SavePictureDialog1.Title := 'Сохранить график временной';
  if SavePictureDialog1.Execute then
  begin
    chart_client_stat.SaveToBitmapFile(SavePictureDialog1.FileName);
  end;

  SavePictureDialog1.Title := 'Сохранить график колличественный';
  if SavePictureDialog1.Execute then
  begin
    chart_sale_stat.SaveToBitmapFile(SavePictureDialog1.FileName);
  end;
end;


//
//  Печатаем график
//
procedure Tclient_stat.SpeedButton5Click(Sender: TObject);
begin
  case pc_clients.ActivePageIndex of
  0:  begin
        chart_sale_stat.PrintLandscape;
      end;
  1:  begin
        chart_client_stat.PrintLandscape;
      end;
  end;
end;

end.
