unit UClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxCheckBox;

type
  TfrmClientList = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    grReg: TcxGrid;
    grRegV: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    grRegL: TcxGridLevel;
    CDS_CLIENT_LIST: TOraQuery;
    DS_CLIENT_LIST: TOraDataSource;
    CDS_CLIENT_LISTNICK: TStringField;
    CDS_CLIENT_LISTQUANTITY: TFloatField;
    CDS_CLIENT_LISTWEIGHT: TFloatField;
    CDS_CLIENT_LISTCORRECTION: TFloatField;
    grRegVCORRECTION: TcxGridDBColumn;
    edMain: TcxCurrencyEdit;
    btnSetToMain: TcxButton;
    stRepClientList: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDS_CLIENT_LISTSRC_NICK: TStringField;
    CDS_CLIENT_LISTSRC_ALPHA: TStringField;
    CDS_CLIENT_LISTID_ORDERS_CLIENTS: TFloatField;
    CDS_CLIENT_LISTN_ID: TFloatField;
    CDS_CLIENT_LISTPACK_: TIntegerField;
    CDS_CLIENT_LISTZATIRKA: TIntegerField;
    grRegVSRC_NICK: TcxGridDBColumn;
    grRegVSRC_ALPHA: TcxGridDBColumn;
    grRegVID_ORDERS_CLIENTS: TcxGridDBColumn;
    grRegVN_ID: TcxGridDBColumn;
    grRegVPACK_: TcxGridDBColumn;
    grRegVZATIRKA: TcxGridDBColumn;
    CDS_CLIENT_LISTID_ORDERS: TFloatField;
    CDS_CLIENT_LISTTRUCK: TIntegerField;
    grRegVID_ORDERS: TcxGridDBColumn;
    grRegVTRUCK: TcxGridDBColumn;
    procedure grRegVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grRegVEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSetToMainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function ShowClientList(order: integer; id: integer; data_type: integer): boolean;

var
  frmClientList: TfrmClientList;

implementation

uses frm_DM;

{$R *.dfm}

function ShowClientList(order: integer; id: integer; data_type: integer): boolean;
begin
  Application.CreateForm(TfrmClientList, frmClientList);
  Result := false;

  with frmClientList do
  begin
    try
      CDS_CLIENT_LIST.ParamByName('p_id_orders').AsInteger := order;
      CDS_CLIENT_LIST.ParamByName('p_fst_id').Value := NULL;
      CDS_CLIENT_LIST.ParamByName('p_ft_id').Value  := NULL;
      CDS_CLIENT_LIST.ParamByName('p_n_id').Value   := NULL;

      case data_type of
        0: begin Caption := 'Список клиентов заказавших тип';     CDS_CLIENT_LIST.ParamByName('p_ft_id').AsInteger  := id; end;
        1: begin Caption := 'Список клиентов заказавших подтип';  CDS_CLIENT_LIST.ParamByName('p_fst_id').AsInteger := id; end;
        2: begin Caption := 'Список клиентов заказавших позицию'; CDS_CLIENT_LIST.ParamByName('p_n_id').AsInteger   := id; end;
      end;

      CDS_CLIENT_LIST.ParamByName('cursor_').AsCursor;
      CDS_CLIENT_LIST.Open;

      if ShowModal <> mrOk then exit;
      result := true;
    finally
      Free;
    end;
  end;
end;

procedure TfrmClientList.btnSetToMainClick(Sender: TObject);
begin
      try
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin pack_orders.edit_clients_statistic(0, :p_id_orders, :N_ID, :CORRECTION); end;');
        DM.Q_SQL.ParamByName('p_id_orders').AsInteger := CDS_CLIENT_LIST.ParamByName('p_id_orders').AsInteger;
        DM.Q_SQL.ParamByName('N_ID').AsInteger := CDS_CLIENT_LISTN_ID.AsInteger;
        DM.Q_SQL.ParamByName('CORRECTION').AsInteger := edMain.EditValue;
        DM.Q_SQL.Execute;
        CDS_CLIENT_LIST.Refresh;
      except
        on E: Exception do
           MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
        End;
end;

procedure TfrmClientList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CDS_CLIENT_LIST.State = dsEdit then CDS_CLIENT_LIST.Post;  
end;

procedure TfrmClientList.grRegVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var pack, zatirka: Variant;
begin
    begin
      pack := grRegV.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grRegV.GetColumnByFieldName('PACK_').Index
                );
      zatirka := grRegV.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grRegV.GetColumnByFieldName('ZATIRKA').Index
                );
      if (pack = 1) or (zatirka = 1) then
      begin
        //ACanvas.Font.Style := [];
        ACanvas.Brush.Color := $00E0E0E0;
        ACanvas.Font.Color := clBlack;
      end;
    end;
end;

procedure TfrmClientList.grRegVEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := (CDS_CLIENT_LISTPACK_.AsInteger = 0) and (CDS_CLIENT_LISTZATIRKA.AsInteger = 0);
end;

end.
