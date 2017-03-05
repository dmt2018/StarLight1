unit UEditRefBooks;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxImageComboBox, star_lib,
  cxSpinEdit, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox, cxContainer, cxEdit,
  cxTextEdit, cxPC, cxControls, StdCtrls, cxButtons, ExtCtrls, Mask, DBCtrlsEh;

type
  TfrmEditRefbooks = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    cxPageControl1: TcxPageControl;
    tsh_regions: TcxTabSheet;
    Label5: TLabel;
    Image1: TImage;
    Ed1: TcxTextEdit;
    tsh_cityes: TcxTabSheet;
    Image2: TImage;
    tsh_countries: TcxTabSheet;
    Image5: TImage;
    Label7: TLabel;
    Label31: TLabel;
    Label41: TLabel;
    edit_country: TcxTextEdit;
    edit_country_eng: TcxTextEdit;
    edit_country_code: TcxTextEdit;
    tsh_suppliers: TcxTabSheet;
    Image6: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Image7: TImage;
    Label35: TLabel;
    Label48: TLabel;
    edit_suplier: TcxTextEdit;
    cb_suplier: TcxCheckBox;
    cb_supplier_days: TcxSpinEdit;
    tsh_promo: TcxTabSheet;
    tsh_clienttypes: TcxTabSheet;
    Image10: TImage;
    tsh_departs: TcxTabSheet;
    Image11: TImage;
    tsh_positions: TcxTabSheet;
    Image12: TImage;
    tsh_units: TcxTabSheet;
    Image23: TImage;
    Label42: TLabel;
    Image24: TImage;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    edUnit_name: TcxTextEdit;
    edUnit_znach_national: TcxTextEdit;
    edUnit_znach_international: TcxTextEdit;
    edUnit_code: TcxSpinEdit;
    edUnit_code_litering_national: TcxTextEdit;
    edUnit_code_litering_international: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ed2: TcxTextEdit;
    ed3: TcxTextEdit;
    Memo1: TMemo;
    Label6: TLabel;
    ed4: TcxTextEdit;
    ed5: TcxTextEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label10: TLabel;
    ed6: TcxTextEdit;
    Memo3: TMemo;
    Label11: TLabel;
    Image4: TImage;
    Label12: TLabel;
    ed7: TcxTextEdit;
    Label15: TLabel;
    Memo4: TMemo;
    Label13: TLabel;
    Znak_EditPercent: TComboBox;
    DBNumberEditEh1: TDBNumberEditEh;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label14: TLabel;
    ed8: TcxTextEdit;
    Label16: TLabel;
    Memo5: TMemo;
    Label17: TLabel;
    ed9: TcxTextEdit;
    Label18: TLabel;
    Memo6: TMemo;
    ed10: TcxTextEdit;
    Label19: TLabel;
    Image8: TImage;
    ChB3: TCheckBox;
    lcb_runames: TcxImageComboBox;
    cb_suplier_c: TcxImageComboBox;
    procedure btnCloseClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
    function MainFormShow : boolean;
  end;

var
  frmEditRefbooks: TfrmEditRefbooks;

implementation

{$R *.dfm}

uses Urefbooks, umain;


function TfrmeditRefbooks.MainFormShow : boolean;
Begin
  Application.CreateForm(TfrmEditRefBooks, frmEditRefBooks);
end;

procedure TfrmEditRefbooks.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditRefbooks.cxButton2Click(Sender: TObject);
var ind, flag, price_part: integer;
begin
  // Пытаемся выполнить SQL запрос
  try

    if ((ttype = 1) or (ttype = 2)) then
    begin
      if ( trim(Ed1.Text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_regions(:name_, :info_, :kod_, :kladr, :id_); end;');
        newDesc.selq.ParamByName('name_').AsString := trim(Ed1.Text);
        newDesc.selq.ParamByName('info_').AsString := Memo1.Text;
        newDesc.selq.ParamByName('id_').AsInteger  := Ed1.Tag;
        newDesc.selq.ParamByName('kod_').AsString  := trim(Ed2.Text);
        newDesc.selq.ParamByName('kladr').AsString := trim(Ed3.Text);
        newDesc.selq.Execute;
        Ed1.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 3) or (ttype = 4)) then
    begin
      if ( trim(ed6.Text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_ADVERTISMENTS(:name_, :info_, :id_); end;');
        newDesc.selq.ParamByName('name_').AsString := trim(Ed6.Text);
        newDesc.selq.ParamByName('info_').AsString := Memo3.Text;
        newDesc.selq.ParamByName('id_').AsInteger  := Ed6.Tag;
        newDesc.selq.Execute;
        Ed6.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 5) or (ttype = 6)) then
    begin
      if ( trim(ed7.text) = '') then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_CLIENT_TYPES(:name_, :info_, :id_, :TTYPE_, :price_part_, :is_contractor_); end;');
        newDesc.selq.ParamByName('name_').AsString := trim(Ed7.Text);
        newDesc.selq.ParamByName('info_').AsString := Memo4.Text;
        newDesc.selq.ParamByName('id_').AsInteger  := Ed7.Tag;
        if checkBox1.Checked = true then newDesc.selq.ParamByName('TTYPE_').Value := 1
        else newDesc.selq.ParamByName('TTYPE_').Value := 0;
        if checkBox2.Checked = true then newDesc.selq.ParamByName('is_contractor_').AsInteger := 1
        else newDesc.selq.ParamByName('is_contractor_').AsInteger := 0;
        if DBNumberEditEh1.Value = NULL then price_part := 0
        else
        begin
          if (Znak_EditPercent.Text = '-') then
            price_part := StrToInt('-'+DBNumberEditEh1.Text)
          else
            price_part := StrToInt(DBNumberEditEh1.Text);
        end;
        newDesc.selq.ParamByName('price_part_').AsInteger := price_part;
        newDesc.selq.Execute;
        Ed7.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 7) or (ttype = 8)) then
    begin
      if ( trim(ed8.text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_DEPARTMENTS(:name_, :info_, :id_, :TTYPE_); end;');
        newDesc.selq.ParamByName('name_').AsString := trim(Ed8.Text);
        newDesc.selq.ParamByName('info_').AsString := Memo5.Text;
        newDesc.selq.ParamByName('id_').AsInteger  := Ed8.Tag;
        if chb3.Checked = true then newDesc.selq.ParamByName('TTYPE_').Value := 1
        else newDesc.selq.ParamByName('TTYPE_').Value := 0;
        newDesc.selq.Execute;
        Ed8.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 9) or (ttype = 10)) then
    begin
      if ( trim(ed9.text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_JOB_TITLES(:name_, :info_, :id_); end;');
        newDesc.selq.ParamByName('name_').AsString := trim(Ed9.Text);
        newDesc.selq.ParamByName('info_').AsString := Memo6.Text;
        newDesc.selq.ParamByName('id_').AsInteger  := Ed9.Tag;
        newDesc.selq.Execute;
        Ed9.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 11) or (ttype = 12)) then
    begin
      if ( trim(ed4.text) = '' ) or ( trim(lcb_runames.text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        if lcb_runames.ItemIndex < 1 then
        begin
          Application.MessageBox('Необходимо указать регион','Внимание',MB_ICONWARNING);
          exit;
        end;
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin BOOKS.save_city(:v_city, :v_kod, :v_id_region, :id_); end;');
        newDesc.selq.ParamByName('v_city').AsString := trim(Ed4.Text);
        newDesc.selq.ParamByName('v_kod').AsString  := trim(Ed5.Text);
        newDesc.selq.ParamByName('v_id_region').AsInteger := lcb_runames.EditValue;
        newDesc.selq.ParamByName('id_').AsInteger   := Ed4.Tag;
        newDesc.selq.Execute;
        Ed4.Tag := newDesc.selq.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;
    
    if ((ttype = 13) or (ttype = 14)) then
    begin
      if ( trim(edit_country.Text) = '' )  then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        newDesc.selq.SQL.Add('begin NOMENCLATURE_PKG.SAVE_DATA(:ID_, :NAME_, :NAME2_, :mnemo_, :FNT_ID, :what_, :where_, :dep_, :digit_, :in_id_, :OUT_TEXT); end;');
        if ttype = 13 then newDesc.selq.ParamByName('ID_').Value    := 0;
        if ttype = 14 then newDesc.selq.ParamByName('ID_').Value    := edit_country.Tag;
        newDesc.selq.ParamByName('NAME_').Value  := trim(edit_country.Text);
        newDesc.selq.ParamByName('NAME2_').Value := trim(edit_country_eng.Text);
        newDesc.selq.ParamByName('mnemo_').Value := trim(edit_country_code.Text);
        newDesc.selq.ParamByName('FNT_ID').Value := 0;
        if ttype = 13 then newDesc.selq.ParamByName('what_').Value  := 0;
        if ttype = 14 then newDesc.selq.ParamByName('what_').Value  := 1;
        newDesc.selq.ParamByName('where_').Value := 0;
        newDesc.selq.ParamByName('dep_').Value   := 0;
        newDesc.selq.ParamByName('digit_').Value := trim(Ed10.Text);
        newDesc.selq.ParamByName('in_id_').Value := 0;
        newDesc.selq.Execute;
        edit_country.Tag := newDesc.selq.ParamByName('in_id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 15) or (ttype = 16)) then
    begin
      if ( trim(edit_suplier.Text) = '' ) or ( trim(cb_suplier_c.Text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        if ttype = 15 then newDesc.selq.SQL.Add('begin NOMENCLATURE_PKG.INSERT_SUPPLIERS(:S_NAME_RU_, :C_ID_, :NEED_CUST_, :ANALYZE_DAYS_, :in_id_, :OUT_TEXT); end;');
        if ttype = 16 then
        begin
          newDesc.selq.SQL.Add('begin NOMENCLATURE_PKG.UPDATE_SUPPLIERS(:S_ID_, :S_NAME_RU_, :C_ID_, :NEED_CUST_, :ANALYZE_DAYS_, :in_id_, :OUT_TEXT); end;');
          newDesc.selq.ParamByName('S_ID_').Value       := edit_suplier.Tag;
        end;
        newDesc.selq.ParamByName('S_NAME_RU_').Value    := trim(edit_suplier.Text);
        newDesc.selq.ParamByName('C_ID_').value         := cb_suplier_c.EditValue;  // страна
        //таможня гтд:
        if cb_suplier.Checked = true then newDesc.selq.ParamByName('NEED_CUST_').AsString  := '1';
        if cb_suplier.Checked = false then newDesc.selq.ParamByName('NEED_CUST_').AsString := '0';
        newDesc.selq.ParamByName('ANALYZE_DAYS_').value := trim(cb_supplier_days.Text);
        newDesc.selq.ParamByName('in_id_').Value        := 0;  // на входе 0 на выходе id записи
        newDesc.selq.Execute;
        edit_suplier.Tag := newDesc.selq.ParamByName('in_id_').AsInteger;
        ModalResult := mrOk;
      end;
    end;

    if ((ttype = 17) or (ttype = 18)) then
    begin
      if ( trim(edUnit_code.Text) = '' ) or ( trim(edUnit_name.Text) = '' ) then ShowMessage('Вы не заполнили обязательные поля!') else
      begin
        newDesc.selq.SQL.Clear;
        if ttype = 17 then newDesc.SelQ.SQL.Add('insert into nsi_units values(get_office_unique(''UNIVERSAL_ID''),'
           +VarToStr(edUnit_code.EditValue)+', '''
           +VarToStr(edUnit_name.EditValue)+''', '''
           +VarToStr(edUnit_znach_national.EditValue)+''', '''
           +VarToStr(edUnit_znach_international.EditValue)+''', '''
           +VarToStr(edUnit_code_litering_national.EditValue)+''', '''
           +VarToStr(edUnit_code_litering_international.EditValue)+''')');

        newDesc.SelQ.Execute;
        ModalResult := mrOk;
       end;
    end;

    except
      on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
    End;

end;

procedure TfrmEditRefbooks.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEditRefbooks.FormShow(Sender: TObject);
 var i:integer;
begin

  for i:=0 to cxPageControl1.PageCount-1 do cxPageControl1.Pages[i].TabVisible := false;
  cxPageControl1.Pages[newDesc.page].TabVisible := true;
  cxPageControl1.ActivePageIndex := newDesc.page;

  //заполнение комбобоксов
  if (ttype = 11) or (ttype = 12) then
  begin
    FillImgComboCx(newDesc.Q_REGIONS,lcb_Runames,'Выберите...');
    lcb_Runames.EditValue := lcb_Runames.Tag;
  end;
  if (ttype = 15) or (ttype = 16) then
  begin
    FillImgComboCx(newDesc.Q_CTRS,cb_suplier_c,'Выберите...');
    cb_suplier_c.EditValue := cb_suplier_c.Tag;
  end;

end;

end.
