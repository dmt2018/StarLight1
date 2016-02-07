unit editor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ActnList;

type
  Teditor = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    Action1: TAction;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
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
var ind: integer;
begin
  if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    ind := DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger;

    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    if (ttype = 1) then
    begin
      DM.Q_SQL.SQL.Add('select count(1) as nn from CLIENTS_GROUPS where upper(name)=:NAME and ID_CLIENTS_GROUPS <> :id and id_office='+IntToStr(DM.id_office));
      DM.Q_SQL.ParamByName('ID').Value := 0;
    end;
    if (ttype = 2) then
    begin
      DM.Q_SQL.SQL.Add('select count(1) as nn from CLIENTS_GROUPS where upper(name)=:NAME and ID_CLIENTS_GROUPS <> :id and id_office='+IntToStr(DM.id_office));
      DM.Q_SQL.ParamByName('ID').Value := ind;
    end;
    DM.Q_SQL.ParamByName('NAME').Value := UpperCase(Edit1.Text);
    DM.Q_SQL.Open;
    if (DM.Q_SQL.FieldByName('nn').AsInteger > 0) then
    begin
      MessageBox(Handle,'Такое название уже существует!','Внимание',MB_ICONWARNING);
      exit;
    end;
    


    DM.Ora_SQL.SQL.Clear;

    // SQL запросы для источников рекламы
    if (ttype = 1) then
    begin
      DM.Ora_SQL.SQL.Add('INSERT INTO CLIENTS_GROUPS VALUES(get_office_unique(''CLIENTS_ID_GROUPS''),:NAME,:INFO,CONST_OFFICE, sysdate)');
      //DM.Ora_SQL.ParamByName('ID').Value := 0;
    end;

    if (ttype = 2) then
    begin
      DM.Ora_SQL.SQL.Add('UPDATE CLIENTS_GROUPS SET NAME=:NAME, INFO=:INFO, DATE_CHANGE = sysdate WHERE ID_CLIENTS_GROUPS=:ID');
      DM.Ora_SQL.ParamByName('ID').Value := ind;
    end;

    DM.Ora_SQL.ParamByName('NAME').Value := Edit1.Text;
    DM.Ora_SQL.ParamByName('INFO').Value := Memo1.Text;

    // Пытаемся выполнить SQL запрос
    try
      DM.Ora_SQL.Execute;

      if (ttype = 1) then
      begin
        DM.Q_IDD.SQL.Clear;
//        DM.Q_IDD.SQL.Add('SELECT CLIENTS_ID_GROUPS.currval from DUAL');
        DM.Q_IDD.SQL.Add('SELECT (CONST_OFFICE * 10000000 + CLIENTS_ID_GROUPS.currval) as nn from DUAL');
        DM.Q_IDD.Open;
        ind := DM.Q_IDD.FieldByName('nn').AsInteger;
      end;

      DM.OraSession1.Commit;

      DM.Q_GROUPS.Close;
      DM.Q_G_CL.Close;
      DM.Q_GROUPS.Open;
      DM.Q_G_CL.Open;
      DM.Q_GROUPS.Locate('ID_CLIENTS_GROUPS',ind,[]);

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
  if (ttype = 1) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    editor.Edit1.Text := DM.Q_GROUPS.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_GROUPS.FieldByName('INFO').AsString;
  end;
end;

end.
