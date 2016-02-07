unit select_doc_data;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, Menus, DBCtrls,
  DB, Ora, MemDS, DBAccess, GridsEh, cxLookAndFeelPainters, ActnList,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxSpinEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit;

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
    procedure doc_storeAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
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
