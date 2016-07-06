unit main_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, OleCtrls, DB,
  ImgList, ActnList, DBGridEh, EhLibODAC, GridsEh, Mask, DBCtrlsEh,
  Menus, cxLookAndFeelPainters, cxButtons, cxGraphics, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, PI_Library_reg,
  DBGridEhGrouping;

type
  TMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    ComboBox6: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ActionList1: TActionList;
    ctrl_a: TAction;
    Label13: TLabel;
    TabSheet4: TTabSheet;
    Panel17: TPanel;
    DBGridEh1: TDBGridEh;
    Panel18: TPanel;
    RadioGroup1: TRadioGroup;
    ImageList1: TImageList;
    ComboBox3: TDBComboBoxEh;
    BitBtn13: TcxButton;
    BitBtn10: TcxButton;
    BitBtn2: TcxButton;
    BitBtn1: TcxButton;
    cxButton1: TcxButton;
    DBGridEh2: TDBGridEh;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel15: TPanel;
    Label10: TLabel;
    Panel13: TPanel;
    Label9: TLabel;
    DBGridEh3: TDBGridEh;
    ComboBox2: TDBComboBoxEh;
    BitBtn16: TcxButton;
    BitBtn14: TcxButton;
    BitBtn15: TcxButton;
    Panel6: TPanel;
    DBGrid4: TDBGridEh;
    Panel5: TPanel;
    BitBtn4: TcxButton;
    BitBtn6: TcxButton;
    BitBtn5: TcxButton;
    Splitter2: TSplitter;
    Panel9: TPanel;
    Panel10: TPanel;
    Label7: TLabel;
    Panel11: TPanel;
    BitBtn7: TcxButton;
    BitBtn9: TcxButton;
    BitBtn8: TcxButton;
    DBGrid3: TDBGridEh;
    BitBtn3: TcxButton;
    BitBtn11: TcxButton;
    BitBtn12: TcxButton;
    DBGrid2: TDBGridEh;
    BitBtn17: TcxButton;
    BitBtn19: TcxButton;
    DBComboBoxEh1: TDBComboBoxEh;
    imgOffice: TcxImageComboBox;
    Label2: TLabel;
    btnClients: TcxButton;
    tsh_debetors: TTabSheet;
    Panel8: TPanel;
    btnAddPermission: TcxButton;
    btnDelPermission: TcxButton;
    EhDebitors: TDBGridEh;
    Label3: TLabel;
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ctrl_aExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure btnClientsClick(Sender: TObject);
    procedure btnAddPermissionClick(Sender: TObject);
    procedure btnDelPermissionClick(Sender: TObject);
    procedure EhDebitorsDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    creator: string;
  end;

var
  Main: TMain;

implementation

uses DataM, logins_f, editor_f, pr_edit_f, UClientsByRole, UDebPermission;

{$R *.dfm}

// Быстрый поиск по нику сотрудника
procedure TMain.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit1.Text = '' then
    begin
      DM.Q_EMPL.First;
      Edit1.Color := clWindow;
    end
    else
    begin
      if DM.Q_EMPL.Locate('NICK',Edit1.Text,[loCaseInsensitive, loPartialKey]) then begin Edit1.Color := clWindow; end
      else Edit1.Color := clred;
    end;
end;

// Быстрый поиск по фамилии сотрудника
procedure TMain.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Edit2.Text = '' then
    begin
      DM.Q_EMPL.First;
      Edit2.Color := clWindow;
    end
    else
    begin
      if DM.Q_EMPL.Locate('FIO',Edit2.Text,[loCaseInsensitive, loPartialKey]) then begin Edit2.Color := clWindow; end
      else Edit2.Color := clred;
    end;
end;


//
// Добавление логина в ИС
procedure TMain.BitBtn10Click(Sender: TObject);
begin
if (DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger > 0) then
begin
  if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  if (DM.Q_EMPL.FieldByName('LOGIN').AsString <> '') then showmessage('Данный сотрудник уже имеет учетную запись!'+#10#13+'Вы можете изменить пароль или удалить ее!')
  else
  begin
    logins.Edit10.Text := '';
    logins.MaskEdit1.Text := '';
    logins.MaskEdit2.Text := '';

    logins.ShowModal;
    DBGridEh2.SetFocus;
  end;
end;
end;

//
// Изменить пароль
procedure TMain.BitBtn2Click(Sender: TObject);
var id: integer;
begin
  if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  if (DM.Q_EMPL.FieldByName('LOGIN').AsString = '') then showmessage('Данный сотрудник НЕ имеет учетную запись!'+#10#13+'Необходимо сначала создать учетную запись!')
  else
  begin
    id := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
    logins.Edit10.Text := DM.Q_EMPL.FieldByName('LOGIN').AsString;
    logins.MaskEdit1.Text := '';
    logins.MaskEdit2.Text := '';

    logins.ShowModal;
    DM.Q_EMPL.Locate('ID_CLIENTS',id,[]);
    DBGridEh2.SetFocus;
  end;
end;

//
// Убрать доступ в ИС
//
procedure TMain.BitBtn1Click(Sender: TObject);
var ind: integer;
begin
  if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  if (DM.Q_EMPL.FieldByName('LOGIN').AsString = '') then showmessage('Данный сотрудник НЕ имеет учетную запись!'+#10#13+'Необходимо сначала создать учетную запись!')
  else
    begin
      if MessageDlg('Вы действительно хотите убрать доступ в ИС?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          ind := DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('begin admins.remove_pass(:user_, :id_); end;' );
          DM.Ora_SQL.ParamByName('user_').AsString :=  DM.Q_EMPL.FieldByName('LOGIN').AsString;
          DM.Ora_SQL.ParamByName('id_').AsInteger :=  ind;

          // Пытаемся выполнить SQL запрос
          try
            DM.Ora_SQL.Execute;
            DM.Q_EMPL.Refresh;
            DM.Q_EMPL.Locate('ID_CLIENTS',ind,[]);
            ShowMessage('Операция прошла успешно.');
            DBGridEh2.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
  end;
end;

// Выход из программы
procedure TMain.BitBtn13Click(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then Close;
end;

// Фильтр сотрудников
procedure TMain.ComboBox6Change(Sender: TObject);
var sql: string;
begin

  sql := 'SELECT NN, ACTIVE, CCODE, FIO, ID_CLIENTS, LOGIN, NICK, STAFF, COUNT, id_office, brief from employees_view WHERE (id_office = '+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+' = 0) ';
  if (ComboBox6.ItemIndex = 1) then  sql := sql + ' AND LOGIN is not null';
  if (ComboBox6.ItemIndex = 2) then  sql := sql + ' AND LOGIN is null';

  if (ComboBox1.ItemIndex = 1) then  sql := sql + ' AND ACTIVE = 1';
  if (ComboBox1.ItemIndex = 2) then  sql := sql + ' AND ACTIVE = 0';

  if (ComboBox3.ItemIndex > 0) then
    sql := sql + ' AND ID_CLIENTS IN (SELECT ID_EMPLOYEES FROM ADMIN_EMPLOYEES_ROLE_GROUPS WHERE ID_ROLE_GROUPS='+IntToStr(ComboBox3.Value)+')';

  DM.Q_EMPL.Close;
  DM.Q_EMPL.SQL.Clear;
  DM.Q_EMPL.SQL.Add(sql);

  try
    DM.Q_EMPL.Open;
    DBGridEh2.SetFocus;
  except
    on E: Exception do ShowMessage(E.Message);
  End;
  
end;


// Добавление программы
procedure TMain.BitBtn3Click(Sender: TObject);
begin
    editor.ttype := 1;
    editor.Edit1.Text := '';
    editor.Memo1.Lines.Clear;
    editor.Label6.Caption := 'Список программ';
    editor.Edit1.Tag := 0;
    editor.ShowModal;
    DBGrid2.SetFocus;
end;


// Редактирование программы
procedure TMain.BitBtn11Click(Sender: TObject);
begin
    if (DM.Q_PROGS.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 2;
      editor.Edit1.Text := DM.Q_PROGS.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_PROGS.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Список программ';
      editor.Edit1.Tag := DM.Q_PROGS.FieldByName('ID_ADMIN_PROGRAMS').AsInteger;
      editor.ShowModal;
      DBGrid2.SetFocus;
    end;
end;


// Удалить программу
procedure TMain.BitBtn12Click(Sender: TObject);
begin
if  (DM.Q_PROGS.FieldByName('ID_ADMIN_PROGRAMS').AsInteger > 0) then
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin

    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin admins.remove_program(:id_); end;' );
    DM.Ora_SQL.ParamByName('id_').AsInteger :=  DM.Q_PROGS.FieldByName('ID_ADMIN_PROGRAMS').AsInteger;

    // Пытаемся выполнить SQL запрос на удаление
    try
      DM.Ora_SQL.Execute;
      DM.Q_PROGS.Refresh;

      ShowMessage('Удаление прошло успешно.');
    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else
        begin
          if (StrPos(PChar(E.Message), PChar('02292')) <> nil) then ShowMessage('Программа использована в группах!'#10#13'Удалите программу из всех групп')
          else  ShowMessage(E.Message);
        end;  
      end;
    End;
  end;
end
else ShowMessage('В базе данных нет записей для удаления!');
end;


// Добавление группы
procedure TMain.BitBtn4Click(Sender: TObject);
begin
    editor.ttype := 3;
    editor.Edit1.Text := '';
    editor.Memo1.Lines.Clear;
    editor.Label6.Caption := 'Список групп';
    editor.Edit1.Tag := 0;
    editor.Store_DepsCBEx.Tag := 0;
    editor.ShowModal;
    DBGrid4.SetFocus;
end;


// Редактирование группы
procedure TMain.BitBtn5Click(Sender: TObject);
begin
    if (DM.Q_GROUPS.FieldByName('NAME').AsString <> '') then
    begin
      if (DM.id_office <> DM.Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

      editor.ttype := 4;
      editor.Edit1.Text := DM.Q_GROUPS.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_GROUPS.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Список групп';
      editor.Edit1.Tag := DM.Q_GROUPS.FieldByName('ID_ROLE_GROUPS').AsInteger;
      editor.Store_DepsCBEx.Tag := DM.Q_GROUPS.FieldByName('ID_DEP').AsInteger;
      editor.ShowModal;
      DBGrid4.SetFocus;
    end;
end;


// Удаление группы
procedure TMain.BitBtn6Click(Sender: TObject);
var ind: integer;
begin
if  (DM.Q_GROUPS.FieldByName('ID_ROLE_GROUPS').AsInteger > 0) then
begin
      if (DM.id_office <> DM.Q_GROUPS.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
      begin
        MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
        exit;
      end;

  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    ind := DM.Q_GROUPS.FieldByName('ID_ROLE_GROUPS').AsInteger;

    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin admins.remove_role(:id_); end;' );
    DM.Ora_SQL.ParamByName('id_').AsInteger :=  ind;

    // Пытаемся выполнить SQL запрос на удаление
    try

      DM.Ora_SQL.Execute;
      DM.Q_GROUPS.Refresh;
      DM.Q_GR_PR.Refresh;
      DBGrid4.SetFocus;

    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else  ShowMessage(E.Message);
      end;
    End;
  end;
end
else ShowMessage('В базе данных нет записей для удаления!');
end;


// Добавление прав доступа
procedure TMain.BitBtn7Click(Sender: TObject);
begin
    pr_editor.ttype := 1;
    pr_editor.ComboBox1.ItemIndex := -1;
    pr_editor.CheckBox1.checked := false;
    pr_editor.CheckBox2.checked := false;
    pr_editor.CheckBox3.checked := false;
    pr_editor.CheckBox4.checked := false;
    pr_editor.CheckBox5.checked := false;
    pr_editor.ComboBox1.Enabled := true;
    pr_editor.ComboBox1.Tag := 0;
    pr_editor.ShowModal;
    DBGrid3.SetFocus;
end;


// Редактирование прав доступа
procedure TMain.BitBtn8Click(Sender: TObject);
var ind: integer;
begin
  if (DM.Q_GR_PR.FieldByName('ID_ROLE_GROUPS').AsInteger > 0) then
  begin
    if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    pr_editor.ttype := 2;

    ind := pr_editor.ComboBox1.Items.IndexOf(DM.Q_GR_PR.FieldByName('NAME').AsString);
    pr_editor.ComboBox1.ItemIndex := ind;
    pr_editor.ComboBox1.Enabled := false;

    if DM.Q_GR_PR.FieldByName('C_START').AsInteger = 1 then pr_editor.CheckBox1.checked := true else pr_editor.CheckBox1.checked := false;
    if DM.Q_GR_PR.FieldByName('C_EDIT').AsInteger = 1 then pr_editor.CheckBox2.checked := true else pr_editor.CheckBox2.checked := false;
    if DM.Q_GR_PR.FieldByName('C_DEL').AsInteger = 1 then pr_editor.CheckBox3.checked := true else pr_editor.CheckBox3.checked := false;
    if DM.Q_GR_PR.FieldByName('C_PRINT').AsInteger = 1 then pr_editor.CheckBox4.checked := true else pr_editor.CheckBox4.checked := false;
    if DM.Q_GR_PR.FieldByName('C_ADDIT').AsInteger = 1 then pr_editor.CheckBox5.checked := true else pr_editor.CheckBox5.checked := false;
    pr_editor.ComboBox1.Tag := DM.Q_GR_PR.FieldByName('ID_PROGRAMS').AsInteger;
    pr_editor.ShowModal;
    DBGrid3.SetFocus;
  end;
end;


// Удаление прав доступа
procedure TMain.BitBtn9Click(Sender: TObject);
var ind, ind2: integer;
begin
if  (DM.Q_GR_PR.FieldByName('ID_ROLE_GROUPS').AsInteger > 0) then
begin
    if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    ind := DM.Q_GR_PR.FieldByName('ID_ROLE_GROUPS').AsInteger;
    ind2 := DM.Q_GR_PR.FieldByName('ID_PROGRAMS').AsInteger;

    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin admins.remove_role_program(:GROUP_ID_, :PROG_ID_); end;');
    DM.Ora_SQL.ParamByName('GROUP_ID_').Value := ind;
    DM.Ora_SQL.ParamByName('PROG_ID_').Value := ind2;

    // Пытаемся выполнить SQL запрос на удаление
    try

      DM.Ora_SQL.Execute;
      DM.Q_GR_PR.Refresh;
      DBGrid3.SetFocus;

    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else  ShowMessage(E.Message);
      end;
    End;
  end;
end
else ShowMessage('В базе данных нет записей для удаления!');
end;


// Посмотреть сотрудников у выбранной группы
procedure TMain.btnClientsClick(Sender: TObject);
begin
  if not DM.Q_GROUPS.Active or (DM.Q_GROUPS.RecordCount = 0) then exit;
  UClientsByRole.OpenForUpdate(DM.OraSession1, DM.Q_GROUPSID_ROLE_GROUPS.AsInteger, DM.Q_GROUPSNAME.AsString);
end;


// Добавление сотруднику группы
procedure TMain.BitBtn14Click(Sender: TObject);
begin
  if (ComboBox2.ItemIndex > 0) then
  begin
    if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

     DM.Ora_SQL.SQL.Clear;
     DM.Ora_SQL.SQL.Add('begin admins.add_role(:EMPL_ID_, :GROUP_ID_); end;' );
     DM.Ora_SQL.ParamByName('EMPL_ID_').AsInteger :=  DM.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
     DM.Ora_SQL.ParamByName('GROUP_ID_').AsInteger :=  ComboBox2.Value;

     // Пытаемся выполнить SQL запрос
     try
        DM.Ora_SQL.Execute;
        DM.Q_EM_PR.Refresh;
        DBGridEh3.SetFocus;

      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
          else
          begin
            if (StrPos(PChar(E.Message), PChar('20001')) <> nil) then ShowMessage('Указанная группа уже добавлена к сотруднику!')
          else  ShowMessage(E.Message);
          end;
        end;
      End;
  end;
end;


// Удаление у сотрудника группы
procedure TMain.BitBtn16Click(Sender: TObject);
begin
  if (DM.Q_EM_PR.FieldByName('ID_EMPLOYEES').AsInteger > 0) then
  begin
    if (DM.id_office <> DM.Q_EMPL.FieldByName('ID_OFFICE').AsInteger) and (DM.id_office > 0) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит вашему офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin admins.remove_role(:EMPL_ID_, :GROUP_ID_); end;' );
      DM.Ora_SQL.ParamByName('EMPL_ID_').AsInteger :=  DM.Q_EM_PR.FieldByName('ID_EMPLOYEES').AsInteger;
      DM.Ora_SQL.ParamByName('GROUP_ID_').AsInteger :=  DM.Q_EM_PR.FieldByName('ID_ROLE_GROUPS').AsInteger;

      // Пытаемся выполнить SQL запрос на удаление
      try
        DM.Ora_SQL.Execute;
        DM.Q_EM_PR.Refresh;
        DBGridEh3.SetFocus;
      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
          else  ShowMessage(E.Message);
        end;
      End;
    end;
  end;
end;


// Показ параметров группы при двойном клике в таблице
procedure TMain.DBGrid5DblClick(Sender: TObject);
begin
  DM.Q_GROUPS.Locate('NAME',DM.Q_EM_PR.FieldValues['NAME'],[]);
  PageControl1.ActivePageIndex := 1;
end;

procedure TMain.BitBtn15Click(Sender: TObject);
begin
  If (ComboBox2.ItemIndex > 0) then
  begin
    DM.Q_GROUPS.Locate('NAME',ComboBox2.Text,[]);
    PageControl1.ActivePageIndex := 1;
  end;
end;

// Закрытие сессии
procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGridEh2.SumList.Active := false;
  DBGrid4.SumList.Active := false;
  DBGrid2.SumList.Active := false;
  DM.OraSession1.Close;
//  DM.Session_SQL.Close;
end;

procedure TMain.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var Style   : Integer;
Begin
	IF DataCol = 5 then
  begin
	  IF DM.Q_EMPLACTIVE.AsInteger = 1
		Then Style := DFCS_CHECKED
		Else Style := DFCS_BUTTONCHECK;
	DrawFrameControl(TDBGrid(Sender).Canvas.Handle, Rect, DFC_BUTTON, Style);
	End;
end;

procedure TMain.ctrl_aExecute(Sender: TObject);
begin
  if DM.Q_GR_PR_DS.State = dsEdit then DM.Q_GR_PR.Post;
end;


//
//  Обновление данных
//
procedure TMain.SpeedButton1Click(Sender: TObject);
var idd: integer;
begin

if (pageControl1.ActivePageIndex = 0) then
begin
  idd := DM.Q_EMPLID_CLIENTS.AsInteger;
  DM.Q_EMPL.Refresh;
  DM.Q_EMPL.Locate('ID_CLIENTS',idd,[]);
  DBGridEh2.SetFocus;
end;
if (pageControl1.ActivePageIndex = 1) then
begin
  idd := DM.Q_GROUPSID_ROLE_GROUPS.AsInteger;
  DM.Q_GROUPS.Refresh;
  DM.Q_GROUPS.Locate('ID_ROLE_GROUPS',idd,[]);
  DBGrid4.SetFocus;
end;
if (pageControl1.ActivePageIndex = 2) then
begin
  DM.Q_PROGS.Refresh;
  DBGrid2.SetFocus;
end;
if (pageControl1.ActivePageIndex = 3) then
begin
  DM.Q_SET_CASH.Refresh;
  DBGridEh1.SetFocus;
end;

end;



procedure TMain.BitBtn17Click(Sender: TObject);
begin
  If DBComboBoxEh1.ItemIndex > -1 then
  begin
      if DM.Q_SET_CASH.Locate('N_CASH;ID_CLIENTS', VarArrayOf([(RadioGroup1.itemindex+1), DBComboBoxEh1.Value]), []) = false then
      begin

        DM.Ora_SQL.SQL.Clear;
        DM.Ora_SQL.SQL.Add('begin admins.set_cash(:cash_, :id_client_); end;' );
        DM.Ora_SQL.ParamByName('cash_').AsInteger :=  (RadioGroup1.itemindex+1);
        DM.Ora_SQL.ParamByName('id_client_').AsInteger :=  DBComboBoxEh1.Value;

        // Пытаемся выполнить SQL запрос
        try
          DM.Ora_SQL.Execute;
          DM.Q_SET_CASH.Refresh;
          DM.Q_SET_CASH.Locate('N_CASH;ID_CLIENTS', VarArrayOf([(RadioGroup1.itemindex+1), DBComboBoxEh1.Value]), []);
        except
          on E: Exception do
          begin
            if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
            else  ShowMessage(E.Message);
          end;
        End;
      end;
  end;
end;

procedure TMain.BitBtn19Click(Sender: TObject);
begin

    if MessageDlg('Вы действительно хотите удалить доступ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin

        DM.Ora_SQL.SQL.Clear;
        DM.Ora_SQL.SQL.Add('begin admins.remove_cash(:cash_, :id_client_); end;' );
        DM.Ora_SQL.ParamByName('cash_').AsInteger :=  DM.Q_SET_CASHN_CASH.AsInteger;
        DM.Ora_SQL.ParamByName('id_client_').AsInteger :=  DM.Q_SET_CASHID_CLIENTS.AsInteger;

//        sql := 'DELETE FROM S_CASH.SET_CASH WHERE N_CASH='+DM.Q_SET_CASHN_CASH.AsString+' AND ID_CLIENTS='+DM.Q_EMPL2ID_CLIENTS.AsString;
        //DM.Q_IDD.Close;
//        DM.Ora_SQL.SQL.Clear;
//        DM.Ora_SQL.SQL.Add(sql);

        // Пытаемся выполнить SQL запрос
        try
//          DM.Session_SQL.Connect;
          DM.Ora_SQL.Execute;
//          DM.Session_SQL.Commit;
//          DM.Session_SQL.Disconnect;

          DM.Q_SET_CASH.Refresh;
        except
          on E: Exception do
          begin
            if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
            else  ShowMessage(E.Message);
          end;
        End;
    end;

end;


procedure TMain.DBGridEh4CellClick(Column: TColumnEh);
var ind, ind2: integer;
begin
{
if Column.Index > 0 then
begin
  DM.Ora_SQL.SQL.Clear;
  ind := DM.Q_GR_PR.FieldByName('ID_ROLE_GROUPS').AsInteger;
  ind2 := DM.Q_GR_PR.FieldByName('ID_PROGRAMS').AsInteger;

  if Column.Index = 1 then DM.Ora_SQL.SQL.Add('UPDATE S_ADMIN.ADMIN_PROGRAMS_ROLE_GROUPS SET C_START=:CHECK1 WHERE ID_ROLE_GROUPS=:GROUP_ID2 AND ID_PROGRAMS=:PROG_ID2');
  if Column.Index = 2 then DM.Ora_SQL.SQL.Add('UPDATE S_ADMIN.ADMIN_PROGRAMS_ROLE_GROUPS SET C_EDIT=:CHECK1 WHERE ID_ROLE_GROUPS=:GROUP_ID2 AND ID_PROGRAMS=:PROG_ID2');
  if Column.Index = 3 then DM.Ora_SQL.SQL.Add('UPDATE S_ADMIN.ADMIN_PROGRAMS_ROLE_GROUPS SET C_DEL=:CHECK1 WHERE ID_ROLE_GROUPS=:GROUP_ID2 AND ID_PROGRAMS=:PROG_ID2');
  if Column.Index = 4 then DM.Ora_SQL.SQL.Add('UPDATE S_ADMIN.ADMIN_PROGRAMS_ROLE_GROUPS SET C_PRINT=:CHECK1 WHERE ID_ROLE_GROUPS=:GROUP_ID2 AND ID_PROGRAMS=:PROG_ID2');
  if Column.Index = 5 then DM.Ora_SQL.SQL.Add('UPDATE S_ADMIN.ADMIN_PROGRAMS_ROLE_GROUPS SET C_ADDIT=:CHECK1 WHERE ID_ROLE_GROUPS=:GROUP_ID2 AND ID_PROGRAMS=:PROG_ID2');

  DM.Ora_SQL.ParamByName('GROUP_ID2').Value := ind;
  DM.Ora_SQL.ParamByName('PROG_ID2').Value := ind2;

  if Column.Index = 1 then begin
  if DM.Q_GR_PRC_START.AsInteger = 1 then DM.Ora_SQL.ParamByName('CHECK1').Value := 0 else DM.Ora_SQL.ParamByName('CHECK1').Value := 1;
  end;

  if Column.Index = 2 then begin
  if DM.Q_GR_PRC_EDIT.AsInteger = 1 then DM.Ora_SQL.ParamByName('CHECK1').Value := 0 else DM.Ora_SQL.ParamByName('CHECK1').Value := 1;
  end;

  if Column.Index = 3 then begin
  if DM.Q_GR_PRC_DEL.AsInteger = 1 then DM.Ora_SQL.ParamByName('CHECK1').Value := 0 else DM.Ora_SQL.ParamByName('CHECK1').Value := 1;
  end;

  if Column.Index = 4 then begin
  if DM.Q_GR_PRC_PRINT.AsInteger = 1 then DM.Ora_SQL.ParamByName('CHECK1').Value := 0 else DM.Ora_SQL.ParamByName('CHECK1').Value := 1;
  end;

  if Column.Index = 5 then begin
  if DM.Q_GR_PRC_ADDIT.AsInteger = 1 then DM.Ora_SQL.ParamByName('CHECK1').Value := 0 else DM.Ora_SQL.ParamByName('CHECK1').Value := 1;
  end;

  try
    DM.Session_SQL.Connect;
    DM.Ora_SQL.Execute;
    DM.Session_SQL.Commit;
    DM.Session_SQL.Disconnect;

    DM.Q_GR_PR.Refresh;
    DM.Q_GR_PR.Locate('ID_ROLE_GROUPS;ID_PROGRAMS', VarArrayOf([ind,ind2]),[]);
  except
    on E: Exception do
    begin
      if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
      else  ShowMessage(E.Message);
    end;
  End;

end;
}
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  DBGridEh2.SumList.Active := true;
  DBGrid4.SumList.Active := true;
  DBGrid2.SumList.Active := true;
end;

procedure TMain.FormShow(Sender: TObject);
begin
  try
     DM.Q_IDD.Close;
     DM.Q_IDD.SQL.Clear;
     DM.Q_IDD.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
     DM.Q_IDD.Open;
  except
     on E: Exception do ShowMessage(E.Message);
  end;


  imgOffice.Properties.OnChange := nil;
  FillImgComboCx(DM.Q_IDD, imgOffice, 'Все...');
  imgOffice.EditValue := DM.id_office;
  imgOffice.Properties.OnChange := imgOfficePropertiesChange;

  imgOffice.Enabled := (GetOfficeID = 1);
  DBGridEh2.Columns.Items[1].Visible := imgOffice.Enabled;
  DBGridEh1.Columns.Items[0].Visible := imgOffice.Enabled;

  BitBtn3.Enabled := (GetOfficeID = 1);
  BitBtn11.Enabled := (GetOfficeID = 1);
  BitBtn12.Enabled := (GetOfficeID = 1);

end;

procedure TMain.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;
  DM.RefreshAll;
end;


// Добавить доступ к дебиторам
procedure TMain.btnAddPermissionClick(Sender: TObject);
begin
  frmDebPermission := TfrmDebPermission.Create(Application);
  try
    frmDebPermission.DBComboBoxEh2.Tag := 0;
    frmDebPermission.Label1.Caption   := 'Сотрудник:';
    frmDebPermission.showmodal;
    DM.Q_SET_DEBITOR.Refresh;
    DM.Q_SET_DEBITOR.Locate('id_clients',frmDebPermission.DBComboBoxEh2.Tag,[]);
    EhDebitors.SetFocus;
  finally
    frmDebPermission.Free;
  end;
end;


// Удалить доступ к дебиторам
procedure TMain.btnDelPermissionClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите удалить доступ?',mtConfirmation,[mbYes, mbNo],0) = mrNo then exit;

  try
    DM.Q_IDD.Close;
    DM.Q_IDD.SQL.Clear;
    DM.Q_IDD.SQL.Add('delete from DEBETOR_PERMISSIONS where USER_ID = :p1');
    DM.Q_IDD.ParamByName('p1').AsInteger := DM.Q_SET_DEBITORID_CLIENTS.AsInteger;
    DM.Q_IDD.Execute;
    DM.OraSession1.Commit;
    DM.Q_SET_DEBITOR.Refresh;
  except
     on E: Exception do ShowMessage(E.Message);
  end;
end;


procedure TMain.EhDebitorsDblClick(Sender: TObject);
begin
  frmDebPermission := TfrmDebPermission.Create(Application);
  try
    frmDebPermission.DBComboBoxEh2.Tag := DM.Q_SET_DEBITORID_CLIENTS.AsInteger;
    frmDebPermission.Label1.Caption   := 'Сотрудник: '+DM.Q_SET_DEBITORNICK.AsString + ' :: ' + DM.Q_SET_DEBITORFIO.AsString;
    frmDebPermission.showmodal;
    DM.Q_SET_DEBITOR.Refresh;
    DM.Q_SET_DEBITOR.Locate('id_clients',frmDebPermission.DBComboBoxEh2.Tag,[]);
    EhDebitors.SetFocus;
  finally
    frmDebPermission.Free;
  end;
end;


end.
