unit set_cash_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls;

type
  Tset_cash = class(TForm)
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  set_cash: Tset_cash;

implementation

uses DataM;

{$R *.dfm}

procedure Tset_cash.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tset_cash.BitBtn1Click(Sender: TObject);
var sql: string;
begin
  If ComboBox1.ItemIndex > -1 then
  begin
    if DM.Q_EMPL.Locate('FIO',ComboBox1.Text,[]) = true then
    begin
      sql := 'UPDATE S_CASH.SET_CASH SET ID_CLIENTS='+DM.Q_EMPLID_EMPLOYEES.AsString+' where N_CASH='+DBGridEh1.SelectedField.AsString;
      //DM.Q_IDD.Close;
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add(sql);

      // Пытаемся выполнить SQL запрос
      try
        DM.Session_SQL.Connect;
        DM.Ora_SQL.Execute;
        DM.Session_SQL.Commit;
        DM.Session_SQL.Disconnect;

        DM.Q_SET_CASH.Refresh;
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

end.
