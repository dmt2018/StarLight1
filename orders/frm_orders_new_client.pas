unit frm_orders_new_client;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, 
  ActnList, DBGridEh, GridsEh, DB, cxControls, cxContainer, cxEdit,
  cxCheckBox, DBGridEhGrouping;

type
  Torders_new_client = class(TForm)
    Label8: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Ctrl_Enter: TAction;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    pod_nick: TLabel;
    pod_fio: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    check_pack: TcxCheckBox;
    f5: TAction;
    Panel1: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure f5Execute(Sender: TObject);
  private
    { Private declarations }
  public
    str_nick: string;
    str_fio:  string;
    id_cl:    integer;
    { Public declarations }
  end;

var
  orders_new_client: Torders_new_client;

implementation

uses frm_DM;

{$R *.dfm}


//
//  Записываем данные
//
procedure Torders_new_client.BitBtn1Click(Sender: TObject);
var ind, flag, flag_id, ind2: integer;
begin
  if (DM.Q_CLIENTSID_CLIENTS.AsInteger < 1) then ShowMessage('Вы не выбрали клиента!')
  else
  begin

    // Смена клиента в заказе
    if DBGridEh1.Tag > 0 then
    begin
      try
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_ORDERS_CLIENTS FROM ORDERS_CLIENTS WHERE ID_ORDERS=:ID_ORDERS AND ID_CLIENTS=:ID_CLIENTS and active=1');
        DM.Q_SQL.ParamByName('ID_ORDERS').Value := DM.Q_ORDERS.FieldByName('ID_ORDERS').Value;
        DM.Q_SQL.ParamByName('ID_CLIENTS').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
        DM.Q_SQL.Open;
        if DM.Q_SQL.RecordCount > 0 then
          Application.MessageBox('Указанный клиент уже имеет заказ на данную дату!','Внимание',MB_ICONINFORMATION)
        else
        begin
          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('update ORDERS_CLIENTS set ID_CLIENTS='+DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsString+' WHERE ID_ORDERS_CLIENTS='+IntToStr(DBGridEh1.Tag));
          DM.Q_SQL.Execute;
          orders_new_client.ModalResult := mrOk;
        end;
      except
        on E: Exception do ShowMessage('Ошибка!'#13#10+E.Message);
      End;

      exit;
    end;

    // Основная логика
    flag := 0;
    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('SELECT ID_ORDERS_CLIENTS FROM ORDERS_CLIENTS WHERE ID_ORDERS=:ID_ORDERS AND ID_CLIENTS=:ID_CLIENTS and active=1');
      DM.Q_SQL.ParamByName('ID_ORDERS').Value := DM.Q_ORDERS.FieldByName('ID_ORDERS').Value;
      DM.Q_SQL.ParamByName('ID_CLIENTS').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
      DM.Q_SQL.Open;
      if DM.Q_SQL.RecordCount > 0 then begin flag := 1; flag_id := DM.Q_SQL.FieldByName('ID_ORDERS_CLIENTS').AsInteger; end else flag := 0;
    except
      on E: Exception do ShowMessage('Ошибка!'#13#10+E.Message);
    End;

    if flag = 1 then
    begin
      DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',flag_id,[]);
      if MessageDlg('Данный клиент уже имеет заказ на данную дату!'#13'Создать еще один заказ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
         flag := 0;
    end;

    // Вставляем клиента в БД
    if flag = 0 then
    begin
      dm.Q_SQL.Close;
      dm.Q_SQL.SQL.Clear;

      //DM.Ora_SQL.SQL.Clear;
      id_cl := 0;

      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.save_new_order(:id_, :ID_ORDERS_F_, :ID_CLIENT_, :DDATE_, :user_, :NN_, :v_file); end; ');
      DM.Q_SQL.ParamByName('id_').Value := 0;
      DM.Q_SQL.ParamByName('ID_ORDERS_F_').Value := DM.Q_ORDERS.FieldByName('ID_ORDERS').Value;
      DM.Q_SQL.ParamByName('ID_CLIENT_').Value := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
      DM.Q_SQL.ParamByName('user_').AsString := UpperCase(DM.Main_session.Username);
      DM.Q_SQL.ParamByName('DDATE_').AsDateTime := Date;
      if check_pack.Checked = true then
        DM.Q_SQL.ParamByName('NN_').Value := 1
      else
        DM.Q_SQL.ParamByName('NN_').Value := 0;
      DM.Q_SQL.ParamByName('v_file').AsString := '';

      // Пытаемся выполнить SQL запрос
      try
        DM.Q_SQL.Execute;
        id_cl := DM.Q_SQL.ParamByName('id_').AsInteger;
        orders_new_client.ModalResult := mrOk;
      except
        on E: Exception do ShowMessage('Ошибка записи!'#13#10+E.Message);
      End;
    end;
end;
end;


//
// Закрытие формы
//
procedure Torders_new_client.BitBtn2Click(Sender: TObject);
begin
  close;
end;


//
//  Ставим фокус на таблицу при ее открывании
//
procedure Torders_new_client.FormShow(Sender: TObject);
begin
  DBGridEh1.ClearFilter;
  DBGridEh1.ApplyFilter;
  DBGridEh1.SetFocus;
end;


//
//  Отрисовываем красным заблокированных клиентов
//
procedure Torders_new_client.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ( TDBGridEh(Sender).DataSource.DataSet.FieldByName('BLOCK1').AsInteger <> 0) or (TDBGridEh(Sender).DataSource.DataSet.FieldByName('BLOCK2').AsInteger <> 0) then
  begin
    if (Column.Index=0) then
    begin
      Background := clRed;
      AFont.Color := clWhite;
    end;
  end;
end;


//
//  Отрабатываем нажатие кнопок стирания
//
procedure Torders_new_client.DBGridEh1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  strfio, strnick: string;
  i1, i2: integer;
begin
  if (Key = VK_DELETE) or (Key = VK_CANCEL) then
  begin
    str_fio := '';
    str_nick := '';
    label6.Caption := str_nick;
    label7.Caption := str_fio;
  end;


 if (Key = VK_BACK) then
  begin
    i1:=0;
    i2:=Length(str_fio)-1;
    strfio:=Copy(str_fio,i1,i2);

    i1:=0;
    i2:=Length(str_nick)-1;
    strnick:=Copy(str_nick,i1,i2);

    str_fio := strfio;
    str_nick := strnick;

    label6.Caption := str_nick;
    label7.Caption := str_fio;
  end;
end;

procedure Torders_new_client.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key in ['а'..'я']) or (Key in ['А'..'Я']) {or (Key = ' ')} then
  begin
     str_nick := '';
     str_fio := str_fio + Key;
     DM.Q_CLIENTS.Locate('FIO', str_fio, [loCaseInsensitive, loPartialKey]);
  end;

  if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') then
  begin
     str_fio := '';
     str_nick := str_nick + Key;
     DM.Q_CLIENTS.Locate('NICK', str_nick, [loCaseInsensitive, loPartialKey]);
  end;

  label6.Caption := str_nick;
  label7.Caption := str_fio;
end;

procedure Torders_new_client.f5Execute(Sender: TObject);
begin
  if check_pack.Checked = false then check_pack.Checked := true else check_pack.Checked := false;
end;

end.
