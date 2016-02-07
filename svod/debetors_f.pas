unit debetors_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, CRGrid, Buttons, DB,
  ActnList, DBGridEh, ImgList;

type
  Tdebetors = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Panel5: TPanel;
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    Panel3: TPanel;
    CRDBGrid1: TCRDBGrid;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Label9: TLabel;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ComboBox2: TComboBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    GroupBox2: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    procedure BitBtn10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CRDBGrid1CellClick(Column: TColumn);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CRDBGrid1DblClick(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  debetors: Tdebetors;

implementation

uses DataM, deb_edit_f, client_debt_f;

{$R *.dfm}

procedure Tdebetors.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tdebetors.FormClose(Sender: TObject; var Action: TCloseAction);
var sql: string;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '0';

  CheckBox2.Checked := false;
  CheckBox3.Checked := false;
  CheckBox4.Checked := false;
  CheckBox5.Checked := true;

  RadioButton3.Checked := true;
  CheckBox1.Checked := false;
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  
  DM.Q_DEBETORS.Close;
  sql := 'SELECT D.*, C.PHONE, C.REGION, C.NICK, C.FIO, G.NAME AS GROUP_NAME FROM S_CASH.DEBETORS D, S_CLIENTS.CLIENTS C, S_CLIENTS.CLIENTS_GROUPS G WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=G.ID_CLIENTS_GROUPS ORDER BY C.NICK';
  DM.Q_DEBETORS.Close;
  DM.Q_DEBETORS.SQL.Clear;
  DM.Q_DEBETORS.SQL.Add(sql);
end;

// Добавление кредитора
procedure Tdebetors.BitBtn10Click(Sender: TObject);
begin
  deb_edit.ComboBox1.ItemIndex := 0;
  deb_edit.CheckBox1.Checked := false;
  deb_edit.CheckBox2.Checked := false;
  deb_edit.CheckBox3.Checked := false;
  deb_edit.Edit3.Text := '';
  deb_edit.Edit1.Text := '3';
  deb_edit.Edit9.Text := '0';
  deb_edit.Edit2.Text := '0';

  deb_edit.state := 1;
  deb_edit.ShowModal;
end;

// Редактирование кредитора
procedure Tdebetors.BitBtn11Click(Sender: TObject);
begin
  if DM.Q_DEBETORSID_DEBETORS.AsInteger > 0 then
  begin
      // Выполнение блокировки редактируемой записи
      DM.Q_IDD.SQL.Clear;
      DM.Q_IDD.SQL.Add('SELECT ID_DEBETORS FROM S_CASH.DEBETORS WHERE ID_DEBETORS=:P1 AND ID_CLIENTS=:P2 AND (LAST_DDATE=:P3 OR LAST_DDATE IS NULL) AND STATE=:P4 AND BEZNAL=:P5 AND DEBET=:P6 AND ');
      DM.Q_IDD.SQL.Add('CREDIT_DAYS=:P7 AND (INFO=:P8 OR INFO IS NULL) AND DDATE=:P9 AND RUBL=:P10 AND CHART=:P11 FOR UPDATE NOWAIT');

      DM.Q_IDD.ParamByName('P1').Value := DM.Q_DEBETORS.FieldByName('ID_DEBETORS').Value;
      DM.Q_IDD.ParamByName('P2').Value := DM.Q_DEBETORS.FieldByName('ID_CLIENTS').Value;
      DM.Q_IDD.ParamByName('P3').AsDateTime := DM.Q_DEBETORS.FieldByName('LAST_DDATE').AsDateTime;
      DM.Q_IDD.ParamByName('P4').Value := DM.Q_DEBETORS.FieldByName('STATE').Value;
      DM.Q_IDD.ParamByName('P5').Value := DM.Q_DEBETORS.FieldByName('BEZNAL').Value;
      DM.Q_IDD.ParamByName('P6').Value := DM.Q_DEBETORS.FieldByName('DEBET').Value;
      DM.Q_IDD.ParamByName('P7').Value := DM.Q_DEBETORS.FieldByName('CREDIT_DAYS').Value;
      DM.Q_IDD.ParamByName('P8').Value := DM.Q_DEBETORS.FieldByName('INFO').Value;
      DM.Q_IDD.ParamByName('P9').AsDateTime := DM.Q_DEBETORS.FieldByName('DDATE').AsDateTime;
      DM.Q_IDD.ParamByName('P10').Value := DM.Q_DEBETORS.FieldByName('RUBL').Value;
      DM.Q_IDD.ParamByName('P11').Value := DM.Q_DEBETORS.FieldByName('CHART').Value;

      try
        DM.Session_SQL.Connect;
        DM.Q_IDD.Open;

        if DM.Q_IDD.RecordCount > 0 then
        begin
          DM.Q_CLIENTS.Locate('ID_CLIENTS',DM.Q_DEBETORSID_CLIENTS.AsInteger,[]);
          deb_edit.ComboBox1.ItemIndex := 0;
          if DM.Q_DEBETORS.FieldByName('BEZNAL').AsInteger = 0 then deb_edit.CheckBox1.Checked := false else deb_edit.CheckBox1.Checked := true;
          if DM.Q_DEBETORS.FieldByName('STATE').AsInteger = 0 then deb_edit.CheckBox2.Checked := false else deb_edit.CheckBox2.Checked := true;
          if DM.Q_DEBETORS.FieldByName('RUBL').AsInteger = 0 then deb_edit.CheckBox3.Checked := false else deb_edit.CheckBox3.Checked := true;
          deb_edit.Edit3.Text := DM.Q_DEBETORS.FieldByName('INFO').AsString;
          deb_edit.Edit1.Text := DM.Q_DEBETORS.FieldByName('CREDIT_DAYS').AsString;
          deb_edit.Edit9.Text := DM.Q_DEBETORS.FieldByName('DEBET').AsString;
          deb_edit.Edit2.Text := DM.Q_DEBETORS.FieldByName('CHART').AsString;

          deb_edit.state := 2;
          deb_edit.ShowModal;
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
              DM.Q_DEBETORS.Refresh;
            end
            else ShowMessage(E.Message);
          end;
        end;
      End;
  end else ShowMessage('Нет данных для редактирования!');
end;

// Удаление дебетора
procedure Tdebetors.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
    if (DM.Q_DEBETORSID_DEBETORS.AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить дебетора?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление дебетора
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('DELETE FROM S_CASH.DEBETORS WHERE ID_DEBETORS = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_DEBETORS.FieldByName('ID_DEBETORS').AsInteger;

          DM.Q_DEBETORS.Next;
          idd := DM.Q_DEBETORSID_DEBETORS.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Session_SQL.Connect;
            DM.Ora_SQL.Execute;
            DM.Session_SQL.Commit;
            DM.Session_SQL.Disconnect;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_DEBETORS.Refresh;
            DM.Q_DEBETORS.Locate('ID_DEBETORS',idd,[]);

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

procedure Tdebetors.CRDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var style: integer;
begin
  If DataCol = 2 then
  begin
	  IF DM.Q_DEBETORSBEZNAL.AsInteger = 1 Then Style := DFCS_CHECKED
		Else Style := DFCS_BUTTONCHECK;
  	DrawFrameControl(TCRDBGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, Style);
  end;

  If DataCol = 3 then
  begin
	  IF DM.Q_DEBETORSSTATE.AsInteger = 1 Then Style := DFCS_CHECKED
		Else Style := DFCS_BUTTONCHECK;
  	DrawFrameControl(TCRDBGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, Style);
  end;

  If DataCol = 4 then
  begin
	  IF DM.Q_DEBETORSRUBL.AsInteger = 1 Then Style := DFCS_CHECKED
		Else Style := DFCS_BUTTONCHECK;
  	DrawFrameControl(TCRDBGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, Style);
  end;
end;


procedure Tdebetors.CRDBGrid1CellClick(Column: TColumn);
var ind: integer;
    sql: string;
begin
if ((Column.Index>1) and (Column.Index<5)) then
begin
//showmessage(inttostr(Column.Index));
  if ((DM.Q_DEBETORSID_DEBETORS.AsInteger > 0) and ( (Column.Index=2) or (Column.Index=3) or (Column.Index=4) ) ) then
  begin
    ind := DM.Q_DEBETORSID_DEBETORS.AsInteger;

    if Column.Index = 2 then
    begin
      if DM.Q_DEBETORSBEZNAL.AsInteger = 1 then sql := 'UPDATE S_CASH.DEBETORS SET BEZNAL=0 WHERE ID_DEBETORS=:ID'
      else sql := 'UPDATE S_CASH.DEBETORS SET BEZNAL=1 WHERE ID_DEBETORS=:ID';
    end;

    if Column.Index = 3 then
    begin
      if DM.Q_DEBETORSSTATE.AsInteger = 1 then sql := 'UPDATE S_CASH.DEBETORS SET STATE=0 WHERE ID_DEBETORS=:ID'
      else sql := 'UPDATE S_CASH.DEBETORS SET STATE=1 WHERE ID_DEBETORS=:ID';
    end;

    if Column.Index = 4 then
    begin
      if DM.Q_DEBETORSRUBL.AsInteger = 1 then sql := 'UPDATE S_CASH.DEBETORS SET RUBL=0 WHERE ID_DEBETORS=:ID'
      else sql := 'UPDATE S_CASH.DEBETORS SET RUBL=1 WHERE ID_DEBETORS=:ID';
    end;

    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add(sql);
    DM.Ora_SQL.ParamByName('ID').Value := ind;

    try
      DM.Session_SQL.Connect;
      DM.Ora_SQL.Execute;

      if ((Column.Index = 3) and (DM.Q_DEBETORSSTATE.AsInteger = 0)) then
      begin
        DM.Ora_SQL.SQL.Clear;
        DM.Ora_SQL.SQL.Add('UPDATE S_CLIENTS.CLIENTS SET BLOCK2=1 WHERE ID_CLIENTS='+DM.Q_DEBETORSID_CLIENTS.AsString);
        DM.Ora_SQL.Execute;
      end;

      DM.Session_SQL.Commit;
      DM.Session_SQL.Disconnect;

      DM.Q_DEBETORS.Refresh;
      DM.Q_DEBETORS.Locate('ID_DEBETORS',ind,[]);

    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else  ShowMessage(E.Message);
      end;
    End;
  end;
end;
end;


// Включение фильтров
procedure Tdebetors.BitBtn8Click(Sender: TObject);
var sql: string;
    i: integer;
begin
  if ((CheckBox2.Checked = false) and (CheckBox3.Checked = false) and (CheckBox4.Checked = false) and (CheckBox6.Checked = false) and (CheckBox7.Checked = false) and (CheckBox8.Checked = false) and (CheckBox5.Checked = false)) then CheckBox5.Checked := true;

  if trim(Edit3.Text) = '' then Edit3.Text := '0';
  try
    i := strtoint(Edit3.Text);
  except
    on E: Exception do begin ShowMessage('Долг должен быть числом!'); abort; end;
  end;

  sql := 'SELECT D.*, C.PHONE, C.REGION, C.NICK, C.FIO, G.NAME AS GROUP_NAME FROM S_CASH.DEBETORS D, S_CLIENTS.CLIENTS C, S_CLIENTS.CLIENTS_GROUPS G WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=G.ID_CLIENTS_GROUPS';


  if trim(edit1.Text) <> '' then sql := sql + ' and UPPER(C.NICK) LIKE :P1';
  if trim(edit2.Text) <> '' then sql := sql + ' and UPPER(C.FIO) LIKE :P2';
  if i > 0 then sql := sql + ' and D.DEBET >'+Edit3.Text;

  if ( (CheckBox2.Checked = true) or (CheckBox3.Checked = true) or (CheckBox4.Checked = true) or (CheckBox6.Checked = true) or (CheckBox7.Checked = true) or (CheckBox8.Checked = true)) then
  begin
    sql := sql + ' and ( 1=1';
    if CheckBox8.Checked = true then sql := sql + ' AND D.BEZNAL=0';// else sql := sql + ' AND D.BEZNAL=0';
    if CheckBox6.Checked = true then sql := sql + ' AND D.STATE=0';// else sql := sql + ' AND D.STATE=0';
    if CheckBox7.Checked = true then sql := sql + ' AND D.RUBL=0';// else sql := sql + ' AND D.RUBL=0';

    if CheckBox2.Checked = true then sql := sql + ' AND D.BEZNAL=1';// else sql := sql + ' OR D.BEZNAL=0';
    if CheckBox4.Checked = true then sql := sql + ' AND D.STATE=1';// else sql := sql + ' OR D.STATE=0';
    if CheckBox3.Checked = true then sql := sql + ' AND D.RUBL=1';// else sql := sql + ' OR D.RUBL=0';

{
    if CheckBox8.Checked = true then sql := sql + ' AND D.BEZNAL=1';// else sql := sql + ' AND D.BEZNAL=0';
    if CheckBox6.Checked = true then sql := sql + ' AND D.STATE=1';// else sql := sql + ' AND D.STATE=0';
    if CheckBox7.Checked = true then sql := sql + ' AND D.RUBL=1';// else sql := sql + ' AND D.RUBL=0';

    if CheckBox2.Checked = true then sql := sql + ' OR D.BEZNAL=1';// else sql := sql + ' OR D.BEZNAL=0';
    if CheckBox4.Checked = true then sql := sql + ' OR D.STATE=1';// else sql := sql + ' OR D.STATE=0';
    if CheckBox3.Checked = true then sql := sql + ' OR D.RUBL=1';// else sql := sql + ' OR D.RUBL=0';
}


    sql := sql + ')';
  end;

  If RadioButton1.Checked = true then
  begin
    DM.Q_REGIONS.Locate('NAME','Москва',[loCaseInsensitive]);
    sql := sql + ' and REGION='+DM.Q_REGIONSID_REGIONS.AsString;
  end;

  If RadioButton2.Checked = true then
  begin
    DM.Q_REGIONS.Locate('NAME','Москва',[loCaseInsensitive]);
    sql := sql + ' and REGION <>'+DM.Q_REGIONSID_REGIONS.AsString;
  end;

  If ((RadioButton4.Checked = true) and (ComboBox2.ItemIndex > 0)) then
  begin
    DM.Q_REGIONS.Locate('NAME',ComboBox2.Text,[loCaseInsensitive]);
    sql := sql + ' and REGION='+DM.Q_REGIONSID_REGIONS.AsString;
  end;

  If CheckBox1.Checked = true then
  begin
    if (DateTimePicker2.Date < DateTimePicker1.Date) then begin ShowMessage('Проверьте даты!'); abort; end;
    sql := sql + ' and (LAST_DDATE >=:P3 and LAST_DDATE <=:P4)';
  end;

  if ComboBox1.ItemIndex > 0 then
  begin
    DM.Q_GROUPS.Locate('NAME',ComboBox1.Text,[loCaseInsensitive]);
    sql := sql + ' and C.ID_CLIENTS_GROUPS='+DM.Q_GROUPSID_CLIENTS_GROUPS.AsString;
  end;
  sql := sql + ' ORDER BY C.NICK';

  DM.Q_DEBETORS.Close;
  DM.Q_DEBETORS.SQL.Clear;
  DM.Q_DEBETORS.SQL.Add(sql);
  if trim(edit1.Text) <> '' then DM.Q_DEBETORS.ParamByName('P1').AsString :=  '%' + AnsiUpperCase(Edit1.Text) + '%';
  if trim(edit2.Text) <> '' then DM.Q_DEBETORS.ParamByName('P2').AsString :=  '%' + AnsiUpperCase(Edit2.Text) + '%';
  If CheckBox1.Checked = true then
  begin
    DM.Q_DEBETORS.ParamByName('P3').AsDate := DateTimePicker1.Date;
    DM.Q_DEBETORS.ParamByName('P4').AsDate := DateTimePicker2.Date;
  end;
  DM.Q_DEBETORS.Open;
end;

// выключение фильтров
procedure Tdebetors.BitBtn9Click(Sender: TObject);
var sql: string;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '0';

  CheckBox2.Checked := false;
  CheckBox3.Checked := false;
  CheckBox4.Checked := false;
  CheckBox5.Checked := true;

  RadioButton3.Checked := true;
  CheckBox1.Checked := false;
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;

  sql := 'SELECT D.*, C.PHONE, C.REGION, C.NICK, C.FIO, G.NAME AS GROUP_NAME FROM S_CASH.DEBETORS D, S_CLIENTS.CLIENTS C, S_CLIENTS.CLIENTS_GROUPS G WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=G.ID_CLIENTS_GROUPS ORDER BY C.NICK';
  DM.Q_DEBETORS.Close;
  DM.Q_DEBETORS.SQL.Clear;
  DM.Q_DEBETORS.SQL.Add(sql);
  DM.Q_DEBETORS.Open;
end;

// Полный просмотр карточки дебетора
procedure Tdebetors.CRDBGrid1DblClick(Sender: TObject);
var sql: string;
    id: integer;
begin
  if DM.Q_DEBETORSID_DEBETORS.AsInteger > 0 then
  begin
    DM.Q_CLIENT_DEBT.Open;
    client_debt.Label1.Caption := 'Дебеторская карточка: ' + DM.Q_DEBETORSNICK.AsString + ' (' + DM.Q_DEBETORSFIO.AsString + ')';

    client_debt.ComboBox1.Visible := false;
    client_debt.CheckBox1.Visible := false;
    client_debt.Label18.Visible := false;

    // Если клиент состоит в какой-нибудь группе кроме общей, то заполняем список выпадающий
    //if ((DM.Q_DEBETORSGROUP_NAME.AsString <> 'Общая группа') and (ComboBox1.ItemIndex > 0)) then
    if (DM.Q_DEBETORSGROUP_NAME.AsString <> 'Общая группа') then
    begin
      //DM.Q_GROUPS.Locate('NAME',ComboBox1.Text,[loCaseInsensitive]);
      DM.Q_GROUPS.Locate('NAME',DM.Q_DEBETORSGROUP_NAME.AsString,[loCaseInsensitive]);
      DM.Q_SQL.Close;
      Dm.Q_SQL.SQL.Clear;
      //sql := 'SELECT D.ID_CLIENTS, C.NICK, C.FIO FROM S_CASH.DEBETORS D, S_CLIENTS.CLIENTS C WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS='+DM.Q_GROUPSID_CLIENTS_GROUPS.AsString+' ORDER BY C.NICK';
      sql := 'SELECT C.ID_CLIENTS, C.NICK, C.FIO FROM S_CLIENTS.CLIENTS C WHERE C.ID_CLIENTS_GROUPS='+DM.Q_GROUPSID_CLIENTS_GROUPS.AsString+' ORDER BY C.NICK';
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.Open;
      client_debt.ComboBox1.Items.Clear;
      while not DM.Q_SQL.Eof do
      begin
        client_debt.ComboBox1.Items.Add(DM.Q_SQL.FieldByName('NICK').AsString);
        DM.Q_SQL.Next;
      end;
      id := client_debt.ComboBox1.Items.IndexOf(DM.Q_DEBETORSNICK.AsString);
      client_debt.ComboBox1.ItemIndex := id;

      client_debt.ComboBox1.Visible := true;
      client_debt.CheckBox1.Visible := true;
      client_debt.Label18.Visible := true;
    end;

    client_debt.ShowModal;
  end;
end;

procedure Tdebetors.CheckBox5Click(Sender: TObject);
begin
  if checkbox5.Checked = true then
  begin
    CheckBox2.Checked := false;
    CheckBox3.Checked := false;
    CheckBox4.Checked := false;
    CheckBox6.Checked := false;
    CheckBox7.Checked := false;
    CheckBox8.Checked := false;
  end;
end;

procedure Tdebetors.CheckBox2Click(Sender: TObject);
begin
  if checkbox2.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.CheckBox3Click(Sender: TObject);
begin
  if checkbox3.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.CheckBox4Click(Sender: TObject);
begin
  if checkbox4.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.CheckBox8Click(Sender: TObject);
begin
  if checkbox8.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.CheckBox7Click(Sender: TObject);
begin
  if checkbox7.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.CheckBox6Click(Sender: TObject);
begin
  if checkbox6.Checked = true then CheckBox5.Checked := false;
end;

procedure Tdebetors.Action7Execute(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure Tdebetors.Panel4Resize(Sender: TObject);
begin
  BitBtn13.Left := Panel4.Width - 152;
end;

end.
