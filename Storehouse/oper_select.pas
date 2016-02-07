unit oper_select;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, PI_library, Grids,
  DBGrids, DBCtrlsEh, Registry, Menus, cxLookAndFeelPainters,
  cxButtons, Mask, ActnList, DB, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, PI_Library_reg, global;

type
  TOperSelectForm = class(TForm)
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    btn_store_close: TcxButton;
    BitBtn1: TcxButton;
    BitBtn3: TcxButton;
    BitBtn5: TcxButton;
    BitBtn2: TcxButton;
    BitBtn7: TcxButton;
    BitBtn8: TcxButton;
    BitBtn4: TcxButton;
    BitBtn10: TcxButton;
    BitBtn9: TcxButton;
    Store_DepsCBEx: TDBComboBoxEh;
    btn_buttons: TcxButton;
    starter_al: TActionList;
    aGetRules: TAction;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure Store_DepsCBExChange(Sender: TObject);
    procedure btn_buttonsClick(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OperSelectForm: TOperSelectForm;

implementation

uses DataM,store_view, all_nacl, all_prih, all_utsen, all_spis, all_invent,
  global_date, obnul, report_tovarn_full, all_reprice,
  buttons_for;

{$R *.dfm}

procedure TOperSelectForm.aGetRulesExecute(Sender: TObject);
begin
  DM.ft_view.Close;
  DM.ft_view.ParamByName('ID_DEP_').AsInteger := StrToInt(DataM.department_id);
  DM.ft_view.Open;

  DM.fst_view.Close;
  DM.fst_view.ParamByName('ID_DEP_').AsInteger := StrToInt(DataM.department_id);
  DM.fst_view.Open;

  with DM.Q_SQL do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := StrToInt(DataM.department_id);
      ParamByName('login_').AsString   := UpperCase(DataM.Operator_username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=15';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then DataM.Operator_edit := true else DataM.Operator_edit := false;
         if FieldByName('C_DEL').AsInteger=1 then DataM.Operator_delete := true else DataM.Operator_delete := false;
         if FieldByName('C_PRINT').AsInteger=1 then DataM.Operator_print := true else DataM.Operator_print := false;
         if FieldByName('C_ADDIT').AsInteger=1 then DataM.Operator_admin := true else DataM.Operator_admin := false;
      end;

      if (DataM.Operator_admin = false) then
      begin
        BitBtn1.Enabled :=false;
        BitBtn5.Enabled :=false;
        BitBtn3.Enabled :=false;
        BitBtn2.Enabled :=false;
        BitBtn7.Enabled :=false;
        BitBtn8.Enabled :=false;
        BitBtn9.Enabled :=false;
        BitBtn4.Enabled :=false;
        BitBtn10.Enabled:=false;
        btn_buttons.Enabled :=false;
      end;

      if (RecordCount = 0) then
      begin
        StatusBar.Panels[0].Text  :='';
        StatusBar.Panels[1].Text  :='';
        BitBtn1.Enabled :=false;
        BitBtn5.Enabled :=false;
        BitBtn2.Enabled :=false;
        BitBtn3.Enabled :=false;
        BitBtn7.Enabled :=false;
        BitBtn8.Enabled :=false;
        BitBtn9.Enabled :=false;
        BitBtn4.Enabled :=false;
        BitBtn10.Enabled :=false;
        btn_buttons.Enabled :=false;
        MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь к менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      end
      else
      begin
        BitBtn1.Enabled := true;
        BitBtn5.Enabled := true;
        BitBtn2.Enabled := true;
        BitBtn3.Enabled := true;
        BitBtn7.Enabled := true;
        BitBtn8.Enabled := true;
        BitBtn4.Enabled := true;
        BitBtn10.Enabled := true;
        BitBtn9.Enabled := DataM.Operator_admin;
        btn_buttons.Enabled := DataM.Operator_edit;
      end;
      Close;
      Filter := '';
      Filtered := false;
  End;
end;


procedure TOperSelectForm.Store_DepsCBExChange(Sender: TObject);
begin
  DataM.department_id   := Store_DepsCBEx.Value;
  DataM.department_name := Store_DepsCBEx.Text;
  Application.Title := 'Склад :: '+Store_DepsCBEx.Text;
  Caption := 'Склад :: '+Store_DepsCBEx.Text;
  aGetRules.Execute;
end;


//
//  Создание формы
//
procedure TOperSelectForm.FormCreate(Sender: TObject);
begin
  ProgPath := GetCurrentDir;

  try
    // Опаратора в статус бар
  	DM.USER.Close;
	  DM.USER.Sql.Clear;
  	DM.USER.Sql.Add('SELECT fio, id_clients, login, nick FROM EMPLOYEES_VIEW WHERE LOGIN=UPPER(:username)');
	  DM.USER.ParamByName('username').Value := Operator_username;
  	DM.USER.Open;
    DataM.Operator_Name := DM.USER.FieldByName('FIO').AsString;
    DataM.Operator_id   := DM.USER.FieldByName('ID_CLIENTS').AsString;
	  DM.USER.Close;

    try
      //Запрашиваем дату работы со складом-----------------------
      GlobalDateForm := TGlobalDateForm.Create(Application);
      GlobalDateForm.ShowModal;
    finally
      GlobalDateForm.Free;
    end;

    with DM.Q_SQL do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin STORE_PKG.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(DataM.Operator_username);
        ParamByName('cursor_').AsCursor;
        Open;

        Store_DepsCBEx.OnChange := nil;
        FillComboOlmer(DM.Q_SQL, Store_DepsCBEx, '');
        Store_DepsCBEx.ItemIndex  := Store_DepsCBEx.KeyItems.IndexOf(DataM.department_id);
        Application.Title         := 'Склад :: '+Store_DepsCBEx.Text;
        DataM.department_name     := Store_DepsCBEx.Text;
        Store_DepsCBEx.OnChange   := Store_DepsCBExChange;
        StatusBar.Panels[0].Text  :='  Дата: ' + GlobalDate_FORMAT;
        StatusBar.Panels[1].Text  :='  Оператор: '+ DataM.Operator_Name;
        aGetRules.Execute;
      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь к менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          exit;
        end;
      end;
    End;
  except
    on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
  end;
end;



//
// Обнуление номерации
//
procedure TOperSelectForm.BitBtn9Click(Sender: TObject);
var theform: Tform;
begin
  if GetOfficeID <> DM.id_office then
  begin
    MessageBox(Handle, 'Обнулять номерацию можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
    exit;
  end;


  theform := Tobnul_Form.Create(Application);
  try
    theform.ShowModal;
  finally
    theform.Free;
  end;
end;


//
//  Выход из программы
//
procedure TOperSelectForm.BitBtn6Click(Sender: TObject);
begin
  if MessageDlg('Вы уверены, что хотите выйти из программы?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    DM.OraSession.Close;
    close;
  end;
end;


//
// Приход
//
procedure TOperSelectForm.BitBtn5Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_prih_Form := Tall_prih_Form.Create(Application);
    try
      all_prih_Form.ShowModal;
    finally
      all_prih_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
// Уценка
//
procedure TOperSelectForm.BitBtn2Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_utsen_Form := Tall_utsen_Form.Create(Application);
    try
      all_utsen_Form.ShowModal;
    finally
      all_utsen_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
// Списание
//
procedure TOperSelectForm.BitBtn7Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_spis_Form := Tall_spis_Form.Create(Application);
    try
      all_spis_Form.ShowModal;
    finally
      all_spis_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Просмотр остатков
//
procedure TOperSelectForm.BitBtn1Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    StoreViewForm := TStoreViewForm.Create(Application);
    try
      StoreViewForm.ShowModal;
    finally
      StoreViewForm.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
// Инвентаризация
//
procedure TOperSelectForm.BitBtn8Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_invent_Form := Tall_invent_Form.Create(Application);
    try
      all_invent_Form.ShowModal;
    finally
      all_invent_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
// Движение товара
//
procedure TOperSelectForm.BitBtn4Click(Sender: TObject);
var theform: Tform;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    ReportTovarnFullForm := TReportTovarnFullForm.Create(Application);
    try
      ReportTovarnFullForm.ShowModal;
    finally
      ReportTovarnFullForm.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
// Переоценка
//
procedure TOperSelectForm.BitBtn10Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_reprice_Form        := Tall_reprice_Form.Create(Application);
    try
      all_reprice_Form.edit_q := false;
      all_reprice_Form.ShowModal;
    finally
      all_reprice_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Продажа
//
procedure TOperSelectForm.BitBtn3Click(Sender: TObject);
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    all_nacl_Form := Tall_nacl_Form.Create(Application);
    try
      all_nacl_Form.ShowModal;
    finally
      all_nacl_Form.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Настройка кнопок
//
procedure TOperSelectForm.btn_buttonsClick(Sender: TObject);
begin
  MessageBox(Handle, 'Функция временно отключена!', 'Внимание', MB_ICONWARNING);
{
  Пакет с заказами необходимо мигрировать, а потом проверить работоспособность
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
    frm_buttons := Tfrm_buttons.Create(Application);
    try
      frm_buttons.ShowModal();
    finally
      frm_buttons.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
}
end;


procedure TOperSelectForm.FormShow(Sender: TObject);
begin
    cbOffices.Enabled := (dm.id_office = 1);
    if (cbOffices.Enabled) then
    begin
      try
        cbOffices.Properties.OnChange := nil;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Q_SQL.Open;
        FillImgComboCx(DM.Q_SQL, cbOffices, 'Все');
        DM.Q_SQL.Close;
        cbOffices.EditValue := DM.id_office;
        cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
      except
        on E: Exception do ShowMessage(E.Message);
      end;
    end;
end;

procedure TOperSelectForm.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;

end.
