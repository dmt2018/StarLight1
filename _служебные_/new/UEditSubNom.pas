unit UEditSubNom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ExtCtrls, cxImageComboBox, cxSpinEdit, cxCheckBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxContainer,
  cxEdit, cxTextEdit, cxPC, cxControls;

type
  TfrmEditSubNom = class(TForm)
    cxPageControl1: TcxPageControl;
    tsh_name: TcxTabSheet;
    Label5: TLabel;
    Image1: TImage;
    Edit_name: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label32: TLabel;
    Edit_eng_name: TcxTextEdit;
    edit_code: TcxTextEdit;
    edit_remarks: TcxTextEdit;
    tsh_translate: TcxTabSheet;
    Image4: TImage;
    Label6: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Image2: TImage;
    Label34: TLabel;
    edit_translate: TcxTextEdit;
    edit_translate_code: TcxTextEdit;
    edit_translate_remarks: TcxTextEdit;
    lcb_runames: TcxLookupComboBox;
    tsh_types: TcxTabSheet;
    Label10: TLabel;
    Image8: TImage;
    Image9: TImage;
    Label11: TLabel;
    Label12: TLabel;
    edit_type: TcxTextEdit;
    imcb_holtype: TcxImageComboBox;
    tsh_subtype: TcxTabSheet;
    Image10: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label49: TLabel;
    edit_subtype: TcxTextEdit;
    edit_sub_eng: TcxTextEdit;
    edit_subshort: TcxTextEdit;
    edit_weight: TcxSpinEdit;
    edit_subprefix: TcxTextEdit;
    edTnVed: TcxTextEdit;
    edit_weight_dry: TcxSpinEdit;
    tsh_change_subtype: TcxTabSheet;
    Image11: TImage;
    Label19: TLabel;
    lbl_change_subtype: TLabel;
    lcb_types: TcxLookupComboBox;
    lcb_subtypes: TcxLookupComboBox;
    tsh_color: TcxTabSheet;
    Image12: TImage;
    Label20: TLabel;
    edit_color: TcxTextEdit;
    tsh_spec: TcxTabSheet;
    Image13: TImage;
    Label21: TLabel;
    Image14: TImage;
    Label22: TLabel;
    Image15: TImage;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edit_spec_kod: TcxTextEdit;
    edit_spec_name: TcxTextEdit;
    edit_spec_latname: TcxTextEdit;
    edit_spec_pref_lat: TcxTextEdit;
    edit_spec_pref: TcxTextEdit;
    cb_spec_trans: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    Label26: TLabel;
    Image16: TImage;
    Image17: TImage;
    Label28: TLabel;
    edit_trans_rus: TcxTextEdit;
    edit_trans_lat: TcxTextEdit;
    tsh_spec_trans: TcxTabSheet;
    Image18: TImage;
    Label27: TLabel;
    Image19: TImage;
    Label29: TLabel;
    edit_spec_trans: TcxTextEdit;
    edit_spec_trans_lat: TcxTextEdit;
    tshPacks: TcxTabSheet;
    Image21: TImage;
    Label38: TLabel;
    Image22: TImage;
    Label39: TLabel;
    Label40: TLabel;
    ed_pack_name: TcxTextEdit;
    ed_pack_quantity: TcxTextEdit;
    ed_pack_type: TcxTextEdit;
    cb_pack_type: TcxImageComboBox;
    Panel1: TPanel;
    Label4: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditSubNom: TfrmEditSubNom;

implementation

{$R *.dfm}

procedure TfrmEditSubNom.cxButton2Click(Sender: TObject);
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
    if ( Length(Trim(VarToStr(edit_type.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название типа товара', 'Внимание', MB_ICONWARNING)
    else
      if (imcb_holtype.EditValue > -1) then
        Modalresult := mrOk
      else
        MessageBox(Handle, 'Необходимо указать голландский тип', 'Внимание', MB_ICONWARNING)
  end;

  if cxPageControl1.ActivePageIndex = 3 then
  begin
    if ( Length(Trim(VarToStr(edit_subtype.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название подтипа товара', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 4 then
  begin
    if ( lcb_types.EditValue < 1 ) and lcb_types.Visible then
      MessageBox(Handle, 'Необходимо выбрать тип товара', 'Внимание', MB_ICONWARNING)
    else
      if ( lcb_subtypes.EditValue < 1 ) and lcb_subtypes.Visible then
        MessageBox(Handle, 'Необходимо выбрать подтип товара', 'Внимание', MB_ICONWARNING)
      else
        Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 5 then
  begin
    if ( Length(Trim(VarToStr(edit_color.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название цвета', 'Внимание', MB_ICONWARNING)
    else
      Modalresult := mrOk;
  end;


  if cxPageControl1.ActivePageIndex = 6 then
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

  if cxPageControl1.ActivePageIndex = 7 then
  begin
    if ( Length(Trim(VarToStr(edit_spec_trans.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести содержание русское', 'Внимание', MB_ICONWARNING);
    if (( Length(Trim(VarToStr(edit_spec_trans_lat.EditValue))) = 0 ) and (cxGroupBox1.Visible = true )) then
      MessageBox(Handle, 'Необходимо ввести содержание латинское', 'Внимание', MB_ICONWARNING);

    if ( Length(Trim(VarToStr(edit_spec_trans.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(edit_spec_trans_lat.EditValue))) > 0)
    then Modalresult := mrOk;
  end;

  if cxPageControl1.ActivePageIndex = 8 then
  begin
    if ( Length(Trim(VarToStr(ed_pack_name.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести название подтипа', 'Внимание', MB_ICONWARNING);
    if ( Length(Trim(VarToStr(ed_pack_quantity.EditValue))) = 0 ) then
      MessageBox(Handle, 'Необходимо ввести количество в упаковке', 'Внимание', MB_ICONWARNING);

    if ( Length(Trim(VarToStr(ed_pack_name.EditValue))) > 0 )
        and ( Length(Trim(VarToStr(ed_pack_quantity.EditValue))) > 0)
    then Modalresult := mrOk;
  end;

end;

procedure TfrmEditSubNom.FormShow(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex = 0 then Edit_name.SetFocus;
  if cxPageControl1.ActivePageIndex = 1 then edit_translate.SetFocus;
  if cxPageControl1.ActivePageIndex = 2 then edit_type.SetFocus;
  if cxPageControl1.ActivePageIndex = 3 then edit_subtype.SetFocus;
  if (cxPageControl1.ActivePageIndex = 4) and lcb_types.Visible then lcb_types.SetFocus;
  if (cxPageControl1.ActivePageIndex = 4) and lcb_subtypes.Visible then lcb_subtypes.SetFocus;
  if cxPageControl1.ActivePageIndex = 5 then edit_color.SetFocus;
  if cxPageControl1.ActivePageIndex = 6 then edit_spec_kod.SetFocus;
  if cxPageControl1.ActivePageIndex = 7 then edit_spec_trans.SetFocus;
  if cxPageControl1.ActivePageIndex = 8 then ed_pack_name.SetFocus;
end;

end.
