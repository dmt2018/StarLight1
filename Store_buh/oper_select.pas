unit oper_select;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, PI_library, DASQLMonitor,
  OraSQLMonitor, Menus, cxLookAndFeelPainters, cxButtons, Mask, DBCtrlsEh, DB,
  ActnList, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, PI_Library_reg, IniFiles;

type
  TOperSelectForm = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Store_DepsCBEx: TDBComboBoxEh;
    btn_store_close: TcxButton;
    BitBtn4: TcxButton;
    BitBtn11: TcxButton;
    BitBtn2: TcxButton;
    BitBtn1: TcxButton;
    BitBtn3: TcxButton;
    BitBtn5: TcxButton;
    BitBtn7: TcxButton;
    btnStat: TcxButton;
    btn_kass: TcxButton;
    btnReserv: TcxButton;
    btn_cargo: TcxButton;
    starter_al: TActionList;
    aGetRules: TAction;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    btnUPD: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Store_DepsCBExChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnStatClick(Sender: TObject);
    procedure btn_kassClick(Sender: TObject);
    procedure btnReservClick(Sender: TObject);
    procedure btn_cargoClick(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure btnUPDClick(Sender: TObject);

  private
    { Private declarations }
  public
    path : string;
    { Public declarations }
  end;

var
  OperSelectForm: TOperSelectForm;

implementation

uses dataM, doc_view, company, preferenses, reprice, UStat, UCash;

{$R *.dfm}

procedure TOperSelectForm.aGetRulesExecute(Sender: TObject);
begin
  with DM.Q_SQL do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := StrToInt(DataM.department_id);
      ParamByName('login_').AsString   := UpperCase(DataM.Operator_username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=14';
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
        BitBtn1.Enabled   :=false;
        BitBtn3.Enabled   :=false;
        BitBtn5.Enabled   :=false;
        BitBtn7.Enabled   :=false;
        btnReserv.Enabled :=false;
        btnStat.Enabled   :=false;
        btn_kass.Enabled  :=false;
        BitBtn2.Enabled   :=false;
        BitBtn11.Enabled  :=false;
        BitBtn4.Enabled   :=false;
      end;

      if (RecordCount = 0) then
      begin
        BitBtn1.Enabled   :=false;
        BitBtn3.Enabled   :=false;
        BitBtn5.Enabled   :=false;
        BitBtn7.Enabled   :=false;
        btnReserv.Enabled :=false;
        btnStat.Enabled   :=false;
        btn_kass.Enabled  :=false;
        BitBtn2.Enabled   :=false;
        BitBtn11.Enabled  :=false;
        BitBtn4.Enabled   :=false;
        MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь к менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      end
      else
      begin
        BitBtn1.Enabled   :=true;
        BitBtn3.Enabled   :=true;
        BitBtn5.Enabled   :=true;
        BitBtn7.Enabled   :=true;
        btnReserv.Enabled :=true;
        btnStat.Enabled   :=true;
        btn_kass.Enabled  :=true;
        BitBtn2.Enabled   :=DataM.Operator_admin;
        BitBtn11.Enabled  :=DataM.Operator_admin;
        BitBtn4.Enabled   :=DataM.Operator_admin;
      end;
      Close;
  End;
end;


//
//  Создание формы
//
procedure TOperSelectForm.FormCreate(Sender: TObject);
VAR Ini : TIniFile;
begin
try
  // Опаратора в статус бар
	DM.USER.Close;
	DM.USER.Sql.Clear;
	DM.USER.Sql.Add('SELECT fio, id_clients, login, nick FROM EMPLOYEES_VIEW WHERE LOGIN=UPPER(:username) and id_office = const_office');
	DM.USER.ParamByName('username').Value := Operator_username;
	DM.USER.Open;
  DataM.Operator_Name := DM.USER.FieldByName('FIO').AsString;
  DataM.Operator_id   := DM.USER.FieldByName('ID_CLIENTS').AsString;
	DM.USER.Close;



  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT id_company from buh_pref where rownum=1 and ID_emp='+DataM.Operator_id);
  DM.Q_SQL.Open;

  path := ExtractFilePath(Application.ExeName);
  Ini := TIniFile.Create(path + '\ini\'+Operator_username+'_setting.ini' );
  try
    company_default := Ini.ReadInteger('id_company','value',DM.Q_SQL.FieldByName('id_company').AsInteger);
  finally
    Ini.Free;
  end;



  with DM.Q_SQL do
  Begin
    try
      Close;
      SQL.Clear;
      SQL.Add('begin BUH_PKG.get_deps_on_user(:cursor_); end;');
      ParamByName('cursor_').AsCursor;
      Open;
    except
      on E: Exception do
         if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then NULL else MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
    end;
  End;

  Store_DepsCBEx.OnChange := nil;
  FillComboOlmer(DM.Q_SQL, Store_DepsCBEx, '');
  Store_DepsCBEx.ItemIndex := Store_DepsCBEx.KeyItems.IndexOf(DataM.department_id);
  DataM.department_id      := Store_DepsCBEx.Value;
  DataM.department_name    := Store_DepsCBEx.Text;
  Store_DepsCBEx.OnChange  := Store_DepsCBExChange;
  DM.StorProc.Close;
  StatusBar.Panels[0].Text:='  Оператор: '+ DataM.Operator_Name;

  //aGetRules.Execute;

  BitBtn2.Enabled  := DataM.Operator_edit;
  BitBtn11.Enabled := DataM.Operator_edit;
  BitBtn4.Enabled  := DataM.Operator_admin;

except
  on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
end;

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


//
//  При смене отдела меняем данные
//
procedure TOperSelectForm.Store_DepsCBExChange(Sender: TObject);
begin
  DataM.department_id   := Store_DepsCBEx.Value;
  DataM.department_name := Store_DepsCBEx.Text;
end;


//
// Закрытие программы
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
//  Обнуление нумерации
//
procedure TOperSelectForm.BitBtn4Click(Sender: TObject);
begin
  if GetOfficeID <> DM.id_office then
  begin
    MessageBox(Handle, 'Обнулять номерацию можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Вы уверены, что хотите обнулить номерацию документов?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    try
      screen.cursor:=crhourglass;
      with DM.Ora_SQL do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin BUH_PKG.NUMBER_OBNUL(:av_seq); end;');
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_1';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_2';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_3';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_4';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_5';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_6';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_7';
        Execute;
        ParamByName('av_seq').Value := 'BUH_DOC_NUMBER_8';
        Execute;
      end;

      screen.cursor:=crdefault;
      MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
    except
      on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
    End;
  end;
end;


//
//  Настройка банков
//
procedure TOperSelectForm.BitBtn11Click(Sender: TObject);
var theForm: TForm;
begin
  theForm := TcompanyForm.Create(Application);
  try
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
end;


//
//  Настройки
//
procedure TOperSelectForm.BitBtn2Click(Sender: TObject);
var theForm: TForm;
begin
  theForm := TpreferensesForm.Create(Application);
  try
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
end;


//
//  Товарные чеки
//
procedure TOperSelectForm.BitBtn1Click(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 1;
    TdocsviewForm(theForm).documenttype_name := 'Товарные чеки';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Счета-фактуры
//
procedure TOperSelectForm.BitBtn3Click(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
    DM.readparameters();
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 2;
    TdocsviewForm(theForm).documenttype_name := 'Счета-фактуры';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Товарные накладные
//
procedure TOperSelectForm.BitBtn5Click(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
    DM.readparameters();
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 3;
    TdocsviewForm(theForm).documenttype_name := 'Товарные накладные';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Накладные переоценки
//
procedure TOperSelectForm.BitBtn7Click(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := Treprice_form.Create(Application);
  try
    DM.readparameters();
	  Treprice_form(theForm).department_index  := strtoint(DataM.department_id);
	  Treprice_form(theForm).department_name   := DataM.department_name;
	  Treprice_form(theForm).documenttype_id   := 5;
    Treprice_form(theForm).documenttype_name := 'Накладные переоценки';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Бронирования
//
procedure TOperSelectForm.btnReservClick(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
    DM.readparameters();
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 6;
    TdocsviewForm(theForm).documenttype_name := 'Бронирования';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Статистика
//
procedure TOperSelectForm.btnStatClick(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TfrmStat.Create(Application);
  try
    DM.readparameters();
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Просмотр Универсальных передаточных документов
//
procedure TOperSelectForm.btnUPDClick(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
    DM.readparameters();
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 8;
    TdocsviewForm(theForm).documenttype_name := 'Универсальные передаточные документы';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Просмотр накладных
//
procedure TOperSelectForm.btn_kassClick(Sender: TObject);
begin
  frmCash := TfrmCash.Create(Application);
  try
    frmCash.CASH_TMP.Close;
    frmCash.CASH_TMP.Params.ParamByName('ddate_').AsDate       := Now;
    frmCash.CASH_TMP.Params.ParamByName('paydesk_').AsInteger  := 5;
    frmCash.CASH_TMP.Params.ParamByName('invoice_').AsInteger  := 999999;
    frmCash.CASH_TMP.Params.ParamByName('paydesk2_').AsInteger := 0;
    frmCash.CASH_TMP.Open;
    frmCash.ShowModal;
    frmCash.CASH_TMP.Close;
  finally
    frmCash.Free;
  end;
end;


//
//  Просмотр транспортных накладных
//
procedure TOperSelectForm.btn_cargoClick(Sender: TObject);
var theForm: TForm;
begin
  if (Store_DepsCBEx.ItemIndex >= 0) then
  begin
  theForm := TdocsviewForm.Create(Application);
  try
    DM.readparameters();
	  TdocsviewForm(theForm).department_index  := strtoint(DataM.department_id);
	  TdocsviewForm(theForm).department_name   := DataM.department_name;
	  TdocsviewForm(theForm).documenttype_id   := 7;
    TdocsviewForm(theForm).documenttype_name := 'Транспортные накладные';
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;





procedure TOperSelectForm.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;


end.
