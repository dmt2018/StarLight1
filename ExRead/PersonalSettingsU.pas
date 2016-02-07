unit PersonalSettingsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Menus, cxLookAndFeelPainters,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxSpinEdit, MemDS, DBAccess, Ora,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxContainer, cxLabel, cxPC,
  IniFiles, PI_library;

type
  TPersonalSettingsF = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    fst_view: TOraQuery;
    fst_view_ds: TDataSource;
    fst_viewNN: TFloatField;
    fst_viewFST_ID: TFloatField;
    fst_viewF_SUB_TYPE: TStringField;
    fst_viewHOL_SUB_TYPE: TStringField;
    fst_viewFT_ID: TFloatField;
    fst_viewF_TYPE: TStringField;
    fst_viewHT_ID: TFloatField;
    fst_viewHOL_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewQUANT: TIntegerField;
    pc_settings: TcxPageControl;
    tsh_main_settings: TcxTabSheet;
    tsh_types: TcxTabSheet;
    cxLabel1: TcxLabel;
    Grid_types: TcxGrid;
    Grid_types_v: TcxGridDBTableView;
    fst_F_TYPE: TcxGridDBColumn;
    fst_F_SUB_TYPE: TcxGridDBColumn;
    fst_HOL_SUB_TYPE: TcxGridDBColumn;
    fst_NBUTTON: TcxGridDBColumn;
    fst_FT_ID: TcxGridDBColumn;
    fst_HT_ID: TcxGridDBColumn;
    fst_HOL_TYPE: TcxGridDBColumn;
    fst_ID_DEPARTMENTS: TcxGridDBColumn;
    fst_NN: TcxGridDBColumn;
    fst_FST_ID: TcxGridDBColumn;
    Grid_types_l: TcxGridLevel;
    Label3: TLabel;
    icb_suplier: TcxImageComboBox;
    chb_country: TcxCheckBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton2: TcxButton;
    Label1: TLabel;
    icb_country: TcxImageComboBox;
    cxLabel5: TcxLabel;
    GroupBox1: TGroupBox;
    cb_code: TCheckBox;
    cb_name: TCheckBox;
    cb_remarks: TCheckBox;
    chb_fasttrans: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    Label2: TLabel;
    icb_countryTrans: TcxImageComboBox;
    cxLabel8: TcxLabel;
    cb_pack: TCheckBox;
    chb_ChangeCountry: TcxCheckBox;
    cxLabel9: TcxLabel;
    chb_ChangeHolName: TcxCheckBox;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    chb_AlwaysPrint: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersonalSettingsF: TPersonalSettingsF;


implementation

uses Globals, DataModule;

{$R *.dfm}


procedure TPersonalSettingsF.FormShow(Sender: TObject);
VAR ColIni : TIniFile;
    i, j, k : integer;
begin
  ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
  i := ColIni.ReadInteger('supplier','value',-1);
  chb_country.EditValue := ColIni.ReadInteger('country','value', 0);
  j := ColIni.ReadInteger('def_country','value',-1);
  k := ColIni.ReadInteger('def_countryTrans','value',-1);

  cb_code.Checked     := ColIni.ReadBool('def_code','value',false);
  cb_name.Checked     := ColIni.ReadBool('def_name','value',false);
  cb_remarks.Checked  := ColIni.ReadBool('def_remarks','value',false);
  cb_pack.Checked     := ColIni.ReadBool('def_pack','value',false);
  chb_AlwaysPrint.Checked     := ColIni.ReadBool('def_always_print','value',false);

  chb_fasttrans.Checked := ColIni.ReadBool('auto_forma','value', false);
  chb_ChangeCountry.Checked := ColIni.ReadBool('change_country','value', false);
  chb_ChangeHolName.Checked := ColIni.ReadBool('change_hol_name','value', false);

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icb_suplier, '');
  icb_suplier.EditValue := i;

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT C_ID, country FROM countries ORDER BY country');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icb_country, '');
  FillImgComboCx(DM.SelQ, icb_countryTrans, '');
  icb_country.EditValue := j;
  icb_countryTrans.EditValue := k;

  fst_view.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
  fst_view.Open;
  ColIni.Free;
end;

procedure TPersonalSettingsF.cxButton2Click(Sender: TObject);
VAR ColIni : TIniFile;
begin
  if pc_settings.ActivePageIndex = 0 then
  begin
    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    ColIni.WriteInteger('supplier','value',icb_suplier.EditValue);
    ColIni.WriteInteger('country','value',chb_country.EditValue);
    ColIni.WriteInteger('def_country','value',icb_country.EditValue);
    ColIni.WriteInteger('def_countryTrans','value',icb_countryTrans.EditValue);

    ColIni.WriteBool('def_code','value',cb_code.Checked);
    ColIni.WriteBool('def_name','value',cb_name.Checked);
    ColIni.WriteBool('def_remarks','value',cb_remarks.Checked);
    ColIni.WriteBool('def_pack','value',cb_pack.Checked);
    ColIni.WriteBool('def_always_print','value',chb_AlwaysPrint.Checked);

    ColIni.WriteBool('auto_forma','value',chb_fasttrans.Checked);
    ColIni.WriteBool('change_country','value',chb_ChangeCountry.Checked);
    ColIni.WriteBool('change_hol_name','value',chb_ChangeHolName.Checked);

    ColIni.Free;
  end;
  if pc_settings.ActivePageIndex = 1 then
  begin
    if fst_view.state = dsEdit then fst_view.Post;
  end;
  ModalResult := mrOk;
end;

procedure TPersonalSettingsF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fst_view.Close;
end;

end.
