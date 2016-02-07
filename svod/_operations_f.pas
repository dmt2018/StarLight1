unit operations_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ActnList, StrUtils;

type
  Toptions = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    BitBtn2: TBitBtn;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  options: Toptions;

implementation

uses DataM;

{$R *.dfm}

procedure Toptions.BitBtn13Click(Sender: TObject);
begin
  close;
end;

// Добавление
procedure Toptions.BitBtn10Click(Sender: TObject);
begin
  if BitBtn10.Enabled = true then
  begin
  Edit1.Text := '';
  Edit2.Text := '';
  state := 1;
//  DBCheckBoxEh1.Checked := false;

  Panel2.Visible := true;
  Edit1.SetFocus;
  end;
end;

// Редактирование
procedure Toptions.BitBtn11Click(Sender: TObject);
begin
  if (DM.OPERATIONSID_OPERATIONS.AsInteger > 0) and (BitBtn11.Enabled = true) then
  begin
    // Выполнение блокировки редактируемой записи
    DM.Q_IDD.SQL.Clear;
    DM.Q_IDD.SQL.Add('SELECT ID_OPERATIONS FROM S_CASH.OPERATIONS WHERE ID_OPERATIONS=:P0 AND T_SHORT=:P1 AND T_LONG=:P2 FOR UPDATE NOWAIT');

    DM.Q_IDD.ParamByName('P0').Value := DM.OPERATIONS.FieldByName('ID_OPERATIONS').Value;
    DM.Q_IDD.ParamByName('P1').Value := DM.OPERATIONS.FieldByName('T_SHORT').Value;
    DM.Q_IDD.ParamByName('P2').Value := DM.OPERATIONS.FieldByName('T_LONG').Value;

    try
      DM.Session_SQL.Connect;
      DM.Q_IDD.Open;

      if DM.Q_IDD.RecordCount > 0 then
      begin
        Edit1.Text := DM.OPERATIONS.FieldByName('T_SHORT').AsString;
        Edit2.Text := DM.OPERATIONS.FieldByName('T_LONG').AsString;
{
        if (DM.OPERATIONS.FieldByName('dolg').AsInteger = 1) then
          DBCheckBoxEh1.Checked := true
        else
          DBCheckBoxEh1.Checked := false;
}
        state := 2;
        Panel2.Visible := true;
        Edit1.SetFocus;
      end
      else raise Exception.CreateFmt('00054',[]);
    except
      on E: Exception do
      begin
        if (AnsiContainsStr(E.Message, '01031') = true) then ShowMessage('У вас нет прав на данную операцию!')
        else
        begin
          if (AnsiContainsStr(E.Message, '01031') = true) then
          begin
            ShowMessage('Данная запись изменяется другим пользователем!');
            DM.Session_SQL.Disconnect;
            DM.OPERATIONS.Refresh;
          end
          else ShowMessage(E.Message);
        end;
      end;
    End;
  end else ShowMessage('Нет данных для редактирования!');
end;

// Удаление
procedure Toptions.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
    if (DM.OPERATIONSID_OPERATIONS.AsInteger > 0) and (BitBtn12.Enabled = true) then
    begin
      if MessageDlg('Вы действительно хотите удалить операцию?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление накладной
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('DELETE FROM S_CASH.OPERATIONS WHERE ID_OPERATIONS = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.OPERATIONS.FieldByName('ID_OPERATIONS').AsInteger;

          DM.OPERATIONS.Next;
          idd := DM.OPERATIONSID_OPERATIONS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Session_SQL.Connect;
            DM.Ora_SQL.Execute;
            DM.Session_SQL.Commit;
            DM.Session_SQL.Disconnect;

            // Перепрыгиваем на следующую, после удаления запись
            DM.OPERATIONS.Refresh;
            DM.OPERATIONS.Locate('ID_OPERATIONS',idd,[]);

//            CrDBGrid1.SetFocus;
          except
            on E: Exception do
            begin
              if (AnsiContainsStr(E.Message, '01031') = true) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
end;

// Записать
procedure Toptions.BitBtn1Click(Sender: TObject);
var sql: string;
    ind: integer;
begin
  if ((trim(Edit1.Text) = '') or (trim(Edit2.Text) = '')) then ShowMessage('Не заполнены все поля!')
  else
  begin
    // Если добавление операции
    if (state = 1) then
    begin
      sql := 'INSERT INTO S_CASH.OPERATIONS VALUES(:P1,:P2,S_CASH.OPERATIONS_ID.NEXTVAL,0,:P3)';

      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add(sql);
      DM.Ora_SQL.ParamByName('P1').Value := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('P2').Value := trim(Edit2.Text);
{
      if ( DBCheckBoxEh1.Checked = true ) then
        DM.Ora_SQL.ParamByName('P3').Value := 1
      else
        DM.Ora_SQL.ParamByName('P3').Value := 0;
}
      // Пытаемся выполнить SQL запрос
      try
        DM.Session_SQL.Connect;
        DM.Ora_SQL.Execute;

        DM.Q_IDD.SQL.Clear;
        DM.Q_IDD.SQL.Add('SELECT S_CASH.OPERATIONS_ID.currval from DUAL');
        DM.Q_IDD.Open;
        ind := DM.Q_IDD.FieldByName('currval').AsInteger;

        DM.Session_SQL.Commit;
        DM.Session_SQL.Disconnect;

        DM.OPERATIONS.Refresh;
        DM.OPERATIONS.Locate('ID_OPERATIONS',ind,[]);
//        CrDBGrid1.SetFocus;
      except
        on E: Exception do
        begin
          if (AnsiContainsStr(E.Message, '01031') = true) then ShowMessage('У вас нет прав на данную операцию!')
          else  ShowMessage(E.Message);
        end;
      End;
    end;

    // Если редактирование операции
    if (state = 2) then
    begin
      sql := 'UPDATE S_CASH.OPERATIONS SET T_SHORT=:P1, T_LONG=:P2, dolg=:P3 WHERE ID_OPERATIONS=:ID';

      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add(sql);
      DM.Ora_SQL.ParamByName('P1').Value := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('P2').Value := trim(Edit2.Text);
{
      if ( DBCheckBoxEh1.Checked = true ) then
        DM.Ora_SQL.ParamByName('P3').Value := 1
      else
        DM.Ora_SQL.ParamByName('P3').Value := 0;
 }
      DM.Ora_SQL.ParamByName('ID').Value := DM.OPERATIONSID_OPERATIONS.AsInteger;
      ind := DM.OPERATIONSID_OPERATIONS.AsInteger;

      // Пытаемся выполнить SQL запрос
      try
        DM.Ora_SQL.Execute;

        DM.Session_SQL.Commit;
        DM.Session_SQL.Disconnect;

        DM.OPERATIONS.Refresh;
        DM.OPERATIONS.Locate('ID_OPERATIONS',ind,[]);
//        CrDBGrid1.SetFocus;
      except
        on E: Exception do
        begin
          if (AnsiContainsStr(E.Message, '01031') = true) then ShowMessage('У вас нет прав на данную операцию!')
          else  ShowMessage(E.Message);
        end;
      End;
    end;

    panel2.Hide;
  end;
end;

procedure Toptions.BitBtn2Click(Sender: TObject);
begin
  if (DM.Session_SQL.Connected = true) then DM.Session_SQL.Disconnect;
  Panel2.Visible := false;
end;

end.
