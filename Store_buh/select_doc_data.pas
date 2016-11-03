unit select_doc_data;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, Menus, DBCtrls,
  DB, Ora, MemDS, DBAccess, GridsEh, cxLookAndFeelPainters, ActnList,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxSpinEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxCheckBox;

type
  TSelectDocDataForm = class(TForm)
    Label4: TLabel;
    DBText2: TDBText;
    Panel2: TPanel;
    Panel1: TPanel;
    Label8: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label9: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    Panel3: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DB_DOC_DATE: TDBText;
    DB_NICK: TDBText;
    DB_FIO: TDBText;
    Image1: TImage;
    DB_Comments: TDBText;
    doc_store: TOraQuery;
    doc_store_DS: TOraDataSource;
    doc_store_data: TOraQuery;
    doc_store_data_DS: TOraDataSource;
    BitBtnSave: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    Enter: TAction;
    grid_naklad: TcxGrid;
    grid_naklad_v: TcxGridDBTableView;
    _rp_N_ID: TcxGridDBColumn;
    rp_CODE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_QUANTITY: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    rp_PRICE_QUANTITY: TcxGridDBColumn;
    rp_COUNTRY: TcxGridDBColumn;
    rp_H_CODE: TcxGridDBColumn;
    grid_naklad_l: TcxGridLevel;
    rp_STORE_TYPE_NAME: TcxGridDBColumn;
    DBText1: TDBText;
    strNakls: TcxStyleRepository;
    stEditable: TcxStyle;
    doc_store_dataID_DOC_TYPE: TFloatField;
    doc_store_dataID_DOC_DATA: TFloatField;
    doc_store_dataID_DOC: TFloatField;
    doc_store_dataQUANTITY: TFloatField;
    doc_store_dataPRICE: TFloatField;
    doc_store_dataPRICE_OLD: TFloatField;
    doc_store_dataGTD: TStringField;
    doc_store_dataF_NAME_RU: TStringField;
    doc_store_dataN_ID: TFloatField;
    doc_store_dataLEN: TIntegerField;
    doc_store_dataPACK: TIntegerField;
    doc_store_dataCOL_ID: TFloatField;
    doc_store_dataCOLOUR: TStringField;
    doc_store_dataF_TYPE: TStringField;
    doc_store_dataF_SUB_TYPE: TStringField;
    doc_store_dataFT_ID: TFloatField;
    doc_store_dataFST_ID: TFloatField;
    doc_store_dataCOUNTRY: TStringField;
    doc_store_dataC_ID: TFloatField;
    doc_store_dataH_CODE: TStringField;
    doc_store_dataSPESIFICATION: TStringField;
    doc_store_dataCODE: TStringField;
    doc_store_dataPRICE_DIFFERENCE: TFloatField;
    doc_store_dataPRICE_BEZ_NDS: TFloatField;
    doc_store_dataSUMM_BEZ_NDS: TFloatField;
    doc_store_dataSUMM_NDS: TFloatField;
    doc_store_dataFULL_NAME: TStringField;
    doc_store_dataPRICE_QUANTITY: TFloatField;
    doc_store_dataCOMPILED_NAME_OTDEL: TStringField;
    doc_store_dataSPEC_PRICE: TIntegerField;
    priznak: TcxGridDBColumn;
    procedure doc_storeAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure grid_naklad_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  doc_id: integer;
  documenttype_name: string;
  end;

var
  SelectDocDataForm: TSelectDocDataForm;


implementation

{$R *.dfm}

uses dataM, select_doc;


//
//  Открытие формы
//
procedure TSelectDocDataForm.FormShow(Sender: TObject);
begin
  try
    screen.cursor := crHourGlass;

    doc_store.Close;
    doc_store.ParamByName('ID_DOC').AsInteger := doc_id;
    doc_store.Open;

    if (doc_store.FieldByName('ID_DOC_TYPE').AsInteger = 4) then
      Label1.Caption :='НАКЛАДНАЯ ПРОДАЖИ № ' + doc_store.FieldByName('STORE_DOC_NUMBER').AsString
    else
      Label1.Caption := doc_store.FieldByName('buh_doc_type_name').AsString + ' № ' + doc_store.FieldByName('NUMBER_FULL').AsString;;

    screen.cursor := crdefault;
  except
    on E: Exception do
     begin
       screen.cursor := crdefault;
       MessageBox(Handle, PChar(E.Message), 'Не удалось открыть данные!', MB_ICONERROR);
     end;
  End;
end;


procedure TSelectDocDataForm.grid_naklad_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var val1: variant;
begin
    val1  := grid_naklad_v.DataController.GetValue(
  AViewInfo.GridRecord.RecordIndex, grid_naklad_v.GetColumnByFieldName('COMPILED_NAME_OTDEL').Index
                );
    if pos('!',val1)<>0 then
         ACanvas.Brush.Color := clmoneygreen;
end;

//
//  После открытия накладной открываем данные
//
procedure TSelectDocDataForm.doc_storeAfterOpen(DataSet: TDataSet);
begin
  try
    doc_store_data.Close;
    doc_store_data.SQL.Add('ORDER BY N_ID');
    doc_store_data.Open;
  except
    on E: Exception do
     begin
       screen.cursor := crdefault;
       MessageBox(Handle, PChar(E.Message), 'Не удалось открыть данные!', MB_ICONERROR);
     end;
  End;

end;


//
// Нажимаем Ctrl+Enter
//
procedure TSelectDocDataForm.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
