unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxLabel,
  ExtCtrls, PI_library, cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, IniFiles, DB, DBTables, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Menus,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxCheckBox, ActnList,
  cxCurrencyEdit, cxDBLabel, cxGroupBox, MemDS, DBAccess, Ora;

type
  TfrmSetings = class(TForm)
    Panel2: TPanel;
    btn_close: TBitBtn;
    btn_save: TBitBtn;
    Panel3: TPanel;
    pc_settings: TcxPageControl;
    tsh_personal: TcxTabSheet;
    tsh_dicts: TcxTabSheet;
    tsh_cargo: TcxTabSheet;
    Label3: TLabel;
    icb_suplier: TcxImageComboBox;
    Clients_table: TTable;
    Clients_table_ds: TDataSource;
    Clients_tablePD: TStringField;
    Clients_tablePDRU: TStringField;
    Clients_tableFULL: TStringField;
    BitBtn1: TBitBtn;
    gr_fito_v: TcxGridDBTableView;
    gr_fito_l: TcxGridLevel;
    gr_fito: TcxGrid;
    gr_fito_vID: TcxGridDBColumn;
    gr_fito_vNAME_ENG: TcxGridDBColumn;
    gr_fito_vNAME_RU: TcxGridDBColumn;
    gr_fito_vID_DEP: TcxGridDBColumn;
    gr_fito_vNAME_ENG_FULL: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btn_add: TcxButton;
    gr_fito_vColumn1: TcxGridDBColumn;
    chb_country: TcxCheckBox;
    aMain: TActionList;
    aClose: TAction;
    cxLabel2: TcxLabel;
    tsh_names: TcxTabSheet;
    pnl_name_top: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    cxLabel3: TcxLabel;
    ed_name_suplier: TEdit;
    ed_name_fito: TEdit;
    btn_add_name: TcxButton;
    cxLabel4: TcxLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    gr_names: TcxGrid;
    gr_names_v: TcxGridDBTableView;
    fito_btndel: TcxGridDBColumn;
    fito_FITO_ID: TcxGridDBColumn;
    fito_F_NAME: TcxGridDBColumn;
    fito_FITO_NAME: TcxGridDBColumn;
    fito_ID_DEPARTMENTS: TcxGridDBColumn;
    gr_names_l: TcxGridLevel;
    aSave: TAction;
    Label8: TLabel;
    ed_name_code: TEdit;
    fito_NAME_CODE: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    aFind: TAction;
    gr_weight: TcxGrid;
    gr_weight_v: TcxGridDBTableView;
    weight_button: TcxGridDBColumn;
    weight_ID: TcxGridDBColumn;
    weight_NAME_CAT: TcxGridDBColumn;
    gr_weight_l: TcxGridLevel;
    Panel6: TPanel;
    weight_STEM_WEIGHT: TcxGridDBColumn;
    weight_ID_DEP: TcxGridDBColumn;
    weight_NAME_CAT_RU: TcxGridDBColumn;
    weight_CUST_REGN: TcxGridDBColumn;
    weight_ORDERBY: TcxGridDBColumn;
    chb_roses: TcxCheckBox;
    gr_weight_vMAKE_INFO: TcxGridDBColumn;
    gr_w_formula: TcxGrid;
    gr_w_formula_v: TcxGridDBTableView;
    gr_w_formula_button: TcxGridDBColumn;
    gr_w_formula_fo_name: TcxGridDBColumn;
    gr_w_formula_fo_field: TcxGridDBColumn;
    gr_w_formula_weight: TcxGridDBColumn;
    gr_w_formula_fo_rule: TcxGridDBColumn;
    gr_w_formula_orderby: TcxGridDBColumn;
    gr_w_formula_ID_W: TcxGridDBColumn;
    gr_w_formula_ID: TcxGridDBColumn;
    gr_w_formula_l: TcxGridLevel;
    gr_w_formula_FO_VALUE: TcxGridDBColumn;
    Image1: TImage;
    gbNewCategory: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    Label10: TLabel;
    Image8: TImage;
    ed_weight_name: TEdit;
    Label15: TLabel;
    Image7: TImage;
    ed_weight_tr_ru: TEdit;
    Label13: TLabel;
    ed_weight_val: TcxCurrencyEdit;
    Label16: TLabel;
    ed_weight_code: TEdit;
    chb_category_info: TcxCheckBox;
    Label17: TLabel;
    cxDBLabel1: TcxDBLabel;
    ed_formula_name: TEdit;
    Image10: TImage;
    Label14: TLabel;
    Label12: TLabel;
    Image9: TImage;
    cxComboBox1: TcxComboBox;
    ed_weight_znak: TcxComboBox;
    Label18: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    ed_formula_val: TEdit;
    btn_add_category: TcxButton;
    btn_add_formula: TcxButton;
    Panel4: TPanel;
    tsh_packing: TcxTabSheet;
    Panel5: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Image5: TImage;
    Image6: TImage;
    cxLabel5: TcxLabel;
    edPackingName: TEdit;
    btnAddPacking: TcxButton;
    cxLabel7: TcxLabel;
    edPackingWeight: TcxCurrencyEdit;
    chbPackingDefault: TcxCheckBox;
    grPacking: TcxGrid;
    grPackingV: TcxGridDBTableView;
    grPackingL: TcxGridLevel;
    CDS_Packing: TOraQuery;
    DS_Packing: TDataSource;
    CDS_PackingID: TIntegerField;
    CDS_PackingPACKING: TStringField;
    CDS_PackingNULLABLE: TIntegerField;
    CDS_PackingPACKING_WEIGHT: TFloatField;
    CDS_PackingID_DEP: TIntegerField;
    grPackingVPACKING: TcxGridDBColumn;
    grPackingVNULLABLE: TcxGridDBColumn;
    grPackingVPACKING_WEIGHT: TcxGridDBColumn;
    Label11: TLabel;
    ed_weight_pack: TcxCurrencyEdit;
    ed_weight_tank: TcxCurrencyEdit;
    gr_weight_vWEIGHT_PACK: TcxGridDBColumn;
    gr_weight_vWEIGHT_TANK: TcxGridDBColumn;
    Label19: TLabel;
    edWeightTelega: TcxCurrencyEdit;
    Label20: TLabel;
    edWeightPaddon: TcxCurrencyEdit;
    tsh_customs_coef: TcxTabSheet;
    Panel7: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Image11: TImage;
    Image12: TImage;
    cxLabel8: TcxLabel;
    btnAddCustCoef: TcxButton;
    cxLabel9: TcxLabel;
    ed_cust_val: TcxCurrencyEdit;
    grCustCoef: TcxGrid;
    grCustCoef_v: TcxGridDBTableView;
    grCustCoef_l: TcxGridLevel;
    icb_categories: TcxImageComboBox;
    icb_countries: TcxImageComboBox;
    Label23: TLabel;
    Image13: TImage;
    grCustCoef_vID: TcxGridDBColumn;
    grCustCoef_vID_W: TcxGridDBColumn;
    grCustCoef_vFS_COUNTRY_ID: TcxGridDBColumn;
    grCustCoef_vFO_VALUE: TcxGridDBColumn;
    grCustCoef_vNAME_CAT_RU: TcxGridDBColumn;
    grCustCoef_vCOUNTRY: TcxGridDBColumn;
    grCustCoef_vNAME_CAT: TcxGridDBColumn;
    grCustCoef_vColumn1: TcxGridDBColumn;
    grPackingVColumn1: TcxGridDBColumn;
    pm_cust_coef: TPopupMenu;
    mn_clone_coef: TMenuItem;
    grCustCoef_vID_DEPARTMENTS: TcxGridDBColumn;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure gr_fito_vColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure aCloseExecute(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_add_nameClick(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure fito_btndelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_name_fitoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure aFindExecute(Sender: TObject);
    procedure btn_add_categoryClick(Sender: TObject);
    procedure weight_buttonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gr_weight_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ed_weight_tr_ruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_add_formulaClick(Sender: TObject);
    procedure gr_w_formula_buttonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_name_codeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddPackingClick(Sender: TObject);
    procedure btnAddCustCoefClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grCustCoef_vColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure grPackingVColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure mn_clone_coefClick(Sender: TObject);
    procedure pm_cust_coefPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetings: TfrmSetings;

implementation

uses UDM, Globals;

{$R *.dfm}


// ***************************************************************************//
// **********************      Названия       ********************************//
// ***************************************************************************//
procedure TfrmSetings.ed_name_codeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_add_nameClick(Sender);
end;

procedure TfrmSetings.ed_name_fitoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_add_nameClick(Sender);
end;

// Добавим перевод названия
procedure TfrmSetings.btn_add_nameClick(Sender: TObject);
begin
  if (trim(ed_name_suplier.Text) = '') or (trim(ed_name_fito.Text) = '') then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (DM.CDS_NAMES.Locate('F_NAME;fito_name;NAME_CODE',VarArrayOf([trim(ed_name_suplier.Text), trim(ed_name_fito.Text), trim(ed_name_code.Text)]),[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое название, код или перевод уже существуют!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  try
    err_msg := '';
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.SAVE_FITO_NAMES(:V_ID_DEP, :v_name, :V_NAME_FITO, :V_NAME_CODE, :v_fito_id, :out_errmsg); end;');
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger       := CUR_DEPT_ID;
    DM.SelQ.ParamByName('v_name').AsString          := CutSpaces(trim(ed_name_suplier.Text));
    DM.SelQ.ParamByName('V_NAME_FITO').AsString     := CutSpaces(trim(ed_name_fito.Text));
    DM.SelQ.ParamByName('V_NAME_CODE').AsString     := CutSpaces(trim(ed_name_code.Text));
    DM.SelQ.ParamByName('v_fito_id').AsInteger      := 0;
    DM.SelQ.ParamByName('out_errmsg').AsString      := err_msg;
    DM.SelQ.Execute;
    if (DM.SelQ.ParamByName('v_fito_id').AsInteger > 0) then
    begin
      DM.CDS_NAMES.Refresh;
//      DM.CDS_NAMES.Locate('FN_ID',DM.SelQ.ParamByName('V_FN_ID').AsInteger,[]);
      gr_names_v.DataController.LocateByKey(DM.SelQ.ParamByName('v_fito_id').AsInteger);
      ed_name_suplier.Text := '';
      ed_name_fito.Text    := '';
      ed_name_code.Text    := '';
      gr_names.SetFocus;
    end
    else
    begin
      MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;

// Пробуем найти имя
procedure TfrmSetings.aFindExecute(Sender: TObject);
begin
  if pc_settings.ActivePage.Tag <> 3 then exit;

  gr_names_v.DataController.Filter.Clear;
  fito_F_NAME.DataBinding.AddToFilter(nil, foLike, ed_name_suplier.Text);
  gr_names_v.DataController.Filter.Active := True;
end;

// Удалим перевод
procedure TfrmSetings.fito_btndelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.CDS_NAMES.Delete;
end;
// ***************************************************************************//
// ***************************************************************************//







// Закроем окно
procedure TfrmSetings.aCloseExecute(Sender: TObject);
begin
  Close;
end;

// Кнопка закрыть
procedure TfrmSetings.btn_closeClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSetings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.cds_custcoef.Close;
end;

// На создании откроем таблицу
procedure TfrmSetings.FormCreate(Sender: TObject);
begin
  DM.CDS_NAMES.Close;
  DM.CDS_NAMES.Filter := '';
  DM.CDS_NAMES.Filtered := false;
  DM.CDS_NAMES.ParamByName('V_ID_DEP').AsInteger := CUR_DEPT_ID;
  DM.CDS_NAMES.Open;

  DM.CDS_WEIGHTS.Close;
  DM.CDS_WEIGHTS.Filter := '';
  DM.CDS_WEIGHTS.Filtered := false;
  DM.CDS_WEIGHTS.ParamByName('V_ID_DEP').AsInteger := CUR_DEPT_ID;
  DM.CDS_WEIGHTS.Open;

  DM.CDS_W_FORMULA.Close;
  DM.CDS_W_FORMULA.Filter := '';
  DM.CDS_W_FORMULA.Filtered := false;
  DM.CDS_W_FORMULA.Open;

  DM.CDS_FITO.Close;
  DM.CDS_FITO.ParamByName('ID_DEPARTMENTS_').AsInteger := CUR_DEPT_ID;
  DM.CDS_FITO.Open;

  CDS_Packing.Open;
  CDS_Packing.Filter := 'id_dep='+IntToStr(CUR_DEPT_ID);
  CDS_Packing.Filtered := false;

  DM.cds_custcoef.Close;
  DM.cds_custcoef.Filter := '';
  DM.cds_custcoef.Filtered := false;
  DM.cds_custcoef.ParamByName('V_ID_DEP').AsInteger := CUR_DEPT_ID;
  DM.cds_custcoef.Open;
end;

// Покажем форму
procedure TfrmSetings.FormShow(Sender: TObject);
VAR ColIni : TIniFile;
    i : integer;
begin
    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    i := ColIni.ReadInteger('supplier','value',-1);
    chb_country.EditValue := ColIni.ReadInteger('country','value', 0);
    chb_roses.EditValue   := ColIni.ReadInteger('roses','value', 0);

    //edWeightTelega.EditValue := ColIni.ReadInteger('telega','value', 0);
    //edWeightPaddon.EditValue := ColIni.ReadInteger('paddon','value', 0);

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('select const_customs_telega from dual');
    DM.SelQ.Open;
    edWeightTelega.EditValue := DM.SelQ.Fields[0].AsInteger;
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('select const_customs_poddon from dual');
    DM.SelQ.Open;
    edWeightPaddon.EditValue := DM.SelQ.Fields[0].AsInteger;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT a.id, a.name_cat FROM customs_weight a WHERE a.id_dep ='+IntToStr(CUR_DEPT_ID)+' order by name_cat');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_categories, '');
    icb_suplier.EditValue := i;
    DM.SelQ.Close;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT C_ID, COUNTRY FROM COUNTRIES order by COUNTRY');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_countries, 'Any country');
    icb_suplier.EditValue := i;
    DM.SelQ.Close;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT S_ID, S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_suplier, '');
    icb_suplier.EditValue := i;
    DM.SelQ.Close;

    ColIni.Free;
    if (pc_settings.ActivePageIndex = 1) then
       ed_weight_tr_ru.SetFocus;
    if (pc_settings.ActivePageIndex = 2) then
       Edit3.SetFocus;
    if (pc_settings.ActivePageIndex = 3) then
    begin
      if dm.CDS_NAMES.RecNo > 1 then
         gr_names.SetFocus
      else
         ed_name_fito.SetFocus;
    end;
end;

// Запишем данные
procedure TfrmSetings.aSaveExecute(Sender: TObject);
VAR ColIni : TIniFile;
begin
  if pc_settings.ActivePage.Tag = 0 then
  begin
    icb_suplier.PostEditValue;
    chb_country.PostEditValue;
    chb_roses.PostEditValue;
    edWeightTelega.PostEditValue;
    edWeightPaddon.PostEditValue;
    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    ColIni.WriteInteger('supplier','value',icb_suplier.EditValue);
    ColIni.WriteInteger('country','value',chb_country.EditValue);
    ColIni.WriteInteger('roses','value',chb_roses.EditValue);

    ColIni.WriteInteger('telega','value',edWeightTelega.EditValue);
    ColIni.WriteInteger('paddon','value',edWeightPaddon.EditValue);

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('CREATE OR REPLACE FUNCTION const_customs_poddon RETURN  number IS BEGIN RETURN '+VarToStr(edWeightPaddon.EditValue)+'; END;');
    DM.SelQ.Execute;
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('CREATE OR REPLACE FUNCTION const_customs_telega RETURN  number IS BEGIN RETURN '+VarToStr(edWeightTelega.EditValue)+'; END;');
    DM.SelQ.Execute;

    ColIni.Free;
  end;
  // Тип и подтипы
  if pc_settings.ActivePage.Tag = 1 then
  begin
    if DM.CDS_WEIGHTS.state = dsEdit then DM.CDS_WEIGHTS.Post;
  end;
  // Фито категории
  if pc_settings.ActivePage.Tag = 2 then
  begin
    if DM.CDS_FITO.state = dsEdit then DM.CDS_FITO.Post;
  end;
  // Названия
  if pc_settings.ActivePage.Tag = 3 then
  begin
    if DM.CDS_NAMES.state = dsEdit then DM.CDS_NAMES.Post;
  end;

  ModalResult := mrOk;
end;











procedure TfrmSetings.BitBtn1Click(Sender: TObject);
begin
  Clients_table.First;
  while not Clients_table.Eof do
  begin
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('insert into fito_category values(SEQ_FITO_CATEGORY.nextval, '''+Clients_tablePD.Value+''', '''+Clients_tablePDRU.Value+''', '+IntToStr(CUR_DEPT_ID)+', '''+Clients_tableFULL.Value+''')');
    DM.SelQ.Execute;
    Clients_table.Next;
  end;
  DM.STAR_DB.Commit;
end;

// Добавим запись фито категории
procedure TfrmSetings.btn_addClick(Sender: TObject);
begin
  if (trim(Edit1.Text) = '') or (trim(Edit3.Text) = '') then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (DM.CDS_FITO.Locate('NAME_ENG',CutSpaces(trim(Edit1.Text)),[loCaseInsensitive]) = true) or (DM.CDS_FITO.Locate('NAME_RU',CutSpaces(trim(Edit3.Text)),[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое название или перевод уже существуют!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.SAVE_FITO(:V_ID_DEP, :V_NAME_ENG, :V_NAME_RU, :V_NAME_ENG_FULL, :V_ID); end;');
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger        := CUR_DEPT_ID;
    DM.SelQ.ParamByName('V_NAME_ENG').AsString       := CutSpaces(trim(Edit1.Text));
    DM.SelQ.ParamByName('V_NAME_RU').AsString        := CutSpaces(trim(Edit3.Text));
    DM.SelQ.ParamByName('V_NAME_ENG_FULL').AsString  := CutSpaces(trim(Edit2.Text));
    DM.SelQ.ParamByName('V_ID').AsInteger            := 0;
    DM.SelQ.Execute;
    if (DM.SelQ.ParamByName('V_ID').AsInteger > 0) then
    begin
      DM.CDS_FITO.Refresh;
      DM.CDS_FITO.Locate('ID',DM.SelQ.ParamByName('V_ID').AsInteger,[]);
      Edit1.Text := '';
      Edit2.Text := '';
      Edit3.Text := '';
      gr_fito.SetFocus;
    end
    else
    begin
      MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


procedure TfrmSetings.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_addClick(Sender);
end;



procedure TfrmSetings.ed_weight_tr_ruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_add_categoryClick(Sender);
end;

// Удалим ФИТО тип
procedure TfrmSetings.gr_fito_vColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.CDS_FITO.Delete;
end;





{ Таможенная сетка *********************************************************** }

// Добавим вес
procedure TfrmSetings.btn_add_categoryClick(Sender: TObject);
begin
  if (trim(ed_weight_name.Text) = '') or (trim(ed_weight_tr_ru.Text) = '') then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (DM.CDS_WEIGHTS.Locate('NAME_CAT',ed_weight_name.Text,[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое название уже существует!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.save_weights(:V_ID_DEP, :V_NAME_CAT, :v_NAME_CAT_RU, :v_weight, :v_make_info, :v_cust_regn, :v_orderby, :v_weight_pack, :v_weight_tank, :v_id); end;');
    DM.SelQ.Prepare;
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger       := CUR_DEPT_ID;
    DM.SelQ.ParamByName('V_NAME_CAT').AsString      := CutSpaces(trim(ed_weight_name.Text));
    DM.SelQ.ParamByName('v_NAME_CAT_RU').AsString   := CutSpaces(trim(ed_weight_tr_ru.Text));
    DM.SelQ.ParamByName('v_weight').AsFloat         := ed_weight_val.EditValue;
    DM.SelQ.ParamByName('v_make_info').AsInteger    := chb_category_info.EditValue;
    DM.SelQ.ParamByName('v_cust_regn').AsString     := CutSpaces(trim(ed_weight_code.Text));
    DM.SelQ.ParamByName('v_orderby').AsInteger      := 0;
    DM.SelQ.ParamByName('v_weight_pack').AsFloat    := ed_weight_pack.EditValue;
    DM.SelQ.ParamByName('v_weight_tank').AsFloat    := ed_weight_tank.EditValue;
    DM.SelQ.ParamByName('v_id').AsInteger           := 0;
    DM.SelQ.Execute;

    if (DM.SelQ.ParamByName('v_id').AsInteger > 0) then
    begin
      DM.CDS_WEIGHTS.Refresh;
      DM.CDS_WEIGHTS.Locate('id',DM.SelQ.ParamByName('v_id').AsInteger,[]);
      ed_weight_name.Text         := '';
      ed_weight_tr_ru.Text        := '';
      ed_weight_val.EditValue     := 0;
      ed_weight_code.Text         := '';
      chb_category_info.EditValue := 0;
      ed_weight_pack.EditValue    := 0;
      ed_weight_tank.EditValue    := 0;
      gr_weight.SetFocus;
    end
    else
    begin
      MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


// Добавим формулу
procedure TfrmSetings.btn_add_formulaClick(Sender: TObject);
begin
  if (DM.CDS_WEIGHTS.Active = false) or (DM.CDS_WEIGHTS.RecordCount = 0) then
  begin
      MessageBox(Handle, 'Нет формул!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (trim(ed_formula_name.Text) = '') or (trim(ed_formula_val.Text) = '') then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;
{
  if (DM.CDS_WEIGHTS.Locate('NAME_CAT',ed_weight_name.Text,[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое название уже существует!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;
}

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.save_weight_formula(:V_ID_W, :V_FO_NAME, :v_FO_FIELD, :v_FO_RULE, :v_FO_VALUE, :v_weight_, :v_orderby, :v_id, :v_error); end;');
    DM.SelQ.Prepare;
    DM.SelQ.ParamByName('V_ID_W').AsInteger      := DM.CDS_WEIGHTSID.AsInteger;
    DM.SelQ.ParamByName('V_FO_NAME').AsString    := CutSpaces(trim(ed_formula_name.text));
    DM.SelQ.ParamByName('v_FO_FIELD').AsInteger  := cxComboBox1.ItemIndex;
    DM.SelQ.ParamByName('v_FO_RULE').AsInteger   := ed_weight_znak.ItemIndex;
    DM.SelQ.ParamByName('v_FO_VALUE').AsString   := CutSpaces(trim(ed_formula_val.text));
    DM.SelQ.ParamByName('v_weight_').AsFloat     := cxCurrencyEdit1.EditValue;
    DM.SelQ.ParamByName('v_orderby').AsInteger   := 0;
    DM.SelQ.ParamByName('v_id').AsInteger        := 0;
//    DM.SelQ.ParamByName('v_error').AsString      := '';
    DM.SelQ.Execute;

    if (DM.SelQ.ParamByName('v_error').AsString <> '') then
        MessageBox(Handle, PChar(DM.SelQ.ParamByName('v_error').AsString), 'Ошибка!', MB_ICONINFORMATION)
    else
    begin
      if (DM.SelQ.ParamByName('v_id').AsInteger > 0) then
      begin
        DM.CDS_W_FORMULA.Refresh;
        DM.CDS_W_FORMULA.Locate('id',DM.SelQ.ParamByName('v_id').AsInteger,[]);
        ed_weight_name.Text         := '';
        ed_weight_tr_ru.Text        := '';
        ed_weight_val.EditValue     := 0;
        ed_weight_code.Text         := '';
        chb_category_info.EditValue := 0;
        gr_w_formula.SetFocus;
      end
      else
      begin
        MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
      end;
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;




procedure TfrmSetings.weight_buttonPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.CDS_WEIGHTS.Delete;
end;

procedure TfrmSetings.gr_weight_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
  var active_: Variant;
begin
{
	active_ := gr_weight_v.DataController.GetValue(
    	AViewInfo.GridRecord.RecordIndex, gr_weight_v.GetColumnByFieldName('rule_type').Index
        );
    if (not AViewInfo.Selected) and (active_ = 0) and (gr_weight_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'RULE_VAL' ) then
    begin
       	ACanvas.Font.Color := clBtnFace;
       	ACanvas.Brush.Color := clBtnFace;
    end;
    if (not AViewInfo.Selected) and (active_ > 0) and (gr_weight_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'RULE_VAL' ) then
    begin
      if ( gr_weight_v.DataController.GetValue(
    	AViewInfo.GridRecord.RecordIndex, gr_weight_v.GetColumnByFieldName('RULE_VAL').Index
        ) = null ) or ( gr_weight_v.DataController.GetValue(
    	AViewInfo.GridRecord.RecordIndex, gr_weight_v.GetColumnByFieldName('RULE_VAL').Index
        ) = 0 ) then
       	ACanvas.Brush.Color := clRed;
    end;
}    
end;

procedure TfrmSetings.gr_w_formula_buttonPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.CDS_W_FORMULA.Delete;
end;

// Скопировать текущие коэффициенты страны на новую странц
procedure TfrmSetings.mn_clone_coefClick(Sender: TObject);
var cur_country, sel_country: integer;
begin
  if (icb_countries.EditValue < 0) then
  begin
      MessageBox(Handle, 'Укажите обязательно страну для копирования!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  sel_country := icb_countries.EditValue;
  cur_country := DM.cds_custcoefFS_COUNTRY_ID.AsInteger;

  if cur_country = sel_country then
  begin
      MessageBox(Handle, 'Нельзя копировать значения в одну и ту же страну!', 'Внимание', MB_ICONWARNING);
      exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.copy_cust_coef(:V_ID_DEP, :V_CUR_COUNTRY, :V_SEL_COUNTRY); end;');
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger      := CUR_DEPT_ID;
    DM.SelQ.ParamByName('V_CUR_COUNTRY').AsInteger := cur_country;
    DM.SelQ.ParamByName('V_SEL_COUNTRY').AsInteger := sel_country;
    DM.SelQ.Execute;
    DM.cds_custcoef.Refresh;
    grCustCoef.SetFocus;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;

procedure TfrmSetings.pm_cust_coefPopup(Sender: TObject);
begin
  mn_clone_coef.Enabled := (DM.cds_custcoef.Active and (DM.cds_custcoef.RecordCount > 0) and (grCustCoef_v.ViewData.RecordCount > 0));
end;

{ **************************************************************************** }


// Добавление нового типа коробки
procedure TfrmSetings.btnAddPackingClick(Sender: TObject);
begin
  if (trim(edPackingName.Text) = '') then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (CDS_Packing.Locate('packing',CutSpaces(trim(edPackingName.Text)),[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое тип упаковки уже существуют!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.save_packing(:V_ID_DEP, :V_packing, :V_nullable, :v_packing_weight, :V_ID); end;');
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger          := CUR_DEPT_ID;
    DM.SelQ.ParamByName('V_packing').AsString          := CutSpaces(trim(edPackingName.Text));
    DM.SelQ.ParamByName('V_nullable').AsInteger        := chbPackingDefault.EditValue;
    DM.SelQ.ParamByName('v_packing_weight').AsCurrency := edPackingWeight.EditValue;
    DM.SelQ.ParamByName('V_ID').AsInteger              := 0;
    DM.SelQ.Execute;
    if (DM.SelQ.ParamByName('V_ID').AsInteger > 0) then
    begin
      CDS_Packing.Refresh;
      CDS_Packing.Locate('ID',DM.SelQ.ParamByName('V_ID').AsInteger,[]);
      edPackingName.Text := '';
      edPackingWeight.EditValue := 0;
      chbPackingDefault.Checked := false;
      grPacking.SetFocus;
    end
    else
    begin
      MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;



// Добавление таможенного коэффициента
procedure TfrmSetings.btnAddCustCoefClick(Sender: TObject);
begin
  if (icb_categories.EditValue < 1) or (icb_countries.EditValue < 0) then
  begin
      MessageBox(Handle, 'Укажите обязательные значения!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  if (CDS_Packing.Locate('packing',CutSpaces(trim(edPackingName.Text)),[loCaseInsensitive]) = true) then
  begin
      MessageBox(Handle, 'Такое тип упаковки уже существуют!', 'Внимание', MB_ICONINFORMATION);
      exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin custom_pkg.save_custcoef(:V_ID, :V_category, :V_country, :v_value, :V_ID_DEP); end;');
    DM.SelQ.ParamByName('V_ID').AsInteger             := 0;
    DM.SelQ.ParamByName('V_category').AsInteger       := icb_categories.EditValue;
    DM.SelQ.ParamByName('V_country').AsInteger        := icb_countries.EditValue;
    DM.SelQ.ParamByName('v_value').AsCurrency         := ed_cust_val.EditValue;
    DM.SelQ.ParamByName('V_ID_DEP').AsInteger         := CUR_DEPT_ID;
    DM.SelQ.Execute;
    if (DM.SelQ.ParamByName('V_ID').AsInteger > 0) then
    begin
      DM.cds_custcoef.Refresh;
      DM.cds_custcoef.Locate('ID',DM.SelQ.ParamByName('V_ID').AsInteger,[]);
      icb_categories.EditValue := -1;
      icb_countries.EditValue := -1;
      ed_cust_val.EditValue := 0;
      grCustCoef.SetFocus;
    end
    else
    begin
      MessageBox(Handle, 'Такое название уже добавлено', 'Ошибка!', MB_ICONINFORMATION);
    end;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


// Удаление таможенного коэффициента
procedure TfrmSetings.grCustCoef_vColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.CDS_custcoef.Delete;
end;


// Удалим тип упаковки
procedure TfrmSetings.grPackingVColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     CDS_Packing.Delete;
end;

end.
