unit client_choos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, Ora,
  MemDS, DBGridEh, ActnList, GridsEh, ComCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, cxStyles, dxBar, dxBarExtItems,
  cxClasses, DBAccess, DBGridEhGrouping, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxControls, cxGridCustomView,
  cxGrid, Mask, DBCtrlsEh;

type
  TclientchoosForm = class(TForm)
    Panel4: TPanel;
    CLIENTS: TOraQuery;
    CLIENTS_DS: TOraDataSource;
    Oder: TOraQuery;
    Order_DS: TOraDataSource;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Panel5: TPanel;
    Label3: TLabel;
    PanelOrder: TPanel;
    Order_Grid: TDBGridEh;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    ChooseClient_Action: TAction;
    OderID_ORDERS_CLIENTS: TFloatField;
    OderON_DATE: TDateTimeField;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    CLIENTSCCODE: TStringField;
    CLIENTSID_CLIENTS: TIntegerField;
    CLIENTSFIO: TStringField;
    CLIENTSNICK: TStringField;
    CLIENTSBLOCK1: TIntegerField;
    CLIENTSBLOCK2: TIntegerField;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_block_1: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    st_block_2: TcxStyle;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    grid_clients: TcxGrid;
    grid_clients_View: TcxGridDBTableView;
    grid_clients_Level: TcxGridLevel;
    grid_clients_ViewCCODE: TcxGridDBColumn;
    grid_clients_ViewID_CLIENTS: TcxGridDBColumn;
    grid_clients_ViewFIO: TcxGridDBColumn;
    grid_clients_ViewNICK: TcxGridDBColumn;
    grid_clients_ViewBLOCK1: TcxGridDBColumn;
    grid_clients_ViewBLOCK2: TcxGridDBColumn;
    cxStyle1: TcxStyle;
    aSearchByCode: TAction;
    aSearchByFIO: TAction;
    Panel_fill: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit_fill: TDBEditEh;
    aClearFilter: TAction;
    dxBarButton2: TdxBarButton;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    procedure RBOrderClick(Sender: TObject);
    procedure RBScanClick(Sender: TObject);
    procedure RBHandClick(Sender: TObject);
    procedure Client_GridGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure ChooseClient_ActionExecute(Sender: TObject);
    procedure grid_clients_ViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grid_clients_ViewDblClick(Sender: TObject);
    procedure aSearchByCodeExecute(Sender: TObject);
    procedure aSearchByFIOExecute(Sender: TObject);
    procedure DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aClearFilterExecute(Sender: TObject);
  private
    param_: integer;
    { Private declarations }
  public
    procedure search_execute(param: integer);
    { Public declarations }
  end;

var
  clientchoosForm: TclientchoosForm;

implementation

uses DataM, nacl_new;

{$R *.dfm}


//
//  Открытие формы
//
procedure TclientchoosForm.FormCreate(Sender: TObject);
begin
  try
    screen.cursor := crHourGlass;
    CLIENTS.Close;
    screen.cursor  := crdefault;
    CLIENTS.Open;
  except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка открытия клиентов', MB_ICONERROR);
        end;
  End;
end;


//
//  Красим грид
//
procedure TclientchoosForm.grid_clients_ViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if (not AViewInfo.Selected) and (grid_clients_View.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') then
  begin
    val1  := grid_clients_View.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_clients_View.GetColumnByFieldName('BLOCK1').Index
                );
    if (val1 = 1) then
         ACanvas.Brush.Color := st_block_1.Color;

    val1  := grid_clients_View.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_clients_View.GetColumnByFieldName('BLOCK2').Index
                );
    if (val1 = 1) then
         ACanvas.Brush.Color := st_block_2.Color;
  end;
end;







// Ctrl+Enter
procedure TclientchoosForm.ChooseClient_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;
procedure TclientchoosForm.grid_clients_ViewDblClick(Sender: TObject);
begin
  BitBtnSave.Click;
end;



procedure TclientchoosForm.RBOrderClick(Sender: TObject);
begin
  Order_Grid.Visible:=true;
  Order_Grid.Enabled:=true;
end;

procedure TclientchoosForm.RBScanClick(Sender: TObject);
begin
  Order_Grid.Visible:=false;
  Order_Grid.Enabled:=false;
end;

procedure TclientchoosForm.RBHandClick(Sender: TObject);
begin
  Order_Grid.Visible:=false;
  Order_Grid.Enabled:=false;
end;

procedure TclientchoosForm.Client_GridGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('BLOCK1').AsInteger <> 0 then
  begin
    if (Column.Index=0) then
    begin
      Background := clRed;
      AFont.Color := clWhite;
    end;
  end;
end;






procedure TclientchoosForm.aClearFilterExecute(Sender: TObject);
begin
  grid_clients_View.DataController.Filter.Clear;
end;

procedure TclientchoosForm.aSearchByCodeExecute(Sender: TObject);
begin
  search_execute(1);
end;
procedure TclientchoosForm.aSearchByFIOExecute(Sender: TObject);
begin
  search_execute(2);
end;
//
//  Поиск
//
procedure TclientchoosForm.search_execute(param: integer);
begin
    param_             := param;
    Panel_fill.Left    := trunc(grid_clients.Width / 2) - 90;
    Panel_fill.Top     := trunc(grid_clients.Height / 2) - 20;
    Panel_fill.Visible := true;
    DBEdit_fill.SetFocus;
end;
//
//  Принимаем фильтр
//
procedure TclientchoosForm.DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_clients.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    grid_clients_View.DataController.Filter.Clear;
    if (param_ = 1) then
       grid_clients_ViewNICK.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');
    if (param_ = 2) then
       grid_clients_ViewFIO.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');

    grid_clients_View.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    DBEdit_fill.Text := '';
    grid_clients.SetFocus;
  end;
end;

end.
