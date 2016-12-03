unit UNewOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxContainer, cxCurrencyEdit, DBAccess, Ora, MemDS, ActnList, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, Math, StrUtils;

type
  TfrmNewOrder = class(TForm)
    Panel3: TPanel;
    btnSave: TcxButton;
    cxButton1: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label19: TLabel;
    edit_serchnick: TEdit;
    Label20: TLabel;
    edit_serchfio: TEdit;
    btn_filtron: TcxButton;
    cxButton2: TcxButton;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    ActionList1: TActionList;
    aSerchNick: TAction;
    aSave: TAction;
    aFiltrOn: TAction;
    aFiltrOff: TAction;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    Label2: TLabel;
    edQuantity: TcxCurrencyEdit;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    st_notactive: TcxStyle;
    lblPack: TLabel;
    procedure aSerchNickExecute(Sender: TObject);
    procedure aFiltrOnExecute(Sender: TObject);
    procedure aFiltrOffExecute(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aSaveExecute(Sender: TObject);
  private
    C_ID_ORDERS, CUR_NID, MAX_Q, vPack: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewOrder: TfrmNewOrder;

function NewOrder(in_order: Variant; in_nid: integer; in_q: integer; in_client: integer) : Variant;

implementation

uses DataModule;

{$R *.dfm}

function NewOrder(in_order: Variant; in_nid: integer; in_q: integer; in_client: integer) : Variant;
var sql : string;
Begin
  Application.CreateForm(TfrmNewOrder, frmNewOrder);

  with frmNewOrder do
    Begin
      try
        if Pos( ',', VarToStr(in_order) ) > 0 then
          C_ID_ORDERS := StrToInt( Copy( VarToStr(in_order), 0, Pos( ',', VarToStr(in_order) )-1 ) )
        else
          C_ID_ORDERS := in_order;

        CUR_NID       := in_nid;
        vPack         := 0;

  with DM.SelQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select pack from nomenclature where n_id ='+IntToStr(in_nid));
    Open;
    if recordcount > 0 then vPack := FieldByName('pack').AsInteger
  end;
        lblPack.Caption := 'упаковка по '+IntToStr(vPack)+' шт.';


        MAX_Q         := in_q;
        Q_CLIENTS.Filter   := '';
        Q_CLIENTS.Filtered := false;
        Q_CLIENTS.Open;
        if in_client > 0 then
           Q_CLIENTS.Locate('id_clients',in_client,[]);
        
        btnSave.Tag := 0;
        edQuantity.EditValue := MAX_Q;

        if ShowModal <> mrOk then Exit;
        Result := btnSave.Tag;
      finally
        free;
      end;
    End;
End;





procedure TfrmNewOrder.aFiltrOffExecute(Sender: TObject);
begin
  edit_serchnick.Text := '';
  edit_serchfio.Text  := '';
  gr_clients_v.DataController.Filter.Clear;
  gr_clients_v.DataController.Filter.Active := false;
end;

procedure TfrmNewOrder.aFiltrOnExecute(Sender: TObject);
begin
  if trim(edit_serchnick.Text) <> '' then
  begin
	  gr_clients_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchnick.Text + '%',
        edit_serchnick.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;

  if trim(edit_serchfio.Text) <> '' then
  begin
	  gr_clients_vFIO.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchfio.Text + '%',
        edit_serchfio.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;
end;



procedure TfrmNewOrder.aSaveExecute(Sender: TObject);
var SQLstr : string;
    id_ord_cl, id_ord_list: integer;
begin
  if (not gr_clients_v.DataController.DataSet.Active) and (gr_clients_v.ViewData.RecordCount = 0) then exit;

  if (vPack > 0) and (edQuantity.EditValue mod vPack > 0) then
  begin
    Application.MessageBox(PChar('Вводимое значение ('+VarToStr(edQuantity.EditValue)+') не кратно пачке ('+IntToStr(vPack)+')'),'Внимание!',MB_ICONWARNING);
    exit;
  end;

  if MAX_Q < edQuantity.EditValue then
  begin
    Application.MessageBox(PChar('Максимальное значение ='+IntToStr(MAX_Q)),'Внимание!',MB_ICONWARNING);
    exit;
  end;


  btnSave.Tag := 0;
  id_ord_cl   := 0;
  edQuantity.PostEditValue;

  // Попробуем найти клиента в этом заказе
  with DM.SelQ do
  begin
    Close;
    SQLstr := 'select id_orders_clients from orders_clients where id_orders ='+IntToStr(C_ID_ORDERS)+' and IN_FILE = ''добор из разноса'' and active=1 and PACK_=0 and ID_CLIENTS='+Q_CLIENTS.FieldByName('ID_CLIENTS').AsString;
    SQL.Clear;
    SQL.Add(SQLstr);
    Open;
    if recordcount > 0 then
      id_ord_cl := FieldByName('id_orders_clients').AsInteger
    else
    begin
      // Создадим новый заказ клиента
      Close;
      SQL.Clear;
      SQL.Add('begin PACK_ORDERS.save_new_order(:id_, :ID_ORDERS_F_, :ID_CLIENT_, :DDATE_, :user_, :NN_, :v_file); end; ');
      ParamByName('id_').Value := 0;
      ParamByName('ID_ORDERS_F_').Value := C_ID_ORDERS;
      ParamByName('ID_CLIENT_').Value   := Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
      ParamByName('user_').AsString     := UpperCase(DM.StarSess.Username);
      ParamByName('DDATE_').AsDateTime  := Date;
      ParamByName('NN_').Value          := 0;
      ParamByName('v_file').AsString    := 'добор из разноса';

      // Пытаемся выполнить SQL запрос
      try
        Execute;
        id_ord_cl := ParamByName('id_').AsInteger;

        Close;
        SQL.Clear;
        SQL.Add( 'update ORDERS_CLIENTS set N_TYPE=2 where ID_ORDERS_CLIENTS='+IntToStr(id_ord_cl) );
        Execute;

      except
        on E: Exception do ShowMessage('Ошибка записи!'#13#10+E.Message);
      End;
    end;


    if (id_ord_cl > 0) then
    begin
      DM.SelQ.Tag := edQuantity.EditValue;
      id_ord_list := 0;
      Close;
      SQL.Clear;
      SQL.Add('begin distribution_pkg.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :Q_NUM_, :TRUCK, :sub_weight, :v_site_data, :v_id); end;');
      ParamByName('ID_ORDERS_CLIENTS').Value  := id_ord_cl;
      ParamByName('N_ID').Value               := CUR_NID;
      ParamByName('Q_NUM_').Value             := edQuantity.EditValue;
      ParamByName('TRUCK').Value              := 0;
      ParamByName('sub_weight').Value         := 0;
      ParamByName('v_site_data').Value        := '';
      ParamByName('v_id').Value               := id_ord_list;

      // Пытаемся выполнить SQL запрос
      try
        Execute;
        id_ord_list := ParamByName('v_id').Value;
        btnSave.Tag := id_ord_list;
        Close;
{
        SQL.Clear;
        SQL.Add('SELECT creator.ORDERS_LIST_SEQ.CURRVAL as nn FROM DUAL');
        Open;
        btnSave.Tag := id_ord_list; FieldByName('nn').AsInteger;
}
        ModalResult := mrOk;
      except
        on E: Exception do ShowMessage('Ошибка записи!'#13#10+E.Message);
      End;
    end;

  end;
  

end;



procedure TfrmNewOrder.aSerchNickExecute(Sender: TObject);
begin
  edit_serchnick.SetFocus;
end;

procedure TfrmNewOrder.gr_clients_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if {(not AViewInfo.Selected) and} (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Блок кредитом
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    if (val1 = 1) then
         ACanvas.Brush.Color := st_block2.Color;

    // Блок бухом
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );
    if (val2 = 1) then
         ACanvas.Brush.Color := st_block1.Color;
  end;
end;


end.
