unit UCopyOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, DBGridEhGrouping, StdCtrls, Mask,
  DBCtrlsEh, GridsEh, DBGridEh, cxButtons, ExtCtrls, ActnList, DB, DBAccess,
  Ora, MemDS;

type
  TfrmCopyOrder = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    pnlNew: TPanel;
    grCurOrders: TDBGridEh;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DateTimePicker2: TDBDateTimeEditEh;
    DateTimePicker3: TDBDateTimeEditEh;
    DateTimePicker1: TDBDateTimeEditEh;
    Label2: TLabel;
    btnNew: TcxButton;
    ActionList1: TActionList;
    Ctrl_Enter: TAction;
    Q_ORDERS: TOraQuery;
    Q_ORDERS_DS: TOraDataSource;
    Q_ORDERSID_ORDERS: TFloatField;
    Q_ORDERSINVOICE: TFloatField;
    Q_ORDERSD_DATE: TDateTimeField;
    Q_ORDERSDATE_TRUCK: TDateTimeField;
    Q_ORDERSDATE_TRUCK_OUT: TDateTimeField;
    Q_ORDERSINFO: TStringField;
    Q_ORDERSNUMM: TFloatField;
    Q_ORDERSORDER_SEQ: TFloatField;
    Q_ORDERSS_ID: TIntegerField;
    Q_ORDERSS_NAME_RU: TStringField;
    procedure btnNewClick(Sender: TObject);
    procedure grCurOrdersDblClick(Sender: TObject);
    procedure Ctrl_EnterExecute(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    idClientOrder: integer;
    { Public declarations }
  end;

var
  frmCopyOrder: TfrmCopyOrder;

  function OpenFormForEdit(idClientOrder: integer): variant;

implementation

uses frm_DM, frm_first_dialog;

{$R *.dfm}

function OpenFormForEdit(idClientOrder: integer): variant;
begin
  Application.CreateForm(TfrmCopyOrder, frmCopyOrder);
  try
    frmCopyOrder.idClientOrder := idClientOrder;
    frmCopyOrder.ShowModal;
    result := frmCopyOrder.tag;
  finally
    frmCopyOrder.Free;
  end;
end;

procedure TfrmCopyOrder.btnNewClick(Sender: TObject);
var ind, flag: integer;
begin
  if idClientOrder <= 0 then exit;

  if (DateTimePicker3.Value = null) then
     MessageBox(Handle, 'Укажите дату выхода машины', 'Внимание', MB_ICONWARNING)
  else
  begin
    // Пытаемся выполнить SQL запрос
    try
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin PACK_ORDERS.save_order(:id_, :P0, :P1, :P2, :P3, :state_, :P4, :pS_ID, :p_old_price); end; ');
      DM.Ora_SQL.ParamByName('id_').AsInteger := 0;
      DM.Ora_SQL.ParamByName('p0').AsDate := DateTimePicker2.Value;
      DM.Ora_SQL.ParamByName('p1').AsDateTime := DateTimePicker1.Value + Time();
      DM.Ora_SQL.ParamByName('p2').Value := '';
      DM.Ora_SQL.ParamByName('P3').Value := first_dialog_frm.DBComboBoxEh1.Value;
      DM.Ora_SQL.ParamByName('state_').AsInteger := 1;
      DM.Ora_SQL.ParamByName('p4').AsDate := DateTimePicker3.Value;
      DM.Ora_SQL.ParamByName('pS_ID').Value := Q_ORDERSS_ID.AsInteger;
      DM.Ora_SQL.ParamByName('p_old_price').Value := NULL;
      DM.Ora_SQL.Execute;
      ind := DM.Ora_SQL.ParamByName('id_').AsInteger;
      frmCopyOrder.tag := ind;
      if ind > 0 then
      begin
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin copy_order(:ID_ORDER, :ID_CL_ORDER, :user_, :isJoin); end;');
        DM.Q_SQL.ParamByName('ID_CL_ORDER').AsInteger := idClientOrder;
        DM.Q_SQL.ParamByName('ID_ORDER').AsInteger := ind;
        DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
        DM.Q_SQL.ParamByName('isJoin').AsInteger := 0;
        DM.Q_SQL.Execute;
        DM.Main_session.Commit;
        MessageBox(Handle, PChar('Заказ скопирован успешно в новый заказ'+#13+'№'+IntToStr(ind)+#13+'Дата заказа '+DateTimePicker3.Text), 'Внимание', MB_ICONINFORMATION);
      end
      else
      begin
        DM.Main_session.Rollback;
        MessageBox(Handle,'Не создан новый заказ!','Внимание',MB_ICONINFORMATION);
      end;

      ModalResult := mrOK;
    except
      on E: Exception do MessageBox(Handle, PChar('Ощибка при записи заказа!'#13#10+E.Message), 'Внимание', MB_ICONERROR)
    End;
  end;

end;

procedure TfrmCopyOrder.Ctrl_EnterExecute(Sender: TObject);
var alpha: string;
    res: integer;
begin
  if Q_ORDERS.Active and not Q_ORDERS.IsEmpty then
  begin

      // 2014-10-19 Попробуем найти заказ уже имеющийся на данного клиента, чтобы предотвратить бедствие!
      DM.Q_SQL.Close;
      dm.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'select count(*) as nn from orders_clients where active = 1 and id_orders=:p1 and ID_CLIENTS in (select ID_CLIENTS from orders_clients where id_orders_clients = :p3)';
      DM.Q_SQL.ParamByName('p1').Value := Q_ORDERSID_ORDERS.AsInteger;
      DM.Q_SQL.ParamByName('p3').Value := idClientOrder;
      DM.Q_SQL.Open;
      if DM.Q_SQL.FieldByName('nn').AsInteger > 0 then
      begin
        res := MessageDlg('В текущем заказе есть данный клиент (кол-во '+DM.Q_SQL.FieldByName('nn').AsString+'). Добавить новый, присоединить к текущему, отменить?',mtConfirmation,[mbYes, mbOK, mbCancel],0);
        if res = mrCancel then exit;
      end;



      alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + DM.CountSameClients(Q_ORDERSID_ORDERS.AsInteger, DM.Q_ORDERS_ORDERSID_CLIENTS.AsInteger);
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin copy_order(:ID_ORDER, :ID_CL_ORDER, :user_, :isJoin); end;');
      DM.Q_SQL.ParamByName('ID_CL_ORDER').AsInteger := idClientOrder;
      DM.Q_SQL.ParamByName('ID_ORDER').AsInteger := Q_ORDERSID_ORDERS.AsInteger;
      DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
      if res = mrOK then
        DM.Q_SQL.ParamByName('isJoin').AsInteger := 1
      else
        DM.Q_SQL.ParamByName('isJoin').AsInteger := 0;

      DM.Q_SQL.Execute;
      DM.Main_session.Commit;

      frmCopyOrder.tag := Q_ORDERSID_ORDERS.AsInteger;

      MessageBox(Handle, PChar('Заказ скопирован успешно'+#13+'Новый заказ №'+Q_ORDERSID_ORDERS.AsString+', код '+alpha+#13+'Дата заказа '+Q_ORDERSDATE_TRUCK_OUT.AsString), 'Внимание', MB_ICONINFORMATION);
      ModalResult := mrOK;
  end;
end;

procedure TfrmCopyOrder.DateTimePicker1Change(Sender: TObject);
begin
    DateTimePicker2.Value := DateTimePicker1.Value + 3;
    DateTimePicker3.Value := DateTimePicker1.Value + 1;
end;

procedure TfrmCopyOrder.FormShow(Sender: TObject);
begin
  Q_ORDERS.Close;
  Q_ORDERS.ParamByName('p1').AsInteger := DM.DeptID;
  Q_ORDERS.Open;
end;

procedure TfrmCopyOrder.grCurOrdersDblClick(Sender: TObject);
begin
  Ctrl_Enter.Execute;
end;

end.
