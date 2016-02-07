unit client_debt_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, CRGrid, Buttons, StdCtrls, ExtCtrls, ActnList,
  ComCtrls;

type
  Tclient_debt_edit = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    DateTimePicker2: TDateTimePicker;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  client_debt_edit: Tclient_debt_edit;

implementation

uses DataM;

{$R *.dfm}

procedure Tclient_debt_edit.BitBtn13Click(Sender: TObject);
begin
  close;
end;

// Запись
procedure Tclient_debt_edit.BitBtn1Click(Sender: TObject);
var sql: string;
    ind, ind2: integer;
    test1: currency;

begin
  if trim(Edit5.Text) = '' then Edit5.Text := '0';
  if trim(Edit6.Text) = '' then Edit6.Text := '0';
  if trim(Edit7.Text) = '' then Edit7.Text := '0';
  if trim(Edit1.Text) = '' then Edit1.Text := '0';

  try
    test1 := StrToCurr(Edit5.Text);
    test1 := StrToCurr(Edit6.Text);
    test1 := StrToCurr(Edit7.Text);
    test1 := StrToCurr(Edit1.Text);

    ind2 := DM.Q_DEBETORSID_DEBETORS.AsInteger;

    DM.Ora_SQL.SQL.Clear;

    if (state = 1) then
    begin
      sql := 'INSERT INTO S_CASH.CLIENT_DEBT VALUES(:ID, :P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9)';
      DM.Ora_SQL.SQL.Add(sql);
      DM.Ora_SQL.ParamByName('ID').Value := 1;
      DM.Ora_SQL.ParamByName('P1').Value := DM.Q_DEBETORSID_DEBETORS.AsInteger;
      DM.Ora_SQL.ParamByName('P5').AsDateTime := date()+time();
    end;

    if (state = 2) then
    begin
      ind := DM.Q_CLIENT_DEBTID_CLIENT_DEBT.AsInteger;
      sql := 'UPDATE S_CASH.CLIENT_DEBT SET DEBET=:P2, RATE=:P3, DDATE=:P4, OPERATION=:P6, INVOICE=:P7, SUMM=:P8, IN_RUB=:P9 WHERE ID_CLIENT_DEBT='+inttostr(ind);
      DM.Ora_SQL.SQL.Add(sql);
    end;

      DateTimePicker1.Time := DateTimePicker2.Time;
      DM.Ora_SQL.ParamByName('P4').AsDateTime := DateTimePicker1.DateTime;

      DM.Ora_SQL.ParamByName('P2').Value := trim(Edit7.Text);
      DM.Ora_SQL.ParamByName('P3').Value := trim(Edit1.Text);

      DM.OPERATIONS.Locate('T_LONG',ComboBox1.Text,[]);
      DM.Ora_SQL.ParamByName('P6').Value := DM.OPERATIONSID_OPERATIONS.AsInteger;

      DM.Ora_SQL.ParamByName('P7').Value := trim(Edit4.Text);
      DM.Ora_SQL.ParamByName('P8').Value := trim(Edit5.Text);
      DM.Ora_SQL.ParamByName('P9').Value := trim(Edit6.Text);

      // Пытаемся выполнить SQL запрос
      if (state = 1) then DM.Session_SQL.Connect;
      DM.Ora_SQL.Execute;

      if (state = 1) then
      begin
        DM.Q_IDD.SQL.Clear;
        DM.Q_IDD.SQL.Add('SELECT S_CASH.CLIENT_DEBT_ID.currval from DUAL');
        DM.Q_IDD.Open;
        ind := DM.Q_IDD.FieldByName('currval').AsInteger;
      end;

      DM.Session_SQL.Commit;

      DM.OraStoredProc1.ParamByName('ID_DEBT').AsInteger := ind2;
      DM.OraStoredProc1.Execute;

      DM.Q_DEBETORS.Refresh;

      DM.Q_DEBETORS.Locate('ID_DEBETORS',ind2,[]);
      DM.Q_CLIENT_DEBT.Refresh;
      DM.Q_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',ind,[]);

      DM.Session_SQL.Commit;
      DM.Session_SQL.Disconnect;

       if (state = 1) then ShowMessage('Добавление данных прошло успешно.');
       if (state = 2) then ShowMessage('Редактирование данных прошло успешно.');
       close;
  except
    on E: EConvertError do ShowMessage(E.Message);
    on E: Exception do
    begin
       if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
       else ShowMessage(E.Message);
    end;
  end;
end;

procedure Tclient_debt_edit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (state = 2) then DM.Session_SQL.Disconnect;
end;

procedure Tclient_debt_edit.SpeedButton1Click(Sender: TObject);
begin
  try
    if trim(Edit6.Text) = '' then Edit6.Text := '0';
    if trim(Edit5.Text) = '' then Edit5.Text := '0';

    Edit7.Text := CurrToStr( StrToCurr(Edit5.Text) - StrToCurr(Edit6.Text) );
  except
    ShowMessage('Ошибка при задании Суммы или Оплаты');
  end
end;

end.
