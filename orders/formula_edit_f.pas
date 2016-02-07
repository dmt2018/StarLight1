unit formula_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGridEh, ComCtrls,
  ActnList, Mask, DBCtrlsEh, GridsEh, DBGridEhGrouping;

type
  Tformula_edit = class(TForm)
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label8: TLabel;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    DBGridEh1: TDBGridEh;
    Edit4: TEdit;
    UpDown1: TUpDown;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TDBComboBoxEh;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    f_edit, ind: integer;
    { Public declarations }
  end;

var
  formula_edit: Tformula_edit;

implementation

uses frm_DM, frm_first_dialog;


{$R *.dfm}

procedure Tformula_edit.BitBtn13Click(Sender: TObject);
begin
  close;
end;


//
// Запись
//
procedure Tformula_edit.BitBtn1Click(Sender: TObject);
begin
  if ( ((trim(Edit1.Text) = '') and (trim(Edit3.Text) = '') ) or ( ((ComboBox1.ItemIndex <1) and (RadioButton1.Checked = true) ) ) ) then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
      ind := 0;
      if trim(Edit4.Text) = '' then Edit4.Text := '0';

      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin PACK_ORDERS.save_formula(:id_, :P0, :P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9, :state_); end; ');
      if f_edit = 1 then
         DM.Ora_SQL.ParamByName('id_').AsInteger := 0
      else
         DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_SQL.FieldByName('ID_ORDERS_FORMULA').AsInteger;

      // Пытаемся выполнить SQL запрос
      try
        if ((ComboBox1.ItemIndex > 0) and (RadioButton1.Checked = true)) then
          DM.Ora_SQL.ParamByName('P0').AsInteger := ComboBox1.Value
        else DM.Ora_SQL.ParamByName('P0').Value := null;

        if RadioButton2.Checked = true then
        begin
          DM.Ora_SQL.ParamByName('P1').Value := DM.Q_FL_SUBTYPEFST_ID.AsInteger;
        end else DM.Ora_SQL.ParamByName('P1').Value := null;

        if RadioButton3.Checked = true then
        begin
          DM.Ora_SQL.ParamByName('P2').Value := Edit6.Text;
        end else DM.Ora_SQL.ParamByName('P2').Value := null;

        DM.Ora_SQL.ParamByName('P3').Value := Edit1.Text;
        DM.Ora_SQL.ParamByName('P4').Value := Edit3.Text;
        if CheckBox1.Checked = true then DM.Ora_SQL.ParamByName('P5').Value := 1 else DM.Ora_SQL.ParamByName('P5').Value := 0;
        DM.Ora_SQL.ParamByName('P6').Value := Edit4.Text;

        DM.Ora_SQL.ParamByName('P7').Value := Edit5.Text;
        DM.Ora_SQL.ParamByName('P8').Value := Edit2.Text;
        DM.Ora_SQL.ParamByName('P9').Value := first_dialog_frm.DBComboBoxEh1.Value;

        DM.Ora_SQL.ParamByName('state_').AsInteger := f_edit;
        DM.Ora_SQL.Execute;
        ind := DM.Ora_SQL.ParamByName('id_').AsInteger;
        //showmessage(inttostr(ind));

        DM.Main_session.Commit;

        DM.Q_SQL.Refresh;
        DM.Q_SQL.Locate('ID_ORDERS_FORMULA',formula_edit.ind,[]);
        close;
      except
        on E: Exception do
        begin
          ShowMessage('Ошибка при записи информации!'#13#10+E.Message);
        end;
      End;
  end;
end;


//
//  Выбираем только типы
//
procedure Tformula_edit.RadioButton1Click(Sender: TObject);
begin
  If RadioButton1.Checked = true then
  begin
    DBGridEh1.Visible := false;
    Edit6.Visible := false;
    ComboBox1.Visible := true;
    if (formula_edit.Showing = true) and (ComboBox1.Visible = true) then ComboBox1.SetFocus;
  end;
end;


//
//  Выбираем только подтипы
//
procedure Tformula_edit.RadioButton2Click(Sender: TObject);
begin
  If RadioButton2.Checked = true then
  begin
    DBGridEh1.Visible := true;
    Edit6.Visible := false;
    ComboBox1.Visible := false;
    if (formula_edit.Showing = true) and (ComboBox1.Visible = true) then DBGridEh1.SetFocus;
  end;
end;



//
//  Выбираем только название
//
procedure Tformula_edit.RadioButton3Click(Sender: TObject);
begin
  If RadioButton3.Checked = true then
  begin
    DBGridEh1.Visible := false;
    Edit6.Visible := true;
    ComboBox1.Visible := false;
    if (formula_edit.Showing = true) and (ComboBox1.Visible = true) then Edit6.SetFocus;
  end;
end;


//
//  После выбора типа, обновляем подтипы
//
procedure Tformula_edit.ComboBox1Change(Sender: TObject);
begin
  DM.Q_FL_SUBTYPE.Close;
  DM.Q_FL_SUBTYPE.ParamByName('FT_ID').AsInteger := ComboBox1.Value;
  DM.Q_FL_SUBTYPE.Open;
end;

end.
