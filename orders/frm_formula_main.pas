unit frm_formula_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, ImgList, ActnList, PI_Library,
  GridsEh, DBGridEhGrouping;

type
  Tformula_main = class(TForm)
    CheckImList: TImageList;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    DBGridEh3: TDBGridEh;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action5: TAction;
    Panel3: TPanel;
    BitBtn13: TBitBtn;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure fill_combo();
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formula_main: Tformula_main;

implementation

uses frm_DM, formula_edit_f, frm_first_dialog;

{$R *.dfm}

procedure Tformula_main.BitBtn13Click(Sender: TObject);
begin
  close;
end;


//
//  Заполнение списка типов
//
procedure Tformula_main.fill_combo();
begin
  formula_edit.ComboBox1.OnChange := nil;
  FillComboEh(DM.Q_SQL_SPIS, Formula_edit.ComboBox1, 'SELECT FT_ID, F_TYPE FROM FLOWER_TYPES WHERE id_departments = ' + first_dialog_frm.DBComboBoxEh1.Value + ' ORDER BY F_TYPE');
  formula_edit.ComboBox1.OnChange := Formula_edit.ComboBox1Change;
end;


//
//  Добавление
//
procedure Tformula_main.BitBtn10Click(Sender: TObject);
begin
  formula_edit := Tformula_edit.Create(Application);
  try
    fill_combo();
    formula_edit.f_edit := 1;
    formula_edit.Edit1.Text := '';
    formula_edit.Edit2.Text := '';
    formula_edit.Edit3.Text := '';
    formula_edit.Edit4.Text := '0';
    formula_edit.Edit5.Text := '';
    formula_edit.CheckBox1.Checked := true;
    formula_edit.showmodal();
    DM.Q_FL_SUBTYPE.Close;
  finally
    formula_edit.Free;
  end;
end;


//
//  Редактирование
//
procedure Tformula_main.BitBtn11Click(Sender: TObject);
begin
  if DM.Q_SQL.RecordCount > 0 then
  begin
      formula_edit := Tformula_edit.Create(Application);
      try
          formula_edit.f_edit := 2;
          formula_edit.Edit1.Text := DM.Q_SQL.FieldByName('FORMULA').AsString;
          formula_edit.Edit2.Text := DM.Q_SQL.FieldByName('FIELD_AND').AsString;
          formula_edit.Edit3.Text := DM.Q_SQL.FieldByName('FORMULA_DRY').AsString;
          formula_edit.UpDown1.Position := DM.Q_SQL.FieldByName('PACK').AsInteger;
          formula_edit.Edit4.Text := DM.Q_SQL.FieldByName('PACK').AsString;
          formula_edit.Edit5.Text := DM.Q_SQL.FieldByName('FIELD_NO').AsString;

          fill_combo();

          if DM.Q_SQL.FieldByName('FT_ID').AsString <> '' then
          begin
            formula_edit.ComboBox1.ItemIndex := formula_edit.ComboBox1.Items.IndexOf(DM.Q_SQL.FieldByName('F_TYPE').AsString);
            formula_edit.RadioButton1.Checked := true;
            formula_edit.RadioButton1Click(self);
          end;

          if DM.Q_SQL.FieldByName('FST_ID').AsString <> '' then
          begin
            DM.Q_SQL_SPIS.Close;
            DM.Q_SQL_SPIS.SQL.Clear;
            DM.Q_SQL_SPIS.SQL.Add('SELECT FT_ID FROM flower_subtypes WHERE fst_id='+DM.Q_SQL.FieldByName('FST_ID').AsString);
            DM.Q_SQL_SPIS.Open;
            formula_edit.ComboBox1.ItemIndex := formula_edit.ComboBox1.KeyItems.IndexOf(DM.Q_SQL_SPIS.FieldByName('FT_ID').AsString);

            formula_edit.RadioButton2.Checked := true;
            DM.Q_FL_SUBTYPE.Locate('FST_ID',DM.Q_SQL.FieldByName('FST_ID').AsInteger,[]);
            formula_edit.RadioButton1Click(self);
          end;

          if DM.Q_SQL.FieldByName('HNAME').AsString <> '' then
          begin
            formula_edit.RadioButton3.Checked := true;
            formula_edit.Edit6.Text := DM.Q_SQL.FieldByName('HNAME').AsString;
            formula_edit.RadioButton1Click(self);
          end;

          if DM.Q_SQL.FieldByName('ACTIVE').AsInteger = 1 then formula_edit.CheckBox1.Checked := true else formula_edit.CheckBox1.Checked := false;

          formula_edit.showmodal;

          DM.Q_FL_SUBTYPE.Close;
          formula_edit.Free;
      except
        on E: Exception do
        begin
            DM.Q_FL_SUBTYPE.Close;
            DM.Q_SQL.Refresh;
            formula_edit.Free;
            ShowMessage('Ошибка!'#13#10+E.Message);
        end;

      End;
  end else ShowMessage('Нет данных для редактирования!');

end;


//
//  Удаление
//
procedure Tformula_main.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
    if DM.Q_SQL.RecordCount > 0 then
    begin
      if MessageDlg('Вы действительно хотите удалить формулу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление заказа
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('DELETE FROM ORDERS_FORMULA WHERE ID_ORDERS_FORMULA = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_SQL.FieldByName('ID_ORDERS_FORMULA').AsInteger;

          DM.Q_SQL.Next;
          idd := DM.Q_SQL.FieldByName('ID_ORDERS_FORMULA').AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.Main_session.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_SQL.Refresh;
            DM.Q_SQL.Locate('ID_ORDERS_FORMULA',idd,[]);

          except
            on E: Exception do
              ShowMessage('Ошибка!'#13#10+E.Message);
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
end;

procedure Tformula_main.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (State = [gdSelected]) then
	begin
      DBGridEh3.Canvas.Brush.Color:=clMoneyGreen;
 	    DBGridEh3.Canvas.Font.Color:=clBlack;
 	    DBGridEh3.Canvas.FillRect(Rect);
  		DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;

end.
