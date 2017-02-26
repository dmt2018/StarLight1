unit UEditNom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtDlgs,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  Ora, MemDS, ActnList, Grids, cxCurrencyEdit, cxImageComboBox, cxSpinEdit,
  StdCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxButtons,
  cxTextEdit, cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, star_lib;

type
  TfrmEditNom = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Image18: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    lookcombo_name: TcxLookupComboBox;
    lookcombo_type: TcxLookupComboBox;
    lookcombo_subtype: TcxLookupComboBox;
    lookcombo_suplier: TcxLookupComboBox;
    lookcombo_country: TcxLookupComboBox;
    lookcombo_color: TcxLookupComboBox;
    text_find: TcxTextEdit;
    color_find: TcxTextEdit;
    bt_findn: TcxButton;
    bt_findc: TcxButton;
    btn_ins_name: TcxButton;
    btn_ins_color: TcxButton;
    grEngName: TcxGrid;
    grEngNameDBTableView1: TcxGridDBTableView;
    grEngNameL: TcxGridLevel;
    Panel8: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label37: TLabel;
    Label22: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    ed_length: TcxSpinEdit;
    ed_width: TcxSpinEdit;
    ed_cust: TcxSpinEdit;
    imcb_holtype: TcxImageComboBox;
    ed_barcode: TcxTextEdit;
    ed_hcode: TcxTextEdit;
    ed_postname: TcxTextEdit;
    ed_remarks: TcxTextEdit;
    chbNoPrint: TCheckBox;
    chbNotUse: TCheckBox;
    edTnVed: TcxTextEdit;
    ed_weight: TcxCurrencyEdit;
    ed_weight_dry: TcxCurrencyEdit;
    cb_length: TcxSpinEdit;
    cb_end: TCheckBox;
    cb_start: TCheckBox;
    cb_new: TCheckBox;
    ed_holcodename: TcxTextEdit;
    ed_hol_color: TcxTextEdit;
    btnArticul: TcxButton;
    imcb_units: TcxImageComboBox;
    ed_length_hol: TcxSpinEdit;
    cb_sait: TCheckBox;
    cb_no_order: TCheckBox;
    Panel10: TPanel;
    Label12: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    imcb_spec: TcxImageComboBox;
    imcb_translate: TcxImageComboBox;
    ed_translate: TcxTextEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Panel2: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    btn_help: TcxButton;
    ActionList1: TActionList;
    a_add_f6: TAction;
    a_enter: TAction;
    a_find: TAction;
    a_find_c: TAction;
    aFile: TAction;
    aDeleteFile: TAction;
    cds_flower_trans: TOraQuery;
    cds_flower_transFN_ID: TFloatField;
    cds_flower_transFNT_ID: TFloatField;
    cds_flower_transNAME_CODE: TStringField;
    cds_flower_transREMARKS: TStringField;
    cds_flower_transF_NAME: TStringField;
    ds_flower_trans: TOraDataSource;
    viewRep: TcxGridViewRepository;
    RepFlowerTrans: TcxGridDBTableView;
    RepFlowerTransFN_ID: TcxGridDBColumn;
    RepFlowerTransNAME_CODE: TcxGridDBColumn;
    RepFlowerTransREMARKS: TcxGridDBColumn;
    RepFlowerTransF_NAME: TcxGridDBColumn;
    OpenPictureDialog1: TOpenPictureDialog;
    CDS_FLOWERS: TOraQuery;
    CDS_FLOWERSFN_ID: TFloatField;
    CDS_FLOWERSF_NAME_RU: TStringField;
    CDS_FLOWERSNAME_CODE: TStringField;
    CDS_FLOWERSFITO_NAME: TStringField;
    CDS_FLOWERSID_OFFICE: TIntegerField;
    CDS_FLOWERSBRIEF: TStringField;
    CDS_FLOWERSFN_ID_: TFloatField;
    DS_FLOWERS: TOraDataSource;
    DS_TYPE: TOraDataSource;
    CDS_TYPE: TOraQuery;
    CDS_TYPEFT_ID: TFloatField;
    CDS_TYPEF_TYPE: TStringField;
    CDS_TYPEFT_ID_: TFloatField;
    CDS_COUNTRY: TOraQuery;
    CDS_COUNTRYC_ID: TIntegerField;
    CDS_COUNTRYCOUNTRY: TStringField;
    DS_COUNTRY: TOraDataSource;
    DS_COLOR: TOraDataSource;
    CDS_COLOR: TOraQuery;
    CDS_COLORCOL_ID: TFloatField;
    CDS_COLORCOLOUR: TStringField;
    CDS_SUBTYPE: TOraQuery;
    CDS_SUBTYPEFST_ID: TFloatField;
    CDS_SUBTYPEF_SUB_TYPE: TStringField;
    DS_SUBTYPE: TOraDataSource;
    DS_SUPPLIER: TOraDataSource;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure bt_findnClick(Sender: TObject);
    procedure bt_findcClick(Sender: TObject);
    procedure btnArticulClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btn_ins_nameClick(Sender: TObject);
    procedure btn_ins_suplierClick(Sender: TObject);
    procedure btn_ins_colorClick(Sender: TObject);
    procedure btn_ins_countryClick(Sender: TObject);
    procedure ed_translateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imcb_specPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    tt : integer;
    N_ID, FN_ID_OLD, FT_ID_OLD, FST_ID_OLD, C_ID_OLD, S_ID_OLD,  COL_ID_OLD,
    LEN_OLD, PACK_OLD, PACK_OLD_HOL, HOL_TYPE_OLD, DIAMETER_OLD, WEIGHT_OLD, WEIGHTDRY_OLD,
    CUST_COEF_OLD, VBN_OLD, CODE_OLD, H_NAME_OLD, H_CODE_OLD, REMARKS_OLD, NOMNOORDER,
    BAR_CODE_OLD, PHOTO_OLD, NOPRINT_OLD, NOTUSE_OLD, TNVED, NOMNEW, NOMSTART, NOMEND, NOMSAIT,
    COLOR_OLD, NAME_CODE_OLD : Variant;
  public
    { Public declarations }
    editing : boolean;
    N_ID_   : integer;
  end;

var
  frmEditNom: TfrmEditNom;

implementation

{$R *.dfm}

uses uNomenclature, uEditSubNom;

// Сгенерировать артикул
procedure TfrmEditNom.btnArticulClick(Sender: TObject);
var i: integer;
    found: boolean;
begin
  ed_hcode.PostEditValue;
  cb_length.PostEditValue;
  ed_length.PostEditValue;
  ed_length_hol.PostEditValue;
  ed_remarks.PostEditValue;
  ed_holcodename.PostEditValue;

  if CUR_DEPT_ID <> 121 then
  begin
    if lookcombo_name.ItemIndex < 0 then
      ed_hcode.EditValue := VarToStr(ed_holcodename.EditValue) +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
    else
    begin
      if cds_flower_trans.Active and not cds_flower_trans.IsEmpty then
      begin
        if VarToStr(ed_remarks.EditValue) = '' then
          cds_flower_trans.Filter := 'NAME_CODE='''+VarToStr(ed_holcodename.EditValue)+''' and REMARKS is null'
        else
          cds_flower_trans.Filter := 'NAME_CODE='''+VarToStr(ed_holcodename.EditValue)+''' and REMARKS = '''+VarToStr(ed_remarks.EditValue)+'''';
        cds_flower_trans.Filtered := true;

        if cds_flower_trans.RecordCount > 0 then
          ed_hcode.EditValue := cds_flower_transNAME_CODE.AsString +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
        else
        begin
          cds_flower_trans.Filter := '';
          cds_flower_trans.Filtered := false;

          if CDS_FLOWERSNAME_CODE.AsString <> '' then
            ed_hcode.EditValue := CDS_FLOWERSNAME_CODE.AsString +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
          else
            ed_hcode.EditValue := cds_flower_transNAME_CODE.AsString +'.'+ VarToStr(ed_hol_color.EditValue) +'.'
        end;

        cds_flower_trans.Filter := '';
        cds_flower_trans.Filtered := false;
      end
      else ed_hcode.EditValue := VarToStr(ed_holcodename.EditValue) +'.'+ VarToStr(ed_hol_color.EditValue) +'.';
    end;

    if VarToInt(cb_length.EditValue) > 0 then ed_hcode.EditValue := ed_hcode.EditValue + cb_length.EditText +'.' else ed_hcode.EditValue := ed_hcode.EditValue+'0.';

// Если гол.упакова
    if VarToInt(ed_length_hol.EditValue) > 0 then ed_hcode.EditValue := ed_hcode.EditValue + ed_length_hol.EditText +'.' else ed_hcode.EditValue := ed_hcode.EditValue+'.';
// Если наша упаковка
//    if VarToInt(ed_length.EditValue) > 0 then ed_hcode.EditValue := ed_hcode.EditValue + ed_length.EditText +'.' else ed_hcode.EditValue := ed_hcode.EditValue+'.';

    if StringGrid1.RowCount > 1 then
    begin
      found := false;
      for i:=1 to StringGrid1.RowCount-1 do
        if StringGrid1.Cells[0,i] = '16' then
        begin
          found := true;
          ed_hcode.EditValue := ed_hcode.EditValue + StringGrid2.Cells[1,i] + '.';
        end;
      if not found then ed_hcode.EditValue := ed_hcode.EditValue+'.';

      found := false;
      for i:=1 to StringGrid1.RowCount-1 do
        if StringGrid1.Cells[0,i] = '17' then
        begin
          found := true;
          ed_hcode.EditValue := ed_hcode.EditValue + StringGrid2.Cells[1,i] + '.';
        end;
      if not found then ed_hcode.EditValue := ed_hcode.EditValue+'.';

      found := false;
      for i:=1 to StringGrid1.RowCount-1 do
        if StringGrid1.Cells[0,i] = '10000072' then
        begin
          found := true;
          ed_hcode.EditValue := ed_hcode.EditValue + StringGrid2.Cells[1,i] + '.';
        end;
      if not found then ed_hcode.EditValue := ed_hcode.EditValue+'.';
    end
    else ed_hcode.EditValue := ed_hcode.EditValue + '...';

    ed_hcode.EditValue := ed_hcode.EditValue + ed_remarks.EditValue;
  end
  else
    MessageBox(Handle, 'Для текущего отдела не определено формирование артикула', 'Информация', MB_ICONINFORMATION);
end;


 //  Ввод нового цвета
procedure TfrmEditNom.btn_ins_colorClick(Sender: TObject);
var id : variant;
begin
  frmEditSubNom                                := TfrmEditSubNom.Create(Application);
  try
    frmEditSubNom.cxPageControl1.HideTabs        := true;
    frmEditSubNom.cxPageControl1.ActivePageIndex := 5;
    frmEditSubNom.Caption                        := frmEditSubNom.cxPageControl1.ActivePage.Caption;

    if (frmEditSubNom.ShowModal = mrOk) then
    begin
      with frmNomenclature.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_COLOUR';
        Prepare;
        ParamByName('IN_COLOUR').Value     := frmEditsubNom.edit_color.EditValue;
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

    frmEditSubNom.free;
    cb_length.SetFocus;

  Except on E:Exception do
    begin
      frmEditSubNom.free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;

 procedure TfrmEditNom.btn_ins_countryClick(Sender: TObject);
begin

end;

//  Ввод нового названия
procedure TfrmEditNom.btn_ins_nameClick(Sender: TObject);
VAR FN_ID, FNT_ID, OutText : Variant;
begin
{ ВРЕМЕННО
  frmeditsubnom                               := Tfrmeditsubnom.Create(Application);
  try
    frmeditsubnom.cxPageControl1.HideTabs        := true;
    frmeditsubnom.cxPageControl1.ActivePageIndex := 0;
    frmeditsubnom.Caption                        := frmeditsubnom.cxPageControl1.ActivePage.Caption;
    if (frmeditsubnom.ShowModal = mrOk) then
    begin
      FN_ID := EditRusName(frmNomenclature.StorProc, frmNomenclature.FlowerNames, 0, frmeditsubnom.Edit_name.EditValue, CUR_DEPT_ID);

      if ( length(frmeditsubnom.Edit_eng_name.EditingText) > 0 ) then
      begin
        FNT_ID := EditTransName(frmNomenclature.StorProc, frmNomenclature.FlowerNameTranslations, 0
          , VarToStr(frmeditsubnom.Edit_eng_name.EditValue)
          , CUR_DEPT_ID
          , FN_ID
          , VarToStr(frmeditsubnom.edit_code.EditValue)
          , VarToStr(frmeditsubnom.edit_remarks.EditValue)
        );
        if ( length(frmeditsubnom.edit_remarks.EditingText) > 0 ) then
           ed_remarks.EditValue := frmeditsubnom.edit_remarks.EditValue;
      end;
      CDS_FLOWERS.Refresh;
      CDS_FLOWERS.Locate('FN_ID',FN_ID,[]);
      lookcombo_name.EditValue := FN_ID;
    end;
    frmeditsubnom.Free;
    lookcombo_type.SetFocus;

  Except on E:Exception do
    begin
      frmeditsubnom.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  }
end;


procedure TfrmEditNom.btn_ins_suplierClick(Sender: TObject);
begin
   
end;

//  Поиск по цвету
procedure TfrmEditNom.bt_findcClick(Sender: TObject);
begin
    bt_findn.SetFocus;
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
      CDS_COLOR.Filtered := false;
  end;
end;

//  Поиск по названию
procedure TfrmEditNom.bt_findnClick(Sender: TObject);
begin
  bt_findn.SetFocus;
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
      CDS_FLOWERS.Filtered := false;
  end;
end;


procedure TfrmEditNom.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditNom.cxButton3Click(Sender: TObject);
VAR
  FN_ID,C_ID,S_ID,FST_ID, retval, OutText : Variant;
  VBN, i, is_id, pass : Integer;
  H_CODE, H_NAME, PACK, PACK_HOL, LEN, HOL_TYPE, WEIGHT, WEIGHTDRY, COL_ID, DIAMETER, BAR_CODE, CUST_COEF, REMARKS, PHOTO : Variant;
  err_str: string;
begin
  err_str := '';
  cxButton3.SetFocus;

  if (lookcombo_name.ItemIndex < 0)    then err_str := 'Необходимо указать название';
  if (lookcombo_subtype.ItemIndex < 0) then err_str := 'Необходимо указать подтип';
  if (lookcombo_country.ItemIndex < 0) then err_str := 'Необходимо указать страну';
  if (lookcombo_suplier.ItemIndex < 0) then err_str := 'Необходимо указать поставщика';
  if (lookcombo_color.ItemIndex < 0)   then err_str := 'Необходимо указать цвет';

  if (err_str <> '') then
  begin
    MessageBox(Handle, PChar(err_str), 'Внимание', MB_ICONWARNING);
    abort;
  end;

  pass := 1;

  if (ed_hcode.EditValue <> NULL) and (N_ID_ = -1) then
  begin
    is_id := 0;

    if (ed_hcode.EditValue <> NULL) then
    begin
      with frmNomenclature.StorProc do
      Begin
        sql.Clear;
        SQL.Add('select n_id from NOMENCLATURE where (H_CODE = :p1 or (BAR_CODE = :p3 and BAR_CODE is not null)) and S_ID = :p2 and id_office='+IntToStr(frmnomenclature.id_office));
        Prepare;
        ParamByName('p1').Value            := ed_hcode.EditValue;
        ParamByName('p2').Value            := lookcombo_suplier.EditValue;
        Open;
        if (RecordCount > 1) then
        begin
          MessageBox(Handle, PChar('Надено '+IntToStr(RecordCount)+' похожих позиций! Проверте существующие номенклатуры.'), 'Внимание', MB_ICONWARNING);
        end;
        is_id := FieldByName('n_id').AsInteger;
        Close;
      End;
    end;

    if (is_id > 0) then
    begin
      MessageBox(Handle, PChar('Возможно такая позиция уже введена в БД. Проверте и выберите дельнейшее действие'), 'Внимание', MB_ICONWARNING);
      {frm_full_info := Tfrm_full_info.Create(Application);
      With frm_full_info do
      Begin
        SelNom.Session := DM.SelectSession;
        SelNom.ParamByName('N_ID').Value := is_id;
        SelNom.Open;

        if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
        begin
          if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+frmnomenclature.DictView.FieldByName('PHOTO').AsString) then
            Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+frmnomenclature.DictView.FieldByName('PHOTO').AsString);
        end;

        ShowModal;
        Free;
      End;      }

      if MessageDlg('Завести НОВУЮ номенклатуру?',  mtConfirmation, [mbNo, mbOk], 1) = mrOk then
        pass := 1
      else
      begin
         N_ID         := is_id;
         pass := 0;
      end;

    end
    else
      pass := 1;

  end;





  // Провери на ввод при редактировании
  if (ed_hcode.EditValue <> NULL) and (N_ID_ > 0) then
  begin
    is_id := 0;

      with frmNomenclature.StorProc do
      Begin
        sql.Clear;
        SQL.Add('select n_id from NOMENCLATURE where n_id <> :p0 and (H_CODE = :p1 or (BAR_CODE = :p3 and BAR_CODE is not null)) and S_ID = :p2 and id_office='+IntToStr(frmnomenclature.id_office));
        Prepare;
        ParamByName('p0').Value            := N_ID_;
        ParamByName('p1').Value            := ed_hcode.EditValue;
        ParamByName('p2').Value            := lookcombo_suplier.EditValue;
        Open;
        if (RecordCount > 1) then
        begin
          MessageBox(Handle, PChar('Надено '+IntToStr(RecordCount)+' похожих позиций! Проверте существующие номенклатуры.'), 'Внимание', MB_ICONWARNING);
        end;
        is_id := FieldByName('n_id').AsInteger;
        Close;
      End;

      if (is_id > 0) then
      begin
        MessageBox(Handle, PChar('Возможно такая позиция уже введена в БД. Проверте и выберите дельнейшее действие'), 'Внимание', MB_ICONWARNING);
        {frm_full_info := Tfrm_full_info.Create(Application);
        With frm_full_info do
        Begin
          SelNom.Session := DM.oraSession;
          SelNom.ParamByName('N_ID').Value := is_id;
          SelNom.Open;

          if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
          begin
            if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+frmnomenclature.DictView.FieldByName('PHOTO').AsString) then
              Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+frmnomenclature.DictView.FieldByName('PHOTO').AsString);
          end;

          ShowModal;
          Free;
        End;  }

        if MessageDlg('Завести НОВУЮ номенклатуру?',  mtConfirmation, [mbNo, mbOk], 1) = mrOk then
          pass := 1
        else
        begin
           N_ID         := is_id;
           pass := 0;
        end;
      end
      else
         pass := 1;

  end;




  if (pass = 1) then
  begin
    FN_ID     := lookcombo_name.EditValue;
    FST_ID    := lookcombo_subtype.EditValue;
    C_ID      := lookcombo_country.EditValue;
    S_ID      := lookcombo_suplier.EditValue;
    COL_ID    := lookcombo_color.EditValue;

    //if (cb_length.ItemIndex = -1) then
    //  LEN     := 0
    //else
      LEN     := cb_length.EditValue;

    PACK      := ed_length.EditValue;
    PACK_HOL  := ed_length_HOL.EditValue;
//  HOL_TYPE  := imcb_holtype.EditValue;
    HOL_TYPE  := imcb_holtype.EditText;
    ed_weight.PostEditValue;
    WEIGHT    := ed_weight.EditValue;
    ed_weight_dry.PostEditValue;
    WEIGHTDRY := ed_weight_dry.EditValue;
    DIAMETER  := ed_width.EditValue;
    CUST_COEF := ed_cust.EditValue;

    // 2014-12-14
    VBN       := Integer(CheckBox1.Checked);
    VBN       := imcb_units.EditValue;

    BAR_CODE  := ed_barcode.EditValue;
    H_NAME    := ed_postname.EditValue;
    H_CODE    := ed_hcode.EditValue;
    REMARKS   := ed_remarks.EditValue;
    TNVED     := edTnVed.EditValue;
//    PHOTO     := edit_file.EditValue;

    NAME_CODE_OLD    := ed_holcodename.EditValue;
    COLOR_OLD   := ed_hol_color.EditValue;

    NOMNEW     := BoolToint(cb_new.Checked);
    NOMSTART   := BoolToint(cb_start.Checked);
    NOMEND     := BoolToint(cb_end.Checked);
    NOMSAIT    := boolToint(cb_sait.Checked);
    NOMNOORDER := boolToint(cb_no_order.Checked);

    with frmNomenclature.StorProc do
    Begin
      SQL.Clear;
      StoredProcName := 'NOMENCLATURE_PKG.EDIT_NOM';
      Prepare;

      if editing then
        ParamByName('N_ID_').Value  := N_ID_
      else
        ParamByName('N_ID_').Value  := -1;
      ParamByName('FN_ID_').Value   := FN_ID;
      ParamByName('FST_ID_').Value  := FST_ID;
      ParamByName('S_ID_').Value    := S_ID;
      ParamByName('C_ID_').Value    := C_ID;
      ParamByName('H_CODE_').Value  := H_CODE;
      ParamByName('H_NAME_').Value  := H_NAME;
      ParamByName('LEN_').Value     := LEN;
      ParamByName('PACK_').Value    := PACK;
      ParamByName('COL_ID_').Value  := COL_ID;
      ParamByName('VBN_').Value     := VBN;
      ParamByName('HOL_TYPE_').Value  := HOL_TYPE;
      ParamByName('WEIGHT_').Value    := WEIGHT;
      ParamByName('WEIGHTDRY_').Value := WEIGHTDRY;
      ParamByName('DIAMETER_').Value  := DIAMETER;
      ParamByName('BAR_CODE_').Value  := BAR_CODE;
      ParamByName('CUST_COEF_').Value := CUST_COEF;
      ParamByName('REMARKS_').Value   := REMARKS;
      ParamByName('IN_ID_').Value     := 0;
      ParamByName('PHOTO_').Value     := ''; //PHOTO;
      ParamByName('code_').Value      := ''; //PHOTO;

      ParamByName('noprint_').Value   := Integer(chbNoPrint.Checked);
      ParamByName('notuse_').Value    := Integer(chbNotUse.Checked);
      ParamByName('vTnVed').Value     := TNVED;

      ParamByName('nom_new_').AsInteger     := NOMNEW;
      ParamByName('nom_start_').AsInteger   := NOMSTART;
      ParamByName('nom_end_').AsInteger     := NOMEND;
      //ParamByName('nom_sait_').AsInteger     := NOMSAIT;

      ParamByName('name_code_').Value := NAME_CODE_OLD;
      ParamByName('hol_color_').Value := COLOR_OLD;
      if PACK_HOL = 0 then PACK_HOL := PACK;
      ParamByName('hol_pack_').Value := PACK_HOL;

      try
        ExecProc;

        RetVal  := ParamByName('IN_ID_').Value;
        OutText := ParamByName('OUT_TEXT').Value;

        if (Length(OutText) > 0) then ShowMessage(OutText);

        if RetVal > 0 then
        begin

          // Insert specifications
          if (tt > 0) and (not editing or (N_ID_ > 0)) then
          begin

            StoredProcName := 'NOMENCLATURE_PKG.INS_NOM_SPEC';
            Prepare;
            try
              for i:=1 to StringGrid1.RowCount-1 do
                begin
                  ParamByName('N_ID_').Value      := RetVal;
                  ParamByName('HS_ID_').AsString  := StringGrid1.Cells[0,i];
                  if StringGrid1.Cells[1,i] = '' then
                  begin
                    ParamByName('HS_VAL_').AsString := StringGrid2.Cells[1,i];
                    ParamByName('SC_ID_').Value     := null;
                  end
                  else
                  begin
                    ParamByName('HS_VAL_').AsString := '';
                    ParamByName('SC_ID_').Value     := StringGrid1.Cells[1,i];
                  end;
                  ExecProc;
                end;
            except on E: Exception do
              ShowMessage('Получена ошибка при добавлении спецификации: ' + E.Message);
            end;

          End;

      //******** доб/удал данные ********
        frmNomenclature.SelQ.Close;
        frmNomenclature.SelQ.SQL.Clear;
        frmNomenclature.SelQ.SQL.Add('begin nomenclature2_pkg.set_nomenclature_site_marks('+floattostr(N_ID)+','+IntToStr(BoolToInt(cb_sait.Checked))+','+IntToStr(BoolToInt(cb_no_order.Checked))+'); end;');
        frmNomenclature.SelQ.execute;
        frmNomenclature.SelQ.Close;
     //*********************************
          
          if editing then
            frmNomenclature.DictView.RefreshRecord
          else
          begin
            frmNomenclature.DictView.Refresh;
            frmNomenclature.DictView.Locate('N_ID', RetVal, []);
          end;
          modalresult := mrOk;
        end;

      except
        on E: Exception do
          ShowMessage('Получена следующая ошибка: ' + E.Message);
      End;
    End;

  end; // if (pass = 1) then
end;

//  Добавляем спецификацию в список
procedure TfrmEditNom.cxButton4Click(Sender: TObject);
begin
 ed_translate.PostEditValue;

 if tt = 0 then
 begin
   stringgrid1.Cells[0,1] := imcb_spec.EditValue;
   stringgrid2.Cells[0,1] := imcb_spec.EditText;

   if ed_translate.Enabled = true then
   begin
     stringgrid1.Cells[1,1] := ''; //ed_translate.EditValue;
     stringgrid2.Cells[1,1] := ed_translate.EditValue;
   end
   else
   begin
     stringgrid1.Cells[1,1] := imcb_translate.EditValue;
     stringgrid2.Cells[1,1] := imcb_translate.EditText;
   end;

   tt := 1;
 end
 else
 begin
   stringgrid1.RowCount := stringgrid1.RowCount + 1;
   stringgrid2.RowCount := stringgrid2.RowCount + 1;

   stringgrid1.Cells[0,stringgrid1.RowCount-1] := imcb_spec.EditValue;
   stringgrid2.Cells[0,stringgrid2.RowCount-1] := imcb_spec.EditText;

   if ed_translate.Enabled = true then
   begin
     stringgrid1.Cells[1,stringgrid1.RowCount-1] := ''; //ed_translate.EditValue;
     stringgrid2.Cells[1,stringgrid2.RowCount-1] := ed_translate.EditValue;
   end
   else
   begin
     stringgrid1.Cells[1,stringgrid1.RowCount-1] := imcb_translate.EditValue; // ReadComboEx(ComboBoxEx9);
     stringgrid2.Cells[1,stringgrid2.RowCount-1] := imcb_translate.EditText; // ReadComboExText(ComboBoxEx9);
   end;
 end;
 StringGrid2.SetFocus;
end;

//  Убираем спецификацию в список
procedure TfrmEditNom.cxButton5Click(Sender: TObject);
begin
 if StringGrid2.RowCount > 2 then
  begin
    StringGrid2.RowCount := StringGrid2.RowCount - 1;
    StringGrid1.RowCount := StringGrid1.RowCount - 1;
  end
  else
  begin
    tt := 0;

    StringGrid2.Cells[0,StringGrid2.RowCount-1] := '';
    StringGrid2.Cells[1,StringGrid2.RowCount-1] := '';
    StringGrid1.Cells[0,StringGrid1.RowCount-1] := '';
    StringGrid1.Cells[1,StringGrid1.RowCount-1] := '';
  end;
  StringGrid2.SetFocus;
end;

//  Поиск в цвете
procedure TfrmEditNom.ed_translateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then a_find_c.Execute;
end;

//  При закрытии формы закрываем датасеты
procedure TfrmEditNom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS_FLOWERS.Close;
  CDS_TYPE.Close;
  CDS_SUPPLIER.Close;
  CDS_COUNTRY.Close;
  CDS_COLOR.Close;
  CDS_SUBTYPE.Close;
end;



procedure TfrmEditNom.FormShow(Sender: TObject);
begin
 tt := 0;

  color_find.EditValue      := 'поиск...';
  text_find.EditValue       := 'поиск...';

  CDS_FLOWERS.Close;
  CDS_FLOWERS.Filter        := '';
  CDS_FLOWERS.Filtered      := false;
  CDS_FLOWERS.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_FLOWERS.Open;
  lookcombo_name.EditValue  := -1;

  CDS_TYPE.Close;
  CDS_TYPE.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_TYPE.Open;
  lookcombo_type.EditValue  := -1;

  CDS_SUPPLIER.Close;
  CDS_SUPPLIER.Open;
  lookcombo_suplier.EditValue := -1;

  CDS_COUNTRY.Close;
  CDS_COUNTRY.Open;
  lookcombo_country.EditValue := -1;

  CDS_COLOR.Close;
  CDS_COLOR.Filter          := '';
  CDS_COLOR.Filtered        := false;
  CDS_COLOR.Open;
  lookcombo_color.EditValue := -1;

  //cb_length.Properties.Items.LoadFromFile('utils/lengths.txt');
  //cb_length.ItemIndex       := 0;
  cb_length.EditValue       := 0;


  frmNomenclature.SelQ.Close;
  frmNomenclature.SelQ.SQL.Clear;
  frmNomenclature.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
  frmNomenclature.SelQ.Open;
  FillImgComboCx(frmNomenclature.SelQ, imcb_holtype, '');
  imcb_holtype.EditValue    := 0;


  frmNomenclature.SelQ.Close;
  frmNomenclature.SelQ.SQL.Clear;
  frmNomenclature.SelQ.SQL.Add('SELECT nsi_units_id, nsi_name FROM nsi_units ORDER BY nsi_name');
  frmNomenclature.SelQ.Open;
  FillImgComboCx(frmNomenclature.SelQ, imcb_units, '');



  ed_length.EditValue       := 0;
  ed_length_hol.EditValue   := 0;
  ed_width.EditValue        := 0;
  ed_weight.EditValue       := 0;
  ed_weight_dry.EditValue   := 0;
  ed_cust.EditValue         := 0;

  CheckBox1.Checked         := false;
  chbNoPrint.Checked        := false;
  chbNotUse.Checked         := false;

  ed_barcode.EditValue      := '';
  ed_postname.EditValue     := '';
  ed_hcode.EditValue        := '';
  ed_remarks.EditValue      := '';
  edTnVed.EditValue         := '';
  ed_holcodename.EditValue  := '';
  ed_hol_color.EditValue    := '';

  cds_flower_trans.Close;
  cds_flower_trans.Filter        := '';
  cds_flower_trans.Filtered      := false;
  cds_flower_trans.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  cds_flower_trans.Open;

  cb_new.Checked   := false;
  cb_start.Checked := false;
  cb_end.Checked   := false;
  cb_sait.Checked   := false;
  cb_no_order.Checked   := false;

  frmNomenclature.SelQ.Close;
  frmNomenclature.SelQ.SQL.Clear;
  frmNomenclature.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
  frmNomenclature.SelQ.Open;
  FillImgComboCx(frmNomenclature.SelQ, imcb_spec, '');
  frmNomenclature.SelQ.Close;


  // Если редактирование, то заполняем элементы
  if editing or (N_ID_ > 0) then
  Begin
      with frmNomenclature.DictView do
      Begin
          frmEditNom.Caption := 'Редактирование :: ' + FieldByName('N_ID').AsString + ' :: ' + FieldByName('CODE').AsString;

          N_ID          := FieldByName('N_ID').Value;
          FN_ID_OLD     := FieldByName('FN_ID').Value;
          FT_ID_OLD     := FieldByName('FT_ID').Value;
          FST_ID_OLD    := FieldByName('FST_ID').Value;
          C_ID_OLD      := FieldByName('C_ID').Value;
          S_ID_OLD      := FieldByName('S_ID').Value;
          COL_ID_OLD    := FieldByName('COL_ID').Value;
          LEN_OLD       := FieldByName('LEN').Value;
          PACK_OLD      := FieldByName('PACK').Value;
          PACK_OLD_HOL  := FieldByName('HOL_PACK').Value;

          NOMNEW        := FieldByName('nom_new').Value;
          NOMSTART      := FieldByName('nom_start').Value;
          NOMEND        := FieldByName('nom_end').Value;
          NOMSAIT       := FieldByName('REMOVE_FROM_SITE').Value;
          NOMNOORDER    := FieldByName('NO_ORDER').Value;

//          HOL_TYPE_OLD  := FieldByName('HOL_TYPE').Value;
          frmNomenclature.SelQ.Close;
          frmNomenclature.SelQ.SQL.Clear;
          frmNomenclature.SelQ.SQL.Add('SELECT ht_id FROM hol_types where active = 1 and upper(hol_type)='''+UpperCase(FieldByName('HOL_TYPE').AsString)+'''');
          frmNomenclature.SelQ.Open;
          if frmNomenclature.SelQ.RecordCount > 0 then
            HOL_TYPE_OLD  := frmNomenclature.SelQ.FieldByName('HT_ID').Value
          else
            HOL_TYPE_OLD  := FieldByName('HT_ID').Value;
          frmNomenclature.SelQ.Close;


          DIAMETER_OLD  := FieldByName('DIAMETER').Value;
          WEIGHT_OLD    := FieldByName('WEIGHT').Value;
          WEIGHTDRY_OLD := FieldByName('WEIGHTDRY').Value;
          CUST_COEF_OLD := FieldByName('CUST_COEF').Value;

          VBN_OLD       := FieldByName('VBN').Value;
          NOPRINT_OLD   := FieldByName('NOPRINT').Value;
          NOTUSE_OLD    := FieldByName('NOTUSE').Value;

          CODE_OLD      := FieldByName('CODE').Value;
          H_NAME_OLD    := FieldByName('H_NAME').Value;
          H_CODE_OLD    := FieldByName('H_CODE').Value;
          REMARKS_OLD   := FieldByName('REMARKS').Value;
          BAR_CODE_OLD  := FieldByName('BAR_CODE').Value;
          PHOTO_OLD     := FieldByName('PHOTO').Value;
          TNVED         := FieldByName('TNVED').Value;

          NAME_CODE_OLD := FieldByName('name_code').Value;
          COLOR_OLD     := FieldByName('HOL_COLOR').Value;



          frmNomenclature.SelQ.Close;
          frmNomenclature.SelQ.SQL.Clear;
          frmNomenclature.SelQ.SQL.Add('SELECT HS_ID,SC_ID,SPEC_CODE,SPEC_NAME,HS_VAL,CONTENT_RUS,ORD, NEED_TRANSLATION FROM SPECIFICATION_VIEW WHERE N_ID = :N_ID ORDER BY ORD');
          frmNomenclature.SelQ.ParamByName('N_ID').AsInteger := FieldByName('N_ID').Value;
          frmNomenclature.SelQ.Open;

          tt := 0;
          if (frmNomenclature.SelQ.RecordCount > 0) then
          begin
            while (not frmNomenclature.SelQ.Eof) do
            begin

             stringgrid1.Cells[0,tt+1] := frmNomenclature.SelQ.FieldByName('HS_ID').AsString; // imcb_spec.EditValue;
             stringgrid2.Cells[0,tt+1] := frmNomenclature.SelQ.FieldByName('SPEC_CODE').AsString + ' ' + frmNomenclature.SelQ.FieldByName('SPEC_NAME').AsString; // imcb_spec.EditText;

             if (frmNomenclature.SelQ.FieldByName('SC_ID').Value = 0) then
             begin
               stringgrid1.Cells[1,tt+1] := frmNomenclature.SelQ.FieldByName('HS_VAL').AsString; //ed_translate.EditValue;
               stringgrid2.Cells[1,tt+1] := frmNomenclature.SelQ.FieldByName('HS_VAL').AsString; //ed_translate.EditValue;
             end
             else
             begin
               stringgrid1.Cells[1,tt+1] := frmNomenclature.SelQ.FieldByName('SC_ID').AsString; //imcb_spec.EditValue;
               stringgrid2.Cells[1,tt+1] := frmNomenclature.SelQ.FieldByName('HS_VAL').AsString; //imcb_spec.EditText;
             end;

             tt := tt + 1;
             if (frmNomenclature.SelQ.RecordCount > tt) then
             begin
               stringgrid1.RowCount := stringgrid1.RowCount + 1;
               stringgrid2.RowCount := stringgrid2.RowCount + 1;
             end;

             frmNomenclature.SelQ.Next;

            end;
          end;

          frmNomenclature.SelQ.Close;


      end;

      lookcombo_name.EditValue    := FN_ID_OLD;
      lookcombo_type.EditValue    := FT_ID_OLD;
      CDS_TYPE.Locate('ft_id',FT_ID_OLD,[]);
      CDS_SUBTYPE.Open;
      lookcombo_subtype.Refresh;
      lookcombo_subtype.EditValue := FST_ID_OLD;
      lookcombo_country.EditValue := C_ID_OLD;
      lookcombo_suplier.EditValue := S_ID_OLD;
      lookcombo_color.EditValue   := COL_ID_OLD;
      cb_length.EditValue         := LEN_OLD;
      ed_length.EditValue         := PACK_OLD;
      ed_length_hol.EditValue     := PACK_OLD_HOL;
      imcb_holtype.EditValue      := HOL_TYPE_OLD;
      ed_width.EditValue          := DIAMETER_OLD;
      ed_weight.EditValue         := WEIGHT_OLD;
      ed_weight_dry.EditValue     := WEIGHTDRY_OLD;
      ed_cust.EditValue           := CUST_COEF_OLD;
// 2014-12-14
      imcb_units.EditValue        := VBN_OLD;
//      if VBN_OLD = 1 then CheckBox1.Checked := true
//                     else CheckBox1.Checked := false;

      chbNoPrint.Checked := (NOPRINT_OLD = 1);
      chbNotUse.Checked  := (NOTUSE_OLD = 1);

      ed_barcode.EditValue        := VarToStr(BAR_CODE_OLD);
      ed_postname.EditValue       := VarToStr(H_NAME_OLD);
      ed_hcode.EditValue          := VarToStr(H_CODE_OLD);
      ed_remarks.EditValue        := VarToStr(REMARKS_OLD);
      edTnVed.EditValue           := VarToStr(TNVED);
      //edit_file.EditValue         := VarToStr(PHOTO_OLD);
      ed_holcodename.EditValue  := NAME_CODE_OLD;
      ed_hol_color.EditValue    := COLOR_OLD;

      cb_new.Checked      := (NOMNEW = 1);
      cb_start.Checked    := (NOMSTART = 1);
      cb_end.Checked      := (NOMEND = 1);
      cb_sait.Checked     := (NOMSAIT = 1);
      cb_no_order.Checked := (NOMNOORDER = 1);

      panel10.Visible := (N_ID_ > 0);

      if NAME_CODE_OLD = NULL then
        ed_holcodename.Style.Color := clRed;


  End
  else
  Begin
      CDS_SUBTYPE.Open;
      frmNomenclature.SelQ.Close;
      frmNomenclature.SelQ.SQL.Clear;
      frmNomenclature.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
      frmNomenclature.SelQ.Open;
      FillImgComboCx(frmNomenclature.SelQ, imcb_spec, '');

      stringgrid1.RowCount := 2;
      stringgrid1.Rows[1].Clear;
      stringgrid1.Cells[0,0] := 'Название спецификации';
      stringgrid1.Cells[1,0] := 'Значение';

      stringgrid2.RowCount := 2;
      stringgrid2.Rows[1].Clear;
      stringgrid2.Cells[0,0] := 'Название спецификации';
      stringgrid2.Cells[1,0] := 'Значение';

      panel10.Visible := true;
  End;

end;


procedure TfrmEditNom.imcb_specPropertiesChange(Sender: TObject);
begin
  if imcb_spec.Properties.Items.Items[imcb_spec.ItemIndex].Tag = 1 then
  Begin
      imcb_translate.Enabled    := true;
      frmNomenclature.SelQ.Close;
      frmNomenclature.SelQ.SQL.Clear;
      frmNomenclature.SelQ.SQL.Add('SELECT SC_ID, CONTENT_HOL || '' | '' || CONTENT_RUS FROM SPECIFICATION_CONTENT WHERE HS_ID = ' + IntToStr(imcb_spec.EditValue) );
      frmNomenclature.SelQ.Open;
      FillImgComboCx(frmNomenclature.SelQ, imcb_translate, '');
      imcb_translate.ItemIndex  := 0;
      ed_translate.EditValue    := '';
      ed_translate.Enabled      := false;
  End
  else
  Begin
      ed_translate.EditValue    := '';
      ed_translate.Enabled      := true;
      imcb_translate.Enabled    := false;
      imcb_translate.EditValue  := -1;
  End;
end;

end.
