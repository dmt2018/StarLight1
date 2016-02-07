unit edit_list_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList, DBCtrls,
  ActnList, Ora, MemDS, DBAccess, GridsEh, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxSpinEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  Tedit_list = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    ActionList1: TActionList;
    aEnter: TAction;
    Panel4: TPanel;
    pRed: TPanel;
    Label1: TLabel;
    Panel7: TPanel;
    EDIT_LIST: TOraQuery;
    EDIT_LIST_DS: TOraDataSource;
    BitBtnSave: TcxButton;
    grid_newnom: TcxGrid;
    grid_newnom_v: TcxGridDBTableView;
    _rp_N_ID: TcxGridDBColumn;
    rp_CODE: TcxGridDBColumn;
    rp_H_CODE: TcxGridDBColumn;
    rp_f_type: TcxGridDBColumn;
    rp_F_SUB_TYPE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_COUNTRY: TcxGridDBColumn;
    rp_QUANTITY_NEW: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    rp_PRICE_QUANTITY: TcxGridDBColumn;
    grid_newnom_l: TcxGridLevel;
    Enter: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure grid_newnom_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure EnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  edit_list: Tedit_list;

implementation

uses DataM, Edit_Quantity, doc_view;

{$R *.dfm}


//
//  Создание формы
//
procedure Tedit_list.FormCreate(Sender: TObject);
begin
  try
    EDIT_LIST.Close;
    EDIT_LIST.Open;
  except
    on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка открытия данных!', MB_ICONERROR);
  End;
end;


//
//  На закрытие формы
//
procedure Tedit_list.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


//
//  Ctrl+Enter
//
procedure Tedit_list.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


//
//  Красим грид
//
procedure Tedit_list.grid_newnom_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  var1 : Variant;
begin
  var1 := grid_newnom_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grid_newnom_v.GetColumnByFieldName('QUANTITY_NEW').Index
          );

  if (var1 <> 0) and (var1 <> null) then
  begin
    ACanvas.Font.Color := clWhite;
    ACanvas.Brush.Color := pRed.Color;
  end;
end;


//
//  Постим данные по ENTER
//
procedure Tedit_list.EnterExecute(Sender: TObject);
begin
  if grid_newnom_v.DataController.DataSet.State = dsEdit then grid_newnom_v.DataController.DataSet.Post;
end;


end.
