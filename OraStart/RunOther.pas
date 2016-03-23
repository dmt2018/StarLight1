unit RunOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, PI_Library, Menus,
  cxLookAndFeelPainters, cxButtons, DB, Registry, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  cxLabel, jpeg, cxImage, ActnList;

type
  TRunner = class(TForm)
    Panel3: TPanel;
    Panel9: TPanel;
    pnl_User: TPanel;
    GroupBox1: TGroupBox;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Panel2: TPanel;
    Label4: TLabel;
    imgOtdel: TcxImageComboBox;
    btnSale: TBitBtn;
    starter_al: TActionList;
    aGetRules: TAction;
    btn_fito: TBitBtn;
    lblOffice: TLabel;
    aFillOffice: TAction;
    aFillDeps: TAction;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure btnSaleClick(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure btn_fitoClick(Sender: TObject);
    procedure aFillDepsExecute(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    pnl_msg: TPanel;
    path: string;
    dict_started, admin_started, ref_books_started, registr_started, come_go_started, sec_go_started, order_started, inv_started, fito_started, cl_started, ca_started, sv_started, cu_started, bu_started, sk_started, price_started, deb_started, dis_started, stat_started, sel_started : boolean;
    dict_path, dict_name, admin_path, admin_name, ref_books_path, ref_books_name, registr_path, registr_name, come_go_name, come_go_path,sec_go_name, sec_go_path, order_path, order_name, inv_path, inv_name, fito_path, fito_name, cl_path, cl_name, ca_path, ca_name, sv_path, sv_name, cu_path, cu_name, bu_path, bu_name, sk_path, sk_name, price_path, price_name, deb_path, deb_name, dis_path, dis_name, stat_path, stat_name, sel_path, sel_name : string;
    dict_si, admin_si, ref_books_si, registr_si, come_go_si, sec_go_si,order_si, inv_si, fito_si, cl_si, ca_si, sv_si, cu_si, bu_si, sk_si, price_si, deb_si, dis_si, stat_si, sel_si : STARTUPINFO;
    dict_pi, admin_pi, ref_books_pi, registr_pi, come_go_pi, sec_go_pi, order_pi, inv_pi, fito_pi, cl_pi, ca_pi, sv_pi, cu_pi, bu_pi, sk_pi, price_pi, deb_pi, dis_pi, stat_pi, sel_pi : PROCESS_INFORMATION;
    username, password : string;
//    sql_sel_start : string;

    // ### Обозначение символов ###
    // e - редактирование
    // k - удаление
    // t - распечатка
    // a - дополнительная функция
    // ### ###

    a_e,  a_k,  a_t,  a_a : boolean;               // администрирование
    r_e,  r_k,  r_t,  r_a : boolean;                    // регистрация
    d_e,  d_k,  d_t,  d_a : boolean;                    // словарь номенклатуры
    rb_e, rb_k, rb_t, rb_a : boolean;                 // справочники
    cg_e, cg_k, cg_t, cg_a : boolean;           // Come_go
    sec_e, sec_k, sec_t, sec_a : boolean;           // secretary
    o_e,  o_k,  o_t,  o_a : boolean;               // Для заказов
    inv_e, inv_k, inv_t, inv_a : boolean;              // Для инвойсов
    fito_e, fito_k, fito_t, fito_a : boolean;              // Для ФИТО
    cl_e, cl_k, cl_t, cl_a : boolean;                 // Для претензий
    ca_e, ca_k, ca_t, ca_a : boolean;           // Для кассы
    sv_e, sv_k, sv_t, sv_a : boolean;           // Для кассового свода
    cu_e, cu_k, cu_t, cu_a : boolean;                 // Для обмена валют
    bu_e, bu_k, bu_t, bu_a : boolean;                 // Для бухгалтерии
    sk_e, sk_k, sk_t, sk_a: boolean;            // Для склада
    pr_e, pr_k, pr_t, pr_a : boolean;                 // Для цен
    deb_e, deb_k, deb_t, deb_a : boolean;       // Для дебиторов
    dis_e, dis_k, dis_t, dis_a : boolean;              // Для разноски
    stat_e, stat_k, stat_t, stat_a : boolean;           // Для статистики
    sel_e, sel_k, sel_t, sel_a : boolean;              // Для продажи
//    state: integer;
  public
    { Public declarations }
  end;

var
  Runner: TRunner;

implementation

uses logon, DataModule, info_f;

{$R *.dfm}

procedure TRunner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  login.Close;
end;

// Создание формы
procedure TRunner.FormCreate(Sender: TObject);
begin
  dict_path := '..\OraDict';
  dict_name := 'DictionaryEditor.exe';
  dict_started := false;

  admin_path := '..\Admin';
  admin_name := 'Admin.exe';
  admin_started := false;

  ref_books_path := '..\Ref_books';
  ref_books_name := 'Ref_books.exe';
  ref_books_started := false;

  registr_path := '..\registration';
  registr_name := 'registration.exe';
  registr_started := false;

  come_go_path := '..\Secretary';
  come_go_name := 'secretary.exe';
  come_go_started := false;

  sec_go_path := '..\Sec';
  sec_go_name := 'sec.exe';
  sec_go_started := false;


  order_path := '..\orders';
  order_name := 'orders.exe';
  order_started := false;

  inv_path := '..\ExRead';
  inv_name := 'ExcelReader.exe';
  inv_started := false;

  fito_path := '..\customs';
  fito_name := 'customs.exe';
  fito_started := false;

  cl_path := '..\claims';
  cl_name := 'claims.exe';
  cl_started := false;

  ca_path := '..\paydesk';
  ca_name := 'paydesk.exe';
  ca_started := false;

  sv_path := '..\svod';
  sv_name := 'kass_svod.exe';
  sv_started := false;

  cu_path := '..\currency';
  cu_name := 'currensy.exe';
  cu_started := false;

  bu_path := '..\store_buh';
  bu_name := 'store_buh.exe';
  bu_started := false;

  sk_path := '..\storehouse';
  sk_name := 'store.exe';
  sk_started := false;

  price_path := '..\PriceList';
  price_name := 'PriceList.exe';
  price_started := false;

  deb_path := '..\debitors';
  deb_name := 'kass_svod.exe';
  deb_started := false;

  dis_path := '..\Distribution';
  dis_name := 'Distribution.exe';
  dis_started := false;

  stat_path := '..\statistics';
  stat_name := 'statistic.exe';
  stat_started := false;

  sel_path := '..\sales';
  sel_name := 'sales.exe';
  sel_started := false;

  // Скрытие всех кнопок при загрузке программы
  BitBtn1.Enabled := false;
  BitBtn3.Enabled := false;
  BitBtn4.Enabled := false;
  BitBtn5.Enabled := false;
  BitBtn7.Enabled := false;
  BitBtn8.Enabled := false;
  BitBtn9.Enabled := false;
  BitBtn10.Enabled := false;
  BitBtn11.Enabled := false;
  BitBtn12.Enabled := false;
  BitBtn13.Enabled := false;
  BitBtn14.Enabled := false;
  BitBtn15.Enabled := false;
  BitBtn16.Enabled := false;
  BitBtn17.Enabled := false;
  BitBtn18.Enabled := false;
  BitBtn19.Enabled := false;
  btnSale.Enabled := false;
  btn_fito.Enabled := false;
  button2.enabled:=false;
end;

// Закрыть
procedure TRunner.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

// При закрытии программы
procedure TRunner.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
VAR Answer : word;
begin
  CanClose := true;
  If dict_started then if not (WaitForSingleObject (dict_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа работы со словарём цветов не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(dict_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If admin_started then if not (WaitForSingleObject (admin_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа администрирования не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(admin_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If ref_books_started then if not (WaitForSingleObject (ref_books_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа "Словарь данных" не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(ref_books_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If registr_started then if not (WaitForSingleObject (registr_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа регистрации клиентов не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(registr_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If order_started then if not (WaitForSingleObject (order_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа заказов и бронирования не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(order_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If inv_started then if not (WaitForSingleObject (inv_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа обработки инвойсов не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(inv_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If fito_started then if not (WaitForSingleObject (fito_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа обработки ФИТО не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(fito_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If cl_started then if not (WaitForSingleObject (cl_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа претензий не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(cl_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If ca_started then if not (WaitForSingleObject (ca_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа касса не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(ca_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If sv_started then if not (WaitForSingleObject (sv_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа кассовый свод не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(sv_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If cu_started then if not (WaitForSingleObject (cu_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа курсов валют не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(cu_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If bu_started then if not (WaitForSingleObject (bu_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа бухгалтерия не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(bu_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If sk_started then if not (WaitForSingleObject (sk_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа склад не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(sk_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If price_started then if not (WaitForSingleObject (price_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа цены не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(price_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If deb_started then if not (WaitForSingleObject (deb_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа дебиторы не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(deb_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If dis_started then if not (WaitForSingleObject (dis_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа разноса не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(dis_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If stat_started then if not (WaitForSingleObject (stat_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа статистики не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(stat_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
  If sel_started then if not (WaitForSingleObject (sel_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      Answer := MessageDlg('Программа продаж не закрыта! Закрыть?',mtConfirmation,[mbNo,mbYes,mbCancel],0);
      case Answer of
        mrYes :  TerminateProcess(sel_pi.hProcess,0);
        mrNo : CanClose := false;
        mrCancel : Begin CanClose := false; Exit; End;
      End;
    End;
end;



// Записываем в реестре отдел
procedure TRunner.DBComboBoxEh1Change(Sender: TObject);
var Reg: TRegIniFile;
begin
    Reg:=TRegIniFile.Create('Starlight_Starter');
    try
      Reg.WriteInteger('staf_val', 'Value', imgOtdel.EditValue);
      aGetRules.Execute;
    finally
      Reg.Free;
    end;
end;

// Записываем в реестре отдел
procedure TRunner.aFillDepsExecute(Sender: TObject);
begin
  try
      imgOtdel.Properties.OnChange := nil;
      DM.OraQuery1.Close;
      DM.OraQuery1.SQL.Clear;
      DM.OraQuery1.SQL.Add('SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS WHERE STATE = 1 ORDER BY NAME');
      DM.OraQuery1.Open;
      FillImgComboCx(DM.OraQuery1, imgOtdel, '');
      imgOtdel.Properties.OnChange := DBComboBoxEh1Change;
      DM.OraQuery1.Close;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;


// При открытии формы
procedure TRunner.FormShow(Sender: TObject);
var  Reg: TRegIniFile;
     S: integer;
begin
  path := ExtractFilePath(Application.ExeName);
  aFillOffice.Execute;
  aFillDeps.Execute;

  Reg := TRegIniFile.Create('Starlight_Starter');
  try

     try
       DM.OraQuery1.Close;
       DM.OraQuery1.SQL.Clear;
       DM.OraQuery1.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES where ID_OFFICE=const_office ORDER BY OFFICE_NAME');
       DM.OraQuery1.Open;
       lblOffice.Caption := 'Офис: '+DM.OraQuery1.FieldByName('OFFICE_NAME').AsString;
       DM.OraQuery1.Close;
     except
       on E: Exception do ShowMessage(E.Message);
     end;

     try
       S := Reg.ReadInteger('staf_val', 'Value', 0 );
       if (S > 0) then
         imgOtdel.EditValue := S
       else
         imgOtdel.ItemIndex := 0;
     except
       on E: Exception do imgOtdel.ItemIndex := 0;
     end;
  finally
    Reg.Free;
  end;
end;


procedure TRunner.imgOtdelPropertiesChange(Sender: TObject);
begin

end;

// Обновим гранты
procedure TRunner.aGetRulesExecute(Sender: TObject);
var  s1, s2, s3, s4: boolean;
begin
try
  if (DM.SelectSession.Connected = false) then
    DM.SelectSession.Connect;
  with DM.SelStart do
    Begin
      if not active then
        Begin
          BitBtn1.Enabled := false;
          BitBtn3.Enabled := false;
          BitBtn4.Enabled := false;
          BitBtn5.Enabled := false;
          BitBtn7.Enabled := false;
          BitBtn8.Enabled := false;
          BitBtn9.Enabled := false;
          BitBtn10.Enabled := false;
          BitBtn11.Enabled := false;
          BitBtn12.Enabled := false;
          BitBtn13.Enabled := false;
          BitBtn14.Enabled := false;
          BitBtn15.Enabled := false;
          BitBtn16.Enabled := false;
          BitBtn17.Enabled := false;
          BitBtn18.Enabled := false;
          BitBtn19.Enabled := false;
          btnSale.Enabled  := false;
          btn_fito.Enabled := false;
          button2.Enabled:=false;
          //ShowMessage(inttostr(DM.SelStart.RecordCount));
          if (DM.SelectSession.Username = 'CREATOR') then
          begin
              BitBtn1.Enabled := true;
              BitBtn3.Enabled := true;
              BitBtn4.Enabled := true;
              BitBtn5.Enabled := true;
              BitBtn7.Enabled := true;
              BitBtn8.Enabled := true;
              BitBtn9.Enabled := true;
              BitBtn10.Enabled := true;
              BitBtn11.Enabled := true;
              BitBtn12.Enabled := true;
              BitBtn13.Enabled := true;
              BitBtn14.Enabled := true;
              BitBtn15.Enabled := true;
              BitBtn16.Enabled := true;
              BitBtn17.Enabled := true;
              BitBtn18.Enabled := true;
              BitBtn19.Enabled := true;
              btnSale.Enabled  := true;
              btn_fito.Enabled := true;
              button2.Enabled:=false;
              sel_e := true;
              sel_k := true;
              sel_t := true;
              sel_a := true;
              stat_e := true;
              stat_k := true;
              stat_t := true;
              stat_a := true;
              rb_e := true;
              rb_k := true;
              rb_t := true;
              rb_a := true;
              r_e := true;
              r_k := true;
              r_t := true;
              r_a := true;
              d_t := true;
              d_k := true;
              d_e := true;
              d_a := true;
              a_t := true;
              a_k := true;
              a_e := true;
              a_a := true;
              cg_e := true;
              cg_k := true;
              cg_t := true;
              cg_a := true;

               sec_e:= true;
               sec_k:= true;
               sec_t:= true;
               sec_a:= true;


              o_e := true;
              o_k := true;
              o_t := true;
              o_a := true;
              inv_e := true;
              inv_k := true;
              inv_t := true;
              inv_a := true;
              cl_e := true;
              cl_k := true;
              cl_t := true;
              cl_a := true;
              ca_e := true;
              ca_k := true;
              ca_t := true;
              ca_a := true;
              sv_e := true;
              sv_k := true;
              sv_t := true;
              sv_a := true;
              cu_e := true;
              cu_k := true;
              cu_t := true;
              cu_a := true;
              bu_e := true;
              bu_k := true;
              bu_t := true;
              bu_a := true;
              sk_e := true;
              sk_k := true;
              sk_t := true;
              sk_a := true;
              pr_e := true;
              pr_k := true;
              pr_t := true;
              pr_a := true;
              deb_e := true;
              deb_k := true;
              deb_t := true;
              deb_a := true;
              dis_e := true;
              dis_k := true;
              dis_t := true;
              dis_a := true;
                      fito_e := true;
                      fito_k := true;
                      fito_t := true;
                      fito_a := true;
          end
          else
          begin
            SQL.Clear;
            SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
            ParamByName('id_dep_').AsInteger := imgOtdel.EditValue;
            ParamByName('login_').AsString := DM.SelectSession.Username;
            ParamByName('cursor_').DataType := ftCursor;
            Open;

            while not eof do
            Begin

              if DM.SelStart.FieldByName('C_EDIT').AsInteger = 1  then s1 := true else s1 := false;
              if DM.SelStart.FieldByName('C_DEL').AsInteger = 1   then s2 := true else s2 := false;
              if DM.SelStart.FieldByName('C_PRINT').AsInteger = 1 then s3 := true else s3 := false;
              if DM.SelStart.FieldByName('C_ADDIT').AsInteger = 1 then s4 := true else s4 := false;

              case DM.SelStart.FieldByName('ID_PROGRAMS').AsInteger of
                1 : Begin  // Администрирование
                      BitBtn3.Enabled := true;
                      a_e := s1;
                      a_k := s2;
                      a_t := s3;
                      a_a := s4;
                    End;
                2 : Begin  // Словарь растений
                      BitBtn1.Enabled := true;
                      d_e := s1;
                      d_k := s2;
                      d_t := s3;
                      d_a := s4;
                    End;
                4 : Begin  // Словарь данных
                      BitBtn4.Enabled := true;
                      rb_e := s1;
                      rb_k := s2;
                      rb_t := s3;
                      rb_a := s4;
                    End;
                5 : Begin  // Регистрация клиентов
                      BitBtn5.Enabled := true;
                      r_e := s1;
                      r_k := s2;
                      r_t := s3;
                      r_a := s4;
                    End;
                6 : Begin  // Приход-уход
                      BitBtn7.Enabled := true;
                      cg_e := s1;
                      cg_k := s2;
                      cg_t := s3;
                      cg_a := s4;
                    End;
                8 : Begin  // Заказы среза
                      BitBtn8.Enabled := true;
                      o_e := s1;
                      o_k := s2;
                      o_t := s3;
                      o_a := s4;
                    End;
                9 : Begin  // Обработка инвойсов
                      BitBtn9.Enabled := true;
                      inv_e := s1;
                      inv_k := s2;
                      inv_t := s3;
                      inv_a := s4;
                    End;
                10 : Begin  // Претензии
                      BitBtn10.Enabled := true;
                      cl_e := s1;
                      cl_k := s2;
                      cl_t := s3;
                      cl_a := s4;
                    End;
                11 : Begin  // Касса
                      BitBtn11.Enabled := true;
                      ca_e := s1;
                      ca_k := s2;
                      ca_t := s3;
                      ca_a := s4;
                    End;
                12 : Begin  // Свод
                      BitBtn12.Enabled := true;
                      sv_e := s1;
                      sv_k := s2;
                      sv_t := s3;
                      sv_a := s4;
                    End;
                13 : Begin  // Курсы валют
                      BitBtn13.Enabled := true;
                      cu_e := s1;
                      cu_k := s2;
                      cu_t := s3;
                      cu_a := s4;
                    End;
                14 : Begin  // Бухгалтерия
                      BitBtn14.Enabled := true;
                      bu_e := s1;
                      bu_k := s2;
                      bu_t := s3;
                      bu_a := s4;
                    End;
                15 : Begin  // Склад
                      BitBtn15.Enabled := true;
                      sk_e := s1;
                      sk_k := s2;
                      sk_t := s3;
                      sk_a := s4;
                    End;
                16 : Begin  // Цены
                      BitBtn16.Enabled := true;
                      pr_e := s1;
                      pr_k := s2;
                      pr_t := s3;
                      pr_a := s4;
                    End;
                17 : Begin  // Дебиторы
                      BitBtn17.Enabled := true;
                      deb_e := s1;
                      deb_k := s2;
                      deb_t := s3;
                      deb_a := s4;
                    End;
                18 : Begin  // Разнос
                      BitBtn18.Enabled := true;
                      dis_e := s1;
                      dis_k := s2;
                      dis_t := s3;
                      dis_a := s4;
                    End;
                19 : Begin  // Статистика
                      BitBtn19.Enabled := true;
                      stat_e := s1;
                      stat_k := s2;
                      stat_t := s3;
                      stat_a := s4;
                    End;
                20 : Begin  // Статистика
                      btnSale.Enabled := true;
                      sel_e := s1;
                      sel_k := s2;
                      sel_t := s3;
                      sel_a := s4;
                    End;
                21 : Begin  // Статистика
                      btn_fito.Enabled := true;
                      fito_e := s1;
                      fito_k := s2;
                      fito_t := s3;
                      fito_a := s4;
                    End;
                10000204 : Begin  // id из sql manager admin programs (secretary)
                      Button2.Enabled := true;
                      sec_e := s1;
                      sec_k := s2;
                      sec_t := s3;
                      sec_a := s4;
                    End;
              End;
              Next;
              End;
            end;
        End;
    End;
  DM.SelectSession.Disconnect;
except
  on E: Exception do begin ShowMessage(E.Message); DM.SelectSession.Disconnect; end;
end;

end;




{ Программы }
{ **************************************************************************** }

// Словарь растений
procedure TRunner.BitBtn1Click(Sender: TObject);
VAR start_line : string;
begin

if dict_started = true then
  if not (WaitForSingleObject (dict_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@dict_si,sizeof(dict_si));
  dict_si.cb := SizeOf(dict_si);
//  start_line := dict_path+'\'+dict_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := dict_path+'\'+dict_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if d_e then start_line := start_line + ' -e';
  if d_k then start_line := start_line + ' -k';
  if d_t then start_line := start_line + ' -t';
  if d_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
                       PChar(start_line),  // Command line.
                       nil,       // Process handle not inheritable.
                       nil,       // Thread handle not inheritable.
                       False,       // Set handle inheritance to FALSE.
                       0,         // No creation flags.
                       nil,       // Use parent's environment block.
                       PChar(dict_path),// Use starting directory.
                       dict_si,     // Pointer to STARTUPINFO structure.
                       dict_pi )    // Pointer to PROCESS_INFORMATION structure.
  then
    begin
      pnl_msg.Free;
      ShowMessage( 'CreateProcess failed.' );
      Exit;
    end;
  pnl_msg.Free;
  dict_started := true;
end;

// Администрирование
procedure TRunner.BitBtn3Click(Sender: TObject);
VAR start_line : string;
begin

if admin_started = true then
  if not (WaitForSingleObject (admin_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@admin_si,sizeof(admin_si));
  admin_si.cb := SizeOf(admin_si);
//  start_line := admin_path+'\'+admin_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := admin_path+'\'+admin_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if a_e then start_line := start_line + ' -e';
  if a_k then start_line := start_line + ' -k';
  if a_t then start_line := start_line + ' -t';
  if a_a then start_line := start_line + ' -a';
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(admin_path),// Use starting directory.
         admin_si,         // Pointer to STARTUPINFO structure.
         admin_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  admin_started := true;
end;

// Словарь со вспомогательной информацией
procedure TRunner.BitBtn4Click(Sender: TObject);
var start_line : string;
begin

if ref_books_started = true then
  if not (WaitForSingleObject (ref_books_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Запуск программы'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@ref_books_si,sizeof(ref_books_si));
  ref_books_si.cb := SizeOf(ref_books_si);
//  start_line := ref_books_path+'\'+ref_books_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := ref_books_path+'\'+ref_books_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if rb_e then start_line := start_line + ' -e';
  if rb_k then start_line := start_line + ' -k';
  if rb_t then start_line := start_line + ' -t';
  if rb_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(ref_books_path),// Use starting directory.
         ref_books_si,         // Pointer to STARTUPINFO structure.
         ref_books_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
    pnl_msg.Free;
  ref_books_started := true;

end;

// Запуск регистрации клиентов
procedure TRunner.BitBtn5Click(Sender: TObject);
VAR start_line : string;
begin

if registr_started = true then
  if not (WaitForSingleObject (registr_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Запуск программы'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@registr_si,sizeof(registr_si));
  registr_si.cb := SizeOf(registr_si);
//  start_line := registr_path+'\'+registr_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := registr_path+'\'+registr_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if r_e then start_line := start_line + ' -e';
  if r_k then start_line := start_line + ' -k';
  if r_t then start_line := start_line + ' -t';
  if r_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(registr_path),// Use starting directory.
         registr_si,         // Pointer to STARTUPINFO structure.
         registr_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  registr_started := true;
end;

// О создателях
procedure TRunner.BitBtn6Click(Sender: TObject);
begin
  about.showmodal;
end;

// Приход-уход
procedure TRunner.BitBtn7Click(Sender: TObject);
VAR start_line : string;
begin

if come_go_started = true then
  if not (WaitForSingleObject (come_go_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@come_go_si,sizeof(come_go_si));
  come_go_si.cb := SizeOf(come_go_si);
//  start_line := come_go_path+'\'+come_go_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := come_go_path+'\'+come_go_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if cg_e then start_line := start_line + ' -e';
  if cg_k then start_line := start_line + ' -k';
  if cg_t then start_line := start_line + ' -t';
  if cg_a then start_line := start_line + ' -a';

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(come_go_path),// Use starting directory.
         come_go_si,         // Pointer to STARTUPINFO structure.
         come_go_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  come_go_started := true;
end;

// Заказ и бронирование среза
procedure TRunner.BitBtn8Click(Sender: TObject);
VAR start_line : string;
begin

if order_started = true then
  if not (WaitForSingleObject (order_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@order_si,sizeof(order_si));
  order_si.cb := SizeOf(order_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if o_e then start_line := start_line + ' -e';
  if o_k then start_line := start_line + ' -k';
  if o_t then start_line := start_line + ' -t';
  if o_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(order_path),// Use starting directory.
         order_si,         // Pointer to STARTUPINFO structure.
         order_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  order_started := true;
end;

// Обработка инвойсов
procedure TRunner.BitBtn9Click(Sender: TObject);
VAR start_line : string;
begin

if inv_started = true then
  if not (WaitForSingleObject (inv_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@inv_si,sizeof(inv_si));
  inv_si.cb := SizeOf(inv_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := inv_path+'\'+inv_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if inv_e then start_line := start_line + ' -e';
  if inv_k then start_line := start_line + ' -k';
  if inv_t then start_line := start_line + ' -t';
  if inv_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(inv_path),// Use starting directory.
         inv_si,         // Pointer to STARTUPINFO structure.
         inv_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  inv_started := true;
end;

//  Продажи
procedure TRunner.btnSaleClick(Sender: TObject);
VAR start_line : string;
begin

if sel_started = true then
  if not (WaitForSingleObject (sel_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@sel_si,sizeof(sel_si));
  sel_si.cb := SizeOf(sel_si);
  start_line := sel_path+'\'+sel_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if sel_e then start_line := start_line + ' -e';
  if sel_k then start_line := start_line + ' -k';
  if sel_t then start_line := start_line + ' -t';
  if sel_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(sel_path),// Use starting directory.
         sel_si,         // Pointer to STARTUPINFO structure.
         sel_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  sel_started := true;
end;

// ФИТО
procedure TRunner.btn_fitoClick(Sender: TObject);
VAR start_line : string;
begin

if fito_started = true then
  if not (WaitForSingleObject (fito_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@fito_si,sizeof(fito_si));
  fito_si.cb := SizeOf(fito_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := fito_path+'\'+fito_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if fito_e then start_line := start_line + ' -e';
  if fito_k then start_line := start_line + ' -k';
  if fito_t then start_line := start_line + ' -t';
  if fito_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(fito_path),// Use starting directory.
         fito_si,         // Pointer to STARTUPINFO structure.
         fito_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  fito_started := true;
end;





//secretary
procedure TRunner.Button2Click(Sender: TObject);
VAR start_line : string;
begin

if sec_go_started = true then
  if not (WaitForSingleObject (sec_go_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@sec_go_si,sizeof(sec_go_si));
  sec_go_si.cb := SizeOf(sec_go_si);
//  start_line := come_go_path+'\'+come_go_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := sec_go_path+'\'+sec_go_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if sec_e then start_line := start_line + ' -e';
  if sec_k then start_line := start_line + ' -k';
  if sec_t then start_line := start_line + ' -t';
  if sec_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(sec_go_path),// Use starting directory.
         sec_go_si,         // Pointer to STARTUPINFO structure.
         sec_go_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  sec_go_started := true;
end;

// Регистрация притензий
procedure TRunner.BitBtn10Click(Sender: TObject);
VAR start_line : string;
begin

if cl_started = true then
  if not (WaitForSingleObject (cl_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@cl_si,sizeof(cl_si));
  cl_si.cb := SizeOf(cl_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := cl_path+'\'+cl_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if cl_e then start_line := start_line + ' -e';
  if cl_k then start_line := start_line + ' -k';
  if cl_t then start_line := start_line + ' -t';
  if cl_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(cl_path),// Use starting directory.
         cl_si,         // Pointer to STARTUPINFO structure.
         cl_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  cl_started := true;
end;

// Касса
procedure TRunner.BitBtn11Click(Sender: TObject);
VAR start_line : string;
begin
if ca_started = true then
  if not (WaitForSingleObject (ca_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@ca_si,sizeof(ca_si));
  ca_si.cb := SizeOf(ca_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := ca_path+'\'+ca_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if ca_e then start_line := start_line + ' -e';
  if ca_k then start_line := start_line + ' -k';
  if ca_t then start_line := start_line + ' -t';
  if ca_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(ca_path),// Use starting directory.
         ca_si,         // Pointer to STARTUPINFO structure.
         ca_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  ca_started := true;
end;

// Кассовый свод
procedure TRunner.BitBtn12Click(Sender: TObject);
VAR start_line : string;
begin
if sv_started = true then
  if not (WaitForSingleObject (sv_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@sv_si,sizeof(sv_si));
  sv_si.cb := SizeOf(sv_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := sv_path+'\'+sv_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if sv_e then start_line := start_line + ' -e';
  if sv_k then start_line := start_line + ' -k';
  if sv_t then start_line := start_line + ' -t';
  if sv_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(sv_path),// Use starting directory.
         sv_si,         // Pointer to STARTUPINFO structure.
         sv_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  sv_started := true;
end;

// курсы валют
procedure TRunner.BitBtn13Click(Sender: TObject);
VAR start_line : string;
begin
if cu_started = true then
  if not (WaitForSingleObject (cu_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Запуск программы'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@cu_si,sizeof(cu_si));
  cu_si.cb := SizeOf(cu_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := cu_path+'\'+cu_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if cu_e then start_line := start_line + ' -e';
  if cu_k then start_line := start_line + ' -k';
  if cu_t then start_line := start_line + ' -t';
  if cu_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(cu_path),// Use starting directory.
         cu_si,         // Pointer to STARTUPINFO structure.
         cu_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  cu_started := true;
end;

// Бухгалтерия
procedure TRunner.BitBtn14Click(Sender: TObject);
VAR start_line : string;
begin

if bu_started = true then
  if not (WaitForSingleObject (bu_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@bu_si,sizeof(bu_si));
  bu_si.cb := SizeOf(bu_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := bu_path+'\'+bu_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if bu_e then start_line := start_line + ' -e';
  if bu_k then start_line := start_line + ' -k';
  if bu_t then start_line := start_line + ' -t';
  if bu_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(bu_path),// Use starting directory.
         bu_si,         // Pointer to STARTUPINFO structure.
         bu_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  bu_started := true;
end;

// Склад
procedure TRunner.BitBtn15Click(Sender: TObject);
VAR start_line : string;
begin

if sk_started = true then
  if not (WaitForSingleObject (sk_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@sk_si,sizeof(sk_si));
  sk_si.cb := SizeOf(sk_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := sk_path+'\'+sk_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if sk_e then start_line := start_line + ' -e';
  if sk_k then start_line := start_line + ' -k';
  if sk_t then start_line := start_line + ' -t';
  if sk_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(sk_path),// Use starting directory.
         sk_si,         // Pointer to STARTUPINFO structure.
         sk_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  sk_started := true;
end;

// Цены
procedure TRunner.BitBtn16Click(Sender: TObject);
VAR start_line : string;
begin

if price_started = true then
  if not (WaitForSingleObject (price_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@price_si,sizeof(price_si));
  price_si.cb := SizeOf(price_si);
//  start_line := registr_path+'\'+registr_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := price_path+'\'+price_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if pr_e then start_line := start_line + ' -e';
  if pr_k then start_line := start_line + ' -k';
  if pr_t then start_line := start_line + ' -t';
  if pr_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(price_path),// Use starting directory.
         price_si,         // Pointer to STARTUPINFO structure.
         price_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  price_started := true;
end;

// Дебиторы
procedure TRunner.BitBtn17Click(Sender: TObject);
VAR start_line : string;
begin

if deb_started = true then
  if not (WaitForSingleObject (deb_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@deb_si,sizeof(deb_si));
  deb_si.cb := SizeOf(deb_si);
//  start_line := registr_path+'\'+registr_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := deb_path+'\'+deb_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if deb_e then start_line := start_line + ' -e';
  if deb_k then start_line := start_line + ' -k';
  if deb_t then start_line := start_line + ' -t';
  if deb_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);
  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(deb_path),// Use starting directory.
         deb_si,         // Pointer to STARTUPINFO structure.
         deb_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  deb_started := true;
end;

// Разнос
procedure TRunner.BitBtn18Click(Sender: TObject);
VAR start_line : string;
begin

if dis_started = true then
  if not (WaitForSingleObject (dis_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@dis_si,sizeof(dis_si));
  dis_si.cb := SizeOf(dis_si);
  //start_line := order_path+'\'+order_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := dis_path+'\'+dis_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if dis_e then start_line := start_line + ' -e';
  if dis_k then start_line := start_line + ' -k';
  if dis_t then start_line := start_line + ' -t';
  if dis_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(dis_path),// Use starting directory.
         dis_si,         // Pointer to STARTUPINFO structure.
         dis_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  dis_started := true;
end;

//  Статистика
procedure TRunner.BitBtn19Click(Sender: TObject);
VAR start_line : string;
begin

if stat_started = true then
  if not (WaitForSingleObject (stat_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;
    
  username := DM.SelectSession.Username;
  password := DM.SelectSession.Password;
  ZeroMemory(@stat_si,sizeof(stat_si));
  stat_si.cb := SizeOf(stat_si);
//  start_line := registr_path+'\'+registr_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path + ' -c ' + login.creator;
  start_line := stat_path+'\'+stat_name + ' -l ' + username + ' -p ' + password + ' -d ' + login.ora_db_path;
  if stat_e then start_line := start_line + ' -e';
  if stat_k then start_line := start_line + ' -k';
  if stat_t then start_line := start_line + ' -t';
  if stat_a then start_line := start_line + ' -a';
  start_line := start_line + ' -otd ' + VarToStr(imgOtdel.EditValue);

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar(stat_path),// Use starting directory.
         stat_si,         // Pointer to STARTUPINFO structure.
         stat_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        pnl_msg.Free;
        ShowMessage( 'CreateProcess failed.' );
        Exit;
      end;
  pnl_msg.Free;
  stat_started := true;
end;


end.
