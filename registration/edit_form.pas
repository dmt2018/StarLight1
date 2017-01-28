unit edit_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, DB, ActnList, DBCtrls,
  Mask, DBCtrlsEh, cxStyles, cxGraphics, cxEdit, cxVGrid, cxDBVGrid,
  cxControls, cxInplaceContainer, cxDBLookupComboBox, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Ora, MemDS, DBAccess, ImgList, PI_Library_reg,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit;
type
  Tedits = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    LabeledEdit1: TLabeledEdit;
    Label15: TLabel;
    Label16: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label18: TLabel;
    ComboBox4: TComboBox;
    Label8: TLabel;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton5: TSpeedButton;
    Action2: TAction;
    ComboBox3: TComboBox;
    Label6: TLabel;
    Label9: TLabel;
    LabeledEdit2: TLabeledEdit;
    Label10: TLabel;
    LabeledEdit9: TLabeledEdit;
    Label11: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Memo6: TMemo;
    Label22: TLabel;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Memo3: TMemo;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Panel4: TPanel;
    Label27: TLabel;
    BitBtn4: TBitBtn;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    Memo5: TMemo;
    Label21: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label3: TLabel;
    Memo4: TMemo;
    Label20: TLabel;
    SpeedButton6: TSpeedButton;
    Label13: TLabel;
    DBText1: TDBText;
    Label14: TLabel;
    DBText2: TDBText;
    Label17: TLabel;
    DBText3: TDBText;
    Label23: TLabel;
    DBText4: TDBText;
    Label24: TLabel;
    Memo7: TMemo;
    Label33: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    CheckBox6: TCheckBox;
    TabSheet3: TTabSheet;
    gr_address: TcxGrid;
    gr_address_v: TcxGridDBTableView;
    gr_address_vADDRESS: TcxGridDBColumn;
    gr_address_l: TcxGridLevel;
    Q_ADDRESS: TOraQuery;
    Q_Q_ADDRESS_DS: TOraDataSource;
    Q_ADDRESSID: TIntegerField;
    Q_ADDRESSADDRESS: TStringField;
    gr_address_vID: TcxGridDBColumn;
    Q_ADDRESSID_CLIENTS: TIntegerField;
    gr_address_vID_CLIENTS: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    Label28: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    lePrefix: TLabeledEdit;
    Label29: TLabel;
    cdsCity: TOraQuery;
    dsCity: TOraDataSource;
    cdsCityID_CITY: TIntegerField;
    cdsCityCITY: TStringField;
    cdsCityKOD: TStringField;
    icbCity: TcxLookupComboBox;
    cdsCityID_REGION: TIntegerField;
    btnAddCity: TSpeedButton;
    tshRules: TTabSheet;
    chbRuleSite: TCheckBox;
    chbRulePics: TCheckBox;
    chbRulePrice: TCheckBox;
    chbRuleOrder: TCheckBox;
    btnClone: TBitBtn;
    Q_CLIENT_VIEW: TOraQuery;
    Q_CLIENT_VIEWID_CLIENTS: TIntegerField;
    Q_CLIENT_VIEWFIO: TStringField;
    Q_CLIENT_VIEWNICK: TStringField;
    Q_CLIENT_VIEWCCODE: TStringField;
    Q_CLIENT_VIEWREGION: TIntegerField;
    Q_CLIENT_VIEWADDRESS: TStringField;
    Q_CLIENT_VIEWU_ADDRESS: TStringField;
    Q_CLIENT_VIEWPHONE: TStringField;
    Q_CLIENT_VIEWPASSPORT: TStringField;
    Q_CLIENT_VIEWCONTACT: TStringField;
    Q_CLIENT_VIEWCONT_PHONE: TStringField;
    Q_CLIENT_VIEWEMAIL: TStringField;
    Q_CLIENT_VIEWWWW: TStringField;
    Q_CLIENT_VIEWINN: TStringField;
    Q_CLIENT_VIEWREG_SVID: TStringField;
    Q_CLIENT_VIEWKPP: TStringField;
    Q_CLIENT_VIEWOKATO: TStringField;
    Q_CLIENT_VIEWBANK: TStringField;
    Q_CLIENT_VIEWAGREEMENT: TStringField;
    Q_CLIENT_VIEWADVERTISMENT: TIntegerField;
    Q_CLIENT_VIEWDDATE: TDateTimeField;
    Q_CLIENT_VIEWBLOCK1: TIntegerField;
    Q_CLIENT_VIEWBLOCK2: TIntegerField;
    Q_CLIENT_VIEWFLOWERS: TIntegerField;
    Q_CLIENT_VIEWPLANTS: TIntegerField;
    Q_CLIENT_VIEWMARK: TStringField;
    Q_CLIENT_VIEWTTYPE: TIntegerField;
    Q_CLIENT_VIEWID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENT_VIEWCORRECTOR: TStringField;
    Q_CLIENT_VIEWDATE_COR: TDateTimeField;
    Q_CLIENT_VIEWCORRECTOR_COR: TStringField;
    Q_CLIENT_VIEWDUTIES: TStringField;
    Q_CLIENT_VIEWINSURANCE: TStringField;
    Q_CLIENT_VIEWDATE_IN: TDateTimeField;
    Q_CLIENT_VIEWDATE_OUT: TDateTimeField;
    Q_CLIENT_VIEWL_SERVICE: TStringField;
    Q_CLIENT_VIEWSTAFF: TIntegerField;
    Q_CLIENT_VIEWACTIVE: TIntegerField;
    Q_CLIENT_VIEWLOGIN: TStringField;
    Q_CLIENT_VIEWINFO: TStringField;
    Q_CLIENT_VIEWREG_TYPE: TIntegerField;
    Q_CLIENT_VIEWCOUNT: TIntegerField;
    Q_CLIENT_VIEWDOSTAVKA: TIntegerField;
    Q_CLIENT_VIEWID_OFFICE: TIntegerField;
    Q_CLIENT_VIEWDATE_CHANGE: TDateTimeField;
    Q_CLIENT_VIEWPREFIX: TStringField;
    Q_CLIENT_VIEWID_CITY: TIntegerField;
    Q_CLIENT_VIEWREG_TYPE_NAME: TStringField;
    Q_CLIENT_VIEWGROUP_NAME: TStringField;
    Q_CLIENT_VIEWTTYPE_NAME: TStringField;
    Q_CLIENT_VIEWREGION_NAME: TStringField;
    Q_CLIENT_VIEWADVERT: TStringField;
    Q_CLIENT_VIEWCITY: TStringField;
    chbRuleWebShop: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Q_ADDRESSAfterInsert(DataSet: TDataSet);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure btnAddCityClick(Sender: TObject);
    procedure btnCloneClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
  end;

var
  edits: Tedits;

implementation

uses DataM, main_form, editor_f, UCityEditor, client_choos;

{$R *.dfm}

procedure Tedits.BitBtn3Click(Sender: TObject);
begin
  close;
end;

// Кнопка БЕЗ ДОГОВОРА
procedure Tedits.SpeedButton3Click(Sender: TObject);
begin
  LabeledEdit9.Text := 'Без договора';
end;

// Добавление \ редактирование
procedure Tedits.BitBtn1Click(Sender: TObject);
var sql, region, reklama, t_type, plant, flower, price, block1, block2, id_group, dostavka: string;
    ind, flag: integer;
begin
  if ( (trim(LabeledEdit1.Text) = '') or (trim(LabeledEdit2.Text) = '')  or (trim(LabeledEdit9.Text) = '') or (ComboBox1.ItemIndex = -1) or (ComboBox2.ItemIndex = -1) or (ComboBox3.ItemIndex = -1) or (ComboBox4.ItemIndex = -1) or (trim(Edit1.Text) = '') ) then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    flag := 1;

    if (trim(labeledEdit1.text)[1] = 'S') then
    begin
      flag := 0;
      Application.MessageBox('Нельзя использовать служебный символ S в начале кода клиента.','Внимание!',MB_ICONWARNING)
    end;

    if flag = 1 then
    begin
      icbCity.PostEditValue;
      
      DM.Q_GROUPS.Locate('NAME',ComboBox4.Text,[]);
      id_group := DM.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsString;

      if (StrToInt(id_group) = 1) then
        Application.MessageBox('Нельзя при редактировании клиента указывать группу "Сотрудник фирмы".\nРабота с сотрудниками фирмы происходит в соответствующем разделе.','Внимание!',MB_ICONWARNING)
      else
      begin
        DM.Ora_SQL.SQL.Clear;
        ind := 0;

        DM.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
        region := DM.Q_REGIONS.FieldByName('ID_REGIONS').AsString;

        DM.Q_ADVERT.Locate('NAME',ComboBox2.Text,[]);
        reklama := DM.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').AsString;

        DM.Q_TYPES.Locate('NAME',ComboBox3.Text,[]);
        t_type := DM.Q_TYPES.FieldByName('ID_CLIENT_TYPES').AsString;

        if (CheckBox1.Checked = true) then plant := '1' else plant := '0';
        if (CheckBox2.Checked = true) then flower := '1' else flower := '0';
        if (CheckBox4.Checked = true) then block2 := '1' else block2 := '0';
        if (CheckBox5.Checked = true) then block1 := '1' else block1 := '0';
        if (CheckBox6.Checked = true) then dostavka := '1' else dostavka := '0';

        // Доступы к сайту
        if (chbRuleSite.Checked = true) then price := '1,' else price := '0,';
        // Просмотр изображений на сайте
        if (chbRulePics.Checked = true) then price := price+'1,' else price := price+'0,';
        // Просмотр цен на сайте
        if (chbRulePrice.Checked = true) then price := price+'1,' else price := price+'0,';
        // Формирование заказов на сайте
        if (chbRuleOrder.Checked = true) then price := price+'1,' else price := price+'0,';
        // Продажа с колес
        if (chbRuleWebShop.Checked = true) then price := price+'1' else price := price+'0';

        // SQL для добавления
         if (ttype = 1) then
        begin
          sql := 'INSERT INTO CLIENTS VALUES(get_office_unique(''CLIENTS_ID''),:P1,:P2,:P3,:P4,:P5,:P6,:P7,:P8,:P9,:P10,:P11,:P12,:P13,:P14,:P15,:P16,:P17,:P18,:P19,SYSDATE,:P20,:P21,:P22,:P23,:P24,:P25,:P26,'''+ main.corrector +''',null,null,null,null,null,null,null,9,null,null,:P27,:P28,0,:P30,CONST_OFFICE,sysdate,:prefix,:city)';
          DM.Ora_SQL.SQL.Add(sql);
        end;

        // SQL для редактирования
        if (ttype = 2) then
        begin
          ind := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
          sql := 'UPDATE CLIENTS SET FIO=:P1,NICK=:P2,CCODE=:P3,REGION=:P4,ADDRESS=:P5,U_ADDRESS=:P6,PHONE=:P7,PASSPORT=:P8,CONTACT=:P9,CONT_PHONE=:P10,EMAIL=:P11,WWW=:P12,INN=:P13,REG_SVID=:P14,KPP=:P15,OKATO=:P16,BANK=:P17,DOSTAVKA=:P30, DATE_CHANGE=sysdate';
          sql := sql + ',AGREEMENT=:P18,ADVERTISMENT=:P19,BLOCK1=:P20,BLOCK2=:P21,FLOWERS=:P22,PLANTS=:P23,MARK=:P24,TTYPE=:P25,ID_CLIENTS_GROUPS=:P26, INFO=:P27, REG_TYPE=:P28, DATE_COR=SYSDATE, CORRECTOR_COR='''+ main.corrector +''', prefix=:prefix, id_city=:city WHERE ID_CLIENTS=:ID';
          DM.Ora_SQL.SQL.Add(sql);
          DM.Ora_SQL.ParamByName('ID').Value := ind;
        end;

        DM.Ora_SQL.ParamByName('P1').Value := trim(LabeledEdit2.Text);
        DM.Ora_SQL.ParamByName('P2').Value := trim(LabeledEdit1.Text);
        DM.Ora_SQL.ParamByName('P3').Value := trim(Edit1.Text);
        DM.Ora_SQL.ParamByName('P4').Value := region;
        DM.Ora_SQL.ParamByName('P5').Value := Memo4.Text;
        DM.Ora_SQL.ParamByName('P6').Value := Memo5.Text;
        DM.Ora_SQL.ParamByName('P7').Value := Memo6.Text;
        DM.Ora_SQL.ParamByName('P8').Value := Memo2.Text;
        DM.Ora_SQL.ParamByName('P9').Value := trim(LabeledEdit10.Text);
        DM.Ora_SQL.ParamByName('P10').Value := Memo3.Text;
        DM.Ora_SQL.ParamByName('P11').Value := trim(LabeledEdit11.Text);
        DM.Ora_SQL.ParamByName('P12').Value := trim(LabeledEdit12.Text);
        DM.Ora_SQL.ParamByName('P13').Value := trim(LabeledEdit4.Text);
        DM.Ora_SQL.ParamByName('P14').Value := trim(LabeledEdit6.Text);
        DM.Ora_SQL.ParamByName('P15').Value := trim(LabeledEdit7.Text);
        DM.Ora_SQL.ParamByName('P16').Value := trim(LabeledEdit8.Text);
        DM.Ora_SQL.ParamByName('P17').Value := Memo1.Text;
        DM.Ora_SQL.ParamByName('P18').Value := trim(LabeledEdit9.Text);
        DM.Ora_SQL.ParamByName('P19').Value := reklama;
        DM.Ora_SQL.ParamByName('P20').Value := block1;
        DM.Ora_SQL.ParamByName('P21').Value := block2;
        DM.Ora_SQL.ParamByName('P22').Value := flower;
        DM.Ora_SQL.ParamByName('P23').Value := plant;

        DM.Ora_SQL.ParamByName('P24').Value := price;

        DM.Ora_SQL.ParamByName('P25').Value := t_type;
        DM.Ora_SQL.ParamByName('P26').Value := id_group;
        DM.Ora_SQL.ParamByName('P27').Value := Memo7.Text;
        DM.Ora_SQL.ParamByName('P28').Value := DBComboBoxEh1.Value;
        DM.Ora_SQL.ParamByName('P30').Value := dostavka;
        DM.Ora_SQL.ParamByName('prefix').Value := trim(lePrefix.Text);
        DM.Ora_SQL.ParamByName('city').Value := icbCity.EditValue;



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

          DM.Q_CLIENTS.Refresh;
          DM.Q_CLIENTS.Locate('ID_CLIENTS',ind,[]);
          DM.Q_G_CL.Refresh;

          close;
        except
          on E: Exception do
          begin
            if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
            else  ShowMessage(E.Message);
          end;
        End;
      end; // if (id_group = 1) then
    end; // if flag = 1 then
  end;
end;

// Проверка уникальности НИКа
procedure Tedits.SpeedButton2Click(Sender: TObject);
var str, sql: string;
begin
  if (trim(labeledEdit1.text)[1] = 'S') then
      Application.MessageBox('Нельзя использовать служебный символ S вначале кода клиента.','Внимание!',MB_ICONWARNING)
  else
  begin
    str := trim(copy(trim(labeledEdit1.text),2,length(trim(labeledEdit1.text))));
    sql := 'SELECT ID_CLIENTS from CLIENTS_VIEW2 WHERE UPPER(NICK) LIKE trim(''%'+ UpperCase(str) +''') and id_office='+IntToStr(DM.id_office);
    // Генерация кода сотрудника
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add(sql);
    DM.Q_SQL.Open;

    if DM.Q_SQL.RecordCount > 0 then ShowMessage('Данный код уже имеется в БД!')
    else ShowMessage('Код уникальный!');

    DM.Q_SQL.Close;
  end;
end;

// Генерация штрих кода
procedure Tedits.SpeedButton1Click(Sender: TObject);
var str: string;
    sum1, sum2, allsum: integer;
begin
  if ((ttype = 2) and ((Edit1.Text <> '0') OR (Edit1.Text <> ''))) then
  begin
    if MessageDlg('Вы действительно хотите перегенерировать штрих-код?'+#10#13+'Старый код будет помещен в черный список!',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      try
        DM.Ora_SQL.SQL.Clear;
        DM.Ora_SQL.SQL.Add('INSERT INTO CODES_BLACKLIST VALUES(:P1,:P2,SYSDATE)');
        DM.Ora_SQL.ParamByName('P1').Value := LabeledEdit1.Text;
        DM.Ora_SQL.ParamByName('P2').Value := Edit1.Text;
        DM.Ora_SQL.Execute;

        DM.OraSession1.Commit;
      except
        null;
        //on E: Exception do ErrorDialog(E.Message, E.HelpContext);
      end;
    end;
  end;

  // Генерация кода сотрудника
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT EAN12_TO_EAN13(to_char(EMPLOYEES_CODE.nextval)) as nn from DUAL');
//  DM.Q_SQL.SQL.Add('SELECT (CONST_OFFICE * 10000000 + EMPLOYEES_CODE.nextval) as nn from DUAL');
  DM.Q_SQL.Open;

  // Алгоритм EAN13
    str := DM.Q_SQL.FieldByName('nn').AsString;
    Edit1.Text := str;

{
    sum1 := (strtoint(str[2]) + strtoint(str[4]) + strtoint(str[6]) + strtoint(str[8]) + strtoint(str[10]) + strtoint(str[12])) * 3;
    sum2 := strtoint(str[1]) + strtoint(str[3]) + strtoint(str[5]) + strtoint(str[7]) + strtoint(str[9]) + strtoint(str[11]);
    allsum := sum1 + sum2;

    str := inttostr(allsum);
    sum1 := strtoint(str[length(str)]);
    sum2 := 10 - sum1;
    if sum2 = 10 then sum2 := 0;

  Edit1.Text := Edit1.Text + inttostr(sum2);
}  
  DM.Q_SQL.Close;
end;


// Очистка данных
procedure Tedits.BitBtn2Click(Sender: TObject);
var ind: integer;
begin
  if (ttype = 1) then
  begin
    edits.ComboBox1.ItemIndex := -1;
    edits.ComboBox2.ItemIndex := -1;
    edits.ComboBox3.ItemIndex := -1;
    edits.ComboBox4.ItemIndex := -1;

    edits.LabeledEdit1.Text := '';
    edits.LabeledEdit2.Text := '';
    edits.LabeledEdit4.Text := '';
    edits.LabeledEdit6.Text := '';
    edits.LabeledEdit7.Text := '';
    edits.LabeledEdit8.Text := '';
    edits.LabeledEdit9.Text := '';
    edits.LabeledEdit10.Text := '';
    edits.LabeledEdit11.Text := '';
    edits.LabeledEdit12.Text := '';
    edits.DBComboBoxEh1.ItemIndex := GetOfficeID;
    edits.Edit1.Text := '';

    edits.Memo1.Lines.Clear;
    edits.Memo2.Lines.Clear;
    edits.Memo3.Lines.Clear;
    edits.Memo4.Lines.Clear;
    edits.Memo5.Lines.Clear;
    edits.Memo6.Lines.Clear;

    edits.CheckBox1.Checked := false;
    edits.CheckBox2.Checked := false;
    edits.CheckBox4.Checked := false;
    edits.CheckBox5.Checked := false;
    edits.CheckBox6.Checked := false;


    edits.chbRuleSite.Checked := false;
    edits.chbRulePics.Checked := false;
    edits.chbRulePrice.Checked := false;
    edits.chbRuleOrder.Checked := false;
  end;

  if (ttype = 2) then
  begin
    ind := edits.ComboBox1.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
    edits.ComboBox1.ItemIndex := ind;
    ind := edits.ComboBox2.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
    edits.ComboBox2.ItemIndex := ind;
    ind := edits.ComboBox3.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
    edits.ComboBox3.ItemIndex := ind;
    ind := edits.ComboBox4.Items.IndexOf(DM.Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
    edits.ComboBox4.ItemIndex := ind;

    edits.LabeledEdit1.Text := DM.Q_CLIENT_VIEW.FieldByName('NICK').AsString;
    edits.LabeledEdit2.Text := DM.Q_CLIENT_VIEW.FieldByName('FIO').AsString;
    edits.LabeledEdit4.Text := DM.Q_CLIENT_VIEW.FieldByName('INN').AsString;
    edits.LabeledEdit6.Text := DM.Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
    edits.LabeledEdit7.Text := DM.Q_CLIENT_VIEW.FieldByName('KPP').AsString;
    edits.LabeledEdit8.Text := DM.Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
    edits.LabeledEdit9.Text := DM.Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
    edits.LabeledEdit10.Text := DM.Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
    edits.LabeledEdit11.Text := DM.Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
    edits.LabeledEdit12.Text := DM.Q_CLIENT_VIEW.FieldByName('WWW').AsString;
    edits.DBComboBoxEh1.ItemIndex := DM.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;

    edits.Edit1.Text := DM.Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

    edits.Memo1.Text := DM.Q_CLIENT_VIEW.FieldByName('BANK').AsString;
    edits.Memo2.Text := DM.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
    edits.Memo3.Text := DM.Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
    edits.Memo5.Text := DM.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
    edits.Memo6.Text := DM.Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

    edits.icbCity.EditValue := DM.Q_CLIENT_VIEW.FieldByName('ID_CITY').AsInteger;

    if (DM.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then edits.CheckBox1.Checked := true else edits.CheckBox1.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then edits.CheckBox2.Checked := true else edits.CheckBox2.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then edits.CheckBox4.Checked := true else edits.CheckBox4.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then edits.CheckBox5.Checked := true else edits.CheckBox5.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then edits.CheckBox6.Checked := true else edits.CheckBox6.Checked := false;
    //if (DM.Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then edits.CheckBox3.Checked := true else edits.CheckBox3.Checked := false;


    // Доступы
    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;
    if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1') then edits.chbRuleWebShop.Checked := true else edits.chbRuleWebShop.Checked := false;

  end;
end;


// Проверка уникальности ФИО/названия
procedure Tedits.SpeedButton4Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT ID_CLIENTS from CLIENTS_VIEW2 WHERE UPPER(FIO) LIKE ''%'+ UpperCase(trim(LabeledEdit2.Text)) +''' and id_office='+IntToStr(DM.id_office);
  // Генерация кода сотрудника
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add(sql);
  DM.Q_SQL.Open;

  if DM.Q_SQL.RecordCount > 0 then ShowMessage('ФИО уже имеется в БД!')
  else ShowMessage('ФИО уникальное!');

  DM.Q_SQL.Close;
end;

procedure Tedits.SpeedButton5Click(Sender: TObject);
begin
  ShowMessage('Для навигации по полям ввода вниз импользуйте "TAB"'+#10+#13+'Для навигации по полям ввода вверх импользуйте "SHIFT+TAB"'+#10+#13+'Для перехода на новую строку в полях типа Адрес используйте "SHIFT+ENTER"'+#10+#13+'Для записи данных используйте "ENTER"'+#10+#13+'Для выхода из формы используйте "ESC"');
end;

procedure Tedits.BitBtn4Click(Sender: TObject);
begin
  LabeledEdit10.Text := LabeledEdit2.Text;
  memo4.Text := memo5.Text;
  memo3.Text := memo6.Text;
end;


procedure Tedits.ComboBox1Change(Sender: TObject);
begin
  if (ttype = 1) then
  begin
    If ComboBox1.Text = 'Москва' then LabeledEdit1.Text := 'M '
    else if ComboBox1.ItemIndex > 0 then LabeledEdit1.Text := 'D ';
  end;
  if ComboBox1.ItemIndex >= 0 then
  begin
    DM.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
    cdsCity.Filter := 'id_region='+DM.Q_REGIONS.FieldByName('ID_REGIONS').AsString;
    cdsCity.Filtered := true;
  end
  else
  begin
    cdsCity.Filter := '';
    cdsCity.Filtered := false;
  end;
end;

procedure Tedits.SpeedButton6Click(Sender: TObject);
begin
  // Вызываем форму для добавления группы
  editor.Edit1.Text := '';
  editor.Memo1.Lines.Clear;
  editor.ttype := 1;
  editor.showmodal;
end;

procedure Tedits.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  cdsCity.Close;
  cdsCity.Open;
end;

// При нажатии кнопки будут проходить только латинские буквы, цифры и пробел
procedure Tedits.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
         case key of
          #8: ;
          #32: ;
          #13: LabeledEdit1.SetFocus ;
          'a'..'z': ;
          'A'..'Z': ;
          '0'..'9': ;
        else key:=#0;
        end;
{
  case key of
       'а'..'я': begin ShowMessage('Возможны только латинские буквы'); exit; end;
       'А'..'Я': begin ShowMessage('Возможны только латинские буквы'); exit; end;
  end;
}
end;

procedure Tedits.Q_ADDRESSAfterInsert(DataSet: TDataSet);
begin
//  Q_ADDRESS.Edit;
  Q_ADDRESS.FieldByName('ID_CLIENTS').AsInteger := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
end;



//  insert into books_cities values(get_office_unique('seq_id_city'), v_city, v_kod, v_id_region, CONST_OFFICE, sysdate)


procedure Tedits.btnAddCityClick(Sender: TObject);
var region: integer;
begin
  frmCityEditor := TfrmCityEditor.Create(Application);
  try
    DM.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
    region := DM.Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;

    frmCityEditor.Edit1.Text               := '';
    frmCityEditor.Edit1.Tag                := 0;
    frmCityEditor.Memo1.Lines.Clear;
    frmCityEditor.imcbRegion.Tag           := region;
    if frmCityEditor.ShowModal = mrOk then
    begin
      cdsCity.Refresh;
      cdsCity.Locate('city', frmCityEditor.Edit1.Text, []);
    end;
  finally
    frmCityEditor.Free;
  end;

end;


//
// Клонирование данных о клиенте
//
procedure Tedits.btnCloneClick(Sender: TObject);
var ind: integer;
begin
  clientchoosForm := TclientchoosForm.Create(Application);
  try
    if clientchoosForm.ShowModal = mrOk then
    begin
      Q_CLIENT_VIEW.ParamByName('p1').AsInteger := clientchoosForm.Q_CLIENTSID_CLIENTS.AsInteger;
      Q_CLIENT_VIEW.Open;

      ind := ComboBox1.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
      ComboBox1.ItemIndex := ind;
      ind := edits.ComboBox2.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
      ComboBox2.ItemIndex := ind;
      ind := edits.ComboBox3.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
      ComboBox3.ItemIndex := ind;
      ind := edits.ComboBox4.Items.IndexOf(Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
      ComboBox4.ItemIndex := ind;

      LabeledEdit1.Text := Q_CLIENT_VIEW.FieldByName('NICK').AsString;
      LabeledEdit2.Text := Q_CLIENT_VIEW.FieldByName('FIO').AsString;
      LabeledEdit4.Text := Q_CLIENT_VIEW.FieldByName('INN').AsString;
      LabeledEdit6.Text := Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
      LabeledEdit7.Text := Q_CLIENT_VIEW.FieldByName('KPP').AsString;
      LabeledEdit8.Text := Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
      LabeledEdit9.Text := Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
      LabeledEdit10.Text := Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
      LabeledEdit11.Text := Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
      LabeledEdit12.Text := Q_CLIENT_VIEW.FieldByName('WWW').AsString;
      DBComboBoxEh1.ItemIndex := Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;

      Edit1.Text := Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

      Memo1.Text := Q_CLIENT_VIEW.FieldByName('BANK').AsString;
      Memo2.Text := Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
      Memo3.Text := Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
      Memo5.Text := Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
      Memo6.Text := Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

      icbCity.EditValue := Q_CLIENT_VIEW.FieldByName('ID_CITY').AsInteger;

      if (Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then CheckBox1.Checked := true else CheckBox1.Checked := false;
      if (Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then CheckBox2.Checked := true else CheckBox2.Checked := false;
      if (Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then CheckBox4.Checked := true else CheckBox4.Checked := false;
      if (Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then CheckBox5.Checked := true else CheckBox5.Checked := false;
      if (Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then CheckBox6.Checked := true else CheckBox6.Checked := false;
      //if (Q_CLIENT_VIEW.FieldByName('vanselling').AsInteger = 1) then CheckBox3.Checked := true else CheckBox3.Checked := false;

      // Доступы
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[9] = '1') then edits.chbRuleWebShop.Checked := true else edits.chbRuleWebShop.Checked := false;

      Q_CLIENT_VIEW.Close;
      clientchoosForm.Q_CLIENTS.Close;
    end;
  finally
    clientchoosForm.Free;
  end;
end;

end.
