unit pr_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, Mask, DBCtrlsEh;

type
  Tpr_editor = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    ComboBox1: TDBComboBoxEh;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    ttype: integer;
    { Public declarations }
  end;

var
  pr_editor: Tpr_editor;

implementation

uses DataM, main_form;

{$R *.dfm}

procedure Tpr_editor.BitBtn1Click(Sender: TObject);
begin
  close;
end;

// Запись изменений
procedure Tpr_editor.BitBtn3Click(Sender: TObject);
begin
if (ComboBox1.ItemIndex < 0) then ShowMessage('Вы не указали программу!')
else
begin
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin admins.save_role_program(:GROUP_ID_, :PROG_ID_, :CHECK1_, :CHECK2_, :CHECK3_, :CHECK4_, :CHECK5_); end;');

      DM.Ora_SQL.ParamByName('GROUP_ID_').Value := DM.Q_GROUPS.FieldByName('ID_ROLE_GROUPS').AsInteger;
      DM.Ora_SQL.ParamByName('PROG_ID_').Value := ComboBox1.Value;
      if CheckBox1.Checked = true then DM.Ora_SQL.ParamByName('CHECK1_').Value := 1 else DM.Ora_SQL.ParamByName('CHECK1_').Value := 0;
      if CheckBox2.Checked = true then DM.Ora_SQL.ParamByName('CHECK2_').Value := 1 else DM.Ora_SQL.ParamByName('CHECK2_').Value := 0;
      if CheckBox3.Checked = true then DM.Ora_SQL.ParamByName('CHECK3_').Value := 1 else DM.Ora_SQL.ParamByName('CHECK3_').Value := 0;
      if CheckBox4.Checked = true then DM.Ora_SQL.ParamByName('CHECK4_').Value := 1 else DM.Ora_SQL.ParamByName('CHECK4_').Value := 0;
      if CheckBox5.Checked = true then DM.Ora_SQL.ParamByName('CHECK5_').Value := 1 else DM.Ora_SQL.ParamByName('CHECK5_').Value := 0;

      // Пытаемся выполнить SQL запрос
      try
        DM.Ora_SQL.Execute;
        DM.Q_GR_PR.Refresh;
        close;
      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
          else  ShowMessage(E.Message);
        end;
      End;
end;
end;

// Очистка данных
procedure Tpr_editor.BitBtn5Click(Sender: TObject);
var ind: integer;
begin
  if (ttype = 1) then
  begin
    pr_editor.ComboBox1.ItemIndex := -1;
    pr_editor.CheckBox1.checked := false;
    pr_editor.CheckBox2.checked := false;
    pr_editor.CheckBox3.checked := false;
    pr_editor.CheckBox4.checked := false;
    pr_editor.CheckBox5.checked := false;
  end;

  if (ttype = 2) then
  begin
    ind := pr_editor.ComboBox1.Items.IndexOf(DM.Q_GR_PR.FieldByName('NAME').AsString);
    pr_editor.ComboBox1.ItemIndex := ind;

    if DM.Q_GR_PR.FieldByName('C_START').AsInteger = 1 then pr_editor.CheckBox1.checked := true else pr_editor.CheckBox1.checked := false;
    if DM.Q_GR_PR.FieldByName('C_EDIT').AsInteger = 1 then pr_editor.CheckBox2.checked := true else pr_editor.CheckBox2.checked := false;
    if DM.Q_GR_PR.FieldByName('C_DEL').AsInteger = 1 then pr_editor.CheckBox3.checked := true else pr_editor.CheckBox3.checked := false;
    if DM.Q_GR_PR.FieldByName('C_PRINT').AsInteger = 1 then pr_editor.CheckBox4.checked := true else pr_editor.CheckBox4.checked := false;
    if DM.Q_GR_PR.FieldByName('C_ADDIT').AsInteger = 1 then pr_editor.CheckBox5.checked := true else pr_editor.CheckBox5.checked := false;
  end;
end;

end.
