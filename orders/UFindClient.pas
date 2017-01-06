unit UFindClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls, DB, MemDS,
  DBAccess, Ora, ActnList, DBGridEhGrouping;

type
  Tfrm_find_client = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Label2: TLabel;
    DBGridEh2: TDBGridEh;
    cds_client_orders: TOraQuery;
    ds_client_orders: TOraDataSource;
    Label3: TLabel;
    Label4: TLabel;
    ActionList1: TActionList;
    add: TAction;
    edit: TAction;
    Ctrl_Enter: TAction;
    filter_on: TAction;
    filter_off: TAction;
    cds_client_ordersNN: TFloatField;
    cds_client_ordersID_ORDERS: TFloatField;
    cds_client_ordersINVOICE: TFloatField;
    cds_client_ordersD_DATE: TDateTimeField;
    cds_client_ordersDATE_TRUCK: TDateTimeField;
    cds_client_ordersDATE_TRUCK_OUT: TDateTimeField;
    cds_client_ordersINFO: TStringField;
    cds_client_ordersID_ORDERS_CLIENTS: TFloatField;
    cds_client_ordersALPHA: TStringField;
    cds_client_ordersID_CLIENTS: TIntegerField;
    cds_client_ordersPACK_: TIntegerField;
    cds_client_ordersS_ID: TIntegerField;
    cds_client_ordersS_NAME_RU: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure filter_onExecute(Sender: TObject);
    procedure filter_offExecute(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_find_client: Tfrm_find_client;

implementation

uses frm_DM, UShowOrder, frm_first_dialog;

{$R *.dfm}

procedure Tfrm_find_client.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGridEh1.SumList.Active := false;
  DBGridEh2.SumList.Active := false;
end;

procedure Tfrm_find_client.FormShow(Sender: TObject);
begin
  DBGridEh1.Font.Size := first_dialog_frm.uFont;
  DBGridEh2.Font.Size := first_dialog_frm.uFont;
  DBGridEh1.SumList.Active := true;
  DBGridEh2.SumList.Active := true;
end;

procedure Tfrm_find_client.filter_onExecute(Sender: TObject);
begin
  DBGridEh1.ApplyFilter;
  DBGridEh2.ApplyFilter;
end;

procedure Tfrm_find_client.filter_offExecute(Sender: TObject);
begin
  DBGridEh1.ClearFilter;
  DBGridEh2.ClearFilter;
end;

procedure Tfrm_find_client.DBGridEh2DblClick(Sender: TObject);
begin
  DM.ShowInfoAboutOrder(cds_client_orders.FieldByName('ID_ORDERS').AsInteger, cds_client_orders.FieldByName('DATE_TRUCK_OUT').AsString, DM.Q_CLIENTSID_CLIENTS.AsInteger, cds_client_orders.FieldByName('ALPHA').AsString, cds_client_orders.FieldByName('id_orders_clients').AsInteger);
end;

procedure Tfrm_find_client.BitBtn1Click(Sender: TObject);
begin
  if (DM.Q_CLIENTSID_CLIENTS.AsInteger > 0) then
  begin
    if (cds_client_orders.FieldByName('ID_ORDERS').AsInteger > 0) then ModalResult := mrOk
    else ShowMessage('Надо указать заказ!')
  end else ShowMessage('Надо указать клиента!')
end;

end.
