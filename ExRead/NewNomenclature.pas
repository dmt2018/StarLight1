unit NewNomenclature;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids, RegExpr,
  PI_library, ComCtrls, ValEdit, ActnList, Menus,Registry, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxLabel,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, cxButtons, Ora, MemDS, DBAccess,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxImageComboBox, ExtDlgs, cxDBExtLookupComboBox, cxCheckBox, IniFiles;

type
  TNewNomForm = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    ALoadNomParams: TAction;
    GridPop: TPopupMenu;
    N4: TMenuItem;
    grid_nn: TcxGrid;
    grid_nnView1: TcxGridDBTableView;
    grid_nn_Level1: TcxGridLevel;
    grid_nnView1COMPILED_NAME: TcxGridDBColumn;
    grid_nnView1FULL_NAME: TcxGridDBColumn;
    nnF_NAME: TcxGridDBColumn;
    nnCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_nnView1F_SUB_TYPE: TcxGridDBColumn;
    grid_nnView1F_TYPE: TcxGridDBColumn;
    grid_nnView1N_ID: TcxGridDBColumn;
    grid_nnView1FN_ID: TcxGridDBColumn;
    grid_nnView1FT_ID: TcxGridDBColumn;
    grid_nnView1FST_ID: TcxGridDBColumn;
    grid_nnView1S_ID: TcxGridDBColumn;
    grid_nnView1C_ID: TcxGridDBColumn;
    grid_nnView1COL_ID: TcxGridDBColumn;
    nnH_CODE: TcxGridDBColumn;
    grid_nnView1H_NAME: TcxGridDBColumn;
    nnCODE: TcxGridDBColumn;
    grid_nnView1BAR_CODE: TcxGridDBColumn;
    nnLEN: TcxGridDBColumn;
    nnPACK: TcxGridDBColumn;
    grid_nnView1VBN: TcxGridDBColumn;
    grid_nnView1HOL_TYPE: TcxGridDBColumn;
    grid_nnView1WEIGHT: TcxGridDBColumn;
    nnS_NAME_RU: TcxGridDBColumn;
    nnCOLOUR: TcxGridDBColumn;
    nnCOUNTRY: TcxGridDBColumn;
    nnTYPE_SUBTYPE: TcxGridDBColumn;
    grid_nnView1F_NAMES: TcxGridDBColumn;
    grid_nnView1CUST_COEF: TcxGridDBColumn;
    nnPRICE: TcxGridDBColumn;
    nnPRICE_DATE: TcxGridDBColumn;
    grid_nnView1DIAMETER: TcxGridDBColumn;
    grid_nnView1HT_ID: TcxGridDBColumn;
    BitBtn2: TcxButton;
    BitBtn5: TcxButton;
    BitBtn1: TcxButton;
    CDS_FLOWERS: TOraQuery;
    CDS_FLOWERSFN_ID: TFloatField;
    CDS_FLOWERSF_NAME_RU: TStringField;
    DS_FLOWERS: TOraDataSource;
    CDS_TYPE: TOraQuery;
    DS_TYPE: TOraDataSource;
    CDS_TYPEFT_ID: TFloatField;
    CDS_TYPEF_TYPE: TStringField;
    CDS_SUBTYPE: TOraQuery;
    DS_SUBTYPE: TOraDataSource;
    CDS_TYPEFT_ID_: TFloatField;
    CDS_SUBTYPEFST_ID: TFloatField;
    CDS_SUBTYPEF_SUB_TYPE: TStringField;
    CDS_SUPPLIER: TOraQuery;
    DS_SUPPLIER: TOraDataSource;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    CDS_COUNTRY: TOraQuery;
    DS_COUNTRY: TOraDataSource;
    CDS_COUNTRYC_ID: TIntegerField;
    CDS_COUNTRYCOUNTRY: TStringField;
    CDS_COLOR: TOraQuery;
    DS_COLOR: TOraDataSource;
    CDS_COLORCOL_ID: TFloatField;
    CDS_COLORCOLOUR: TStringField;
    a_add_nom: TAction;
    A_add_name: TAction;
    A_add_supplier: TAction;
    A_add_country: TAction;
    A_add_color: TAction;
    A_done: TAction;
    A_cancel: TAction;
    N1: TMenuItem;
    select_nom: TAction;
    fst_view: TOraQuery;
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
    fst_view_ds: TDataSource;
    find_name: TAction;
    find_color: TAction;
    Panel5: TPanel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1SKU: TcxDBEditorRow;
    cxDBVerticalGrid1DESCRIPTION: TcxDBEditorRow;
    cxDBVerticalGrid1SHORT_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1INVOICE_DATA_AS_IS_ID: TcxDBEditorRow;
    cxDBVerticalGrid1HOL_COLOUR: TcxDBEditorRow;
    cxDBVerticalGrid1HOL_SUB_TYPE: TcxDBEditorRow;
    cxDBVerticalGrid1SHORT_CODE: TcxDBEditorRow;
    cxDBVerticalGrid1MARKS_CONTENT: TcxDBEditorRow;
    cxDBVerticalGrid1MARKS_NAMES: TcxDBEditorRow;
    cxDBVerticalGrid1BAR_CODE: TcxDBEditorRow;
    cxDBVerticalGrid1REMARKS: TcxDBEditorRow;
    OpenPictureDialog1: TOpenPictureDialog;
    aArtSearch: TAction;
    aCodeSearch: TAction;
    aLengthSearch: TAction;
    aAddSubType: TAction;
    CDS_FLOWERSNAME_CODE: TStringField;
    CDS_FLOWERSFITO_NAME: TStringField;
    nnF_NAME_RU: TcxGridDBColumn;
    nn_REMARKS: TcxGridDBColumn;
    nn_QUANTITY: TcxGridDBColumn;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label18: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    spb_add_type: TSpeedButton;
    spb_add_subtype: TSpeedButton;
    ed_art: TEdit;
    ed_len: TEdit;
    ed_kolvo: TEdit;
    ed_full_name: TEdit;
    MarksVals: TValueListEditor;
    BitBtn4: TBitBtn;
    ed_diametr: TEdit;
    ed_barcode: TEdit;
    ed_coef: TEdit;
    lookcombo_name: TcxLookupComboBox;
    lookcombo_type: TcxLookupComboBox;
    lookcombo_subtype: TcxLookupComboBox;
    lookcombo_suplier: TcxLookupComboBox;
    lookcombo_country: TcxLookupComboBox;
    lookcombo_color: TcxLookupComboBox;
    text_find: TcxTextEdit;
    color_find: TcxTextEdit;
    ComboBoxEx1: TcxImageComboBox;
    btn_serach_art: TcxButton;
    btn_serach_code: TcxButton;
    cxButton4: TcxButton;
    btn_newnom: TcxButton;
    btn_refresh: TcxButton;
    grid_nnView1IS_PHOTO: TcxGridDBColumn;
    grid_nnView1PHOTO: TcxGridDBColumn;
    sb_edit_name: TSpeedButton;
    spb_looknames: TSpeedButton;
    aLookNames: TAction;
    ed_weight: TcxCurrencyEdit;
    ed_weight_dry: TcxCurrencyEdit;
    cb_new: TCheckBox;
    cb_start: TCheckBox;
    cb_end: TCheckBox;
    btnGenArt: TcxButton;
    aGenArt: TAction;
    Label2: TLabel;
    ed_holcodename: TcxTextEdit;
    Label1: TLabel;
    ed_hol_color: TcxTextEdit;
    imcb_units: TcxImageComboBox;
    Label3: TLabel;
    ed_kolvo_hol: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure EditFlChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure A_doneExecute(Sender: TObject);
    procedure A_cancelExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure text_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lookcombo_typePropertiesEditValueChanged(Sender: TObject);
    procedure color_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure aArtSearchExecute(Sender: TObject);
    procedure aCodeSearchExecute(Sender: TObject);
    procedure aLengthSearchExecute(Sender: TObject);
    procedure grid_nnView1DblClick(Sender: TObject);
    procedure grid_nnView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spb_add_typeClick(Sender: TObject);
    procedure spb_add_subtypeClick(Sender: TObject);
    procedure btn_refreshClick(Sender: TObject);
    procedure grid_nnView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure a_add_nomExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sb_edit_nameClick(Sender: TObject);
    procedure lookcombo_namePropertiesChange(Sender: TObject);
    procedure aLookNamesExecute(Sender: TObject);
    procedure aGenArtExecute(Sender: TObject);

  private
    { Private declarations }
    begin_fn_id, begin_fst_id: integer;
    LastFtIdx, LastFstIdx : Integer;
    ColIni : TIniFile;
    isAuto : boolean;
    function CheckSpecifications() : boolean;
    procedure RepaintAll;
    procedure RepaintCurrent(Sender: TObject);
  public
    op1, op2, op3, op4 : integer;
    path: string;
    procedure SetCombos();
    { Public declarations }
  end;

var
  NewNomForm: TNewNomForm;

implementation

uses Globals, DataModule, StrUtils, UEditForm, GetSpecValU, UFullInfo,
  UNamesChoise;

{$R *.dfm}

// Закрытие формы. Сохраняем таблички
procedure TNewNomForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions      := [];
  AStoreKey     := path + '/ini/NewNomenclature_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'NewNomenclature';
  grid_nnView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

// При открытии заполняем параметры
procedure TNewNomForm.FormShow(Sender: TObject);
VAR
  FT_ID, FST_ID, HT_ID : Integer;
  sql_str : String;
  FullMark, FullVal : String;
  TMP_MARK, TMP_VAL : String;
  ext : boolean;
  posM, posMO, posV, posVO : integer;
  LengthMarkContent : Variant;    // S20
  HeadMarkContent : Variant;      // S22
  HeadShrubMarkContent : Variant; // S25
  VD2MarkContent : Variant;       // VD2
  DiametrMarkContent : Variant;   // S01
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  LastFtIdx  := 0;
  LastFstIdx := 0;
  isAuto     := false;

  a_add_nom.Enabled       := true;
  grid_nn.Enabled         := true;
  text_find.Style.Color   := clWhite;

  color_find.EditValue    := 'поиск...';
  text_find.EditValue     := 'поиск...';

  LengthMarkContent       := NULL;
  SetCombos;  // Заполняем справочники

  if not DM.Nomenclature.Active then
  Begin
    DM.Nomenclature.Open;
  End;


  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/NewNomenclature_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'NewNomenclature';
  grid_nnView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);


  nnF_NAME_RU.DataBinding.Filter.Clear;
  grid_nnView1.DataController.Filter.Active := false;
  DM.Nomenclature.Filter   := '';
  DM.Nomenclature.Filtered := false;


  SpeedButton5.Enabled     := (dm.id_office = 1);
  A_add_country.Enabled    := (dm.id_office = 1);


// Читаем доп.коды -------------------------------------------------------------
  MarksVals.Strings.Clear;
  with DM.InvoiceAsIs do
  Begin
      if (FieldByName('MARKS_CONTENT').Value <> NULL) and (FieldByName('MARKS_NAMES').Value <> NULL) then
      Begin
          FullMark := trim(FieldByName('MARKS_NAMES').Value);
          FullVal := trim(FieldByName('MARKS_CONTENT').Value);
          ext := false;
          posMO := 1;
          posVO := 1;
          while not ext do
          Begin
              posM := PosEx('.',FullMark,posMO);

              if posM = 0 then
              Begin
                 TMP_MARK := MidStr(FullMark,posMO,Length(FullMark));
                 ext := true;
              End
              else
              Begin
                 TMP_MARK := MidStr(FullMark,posMO,posM-posMO);
                 posMO := posM + 1;
              End;

              posV := PosEx('.',FullVal,posVO);

              if posV = 0 then
              Begin
                 TMP_VAL := MidStr(FullVal,posVO,Length(FullVal));
                 ext := true;
              End
              else
              Begin
                 TMP_VAL := MidStr(FullVal,posVO,posV-posVO);
                 posVO := posV+1;
              End;

              MarksVals.InsertRow(TMP_MARK,TMP_VAL,true);
          End;
      End;
  End;
// -----------------------------------------------------------------------------






// Пытаемся определить название ------------------------------------------------
  with DM.SelQ do
  Begin
    SQL.Clear;
    SQL.Add('begin creator.nomenclature2_pkg.search_name(:p_dept, :p_hname, :p_hcode, :p_remaraks, :cursor_); end;');
    ParamByName('p_dept').Value     := CUR_DEPT_ID;
    ParamByName('p_hname').Value    := trim(DM.InvoiceAsIs.fieldByName('SHORT_NAME').AsString);
    ParamByName('p_hcode').Value    := trim(DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString);
    ParamByName('p_remaraks').Value := trim(DM.InvoiceAsIs.fieldByName('REMARKS').AsString);
    ParamByName('cursor_').AsCursor;
    Open;
    if recordcount = 0 then lookcombo_name.EditValue := -1
    else
    begin
      if (recordcount = 1) and (FieldByName('vid').AsInteger = 0) then
        lookcombo_name.EditValue := FieldByName('FN_ID').AsInteger
      else
      begin
        lookcombo_name.EditValue := -1;

        ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
        try
          isAuto := ColIni.ReadBool('auto_forma','value', false);
        finally
          ColIni.Free;
        end;

        // Если стоит признак показа формы, то покажем
        if isAuto then
        begin
          frmNamesChoise := TfrmNamesChoise.Create(Application);
          try
            frmNamesChoise.lbl_code_v.Caption := DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString;
            frmNamesChoise.lbl_name_v.Caption := DM.InvoiceAsIs.fieldByName('SHORT_NAME').AsString;
            frmNamesChoise.lbl_remarks_v.Caption := DM.InvoiceAsIs.fieldByName('REMARKS').AsString;
            first;
            frmNamesChoise.FlowerNames.FilterSQL := 'a.fn_id in (';
            while not eof do
            begin
              frmNamesChoise.FlowerNames.FilterSQL := frmNamesChoise.FlowerNames.FilterSQL + FieldByName('fn_id').AsString + ',';
              next;
            end;
            frmNamesChoise.FlowerNames.FilterSQL := frmNamesChoise.FlowerNames.FilterSQL + '0)';
            frmNamesChoise.FlowerNames.Filtered  := true;
            frmNamesChoise.FlowerNames.ParamByName('ID_DEPARTMENTS').AsInteger := CUR_DEPT_ID;
            frmNamesChoise.FlowerNames.Open;

            frmNamesChoise.lb_error.Caption := '';
            if (FieldByName('vid').AsInteger = 1) then frmNamesChoise.lb_error.Caption := 'Данные найдены но не в полном соответствии!';
            if (FieldByName('vid').AsInteger = 2) then frmNamesChoise.lb_error.Caption := 'Данные найдены но с другими кодами и ремарками!';
            if (FieldByName('vid').AsInteger = -1) then frmNamesChoise.lb_error.Caption := 'Необнаруженное соответствие!';

            if (frmNamesChoise.ShowModal = mrOk ) and (not frmNamesChoise.FlowerNames.IsEmpty) then
              lookcombo_name.EditValue := frmNamesChoise.FlowerNames.FieldByName('FN_ID').AsInteger
            else lookcombo_name.EditValue := -1;
          finally
            frmNamesChoise.Free;
          end;

        end; // if isAuto then

      end;
    end;

  End;
  begin_fn_id := lookcombo_name.EditValue;
  if ( pos('!!! Добавить перевод', lookcombo_name.EditText) > 0 ) then sb_edit_name.Visible := true else sb_edit_name.Visible := false;
// -----------------------------------------------------------------------------

// Если нашли название, то выберем уже существующие позиции для контроля -------
  if (DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString <> '') then
  begin
    nnH_CODE.DataBinding.AddToFilter(nil, foLike, trim(DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString)+'%');
    grid_nnView1.DataController.Filter.Active := True;
  end;
// -----------------------------------------------------------------------------

// Если нашли название, то выберем уже существующие позиции для контроля -------
  if (lookcombo_name.EditValue > 0) then
  begin
    nnF_NAME_RU.DataBinding.AddToFilter(nil, foEqual, trim(lookcombo_name.EditText));
    grid_nnView1.DataController.Filter.Active := True;
  end;
// -----------------------------------------------------------------------------




  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT nsi_units_id, nsi_name FROM nsi_units ORDER BY nsi_name');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_units, '');
  imcb_units.EditValue    := 11876791; //10131743;




// Пытаемся определить тип и подтип --------------------------------------------
  sql_str := 'SELECT FT_ID, FST_ID, HT_ID FROM FST_VIEW WHERE ID_DEPARTMENTS=:id_dep and (UPPER(HOL_SUB_TYPE) like UPPER(:HOL_SUB_TYPE) or UPPER(HOL_SUB_TYPE) = UPPER(:HOL_SUB_TYPE2))';
  with DM.SelQ do
  Begin
      SQL.Clear;
      SQL.Add(sql_str);
      ParamByName('id_dep').Value := CUR_DEPT_ID;
      ParamByName('HOL_SUB_TYPE').AsString  := '%'+VarToStr(cxDBVerticalGrid1HOL_SUB_TYPE.Properties.Value)+',%';
      ParamByName('HOL_SUB_TYPE2').AsString := VarToStr(cxDBVerticalGrid1HOL_SUB_TYPE.Properties.Value);
      Open;
      if not IsEmpty then
      Begin
          FT_ID  := FieldByName('FT_ID').AsInteger;
          FST_ID := FieldByName('FST_ID').AsInteger;
          HT_ID  :=  VarToInt(FieldByName('HT_ID').Value);
          lookcombo_type.EditValue := FT_ID;
          CDS_TYPE.Locate('FT_ID',FT_ID,[]);
          CDS_SUBTYPE.refresh;
          lookcombo_subtype.EditValue := FST_ID;
          ComboBoxEx1.EditValue := HT_ID;
      End
      else
      Begin
        lookcombo_type.EditValue    := -1;
        lookcombo_subtype.EditValue := -1;
        ComboBoxEx1.EditValue       := 0;
      End;
  End;
  begin_fst_id := lookcombo_subtype.EditValue;
// -----------------------------------------------------------------------------


// Найдем цвет, если нет у поставщика, то поставим срезу NA --------------------
  if (DM.InvoiceAsIs.FieldByName('HOL_COLOUR').IsNull) then
    lookcombo_color.EditValue := 1639
  else
  begin
    with DM.SelQ do
    Begin
      SQL.Clear;
      SQL.Add('SELECT COL_ID FROM H_COLOURS WHERE UPPER(HOL_COLOUR) = UPPER(:HOL_COLOUR)');
      ParamByName('HOL_COLOUR').Value := DM.InvoiceAsIs.FieldByName('HOL_COLOUR').Value;
      Open;
      if not IsEmpty then lookcombo_color.EditValue := FieldByName('COL_ID').Value
      else lookcombo_color.EditValue := -1;
    End;
  end;
// -----------------------------------------------------------------------------




  // Пытаемся определить параметры спецификаций
    // Длина S20
    LengthMarkContent    := DM.InvoiceAsIs.FieldByName('SPEC_LENGTH').Value;  // S20
    if LengthMarkContent <> NULL then
    begin
       ed_len.Text := VarToStr(LengthMarkContent);
       MarksVals.InsertRow('S20',VarToStr(LengthMarkContent),false);
    end;

    // Высота S00
    LengthMarkContent    := DM.InvoiceAsIs.FieldByName('spec_hight').Value;  // S02
    if LengthMarkContent <> NULL then
    begin
       ed_len.Text := VarToStr(LengthMarkContent);
       MarksVals.InsertRow('S02',VarToStr(LengthMarkContent),false);
    end;

    DiametrMarkContent   := DM.InvoiceAsIs.FieldByName('SPEC_WIDTH').Value;  // S01
    if DiametrMarkContent <> NULL then
    begin
       ed_diametr.Text := VarToStr(DiametrMarkContent);
       MarksVals.InsertRow('S01',VarToStr(DiametrMarkContent),false);
    end;

    HeadMarkContent      := DM.InvoiceAsIs.FieldByName('SPEC_HEADS').Value;  // S22
    if HeadMarkContent <> NULL then
       MarksVals.InsertRow('S22',VarToStr(HeadMarkContent),true);

    HeadShrubMarkContent := DM.InvoiceAsIs.FieldByName('SPEC_HEADS_SHRUB').Value;  // S25
    if HeadShrubMarkContent <> NULL then
       MarksVals.InsertRow('S25',VarToStr(HeadShrubMarkContent),true);

    VD2MarkContent       := DM.InvoiceAsIs.FieldByName('SPEC_VD2').Value;  // VD2
    if VD2MarkContent <> NULL then
       MarksVals.InsertRow('VD2',VarToStr(VD2MarkContent),true);
  // ---------------------------------------------------------------------------

{
  //Пытаемчя определить VBN
  if ( ( Length(ed_art.Text) = 7 ) and ( ed_art.Text[1] = '9' ) ) then
    vbn_box.Checked := false
  else
    vbn_box.Checked := true;
}

  ed_kolvo.Clear;
  if (trim(ed_kolvo.Text) = '') then
  begin
    if DM.InvoiceAsIsNOM_PACK.AsInteger > 0  then
       ed_kolvo.Text := DM.InvoiceAsIsNOM_PACK.AsString
    else
    begin
      if (fst_view.Locate('fst_id', lookcombo_subtype.EditValue, []) = true)
      then ed_kolvo.Text := fst_viewQUANT.AsString;
    end;
  end;
  if (trim(ed_kolvo.Text) = '') then ed_kolvo.Text := '1';


  ed_hol_color.EditValue       := DM.InvoiceAsIsHOL_COLOUR.AsString;
  ed_holcodename.EditValue     := DM.InvoiceAsIsSHORT_CODE.AsString;

  // 2014-06-21 Теперь будем генерировать артикул
  //ed_art.Text       := DM.InvoiceAsIsSKU.AsString;
  aGenArt.Execute;

  ed_full_name.Text := DM.InvoiceAsIsDESCRIPTION.AsString;
  ed_barcode.Text   := DM.InvoiceAsIs.FieldByName('BAR_CODE').AsString;


  cb_new.Checked   := (DM.InvoiceAsIs.FieldByName('NOM_NEW').AsInteger > 0);
  cb_start.Checked := (DM.InvoiceAsIs.FieldByName('NOM_START').AsInteger > 0);
  cb_end.Checked   := (DM.InvoiceAsIs.FieldByName('NOM_END').AsInteger > 0);


  ed_weight.Clear;
  ed_weight_dry.Clear;
  ed_weight.EditValue   := DM.InvoiceAsIs.FieldByName('VOLUME').AsFloat;
  ed_weight_dry.EditValue   := DM.InvoiceAsIs.FieldByName('VOLDRY').AsFloat;

  ed_coef.Text := '1';

  RepaintAll;
end;

// Подкрасим незаполненные значения
procedure TNewNomForm.RepaintAll;
begin
  RepaintCurrent(lookcombo_name);
  RepaintCurrent(lookcombo_subtype);
  RepaintCurrent(lookcombo_suplier);
  RepaintCurrent(lookcombo_country);
  RepaintCurrent(lookcombo_color);

  if ed_art.Text <> '' then
    ed_art.Color := clWindow
  else
    ed_art.Color := $00D7D7FF;
  if ed_full_name.Text <> '' then
    ed_full_name.Color := clWindow
  else
    ed_full_name.Color := $00D7D7FF;
  if ed_kolvo.Text <> '' then
    ed_kolvo.Color := clWindow
  else
    ed_kolvo.Color := $00D7D7FF;
end;

procedure TNewNomForm.RepaintCurrent(Sender: TObject);
begin
  if (Sender as TcxLookupComboBox).EditValue > 0 then
    (Sender as TcxLookupComboBox).style.Color := clWindow
  else
    (Sender as TcxLookupComboBox).style.Color := $00D7D7FF;
end;

// Поднятие формы с поиском похожих названий
procedure TNewNomForm.aLookNamesExecute(Sender: TObject);
begin
  with DM.SelQ do
  Begin
    SQL.Clear;
    SQL.Add('begin creator.nomenclature2_pkg.search_name(:p_dept, :p_hname, :p_hcode, :p_remaraks, :cursor_); end;');
    ParamByName('p_dept').Value     := CUR_DEPT_ID;
    ParamByName('p_hname').Value    := trim(DM.InvoiceAsIs.fieldByName('SHORT_NAME').AsString);
    ParamByName('p_hcode').Value    := trim(DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString);
    ParamByName('p_remaraks').Value := trim(DM.InvoiceAsIs.fieldByName('REMARKS').AsString);
    ParamByName('cursor_').AsCursor;
    Open;
    if recordcount = 0 then lookcombo_name.EditValue := -1
    else
    begin
      if (recordcount = 1) and (FieldByName('vid').AsInteger = 0) then
        lookcombo_name.EditValue := FieldByName('FN_ID').AsInteger
      else
      begin

          frmNamesChoise := TfrmNamesChoise.Create(Application);
          try
            frmNamesChoise.lbl_code_v.Caption := DM.InvoiceAsIs.fieldByName('SHORT_CODE').AsString;
            frmNamesChoise.lbl_name_v.Caption := DM.InvoiceAsIs.fieldByName('SHORT_NAME').AsString;
            frmNamesChoise.lbl_remarks_v.Caption := DM.InvoiceAsIs.fieldByName('REMARKS').AsString;
            first;
            frmNamesChoise.FlowerNames.FilterSQL := 'a.fn_id in (';
            while not eof do
            begin
              frmNamesChoise.FlowerNames.FilterSQL := frmNamesChoise.FlowerNames.FilterSQL + FieldByName('fn_id').AsString + ',';
              next;
            end;
            frmNamesChoise.FlowerNames.FilterSQL := frmNamesChoise.FlowerNames.FilterSQL + '0)';
            frmNamesChoise.FlowerNames.Filtered  := true;
            frmNamesChoise.FlowerNames.ParamByName('ID_DEPARTMENTS').AsInteger := CUR_DEPT_ID;
            frmNamesChoise.FlowerNames.Open;

            frmNamesChoise.lb_error.Caption := '';
            if (FieldByName('vid').AsInteger = 1) then frmNamesChoise.lb_error.Caption := 'Данные найдены но не в полном соответствии!';
            if (FieldByName('vid').AsInteger = 2) then frmNamesChoise.lb_error.Caption := 'Данные найдены но с другими кодами и ремарками!';
            if (FieldByName('vid').AsInteger = -1) then frmNamesChoise.lb_error.Caption := 'Необнаруженное соответствие!';

            if (frmNamesChoise.ShowModal = mrOk ) and (not frmNamesChoise.FlowerNames.IsEmpty) then
              lookcombo_name.EditValue := frmNamesChoise.FlowerNames.FieldByName('FN_ID').AsInteger
            else lookcombo_name.EditValue := -1;
          finally
            frmNamesChoise.Free;
          end;

      end;
    end;
  End;
end;




procedure TNewNomForm.lookcombo_namePropertiesChange(Sender: TObject);
begin
  if ( pos('!!! Добавить перевод', lookcombo_name.EditText) > 0 ) then sb_edit_name.Visible := true else sb_edit_name.Visible := false;
end;


//
//  Добавляем новую номенклатуру
//
procedure TNewNomForm.a_add_nomExecute(Sender: TObject);
VAR
  FN_ID, FST_ID, S_ID, C_ID, COL_ID, N_ID, FNT_ID, N_NEW, N_START, N_END: integer;
  H_CODE, H_NAME, BAR_CODE, LEN, PACK, HOL_TYPE, WEIGHT, WEIGHT_DRY, DIAMETER, CUST_COEF, H_COL, TNVED, NAME_CODE_OLD, COLOR_OLD, PACK_HOL : Variant;
  VBN : Integer;
  i : integer;
  MARK_N, MARK_V, sql_str : String;
begin
  if not CheckSpecifications then
  Begin
      ShowMessage('Необходимо ввести перевод спецификаций и их значения!');
      Exit;
  End;

  btn_newnom.SetFocus;

  if ((lookcombo_name.ItemIndex < 0)    or (lookcombo_name.EditText = '')) then begin MessageBox(Handle,'Необходимо указать название','Внимание',MB_ICONWARNING); abort; end;
  if ((lookcombo_subtype.ItemIndex < 0) or (lookcombo_subtype.EditText = '')) then begin MessageBox(Handle,'Необходимо указать подтип','Внимание',MB_ICONWARNING); abort; end;
  if ((lookcombo_country.ItemIndex < 0) or (lookcombo_country.EditText = '')) then begin MessageBox(Handle,'Необходимо указать страну','Внимание',MB_ICONWARNING); abort; end;
  if ((lookcombo_suplier.ItemIndex < 0) or (lookcombo_suplier.EditText = '')) then begin MessageBox(Handle,'Необходимо указать поставщика','Внимание',MB_ICONWARNING); abort; end;
  if ((lookcombo_color.ItemIndex < 0)   or (lookcombo_color.EditText = '')) then begin MessageBox(Handle,'Необходимо указать цвет','Внимание',MB_ICONWARNING); abort; end;


  FN_ID :=  lookcombo_name.EditValue; // ReadComboEx(ComboBoxEx7);
  N_ID  := 0;

  LastFtIdx := lookcombo_type.EditValue;
  FST_ID    := lookcombo_subtype.EditValue;
  LastFstIdx := lookcombo_subtype.EditValue;
  S_ID      := lookcombo_suplier.EditValue;
  C_ID      := lookcombo_country.EditValue;
  COL_ID    := lookcombo_color.EditValue;

  ed_hol_color.PostEditValue;
  ed_holcodename.PostEditValue;
  COLOR_OLD     := ed_hol_color.EditValue;
  NAME_CODE_OLD := ed_holcodename.EditValue;



  H_COL  := cxDBVerticalGrid1HOL_COLOUR.Properties.Value; // StrToVar(DBEdit4.Text);

  if H_COL <> null then
  begin
    with Dm.SelQ do //Соотносим перевод с цветом
    Begin
        Close;
        SQL.Clear;
        SQL.Add('begin NOMENCLATURE_PKG.INSERT_H_COLOUR(:IN_COL_ID, :IN_HOL_COLOUR, :IN_ID_); end;');
        ParamByName('IN_COL_ID').AsInteger    := COL_ID;
        ParamByName('IN_HOL_COLOUR').AsString := H_COL;
        ParamByName('IN_ID_').AsInteger       := 0;
        Execute;
    End;
  end;


  // Добавим подтип поставщика к выбранному нашему
  if (begin_fst_id <> FST_ID) and (DM.InvoiceAsIsHOL_SUB_TYPE.AsString <> '') then
  begin
    with Dm.SelQ do //Соотносим перевод с цветом
    Begin
        Close;
        SQL.Clear;
        sql_str := 'begin creator.NOMENCLATURE2_PKG.append_hol_sub_type(:v_hol_sub_type, :v_fst_id); end;';
        //sql_str := 'update flower_subtypes set HOL_SUB_TYPE=HOL_SUB_TYPE||'''+DM.InvoiceAsIsHOL_SUB_TYPE.AsString+','' where fst_id='+IntToStr(FST_ID);
        SQL.Add(sql_str);
        ParamByName('v_hol_sub_type').AsString := DM.InvoiceAsIsHOL_SUB_TYPE.AsString;
        ParamByName('v_fst_id').AsInteger      := FST_ID;
        Execute;
    End;
  end;

  // Добавим подтип поставщика к выбранному нашему
  if (begin_fn_id = -1) and (begin_fn_id <> FN_ID) and (DM.InvoiceAsIsHOL_SUB_TYPE.AsString <> '') then
  begin
    FNT_ID := EditTransName(DM.StorProc, CDS_FLOWERS, 0
          , DM.InvoiceAsIsSHORT_NAME.AsString
          , CUR_DEPT_ID
          , FN_ID
          , DM.InvoiceAsIsSHORT_CODE.AsString
          , DM.InvoiceAsIsREMARKS.AsString
        );
  end;


  H_CODE    := StrToVar(ed_art.Text);
  H_NAME    := StrToVar(ed_full_name.Text);
  BAR_CODE  := StrToVar(ed_barcode.Text);

  LEN       := StrToVarFloat(ed_len.Text);
  PACK      := StrToVarFloat(ed_kolvo.Text);
  PACK_HOL  := StrToVarFloat(ed_kolvo_hol.Text);
  if PACK_HOL = 0 then PACK_HOL := PACK;
//  WEIGHT    := StrToVarFloat(ed_weight.Text);
  WEIGHT    := ed_weight.EditValue;
  WEIGHT_DRY := ed_weight_dry.EditValue;
  DIAMETER  := StrToVarFloat(ed_diametr.Text);
  CUST_COEF := StrToVarFloat(ed_coef.Text);
  TNVED     := '';

  N_NEW     := BoolToInt(cb_new.Checked);
  N_START   := BoolToInt(cb_start.Checked);
  N_END     := BoolToInt(cb_end.Checked);

  VBN       := imcb_units.EditValue;
//  if vbn_box.Checked then VBN := 1
//                     else VBN := 0;

  with ComboBoxEx1 do HOL_TYPE := ComboBoxEx1.EditText; // StrToVar(items[itemindex]);;

  // Проверяем бар-код на уникальность
  with DM.SelQ do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('begin NOMENCLATURE_PKG.BAR_CODE_EXIST(:IN_BAR_CODE, :IN_ID_); end;');
    ParamByName('IN_BAR_CODE').Value := BAR_CODE;
    ParamByName('IN_ID_').AsInteger     := 0;
    Execute;
    if ParamByName('IN_ID_').Value = 1 then
    Begin
      MessageBox(Handle, 'Такой внешний штрих-код уже есть в БД!', 'Внимание', MB_ICONWARNING);
      BAR_CODE := NULL;
    End;
  End;

  // Добавляем номенклатуру и ее спецификации
  try
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;

      SQL.Add('begin NOMENCLATURE_PKG.EDIT_NOM(:N_ID_, :FN_ID_, :FST_ID_, :S_ID_, :C_ID_, :H_CODE_, :H_NAME_, :LEN_, :PACK_, :COL_ID_, :VBN_, :HOL_TYPE_, :WEIGHT_, :WEIGHTDRY_, :DIAMETER_, :BAR_CODE_, :CUST_COEF_, :REMARKS_, :IN_ID_, :PHOTO_');
      SQL.Add(', :code_, :noprint_, :notuse_, :vTnVed, :nom_new_, :nom_start_, :nom_end_, :name_code_, :hol_color_, :hol_pack_, :OUT_TEXT); end;');
      ParamByName('N_ID_').AsInteger    := -1;
      ParamByName('FN_ID_').AsInteger   := FN_ID;
      ParamByName('FST_ID_').AsInteger  := FST_ID;
      ParamByName('S_ID_').AsInteger    := S_ID;
      ParamByName('C_ID_').AsInteger    := C_ID;
      ParamByName('H_CODE_').Value      := H_CODE;
      ParamByName('H_NAME_').Value      := H_NAME;
      ParamByName('LEN_').Value         := LEN;
      ParamByName('PACK_').Value        := PACK;
      ParamByName('COL_ID_').Value      := COL_ID;
      ParamByName('VBN_').Value         := VBN;
      ParamByName('HOL_TYPE_').AsString := HOL_TYPE;
      ParamByName('WEIGHT_').Value      := WEIGHT;
      ParamByName('WEIGHTDRY_').Value   := WEIGHT_DRY;
      ParamByName('DIAMETER_').Value    := DIAMETER;
      ParamByName('BAR_CODE_').Value    := BAR_CODE;
      ParamByName('CUST_COEF_').Value   := CUST_COEF;
      ParamByName('REMARKS_').Value     := DM.InvoiceAsIs.FieldByName('REMARKS').Value;
      ParamByName('IN_ID_').AsInteger   := 0;
      ParamByName('PHOTO_').AsString    := ''; //VarToStr(edit_file.EditValue);
      ParamByName('code_').Value        := ''; //PHOTO;
      ParamByName('noprint_').Value     := 0;
      ParamByName('notuse_').Value      := 0;
      ParamByName('vTnVed').Value       := TNVED;

      ParamByName('nom_new_').AsInteger     := N_NEW;
      ParamByName('nom_start_').AsInteger   := N_START;
      ParamByName('nom_end_').AsInteger     := N_END;

      ParamByName('name_code_').Value := NAME_CODE_OLD;
      ParamByName('hol_color_').Value := COLOR_OLD;
      ParamByName('hol_pack_').Value  := PACK_HOL;

      ParamByName('OUT_TEXT').AsString  := '';
      Execute;


      // Если не добавляем новую позицию, то ругаемся
      if ParamByName('IN_ID_').Value < 1 then
        MessageBox(Handle, PChar(ParamByName('out_text').AsString), 'Внимание', MB_ICONWARNING)
      else
      // Если добавляем новую позицию, то добавляем спецификации
      begin
        N_ID := ParamByName('IN_ID_').Value;
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('begin invoice_pkg.ADD_SPEC_TO_NEW_NOM(:SPEC_CODE_, :N_ID_, :HS_VAL_, :ORD_, :text_str); end;');

        for i := 1 to MarksVals.Strings.Count do
        Begin
           MARK_N := MarksVals.Keys[i];
           MARK_V := MarksVals.Values[MARK_N];
           DM.SelQ.ParamByName('SPEC_CODE_').AsString  := MARK_N;
           DM.SelQ.ParamByName('N_ID_').AsInteger      := N_ID;
           DM.SelQ.ParamByName('HS_VAL_').AsString     := MARK_V;
           DM.SelQ.ParamByName('ORD_').AsInteger       := i;
           DM.SelQ.ParamByName('text_str').AsString    := '';
           DM.SelQ.Execute;

           // Если не добавляем новую позицию, то ругаемся
           if ParamByName('text_str').Value <> '' then
              MessageBox(Handle, PChar(ParamByName('text_str').AsString), 'Внимание', MB_ICONWARNING)

        End; // for i := 1 to MarksVals.Strings.Count do
      end;
    End;

  Except on E:Exception do
    MessageBox(Handle, PChar('Произошла ошибка!  ' + E.Message), 'Ошибка', MB_ICONERROR);
  end;

  DM.InvoiceAsIs.Edit;
  DM.InvoiceAsIsSKU.AsString := ed_art.Text;
  DM.InvoiceAsIsSHORT_CODE.AsString := CDS_FLOWERSNAME_CODE.AsString;
  if ed_kolvo.Text = '' then ed_kolvo.Text := '0';
  DM.InvoiceAsIsNOM_PACK.AsInteger := StrToInt(ed_kolvo.Text);
  DM.InvoiceAsIs.Post;

  screen.Cursor := crHourGlass;
  DM.Nomenclature.Refresh;
  DM.Nomenclature.Locate('N_ID',N_ID,[]);
  screen.Cursor := crDefault;
  lookcombo_name.SetFocus;
  ModalResult := mrOk;
end;


//
//  Выбераем текущую номенклатуру как эталон для распознания
//
procedure TNewNomForm.N1Click(Sender: TObject);
begin
  CDS_FLOWERS.Filter   := '';
  CDS_FLOWERS.Filtered := false;
  CDS_COLOR.Filter     := '';
  CDS_COLOR.Filtered   := false;

  DM.SeekNomenclature.MasterSource := nil;
  DM.SeekNomenclature.Close;
  DM.SeekNomenclature.SQL.Clear;
  DM.SeekNomenclature.SQL.Add('SELECT COMPILED_NAME, FULL_NAME, F_NAME, F_NAME_RU, F_SUB_TYPE, F_TYPE, ID_DEPARTMENTS, DEPT, FT_ID, HOL_SUB_TYPE, HOL_TYPE, SUB_WEIGHT, HT_ID, N_ID, FN_ID ');
  DM.SeekNomenclature.SQL.Add(' , FST_ID, S_ID, C_ID, COL_ID, H_CODE, H_NAME, CODE, LEN, PACK, DIAMETER, VBN, WEIGHT, REMARKS, S_NAME_RU, BAR_CODE, CUST_COEF, PHOTO, IS_PHOTO ');
  DM.SeekNomenclature.SQL.Add(' , COLOUR, COUNTRY, TYPE_SUBTYPE, GREAT_NAME, GREAT_NAME_F, NAME_CODE FROM NOMENCLATURE_MAT_VIEW WHERE N_ID=:ID and id_office=const_office');
  DM.SeekNomenclature.ParamByName('ID').Value         := DM.NomenclatureN_ID.AsInteger;
  DM.SeekNomenclature.Open;

  a_add_nom.Enabled  := false;
  grid_nn.Enabled     := false;
end;


// Edit FlowerNames
procedure TNewNomForm.sb_edit_nameClick(Sender: TObject);
VAR FN_ID, FNT_ID, OutText : Variant;
    OldName: Variant;
begin
  if (CDS_FLOWERS.RecordCount = 0) then exit;

  OldName := CDS_FLOWERS.FieldByName('F_NAME_RU').Value;
  FN_ID   := CDS_FLOWERS.FieldByName('FN_ID').Value;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 0;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.cxGroupBox1.Visible            := false;
    frm_editform.Edit_eng_name.EditValue        := '';
    frm_editform.edit_code.EditValue            := '';
    frm_editform.edit_remarks.EditValue         := '';
    frm_editform.Edit_name.EditValue            := OldName;

    if (frm_editform.ShowModal = mrOk) then
    begin
      FN_ID := EditRusName(DM.StorProc, CDS_FLOWERS, FN_ID, frm_editform.Edit_name.EditValue, CUR_DEPT_ID);
      CDS_FLOWERS.RefreshRecord;
//      CDS_FLOWERS.Locate('FN_ID',FN_ID,[]);
//      lookcombo_name.EditValue := FN_ID;
    end;
    frm_editform.Free;
    lookcombo_type.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;

//
//  New FlowerNames
//
procedure TNewNomForm.SpeedButton1Click(Sender: TObject);
VAR FN_ID, FNT_ID, OutText : Variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 0;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.Edit_eng_name.EditValue        := cxDBVerticalGrid1SHORT_NAME.Properties.Value;
    frm_editform.edit_code.EditValue            := cxDBVerticalGrid1SHORT_CODE.Properties.Value;
    frm_editform.edit_remarks.EditValue         := cxDBVerticalGrid1REMARKS.Properties.Value;
    if (frm_editform.ShowModal = mrOk) then
    begin
      FN_ID := EditRusName(DM.StorProc, CDS_FLOWERS, 0, frm_editform.Edit_name.EditValue, CUR_DEPT_ID);

      if ( length(frm_editform.Edit_eng_name.EditingText) > 0 ) then
      begin
        FNT_ID := EditTransName(DM.StorProc, CDS_FLOWERS, 0
          , VarToStr(frm_editform.Edit_eng_name.EditValue)
          , CUR_DEPT_ID
          , FN_ID
          , VarToStr(frm_editform.edit_code.EditValue)
          , VarToStr(frm_editform.edit_remarks.EditValue)
        );
      end;
      CDS_FLOWERS.Refresh;
      CDS_FLOWERS.Locate('FN_ID',FN_ID,[]);
      lookcombo_name.EditValue := FN_ID;
    end;
    frm_editform.Free;
    lookcombo_type.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;



























// Добавим тип
//
//  Нет смысла добавлять, т.к. отображаются только типы имеюшие подтипы.
//
procedure TNewNomForm.spb_add_typeClick(Sender: TObject);
VAR ID, OutText : Variant;
begin
{
  try
    frm_editform                                := Tfrm_editform.Create(Application);
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 4;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, frm_editform.imcb_holtype, '');
    frm_editform.imcb_holtype.EditValue         := 0;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := 0;
        ParamByName('NAME_').Value  := frm_editform.edit_type.EditValue;
        ParamByName('FNT_ID').Value := frm_editform.imcb_holtype.EditValue;
        ParamByName('what_').Value  := 0;
        ParamByName('where_').Value := 2;
        ParamByName('dep_').Value   := CUR_DEPT_ID;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          CDS_TYPE.Refresh;
          CDS_TYPE.Locate('ft_id',ID,[]);
          lookcombo_type.EditValue := ID;
      End;
    end;

    frm_editform.Free;
    lookcombo_type.SetFocus;
  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
}  
end;


// Добавим подтип
//
procedure TNewNomForm.spb_add_subtypeClick(Sender: TObject);
VAR ID, OutText : Variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 5;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.edit_sub_eng.EditValue         := DM.InvoiceAsIsHOL_SUB_TYPE.AsString;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_SUBTYPES';
        Prepare;
        ParamByName('S_NAME_RU_').Value     := frm_editform.edit_subtype.EditValue;
        ParamByName('FT_ID_').Value         := CDS_TYPE.FindField('FT_ID').Value;
        ParamByName('HOL_SUB_TYPE_').Value  := frm_editform.edit_sub_eng.EditValue;
        ParamByName('MNEMO_').Value         := frm_editform.edit_subshort.EditValue;
        ParamByName('wight_').Value         := frm_editform.edit_weight.EditValue;
        ParamByName('prefix_').Value        := frm_editform.edit_subprefix.EditValue;
        ParamByName('in_id_').Value         := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          CDS_SUBTYPE.Refresh;
          CDS_SUBTYPE.Locate('fst_id',ID,[]);
          lookcombo_subtype.EditValue := ID;
      End;
    end;

    frm_editform.Free;
    lookcombo_subtype.SetFocus;
  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;


//
//  Покрасим грид
//
procedure TNewNomForm.grid_nnView1CustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  str_tmp : variant;
begin
  if not AViewInfo.Selected and (grid_nnView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'QUANTITY') then
  begin
    // Красим отправленные на склад
    str_tmp := grid_nnView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_nnView1.GetColumnByFieldName('QUANTITY').Index
                );

    if (str_tmp > 1) then
      ACanvas.Brush.Color := TColor($00F8E3D1);
  end;
end;


//
//  Просмотр полной информации по номенклатуре
//
procedure TNewNomForm.grid_nnView1DblClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_nnView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
end;


procedure TNewNomForm.grid_nnView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_nnView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
  end;
end;






//
//  Заполняем справочники
//
procedure TNewNomForm.SetCombos();
Begin
  text_find.Text := 'поиск...';

  CDS_FLOWERS.Close;
  CDS_FLOWERS.Filter := '';
  CDS_FLOWERS.Filtered := false;
  CDS_FLOWERS.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_FLOWERS.Open;
  lookcombo_name.EditValue := 0;

  CDS_TYPE.Close;
  CDS_TYPE.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_TYPE.Open;
  CDS_SUBTYPE.Open;

  CDS_SUPPLIER.Close;
  CDS_SUPPLIER.Open;
  lookcombo_suplier.EditValue := DEF_SUPPLIER_ID;

  CDS_COUNTRY.Close;
  CDS_COUNTRY.Open;
  lookcombo_country.EditValue := DEF_COUNTRY_ID;

  CDS_COLOR.Close;
  CDS_COLOR.Filter := '';
  CDS_COLOR.Filtered := false;
  CDS_COLOR.Open;
  lookcombo_color.EditValue := 0;

  fst_view.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
  fst_view.Open;

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT HT_ID,HOL_TYPE FROM HOL_TYPES WHERE ACTIVE=1 ORDER BY ORD');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, ComboBoxEx1, '');
  DM.SelQ.Close;
End;


//
//  New Supplier
//
procedure TNewNomForm.SpeedButton4Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 3;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    DM.CDS_COUNTRY2.Open;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_SUPPLIERS';
        Prepare;
        ParamByName('S_NAME_RU_').Value   := frm_editform.edit_suplier.EditValue;
        ParamByName('C_ID_').Value        := frm_editform.cb_suplier_c.EditValue;
        ParamByName('NEED_CUST_').Value   := frm_editform.cb_suplier.EditValue;
        ParamByName('in_id_').Value       := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          CDS_SUPPLIER.Refresh;
          CDS_SUPPLIER.Locate('S_ID',ID,[]);
          lookcombo_suplier.EditValue := ID;
      End;
    end;

    DM.CDS_COUNTRY2.Close;
    lookcombo_country.SetFocus;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  New Country
//
procedure TNewNomForm.SpeedButton5Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 2;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin

      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := 0;
        ParamByName('NAME_').Value  := frm_editform.edit_country.EditValue;
        ParamByName('NAME2_').Value := frm_editform.edit_country_eng.EditValue;
        ParamByName('mnemo_').Value := frm_editform.edit_country_code.EditValue;
        ParamByName('FNT_ID').Value := 0;
        ParamByName('what_').Value  := 0;
        ParamByName('where_').Value := 0;
        ParamByName('dep_').Value   := 0;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          CDS_COUNTRY.Refresh;
          CDS_COUNTRY.Locate('C_ID',ID,[]);
          lookcombo_country.EditValue := ID;
      End;
    end;

    color_find.SetFocus;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
// New Colour
//
procedure TNewNomForm.SpeedButton6Click(Sender: TObject);
var id : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 7;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_COLOUR';
        Prepare;
        ParamByName('IN_COLOUR').Value     := frm_editform.edit_color.EditValue;
        ParamByName('in_id_').Value         := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, 'Запрос не выполнился', 'Ошибка', MB_ICONWARNING)
      else
      Begin
          CDS_COLOR.Refresh;
          CDS_COLOR.Locate('COL_ID',ID,[]);
          lookcombo_color.EditValue := ID;
      End;
    end;

    ed_art.SetFocus;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  Проверяем перевод у спецификации
//
function TNewNomForm.CheckSpecifications() : boolean;
var
  i : integer;
  MARK_N, MARK_V : String;
  HS_ID,NT : Integer;
  SPEC_NAME : Variant;
id, OutText : variant;
Begin
  result := false;
  for i := 1 to MarksVals.Strings.Count do
    Begin
      MARK_N := MarksVals.Keys[i];
      MARK_V := MarksVals.Values[MARK_N];

      with Dm.SelQ do
      Begin
        // Находим спецификацию
        Close;
        SQL.Clear;
        SQL.Add('begin invoice_pkg.NEED_TRANSLATION_SPEC(:SPEC_CODE_, :cursor_); end;');
        ParamByName('SPEC_CODE_').AsString := MARK_N;
        ParamByName('cursor_').AsCursor;
        Open;

        if IsEmpty or (RecordCount > 1) then
        Begin
            MessageBox(Handle, PChar('У данного параметра нет голландского перевода или найдены несколько переводов!'#13'Операция невозможна!' + MARK_N), 'Внимание', MB_ICONWARNING);
            Exit;
        End
        else
        begin
          HS_ID := FieldByName('HS_ID').Value;
          NT := FieldByName('NT').Value;
          SPEC_NAME := FieldByName('SPEC_NAME').Value;

          // Если нужен перевод то продолжаем
          if NT = 0 then Continue;

            Close;
            SQL.Clear;
            SQL.Add('begin invoice_pkg.GET_SPECIFICATION_CONTENT(:HS_ID_, :CONTENT_HOL_, :cursor_); end;');
            ParamByName('HS_ID_').Value := HS_ID;
            ParamByName('CONTENT_HOL_').Value := MARK_V;
            ParamByName('cursor_').AsCursor;
            Open;

            if not IsEmpty then Continue;

            if (MARK_V = '') then
            begin
              MessageBox(Handle, 'Введите перевод!', 'Внимание', MB_ICONWARNING);
              exit;
            end;

            // Открываем форму для перевода спецификации
            try
              frm_editform                                := Tfrm_editform.Create(Application);
              frm_editform.cxPageControl1.HideTabs        := true;
              frm_editform.cxPageControl1.ActivePageIndex := 9;
              frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
              frm_editform.edit_spec_trans_lat.EditValue  := MARK_V;
              id :=  HS_ID;

              if (frm_editform.ShowModal = mrOk) then
              begin
                with DM.StorProc do
                Begin
                  StoredProcName := 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC';
                  Prepare;
                  ParamByName('SC_ID_').Value := -1;
                  ParamByName('HS_ID_').Value := ID;
                  ParamByName('CONTENT_HOL_').Value := frm_editform.edit_spec_trans_lat.EditValue;
                  ParamByName('CONTENT_RUS_').Value := frm_editform.edit_spec_trans.EditValue;
                  ParamByName('in_id_').Value := 0;
                  ExecProc;
                  ID := ParamByName('in_id_').Value;
                  OutText := ParamByName('OUT_TEXT').Value;

                  IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING);
                End;
              end;

              Except on E:Exception do
                begin
                  MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
                  Exit;
                end;
              end;
        End;  // if IsEmpty or (RecordCount > 1) then
     End;  // with Dm.StorProc do

    End;
  result := true;
End;


//
//  Обновить
//
procedure TNewNomForm.btn_refreshClick(Sender: TObject);
begin
  SetCombos();
end;

//
//  Проверяем перевод спецификации
//
procedure TNewNomForm.BitBtn4Click(Sender: TObject);
begin
  CheckSpecifications;
  MarksVals.SetFocus;
end;


//
// функция проверяет введённое значение на соответствие типу
//
procedure TNewNomForm.EditFlChange(Sender: TObject);
begin
  CheckTEditContentFloat(Sender,clWindow,clRed);
  RepaintAll;
end;


//
//  Добавляем спецификацию из списка
//
procedure TNewNomForm.SpeedButton3Click(Sender: TObject);
var
  SpecCode, SpecValue : Variant;
begin
  GetSpecValF := TGetSpecValF.Create(Application);
  if GetSpecVal(SpecCode,SpecValue) = mrOk  then
    Begin
      MarksVals.InsertRow(SpecCode,SpecValue,false)
    End;
  MarksVals.SetFocus;
end;


//
//  Удаляем спецификацию из списка
//
procedure TNewNomForm.SpeedButton7Click(Sender: TObject);
begin
  MarksVals.DeleteRow(MarksVals.Row);
  MarksVals.SetFocus;
end;


//
// Нажимаем CTRL+ENTER
//
procedure TNewNomForm.A_doneExecute(Sender: TObject);
begin
  BitBtn2.SetFocus;
  ModalResult := mrOk;
end;

//
// Нажимаем CTRL+ESC
//
procedure TNewNomForm.A_cancelExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

//
//  Поиск по названию
//
procedure TNewNomForm.SpeedButton8Click(Sender: TObject);
begin
  text_find.Style.Color := clWhite;

  if CDS_FLOWERS.Active = true then
  begin
    if (Length(text_find.Text) > 0) then
    begin
      CDS_FLOWERS.Filter := 'F_NAME_RU = ''*' + text_find.Text + '*''';
      CDS_FLOWERS.Filtered := true;
      if CDS_FLOWERS.RecordCount = 0 then
        text_find.Style.Color := clRed
      else
        lookcombo_name.ItemIndex := 0;
    end
    else
    begin
      CDS_FLOWERS.Filter   := '';
      CDS_FLOWERS.Filtered := false;
    end;
  end;
end;


procedure TNewNomForm.text_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then SpeedButton8Click(Sender);
end;


procedure TNewNomForm.lookcombo_typePropertiesEditValueChanged(
  Sender: TObject);
begin
  if CDS_SUBTYPE.RecordCount > 0 then
    lookcombo_subtype.ItemIndex := 0;
end;


//
//  Поиск в цвете
//
procedure TNewNomForm.color_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then SpeedButton9Click(Sender);
end;


//
//  Копирование файла в папку
//
procedure TNewNomForm.SpeedButton9Click(Sender: TObject);
begin
  color_find.Style.Color := clWhite;
  if CDS_COLOR.Active = true then
  begin
    if (Length(color_find.Text) > 0) then
    begin
      CDS_COLOR.Filter := 'COLOUR = ''*' + color_find.Text + '*''';
      CDS_COLOR.Filtered := true;
      if CDS_COLOR.RecordCount = 0 then
        color_find.Style.Color := clRed
      else
        lookcombo_color.ItemIndex := 0;
    end
    else
    begin
      CDS_COLOR.Filter   := '';
      CDS_COLOR.Filtered := false;
    end;
  end;
end;


//
//  Поиск номенклатур по штрих-коду
//
procedure TNewNomForm.aCodeSearchExecute(Sender: TObject);
begin
  if ( Length(ed_barcode.Text) > 0 ) then
  begin
       nnCODE.DataBinding.AddToFilter(nil, foEqual, trim(ed_barcode.Text));
       grid_nnView1.DataController.Filter.Active := True;
  end;
end;


// Генерация артикула
procedure TNewNomForm.aGenArtExecute(Sender: TObject);
var i: integer;
    found: boolean;
    MARK_N, MARK_V, sql_str : String;
begin
//  ed_art.PostEditValue;
//  ed_len.PostEditValue;
//  ed_length.PostEditValue;
//  ed_remarks.PostEditValue;
  ed_holcodename.PostEditValue;

  if CUR_DEPT_ID <> 121 then
  begin
    if lookcombo_name.ItemIndex < 0 then
      ed_art.Text := VarToStr(ed_holcodename.EditValue) +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
    else
      if CDS_FLOWERSNAME_CODE.AsString <> '' then
        ed_art.Text := CDS_FLOWERSNAME_CODE.AsString +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
      else
        ed_art.Text := VarToStr(ed_holcodename.EditValue) +'.'+ VarToStr(ed_hol_color.EditValue) +'.';
    if Length(ed_len.Text) > 0 then ed_art.Text := ed_art.Text + ed_len.Text +'.' else ed_art.Text := ed_art.Text+'.';
// Если гол.упакова
    if Length(ed_kolvo_hol.Text) > 0 then ed_art.Text := ed_art.Text + ed_kolvo_hol.Text +'.' else ed_art.Text := ed_art.Text+'.';
// Если наша упаковка
//    if Length(ed_kolvo.Text) > 0 then ed_art.Text := ed_art.Text + ed_kolvo.Text +'.' else ed_art.Text := ed_art.Text+'.';

    if MarksVals.Strings.Count > 1 then
    begin
      found := false;
      for i:=1 to MarksVals.Strings.Count do
        if MarksVals.Keys[i] = 'S22' then
        begin
          found := true;
          ed_art.Text := ed_art.Text + MarksVals.Values[MarksVals.Keys[i]] + '.';
        end;
      if not found then ed_art.Text := ed_art.Text+'.';

      found := false;
      for i:=1 to MarksVals.Strings.Count do
        if MarksVals.Keys[i] = 'S25' then
        begin
          found := true;
          ed_art.Text := ed_art.Text + MarksVals.Values[MarksVals.Keys[i]] + '.';
        end;
      if not found then ed_art.Text := ed_art.Text+'.';

      found := false;
      for i:=1 to MarksVals.Strings.Count do
        if MarksVals.Keys[i] = 'VD2' then
        begin
          found := true;
          ed_art.Text := ed_art.Text + MarksVals.Values[MarksVals.Keys[i]] + '.';
        end;
      if not found then ed_art.Text := ed_art.Text+'.';
    end
    else ed_art.Text := ed_art.Text + '...';
    ed_art.Text := ed_art.Text + DM.InvoiceAsIs.FieldByName('REMARKS').AsString;
  end
  else
    MessageBox(Handle, 'Для текущего отдела не определено формирование артикула', 'Информация', MB_ICONINFORMATION);

  RepaintAll;
end;


//
//  Поиск номенклатур по длинне
//
procedure TNewNomForm.aLengthSearchExecute(Sender: TObject);
begin
  if ( Length(ed_len.Text) > 0 ) then
  begin
       nnLEN.DataBinding.AddToFilter(nil, foEqual, trim(ed_len.Text));
       grid_nnView1.DataController.Filter.Active := True;
  end;
end;


//
//  Поиск номенклатур по артиклу
//
procedure TNewNomForm.aArtSearchExecute(Sender: TObject);
begin
  if ( Length(ed_art.Text) > 0 ) then
  begin
    nnH_CODE.DataBinding.AddToFilter(nil, foLike, trim(ed_art.Text)+'%', trim(ed_art.Text));
    grid_nnView1.DataController.Filter.Active := True;
  end;
end;



end.
