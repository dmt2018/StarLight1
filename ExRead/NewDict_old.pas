unit NewDict;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PI_library, ComCtrls, Grids,
  ActnList, Mask, Menus, cxLookAndFeelPainters, cxButtons,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBExtLookupComboBox, cxDBLookupComboBox, DB, Ora, MemDS, DBAccess,
  cxSpinEdit, cxImageComboBox, ExtDlgs;

type
  TNewD = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    Label18: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Panel10: TPanel;
    Label12: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    ActionList1: TActionList;
    a_add_f6: TAction;
    a_enter: TAction;
    Label9: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    CDS_FLOWERS: TOraQuery;
    CDS_FLOWERSFN_ID: TFloatField;
    CDS_FLOWERSF_NAME_RU: TStringField;
    CDS_TYPE: TOraQuery;
    CDS_TYPEFT_ID: TFloatField;
    CDS_TYPEF_TYPE: TStringField;
    CDS_TYPEFT_ID_: TFloatField;
    DS_TYPE: TOraDataSource;
    DS_FLOWERS: TOraDataSource;
    CDS_COUNTRY: TOraQuery;
    CDS_COUNTRYC_ID: TIntegerField;
    CDS_COUNTRYCOUNTRY: TStringField;
    CDS_COLOR: TOraQuery;
    CDS_COLORCOL_ID: TFloatField;
    CDS_COLORCOLOUR: TStringField;
    CDS_SUBTYPE: TOraQuery;
    CDS_SUBTYPEFST_ID: TFloatField;
    CDS_SUBTYPEF_SUB_TYPE: TStringField;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    DS_SUPPLIER: TOraDataSource;
    DS_SUBTYPE: TOraDataSource;
    DS_COLOR: TOraDataSource;
    DS_COUNTRY: TOraDataSource;
    lookcombo_name: TcxLookupComboBox;
    lookcombo_type: TcxLookupComboBox;
    lookcombo_subtype: TcxLookupComboBox;
    lookcombo_suplier: TcxLookupComboBox;
    lookcombo_country: TcxLookupComboBox;
    lookcombo_color: TcxLookupComboBox;
    text_find: TcxTextEdit;
    a_find: TAction;
    color_find: TcxTextEdit;
    a_find_c: TAction;
    bt_findn: TcxButton;
    bt_findc: TcxButton;
    ed_length: TcxSpinEdit;
    ed_weight: TcxSpinEdit;
    ed_width: TcxSpinEdit;
    ed_cust: TcxSpinEdit;
    imcb_holtype: TcxImageComboBox;
    Label2: TLabel;
    cxButton2: TcxButton;
    aFile: TAction;
    edit_file: TcxTextEdit;
    ed_barcode: TcxTextEdit;
    ed_hcode: TcxTextEdit;
    ed_postname: TcxTextEdit;
    ed_remarks: TcxTextEdit;
    Label22: TLabel;
    imcb_spec: TcxImageComboBox;
    imcb_translate: TcxImageComboBox;
    ed_translate: TcxTextEdit;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Image18: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    btn_help: TcxButton;
    OpenPictureDialog1: TOpenPictureDialog;
    btnDeleteimg: TcxButton;
    aDeleteFile: TAction;
    btn_ins_name: TcxButton;
    btn_ins_country: TcxButton;
    btn_ins_suplier: TcxButton;
    btn_ins_color: TcxButton;
    cb_length: TcxSpinEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBoxEx8Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure text_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure color_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lookcombo_typePropertiesEditValueChanged(Sender: TObject);
    procedure a_findExecute(Sender: TObject);
    procedure a_find_cExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aFileExecute(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure edit_filePropertiesEditValueChanged(Sender: TObject);
    procedure aDeleteFileExecute(Sender: TObject);
    procedure btn_ins_nameClick(Sender: TObject);
    procedure btn_ins_countryClick(Sender: TObject);
    procedure btn_ins_suplierClick(Sender: TObject);
    procedure btn_ins_colorClick(Sender: TObject);
  private
    { Private declarations }
    tt : integer;
    N_ID, FN_ID_OLD, FT_ID_OLD, FST_ID_OLD, C_ID_OLD, S_ID_OLD,  COL_ID_OLD,
    LEN_OLD, PACK_OLD, HOL_TYPE_OLD, DIAMETER_OLD, WEIGHT_OLD,
    CUST_COEF_OLD, VBN_OLD, CODE_OLD, H_NAME_OLD, H_CODE_OLD, REMARKS_OLD,
    BAR_CODE_OLD, PHOTO_OLD : Variant;
  public
    { Public declarations }
    editing : boolean;
    N_ID_   : integer;
    v_art   : string;
  end;

var
  NewD: TNewD;

implementation

uses DataModule, Globals, UHelp, UEditForm, UFullInfo;

{$R *.dfm}


//
//  При закрытии формы закрываем датасеты
//
procedure TNewD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{
  CDS_SUBTYPE.Close;
  CDS_TYPE.Close;
  CDS_SUPPLIER.Close;
  CDS_COUNTRY.Close;
  CDS_COLOR.Close;
  CDS_FLOWERS.Close;
}  
end;

//
//  При создании формы заполняем справочники
//
procedure TNewD.FormShow(Sender: TObject);
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
  CDS_SUBTYPE.Open;

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

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_holtype, '');
  imcb_holtype.EditValue    := 0;
  DM.SelQ.Close;


  cb_length.EditValue       := 0;
  ed_length.EditValue       := 0;
  ed_width.EditValue        := 0;
  ed_weight.EditValue       := 0;
  ed_cust.EditValue         := 0;
  CheckBox1.Checked         := false;
  ed_barcode.EditValue      := '';
  ed_postname.EditValue     := '';
  ed_hcode.EditValue        := '';
  ed_remarks.EditValue      := '';

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_spec, '');
  DM.SelQ.Close;

  stringgrid1.RowCount := 2;
  stringgrid1.Rows[1].Clear;
  stringgrid1.Cells[0,0] := 'Название спецификации';
  stringgrid1.Cells[1,0] := 'Значение';

  stringgrid2.RowCount := 2;
  stringgrid2.Rows[1].Clear;
  stringgrid2.Cells[0,0] := 'Название спецификации';
  stringgrid2.Cells[1,0] := 'Значение';

  // Если редактирование, то заполняем элементы
  if editing then
  Begin
      DM.Nomenclature2.Locate('N_ID',N_ID_,[]);
      with DM.Nomenclature2 do
      Begin
          N_ID          := N_ID_; //FieldByName('N_ID').Value;
          FN_ID_OLD     := FieldByName('FN_ID').Value;
          FT_ID_OLD     := FieldByName('FT_ID').Value;
          FST_ID_OLD    := FieldByName('FST_ID').Value;
          C_ID_OLD      := FieldByName('C_ID').Value;
          S_ID_OLD      := FieldByName('S_ID').Value;
          COL_ID_OLD    := FieldByName('COL_ID').Value;
          LEN_OLD       := FieldByName('LEN').Value;
          PACK_OLD      := FieldByName('PACK').Value;
          HOL_TYPE_OLD  := FieldByName('HOL_TYPE').Value;
          DIAMETER_OLD  := FieldByName('DIAMETER').Value;
          WEIGHT_OLD    := FieldByName('WEIGHT').Value;
          CUST_COEF_OLD := FieldByName('CUST_COEF').Value;
          VBN_OLD       := FieldByName('VBN').Value;

          CODE_OLD      := FieldByName('CODE').Value;
          H_NAME_OLD    := FieldByName('H_NAME').Value;
          H_CODE_OLD    := FieldByName('H_CODE').Value;
          REMARKS_OLD   := FieldByName('REMARKS').Value;
          BAR_CODE_OLD  := FieldByName('BAR_CODE').Value;
          PHOTO_OLD     := ''; //FieldByName('PHOTO').Value;

          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.Add('SELECT HS_ID,SC_ID,SPEC_CODE,SPEC_NAME,HS_VAL,CONTENT_RUS,ORD, NEED_TRANSLATION FROM SPECIFICATION_VIEW WHERE N_ID = :N_ID ORDER BY ORD');
          DM.SelQ.ParamByName('N_ID').AsInteger := FieldByName('N_ID').Value;
          DM.SelQ.Open;

          if (DM.SelQ.RecordCount > 0) then
          begin
            while (not DM.SelQ.Eof) do
            begin

             stringgrid1.Cells[0,tt+1] := DM.SelQ.FieldByName('HS_ID').AsString; // imcb_spec.EditValue;
             stringgrid2.Cells[0,tt+1] := DM.SelQ.FieldByName('SPEC_CODE').AsString + ' ' + DM.SelQ.FieldByName('SPEC_NAME').AsString; // imcb_spec.EditText;

             if (DM.SelQ.FieldByName('SC_ID').Value = 0) then
             begin
               stringgrid1.Cells[1,tt+1] := DM.SelQ.FieldByName('HS_VAL').AsString; //ed_translate.EditValue;
               stringgrid2.Cells[1,tt+1] := DM.SelQ.FieldByName('HS_VAL').AsString; //ed_translate.EditValue;
             end
             else
             begin
               stringgrid1.Cells[1,tt+1] := DM.SelQ.FieldByName('SC_ID').AsString; //imcb_spec.EditValue;
               stringgrid2.Cells[1,tt+1] := DM.SelQ.FieldByName('HS_VAL').AsString; //imcb_spec.EditText;
             end;

             tt := tt + 1;
             if (DM.SelQ.RecordCount > tt) then
             begin
               stringgrid1.RowCount := stringgrid1.RowCount + 1;
               stringgrid2.RowCount := stringgrid2.RowCount + 1;
             end;

             DM.SelQ.Next;

            end;
          end;

          DM.SelQ.Close;

      end;

      lookcombo_name.EditValue    := FN_ID_OLD;
      lookcombo_type.EditValue    := FT_ID_OLD;
      CDS_TYPE.Locate('ft_id',FT_ID_OLD,[]);
      CDS_SUBTYPE.Close;
      CDS_SUBTYPE.Open;
      lookcombo_subtype.Refresh;
      lookcombo_subtype.EditValue := FST_ID_OLD;
      lookcombo_country.EditValue := C_ID_OLD;
      lookcombo_suplier.EditValue := S_ID_OLD;
      lookcombo_color.EditValue   := COL_ID_OLD;
      cb_length.EditValue         := LEN_OLD;
      ed_length.EditValue         := PACK_OLD;

      try
        imcb_holtype.Text      := HOL_TYPE_OLD;
      except
        imcb_holtype.EditValue      := 0;
      end;

      ed_width.EditValue          := DIAMETER_OLD;
      ed_weight.EditValue         := WEIGHT_OLD;
      ed_cust.EditValue           := CUST_COEF_OLD;
      if VBN_OLD = 1 then CheckBox1.Checked := true
                     else CheckBox1.Checked := false;

      ed_barcode.EditValue        := VarToStr(BAR_CODE_OLD);
      ed_postname.EditValue       := VarToStr(H_NAME_OLD);
      ed_hcode.EditValue          := VarToStr(H_CODE_OLD);
      ed_remarks.EditValue        := VarToStr(REMARKS_OLD);
      edit_file.EditValue         := VarToStr(PHOTO_OLD);

//      panel10.Visible := false;

  End
  else
  Begin
{
      CDS_SUBTYPE.Open;
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, imcb_spec, '');

      stringgrid1.RowCount := 2;
      stringgrid1.Rows[1].Clear;
      stringgrid1.Cells[0,0] := 'Название спецификации';
      stringgrid1.Cells[1,0] := 'Значение';

      stringgrid2.RowCount := 2;
      stringgrid2.Rows[1].Clear;
      stringgrid2.Cells[0,0] := 'Название спецификации';
      stringgrid2.Cells[1,0] := 'Значение';
}
    NULL;
//      panel10.Visible := true;
  End;

end;


//
//  При выборе спецификации подгружаем перевод при необходимости
//
procedure TNewD.ComboBoxEx8Change(Sender: TObject);
begin
  if imcb_spec.Properties.Items.Items[imcb_spec.ItemIndex].Tag = 1 then
  Begin
      imcb_translate.Enabled    := true;
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT SC_ID, CONTENT_HOL || '' | '' || CONTENT_RUS FROM SPECIFICATION_CONTENT WHERE HS_ID = ' + IntToStr(imcb_spec.EditValue) );
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, imcb_translate, '');
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


//
// Ввод нового цвета
//
procedure TNewD.btn_ins_colorClick(Sender: TObject);
var id : variant;
begin
  try
    frm_editform                                := Tfrm_editform.Create(Application);
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

    cb_length.SetFocus;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
// Ввод новой страны
//
procedure TNewD.btn_ins_countryClick(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  try
    frm_editform                                := Tfrm_editform.Create(Application);
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



procedure TNewD.edit_filePropertiesEditValueChanged(Sender: TObject);
begin
  if (edit_file.EditingText <> '') then
    aDeleteFile.Enabled := true
  else
    aDeleteFile.Enabled := false;
end;

//
//  Помощь
//
procedure TNewD.btn_helpClick(Sender: TObject);
begin
  frm_help                          := Tfrm_help.Create(Application);
  frm_help.pg_help.ActivePageIndex  := 0;
  frm_help.pg_help.HideTabs         := true;
  frm_help.ShowModal;
end;


//
//  Ввод нового названия
//
procedure TNewD.btn_ins_nameClick(Sender: TObject);
VAR FN_ID,OutText : Variant;
begin
  try
    frm_editform                                := Tfrm_editform.Create(Application);
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 0;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.cb_translate.Checked           := true;
    frm_editform.cb_translate.Properties.ReadOnly := true;

    frm_editform.edit_code.EditValue            := ed_hcode.EditingValue;
    frm_editform.Edit_eng_name.EditValue        := ed_postname.EditingValue;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.ADD_NAME';
        Prepare;
        ParamByName('IN_F_NAME_RU').Value := frm_editform.Edit_name.EditValue;
        ParamByName('IN_ID_DEPARTMENTS').Value := CUR_DEPT_ID;
        ParamByName('IN_NAME_CODE').Value := frm_editform.edit_code.EditValue;
        ParamByName('IN_ID').Value := 0;
        Execute;
        FN_ID := ParamByName('IN_ID').Value;
        OutText := ParamByName('OUT_TEXT').Value;

        IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
        else
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.ADD_TRANSLATION';
          Prepare;
          ParamByName('IN_FN_ID').Value := FN_ID;
          ParamByName('IN_F_NAME').Value := frm_editform.Edit_eng_name.EditValue;
          ParamByName('IN_ID_').Value := 0;
          Execute;
          OutText := ParamByName('OUT_TEXT').Value;

          IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING);
        End;

        CDS_FLOWERS.Refresh;
        CDS_FLOWERS.Locate('FN_ID',FN_ID,[]);
        lookcombo_name.EditValue := FN_ID;
        ed_postname.EditValue    :=  frm_editform.Edit_eng_name.EditValue;
        ed_hcode.EditValue       :=  frm_editform.edit_code.EditValue;

      End;
    end;
    lookcombo_type.SetFocus;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  Добавление поставщица
//
procedure TNewD.btn_ins_suplierClick(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  try
    frm_editform                                := Tfrm_editform.Create(Application);
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
    lookcombo_color.SetFocus;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;



//
// Закрываем форму
//
procedure TNewD.BitBtn2Click(Sender: TObject);
begin
  Close;
end;


//
//  Копирование файла в папку
//
procedure TNewD.aFileExecute(Sender: TObject);
var NewFileName: string;
    NewFile: TFileStream;
    OldFile: TFileStream;
begin
  if OpenPictureDialog1.Execute then
  begin
    edit_file.EditValue := ExtractFileName(OpenPictureDialog1.FileName);
    NewFileName := '..\images\'+IntToStr(CUR_DEPT_ID)+'\' + VarToStr(edit_file.EditValue);

    if FileExists(NewFileName) then
       MessageBox(Handle, 'Файл с таким именем уже назначен для товара. Переименуйте файл', 'Внимание', MB_ICONWARNING)
    else
    begin
      OldFile := TFileStream.Create(OpenPictureDialog1.FileName, fmOpenRead or fmShareDenyWrite);
      try
        NewFile := TFileStream.Create(NewFileName, fmCreate or fmShareDenyRead);
        try
          NewFile.CopyFrom(OldFile, OldFile.Size);
        finally
          FreeAndNil(NewFile);
        end;
      finally
        FreeAndNil(OldFile);
      end;
    end; // if FileExists(NewFileName) then
  end;
end;


//
//  Удаляем файл
//
procedure TNewD.aDeleteFileExecute(Sender: TObject);
var NewFileName: string;
    tt: integer;
begin
  if (edit_file.EditingText <> '') then
  begin
    try
      tt := 0;
      if (N_ID > 0) then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('begin NOMENCLATURE_PKG.remove_img(:N_ID_, :tt_); end;');
        DM.SelQ.ParamByName('N_ID_').AsInteger := N_ID;
        DM.SelQ.ParamByName('tt_').AsInteger   := 0;
        DM.SelQ.Execute;
        tt := DM.SelQ.ParamByName('tt_').AsInteger;
      end;

      if (tt = 0) then
      begin
        NewFileName := '..\images\'+IntToStr(CUR_DEPT_ID)+'\' + VarToStr(edit_file.EditValue);
        if FileExists(NewFileName) then
           DeleteFile(NewFileName);
        edit_file.EditValue := '';
        aDeleteFile.Enabled := false;
      end;

    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;


//
//  Поиск по названию
//
procedure TNewD.a_findExecute(Sender: TObject);
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
      lookcombo_name.SetFocus;
    end
    else
      CDS_FLOWERS.Filtered := false;
  end;
end;


//
//  Поиск по цвету
//
procedure TNewD.a_find_cExecute(Sender: TObject);
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
      lookcombo_color.SetFocus;
    end
    else
      CDS_COLOR.Filtered := false;
  end;
end;


//
//  Поиск в названии
//
procedure TNewD.text_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then a_find.Execute;
end;


//
//  Поиск в цвете
//
procedure TNewD.color_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then a_find_c.Execute;
end;











procedure TNewD.BitBtn1Click(Sender: TObject);
VAR
  FN_ID,C_ID,S_ID,FST_ID, retval, OutText : Variant;
  VBN, i, is_id, pass : Integer;
  H_CODE, H_NAME, PACK, LEN, HOL_TYPE, WEIGHT, COL_ID, DIAMETER, BAR_CODE, CUST_COEF, REMARKS, PHOTO : Variant;
  err_str: string;
begin
  cxButton3.SetFocus;
  
  err_str := '';
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

  if (ed_hcode.EditValue <> NULL) and (N_ID_ = -1) and (lookcombo_suplier.EditValue <> NULL) then
  begin
    is_id := 0;

    if (ed_hcode.EditValue <> NULL) then
    begin
      with DM.StorProc do
      Begin
        sql.Clear;
        SQL.Add('select n_id from NOMENCLATURE where H_CODE = :p1 and S_ID = :p2');
        Prepare;
        ParamByName('p1').Value            := ed_hcode.EditValue;
        ParamByName('p2').Value            := lookcombo_suplier.EditValue;
        Open;
        is_id := FieldByName('n_id').AsInteger;
        Close;
      End;
    end;

    if (is_id > 0) then
    begin
      MessageBox(Handle, 'Возможно такая позиция уже введена в БД. Проверте и выберите дельнейшее действие', 'Внимание', MB_ICONWARNING);
      frm_full_info := Tfrm_full_info.Create(Application);
      With frm_full_info do
      Begin
        SelNom.Session := DM.STAR_DB;
        SelNom.ParamByName('N_ID').Value := is_id;
        SelNom.Open;

        if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
        begin
          if FileExists('..\images\'+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
            Image1.Picture.LoadFromFile('..\images\'+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
        end;

        ShowModal;
        Free;
      End;

      if MessageDlg('Завести НОВУЮ номенклатуру?',  mtConfirmation, [mbNo, mbOk], 1) = mrOk then
        pass := 1
      else
      begin
         N_ID         := is_id;
         DM.n_id_     := N_ID;
         ReactivateOraQuery(DM.Nomenclature_one);
         modalresult  := mrOk;
         pass := 0;
      end;

    end
    else pass := 1;

  end;

  if (pass = 1) then
  begin

    FN_ID     := lookcombo_name.EditValue;
    FST_ID    := lookcombo_subtype.EditValue;
    C_ID      := lookcombo_country.EditValue;
    S_ID      := lookcombo_suplier.EditValue;
    COL_ID    := lookcombo_color.EditValue;
    LEN       := cb_length.EditValue;
    PACK      := ed_length.EditValue;
    HOL_TYPE  := imcb_holtype.EditText;
    WEIGHT    := ed_weight.EditValue;
    DIAMETER  := ed_width.EditValue;
    CUST_COEF := ed_cust.EditValue;
    VBN       := Integer(CheckBox1.Checked);
    BAR_CODE  := ed_barcode.EditValue;
    H_NAME    := ed_postname.EditValue;
    H_CODE    := ed_hcode.EditValue;
    REMARKS   := ed_remarks.EditValue;
    PHOTO     := edit_file.EditValue;

    with DM.StorProc do
    Begin
      sql.Clear;
      StoredProcName := 'NOMENCLATURE_PKG.EDIT_NOM';
//      Params.Clear;
      Prepare;

      ParamByName('N_ID_').Value  := N_ID_;
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
      ParamByName('DIAMETER_').Value  := DIAMETER;
      ParamByName('BAR_CODE_').Value  := BAR_CODE;
      ParamByName('CUST_COEF_').Value := CUST_COEF;
      ParamByName('REMARKS_').Value   := REMARKS;
      ParamByName('IN_ID_').Value     := 0;
      ParamByName('PHOTO_').Value     := PHOTO;

      try
        ExecProc;

        RetVal  := ParamByName('IN_ID_').Value;
        OutText := ParamByName('OUT_TEXT').Value;

        if RetVal > 0 then
        begin

          // Insert specifications
          if (tt > 0) {and (not editing)} then
          begin

            sql.Clear;
            StoredProcName := 'NOMENCLATURE_PKG.INS_NOM_SPEC';
//            Params.Clear;
            Prepare;
            try
              for i:=1 to StringGrid1.RowCount-1 do
                begin
                  ParamByName('N_ID_').Value := RetVal;
                  ParamByName('HS_ID_').AsString := StringGrid1.Cells[0,i];
                  ParamByName('HS_VAL_').AsString := StringGrid2.Cells[1,i];
                  ExecProc;
                end;
            except on E: Exception do
              ShowMessage('Получена ошибка при добавлении спецификации: ' + E.Message);
            end;

          End;

            N_ID := RetVal;
            DM.n_id_ := N_ID;

            ReactivateOraQuery(DM.Nomenclature_one);
            DM.Nomenclature2.Refresh;
            DM.Nomenclature2.Locate('N_ID',N_ID,[]);

          modalresult := mrOk;
        end;
        if (Length(OutText) > 0) then ShowMessage(OutText);

      except
        on E: Exception do
          ShowMessage('Получена следующая ошибка: ' + E.Message);
      End;
    End;

  end; // if (pass = 1) then

end;








//
//  Добавляем спецификацию в список
//
procedure TNewD.SpeedButton3Click(Sender: TObject);
begin
 imcb_spec.PostEditValue;
 ed_translate.PostEditValue;
 if tt = 0 then
 begin
   stringgrid1.Cells[0,1] := imcb_spec.EditValue;
   stringgrid2.Cells[0,1] := imcb_spec.EditText;

   if ed_translate.Enabled = true then
   begin
     stringgrid1.Cells[1,1] := ed_translate.EditValue;
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
     stringgrid1.Cells[1,stringgrid1.RowCount-1] := ed_translate.EditValue;
     stringgrid2.Cells[1,stringgrid2.RowCount-1] := ed_translate.EditValue;
   end
   else
   begin
     stringgrid1.Cells[1,stringgrid1.RowCount-1] := imcb_translate.EditValue; // ReadComboEx(ComboBoxEx9);
     stringgrid2.Cells[1,stringgrid2.RowCount-1] := imcb_translate.EditText; // ReadComboExText(ComboBoxEx9);
   end;
 end;
 imcb_spec.SetFocus;
// StringGrid2.SetFocus;
end;


//
//  Убираем спецификацию в список
//
procedure TNewD.SpeedButton4Click(Sender: TObject);
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


procedure TNewD.lookcombo_typePropertiesEditValueChanged(Sender: TObject);
begin
  if CDS_SUBTYPE.RecordCount > 0 then
    lookcombo_subtype.ItemIndex := 0;
end;

end.
