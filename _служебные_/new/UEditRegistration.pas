unit UEditRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxMemo, StdCtrls, Buttons, DBCtrls, DBAccess, Ora,
  MemDS, ImgList, ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, DBCtrlsEh, ExtCtrls, ComCtrls, star_lib,
  Grids, Calendar;

type
  TfrmEditRegistration = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label8: TLabel;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Label25: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label22: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    SpeedButton6: TSpeedButton;
    Label33: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    btnAddCity: TSpeedButton;
    LabeledEdit1: TLabeledEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox4: TComboBox;
    Edit1: TEdit;
    ComboBox3: TComboBox;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    Memo6: TMemo;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    Memo1: TMemo;
    DBComboBoxEh1: TDBComboBoxEh;
    CheckBox6: TCheckBox;
    lePrefix: TLabeledEdit;
    icbCity: TcxLookupComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Memo3: TMemo;
    Memo7: TMemo;
    TabSheet3: TTabSheet;
    gr_address: TcxGrid;
    gr_address_v: TcxGridDBTableView;
    gr_address_vADDRESS: TcxGridDBColumn;
    gr_address_vID: TcxGridDBColumn;
    gr_address_vID_CLIENTS: TcxGridDBColumn;
    gr_address_l: TcxGridLevel;
    tshRules: TTabSheet;
    chbRuleSite: TCheckBox;
    chbRulePics: TCheckBox;
    chbRulePrice: TCheckBox;
    chbRuleOrder: TCheckBox;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    cxImageList1: TcxImageList;
    Q_ADDRESS: TOraQuery;
    Q_ADDRESSID: TIntegerField;
    Q_ADDRESSADDRESS: TStringField;
    Q_ADDRESSID_CLIENTS: TIntegerField;
    Q_Q_ADDRESS_DS: TOraDataSource;
    Q_CLIENT_VIEW: TOraQuery;
    cdsCity: TOraQuery;
    cdsCityID_CITY: TIntegerField;
    cdsCityCITY: TStringField;
    cdsCityKOD: TStringField;
    cdsCityID_REGION: TIntegerField;
    dsCity: TOraDataSource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Panel4: TPanel;
    Label27: TLabel;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Panel1: TPanel;
    SpeedButton5: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btnClone: TBitBtn;
    Label37: TLabel;
    Label38: TLabel;
    Memo8: TMemo;
    Edit3: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    CB1: TCheckBox;
    Label51: TLabel;
    Edit10: TEdit;
    Label52: TLabel;
    Edit11: TEdit;
    Label53: TLabel;
    Edit12: TEdit;
    Label54: TLabel;
    Edit13: TEdit;
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
    Q_CLIENT_VIEWKEY_INTERESTS: TStringField;
    Q_CLIENT_VIEWREG_TYPE_NAME: TStringField;
    Q_CLIENT_VIEWGROUP_NAME: TStringField;
    Q_CLIENT_VIEWTTYPE_NAME: TStringField;
    Q_CLIENT_VIEWREGION_NAME: TStringField;
    Q_CLIENT_VIEWADVERT: TStringField;
    Q_CLIENT_VIEWCITY: TStringField;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Q_ADDRESSAfterInsert(DataSet: TDataSet);
    procedure btnAddCityClick(Sender: TObject);
    procedure btnCloneClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure LabeledEdit9Change(Sender: TObject);
    procedure LabeledEdit1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype, page: integer;
    procedure TZ;
  end;

var
  frmEditRegistration: TfrmEditRegistration;

implementation

{$R *.dfm}

uses URegistration, udm, ueditsubreg;

//новая логика
procedure TfrmEditRegistration.TZ;
 var i:integer;
begin
   frmRegistration.selq.close;
   frmRegistration.selq.SQL.Clear;
   frmRegistration.selq.SQL.Add('select IS_CONTRACTOR from BOOKS_CLIENT_TYPES where NAME = '+#39+combobox3.text+#39);
   frmRegistration.selq.Open; 
  if (frmRegistration.selq.FieldByName('IS_CONTRACTOR').AsInteger = 0)
  or ((LabeledEdit9.Text = 'Без договора') and (combobox3.Text ='Частное лицо'))
  or (((copy(LabeledEdit1.Text,1,1) = 'F') or (copy(LabeledEdit1.Text,1,1) = 'O')) and (combobox3.Text ='Предприниматель'))
  then
  begin
   speedbutton7.Enabled:=true;
  end else begin
   speedbutton7.Enabled:=false;
  end;
  frmRegistration.selq.close;
end;

// Добавление \ редактирование
procedure TfrmEditRegistration.BitBtn1Click(Sender: TObject);
var sql, region, reklama, t_type, plant, flower, price, block1, block2, id_group, dostavka: string;
    ind, flag: integer;
begin
  if (trim(LabeledEdit11.Text) = '') and (cb1.Checked=false) then ShowMessage('Поле e-mail не заполнено!') else
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

      frmRegistration.Q_GROUPS.Locate('NAME',ComboBox4.Text,[]);
      id_group := frmRegistration.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsString;

      if (StrToInt(id_group) = 1) then
        Application.MessageBox('Нельзя при редактировании клиента указывать группу "Сотрудник фирмы".\nРабота с сотрудниками фирмы происходит в соответствующем разделе.','Внимание!',MB_ICONWARNING)
      else
      begin
        frmRegistration.selq.SQL.Clear;
        ind := 0;

        frmRegistration.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
        region := frmRegistration.Q_REGIONS.FieldByName('ID_REGIONS').AsString;

        frmRegistration.Q_ADVERT.Locate('NAME',ComboBox2.Text,[]);
        reklama := frmRegistration.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').AsString;

        frmRegistration.Q_TYPES.Locate('NAME',ComboBox3.Text,[]);
        t_type := frmRegistration.Q_TYPES.FieldByName('ID_CLIENT_TYPES').AsString;

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
        if (chbRuleOrder.Checked = true) then price := price+'1' else price := price+'0';


        // SQL для добавления
        if (ttype = 1) then
        begin
          sql := 'INSERT INTO CLIENTS VALUES(get_office_unique(''CLIENTS_ID''),:P1,:P2,:P3,:P4,:P5,:P6,:P7,:P8,:P9,:P10,:P11,:P12,:P13,:P14,:P15,:P16,:P17,:P18,:P19,SYSDATE,:P20,:P21,:P22,:P23,:P24,:P25,:P26,'''+ frmRegistration.corrector +''',null,null,null,null,null,null,null,9,null,null,:P27,:P28,0,:P30,CONST_OFFICE,sysdate,:prefix,:city,:P31)';
          frmRegistration.selq.SQL.Add(sql);
        end;

        // SQL для редактирования
        if (ttype = 2) then
        begin
          ind := frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
          sql := 'UPDATE CLIENTS SET FIO=:P1,NICK=:P2,CCODE=:P3,REGION=:P4,ADDRESS=:P5,U_ADDRESS=:P6,PHONE=:P7,PASSPORT=:P8,CONTACT=:P9,CONT_PHONE=:P10,EMAIL=:P11,WWW=:P12,INN=:P13,REG_SVID=:P14,KPP=:P15,OKATO=:P16,BANK=:P17,DOSTAVKA=:P30, DATE_CHANGE=sysdate';
          sql := sql + ',AGREEMENT=:P18,ADVERTISMENT=:P19,BLOCK1=:P20,BLOCK2=:P21,FLOWERS=:P22,PLANTS=:P23,MARK=:P24,TTYPE=:P25,ID_CLIENTS_GROUPS=:P26, INFO=:P27, REG_TYPE=:P28, DATE_COR=SYSDATE, CORRECTOR_COR='''+ frmRegistration.corrector +''', prefix=:prefix, id_city=:city, KEY_INTERESTS=:P31 WHERE ID_CLIENTS=:ID';
          frmRegistration.selq.SQL.Add(sql);
          frmRegistration.selq.ParamByName('ID').Value := ind;
        end;

        frmRegistration.selq.ParamByName('P1').Value := trim(LabeledEdit2.Text);
        frmRegistration.selq.ParamByName('P2').Value := trim(LabeledEdit1.Text);
        frmRegistration.selq.ParamByName('P3').Value := trim(Edit1.Text);
        frmRegistration.selq.ParamByName('P4').Value := region;
        frmRegistration.selq.ParamByName('P5').Value := edit3.text + '%' + edit7.text + '%' + edit8.text + '%' + edit9.text;//Memo4.Text;
        frmRegistration.selq.ParamByName('P6').Value := edit10.text + '%' + edit11.text + '%' + edit12.text + '%' + edit13.text;//Memo5.Text;
        frmRegistration.selq.ParamByName('P7').Value := Memo6.Text;
        //условие чтоб не попала дата, ибо хз как в  datetimepicker1 засунуть пустоту:
        if speedbutton7.Enabled=true then
        frmRegistration.selq.ParamByName('P8').Value := frmeditsubreg.edit4.text + '%' + datetostr(frmeditsubreg.datetimepicker1.date) + '%'
        + frmeditsubreg.combobox8.text + '%' + frmeditsubreg.edit5.text + '%' + frmeditsubreg.edit6.text + '%' + frmeditsubreg.edit7.text else
        frmRegistration.selq.ParamByName('P8').Value := frmeditsubreg.edit4.text + '%' + '' + '%'
        + frmeditsubreg.combobox8.text + '%' + frmeditsubreg.edit5.text + '%' + frmeditsubreg.edit6.text + '%' + frmeditsubreg.edit7.text;
        frmRegistration.selq.ParamByName('P9').Value := trim(LabeledEdit10.Text);
        frmRegistration.selq.ParamByName('P10').Value := Memo3.Text;
        frmRegistration.selq.ParamByName('P11').Value := trim(LabeledEdit11.Text);
        frmRegistration.selq.ParamByName('P12').Value := trim(LabeledEdit12.Text);
        frmRegistration.selq.ParamByName('P13').Value := trim(LabeledEdit4.Text);
        frmRegistration.selq.ParamByName('P14').Value := trim(LabeledEdit6.Text);
        frmRegistration.selq.ParamByName('P15').Value := trim(LabeledEdit7.Text);
        frmRegistration.selq.ParamByName('P16').Value := trim(LabeledEdit8.Text);
        frmRegistration.selq.ParamByName('P17').Value := Memo1.Text;
        frmRegistration.selq.ParamByName('P18').Value := trim(LabeledEdit9.Text);
        frmRegistration.selq.ParamByName('P19').Value := reklama;
        frmRegistration.selq.ParamByName('P20').Value := block1;
        frmRegistration.selq.ParamByName('P21').Value := block2;
        frmRegistration.selq.ParamByName('P22').Value := flower;
        frmRegistration.selq.ParamByName('P23').Value := plant;

        frmRegistration.selq.ParamByName('P24').Value := price;

        frmRegistration.selq.ParamByName('P25').Value := t_type;
        frmRegistration.selq.ParamByName('P26').Value := id_group;
        frmRegistration.selq.ParamByName('P27').Value := Memo7.Text;
        frmRegistration.selq.ParamByName('P28').Value := DBComboBoxEh1.Value;
        frmRegistration.selq.ParamByName('P30').Value := dostavka;
        frmRegistration.selq.ParamByName('prefix').Value := trim(lePrefix.Text);
        frmRegistration.selq.ParamByName('city').Value := icbCity.EditValue;
        frmRegistration.selq.ParamByName('P31').Value := Memo8.Text;

        // Пытаемся выполнить SQL запрос
        try
          frmRegistration.selq.Execute;

          if (ttype = 1) then
          begin
            frmRegistration.Q_IDD.SQL.Clear;
            frmRegistration.Q_IDD.SQL.Add('SELECT (CONST_OFFICE * 10000000 + CLIENTS_ID.currval) as nn from DUAL');
            frmRegistration.Q_IDD.Open;
            ind := frmRegistration.Q_IDD.FieldByName('nn').AsInteger;
          end;

          DM.OraSession.Commit;

          frmRegistration.Q_CLIENTS.Refresh;
          frmRegistration.Q_CLIENTS.Locate('ID_CLIENTS',ind,[]);
          frmRegistration.Q_G_CL.Refresh;

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

//очистка данных
procedure TfrmEditRegistration.BitBtn2Click(Sender: TObject);
var ind: integer;  ss:string;
begin
  if (ttype = 1) then
  begin
    ComboBox1.ItemIndex := -1;
    ComboBox2.ItemIndex := -1;
    ComboBox3.ItemIndex := -1;
    ComboBox4.ItemIndex := -1;

    LabeledEdit1.Text  := '';
    LabeledEdit2.Text  := '';
    LabeledEdit4.Text  := '';
    LabeledEdit6.Text  := '';
    LabeledEdit7.Text  := '';
    LabeledEdit8.Text  := '';
    LabeledEdit9.Text  := '';
    LabeledEdit10.Text := '';
    LabeledEdit11.Text := '';
    LabeledEdit12.Text := '';
    DBComboBoxEh1.ItemIndex := GetOfficeID;
    Edit1.Text := '';

    Memo1.Lines.Clear;

    frmeditsubreg.edit4.Clear;
    frmeditsubreg.DateTimePicker1.Date:=now;
    frmeditsubreg.combobox8.Clear;
    frmeditsubreg.edit5.Clear;
    frmeditsubreg.edit6.Clear;
    frmeditsubreg.edit7.Clear;

    Memo3.Lines.Clear;
    edit3.Clear;
    edit7.Clear;
    edit8.Clear;
    edit9.Clear;

    edit10.Clear;
    edit11.Clear;
    edit12.Clear;
    edit13.Clear;

    Memo6.Lines.Clear;

    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
    CheckBox4.Checked := false;
    CheckBox5.Checked := false;
    CheckBox6.Checked := false;

    chbRuleSite.Checked  := false;
    chbRulePics.Checked  := false;
    chbRulePrice.Checked := false;
    chbRuleOrder.Checked := false;
  end;

  if (ttype = 2) then
  begin
    ind := ComboBox1.Items.IndexOf(frmRegistration.Q_CLIENT_VIEW.FieldByName('REGION_NAME').AsString);
    ComboBox1.ItemIndex := ind;
    ind := ComboBox2.Items.IndexOf(frmRegistration.Q_CLIENT_VIEW.FieldByName('ADVERT').AsString);
    ComboBox2.ItemIndex := ind;
    ind := ComboBox3.Items.IndexOf(frmRegistration.Q_CLIENT_VIEW.FieldByName('TTYPE_NAME').AsString);
    ComboBox3.ItemIndex := ind;
    ind := ComboBox4.Items.IndexOf(frmRegistration.Q_CLIENT_VIEW.FieldByName('GROUP_NAME').AsString);
    ComboBox4.ItemIndex := ind;

    LabeledEdit1.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('NICK').AsString;
    LabeledEdit2.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('FIO').AsString;
    LabeledEdit4.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('INN').AsString;
    LabeledEdit6.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('REG_SVID').AsString;
    LabeledEdit7.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('KPP').AsString;
    LabeledEdit8.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('OKATO').AsString;
    LabeledEdit9.Text  := frmRegistration.Q_CLIENT_VIEW.FieldByName('AGREEMENT').AsString;
    LabeledEdit10.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('CONTACT').AsString;
    LabeledEdit11.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('EMAIL').AsString;
    LabeledEdit12.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('WWW').AsString;
    DBComboBoxEh1.ItemIndex := frmRegistration.Q_CLIENT_VIEW.FieldByName('REG_TYPE').AsInteger;

    Edit1.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('CCODE').AsString;

    Memo1.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('BANK').AsString;
  if pos('%',frmRegistration.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString) <> 0 then begin
    ss := frmRegistration.Q_CLIENT_VIEW.FieldByName('PASSPORT').AsString;
    frmeditsubreg.edit4.Text := copy(ss,1,pos('%',ss)-1);
    delete(ss,1,pos('%',ss));
    if copy(ss,1,pos('%',ss)-1)<>'' then
    frmeditsubreg.DateTimePicker1.Date := strtodate(copy(ss,1,pos('%',ss)-1));
    delete(ss,1,pos('%',ss));
    frmeditsubreg.combobox8.Text := copy(ss,1,pos('%',ss)-1);
    delete(ss,1,pos('%',ss));
    frmeditsubreg.edit5.Text := copy(ss,1,pos('%',ss)-1);
    delete(ss,1,pos('%',ss));
    frmeditsubreg.edit6.Text := copy(ss,1,pos('%',ss)-1);
    delete(ss,1,pos('%',ss));
    frmeditsubreg.edit7.Text := ss;
  end;

    Memo3.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('CONT_PHONE').AsString;
    if pos('%',frmRegistration.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString) <> 0 then begin
     ss := frmRegistration.Q_CLIENT_VIEW.FieldByName('U_ADDRESS').AsString;
     edit10.Text := copy(ss,1,pos('%',ss)-1);
     delete(ss,1,pos('%',ss));
     edit11.Text := copy(ss,1,pos('%',ss)-1);
     delete(ss,1,pos('%',ss));
     edit12.Text := copy(ss,1,pos('%',ss)-1);
     delete(ss,1,pos('%',ss));
     edit13.Text := ss;
    end;

    Memo6.Text := frmRegistration.Q_CLIENT_VIEW.FieldByName('PHONE').AsString;

    icbCity.EditValue := frmRegistration.Q_CLIENT_VIEW.FieldByName('ID_CITY').AsInteger;

    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('PLANTS').AsInteger = 1) then CheckBox1.Checked   := true else CheckBox1.Checked := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('FLOWERS').AsInteger = 1) then CheckBox2.Checked  := true else CheckBox2.Checked := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('BLOCK1').AsInteger = 1) then CheckBox4.Checked   := true else CheckBox4.Checked := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('BLOCK2').AsInteger = 1) then CheckBox5.Checked   := true else CheckBox5.Checked := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('DOSTAVKA').AsInteger = 1) then CheckBox6.Checked := true else CheckBox6.Checked := false;

    // Доступы
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then chbRuleSite.Checked  := true else chbRuleSite.Checked  := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then chbRulePics.Checked  := true else chbRulePics.Checked  := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then chbRulePrice.Checked := true else chbRulePrice.Checked := false;
    if (frmRegistration.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then chbRuleOrder.Checked := true else chbRuleOrder.Checked := false;
  end;
end;


procedure TfrmEditRegistration.BitBtn3Click(Sender: TObject);
begin
  close;
end;

// кнопка Копировать данные
procedure TfrmEditRegistration.BitBtn4Click(Sender: TObject);
 var ss:string;
begin
  LabeledEdit10.Text := LabeledEdit2.Text;

  edit3.Text:=edit10.Text;
  edit7.Text:=edit11.Text;
  edit8.Text:=edit12.Text;
  edit9.Text:=edit13.Text;

  memo3.Text := memo6.Text;
end;

procedure TfrmEditRegistration.BitBtn5Click(Sender: TObject);
begin

end;

// город
procedure TfrmEditRegistration.btnAddCityClick(Sender: TObject);
var region: integer;
begin
page:=1;
  try
    frmRegistration.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
    region := frmRegistration.Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
    frmeditsubreg.Caption  := 'Редактор :: город';
    frmEditSubReg.Edit2.Text               := '';
    frmEditSubReg.Edit2.Tag                := 0;
    frmEditSubReg.Memo2.Lines.Clear;
    frmEditSubReg.imcbRegion.Tag           := region;
    if frmEditSubReg.ShowModal = mrOk then
    begin
      cdsCity.Refresh;
      cdsCity.Locate('city', frmEditSubReg.Edit2.Text, []);
    end;
  finally
  end;

 // frmeditsubreg.showmodal;
end;

// Клонирование данных о клиенте (НЕ РЕАЛИЗОВАНА ФОРМА)
procedure TfrmEditRegistration.btnCloneClick(Sender: TObject);
var ind: integer;
begin
 { clientchoosForm := TclientchoosForm.Create(Application);
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

      // Доступы
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[1] = '1') then edits.chbRuleSite.Checked := true else edits.chbRuleSite.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[3] = '1') then edits.chbRulePics.Checked := true else edits.chbRulePics.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[5] = '1') then edits.chbRulePrice.Checked := true else edits.chbRulePrice.Checked := false;
      if (DM.Q_CLIENT_VIEW.FieldByName('MARK').AsString[7] = '1') then edits.chbRuleOrder.Checked := true else edits.chbRuleOrder.Checked := false;

      Q_CLIENT_VIEW.Close;
      clientchoosForm.Q_CLIENTS.Close;
    end;
  finally
    clientchoosForm.Free;
  end;        }
end;

//выбор региона
procedure TfrmEditRegistration.ComboBox1Change(Sender: TObject);
begin
  if (ttype = 1) then
  begin
    If ComboBox1.Text = 'Москва' then LabeledEdit1.Text := 'M '
    else if ComboBox1.ItemIndex > 0 then LabeledEdit1.Text := 'D ';
  end;
  if ComboBox1.ItemIndex >= 0 then
  begin
    frmRegistration.Q_REGIONS.Locate('NAME',ComboBox1.Text,[]);
    cdsCity.Filter := 'id_region='+frmRegistration.Q_REGIONS.FieldByName('ID_REGIONS').AsString;
    cdsCity.Filtered := true;
  end
  else
  begin
    cdsCity.Filter := '';
    cdsCity.Filtered := false;
  end;
end;


procedure TfrmEditRegistration.ComboBox3Change(Sender: TObject);
begin
  TZ;
end;


procedure TfrmEditRegistration.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  cdsCity.Close;
  cdsCity.Open;
end;


procedure TfrmEditRegistration.LabeledEdit1Change(Sender: TObject);
begin
 TZ;
   if copy(LabeledEdit1.Text,1,1) = 'F' then label37.Caption := 'флорист - флорист'
    else
   if copy(LabeledEdit1.Text,1,1) = 'O' then label37.Caption := 'флорист - оформитель'
    else
   if (copy(LabeledEdit1.Text,1,1) <> 'O') and (copy(LabeledEdit1.Text,1,1) <> 'F') then label37.Caption := '***';
end;

// При нажатии кнопки будут проходить только латинские буквы, цифры и пробел
procedure TfrmEditRegistration.LabeledEdit1KeyPress(Sender: TObject;
  var Key: Char);
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
end;


procedure TfrmEditRegistration.LabeledEdit9Change(Sender: TObject);
begin
 TZ;
end;

procedure TfrmEditRegistration.Q_ADDRESSAfterInsert(DataSet: TDataSet);
begin
  Q_ADDRESS.FieldByName('ID_CLIENTS').AsInteger := frmRegistration.Q_CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
end;

// Генерация штрих кода
procedure TfrmEditRegistration.SpeedButton1Click(Sender: TObject);
var str: string;
    sum1, sum2, allsum: integer;
begin
  if ((ttype = 2) and ((Edit1.Text <> '0') OR (Edit1.Text <> ''))) then
  begin
    if MessageDlg('Вы действительно хотите перегенерировать штрих-код?'+#10#13+'Старый код будет помещен в черный список!',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      try
        frmRegistration.selq.close;
        frmRegistration.selq.SQL.Clear;
        frmRegistration.selq.SQL.Add('INSERT INTO CODES_BLACKLIST VALUES(:P1,:P2,SYSDATE)');
        frmRegistration.selq.ParamByName('P1').Value := LabeledEdit1.Text;
        frmRegistration.selq.ParamByName('P2').Value := Edit1.Text;
        frmRegistration.selq.Execute;

        DM.OraSession.Commit;
      except
        null;
      end;
    end;
  end;

  // Генерация кода сотрудника
  frmRegistration.selq.Close;
  frmRegistration.selq.SQL.Clear;
  frmRegistration.selq.SQL.Add('SELECT EAN12_TO_EAN13(to_char(EMPLOYEES_CODE.nextval)) as nn from DUAL');
  frmRegistration.selq.Open;

  // Алгоритм EAN13
    str := frmRegistration.selq.FieldByName('nn').AsString;
    Edit1.Text := str;

  frmRegistration.selq.Close;
end;

// Проверка уникальности НИКа
procedure TfrmEditRegistration.SpeedButton2Click(Sender: TObject);
var str, sql: string;
begin
  if (trim(labeledEdit1.text)[1] = 'S') then
      Application.MessageBox('Нельзя использовать служебный символ S вначале кода клиента.','Внимание!',MB_ICONWARNING)
  else
  begin
    str := trim(copy(trim(labeledEdit1.text),2,length(trim(labeledEdit1.text))));
    sql := 'SELECT ID_CLIENTS from CLIENTS_VIEW3 WHERE UPPER(NICK) LIKE trim(''%'+ UpperCase(str) +''') and id_office='+IntToStr(frmRegistration.id_office);
    // Генерация кода сотрудника
    frmRegistration.selq.Close;
    frmRegistration.selq.SQL.Clear;
    frmRegistration.selq.SQL.Add(sql);
    frmRegistration.selq.Open;

    if frmRegistration.selq.RecordCount > 0 then ShowMessage('Данный код уже имеется в БД!')
    else ShowMessage('Код уникальный!');

    frmRegistration.selq.Close;
  end;
end;

// Кнопка БЕЗ ДОГОВОРА
procedure TfrmEditRegistration.SpeedButton3Click(Sender: TObject);
begin
 LabeledEdit9.Text := 'Без договора';
end;

// Проверка уникальности ФИО/названия
procedure TfrmEditRegistration.SpeedButton4Click(Sender: TObject);
var sql: string;
begin
  sql := 'SELECT ID_CLIENTS from CLIENTS_VIEW3 WHERE UPPER(FIO) LIKE ''%'+ UpperCase(trim(LabeledEdit2.Text)) +''' and id_office='+IntToStr(frmRegistration.id_office);
  // Генерация кода сотрудника
  frmRegistration.selq.Close;
  frmRegistration.selq.SQL.Clear;
  frmRegistration.selq.SQL.Add(sql);
  frmRegistration.selq.Open;

  if frmRegistration.selq.RecordCount > 0 then ShowMessage('ФИО уже имеется в БД!')
  else ShowMessage('ФИО уникальное!');

  frmRegistration.selq.Close;
end;

// кнопка "?" на форме
procedure TfrmEditRegistration.SpeedButton5Click(Sender: TObject);
begin
   ShowMessage('Для навигации по полям ввода вниз импользуйте "TAB"'+#10+#13+'Для навигации по полям ввода вверх импользуйте "SHIFT+TAB"'+#10+#13+'Для перехода на новую строку в полях типа Адрес используйте "SHIFT+ENTER"'+#10+#13+'Для записи данных используйте "ENTER"'+#10+#13+'Для выхода из формы используйте "ESC"');
end;

//Вызываем форму для добавления группы
procedure TfrmEditRegistration.SpeedButton6Click(Sender: TObject);
begin
page:=0; // 0 - это вкладка "группа"
  frmEditSubReg.Edit1.Text := '';
  frmEditSubReg.Memo1.Lines.Clear;
  frmEditSubReg.ttype := 1; //1- добавление
  frmeditsubreg.Caption  := 'Редактор :: группа';
  frmeditsubreg.showmodal;
end;


procedure TfrmEditRegistration.SpeedButton7Click(Sender: TObject);
  var ss:string;
begin
  page:=2; // 2 - это вкладка "паспорт"
  frmeditsubreg.Caption  := 'Редактор :: паспорт';
  frmeditsubreg.showmodal;
end;

end.
