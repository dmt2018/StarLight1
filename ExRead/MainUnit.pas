unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, cxCalendar,
  cxButtonEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, Menus, cxLookAndFeelPainters, cxButtons, PI_Library,
  cxGraphics, cxImageComboBox, ActnList, IniFiles, UOrders;

type
  TMenuForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    btnRead: TcxButton;
    btnWork: TcxButton;
    BitBtn5: TcxButton;
    imgOtdel: TcxImageComboBox;
    ActionList1: TActionList;
    aGetRules: TAction;
    cbOffices: TcxImageComboBox;
    Label2: TLabel;
    btnCutFlowers: TcxButton;
    btnReadNew: TcxButton;
    procedure BitBtn4Click (Sender : TObject);
    procedure btnReadClick (Sender : TObject);
    procedure btnWorkClick (Sender : TObject);
    procedure FormShow     (Sender : TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure btnCutFlowersClick(Sender: TObject);
    procedure btnReadNewClick(Sender: TObject);
  private
    { Private declarations }
    procedure AfterSetDept();
  public
    { Public declarations }
  end;

var
  MenuForm: TMenuForm;

implementation

uses MainReader, RecogniserU, DataModule, Globals,
  PersonalSettingsU, DB, Ora, UReader;

{$R *.dfm}

//
// Выход
//
procedure TMenuForm.BitBtn4Click(Sender: TObject);
begin
  Close;
end;


procedure TMenuForm.aGetRulesExecute(Sender: TObject);
begin
  with DM.SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('login_').AsString   := UpperCase(Username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=9';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then ed := true else ed := false;
         if FieldByName('C_DEL').AsInteger=1 then del := true else del := false;
         if FieldByName('C_PRINT').AsInteger=1 then pr := true else pr := false;
         if FieldByName('C_ADDIT').AsInteger=1 then add := true else add := false;
          btnWork.Enabled := true;
      end
      else
      begin
        btnWork.Enabled := false;
        ed  := false;
        del := false;
        pr  := false;
        add := false;
      end;

      Close;
      Filter := '';
      Filtered := false;
  End;
end;


//
// Читаем инвойсы
//
procedure TMenuForm.btnReadClick(Sender: TObject);
begin
  ReadInvoice := TReadInvoice.Create(Application);
  try
  ReadInvoice.ShowModal;
  finally
    ReadInvoice.Free;
  end;
end;


//
// Читаем инвойсы 2
//
procedure TMenuForm.btnReadNewClick(Sender: TObject);
begin
  frmReader := TfrmReader.Create(Application);
  try
    frmReader.ShowModal;
  finally
    frmReader.Free;
  end;
end;

//
// Работаем с инвойсами
//
procedure TMenuForm.btnWorkClick(Sender: TObject);
begin
  InvoiceRecognise := TInvoiceRecognise.Create(Application);
  try
  InvoiceRecognise.RecogniserShow;
  finally
    InvoiceRecognise.Free;
  end;
end;


procedure TMenuForm.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;

//
//  При открытии пишем отдел по умолчанию
//
procedure TMenuForm.FormShow(Sender: TObject);
begin
  try
    cbOffices.Enabled     := (dm.id_office = 1);
    btnCutFlowers.Enabled := cbOffices.Enabled;
    if (cbOffices.Enabled) then
    begin
      try
        cbOffices.Properties.OnChange := nil;
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.SelQ.Open;
        FillImgComboCx(DM.SelQ, cbOffices, 'Все');
        DM.SelQ.Close;
        cbOffices.EditValue := DM.id_office;
        cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
      except
        on E: Exception do ShowMessage(E.Message);
      end;
    end;


    with DM.SelQ do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin admins.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(Username);
        ParamByName('cursor_').AsCursor;
        Open;
      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          exit;
        end;
      end;
    End;
    if (DM.SelQ.RecordCount = 0) then
    begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

    FillImgComboCx(DM.SelQ, imgOtdel, '');
    if INPUT_DEPT_ID <> null then
    begin
      imgOtdel.EditValue  := INPUT_DEPT_ID;
      CUR_DEPT_ID         := INPUT_DEPT_ID;
      CUR_DEPT_NAME       := imgOtdel.EditText;
    end;
    AfterSetDept;
    DM.SelQ.Close;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;



procedure TMenuForm.imgOtdelPropertiesChange(Sender: TObject);
begin
  CUR_DEPT_ID    := imgOtdel.EditValue;
  CUR_DEPT_NAME  := imgOtdel.EditText;
  AfterSetDept;
end;

//
// После выбора отдела далаем вещи
//
procedure TMenuForm.AfterSetDept();
Begin
  aGetRules.Execute;
  if (CUR_DEPT_ID <> null) and (imgOtdel.ItemIndex >= 0) then
    Begin
      btnRead.Enabled := ed;
      BitBtn5.Enabled := ed;
      btnReadNew.Enabled := (add and (dm.id_office = 1));
    End
  else
    Begin
      btnRead.Enabled := false;
      btnWork.Enabled := false;
      BitBtn5.Enabled := false;
      btnReadNew.Enabled := false;
    End;
End;


//
// Открываем персональные настройки
//
procedure TMenuForm.BitBtn5Click(Sender: TObject);
begin
  PersonalSettingsF := TPersonalSettingsF.Create(Application);
  try
  PersonalSettingsF.ShowModal;
  finally
    PersonalSettingsF.Free;
  end;
end;


procedure TMenuForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.STAR_DB.Close;
end;


// Загрузка из заказа
procedure TMenuForm.btnCutFlowersClick(Sender: TObject);
begin
  UOrders.OpenForShowModal;
end;



end.
