unit edit_e_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, StrUtils,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ComCtrls, ActnList, DBCtrls, PI_Library_reg;

type
  Tedits_e = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    LabeledEdit2: TLabeledEdit;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Memo2: TMemo;
    LabeledEdit5: TLabeledEdit;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Memo4: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    LabeledEdit1: TLabeledEdit;
    SpeedButton2: TSpeedButton;
    Memo3: TMemo;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    CheckBox2: TCheckBox;
    Label12: TLabel;
    CheckBox3: TCheckBox;
    Label13: TLabel;
    Edit2: TEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox4: TCheckBox;
    Label18: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    SpeedButton5: TSpeedButton;
    Label25: TLabel;
    Label26: TLabel;
    Label20: TLabel;
    DBText1: TDBText;
    Label22: TLabel;
    DBText3: TDBText;
    Label23: TLabel;
    DBText4: TDBText;
    Label24: TLabel;
    DBText5: TDBText;
    Memo5: TMemo;
    Label6: TLabel;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label19: TLabel;
    ComboBox1: TComboBox;
    chbRuleWebShop: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
  end;

var
  edits_e: Tedits_e;

implementation

uses DataM, main_form;

{$R *.dfm}

procedure Tedits_e.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

// Очистка данных
procedure Tedits_e.BitBtn2Click(Sender: TObject);
var ind: integer;
begin
  if (ttype = 1) then
  begin
    edits_e.ComboBox1.ItemIndex := -1;

    edits_e.LabeledEdit1.Text := '';
    edits_e.LabeledEdit2.Text := '';
    edits_e.LabeledEdit5.Text := '';
    edits_e.LabeledEdit6.Text := '0';
    edits_e.LabeledEdit7.Text := '0';
    edits_e.Edit1.Text := '';
    edits_e.Edit2.Text := '0,0,0';

    edits_e.Memo1.Lines.Clear;
    edits_e.Memo2.Lines.Clear;
    edits_e.Memo3.Lines.Clear;
    edits_e.Memo4.Lines.Clear;
    edits_e.Memo5.Lines.Clear;

    edits_e.CheckBox1.Checked := false;
  end;

  if (ttype = 2) then
  begin
    ind := edits_e.ComboBox1.Items.IndexOf(DM.Q_EMPL.FieldByName('REGION_NAME').AsString);
    edits_e.ComboBox1.ItemIndex := ind;

    edits_e.LabeledEdit1.Text := DM.Q_EMPL.FieldByName('NICK').AsString;
    edits_e.LabeledEdit2.Text := DM.Q_EMPL.FieldByName('FIO').AsString;
    edits_e.LabeledEdit5.Text := DM.Q_EMPL.FieldByName('EMAIL').AsString;
    edits_e.LabeledEdit6.Text := DM.Q_EMPL.FieldByName('INN').AsString;
    edits_e.LabeledEdit7.Text := DM.Q_EMPL.FieldByName('INSURANCE').AsString;
    edits_e.Edit1.Text := DM.Q_EMPL.FieldByName('CCODE').AsString;
    edits_e.Edit2.Text := DM.Q_EMPL.FieldByName('L_SERVICE').AsString;
    edits_e.Memo1.Text := DM.Q_EMPL.FieldByName('PHONE').AsString;
    edits_e.Memo2.Text := DM.Q_EMPL.FieldByName('DUTIES').AsString;
    edits_e.Memo3.Text := DM.Q_EMPL.FieldByName('PASSPORT').AsString;
    edits_e.Memo4.Text := DM.Q_EMPL.FieldByName('ADDRESS').AsString;
    edits_e.Memo5.Text := DM.Q_EMPL.FieldByName('INFO').AsString;

    if (DM.Q_EMPL.FieldByName('ACTIVE').AsInteger = 1) then edits_e.CheckBox1.Checked := true else edits_e.CheckBox1.Checked := false;
  end;
end;

// Генерация штрих кода для сотрудника
procedure Tedits_e.SpeedButton1Click(Sender: TObject);
var str: string;
    sum1, sum2, allsum: integer;
begin
  if ((ttype = 2) and ((Edit1.Text <> '0') OR (Edit1.Text <> ''))) then
  begin
    if MessageDlg('Вы действительно хотите перегенерировать штрих-код?'+#10#13+'Старый код будет помещен в черный список!',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('INSERT INTO CODES_BLACKLIST VALUES(:P1,:P2,SYSDATE)');
      DM.Ora_SQL.ParamByName('P1').Value := LabeledEdit1.Text;
      DM.Ora_SQL.ParamByName('P2').Value := Edit1.Text;
      DM.Ora_SQL.Execute;
      DM.OraSession1.Commit;
    end;
  end;


  // Генерация кода сотрудника
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT EAN12_TO_EAN13(to_char(EMPLOYEES_CODE.nextval)) as nn from DUAL');
//  DM.Q_SQL.SQL.Add('SELECT EMPLOYEES_CODE.nextval from DUAL');
//  DM.Q_SQL.SQL.Add('SELECT (CONST_OFFICE * 10000000 + EMPLOYEES_CODE.nextval) as nn from DUAL');
  DM.Q_SQL.Open;

  // Алгоритм EAN13
    str := DM.Q_SQL.FieldByName('nn').AsString;
    Edit1.Text := str;
{
    ShowMessage(str);
    try
      sum1 := (strtoint(str[2]) + strtoint(str[4]) + strtoint(str[6]) + strtoint(str[8]) + strtoint(str[10]) + strtoint(str[12])) * 3;
    ShowMessage(IntToStr(sum1));
      sum2 := strtoint(str[1]) + strtoint(str[3]) + strtoint(str[5]) + strtoint(str[7]) + strtoint(str[9]) + strtoint(str[11]);
    ShowMessage(IntToStr(sum2));
      allsum := sum1 + sum2;
    except
      null;
    end;

//ShowMessage('1');

    str := inttostr(allsum);
    sum1 := strtoint(str[length(str)]);
    sum2 := 10 - sum1;
    if sum2 = 10 then sum2 := 0;

  Edit1.Text := Edit1.Text + inttostr(sum2);
}  
  DM.Q_SQL.Close;
end;

// Проверка уникальности НИКа
procedure Tedits_e.SpeedButton2Click(Sender: TObject);
var str, sql: string;
begin
  // 2013-08-08 str := trim(copy(trim(labeledEdit1.text),2,length(trim(labeledEdit1.text))));
  str := trim(labeledEdit1.text);
  sql := 'SELECT ID_CLIENTS from CLIENTS_VIEW2 WHERE UPPER(NICK) = '''+ UpperCase(str) +''' and id_office='+IntToStr(DM.id_office);
  // Генерация кода сотрудника
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add(sql);
  DM.Q_SQL.Open;

  if DM.Q_SQL.RecordCount > 0 then ShowMessage('Данный код уже имеется в БД!')
  else ShowMessage('Код уникальный!');

  DM.Q_SQL.Close;
end;


// Добавление записи
procedure Tedits_e.BitBtn1Click(Sender: TObject);
var sql, nick, region: string;
    price, price1: ansistring;
    ind, flag: integer;
begin
  flag := 1;

  if ( (trim(LabeledEdit1.Text) = '') or (trim(LabeledEdit2.Text) = '') or (trim(LabeledEdit7.Text) = '') or (trim(Memo1.Text) = '') or (trim(Memo3.Text) = '') or (trim(Memo4.Text) = '') or (trim(Edit1.Text) = '')) then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    if flag = 1 then
    begin
      DM.Ora_SQL.SQL.Clear;
      ind := 0;

      DM.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
      region := DM.Q_REGIONS.FieldByName('ID_REGIONS').AsString;



      // SQL для добавления
      if (ttype = 1) then
      begin
        // Продажа с колес
        if (chbRuleWebShop.Checked = true) then price := '0,0,0,0,1' else price := '0,0,0,0,0';

        sql := 'INSERT INTO CLIENTS(ID_CLIENTS,FIO,NICK,CCODE,REGION,ADDRESS,PHONE,PASSPORT,EMAIL,INN,AGREEMENT,ADVERTISMENT,DDATE,TTYPE,ID_CLIENTS_GROUPS,CORRECTOR,DUTIES,INSURANCE,DATE_IN,DATE_OUT,L_SERVICE,STAFF,ACTIVE,INFO, block1,block2,id_office,DATE_CHANGE,MARK) ';
        sql := sql + ' VALUES(get_office_unique(''CLIENTS_ID''),:P1,:P2,:P3,:preg,:P4,:P5,:P6,:P7,:P8,''Без договора'',1,SYSDATE,1,1,'''+ main.corrector +''',:P9,:P10,:P11,:P12,:P13,:P14,:P15,:P16,:p20,:p21,CONST_OFFICE,sysdate,:P24)';
        DM.Ora_SQL.SQL.Add(sql);
{
        case GetOfficeID of
          1: DM.Ora_SQL.ParamByName('preg').Value := 1;
          2: DM.Ora_SQL.ParamByName('preg').Value := 826;
          3: DM.Ora_SQL.ParamByName('preg').Value := 782;
          4: DM.Ora_SQL.ParamByName('preg').Value := 402;
          5: DM.Ora_SQL.ParamByName('preg').Value := 421;
          6: DM.Ora_SQL.ParamByName('preg').Value := 611;
        end;
}
//        DM.Ora_SQL.ParamByName('preg').Value := region;
      end;

      // SQL для редактирования
      if (ttype = 2) then
      begin
        ind := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
        nick := DM.Q_EMPL.FieldByName('NICK').AsString;


        // Продажа с колес
        DM.OraQuery1.close;
        DM.OraQuery1.SQL.clear;
        DM.OraQuery1.SQL.Add('select mark from CLIENTS where ID_CLIENTS='+inttostr(ind));
        DM.OraQuery1.Open;
        price1 := DM.OraQuery1.FieldByName('mark').asstring;
        DM.OraQuery1.close;

        if (chbRuleWebShop.Checked = true) then price := StuffString(price1, 8, 2, ',1') else price := StuffString(price1, 8, 2, ',0');

        sql := 'UPDATE CLIENTS SET REGION=:preg, FIO=:P1, ADDRESS=:P4, PASSPORT=:P6, PHONE=:P5, EMAIL=:P7, DUTIES=:P9, INN=:P8, INSURANCE=:P10, block1=:p20, block2=:p21, DATE_CHANGE=sysdate, ';
        sql := sql + ' DATE_IN=:P11, DATE_OUT=:P12, L_SERVICE=:P13, STAFF=:P14, ACTIVE=:P15, NICK=:P2, CCODE=:P3, INFO=:P16, MARK=:P24, DATE_COR=SYSDATE, CORRECTOR_COR='''+ main.corrector +''' WHERE ID_CLIENTS=:ID';
        DM.Ora_SQL.SQL.Add(sql);
        DM.Ora_SQL.ParamByName('ID').Value := ind;
      end;

      DM.Ora_SQL.ParamByName('preg').Value := region;
      DM.Ora_SQL.ParamByName('P1').Value := trim(LabeledEdit2.Text);  // ФИО
      DM.Ora_SQL.ParamByName('P2').Value := LabeledEdit1.Text;        // Код клиента
      DM.Ora_SQL.ParamByName('P3').Value := Edit1.Text;               // Штрих код
      DM.Ora_SQL.ParamByName('P4').Value := Memo4.Text;     // Адрес
      DM.Ora_SQL.ParamByName('P5').Value := Memo1.Text;     // Телефоны
      DM.Ora_SQL.ParamByName('P6').Value := Memo3.Text;     // Паспорт
      DM.Ora_SQL.ParamByName('P7').Value := trim(LabeledEdit5.Text); // E-Mail
      DM.Ora_SQL.ParamByName('P8').Value := trim(LabeledEdit6.Text);  //  ИНН
      DM.Ora_SQL.ParamByName('P9').Value := Memo2.Text;   // Обязанности
      DM.Ora_SQL.ParamByName('P10').Value := trim(LabeledEdit7.Text);  //  Страхование
      DM.Ora_SQL.ParamByName('P11').AsDate := DateTimePicker1.Date;
      if (CheckBox4.Checked = true) then DM.Ora_SQL.ParamByName('P12').AsDate := DateTimePicker2.Date else DM.Ora_SQL.ParamByName('P12').Value := null;
      DM.Ora_SQL.ParamByName('P13').Value := trim(Edit2.Text); // Стаж работы
      if CheckBox2.Checked = true then DM.Ora_SQL.ParamByName('P14').Value := 1 else DM.Ora_SQL.ParamByName('P14').Value := 0;   // Штат
      if CheckBox1.Checked = true then DM.Ora_SQL.ParamByName('P15').Value := 1 else DM.Ora_SQL.ParamByName('P15').Value := 0;   // Активен
      DM.Ora_SQL.ParamByName('P16').Value := Memo5.Text;   // Доп инфо

      if (CheckBox6.Checked = true) then DM.Ora_SQL.ParamByName('P20').Value := 1 else DM.Ora_SQL.ParamByName('P20').Value := 0;
      if (CheckBox5.Checked = true) then DM.Ora_SQL.ParamByName('P21').Value := 1 else DM.Ora_SQL.ParamByName('P21').Value := 0;

      DM.Ora_SQL.ParamByName('P24').Value := price;

      // Пытаемся выполнить SQL запрос
      try
        DM.Ora_SQL.Execute;

        if (ttype = 1) then
        begin
          DM.Q_IDD.SQL.Clear;
          DM.Q_IDD.SQL.Add('SELECT (CONST_OFFICE * 10000000 + CLIENTS_ID.currval) as nn from DUAL');
          DM.Q_IDD.Open;
          ind := DM.Q_IDD.FieldByName('nn').AsInteger;
        end;

        DM.OraSession1.Commit;
        DM.Q_EMPL.Refresh;
        DM.Q_EMPL.Locate('ID_CLIENTS',ind,[]);
        DM.Q_CLIENTS.Refresh;
        DM.Q_G_CL.Refresh;

        close;
      except
        on E: Exception do
           ShowMessage('Ошибка при записи!'#13#10+E.Message);
      End;
    end; // if flag = 1 then
  end;
end;

procedure Tedits_e.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then CheckBox3.Checked := false;
end;

procedure Tedits_e.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then CheckBox2.Checked := false;
end;

procedure Tedits_e.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then DateTimePicker2.Enabled := true else DateTimePicker2.Enabled := false;
end;

procedure Tedits_e.SpeedButton5Click(Sender: TObject);
begin
  ShowMessage('Для навигации по полям ввода вниз импользуйте "TAB"'+#10+#13+'Для навигации по полям ввода вверх импользуйте "SHIFT+TAB"'+#10+#13+'Для перехода на новую строку в полях типа Адрес используйте "SHIFT+ENTER"'+#10+#13+'Для записи данных используйте "ENTER"'+#10+#13+'Для выхода из формы используйте "ESC"');
end;

end.
