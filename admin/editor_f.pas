unit editor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, PI_library, Mask, DBCtrlsEh;

type
  Teditor = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label6: TLabel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Label7: TLabel;
    Store_DepsCBEx: TDBComboBoxEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ttype: integer;
    { Public declarations }
  end;

var
  editor: Teditor;

implementation

uses DataM, main_form;

{$R *.dfm}

procedure Teditor.BitBtn1Click(Sender: TObject);
begin
  Close;
end;


// Запись изменений
procedure Teditor.BitBtn3Click(Sender: TObject);
begin
if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
else
begin
    DM.Ora_SQL.SQL.Clear;

    if ((ttype = 1) or (ttype = 2)) then
    begin
      DM.Ora_SQL.SQL.Add('begin admins.save_PROGRAMS(:name_, :info_, :dll_, :id_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('dll_').AsString := '';
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 3) or (ttype = 4)) then
    begin
      DM.Ora_SQL.SQL.Add('begin admins.save_ROLE_GROUPS(:name_, :info_, :id_dep_, :id_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_dep_').AsInteger := Store_DepsCBEx.Value;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;

    // Пытаемся выполнить SQL запрос
    try
      DM.Ora_SQL.Execute;
      if ((ttype = 1) or (ttype = 2)) then
      begin
        DM.Q_PROGS.Refresh;
        DM.Q_PROGS.Locate('ID_ADMIN_PROGRAMS',Edit1.Tag,[]);
      end;

      if ((ttype = 4) or (ttype = 3)) then
      begin
        DM.Q_GROUPS.Refresh;
        DM.Q_GROUPS.Locate('ID_ROLE_GROUPS',Edit1.Tag,[]);
      end;

      close;
    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else  ShowMessage(E.Message);
      end;
    End;
end;
end;


// Очистка
procedure Teditor.BitBtn5Click(Sender: TObject);
begin
  if ((ttype = 1) or (ttype = 3)) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    editor.Edit1.Text := DM.Q_PROGS.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_PROGS.FieldByName('INFO').AsString;
  end;

  if (ttype = 4) then
  begin
    editor.Edit1.Text := DM.Q_GROUPS.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_GROUPS.FieldByName('INFO').AsString;
  end;
end;

procedure Teditor.FormShow(Sender: TObject);
begin
  if ((ttype = 3) or (ttype = 4)) then
  begin
    Label7.Visible := true;
    Store_DepsCBEx.Visible := true;
    with DM.Q_IDD do
    Begin
    try
      Close;
      SQL.Clear;
      SQL.Add('begin admins.get_deps_on_user(:cursor_); end;');
//      ParamByName('login_').Value := UpperCase(DataM.Operator_username);
      ParamByName('cursor_').AsCursor;
      Open;
    except
      on E: Exception do
         if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then NULL else MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
    end;
    End;

    FillComboOlmer(DM.Q_IDD, Store_DepsCBEx, 'Все отделы');
    if Store_DepsCBEx.Tag > 0 then Store_DepsCBEx.Value := Store_DepsCBEx.Tag;
    
  end
  else
  begin
    Label7.Visible := false;
    Store_DepsCBEx.Visible := false;
  end;
end;

end.
