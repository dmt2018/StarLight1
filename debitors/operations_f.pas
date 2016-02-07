unit operations_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ActnList, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxTextEdit, Menus, cxLookAndFeelPainters, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox;

type
  Toptions = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    ActionList1: TActionList;
    aInsert: TAction;
    aEdit: TAction;
    aDelete: TAction;
    gr_operations: TcxGrid;
    gr_operations_v: TcxGridDBTableView;
    gr_operations_vT_SHORT: TcxGridDBColumn;
    gr_operations_vT_LONG: TcxGridDBColumn;
    gr_operations_vID_OPERATIONS: TcxGridDBColumn;
    gr_operations_l: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    btnClose: TcxButton;
    gr_operations_vT_TYPE_: TcxGridDBColumn;
    gr_operations_vDOLG: TcxGridDBColumn;
    gr_operations_vT_TYPE: TcxGridDBColumn;
    CheckBox1: TCheckBox;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  options: Toptions;

implementation

uses DataM;

{$R *.dfm}



// Добавление
procedure Toptions.BitBtn10Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  CheckBox1.Checked := false;
  state := 1;
  Panel2.Visible := true;
  Edit1.SetFocus;
end;



// Редактирование
procedure Toptions.BitBtn11Click(Sender: TObject);
begin
  if (DM.OPERATIONS.Active = true) and (DM.OPERATIONS.RecordCount > 0) and (DM.OPERATIONSID_OPERATIONS.AsInteger > 0) then
  begin
    try
      Edit1.Text := DM.OPERATIONS.FieldByName('T_SHORT').AsString;
      Edit2.Text := DM.OPERATIONS.FieldByName('T_LONG').AsString;

      if (DM.OPERATIONS.FieldByName('DOLG').AsInteger = 1) then     
        CheckBox1.Checked := true
      else
        CheckBox1.Checked := false;

      state := 2;
      Panel2.Visible := true;
      Edit1.SetFocus;
    except
      on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    End;
  end else MessageBox(Handle, 'Нет данных для редактирования', 'Внимание', MB_ICONWARNING);
end;


// Удаление
procedure Toptions.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
  if (DM.OPERATIONS.Active = true) and (DM.OPERATIONS.RecordCount > 0) and (DM.OPERATIONSID_OPERATIONS.AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить операцию?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        try
          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin cash_pkg.remove_operation(:id_); end;');
          DM.Q_SQL.ParamByName('id_').AsInteger  := DM.OPERATIONSID_OPERATIONS.AsInteger;

          DM.OPERATIONS.Next;
          idd := DM.OPERATIONSID_OPERATIONS.AsInteger;

          DM.Q_SQL.execute;

          DM.OPERATIONS.Refresh;
          DM.OPERATIONS.Locate('ID_OPERATIONS',idd,[]);

          gr_operations.SetFocus;
        except
          on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
end;

// Записать
procedure Toptions.BitBtn1Click(Sender: TObject);
var sql: string;
    ind: integer;
begin
  if ((trim(Edit1.Text) = '') or (trim(Edit2.Text) = '')) then ShowMessage('Не заполнены все поля!')
  else
  begin
      cxButton4.SetFocus;
      try
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin cash_pkg.save_operation(:id_, :t_short_, :t_long_, :type_, :dolg_); end;');
        if (state = 1) then
          DM.Q_SQL.ParamByName('id_').AsInteger     := 0
        else
          DM.Q_SQL.ParamByName('id_').AsInteger     := DM.OPERATIONSID_OPERATIONS.AsInteger;
        DM.Q_SQL.ParamByName('t_short_').AsString   := trim(Edit1.Text);
        DM.Q_SQL.ParamByName('t_long_').AsString    := trim(Edit2.Text);
        DM.Q_SQL.ParamByName('type_').AsInteger     := 1;
        if (CheckBox1.Checked) then       
          DM.Q_SQL.ParamByName('dolg_').AsInteger   := 1
        else
          DM.Q_SQL.ParamByName('dolg_').AsInteger   := 0;
        DM.Q_SQL.execute;

        ind := DM.Q_SQL.ParamByName('id_').AsInteger;

        DM.OPERATIONS.Refresh;
        DM.OPERATIONS.Locate('ID_OPERATIONS',ind,[]);

        panel2.Hide;
        gr_operations.SetFocus;
      except
        on E: Exception do
        begin
          panel2.Hide;
          MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        end;
      End;

  end;
end;

procedure Toptions.BitBtn2Click(Sender: TObject);
begin
  Panel2.Visible := false;
  gr_operations.SetFocus;
end;

procedure Toptions.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Toptions.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    BitBtn1Click(Sender);

  if (Key = VK_ESCAPE) then
    BitBtn2Click(Sender);
end;

procedure Toptions.FormShow(Sender: TObject);
begin
  gr_operations.SetFocus;
  aInsert.Enabled := DM.b_edit;
  aEdit.Enabled   := DM.b_edit;
  aDelete.Enabled := DM.b_delete;

  if (DM.id_office > 1) then
  begin
    aInsert.Enabled := false;
    aEdit.Enabled   := false;
    aDelete.Enabled := false;
    Panel2.Visible  := false;
  end;
end;

end.
