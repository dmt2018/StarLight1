unit SetParsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Menus, cxLookAndFeelPainters,
  cxGraphics, ExtDlgs, DB, DBAccess, Ora, MemDS, cxImageComboBox, cxSpinEdit,
  cxDropDownEdit, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ActnList, cxButtons,
  ExtCtrls, PI_Library, cxCurrencyEdit, cxCheckBox;

type
  TSetParsF = class(TForm)
    Panel2: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    ActionList1: TActionList;
    aSave: TAction;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label17: TLabel;
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
    Panel8: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    ed_length: TcxSpinEdit;
    ed_width: TcxSpinEdit;
    ed_cust: TcxSpinEdit;
    imcb_holtype: TcxImageComboBox;
    ActionList2: TActionList;
    a_find: TAction;
    a_find_c: TAction;
    aFile: TAction;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    CDS_SUBTYPE: TOraQuery;
    CDS_SUBTYPEFST_ID: TFloatField;
    CDS_SUBTYPEF_SUB_TYPE: TStringField;
    CDS_COLOR: TOraQuery;
    CDS_COLORCOL_ID: TFloatField;
    CDS_COLORCOLOUR: TStringField;
    CDS_COUNTRY: TOraQuery;
    CDS_COUNTRYC_ID: TIntegerField;
    CDS_COUNTRYCOUNTRY: TStringField;
    CDS_TYPE: TOraQuery;
    CDS_TYPEFT_ID: TFloatField;
    CDS_TYPEF_TYPE: TStringField;
    CDS_TYPEFT_ID_: TFloatField;
    CDS_FLOWERS: TOraQuery;
    CDS_FLOWERSFN_ID: TFloatField;
    CDS_FLOWERSF_NAME_RU: TStringField;
    DS_FLOWERS: TOraDataSource;
    DS_TYPE: TOraDataSource;
    DS_COUNTRY: TOraDataSource;
    DS_COLOR: TOraDataSource;
    DS_SUBTYPE: TOraDataSource;
    DS_SUPPLIER: TOraDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Label5: TLabel;
    ed_weight_dry: TcxCurrencyEdit;
    ed_weight: TcxCurrencyEdit;
    Label22: TLabel;
    cb_length: TcxSpinEdit;
    Label37: TLabel;
    edTnVed: TcxTextEdit;
    Label2: TLabel;
    ed_holcodename: TcxTextEdit;
    Label23: TLabel;
    ed_hol_color: TcxTextEdit;
    Label19: TLabel;
    imcb_units: TcxImageComboBox;
    ed_length_hol: TcxSpinEdit;
    Label9: TLabel;
    ed_remarks: TcxTextEdit;
    cb_new: TcxCheckBox;
    cb_start: TcxCheckBox;
    cb_end: TcxCheckBox;
    CheckBox1: TcxCheckBox;
    chbNoPrint: TcxCheckBox;
    chbNotUse: TcxCheckBox;
    cb_sait: TcxCheckBox;
    cb_no_order: TcxCheckBox;
    procedure aSaveExecute(Sender: TObject);
    procedure a_findExecute(Sender: TObject);
    procedure a_find_cExecute(Sender: TObject);
    procedure aFileExecute(Sender: TObject);
    procedure text_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure color_findKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lookcombo_typePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetParsF: TSetParsF;

implementation

uses DataModule, Globals;

{$R *.dfm}

//
//  Копирование файла в папку
//
procedure TSetParsF.aFileExecute(Sender: TObject);
var NewFileName: string;
    NewFile: TFileStream;
    OldFile: TFileStream;
begin
{  Теперь все фотографии будут автоматически подставлятся по внутреннему артиклу

  if OpenPictureDialog1.Execute then
  begin
    edit_file.EditValue := ExtractFileName(OpenPictureDialog1.FileName);
    NewFileName := '..\images\'+IntToStr(CUR_DEPT_ID)+'\' + VarToStr(edit_file.EditValue);
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
  end;
}
end;


procedure TSetParsF.aSaveExecute(Sender: TObject);
begin
  cxButton2.SetFocus;
  if MessageDlg('Вы уверены в правильности установленных значений?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
     Modalresult := mrOk;
end;


//
//  Поиск по названию
//
procedure TSetParsF.a_findExecute(Sender: TObject);
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


//
//  Поиск по цвету
//
procedure TSetParsF.a_find_cExecute(Sender: TObject);
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



procedure TSetParsF.color_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then a_find_c.Execute;
end;


procedure TSetParsF.FormShow(Sender: TObject);
begin
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
  lookcombo_subtype.EditValue  := -1;

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
  //cb_length.ItemIndex       := -1;
  cb_length.EditValue       := 0;

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_holtype, '');
  imcb_holtype.EditValue    := -1;


  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT nsi_units_id, nsi_name FROM nsi_units ORDER BY nsi_name');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_units, '');


  ed_length.EditValue       := 0;
  ed_length_hol.EditValue   := 0;
  ed_width.EditValue        := 0;
  ed_weight.EditValue       := 0;
  ed_weight_dry.EditValue   := 0;
  ed_cust.EditValue         := 0;
  edTnVed.EditValue         := '';

  ed_holcodename.EditValue  := '';
  ed_hol_color.EditValue    := '';
  ed_remarks.EditValue      := '';

  CheckBox1.EditValue       := 2;
  chbNoPrint.EditValue      := 2;
  chbNotUse.EditValue       := 2;
  cb_new.EditValue          := 2;
  cb_start.EditValue        := 2;
  cb_end.EditValue          := 2;
end;


procedure TSetParsF.lookcombo_typePropertiesEditValueChanged(Sender: TObject);
begin
  if CDS_SUBTYPE.RecordCount > 0 then
    lookcombo_subtype.ItemIndex := 0;
end;


procedure TSetParsF.text_findKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (KEY = VK_RETURN) then a_find.Execute;
end;

end.
