unit UEditRegistration;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxMemo, StdCtrls, Buttons, DBCtrls, DBAccess, Ora,
  MemDS, ImgList, ActnList, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Mask, DBCtrlsEh, ExtCtrls, ComCtrls;

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
    Label26: TLabel;
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
    Memo5: TMemo;
    Memo1: TMemo;
    DBComboBoxEh1: TDBComboBoxEh;
    CheckBox6: TCheckBox;
    lePrefix: TLabeledEdit;
    icbCity: TcxLookupComboBox;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Memo3: TMemo;
    Memo2: TMemo;
    Memo4: TMemo;
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
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
  end;

var
  frmEditRegistration: TfrmEditRegistration;

implementation

{$R *.dfm}

uses URegistration, udm;


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

end.
