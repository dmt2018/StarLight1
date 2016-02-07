unit ULoadOldOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DBGridEhGrouping, Menus, cxLookAndFeelPainters, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ExtCtrls, GridsEh,
  DBGridEh, cxControls, cxContainer, cxEdit, cxProgressBar, StdCtrls, Buttons,
  DB, MemDS, DBAccess, Ora, cxPC;

type
  TfrmOldOrder = class(TForm)
    qOrderList: TQuery;
    qOrderListCDS: TDataSource;
    Panel3: TPanel;
    btnClose: TBitBtn;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    pnlTopOldOrder: TPanel;
    pnlMainOldOrder: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Image5: TImage;
    Label3: TLabel;
    dTrackOut: TcxDateEdit;
    btnRefresh: TcxButton;
    odOrder: TOpenDialog;
    pnlMainOldOrderList: TPanel;
    Splitter1: TSplitter;
    qOrder: TQuery;
    qOrderCDS: TDataSource;
    cxButton1: TcxButton;
    Q_SQL: TOraQuery;
    pcMain: TcxPageControl;
    tshData: TcxTabSheet;
    tshInfo: TcxTabSheet;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    memCode: TMemo;
    memNom2: TMemo;
    Label6: TLabel;
    dsOldClients: TDataSource;
    cdsOldClients: TOraQuery;
    cdsOldClientsOLD_CLIENT: TStringField;
    cdsOldClientsID_CLIENT: TFloatField;
    cdsOldClientsNICK: TStringField;
    Panel4: TPanel;
    Label7: TLabel;
    memNom: TMemo;
    procedure btnRefreshClick(Sender: TObject);
    procedure qOrderAfterScroll(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOldOrder: TfrmOldOrder;

implementation

uses frm_DM, frm_first_dialog;

{$R *.dfm}

procedure TfrmOldOrder.btnRefreshClick(Sender: TObject);
var FullFileName: string;
begin
  if dTrackOut.EditValue = NULL then exit;
  
  if not odOrder.Execute then exit;

  try
    FullFileName := odOrder.FileName;

    with qOrder do
    begin
      Close;
      SQL.Text := 'SELECT a.FIO, sum(a.NUM) as NUM from "'+FullFileName+'" a where'#10'/*Filter*/ 1=1 and a.DAT='''+DateToStr(dTrackOut.Date)+''' group by a.FIO';
      Open;
      if IsEmpty then
      begin
        Application.MessageBox('Файл пуст!', 'Внимание', MB_ICONWARNING);
        Exit;
      end;
    end;

    with qOrderList do
    begin
      Close;
      if pos(FullFileName,'CODES.DBF') > 0 then
        SQL.Text := 'SELECT a.FIO, a.BCODE, a.flow, a.CODE, a.TITLE, a.NUM, a.TRUCK from "'+FullFileName+'" a where'#10'/*Filter*/ 1=1 and a.DAT='''+DateToStr(dTrackOut.Date)+''' order by a.FIO'
      else
        SQL.Text := 'SELECT a.FIO, a.BCODE, a.flow, a.CODE, a.TITLE, a.NUM, a.TRUCK from "'+FullFileName+'" a where'#10'/*Filter*/ 1=1 and a.DAT='''+DateToStr(dTrackOut.Date)+''' order by a.FIO';
      Open;
      if IsEmpty then
      begin
        Application.MessageBox('Файл пуст!', 'Внимание', MB_ICONWARNING);
        Exit;
      end;
    end;

    DBGridEh1.Columns.Items[0].Footer.ValueType := fvtCount;
    DBGridEh1.Columns.Items[1].Footer.ValueType := fvtSum;
    DBGridEh2.Columns.Items[0].Footer.ValueType := fvtCount;
    DBGridEh2.Columns.Items[5].Footer.ValueType := fvtSum;

  Except on E:Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
      Exit;
    end;
  End;

end;

procedure TfrmOldOrder.qOrderAfterScroll(DataSet: TDataSet);
begin
    if qOrder.RecordCount > 0 then
    begin
      qOrderList.Filter := 'FIO='''+qOrder.FieldByName('FIO').AsString+''' ';
      qOrderList.Filtered := true;
    end;
end;


// Импорт заказа
procedure TfrmOldOrder.cxButton1Click(Sender: TObject);
var dateCargo, dateIn : TDateTime;
    idOrder, id_cl, idClient, err_no_code, j : integer;
    client, alpha, tmpstr : string;
    errNICKs, err_log_short, err_log_short2 : string;
begin
  if qOrder.IsEmpty or (qOrder.RecordCount = 0) then exit;

  dateCargo := dTrackOut.EditValue;
  dateIn    := dateCargo + 3;
  err_no_code := 0;

  qOrder.DisableControls;
  qOrderList.DisableControls;

  try
  if DM.Q_ORDERS.Locate('DATE_TRUCK_OUT',dateCargo,[]) then
  begin
    idOrder := DM.Q_ORDERSID_ORDERS.AsInteger;
  end
  else
  begin
    idOrder := DM.CreateOrder(0, dateIn, '', dateCargo);
    DM.Q_ORDERS.Refresh;
    DM.Q_ORDERS.Locate('ID_ORDERS',idOrder,[]);
  end;
  DM.Q_ORDERS_ORDERS.ParamByName('id_user').AsString := UpperCase(DM.Main_session.Username);
  DM.Q_ORDERS_ORDERS.Open;

  DM.Q_CLIENTS.Open;
  qOrder.First;
  cursor := crHourGlass;
  pg_main.Properties.Max := qOrder.RecordCount;
  pg_main.Position := 0;
  pnl_progress.Visible := true;
  pnl_progress.Repaint;
  while not qOrder.Eof do
  begin
    idClient := 0;
    j := 0;
    client := qOrder.FieldByName('FIO').AsString;
    j := pos('_',client);
    if j > 0 then client := copy(client,0,length(client)-1);


    // 2 - Самара
    if Client = 'SAMAR' then idClient := 12173; //10690;
    if Client = 'SAMAX' then idClient := 12173; //10690;
    // 3 - Казань
    if Client = 'KAZAN' then idClient := 14942;
    // 4 - Ярославль
    if Client = 'YARI' then idClient := 10016021;
    // 5 - Череповец
    if Client = 'CHER' then idClient := 10016216;
    // 6 - Уфа
    if Client = 'UFFA' then idClient := 10016343;
    //
{
    if Client = 'PEER' then Client := '59 PEER';
    if Client = 'URIS' then Client := 'M URLO';
    if Client = 'M DIZZ' then Client := 'S DIZZ';
    if Client = 'KAZANX' then Client := '16 KAZN';
    if Client = 'M LAAN' then Client := 'D LAAN';
    if Client = 'TERC' then Client := '43 TERC';
    if Client = 'M SGTX' then Client := 'K SGTC';
    if Client = 'M DIMIX' then Client := 'M DIMI';
    if Client = 'URISY' then Client := 'M URLO';
    if Client = 'M SRTX' then Client := 'M SRT';
}
    if (idClient = 0) then
    begin
      if Not DM.Q_CLIENTS.Locate('nick',Client,[loCaseInsensitive]) then
      begin
        if cdsOldClients.Locate('OLD_CLIENT',Client,[]) then
          idClient := cdsOldClientsID_CLIENT.AsInteger
        else
          errNICKs := errNICKs + client + #13#10
      end
      else
        idClient := DM.Q_CLIENTSID_CLIENTS.AsInteger;
    end;

//    errNICKs := errNICKs + client + ';' + IntToStr(idClient) + #13#10;

    if idClient > 0 then
    begin
      id_cl := 0;
      alpha := Client;
      DM.Q_ORDERS_ORDERS.Refresh;
{
      if DM.Q_ORDERS_ORDERS.Locate('ID_CLIENTS',idClient,[]) then
      begin
        id_cl := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
        alpha := DM.Q_ORDERS_ORDERSNICK.AsString + ' ' + DM.Q_ORDERS_ORDERSALPHA.AsString;
      end else id_cl := 0;
}
      if (id_cl = 0) then
        id_cl := DM.CreateClientOrder(idOrder, idClient, odOrder.FileName);

      DM.Q_SQL.Close;
      dm.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';
      DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := id_cl;

      if qOrderList.RecordCount > 0 then
      begin
        qOrderList.First;
        while not qOrderList.Eof do
        begin
          if trim(qOrderList.FieldByName('BCODE').AsString) <> '' then
          begin
            DM.cdsNom2.Close;
            DM.cdsNom2.ParamByName('p_code').AsString := trim(qOrderList.FieldByName('BCODE').AsString);
            DM.cdsNom2.ParamByName('p_dep').AsInteger := first_dialog_frm.DBComboBoxEh1.Value;
            DM.cdsNom2.Open;
            if not DM.cdsNom2.IsEmpty then
            begin
              DM.Q_SQL.ParamByName('N_ID').Value        := DM.cdsNom2N_ID.AsInteger;
              DM.Q_SQL.ParamByName('FL_ORDERS').Value   := qOrderList.FieldByName('NUM').AsInteger;
              DM.Q_SQL.ParamByName('TRUCK').Value       := qOrderList.FieldByName('TRUCK').AsInteger;
              DM.Q_SQL.ParamByName('sub_weight').Value  := 0;
              DM.Q_SQL.ParamByName('v_site_data').Value := tmpstr;
              DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
              DM.Q_SQL.Execute;
            end
            else
            begin
              tmpstr := qOrderList.FieldByName('BCODE').AsString + ' ' + qOrderList.FieldByName('CODE').AsString + ' ' + qOrderList.FieldByName('TITLE').AsString;
              err_log_short := err_log_short + tmpstr + #13#10;
            end;
            DM.cdsNom2.Close;
          end
          else
          begin
            err_no_code := err_no_code + 1;
            tmpstr := qOrderList.FieldByName('BCODE').AsString + ' ' + qOrderList.FieldByName('CODE').AsString + ' ' + qOrderList.FieldByName('TITLE').AsString;
            err_log_short2 := err_log_short2 + tmpstr + #13#10;
          end;

          qOrderList.next;
        end;
      end;

      // Если клиент пакованный, то проставим признак на клиенте и его записях
      if j > 0 then
      begin
        try
          Q_SQL.SQL.Clear;
          Q_SQL.SQL.Add('begin PACK_ORDERS.change_pack(:ID_ORDERS_CLIENTS_, :IS_PACK_); end;');
          Q_SQL.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_cl;
          Q_SQL.ParamByName('IS_PACK_').AsInteger := 0;
          Q_SQL.Execute;
        except
          on E: Exception do ShowMessage('Ошибка выполнения запроса!'#13#10+E.Message);
        end;
      end;

    end;

    qOrder.Next;
    pg_main.Position := qOrder.RecNo;
    pg_main.Repaint;
  end;
  DM.Q_CLIENTS.Close;
  DM.Q_ORDERS.Refresh;
  memCode.Text := errNICKs;
  memNom.Text  := trim(err_log_short);
  memNom2.Text := trim(err_log_short2);
  Label4.Caption := 'Не найденные коды клиентов ('+IntToStr(memCode.Lines.Count)+')';
  Label7.Caption := 'Не найденные коды товаров ('+IntToStr(memNom.Lines.Count)+')';
  Label5.Caption := 'Позиции без штрих-кода ('+IntToStr(memNom2.Lines.Count)+')';
  pcMain.ActivePageIndex := 1;
  Application.MessageBox(PChar('Заказ обработан успешно. Позиции без штрих-кода: '+IntToStr(err_no_code)), 'Результат', MB_ICONINFORMATION);
  DM.Main_session.Commit;
  finally
    cursor := crDefault;
    qOrder.EnableControls;
    qOrderList.EnableControls;
  end;
end;


procedure TfrmOldOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsOldClients.Close;
end;

procedure TfrmOldOrder.FormShow(Sender: TObject);
begin
  dTrackOut.EditValue := Now;
  cdsOldClients.Open;
end;

end.
