unit editor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ActnList, Mask, DBCtrlsEh, Menus,
  cxLookAndFeelPainters, cxButtons, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, PI_Library_reg;

type
  Teditor = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Label6: TLabel;
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
    ActionList1: TActionList;
    aCtrlEnter: TAction;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    pnlCity: TPanel;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    imcbRegion: TcxImageComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Edit3: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    ttype: integer;
    { Public declarations }
  end;

var
  editor: Teditor;

implementation

uses DataM, main_form;

{$R *.dfm}

procedure Teditor.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

// Запись изменений
procedure Teditor.BitBtn3Click(Sender: TObject);
var ind, flag, price_part: integer;
begin
  if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    // Пытаемся выполнить SQL запрос
    try

    DM.Ora_SQL.SQL.Clear;

    if ((ttype = 1) or (ttype = 2)) then
    begin
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_regions(:name_, :info_, :kod_, :kladr, :id_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.ParamByName('kod_').AsString := trim(Edit2.Text);
      DM.Ora_SQL.ParamByName('kladr').AsString := trim(Edit3.Text);
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 3) or (ttype = 4)) then
    begin
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_ADVERTISMENTS(:name_, :info_, :id_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 5) or (ttype = 6)) then
    begin
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_CLIENT_TYPES(:name_, :info_, :id_, :TTYPE_, :price_part_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;

      if checkBox1.Checked = true then DM.Ora_SQL.ParamByName('TTYPE_').Value := 1
      else DM.Ora_SQL.ParamByName('TTYPE_').Value := 0;

      if DBNumberEditEh1.Value = NULL then price_part := 0
      else
      begin
        if (Znak_EditPercent.Text='-') then
          price_part:= StrToInt('-'+DBNumberEditEh1.Text)
        else
          price_part:= StrToInt(DBNumberEditEh1.Text);
      end;
      DM.Ora_SQL.ParamByName('price_part_').AsInteger := price_part;

      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 7) or (ttype = 8)) then
    begin
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_DEPARTMENTS(:name_, :info_, :id_, :TTYPE_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;

      if checkBox1.Checked = true then DM.Ora_SQL.ParamByName('TTYPE_').Value := 1
      else DM.Ora_SQL.ParamByName('TTYPE_').Value := 0;

      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 9) or (ttype = 10)) then
    begin
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_JOB_TITLES(:name_, :info_, :id_); end;');
      DM.Ora_SQL.ParamByName('name_').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('info_').AsString := Memo1.Text;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;

    if ((ttype = 11) or (ttype = 12)) then
    begin
      if imcbRegion.ItemIndex < 1 then
      begin
        Application.MessageBox('Необходимо указать регион','Внимание',MB_ICONWARNING);
        exit;
      end;
      
      DM.Ora_SQL.SQL.Add('begin BOOKS.save_city(:v_city, :v_kod, :v_id_region, :id_); end;');
      DM.Ora_SQL.ParamByName('v_city').AsString := trim(Edit1.Text);
      DM.Ora_SQL.ParamByName('v_kod').AsString := trim(Edit2.Text);
      DM.Ora_SQL.ParamByName('v_id_region').AsInteger := imcbRegion.EditValue;
      DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
      DM.Ora_SQL.Execute;
      Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;
    end;

    Close;

    except
      on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
    End;

  end;
end;

// Очистка
procedure Teditor.BitBtn5Click(Sender: TObject);
begin
  if ((ttype = 1) or (ttype = 3) or (ttype = 5) or (ttype = 7) or (ttype = 9)) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    editor.Edit1.Text := DM.Q_REGIONS.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_REGIONS.FieldByName('INFO').AsString;
  end;

  if (ttype = 4) then
  begin
    editor.Edit1.Text := DM.Q_ADVERT.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_ADVERT.FieldByName('INFO').AsString;
  end;

  if (ttype = 6) then
  begin
    editor.Edit1.Text := DM.Q_TYPES.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_TYPES.FieldByName('INFO').AsString;

      if (DM.Q_TYPES.FieldByName('T_TYPE').AsInteger = 1) then checkbox1.checked := true else checkbox1.checked := false;
      if (DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger>0) then Znak_EditPercent.ItemIndex:=1;
      if (DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger<0) then Znak_EditPercent.ItemIndex:=0;
      DBNumberEditEh1.Text:=inttostr(ABS(DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger));

  end;

  if (ttype = 8) then
  begin
    editor.Edit1.Text := DM.Q_DEPS.FieldByName('NAME').AsString;
    if DM.Q_DEPS.FieldByName('STATE').AsInteger = 1 then editor.checkbox1.checked := true else editor.checkbox1.checked := false;
    editor.MEMO1.Text := DM.Q_DEPS.FieldByName('INFO').AsString;
  end;

  if (ttype = 10) then
  begin
    editor.Edit1.Text := DM.Q_TITLES.FieldByName('NAME').AsString;
    editor.MEMO1.Text := DM.Q_TITLES.FieldByName('INFO').AsString;
  end;

  if (ttype = 12) then
  begin
    editor.Edit1.Text := DM.Q_CITIES.FieldByName('city').AsString;
    editor.Edit2.Text := DM.Q_CITIES.FieldByName('kod').AsString;
    editor.imcbRegion.EditValue := DM.Q_CITIES.FieldByName('id_region').AsInteger;
  end;

end;

procedure Teditor.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  if (ttype = 12) or (ttype = 11) then
  begin
    FillImgComboCx(DM.Q_REGIONS,imcbRegion,'Выберите...');
    imcbRegion.EditValue := imcbRegion.Tag;
  end;
end;

end.
