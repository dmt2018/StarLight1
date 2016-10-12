unit UEditRefBook;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, ActnList, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  StdCtrls, Mask, DBCtrlsEh, cxButtons, Buttons, ExtCtrls;

type
  TfrmEditRefBook = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    btnClos: TcxButton;
    btnClear: TcxButton;
    btnSav: TcxButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    DBNumberEditEh1: TDBNumberEditEh;
    Znak_EditPercent: TComboBox;
    pnlCity: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    imcbRegion: TcxImageComboBox;
    Edit3: TEdit;
    ActionList1: TActionList;
    aCtrlEnter: TAction;
    CheckBox2: TCheckBox;
    procedure btnClosClick(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imcbRegionPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
  end;

var
  frmEditRefBook: TfrmEditRefBook;

implementation

{$R *.dfm}

uses //UClientTypes, URegions, Ucity, Upromo, Udepartments, Upositions, Ucountries, Usuppliers, UUnits,
Urefbooks;

// Запись
procedure TfrmEditRefBook.aCtrlEnterExecute(Sender: TObject);
var ind, flag, price_part: integer; 
begin
  if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    // Пытаемся выполнить SQL запрос
    try

    if ((ttype = 1) or (ttype = 2)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_regions(:name_, :info_, :kod_, :kladr, :id_); end;');
      frmrefbooks.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('info_').AsString := Memo1.Text;
      frmrefbooks.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmrefbooks.selq.ParamByName('kod_').AsString := trim(Edit2.Text);
      frmrefbooks.selq.ParamByName('kladr').AsString := trim(Edit3.Text);
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 3) or (ttype = 4)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_ADVERTISMENTS(:name_, :info_, :id_); end;');
      frmrefbooks.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('info_').AsString := Memo1.Text;
      frmrefbooks.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 5) or (ttype = 6)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_CLIENT_TYPES(:name_, :info_, :id_, :TTYPE_, :price_part_, :is_contractor_); end;');
      frmrefbooks.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('info_').AsString := Memo1.Text;
      frmrefbooks.selq.ParamByName('id_').AsInteger  := Edit1.Tag;

      if checkBox1.Checked = true then frmrefbooks.selq.ParamByName('TTYPE_').Value := 1
      else frmrefbooks.selq.ParamByName('TTYPE_').Value := 0;

      if checkBox2.Checked = true then frmrefbooks.selq.ParamByName('is_contractor_').AsInteger := 1
      else frmrefbooks.selq.ParamByName('is_contractor_').AsInteger := 0;

      if DBNumberEditEh1.Value = NULL then price_part := 0
      else
      begin
        if (Znak_EditPercent.Text='-') then
          price_part:= StrToInt('-'+DBNumberEditEh1.Text)
        else
          price_part:= StrToInt(DBNumberEditEh1.Text);
      end;
      frmrefbooks.selq.ParamByName('price_part_').AsInteger := price_part;

      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 7) or (ttype = 8)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_DEPARTMENTS(:name_, :info_, :id_, :TTYPE_); end;');
      frmrefbooks.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('info_').AsString := Memo1.Text;
      frmrefbooks.selq.ParamByName('id_').AsInteger := Edit1.Tag;

      if checkBox1.Checked = true then frmrefbooks.selq.ParamByName('TTYPE_').Value := 1
      else frmrefbooks.selq.ParamByName('TTYPE_').Value := 0;

      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 9) or (ttype = 10)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_JOB_TITLES(:name_, :info_, :id_); end;');
      frmrefbooks.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('info_').AsString := Memo1.Text;
      frmrefbooks.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 11) or (ttype = 12)) then
    begin
      if imcbRegion.ItemIndex < 1 then
      begin
        Application.MessageBox('Необходимо указать регион','Внимание',MB_ICONWARNING);
        exit;
      end;
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin BOOKS.save_city(:v_city, :v_kod, :v_id_region, :id_); end;');
      frmrefbooks.selq.ParamByName('v_city').AsString := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('v_kod').AsString := trim(Edit2.Text);
      frmrefbooks.selq.ParamByName('v_id_region').AsInteger := imcbRegion.EditValue;
      frmrefbooks.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 13) or (ttype = 14)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      frmrefbooks.selq.SQL.Add('begin NOMENCLATURE_PKG.SAVE_DATA(:ID_, :NAME_, :NAME2_, :mnemo_, :FNT_ID, :what_, :where_, :dep_, :digit_, :in_id_, :OUT_TEXT); end;');
      if ttype = 13 then frmrefbooks.selq.ParamByName('ID_').Value    := 0;
      if ttype = 14 then frmrefbooks.selq.ParamByName('ID_').Value    := Edit1.Tag;
      frmrefbooks.selq.ParamByName('NAME_').Value  := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('NAME2_').Value := Memo1.Text;
      frmrefbooks.selq.ParamByName('mnemo_').Value := trim(Edit2.Text);
      frmrefbooks.selq.ParamByName('FNT_ID').Value := 0;
      if ttype = 13 then frmrefbooks.selq.ParamByName('what_').Value  := 0;
      if ttype = 14 then frmrefbooks.selq.ParamByName('what_').Value  := 1;
      frmrefbooks.selq.ParamByName('where_').Value := 0;
      frmrefbooks.selq.ParamByName('dep_').Value   := 0;
      frmrefbooks.selq.ParamByName('digit_').Value :=trim(Edit3.Text);
      frmrefbooks.selq.ParamByName('in_id_').Value := 0;
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('in_id_').AsInteger;
    end;
    if ((ttype = 15) or (ttype = 16)) then
    begin
      frmrefbooks.selq.SQL.Clear;
      if ttype = 15 then frmrefbooks.selq.SQL.Add('begin NOMENCLATURE_PKG.INSERT_SUPPLIERS(:S_NAME_RU_, :C_ID_, :NEED_CUST_, :ANALYZE_DAYS_, :in_id_, :OUT_TEXT); end;');
      if ttype = 16 then begin
      frmrefbooks.selq.SQL.Add('begin NOMENCLATURE_PKG.UPDATE_SUPPLIERS(:S_ID_, :S_NAME_RU_, :C_ID_, :NEED_CUST_, :ANALYZE_DAYS_, :in_id_, :OUT_TEXT); end;');
      frmrefbooks.selq.ParamByName('S_ID_').Value    := Edit1.Tag;
      end;
      frmrefbooks.selq.ParamByName('S_NAME_RU_').Value    := trim(Edit1.Text);
      frmrefbooks.selq.ParamByName('C_ID_').value         := 1;//imcbregion.EditValue;  // страна
      //таможня гтд:
      if CheckBox1.Checked = true then frmrefbooks.selq.ParamByName('NEED_CUST_').AsString := '1';
      if CheckBox1.Checked = false then frmrefbooks.selq.ParamByName('NEED_CUST_').AsString:= '0';
      frmrefbooks.selq.ParamByName('ANALYZE_DAYS_').Value := trim(Edit2.Text);
      frmrefbooks.selq.ParamByName('in_id_').Value        := 0;
      frmrefbooks.selq.Execute;
      Edit1.Tag := frmrefbooks.selq.ParamByName('in_id_').AsInteger;
    end;
    if ((ttype = 17) or (ttype = 18)) then
    begin

    end;


    Close;

    except
      on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
    End;

  end;
end;

// очистка
procedure TfrmEditRefBook.btnClearClick(Sender: TObject);
begin
  if ((ttype = 1) or (ttype = 3) or (ttype = 5) or (ttype = 7) or (ttype = 9)) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    Edit1.Text := frmrefbooks.Q_REGIONS.FieldByName('NAME').AsString;
    MEMO1.Text := frmrefbooks.Q_REGIONS.FieldByName('INFO').AsString;
  end;

  if (ttype = 4) then
  begin
    Edit1.Text := frmrefbooks.Q_PROMO.FieldByName('NAME').AsString;
    MEMO1.Text := frmrefbooks.Q_PROMO.FieldByName('INFO').AsString;
  end;

    if (ttype = 6) then
  begin
    Edit1.Text := frmrefbooks.Q_CT.FieldByName('NAME').AsString;
    MEMO1.Text := frmrefbooks.Q_CT.FieldByName('INFO').AsString;

      if (frmrefbooks.Q_CT.FieldByName('T_TYPE').AsInteger = 1) then checkbox1.checked := true else checkbox1.checked := false;
      if (frmrefbooks.Q_CT.FieldByName('DISCOUNT').AsInteger>0) then Znak_EditPercent.ItemIndex:=1;
      if (frmrefbooks.Q_CT.FieldByName('DISCOUNT').AsInteger<0) then Znak_EditPercent.ItemIndex:=0;
      DBNumberEditEh1.Text:=inttostr(ABS(frmrefbooks.Q_CT.FieldByName('DISCOUNT').AsInteger));
  end;

  if (ttype = 8) then
  begin
    Edit1.Text := frmrefbooks.Q_DEPS.FieldByName('NAME').AsString;
    if frmrefbooks.Q_DEPS.FieldByName('STATE').AsInteger = 1 then checkbox1.checked := true else checkbox1.checked := false;
    MEMO1.Text := frmrefbooks.Q_DEPS.FieldByName('INFO').AsString;
  end;

  if (ttype = 10) then
  begin
    Edit1.Text := frmrefbooks.Q_POST.FieldByName('NAME').AsString;
    MEMO1.Text := frmrefbooks.Q_POST.FieldByName('INFO').AsString;
  end;

  if (ttype = 12) then
  begin
    Edit1.Text := frmrefbooks.Q_CITIES.FieldByName('city').AsString;
    Edit2.Text := frmrefbooks.Q_CITIES.FieldByName('kod').AsString;
    imcbRegion.EditValue := frmrefbooks.Q_CITIES.FieldByName('id_region').AsInteger;
  end;
end;

//закрытие
procedure TfrmEditRefBook.btnClosClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditRefBook.FormShow(Sender: TObject);
begin
 Edit1.SetFocus;
 {if (ttype = 12) or (ttype = 11) then
 begin
    FillImgComboCx(frmRegions.Q_REGIONS,imcbRegion,'Выберите...');
    imcbRegion.EditValue := imcbRegion.Tag;
 end; }
end;

procedure TfrmEditRefBook.imcbRegionPropertiesChange(Sender: TObject);
begin
 checkbox1.Checked := not (imcbregion.EditValue = 230);
end;

end.
