unit UOldPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxProgressBar, StdCtrls, Buttons, MemDS, DBAccess, Ora, DBGridEhGrouping;

type
  TfrmOldPrice = class(TForm)
    Panel3: TPanel;
    btnClose: TBitBtn;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Image5: TImage;
    btnSave: TBitBtn;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    btnLoad: TBitBtn;
    cxLabel1: TcxLabel;
    lbStat: TcxLabel;
    Image3: TImage;
    odOrder: TOpenDialog;
    qOrder: TQuery;
    DataSource2: TDataSource;
    pnlDBF: TPanel;
    grOrder: TDBGridEh;
    qOrderKOD: TStringField;
    qOrderPIX: TStringField;
    qOrderTRU: TStringField;
    qOrderCODE: TStringField;
    qOrderFLOW: TFloatField;
    qOrderTITLE: TStringField;
    qOrderDAT: TDateField;
    qOrderNN: TSmallintField;
    qOrderHFL: TFloatField;
    qOrderRU: TFloatField;
    qOrderCOL: TFloatField;
    qOrderCOLI: TFloatField;
    qOrderCONST1: TFloatField;
    qOrderCONST2: TFloatField;
    qOrderRU2: TFloatField;
    qOrderKOE: TFloatField;
    qOrderBAL: TFloatField;
    qOrderSTOCK: TFloatField;
    qOrderHFL2: TFloatField;
    qOrderPRIZN: TBooleanField;
    qOrderSTARNOV: TStringField;
    qOrderNEW: TSmallintField;
    qOrderSPEC: TSmallintField;
    qOrderIR: TStringField;
    qOrderGR: TSmallintField;
    qOrderGTD: TStringField;
    qOrderGROEP: TStringField;
    qOrderGROEPRU: TStringField;
    qOrderKLEUR: TStringField;
    qOrderCOUNTRY: TStringField;
    qTMP: TOraQuery;
    btnRefresh: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function OpenForShowModal: integer;

var
  frmOldPrice: TfrmOldPrice;

implementation

uses  dataM;

{$R *.dfm}


function OpenForShowModal: integer;
begin
  Application.CreateForm(TfrmOldPrice, frmOldPrice);
  try
    frmOldPrice.qOrder.Close;
    frmOldPrice.btnSave.Enabled := false;
    Result := frmOldPrice.ShowModal;
  finally
    frmOldPrice.Free;
  end;
end;

// Открыть файл
procedure TfrmOldPrice.btnLoadClick(Sender: TObject);
var FullFileName: string;
begin
  if DateTimePicker1.Date > DateTimePicker2.Date then
  begin
    Application.MessageBox('Первая дата не может быть больше второй!', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  if not odOrder.Execute then exit;

  try
    FullFileName := odOrder.FileName;
    with qOrder do
    begin
      Close;
      SQL.Text := 'SELECT * FROM "'+FullFileName+'" where DAT >= '''+DateToStr(DateTimePicker1.Date)+''' and DAT <= '''+DateToStr(DateTimePicker2.Date)+'''';
      Open;
      btnSave.Enabled   := not qOrder.IsEmpty;
      if qOrder.IsEmpty then
      begin
        Application.MessageBox('Файл пуст!', 'Внимание', MB_ICONWARNING);
        Exit;
      end;
    end;
  Except on E:Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
      Exit;
    end;
  End;
end;

// Запись в БД
procedure TfrmOldPrice.btnSaveClick(Sender: TObject);
var sql: string;
begin
  try
    sql := 'begin store_pkg.sync_price_list(:v_code, :v_price); end;';
    qTMP.Close;
    qTMP.sql.text := sql;

    pg_main.Properties.Max := qOrder.RecordCount;
    pg_main.Position := 0;
    pnl_progress.Visible := true;
    pnl_progress.Repaint;

    with qOrder do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        qTMP.ParamByName('v_code').AsString    := FieldByName('CODE').AsString;
        qTMP.ParamByName('v_price').AsCurrency := FieldByName('RU').AsCurrency;
//        qTMP.ParamByName('v_gtd').AsString     := FieldByName('GTD').AsString;
        qTMP.Execute;
        Next;
        pg_main.Position := RecNo;
        pg_main.Repaint;
      end;
      EnableControls;
    end;
    Application.MessageBox('Данные обновлены!', 'Результат', MB_ICONINFORMATION);
    pnl_progress.Visible := false;
    pnl_progress.Repaint;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;


procedure TfrmOldPrice.FormShow(Sender: TObject);
begin
    DateTimePicker1.EditValue := Now();
    DateTimePicker2.EditValue := Now();
end;


// Обновить данные
procedure TfrmOldPrice.btnRefreshClick(Sender: TObject);
var FullFileName: string;
begin
  if not qOrder.Active then exit;

  try
    FullFileName := odOrder.FileName;
    with qOrder do
    begin
      Close;
      SQL.Text := 'SELECT * FROM "'+FullFileName+'" where DAT >= '''+DateToStr(DateTimePicker1.Date)+''' and DAT <= '''+DateToStr(DateTimePicker2.Date)+'''';
      Open;
      btnSave.Enabled   := not qOrder.IsEmpty;
      if qOrder.IsEmpty then
      begin
        Application.MessageBox('Файл пуст!', 'Внимание', MB_ICONWARNING);
        Exit;
      end;
    end;
  Except on E:Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
      Exit;
    end;
  End;
end;


end.
