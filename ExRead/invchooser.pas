unit invchooser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, DB, Ora, MemDS,
  GridsEh, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxCheckBox,
  cxTextEdit, cxCalendar, cxCurrencyEdit, cxProgressBar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters,
  cxButtons, DBAccess;

type
  TinvchooserForm = class(TForm)
    Panel1: TPanel;
    Invoices: TOraQuery;
    Invoices_DS: TOraDataSource;
    InvoicesINV_ID: TFloatField;
    InvoicesINV_DATE: TDateTimeField;
    InvoicesCOMMENTS: TStringField;
    Panel9: TPanel;
    Panel2: TPanel;
    grid_invoices: TcxGrid;
    grid_invoicesView1: TcxGridDBTableView;
    invD_CHECK: TcxGridDBColumn;
    INV_ID: TcxGridDBColumn;
    INV_DATE: TcxGridDBColumn;
    SUPPLIER_DATE: TcxGridDBColumn;
    SUPPLIER_NUMBER: TcxGridDBColumn;
    SENDED_TO_WAREHOUSE: TcxGridDBColumn;
    COMMENTS: TcxGridDBColumn;
    IPP_COMMENT: TcxGridDBColumn;
    TOTAL_SUM: TcxGridDBColumn;
    AS_IS_POS: TcxGridDBColumn;
    READY_POS: TcxGridDBColumn;
    procent_d: TcxGridDBColumn;
    grid_invoicesView1INV_SUM: TcxGridDBColumn;
    grid_invoicesView1WAREHOUSE_SENDED_DATE: TcxGridDBColumn;
    grid_invoicesView1IPP_ID: TcxGridDBColumn;
    grid_invoicesView1S_ID_DEFAULT: TcxGridDBColumn;
    grid_invoicesView1C_ID_DEFAULT: TcxGridDBColumn;
    grid_invoicesView1AS_IS_UNITS: TcxGridDBColumn;
    grid_invoicesView1READY_UNITS: TcxGridDBColumn;
    grid_invoicesLevel1: TcxGridLevel;
    btn_store_close: TcxButton;
    cxButton1: TcxButton;
    InvoicesINV_SUM: TFloatField;
    InvoicesIPP_ID: TFloatField;
    InvoicesIPP_COMMENT: TStringField;
    InvoicesID_DEPARTMENTS: TFloatField;
    InvoicesSUPPLIER_DATE: TDateTimeField;
    InvoicesSUPPLIER_NUMBER: TStringField;
    InvoicesTOTAL_SUM: TFloatField;
    InvoicesIS_MINUS: TFloatField;
    grid_invoicesView1ID_DEPARTMENTS: TcxGridDBColumn;
    grid_invoicesView1IS_MINUS: TcxGridDBColumn;
    InvoicesS_NAME_RU: TStringField;
    grid_invoicesView1S_NAME_RU: TcxGridDBColumn;
    InvoicesLOWQ: TFloatField;
    grid_invoicesView1LOWQ: TcxGridDBColumn;
    InvoicesCOUNTRY_GTD: TIntegerField;
    InvoicesS_ID_DEFAULT: TFloatField;
    InvoicesC_ID_DEFAULT: TFloatField;
    grid_invoicesView1COUNTRY_GTD: TcxGridDBColumn;
    InvoicesAS_IS_POS: TFloatField;
    procedure grid_invoicesView1DblClick(Sender: TObject);
    procedure grid_invoicesView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  invchooserForm: TinvchooserForm;

implementation

{$R *.dfm}
uses DataModule;

procedure TinvchooserForm.grid_invoicesView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  str_tmp : variant;
begin
  if not AViewInfo.Selected then
  begin
    // красим одинаковые позиции
    str_tmp := grid_invoicesView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoicesView1.GetColumnByFieldName('LOWQ').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := clRed;
  end;
end;

procedure TinvchooserForm.grid_invoicesView1DblClick(Sender: TObject);
var cds: TOraQuery;
begin
  if (Invoices.Active) and (Invoices.RecordCount > 0) then
  begin
    cds := TOraQuery.Create(invchooserForm);
    try
      cds.SQL.Add('select is_invoice_valid('+InvoicesINV_ID.AsString+') from dual');
      cds.Open;
      if cds.Fields[0].AsInteger > 0 then
         MessageBox(Handle, PChar('В инвойсе №'+InvoicesINV_ID.AsString+' есть позиции без ГТД ('+cds.Fields[0].AsString+' шт.)'), 'Внимание!', MB_ICONERROR);
      ModalResult := mrOk;
    finally
      cds.Free;
    end;
  end;
end;

end.
