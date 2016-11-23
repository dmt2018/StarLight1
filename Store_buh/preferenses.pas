unit preferenses;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, MemDS,
  DBAccess, Ora, PI_library, xmldom, XMLIntf, msxmldom, XMLDoc, Grids,
  DBGridEh, useful_functions, Menus, cxLookAndFeelPainters, cxButtons,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, DBCtrlsEh, GridsEh, IniFiles,
  DBGridEhGrouping;

type
  TpreferensesForm = class(TForm)
    Panel2: TPanel;
    PageControl1: TPageControl;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    Label7: TLabel;
    Nds_All_UD: TUpDown;
    Nds_All_Edit: TMaskEdit;
    Panel4: TPanel;
    banc: TOraQuery;
    bancBANC_ID: TFloatField;
    bancCOMPANY_ID: TFloatField;
    bancBANC_NAME: TStringField;
    bancBANC_RS: TStringField;
    bancBANC_KS: TStringField;
    bancBANC_BIK: TStringField;
    banc_ds: TOraDataSource;
    sql_CBEx: TOraQuery;
    sql_CBEx_ds: TOraDataSource;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    Company_All_CBEx: TDBComboBoxEh;
    Banc_All_CBEx: TDBComboBoxEh;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    bv_main: TBevel;
    company: TOraQuery;
    company_DS: TOraDataSource;
    DBGridEh2: TDBGridEh;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGridEh1: TDBGridEh;
    Panel9: TPanel;
    cdsSettings: TOraQuery;
    dsSettings: TOraDataSource;
    cdsSettingsID: TIntegerField;
    cdsSettingsUSER_NAME: TStringField;
    cdsSettingsID_COMPANY: TIntegerField;
    cdsSettingsDATE_BEGIN: TDateTimeField;
    cdsSettingsDATE_END: TDateTimeField;
    cdsSettingsPRIKAZ_N: TStringField;
    pm_settings: TPopupMenu;
    mn_insert: TMenuItem;
    mn_delete: TMenuItem;
    chbNDS: TCheckBox;
    edOKPO: TcxTextEdit;
    edOKUD: TcxTextEdit;
    edOKDP: TcxTextEdit;
    lbOKPO: TLabel;
    lbOKUD: TLabel;
    lbOKDP: TLabel;
    chbNDSMinus: TCheckBox;
    chbSpecDiscont: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnFilterOnClick(Sender: TObject);
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mn_insertClick(Sender: TObject);
    procedure mn_deleteClick(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsSettingsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  preferensesForm: TpreferensesForm;

implementation

{$R *.dfm}
uses DataM, global;


//
//  Создание формы
//
procedure TpreferensesForm.FormCreate(Sender: TObject);
begin
	dm.pref.Close;
	dm.pref.ParamByName('ID_emp').AsInteger    := strtoint(Operator_id);
  dm.pref.ParamByName('v_company').AsInteger := datam.company_default;
	dm.pref.Open;

  Company_All_CBEx.OnChange := nil;
  FillComboEh(sql_CBEx, Company_All_CBEx, 'SELECT COMPANY_ID, COMPANY_ID||'' - ''||COMPANY_NAME from buh_company');
  Company_All_CBEx.OnChange := DBComboBoxEh1Change;
  try
    Company_All_CBEx.ItemIndex := Company_All_CBEx.KeyItems.IndexOf(inttostr(datam.company_default));
  except
  end;

  if (datam.company_default <> 0) then
  begin
    FillComboEh(sql_CBEx, Banc_All_CBEx, 'SELECT BANC_ID, BANC_ID||'' - ''||BANC_NAME from buh_banc where COMPANY_ID ='+inttostr(datam.company_default) );
    if (datam.banc_default <> 0) then
      Banc_All_CBEx.ItemIndex := Banc_All_CBEx.KeyItems.IndexOf(inttostr(datam.banc_default));
      if Banc_All_CBEx.ItemIndex = -1 then Banc_All_CBEx.ItemIndex := 0;
  end;

  Nds_All_UD.Position := datam.nds_default;
  chbNDS.Checked      := (datam.bez_nds_default = 1);
  chbNDSMinus.Checked := (datam.bez_nds_minus = 1);
  edOKPO.EditValue    := datam.okpo_default;
  edOKUD.EditValue    := datam.okud_default;
  edOKDP.EditValue    := datam.okdp_default;
  //chbSpecDiscont.Checked := (datam.spec_discont = 1);
end;


procedure TpreferensesForm.FormShow(Sender: TObject);
begin
  company.Open;
//  cdsSettings.ParamByName('v_user').AsString := DM.OraSession.Username;
  cdsSettings.Open;
end;

procedure TpreferensesForm.mn_deleteClick(Sender: TObject);
begin
  cdsSettings.Delete;
end;

procedure TpreferensesForm.mn_insertClick(Sender: TObject);
begin
  cdsSettings.Insert;
end;


procedure TpreferensesForm.cdsSettingsAfterInsert(DataSet: TDataSet);
begin
  cdsSettingsID.AsInteger := 0;
end;


//
//  При смене компании подгружаем банки
//
procedure TpreferensesForm.DBComboBoxEh1Change(Sender: TObject);
var COMPANY_ID:integer;
begin
  COMPANY_ID := Company_All_CBEx.Value; // ReadComboEx(Company_All_CBEx);
  if (COMPANY_ID <> 0) then
  begin
    banc.Close;
    banc.Open;

    FillComboEh(sql_CBEx, Banc_All_CBEx, 'SELECT BANC_ID, BANC_ID||'' - ''||BANC_NAME from buh_banc where COMPANY_ID ='+inttostr(COMPANY_ID) );
    Banc_All_CBEx.ItemIndex := 0;

  	dm.pref.Close;
	  dm.pref.ParamByName('ID_emp').AsInteger := strtoint(Operator_id);
    dm.pref.ParamByName('v_company').AsInteger := COMPANY_ID;
	  dm.pref.Open;

    company_default     := COMPANY_ID;
    chbNDS.Checked      := (DM.pref.FieldByName('BEZNDS').AsInteger = 1);
    chbNDSMinus.Checked := (DM.pref.FieldByName('BEZNDSMINUS').AsInteger = 1);
    edOKPO.EditValue    := DM.pref.FieldByName('OKPO').AsString;
    edOKUD.EditValue    := DM.pref.FieldByName('OKUD').AsString;
    edOKDP.EditValue    := DM.pref.FieldByName('OKDP').AsString;
  end;
end;



procedure TpreferensesForm.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (cdsSettings.State = dsEdit) then cdsSettings.Post;
end;


//
//  Записываем
//
procedure TpreferensesForm.BitBtnFilterOnClick(Sender: TObject);
var ID_EMP:     integer;
    ID_COMPANY: integer;
    ID_BANC:    integer;
    NDS:        integer;
    Ini:        TIniFile;
    path:       String;
begin
  ID_EMP     := 0;
  ID_COMPANY := 0;
  ID_BANC    := 0;
  NDS        := 0;
  ID_EMP     := strtoint(datam.Operator_id);
  ID_COMPANY := Company_All_CBEx.Value; // ReadComboEx(Company_All_CBEx);
  ID_BANC    := Banc_All_CBEx.Value; // ReadComboEx(Banc_All_CBEx);
  NDS        := Nds_All_UD.Position;

  if (cdsSettings.State = dsEdit) or (cdsSettings.State = dsInsert) then cdsSettings.Post;


  if (dm.pref.RecordCount = 0) then
  begin
    dm.pref.Insert;
    dm.pref.FieldByName('ID_EMP').AsInteger     := ID_EMP;
  end;

  if (dm.pref.RecordCount > 0) then
  begin
    dm.pref.Edit;
  end;

  dm.pref.FieldByName('ID_COMPANY').AsInteger := ID_COMPANY;
  dm.pref.FieldByName('ID_BANC').AsInteger    := ID_BANC;
  dm.pref.FieldByName('NDS').AsInteger        := NDS;
  dm.pref.FieldByName('BEZNDS').AsInteger     := BoolToInt(chbNDS.Checked);
  dm.pref.FieldByName('BEZNDSMINUS').AsInteger     := BoolToInt(chbNDSMinus.Checked);
  dm.pref.FieldByName('OKPO').AsString        := VarToStr(edOKPO.EditValue);
  dm.pref.FieldByName('OKUD').AsString        := VarToStr(edOKUD.EditValue);
  dm.pref.FieldByName('OKDP').AsString        := VarToStr(edOKDP.EditValue);
  dm.pref.Post;


  path := ExtractFilePath(Application.ExeName);
//  Ini := TIniFile.Create(path + '\ini\setting.ini' );
  Ini := TIniFile.Create(path + '\ini\'+Operator_username+'_setting.ini' );
  try
    Ini.WriteInteger('id_company','value',ID_COMPANY);
    //Ini.WriteInteger('spec_discont','value',BoolToInt(chbSpecDiscont.Checked));
    //Ini.WriteInteger('spec_discont','value',0);
    //DataM.spec_discont := BoolToInt(chbSpecDiscont.Checked);
  finally
    Ini.Free;
  end;


  DM.OraSession.Commit;
  DM.readparameters();
	dm.pref.Close;
  close;
end;


end.
