unit client_debt_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, StdCtrls, Buttons, ExtCtrls, ActnList,
  DBGridEh, jpeg, DBCtrls, Mask, DB, DBCtrlsEh;

type
  Tclient_debt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Label5: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    DBGridEh1: TDBGridEh;
    Image1: TImage;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    Label11: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label16: TLabel;
    Edit8: TEdit;
    Action4: TAction;
    Label17: TLabel;
    DBEdit5: TDBEdit;
    Label18: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    procedure BitBtn13Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Action4Execute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  client_debt: Tclient_debt;

implementation

uses DataM, svod_f, client_debt_edit_f;

{$R *.dfm}

procedure Tclient_debt.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tclient_debt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGridEh1.SumList.Active := false;
  //  DM.Q_CLIENT_DEBT.Close;
end;

procedure Tclient_debt.FormShow(Sender: TObject);
begin
  DBGridEh1.SumList.Active := true;

  Label9.Caption := 'Сегодня '+DateToStr(Date);
  Label5.Caption := svod.Label5.Caption;
  Edit1.Text := svod.Edit1.Text;
  Edit2.Text := svod.Edit2.Text;
  Edit3.Text := svod.Edit3.Text;
  Edit4.Text := svod.Edit4.Text;
  Edit5.Text := svod.Edit5.Text;
  Edit6.Text := svod.Edit6.Text;
  Edit7.Text := svod.Edit7.Text;
  Edit8.Text := svod.Edit8.Text;
end;

procedure Tclient_debt.SpeedButton1Click(Sender: TObject);
begin
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT * FROM CURR_ON_DAY');
  DM.Q_SQL.Open;
  Edit1.Text := DM.Q_SQL.FieldByName('USD').AsString;
  Edit2.Text := DM.Q_SQL.FieldByName('EUR').AsString;
  Edit3.Text := DM.Q_SQL.FieldByName('USD_EUR').AsString;
  Edit4.Text := DM.Q_SQL.FieldByName('EUR_USD').AsString;
  Edit6.Text := DM.Q_SQL.FieldByName('SHEV_USD').AsString;
  Edit7.Text := DM.Q_SQL.FieldByName('SHEV_EUR').AsString;
  Edit5.Text := DM.Q_SQL.FieldByName('SHEV_USD_EUR').AsString;
  Edit8.Text := DM.Q_SQL.FieldByName('SHEV_EUR_USD').AsString;
  Label5.Caption := 'ЦБ на ' + DateToStr(DM.Q_SQL.FieldByName('DDATE').AsDateTime);
  DM.Q_SQL.Close;
end;

// Удаление записи
procedure Tclient_debt.BitBtn12Click(Sender: TObject);
var idd, idd2: integer;
    sql: string;
begin
    if (DM.Q_CLIENT_DEBTID_CLIENT_DEBT.AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление накладной
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('DELETE FROM S_CASH.CLIENT_DEBT WHERE ID_CLIENT_DEBT = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_CLIENT_DEBT.FieldByName('ID_CLIENT_DEBT').AsInteger;

          DM.Q_CLIENT_DEBT.Next;
          idd := DM.Q_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
          idd2 := DM.Q_DEBETORSID_DEBETORS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Session_SQL.Connect;
            DM.Ora_SQL.Execute;
            DM.Session_SQL.Commit;


        // Изменеие поля ДОЛГ в дебеторской карточке клиента
        DM.Q_CLIENT_DEBT.Refresh;
        DM.Q_CLIENT_DEBT.Last;
        DM.Ora_SQL.SQL.Clear;
        sql := 'UPDATE S_CASH.DEBETORS SET DEBET='''+DM.Q_CLIENT_DEBTCHART.AsString+''' WHERE ID_DEBETORS='+DM.Q_CLIENT_DEBTID_DEBETORS.AsString;
        DM.Ora_SQL.SQL.Add(sql);
        DM.Session_SQL.Connect;
        DM.Ora_SQL.Execute;
        DM.Session_SQL.Commit;



            DM.Session_SQL.Disconnect;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_DEBETORS.Refresh;
            DM.Q_DEBETORS.Locate('ID_DEBETORS',idd2,[]);

            DM.Q_CLIENT_DEBT.Refresh;
            DM.Q_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',idd,[]);

            ShowMessage('Удаление прошло успешно.');
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
end;

// Добавление записи
procedure Tclient_debt.BitBtn10Click(Sender: TObject);
var ind: integer;
begin
  client_debt_edit.DateTimePicker1.Date := Date();
  client_debt_edit.DateTimePicker2.Time := Time();
  client_debt_edit.ComboBox1.ItemIndex := -1;

  ind := client_debt_edit.ComboBox1.Items.IndexOf('Не указана');
  client_debt_edit.ComboBox1.ItemIndex := ind;

  client_debt_edit.Edit4.Text := '';
  client_debt_edit.Edit5.Text := '';
  client_debt_edit.Edit6.Text := '';
  client_debt_edit.Edit7.Text := '';

  if DM.Q_DEBETORSRUBL.AsInteger = 1 then
  begin
    client_debt_edit.Edit1.Text := '1';
    client_debt_edit.Edit1.ReadOnly := true;
    client_debt_edit.Label4.Visible := true;
  end
  else
  begin
    client_debt_edit.Edit1.Text := Edit7.Text;
    client_debt_edit.Edit1.ReadOnly := false;
    client_debt_edit.Label4.Visible := false;
  end;

  client_debt_edit.state := 1;
  client_debt_edit.showmodal;
end;

// Редактирование записи
procedure Tclient_debt.BitBtn11Click(Sender: TObject);
var sql: string;
    ind: integer;
begin
  if DM.Q_CLIENT_DEBTID_CLIENT_DEBT.AsInteger > 0 then
  begin
      // Выполнение блокировки редактируемой записи
      DM.Q_IDD.SQL.Clear;
      DM.Q_IDD.SQL.Add('SELECT ID_CLIENT_DEBT FROM S_CASH.CLIENT_DEBT WHERE ID_CLIENT_DEBT=:P1 AND ID_DEBETORS=:P2 AND DEBET=:P3 AND RATE=:P4 AND DDATE=:P5 AND R_DDATE=:P6 AND OPERATION=:P7 AND (INVOICE=:P8 OR INVOICE IS NULL) AND SUMM=:P9 AND IN_RUB=:P10 FOR UPDATE NOWAIT');

      DM.Q_IDD.ParamByName('P1').Value := DM.Q_CLIENT_DEBT.FieldByName('ID_CLIENT_DEBT').Value;
      DM.Q_IDD.ParamByName('P2').Value := DM.Q_CLIENT_DEBT.FieldByName('ID_DEBETORS').Value;
      DM.Q_IDD.ParamByName('P3').Value := DM.Q_CLIENT_DEBT.FieldByName('DEBET').Value;
      DM.Q_IDD.ParamByName('P4').Value := DM.Q_CLIENT_DEBT.FieldByName('RATE').Value;
      DM.Q_IDD.ParamByName('P5').AsDateTime := DM.Q_CLIENT_DEBT.FieldByName('DDATE').AsDateTime;
      DM.Q_IDD.ParamByName('P6').AsDateTime := DM.Q_CLIENT_DEBT.FieldByName('R_DDATE').AsDateTime;
      DM.Q_IDD.ParamByName('P7').Value := DM.Q_CLIENT_DEBT.FieldByName('OPERATION').Value;
      DM.Q_IDD.ParamByName('P8').Value := DM.Q_CLIENT_DEBT.FieldByName('INVOICE').Value;
      DM.Q_IDD.ParamByName('P9').Value := DM.Q_CLIENT_DEBT.FieldByName('SUMM').Value;
      DM.Q_IDD.ParamByName('P10').Value := DM.Q_CLIENT_DEBT.FieldByName('IN_RUB').Value;

      try
        DM.Session_SQL.Connect;
        DM.Q_IDD.Open;

        if DM.Q_IDD.RecordCount > 0 then
        begin

          ind := client_debt_edit.ComboBox1.Items.IndexOf(DM.Q_CLIENT_DEBT.FieldByName('T_LONG').AsString);
          client_debt_edit.ComboBox1.ItemIndex := ind;

          client_debt_edit.Edit4.Text := DM.Q_CLIENT_DEBT.FieldByName('INVOICE').AsString;
          client_debt_edit.Edit5.Text := DM.Q_CLIENT_DEBT.FieldByName('SUMM').Value;
          client_debt_edit.Edit6.Text := DM.Q_CLIENT_DEBT.FieldByName('IN_RUB').Value;
          client_debt_edit.Edit7.Text := DM.Q_CLIENT_DEBT.FieldByName('DEBET').Value;
          client_debt_edit.DateTimePicker1.Date := DM.Q_CLIENT_DEBT.FieldByName('DDATE').AsDateTime;
          client_debt_edit.DateTimePicker2.Time := DM.Q_CLIENT_DEBT.FieldByName('DDATE').AsDateTime;

          if DM.Q_DEBETORSRUBL.AsInteger = 1 then
          begin
            client_debt_edit.Edit1.Text := '1';
            client_debt_edit.Edit1.ReadOnly := true;
            client_debt_edit.Label4.Visible := true;
          end
          else
          begin
            client_debt_edit.Edit1.Text := DM.Q_CLIENT_DEBTRATE.AsString;
            client_debt_edit.Edit1.ReadOnly := false;
            client_debt_edit.Label4.Visible := false;
          end;

          client_debt_edit.state := 2;
          client_debt_edit.showmodal;

        end
        else raise Exception.CreateFmt('00054',[]);
      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
          else
          begin
            if (StrPos(PChar(E.Message), PChar('00054')) <> nil) then
            begin
              ShowMessage('Данная запись изменяется другим пользователем!');
              DM.Session_SQL.Disconnect;
              DM.Q_CLIENT_DEBT.Refresh;
            end
            else ShowMessage(E.Message);
          end;
        end;
      End;
  end else ShowMessage('Нет данных для редактирования!');
end;

procedure Tclient_debt.Image1Click(Sender: TObject);
begin
  if Panel6.Visible = true then
  begin
    Panel6.Visible := false;
    Image1.Picture.LoadFromFile('img\bottom.jpg');
  end
  else
  begin
    Panel6.Visible := true;
    Image1.Picture.LoadFromFile('img\top.jpg');
  end;
end;

procedure Tclient_debt.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Panel6.Visible = true then Image1.Picture.LoadFromFile('img\bottom.jpg')
  else Image1.Picture.LoadFromFile('img\top.jpg');
end;

procedure Tclient_debt.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if Panel6.Visible = true then Image1.Picture.LoadFromFile('img\bottom_.jpg')
  else Image1.Picture.LoadFromFile('img\top_.jpg');
end;

// Нажатие кнопки Enter на таблице (вход и выход из режима редактирования)
procedure Tclient_debt.Action4Execute(Sender: TObject);
begin
  If DM.Q_CLIENT_DEBT.State = dsEdit then DM.Q_CLIENT_DEBT.Post else
  if DM.Q_CLIENT_DEBT.State = dsBrowse then DBGridEh1.EditorMode := true;
end;

// Определяем просмотр кредитной карточки одного лица или все группы
procedure Tclient_debt.CheckBox1Click(Sender: TObject);
var sql: string;
begin
  if CheckBox1.Checked = true then
  begin
    DM.Q_GROUPS.Locate('NAME',ComboBox1.Text,[loCaseInsensitive]);

    screen.Cursor := crHourGlass;

    DM.Q_CLIENT_DEBT.Close;
    DM.Q_CLIENT_DEBT_A.ParamByName('P1').AsInteger := DM.Q_GROUPSID_CLIENTS_GROUPS.AsInteger;
    DM.Q_CLIENT_DEBT_A.Open;
    DBGridEh1.DataSource := DM.Q_CLIENT_DEBT_A_DS;

    screen.Cursor := crDefault;
  end
  else
  begin
    screen.Cursor := crHourGlass;

    DM.Q_CLIENT_DEBT_A.Close;
    DM.Q_CLIENT_DEBT.Open;
    DBGridEh1.DataSource := DM.Q_CLIENT_DEBT_DS;

    screen.Cursor := crDefault;
  end;
end;

procedure Tclient_debt.ComboBox1Change(Sender: TObject);
begin
  if DM.Q_DEBETORS.Locate('NICK',ComboBox1.Text,[]) then DBGRIDEH1.Visible := true else DBGRIDEH1.Visible := false;
end;

procedure Tclient_debt.Panel4Resize(Sender: TObject);
begin
  BitBtn13.Left := Panel4.Width - 152;
end;

end.
