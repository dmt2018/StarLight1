unit nakl_edit2_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DBCtrls, ActnList, Grids,
  DBGrids, DB, StrUtils;

type
  Tnakl_edit2 = class(TForm)
    Panel4: TPanel;
    BitBtn13: TBitBtn;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBText3: TDBText;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Panel2: TPanel;
    Label3: TLabel;
    Label21: TLabel;
    RadioGroup1: TRadioGroup;
    DateTimePicker1: TDateTimePicker;
    ComboBox2: TComboBox;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nakl_edit2: Tnakl_edit2;

implementation

uses DataM;

{$R *.dfm}

procedure Tnakl_edit2.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tnakl_edit2.BitBtn1Click(Sender: TObject);
var sql: string;
    ind: integer;
begin
  if (ComboBox1.ItemIndex < 0) then ShowMessage('Не заполнены обязательные поля!')
  else
  begin
      if DM.Q_CASH_SEARCH.Active = true then
         ind := DM.Q_CASH_SEARCHID_CASH.AsInteger
      else
      begin
         if DM.Q_CASH_S.Active = true then
            ind := DM.Q_CASH_SID_CASH.AsInteger
         else
            ind := DM.Q_CASHID_CASH.AsInteger;
      end;

      sql := 'UPDATE S_CASH.CASH SET ID_CLIENTS=:ID_CL, R_PAYDESK=:PP2, R_DDATE=:PP3, OPERATION=:P9, SUMM=:P2, IN_RUB=:P3, OUT_RUB=:P4, IN_USD=:P5, OUT_USD=:P6, IN_EU=:P7, OUT_EU=:P8, COR_DATE=:P1, INFO='''+ Edit3.Text +''', CORRECTOR2=:P10 WHERE ID_CASH='+inttostr(ind);

      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add(sql);
      DM.Ora_SQL.ParamByName('P1').AsDateTime := Date() + Time();

      DM.Ora_SQL.ParamByName('PP2').Value := (RadioGroup1.ItemIndex + 1);
      DM.Ora_SQL.ParamByName('PP3').AsDate := DateTimePicker1.Date;
      DM.Ora_SQL.ParamByName('ID_CL').Value := DM.Q_CLIENTSID_CLIENTS.AsInteger;

      if (trim(Edit2.Text) = '') then DM.Ora_SQL.ParamByName('P2').Value := null else DM.Ora_SQL.ParamByName('P2').Value := Edit2.Text;
      if (trim(Edit4.Text) = '') then DM.Ora_SQL.ParamByName('P3').Value := null else DM.Ora_SQL.ParamByName('P3').Value := Edit4.Text;
      if (trim(Edit7.Text) = '') then DM.Ora_SQL.ParamByName('P4').Value := null else DM.Ora_SQL.ParamByName('P4').Value := Edit7.Text;
      if (trim(Edit5.Text) = '') then DM.Ora_SQL.ParamByName('P5').Value := null else DM.Ora_SQL.ParamByName('P5').Value := Edit5.Text;
      if (trim(Edit8.Text) = '') then DM.Ora_SQL.ParamByName('P6').Value := null else DM.Ora_SQL.ParamByName('P6').Value := Edit8.Text;
      if (trim(Edit6.Text) = '') then DM.Ora_SQL.ParamByName('P7').Value := null else DM.Ora_SQL.ParamByName('P7').Value := Edit6.Text;
      if (trim(Edit9.Text) = '') then DM.Ora_SQL.ParamByName('P8').Value := null else DM.Ora_SQL.ParamByName('P8').Value := Edit9.Text;
      DM.Ora_SQL.ParamByName('P10').Value := DM.OraSession1.Username;
      //DM.Ora_SQL.ParamByName('P10').Value := DM.OraSession1.Username; //cashbook.corrector;

      DM.OPERATIONS.Locate('T_LONG',ComboBox1.Text,[]);
      DM.Ora_SQL.ParamByName('P9').Value := DM.OPERATIONSID_OPERATIONS.AsInteger;

      // Пытаемся выполнить SQL запрос
      try
        DM.Ora_SQL.Execute;

        DM.Session_SQL.Commit;
        DM.Session_SQL.Disconnect;

        if DM.Q_CASH_SEARCH.Active = true then
        begin
          DM.Q_CASH_SEARCH.Refresh;
          DM.Q_CASH_SEARCH.Locate('ID_CASH',ind,[]);
        end
        else
        begin
          DM.Q_CASH.Refresh;
          DM.Q_CASH.Locate('ID_CASH',ind,[]);
        end;

        close;
      except
        on E: Exception do
        begin
          if (AnsiContainsStr(E.Message, '01031') = true) then ShowMessage('У вас нет прав на данную операцию!')
          else  ShowMessage(E.Message);
        end;
      End;
  end;
end;

procedure Tnakl_edit2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (DM.Session_SQL.Connected = true) then DM.Session_SQL.Disconnect;
end;

procedure Tnakl_edit2.ComboBox2Change(Sender: TObject);
var ind: integer;
begin
  DM.OPERATIONS.Locate('T_SHORT',ComboBox2.Text,[]);

  ind := nakl_edit2.ComboBox1.Items.IndexOf(DM.OPERATIONST_LONG.AsString);
  nakl_edit2.ComboBox1.ItemIndex := ind;

  DM.Q_CLIENTS.Locate('NICK',DM.OPERATIONST_SHORT.AsString,[loCaseInsensitive]);
end;

procedure Tnakl_edit2.ComboBox1Change(Sender: TObject);
var ind: integer;
begin
  DM.OPERATIONS.Locate('T_LONG',ComboBox1.Text,[]);

  ind := nakl_edit2.ComboBox2.Items.IndexOf(DM.OPERATIONST_SHORT.AsString);
  nakl_edit2.ComboBox2.ItemIndex := ind;

  DM.Q_CLIENTS.Locate('NICK',DM.OPERATIONST_SHORT.AsString,[loCaseInsensitive]);
end;

end.
