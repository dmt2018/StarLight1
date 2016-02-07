unit deleted_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, Registry, Menus,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCurrencyEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxLookAndFeelPainters, cxButtons, cxGridExportLink, ShellApi, PI_Library_reg;

type
  Tfrm_deleted = class(TForm)
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Panel3: TPanel;
    Panel4: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Panel1: TPanel;
    Label5: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    gr_cashbook: TcxGrid;
    gr_cashbook_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CASH_TMP: TcxGridDBBandedColumn;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    _gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vOPERATION: TcxGridDBBandedColumn;
    gr_cashbook_vNICK: TcxGridDBBandedColumn;
    gr_cashbook_vFIO: TcxGridDBBandedColumn;
    gr_cashbook_vT_SHORT: TcxGridDBBandedColumn;
    gr_cashbook_vINVOICE: TcxGridDBBandedColumn;
    gr_cashbook_vSUMM: TcxGridDBBandedColumn;
    gr_cashbook_vIN_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vIN_USD: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_USD: TcxGridDBBandedColumn;
    gr_cashbook_vIN_EU: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_EU: TcxGridDBBandedColumn;
    gr_cashbook_vINFO: TcxGridDBBandedColumn;
    gr_cashbook_vDDATE_IN: TcxGridDBBandedColumn;
    _gr_cashbook_vDDATE_DONE: TcxGridDBBandedColumn;
    _gr_cashbook_vT_LONG: TcxGridDBBandedColumn;
    _gr_cashbook_vR_PAYDESK: TcxGridDBBandedColumn;
    _gr_cashbook_vR_DDATE: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR: TcxGridDBBandedColumn;
    gr_cashbook_l: TcxGridLevel;
    gr_cashbook_vID_CASH: TcxGridDBBandedColumn;
    gr_cashbook_vD_CHECKED: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR2: TcxGridDBBandedColumn;
    gr_cashbook_vCOR_DATE: TcxGridDBBandedColumn;
    gr_cashbook_vUSER_DELETED: TcxGridDBBandedColumn;
    gr_cashbook_vDATE_DELETED: TcxGridDBBandedColumn;
    gr_cashbook_vCOME_FROM: TcxGridDBBandedColumn;
    Panel5: TPanel;
    btnClose: TcxButton;
    btn_go: TcxButton;
    cxButton1: TcxButton;
    gr_cashbook_vID_OFFICE: TcxGridDBBandedColumn;
    gr_cashbook_vBRIEF: TcxGridDBBandedColumn;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure gr_cashbook_vDDATE_INGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure _gr_cashbook_vDDATE_DONEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure gr_cashbook_vDATE_DELETEDGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btnCloseClick(Sender: TObject);
    procedure gr_cashbook_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    path: string;
  end;

var
  frm_deleted: Tfrm_deleted;

implementation

uses DataM;

{$R *.dfm}

//
//  Отмена фильтров
//
procedure Tfrm_deleted.BitBtn9Click(Sender: TObject);
begin
  if (gr_cashbook.Visible) then
  begin
	  gr_cashbook_v.DataController.Filter.Clear;
	  gr_cashbook_v.DataController.Filter.Active := false;
    gr_cashbook.SetFocus;
  end;
end;


procedure Tfrm_deleted.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure Tfrm_deleted.gr_cashbook_vDATE_DELETEDGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
//      if (AText <> '') then
//          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_cashbook_vDATE_DELETED.Index]);
end;

procedure Tfrm_deleted.gr_cashbook_vDDATE_INGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
//      if (AText <> '') then
//          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_cashbook_vDDATE_IN.Index]);
end;

procedure Tfrm_deleted.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 0);
end;

procedure Tfrm_deleted.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 1);
end;

procedure Tfrm_deleted._gr_cashbook_vDDATE_DONEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
//      if (AText <> '') then
//          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[_gr_cashbook_vDDATE_DONE.Index]);
end;


procedure Tfrm_deleted.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Q_DELETED.Close
end;


procedure Tfrm_deleted.FormCreate(Sender: TObject);
begin
  path := ExtractFilePath(application.ExeName);
  DateTimePicker1.Date    := Date;
  DateTimePicker2.Date    := Date;
  DateTimePicker2.Checked := false;

  gr_cashbook_vBRIEF.Visible := not (GetOfficeID = DM.id_office); //(DM.id_office <= 1);
end;


procedure Tfrm_deleted.N1Click(Sender: TObject);
begin
  gr_cashbook_v.DataController.SelectAll;
end;


procedure Tfrm_deleted.N2Click(Sender: TObject);
begin
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, gr_cashbook, True, False, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    gr_cashbook.SetFocus;
  except
    NULL;
  end;
end;


//
//  Показать данные
//
procedure Tfrm_deleted.BitBtn4Click(Sender: TObject);
begin
  DM.Q_DELETED.Close;

  if (DateTimePicker1.Checked = true) then
  begin
    DM.Q_DELETED.ParamByName('p_date1').AsDate := trunc(DateTimePicker1.DateTime);
    DM.Q_DELETED.ParamByName('p_date2').AsDate := trunc(DateTimePicker1.DateTime);
  end;

  if (DateTimePicker2.Checked = true) then
  begin
    DM.Q_DELETED.ParamByName('p_date1').AsDate := trunc(DateTimePicker1.DateTime);
    DM.Q_DELETED.ParamByName('p_date2').AsDate := trunc(DateTimePicker2.DateTime);
  end;

  if RadioButton3.Checked = true then DM.Q_DELETED.ParamByName('choise_').AsInteger := -1;
  if RadioButton2.Checked = true then DM.Q_DELETED.ParamByName('choise_').AsInteger := 1;
  if RadioButton1.Checked = true then DM.Q_DELETED.ParamByName('choise_').AsInteger := 0;

  try
    DM.Q_DELETED.Open;
    gr_cashbook.Visible := true;
    gr_cashbook.SetFocus;
  except
    on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
  End;
end;



procedure Tfrm_deleted.gr_cashbook_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if (not AViewInfo.Selected) and (gr_cashbook_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('COME_FROM').Index
                );

    // Красим операцию
    if (gr_cashbook_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'PAYDESK') and (val1 = 1) then
    begin
              ACanvas.Brush.Color := Panel2.Color
    end;
  end;
end;


end.
