unit UEditAdmins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, Mask, Buttons,
  cxButtons, ExtCtrls, cxSpinEdit, cxCheckBox, DBCtrlsEh, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxContainer, cxEdit, cxTextEdit, cxPC,
  cxControls, DBCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Ora, MemDS, star_lib;

type
  TfrmEditAdmins = class(TForm)
    cxPageControl1: TcxPageControl;
    tsh_regions: TcxTabSheet;
    tsh_cityes: TcxTabSheet;
    tsh_promo: TcxTabSheet;
    tsh_clienttypes: TcxTabSheet;
    tsh_departs: TcxTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit10: TEdit;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    ComboBox1: TDBComboBoxEh;
    GroupBox1: TGroupBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Panel3: TPanel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Store_DepsCBEx: TDBComboBoxEh;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton6: TcxButton;
    pnlTop: TPanel;
    cdsQuery: TOraQuery;
    dsQuery: TOraDataSource;
    cdsQ: TOraQuery;
    grClients: TcxGrid;
    grClientsV: TcxGridDBTableView;
    grClientsVNICK: TcxGridDBColumn;
    grClientsVFIO: TcxGridDBColumn;
    grBtnDel: TcxGridDBColumn;
    grClientsVID_CLIENTS: TcxGridDBColumn;
    grClientsL: TcxGridLevel;
    Panel6: TPanel;
    Label12: TLabel;
    DBComboBoxEh2: TDBComboBoxEh;
    Q_IDD: TOraQuery;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    grotmetka: TcxGridDBColumn;
    grkod: TcxGridDBColumn;
    grfio: TcxGridDBColumn;
    grgrypa: TcxGridDBColumn;
    grClientsVREGION: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    grClientsVID_DEBETORS: TcxGridDBColumn;
    grClientsVLAST_DDATE: TcxGridDBColumn;
    grClientsVSTATE: TcxGridDBColumn;
    grClientsVBEZNAL: TcxGridDBColumn;
    grClientsVMARK: TcxGridDBColumn;
    grClientsVDEBET: TcxGridDBColumn;
    grClientsVCREDIT_DAYS: TcxGridDBColumn;
    grClientsVINFO: TcxGridDBColumn;
    grClientsVDDATE: TcxGridDBColumn;
    grClientsVRUBL: TcxGridDBColumn;
    grClientsVCHART: TcxGridDBColumn;
    grClientsVBLOCK1: TcxGridDBColumn;
    grClientsVBLOCK2: TcxGridDBColumn;
    grClientsVPHONE: TcxGridDBColumn;
    grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsVKKK: TcxGridDBColumn;
    grClientsVMARK_KOL: TcxGridDBColumn;
    grClientsVMAX_DATE: TcxGridDBColumn;
    grClientsVGROUP_MAX_DATE: TcxGridDBColumn;
    grClientsVIS_LOCK: TcxGridDBColumn;
    grClientsVLOCK_FOR: TcxGridDBColumn;
    grClientsVLOCK_CLIENT: TcxGridDBColumn;
    grClientsVSALES: TcxGridDBColumn;
    grClientsVWW: TcxGridDBColumn;
    grClientsVCHART_FOR_GROUP: TcxGridDBColumn;
    grClientsVID_OFFICE: TcxGridDBColumn;
    grClientsVBRIEF: TcxGridDBColumn;
    grClientsVINN: TcxGridDBColumn;
    grClientsVITOG_DISCOUNT: TcxGridDBColumn;
    grClientsVCHART2: TcxGridDBColumn;
    grClientsVCHART_GROUP: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsQuery1: TOraQuery;
    dsQuery1: TOraDataSource;
    cdsQuery1ID_CLIENTS: TIntegerField;
    cdsQuery1NICK: TStringField;
    cdsQuery1FIO: TStringField;
    cdsQueryD_CHECKED: TFloatField;
    cdsQueryNICK: TStringField;
    cdsQueryFIO: TStringField;
    cdsQueryID_DEBETORS: TFloatField;
    cdsQueryID_CLIENTS: TIntegerField;
    cdsQueryLAST_DDATE: TDateTimeField;
    cdsQuerySTATE: TIntegerField;
    cdsQueryBEZNAL: TIntegerField;
    cdsQueryMARK: TIntegerField;
    cdsQueryDEBET: TFloatField;
    cdsQueryCREDIT_DAYS: TIntegerField;
    cdsQueryINFO: TStringField;
    cdsQueryDDATE: TDateTimeField;
    cdsQueryRUBL: TIntegerField;
    cdsQueryCHART: TFloatField;
    cdsQueryBLOCK1: TIntegerField;
    cdsQueryBLOCK2: TIntegerField;
    cdsQueryPHONE: TStringField;
    cdsQueryREGION: TIntegerField;
    cdsQueryGROUP_NAME: TStringField;
    cdsQueryID_CLIENTS_GROUPS: TIntegerField;
    cdsQueryKKK: TStringField;
    cdsQueryMARK_KOL: TFloatField;
    cdsQueryMAX_DATE: TDateTimeField;
    cdsQueryGROUP_MAX_DATE: TDateTimeField;
    cdsQueryIS_LOCK: TIntegerField;
    cdsQueryLOCK_FOR: TIntegerField;
    cdsQueryLOCK_CLIENT: TStringField;
    cdsQuerySALES: TFloatField;
    cdsQueryWW: TStringField;
    cdsQueryCHART_FOR_GROUP: TFloatField;
    cdsQueryID_OFFICE: TIntegerField;
    cdsQueryBRIEF: TStringField;
    cdsQueryINN: TStringField;
    cdsQueryITOG_DISCOUNT: TFloatField;
    cdsQueryCHART2: TFloatField;
    cdsQueryCHART_GROUP: TFloatField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grBtnDelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure DBComboBoxEh2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype, ttype1: integer;
    function OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;
  end;

var
  frmEditAdmins: TfrmEditAdmins;



implementation

{$R *.dfm}

uses uadmin, udm;

//запись
procedure TfrmEditAdmins.cxButton1Click(Sender: TObject);
var user_id: integer;
    ind: integer;
begin

//учетки
if frmAdmin.page=0 then begin
  if ((Edit10.Text <> '') and (MaskEdit1.Text <> '') and (MaskEdit2.Text <> '')) then
  begin

  if (frmAdmin.Q_EMPL.FieldByName('LOGIN').IsNull = false) then
  // Изменение учетной записи для пользователя ИС
  begin
      if MessageDlg('Изменяется учетная запись пользователя в ИС!'+#10#13+'Вы уверены в правильности информации?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (MaskEdit1.Text <> MaskEdit2.Text) then ShowMessage('Неправильный ввод паролей!')
        else
        begin

          frmAdmin.Ora_SQL.SQL.Clear;
          frmAdmin.Ora_SQL.SQL.Add('begin admins.change_pass(:user_, :pass_); end;' );
          frmAdmin.Ora_SQL.ParamByName('user_').AsString :=  frmAdmin.Q_EMPL.FieldByName('LOGIN').AsString;
          frmAdmin.Ora_SQL.ParamByName('pass_').AsString :=  MaskEdit1.Text;

          // Пытаемся выполнить SQL запрос на добавление пользователя
          try
            frmAdmin.Ora_SQL.Execute;
            frmAdmin.Q_EMPL.Refresh;
            ShowMessage('Операция прошла успешно.');
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
        end;
      end;
    end

  else

    // Создание учетной записи для нового пользователя ИС
 //   if (trim(DM.Q_EMPL.FieldByName('LOGIN').AsString) = '') then
    begin
      if MessageDlg('Создается новая учетная запись пользователя в ИС!'+#10#13+'Вы уверены в правильности информации?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        if (MaskEdit1.Text <> MaskEdit2.Text) then ShowMessage('Неправильный ввод паролей!')
        else
        begin
          ind := frmAdmin.Q_EMPL.FieldByName('ID_CLIENTS').AsInteger;
          frmAdmin.Ora_SQL.SQL.Clear;
          frmAdmin.Ora_SQL.SQL.Add('begin admins.new_pass(:user_, :pass_, :id_); end;' );
          frmAdmin.Ora_SQL.Prepare;
          frmAdmin.Ora_SQL.ParamByName('user_').AsString :=  Edit10.Text;
          frmAdmin.Ora_SQL.ParamByName('pass_').AsString :=  MaskEdit1.Text;
          frmAdmin.Ora_SQL.ParamByName('id_').AsInteger :=  ind;

          // Пытаемся выполнить SQL запрос на добавление пользователя
          try
            frmAdmin.Ora_SQL.Execute;
            frmAdmin.Q_EMPL.Refresh;
            frmAdmin.Q_EMPL.Locate('ID_CLIENTS',ind,[]);

            Edit10.Text := '';
            MaskEdit1.Text := '';
            MaskEdit2.Text := '';

            ShowMessage('Операция прошла успешно.');
          except
            on E: Exception do
            begin
              ShowMessage(E.Message);
            end;
          End;
        end;
      end;
    end;

  end
  else ShowMessage('Необхоимо заполнить все параметры!');
end;



//дебиторы
if frmAdmin.page=4 then begin
  if not cxbutton1.Visible then ModalResult := mrOk;

  Q_IDD.Close;
  Q_IDD.SQL.Clear;
  Q_IDD.SQL.Add('delete from DEBETOR_PERMISSIONS where USER_ID='+IntToStr(DBComboBoxEh2.Tag));
  Q_IDD.Execute;

  Q_IDD.Close;
  Q_IDD.SQL.Clear;
  Q_IDD.SQL.Add('insert into DEBETOR_PERMISSIONS values(:p1, :p2)');
  cdsQuery.Filter := 'd_checked=1';
  cdsQuery.Filtered := true;

  if cdsQuery.RecordCount = 0 then
  begin
    cdsQuery.Filtered := false;
    cdsQuery.Filter := '';
    exit;
  end;

  if DBComboBoxEh2.Tag > 0 then
    user_id := DBComboBoxEh2.Tag
  else
  begin
    user_id := DBComboBoxEh2.Value;
    DBComboBoxEh2.Tag := DBComboBoxEh2.Value;
  end;

  cdsQuery.DisableControls;
  try
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      Q_IDD.ParamByName('p1').AsInteger := user_id;
      Q_IDD.ParamByName('p2').AsInteger := cdsQueryID_DEBETORS.AsInteger;
      Q_IDD.Execute;
      cdsQuery.next;
    end;
  finally
    DM.OraSession.Commit;
    cdsQuery.EnableControls;
    ModalResult := mrOk;
  end;
 end;

// привилегии
if frmAdmin.page=1 then begin
if (ComboBox1.ItemIndex < 0) then ShowMessage('Вы не указали программу!')
else
begin
      frmAdmin.Ora_SQL.SQL.Clear;
      frmAdmin.Ora_SQL.SQL.Add('begin admins.save_role_program(:GROUP_ID_, :PROG_ID_, :CHECK1_, :CHECK2_, :CHECK3_, :CHECK4_, :CHECK5_); end;');

      frmAdmin.Ora_SQL.ParamByName('GROUP_ID_').Value := frmAdmin.Q_GROUPS.FieldByName('ID_ROLE_GROUPS').AsInteger;
      frmAdmin.Ora_SQL.ParamByName('PROG_ID_').Value := ComboBox1.Value;
      if CheckBox3.Checked = true then frmAdmin.Ora_SQL.ParamByName('CHECK1_').Value := 1 else frmAdmin.Ora_SQL.ParamByName('CHECK1_').Value := 0;
      if CheckBox4.Checked = true then frmAdmin.Ora_SQL.ParamByName('CHECK2_').Value := 1 else frmAdmin.Ora_SQL.ParamByName('CHECK2_').Value := 0;
      if CheckBox5.Checked = true then frmAdmin.Ora_SQL.ParamByName('CHECK3_').Value := 1 else frmAdmin.Ora_SQL.ParamByName('CHECK3_').Value := 0;
      if CheckBox6.Checked = true then frmAdmin.Ora_SQL.ParamByName('CHECK4_').Value := 1 else frmAdmin.Ora_SQL.ParamByName('CHECK4_').Value := 0;
      if CheckBox7.Checked = true then frmAdmin.Ora_SQL.ParamByName('CHECK5_').Value := 1 else frmAdmin.Ora_SQL.ParamByName('CHECK5_').Value := 0;

      // Пытаемся выполнить SQL запрос
      try
        frmAdmin.Ora_SQL.Execute;
        frmAdmin.Q_GR_PR.Refresh;
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



//запись прог и групп:
if frmAdmin.page=2 then begin
if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
else
begin
    frmAdmin.selq.SQL.Clear;

    if ((ttype = 1) or (ttype = 2)) then
    begin
      frmAdmin.selq.SQL.Add('begin admins.save_PROGRAMS(:name_, :info_, :dll_, :id_); end;');
      frmAdmin.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmAdmin.selq.ParamByName('info_').AsString := Memo1.Text;
      frmAdmin.selq.ParamByName('dll_').AsString := '';
      frmAdmin.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmAdmin.selq.Execute;
      Edit1.Tag := frmAdmin.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 3) or (ttype = 4)) then
    begin
      frmAdmin.selq.SQL.Add('begin admins.save_ROLE_GROUPS(:name_, :info_, :id_dep_, :id_); end;');
      frmAdmin.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmAdmin.selq.ParamByName('info_').AsString := Memo1.Text;
      frmAdmin.selq.ParamByName('id_dep_').AsInteger := Store_DepsCBEx.Value;
      frmAdmin.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmAdmin.selq.Execute;
      Edit1.Tag := frmAdmin.selq.ParamByName('id_').AsInteger;
    end;

    // Пытаемся выполнить SQL запрос
    try
      frmAdmin.selq.Execute;
      if ((ttype = 1) or (ttype = 2)) then
      begin
        frmAdmin.Q_PROGS.Refresh;
        frmAdmin.Q_PROGS.Locate('ID_ADMIN_PROGRAMS',Edit1.Tag,[]);
      end;

      // для групп
      if ((ttype = 4) or (ttype = 3)) then
      begin
        frmAdmin.Q_GROUPS.Refresh;
        frmAdmin.Q_GROUPS.Locate('ID_ROLE_GROUPS',Edit1.Tag,[]);
      end;

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
end;

//очистка
procedure TfrmEditAdmins.cxButton2Click(Sender: TObject);
 var ind: integer;
begin

if frmAdmin.page=0 then begin
  Edit10.Text := '';
  MaskEdit1.Text := '';
  MaskEdit2.Text := '';
end;



if frmAdmin.page=1 then begin
  if (ttype1 = 1) then
  begin
    ComboBox1.ItemIndex := -1;
    CheckBox3.checked := false;
    CheckBox4.checked := false;
    CheckBox5.checked := false;
    CheckBox6.checked := false;
    CheckBox7.checked := false;
  end;

  if (ttype1 = 2) then
  begin
    ind := ComboBox1.Items.IndexOf(frmAdmin.Q_GR_PR.FieldByName('NAME').AsString);
    ComboBox1.ItemIndex := ind;

    if frmAdmin.Q_GR_PR.FieldByName('C_START').AsInteger = 1 then CheckBox3.checked := true else CheckBox3.checked := false;
    if frmAdmin.Q_GR_PR.FieldByName('C_EDIT').AsInteger = 1 then CheckBox4.checked := true else CheckBox4.checked := false;
    if frmAdmin.Q_GR_PR.FieldByName('C_DEL').AsInteger = 1 then CheckBox5.checked := true else CheckBox5.checked := false;
    if frmAdmin.Q_GR_PR.FieldByName('C_PRINT').AsInteger = 1 then CheckBox6.checked := true else CheckBox6.checked := false;
    if frmAdmin.Q_GR_PR.FieldByName('C_ADDIT').AsInteger = 1 then CheckBox7.checked := true else CheckBox7.checked := false;
  end;
end;


if frmAdmin.page=2 then begin
  if ((ttype = 1) or (ttype = 3)) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    Edit1.Text := frmAdmin.Q_PROGS.FieldByName('NAME').AsString;
    MEMO1.Text := frmAdmin.Q_PROGS.FieldByName('INFO').AsString;
  end;

  if (ttype = 4) then
  begin
    Edit1.Text := frmAdmin.Q_GROUPS.FieldByName('NAME').AsString;
    MEMO1.Text := frmAdmin.Q_GROUPS.FieldByName('INFO').AsString;
  end;
end;
end;

procedure TfrmEditAdmins.cxButton6Click(Sender: TObject);
begin
 close;
end;

procedure TfrmEditAdmins.DBComboBoxEh2Change(Sender: TObject);
begin
  cdsQuery.Close;
  cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Value;
  cdsQuery.Open;
  cxgrid1.SetFocus;
end;

procedure TfrmEditAdmins.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 cdsQuery1.Close;
end;

procedure TfrmEditAdmins.FormCreate(Sender: TObject);
begin
{if frmadmin.page=4 then begin

  DBComboBoxEh2.OnChange := nil;
  FillComboEh(Q_IDD, DBComboBoxEh2, 'select id_clients, FIO from employees_view where (id_office = '+IntToStr(frmadmin.id_office)+' or '+IntToStr(frmadmin.id_office)+' = 0) and active=1 and login is not null order by FIO');
  Q_IDD.Close;

  cdsQuery.Filter   := '';
  cdsQuery.Filtered := false;
  cxGridDBTableView1.DataController.Filter.Clear;
  cxGridDBTableView1.DataController.Filter.Active := false;
end;   }
end;

procedure TfrmEditAdmins.FormShow(Sender: TObject);
 var i:integer;
begin
//скрываем все вкладки
for i:=0 to cxPageControl1.PageCount-1 do cxPageControl1.Pages[i].TabVisible:=false;
cxPageControl1.ActivePageIndex:=frmAdmin.page; // активная вкладка задается в uadmin

  if (cxPageControl1.ActivePage.PageIndex=1) then  cxbutton2.visible:=false
  else   cxbutton2.visible:=true;

  if frmAdmin.page=3 then begin
  cxPageControl1.ActivePageIndex:=3;
  cxPageControl1.Pages[frmAdmin.page].TabVisible:=true;
  cxbutton1.visible:=false;
  cxbutton2.visible:=false;
  cxbutton6.visible:=false;
  end
  else begin
  cxbutton1.visible:=true;
  cxbutton2.visible:=true;
  cxbutton6.visible:=true;
  end;


  if frmAdmin.page=4 then begin
  cxPageControl1.Pages[frmAdmin.page].TabVisible:=true;
  DBComboBoxEh2.OnChange := nil;
  FillComboEh(Q_IDD, DBComboBoxEh2, 'select id_clients, FIO from employees_view where (id_office = '+IntToStr(frmAdmin.id_office)+' or '+IntToStr(frmAdmin.id_office)+' = 0) and active=1 and login is not null order by FIO');
  Q_IDD.Close;

  cdsQuery.Filter   := '';
  cdsQuery.Filtered := false;
  cxGridDBTableView1.DataController.Filter.Clear;
  cxGridDBTableView1.DataController.Filter.Active := false;

  cdsQuery.Close;
  cdsQuery.ParamByName('office_id').AsInteger := frmAdmin.id_office;
  if DBComboBoxEh2.Tag > 0 then
  begin
    DBComboBoxEh2.ReadOnly           := true;
    DBComboBoxEh2.Visible            := false;
    cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Tag;
    cdsQuery.Open;

    grotmetka.DataBinding.AddToFilter(nil, foEqual, 1);
    cxGridDBTableView1.DataController.Filter.Active := True;
  end
  else
  begin
    DBComboBoxEh2.ReadOnly           := false;
    DBComboBoxEh2.Visible            := true;
    cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Value;
    cdsQuery.Open;
    DBComboBoxEh2.OnChange := DBComboBoxEh2Change;
  end;
  end;

  

  //группы - доб и ред 
  if ((ttype = 3) or (ttype = 4)) then
  begin
    cxPageControl1.Pages[frmAdmin.page].TabVisible:=true; //открываю нужную вкладку
    Label24.Visible := true;
    Store_DepsCBEx.Visible := true;
    with frmAdmin.selq do
    Begin
    try
      Close;
      SQL.Clear;
      SQL.Add('begin admins.get_deps_on_user(:cursor_); end;');
//      ParamByName('login_').Value := UpperCase(DataM.Operator_username);
      ParamByName('cursor_').AsCursor;
      Open;
    except
      on E: Exception do
         if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then NULL else MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
    end;
    End;

    FillComboOlmer(frmAdmin.selq, Store_DepsCBEx, 'Все отделы');
    if Store_DepsCBEx.Tag > 0 then Store_DepsCBEx.Value := Store_DepsCBEx.Tag;
    
  end
  else
  begin
    Label24.Visible := false;
    Store_DepsCBEx.Visible := false;
  end;
end;

procedure TfrmEditAdmins.grBtnDelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Удалить доступ сотрудника к роли?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then exit;
  cdsQ.Close;
  cdsQ.SQL.Text := 'delete from ADMIN_EMPLOYEES_ROLE_GROUPS where ID_EMPLOYEES='+IntToStr(grClientsVID_CLIENTS.EditValue)+' and ID_ROLE_GROUPS='+IntToStr(pnlTop.Tag);
  cdsQ.ExecSQL;
  cdsQ.Session.Commit;
  cdsQuery1.Refresh;
end;

function tfrmEditAdmins.OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;
  begin
    try
      with frmEditAdmins do
      begin
        try
          frmEditAdmins.pnlTop.Caption := GroupName;
          cdsQuery1.Session := oraSess;
          cdsQ.Session := oraSess;
          cdsQuery1.Close;
          cdsQuery1.SQL.Text := 'SELECT c.id_clients, c.nick, c.fio FROM ADMIN_EMPLOYEES_ROLE_GROUPS EG, clients c where EG.ID_EMPLOYEES = c.id_clients and EG.ID_ROLE_GROUPS='+IntToStr(idGroup);
          cdsQuery1.Open;
          pnlTop.Tag := idGroup;
          result := ShowModal;
        except
          on E: Exception do MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        End;
      end;
    finally
    end;
  end;

end.
