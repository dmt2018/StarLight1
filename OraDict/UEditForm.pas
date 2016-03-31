unit UEditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxCheckBox, cxGroupBox, StdCtrls,
  cxContainer, cxEdit, cxTextEdit, cxPC, cxControls, ActnList, cxButtons,
  ExtCtrls, cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox, cxSpinEdit;

type
  Tfrm_editform = class(TForm)
    Panel2: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    ActionList1: TActionList;
    aSave: TAction;
    cxPageControl1: TcxPageControl;
    tsh_name: TcxTabSheet;
    tsh_translate: TcxTabSheet;
    Edit_name: TcxTextEdit;
    Label5: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Edit_eng_name: TcxTextEdit;
    Label3: TLabel;
    Image1: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Image3: TImage;
    Image4: TImage;
    Label6: TLabel;
    edit_translate: TcxTextEdit;
    tsh_country: TcxTabSheet;
    Image5: TImage;
    Label7: TLabel;
    edit_country: TcxTextEdit;
    tsh_suplier: TcxTabSheet;
    Image6: TImage;
    Label8: TLabel;
    edit_suplier: TcxTextEdit;
    cb_suplier: TcxCheckBox;
    Label9: TLabel;
    Image7: TImage;
    cb_suplier_c: TcxLookupComboBox;
    tsh_types: TcxTabSheet;
    Label10: TLabel;
    Image8: TImage;
    Image9: TImage;
    Label11: TLabel;
    edit_type: TcxTextEdit;
    imcb_holtype: TcxImageComboBox;
    Label12: TLabel;
    tsh_subtype: TcxTabSheet;
    Image10: TImage;
    Label13: TLabel;
    edit_subtype: TcxTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    edit_sub_eng: TcxTextEdit;
    edit_subshort: TcxTextEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edit_weight: TcxSpinEdit;
    tsh_change_subtype: TcxTabSheet;
    Image11: TImage;
    Label19: TLabel;
    lcb_types: TcxLookupComboBox;
    tsh_color: TcxTabSheet;
    Image12: TImage;
    Label20: TLabel;
    edit_color: TcxTextEdit;
    tsh_spec: TcxTabSheet;
    Image13: TImage;
    Label21: TLabel;
    edit_spec_kod: TcxTextEdit;
    Image14: TImage;
    Label22: TLabel;
    edit_spec_name: TcxTextEdit;
    Image15: TImage;
    Label23: TLabel;
    edit_spec_latname: TcxTextEdit;
    Label24: TLabel;
    edit_spec_pref_lat: TcxTextEdit;
    Label25: TLabel;
    edit_spec_pref: TcxTextEdit;
    cb_spec_trans: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    Label26: TLabel;
    Image16: TImage;
    edit_trans_rus: TcxTextEdit;
    Image17: TImage;
    Label28: TLabel;
    edit_trans_lat: TcxTextEdit;
    tsh_spec_trans: TcxTabSheet;
    Image18: TImage;
    Label27: TLabel;
    edit_spec_trans: TcxTextEdit;
    Image19: TImage;
    Label29: TLabel;
    edit_spec_trans_lat: TcxTextEdit;
    Image20: TImage;
    Label31: TLabel;
    edit_country_eng: TcxTextEdit;
    Label1: TLabel;
    edit_code: TcxTextEdit;
    Label32: TLabel;
    edit_remarks: TcxTextEdit;
    Label30: TLabel;
    edit_translate_code: TcxTextEdit;
    edit_translate_remarks: TcxTextEdit;
    Label33: TLabel;
    Image2: TImage;
    Label34: TLabel;
    lcb_runames: TcxLookupComboBox;
    Label35: TLabel;
    Label36: TLabel;
    edit_subprefix: TcxTextEdit;
    Label37: TLabel;
    edTnVed: TcxTextEdit;
    tshPacks: TcxTabSheet;
    Image21: TImage;
    Label38: TLabel;
    ed_pack_name: TcxTextEdit;
    Image22: TImage;
    Label39: TLabel;
    ed_pack_quantity: TcxTextEdit;
    Label40: TLabel;
    ed_pack_type: TcxTextEdit;
    cb_pack_type: TcxImageComboBox;
    Label41: TLabel;
    edit_country_code: TcxTextEdit;
    tsh_unit: TcxTabSheet;
    Image23: TImage;
    Label42: TLabel;
    edUnit_name: TcxTextEdit;
    Image24: TImage;
    Label43: TLabel;
    edUnit_znach_national: TcxTextEdit;
    Label44: TLabel;
    edUnit_znach_international: TcxTextEdit;
    edUnit_code: TcxSpinEdit;
    Label45: TLabel;
    Label46: TLabel;
    edUnit_code_litering_national: TcxTextEdit;
    Label47: TLabel;
    edUnit_code_litering_international: TcxTextEdit;
    cb_supplier_days: TcxSpinEdit;
    Label48: TLabel;
    Label49: TLabel;
    edit_weight_dry: TcxSpinEdit;
    procedure aSaveExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure cb_suplier_cPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_editform: Tfrm_editform;

implementation

uses DataModule;

{$R *.dfm}

procedure Tfrm_editform.aSaveExecute(Sender: TObject);
begin
  cxButton2.SetFocus;

  // Название
  if cxPageControl1.ActivePageIndex = 0 then
  begin
    if ( Length(Trim(VarToStr(Edit_name.EditValue))) = 0 ) then
    begin
      MessageBox(Handle, 'Необходимо ввести наименование', 'Внимание', MB_ICONWARNING);
      exit;
    end;
    Modalresult := mrOk;
  end;

  // Название поставщика
  if cxPageControl1.ActivePageIndex = 1 then
  begin
    if ( Length(Trim(VarToStr(edit_translate.EditValue))) = 0 ) then
    begin
      MessageBox(Handle, 'Необходимо ввести наименование', 'Внимание', MB_ICONWARNING);
      exit;
    end;
    if ( lcb_runames.ItemIndex < 0 ) then
    begin
      MessageBox(Handle, 'Необходимо указать перевод', 'Внимание', MB_ICONWARNING);
      exit;
    end;
    Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 2 then
  begin
    if ( Length(Trim(VarToStr(edit_country.EditValue))) = 0 ) or ( Length(Trim(VarToStr(edit_country_eng.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести названия страны', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 3 then
  begin
    if ( Length(Trim(VarToStr(edit_suplier.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название поставщика', 'Внимание', MB_ICONWARNING)
    else
      if (cb_suplier_c.EditValue > 0) then
        Modalresult := mrOk
      else
        MessageBox(Handle, 'Необходимо указать страну', 'Внимание', MB_ICONWARNING)
  end;

  if cxPageControl1.ActivePageIndex = 4 then
  begin
    if ( Length(Trim(VarToStr(edit_type.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название типа товара', 'Внимание', MB_ICONWARNING)
    else
      if (imcb_holtype.EditValue > -1) then
        Modalresult := mrOk
      else
        MessageBox(Handle, 'Необходимо указать голландский тип', 'Внимание', MB_ICONWARNING)
  end;

  if cxPageControl1.ActivePageIndex = 5 then
  begin
    if ( Length(Trim(VarToStr(edit_subtype.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название подтипа товара', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 6 then
  begin
    if ( lcb_types.EditValue < 1 ) then
      MessageBox(Handle, 'Необходимо выбрать тип товара', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 7 then
  begin
    if ( Length(Trim(VarToStr(edit_color.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название цвета', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;


  if cxPageControl1.ActivePageIndex = 8 then
  begin
    if ( Length(Trim(VarToStr(edit_spec_kod.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести код', 'Внимание', MB_ICONWARNING);
    if ( Length(Trim(VarToStr(edit_spec_name.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название', 'Внимание', MB_ICONWARNING);
    if ( Length(Trim(VarToStr(edit_spec_latname.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести гол. название', 'Внимание', MB_ICONWARNING);

    if (cxGroupBox2.Enabled = true) then
    begin
      if (( Length(Trim(VarToStr(edit_trans_rus.EditValue))) = 0 ) and (cb_spec_trans.Checked = true )) then
        MessageBox(Handle, 'Необходимо ввести содержание русское', 'Внимание', MB_ICONWARNING);
      if (( Length(Trim(VarToStr(edit_trans_lat.EditValue))) = 0 ) and (cb_spec_trans.Checked = true )) then
        MessageBox(Handle, 'Необходимо ввести содержание латинское', 'Внимание', MB_ICONWARNING);
    end;

    if ( Length(Trim(VarToStr(edit_spec_kod.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(edit_spec_name.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(edit_spec_latname.EditValue))) > 0 )
        and ((( Length(Trim(VarToStr(edit_trans_rus.EditValue))) > 0 ) or (cb_spec_trans.Checked = false )) or (cxGroupBox2.Enabled = false))
        and ((( Length(Trim(VarToStr(edit_trans_lat.EditValue))) > 0 ) or (cb_spec_trans.Checked = false )) or (cxGroupBox2.Enabled = false))
    then Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 9 then
  begin
    if ( Length(Trim(VarToStr(edit_spec_trans.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести содержание русское', 'Внимание', MB_ICONWARNING);
    if (( Length(Trim(VarToStr(edit_spec_trans_lat.EditValue))) = 0 ) and (cxGroupBox1.Visible = true )) then
      MessageBox(Handle, 'Необходимо ввести содержание латинское', 'Внимание', MB_ICONWARNING);

    if ( Length(Trim(VarToStr(edit_spec_trans.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(edit_spec_trans_lat.EditValue))) > 0)
    then Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 10 then
  begin
    if ( Length(Trim(VarToStr(ed_pack_name.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название подтипа', 'Внимание', MB_ICONWARNING);
    if ( Length(Trim(VarToStr(ed_pack_quantity.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести количество в упаковке', 'Внимание', MB_ICONWARNING);

    if ( Length(Trim(VarToStr(ed_pack_name.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(ed_pack_quantity.EditValue))) > 0)
    then Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 11 then
  begin
    if ( edUnit_code.EditValue = 0 ) then
      MessageBox(Handle, 'Необходимо ввести код единицы измерения', 'Внимание', MB_ICONWARNING);
    if ( Length(Trim(VarToStr(edUnit_name.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести назкание единицы измерения', 'Внимание', MB_ICONWARNING);

    if ( edUnit_code.EditValue > 0 )
        and ( Length(Trim(VarToStr(edUnit_name.EditValue))) > 0)
    then Modalresult := mrOk;
  end;

end;



procedure Tfrm_editform.cb_suplier_cPropertiesChange(Sender: TObject);
begin
 cb_suplier.Checked := not (cb_suplier_c.EditValue = 230);
end;

procedure Tfrm_editform.cxCheckBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if (cxGroupBox2.Enabled = true) then
    cxGroupBox2.Visible := cb_spec_trans.Checked;
end;

procedure Tfrm_editform.FormShow(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then Edit_name.SetFocus;
  if cxPageControl1.ActivePageIndex = 1 then edit_translate.SetFocus;
  if cxPageControl1.ActivePageIndex = 2 then edit_country.SetFocus;
  if cxPageControl1.ActivePageIndex = 3 then edit_suplier.SetFocus;
  if cxPageControl1.ActivePageIndex = 4 then edit_type.SetFocus;
  if cxPageControl1.ActivePageIndex = 5 then edit_subtype.SetFocus;
  if cxPageControl1.ActivePageIndex = 6 then lcb_types.SetFocus;
  if cxPageControl1.ActivePageIndex = 7 then edit_color.SetFocus;
  if cxPageControl1.ActivePageIndex = 8 then edit_spec_kod.SetFocus;
  if cxPageControl1.ActivePageIndex = 9 then edit_spec_trans.SetFocus;
  if cxPageControl1.ActivePageIndex = 10 then ed_pack_name.SetFocus;
end;

end.
