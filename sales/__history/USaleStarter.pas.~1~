unit USaleStarter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ActnList, StdCtrls, cxButtons, ImgList,
  cxGraphics, Buttons, PI_Library, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxImageComboBox, ExtCtrls, jpeg,
  frxClass, frxDMPClass, DB, IniFiles;

type
  TfrmSalesStarter = class(TForm)
    cxImageList1: TcxImageList;
    ActionList1: TActionList;
    aPrintUser: TAction;
    aReserv: TAction;
    aHelp: TAction;
    aExit: TAction;
    aSale: TAction;
    aFromScaner: TAction;
    Label1: TLabel;
    Label2: TLabel;
    aSklad: TAction;
    Panel1: TPanel;
    Label3: TLabel;
    imgOtdel: TcxImageComboBox;
    Label4: TLabel;
    de_date: TcxDateEdit;
    CheckBox1: TCheckBox;
    Image4: TImage;
    btnHome: TcxButton;
    aStore: TAction;
    btnSale: TcxButton;
    btnScaner: TcxButton;
    btnReserv: TcxButton;
    btnPrint: TcxButton;
    btnSklad: TcxButton;
    btnHelp: TcxButton;
    aMakeReserv: TAction;
    aGetRules: TAction;
    Label5: TLabel;
    cbOffices: TcxImageComboBox;
    chbPrintNow: TCheckBox;
    procedure aPrintUserExecute(Sender: TObject);
    procedure aReservExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure aSaleExecute(Sender: TObject);
    procedure aSkladExecute(Sender: TObject);
    procedure SaveNakl;
    procedure print_doc(param: integer);
    procedure open_doc(ID_DEP_: integer; DOC_NUMBER_: variant; DOC_DATE1_: TDate; DOC_DATE2_ : TDate; ID_DOC_TYPE_: integer; FIO_: string; NICK_: string);
    procedure Label2Click(Sender: TObject);
    procedure aStoreExecute(Sender: TObject);
    procedure aFromScanerExecute(Sender: TObject);
    procedure aMakeReservExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
  private
    path: string;
    is_scaner : boolean;
    { Private declarations }
  public
    SP_DOC_DATE: tDateTime;
    SP_ID_DOC_TYPE: integer;
    SP_OTDEL: integer;
    SP_COMMENTS: string;
    SP_OPERATOR_NAME: string;
    SP_ID_CLIENT: integer;
    id_client_ : integer;
    { Public declarations }
  end;

var
  frmSalesStarter: TfrmSalesStarter;

implementation

uses UDM, Globals, client_choos, USales, USettings, UStore, global;

{$R *.dfm}

// Закрываем прогу
procedure TfrmSalesStarter.aExitExecute(Sender: TObject);
begin
  Close();
end;

// Закрытие формы
procedure TfrmSalesStarter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.sale_session.Close;
end;


//
// Обновление клиентов
//
procedure TfrmSalesStarter.Label1Click(Sender: TObject);
begin
  try
    DM.Q_CLIENTS.Close;
    DM.Q_CLIENTS.Filtered := false;
    DM.Q_CLIENTS.Filter := '';
    DM.Q_CLIENTS.Open;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


//
//  Настройка персональной раскладки
//
procedure TfrmSalesStarter.Label2Click(Sender: TObject);
begin
  if (imgOtdel.ItemIndex >= 0) then
  begin
    frmSettings := TfrmSettings.Create(Application);
    try
      frmSettings.showmodal;
    finally
      frmSettings.Free;
    end;
  end else MessageBox(Handle, 'У Вас не указан отдел продаж.', 'Внимание!', MB_ICONWARNING);
end;


// Расставим гранты
procedure TfrmSalesStarter.FormShow(Sender: TObject);
var RegIni : TIniFile;
begin
  try
    cbOffices.Enabled := (dm.id_office = 1);
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

    path   := ExtractFilePath(Application.ExeName);

    RegIni := TIniFile.Create(path+'sales.ini');
    def_folder := RegIni.ReadString('folder', 'Value', '..');

    DM.Q_CLIENTS.Open;

    with DM.SelQ do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin STORE_PKG.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(DM.sale_session.Username);
        ParamByName('cursor_').AsCursor;
        Open;
//        ShowMessage(Inttostr(recordCount));
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

    imgOtdel.Properties.OnChange := nil;
    FillImgComboCx(DM.SelQ, imgOtdel, '');

    id_client_          := 0;
    de_date.EditValue   := Now();
    print_dot := CheckBox1.Checked;

    // Опаратора в статус бар
	  DM.SelQ.Close;
  	DM.SelQ.Sql.Clear;
	  DM.SelQ.Sql.Add('SELECT fio, id_clients, login, nick FROM EMPLOYEES_VIEW WHERE LOGIN=UPPER(:username) and id_office=const_office');
  	DM.SelQ.ParamByName('username').Value := DM.sale_session.Username;
	  DM.SelQ.Open;
    operator_name := DM.SelQ.FieldByName('FIO').AsString;
    operator_id   := DM.SelQ.FieldByName('ID_CLIENTS').AsString;

    if INPUT_DEPT_ID <> null then
    begin
      imgOtdel.EditValue  := INPUT_DEPT_ID;
      CUR_DEPT_ID         := INPUT_DEPT_ID;
      CUR_DEPT_NAME       := imgOtdel.EditText;
    end;

    Application.Title := 'Продажи :: '+imgOtdel.Text;
    Caption := 'Продажи :: '+imgOtdel.Text;

    imgOtdel.Properties.OnChange := imgOtdelPropertiesChange;
    aGetRules.Execute;

    DM.SelQ.Close;
    DM.CDS_TYPES.ParamByName('id_dep').AsInteger := CUR_DEPT_ID;
    DM.CDS_TYPES.Open;
  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


procedure TfrmSalesStarter.imgOtdelPropertiesChange(Sender: TObject);
begin
  CUR_DEPT_ID := imgOtdel.EditValue;
  Application.Title := 'Продажи :: '+imgOtdel.Text;
  Caption := 'Продажи :: '+imgOtdel.Text;
  aGetRules.Execute;
end;


procedure TfrmSalesStarter.aGetRulesExecute(Sender: TObject);
begin
  DM.ft_view.Close;
  DM.ft_view.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
  DM.ft_view.Open;

  DM.fst_view.Close;
  DM.fst_view.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
  DM.fst_view.Open;

  with DM.SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('login_').AsString   := UpperCase(Username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=20';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then ed := true else ed := false;
         if FieldByName('C_DEL').AsInteger=1 then del := true else del := false;
         if FieldByName('C_PRINT').AsInteger=1 then pr := true else pr := false;
         if FieldByName('C_ADDIT').AsInteger=1 then add := true else add := false;

        aPrintUser.Enabled  := pr;
        aReserv.Enabled     := ed;
        aSale.Enabled       := ed;
        aFromScaner.Enabled := ed;
        aSklad.Enabled      := true;
      end;
      Close;
      Filter := '';
      Filtered := false;
  End;
end;




// Продажа вручную
procedure TfrmSalesStarter.aSaleExecute(Sender: TObject);
begin
  if (imgOtdel.ItemIndex >= 0) then
  begin
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('delete from STORE_DOC_DATA_TEMP');
      DM.SelQ.Execute;

    clientchoosForm := TclientchoosForm.Create(Application);
    try
      id_client_ := 0;
      CUR_DATE   := de_date.EditValue;
      clientchoosForm.block_client_ := 0;
      if clientchoosForm.showmodal = mrOk then
      begin
        id_client_ := clientchoosForm.choised_client_;
        if (id_client_ = 0) or (clientchoosForm.block_client_ = 1) then
          MessageBox(Handle, 'Клиент заблокирован бухгалтерией!'#10'Накладная не может быть оформлена', 'Предупреждение', MB_ICONSTOP)
        else
          aStore.Execute;
      end;
    finally
      clientchoosForm.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;



// Откроем склад
procedure TfrmSalesStarter.aSkladExecute(Sender: TObject);
begin
  if (imgOtdel.ItemIndex >= 0) then
  begin
    frmStore := TfrmStore.Create(Application);
    try
      CUR_DATE   := de_date.EditValue;
      frmStore.aLoad.Execute;
      frmStore.StatusBar.Panels[0].Text:='  Дата работы со складом: ' + de_date.EditText;
      frmStore.StatusBar.Panels[1].Text:='  Оператор: ' + operator_name;

      if frmStore.showmodal = mrOk then
      begin
        NULL;
      end;
    finally
      frmStore.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


// Начнем продажи
procedure TfrmSalesStarter.aStoreExecute(Sender: TObject);
begin
    frmSales := TfrmSales.Create(Application);
    try
{
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('delete from STORE_DOC_DATA_TEMP');
      DM.SelQ.Execute;
}
      frmSales.Edit_Order_Id.Visible  := false;
      frmSales.Label1.Visible         := false;
      frmSales.dt_ondate.Visible      := frmSales.Label1.Visible;
      frmSales.Image1.Tag := id_client_;
      frmSales.aLoad.Execute;
      frmSales.StatusBar.Panels[0].Text:='  Дата работы со складом: ' + de_date.EditText;
      frmSales.StatusBar.Panels[1].Text:='  Оператор: ' + operator_name;
      frmSales.Caption := imgOtdel.Text +' :: Накладная продажи';

      frmSales.AddedCB.Checked := is_scaner;
      if frmSales.showmodal = mrOk then
      begin
        SP_COMMENTS := frmSales.EditComments.Text;
        SaveNakl;
      end
      else DM.sale_session.Rollback;
    finally
      begin
        is_scaner := false;
        frmSales.Free;
      end;
    end;
end;


procedure TfrmSalesStarter.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
  DM.Q_CLIENTS.Close;
  DM.Q_CLIENTS.Open;
end;

procedure TfrmSalesStarter.CheckBox1Click(Sender: TObject);
begin
  print_dot := CheckBox1.Checked;
end;

//
//  Считаем из сканера
//
procedure TfrmSalesStarter.aFromScanerExecute(Sender: TObject);
var SP_CLIENT_CODE: string;
    BLOCK1_CLIENT, BLOCK2_CLIENT, active_CLIENT: integer;
begin
  if (imgOtdel.ItemIndex >= 0) then
  begin
  try
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('delete from STORE_DOC_DATA_TEMP');
      DM.SelQ.Execute;

    readscaner();
    id_client_ := 0;

    dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := CUR_DEPT_ID; //+'%';

  	SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt', dm.Scan, dm.OraSQL_Scan);
    if alert_str <> '' then
        MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);


    deletefile(path+'scan/1.txt');
		if (trim(SP_CLIENT_CODE)<>'') then
  	begin
      DM.SelQ.SQL.Clear;
    	DM.SelQ.SQL.Add('SELECT active, CCODE, ID_CLIENTS, nick, BLOCK1, BLOCK2 FROM CLIENTS where CCODE='''+SP_CLIENT_CODE+'''');
    	DM.SelQ.Open;
    	SP_ID_CLIENT  := DM.SelQ.FieldByName('ID_CLIENTS').AsInteger;
      id_client_    := SP_ID_CLIENT;
    	BLOCK1_CLIENT := DM.SelQ.FieldByName('BLOCK1').AsInteger;
    	BLOCK2_CLIENT := DM.SelQ.FieldByName('BLOCK2').AsInteger;
    	active_CLIENT := DM.SelQ.FieldByName('active').AsInteger;
      DM.SelQ.Close;
      if (SP_ID_CLIENT = 0) {or (BLOCK1_CLIENT = 1) or (active_CLIENT = 0)} then
      begin
          MessageBox(Handle, PChar('Клиент c кодом '+SP_CLIENT_CODE+' не найден!'#10'Выберите клиента из списка или обратитесь в бухгалтерию для смены карточки'), 'Предупреждение', MB_ICONSTOP);
          SP_CLIENT_CODE := '';
      end
      else
      begin
        if (BLOCK1_CLIENT = 1) then
        begin
          MessageBox(Handle, PChar('Клиент c кодом '+SP_CLIENT_CODE+' юлокирован кредитом!'#10'Обратитесь в бухгалтерию.'), 'Предупреждение', MB_ICONSTOP);
          exit;
        end;

        if (BLOCK2_CLIENT = 1) then
        begin
          MessageBox(Handle, PChar('Клиент c кодом '+SP_CLIENT_CODE+' блокирован бухгалтерией!'#10'Обратитесь в бухгалтерию.'), 'Предупреждение', MB_ICONSTOP);
          exit;
        end;
      end;
      dm.Q_CLIENTS.Filtered := false;
      dm.Q_CLIENTS.Locate('ID_CLIENTS',SP_ID_CLIENT,[]);
  	end;

    if (trim(SP_CLIENT_CODE) = '') then
    begin
      try
        CUR_DATE   := de_date.EditValue;
        clientchoosForm := TclientchoosForm.Create(Application);
        clientchoosForm.block_client_ := 0;
        if clientchoosForm.showmodal = mrOk then
        begin
          id_client_ := clientchoosForm.choised_client_;
          if (id_client_ = 0) or (clientchoosForm.block_client_ = 1) then
          begin
            MessageBox(Handle, 'Клиент заблокирован бухгалтерией!'#10'Накладная не может быть оформлена', 'Предупреждение', MB_ICONSTOP);
            exit;
          end;
        end else exit;
      finally
        clientchoosForm.Free;
      end;
    end;

    is_scaner := true;
    aStore.Execute;
    is_scaner := false;

	except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка при считывании со сканера!', MB_ICONERROR);
      DM.sale_session.Rollback;
    	exit;
    end;
  End;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


//
//  Записываем накладную
//
procedure TfrmSalesStarter.SaveNakl;
var
  err_msg: string;
  ind: integer;
begin
			try
			    SP_DOC_DATE      := de_date.EditValue;
	        SP_ID_DOC_TYPE   := 4;
//	        SP_COMMENTS      := TnaclnewForm(theForm).EditComments.Text;
	        SP_OPERATOR_NAME := operator_name;
	        SP_OTDEL         := CUR_DEPT_ID;
          SP_ID_CLIENT     := id_client_;

          DM.OraProc.StoredProcName := 'STORE_PKG.DOC_NEW';
          DM.OraProc.Prepare;
         	DM.OraProc.ParamByName('SP_ID_CLIENT').AsInteger   := SP_ID_CLIENT;
          DM.OraProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
          DM.OraProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
          DM.OraProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
          DM.OraProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
          DM.OraProc.ParamByName('SP_Order_ID').AsInteger    := 0;
          DM.OraProc.Execute;
		 	except on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
          DM.sale_session.Rollback;
		    	exit;
        end;
	    End;

      err_msg :=  DM.OraProc.ParamByName('out_message').AsString;

      if (err_msg<>'') then
			begin
        MessageBox(Handle, PChar(err_msg), 'Результат с ошибкой!', MB_ICONERROR);
        DM.sale_session.Rollback;
				exit;
			end;


      // если БЕЗ ошибки
	    if (err_msg='') then
      begin
         DM.sale_session.Commit;

         DM.SelQ.SQL.Clear;
         DM.SelQ.SQL.Add('SELECT get_office_unique_curr(''STORE_DOC_SET_ID'') as nn from DUAL');
         DM.SelQ.Open;
         ind := DM.SelQ.FieldByName('nn').AsInteger;

			   if MessageDlg('Вы хотите распечатать накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
			   begin
            try
                open_doc(imgOtdel.EditValue, NULL, de_date.EditValue, de_date.EditValue, 4, '', '' );
                DM.DOC.Locate('ID_DOC', ind, []);
                if chbPrintNow.Checked then print_doc(1) else print_doc(0); 
                DM.doc.Close;
                DM.doc_data.Close;
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
			   end;
     		 //STORE_VIEW.Refresh;
      end;
end;

procedure TfrmSalesStarter.open_doc(ID_DEP_: integer; DOC_NUMBER_: variant; DOC_DATE1_: TDate; DOC_DATE2_ : TDate; ID_DOC_TYPE_: integer; FIO_: string; NICK_: string);
begin
  try
    DM.doc.Close;
//    DM.doc.Params.Clear;
    DM.doc.ParamByName('ID_DEP_').Value := ID_DEP_;
    DM.doc.ParamByName('DOC_NUMBER_').Value := DOC_NUMBER_;
    DM.doc.ParamByName('DOC_DATE1_').Value := DOC_DATE1_;
    DM.doc.ParamByName('DOC_DATE2_').Value := DOC_DATE2_;
    DM.doc.ParamByName('ID_DOC_TYPE_').Value := ID_DOC_TYPE_;
    DM.doc.ParamByName('FIO_').AsString := FIO_;
    DM.doc.ParamByName('NICK_').AsString := NICK_;
    DM.doc.ParamByName('CURSOR_').AsCursor;
    DM.doc.Open;
//    ShowMessage(inttostr(DM.doc.RecordCount));
    DM.doc_data.Open;
//    ShowMessage(inttostr(DM.doc_data.RecordCount));
 	except
     	on E: Exception do
        MessageBox(Handle, PChar('Ошибка при открытии накладной!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
  End;
end;


//
//  Печатаем документ
//
procedure TfrmSalesStarter.print_doc(param: integer);
var Memo  : TfrxDMPMemoView;
    Memo1 : TfrxMemoView;
    course: real;
begin
  try

    if DM.id_office = 1 then
    begin
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('begin dicts.get_curse(:ddate_, :CURSOR_); end;');
      DM.SelQ.ParamByName('ddate_').AsDate := de_date.EditValue;
      DM.SelQ.ParamByName('CURSOR_').AsCursor;
      DM.SelQ.Open;
      course := DM.SelQ.FieldByName('SHEV_EUR').AsCurrency;
      DM.SelQ.Close;
    end else course := 1;

    DM.fr_DOC_DS.DataSource := DM.DOC_DS;
    DM.fr_doc_data_ds.DataSource := DM.doc_data_ds;

    // Первый вариант печати. Через свойство DotMatrixReport
    DM.frxReport1.DotMatrixReport := print_dot; //CheckBox1.Checked;
    if ( print_dot = true) then
    begin
      if (CUR_DEPT_ID = 121) then
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot.fr3')
      else
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot_code.fr3');

      DM.frxDotMatrixExport1.PageBreaks := false;
      DM.frxDotMatrixExport1.OEMConvert := true;

      if DM.id_office = 1 then
      begin
        Memo := DM.frxReport1.FindObject('DMPMemo30') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo := DM.frxReport1.FindObject('DMPMemo35') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро,';

        Memo := DM.frxReport1.FindObject('DMPMemo29') as TfrxDMPMemoView;
        Memo.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(DM.DOC.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end;
    end
    else
    begin
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza.fr3');

      if DM.id_office = 1 then
      begin
        Memo1 := DM.frxReport1.FindObject('Memo23') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := DM.frxReport1.FindObject('Memo29') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := DM.frxReport1.FindObject('Memo24') as TfrxMemoView;
        Memo1.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(DM.DOC.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end;
    end;
    DM.frxReport1.PrepareReport;

    if (param = 1) then
      DM.frxReport1.Print
    else
      DM.frxReport1.ShowReport;

 	except
     	on E: Exception do
        MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
  End;

end;



procedure TfrmSalesStarter.aReservExecute(Sender: TObject);
begin
  if (imgOtdel.ItemIndex >= 0) then
  begin
    clientchoosForm := TclientchoosForm.Create(Application);
    try
      id_client_ := 0;
      CUR_DATE   := de_date.EditValue;
      clientchoosForm.block_client_ := 0;
      if clientchoosForm.showmodal = mrOk then
      begin
        id_client_ := clientchoosForm.choised_client_;
        if (id_client_ = 0) or (clientchoosForm.block_client_ = 1) then
          MessageBox(Handle, 'Клиент заблокирован бухгалтерией!'#10'Бронь не может быть сформированна', 'Предупреждение', MB_ICONSTOP)
        else
          aMakeReserv.Execute;
      end;
    finally
      clientchoosForm.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;

//
//  Создадим резерв
//
procedure TfrmSalesStarter.aMakeReservExecute(Sender: TObject);
var id_: integer;
    Memo1: TfrxMemoView;
begin
    frmSales := TfrmSales.Create(Application);
    try
      frmSales.aLoad.Execute;
      frmSales.Edit_Order_Id.Visible  := false;
      frmSales.Label1.Caption         := 'На дату';
      frmSales.dt_ondate.DateTime     := Date;
      frmSales.Label1.Visible         := true;
      frmSales.dt_ondate.Visible      := frmSales.Label1.Visible;
      frmSales.tsh_nulls.Visible      := frmSales.Edit_Order_Id.Visible;

      frmSales.StatusBar.Panels[0].Text:='  Дата работы со складом: ' + de_date.EditText;
      frmSales.StatusBar.Panels[1].Text:='  Оператор: ' + operator_name;
      frmSales.Caption := imgOtdel.Text +' :: Бронирование';

      frmSales.AddedCB.Checked := is_scaner;
      if frmSales.showmodal = mrOk then
      begin
        id_:= 0;
        SP_COMMENTS      := frmSales.EditComments.Text;
		    SP_DOC_DATE      := de_date.EditValue;
        SP_OPERATOR_NAME := operator_name;
        SP_OTDEL         := CUR_DEPT_ID;
        SP_ID_CLIENT     := id_client_;

        DM.OraProc.StoredProcName := 'SALES_PKG.RESERV_NEW';
        DM.OraProc.Prepare;
        DM.OraProc.ParamByName('id_').AsInteger           := 0;
       	DM.OraProc.ParamByName('id_clients_').AsInteger   := SP_ID_CLIENT;
        DM.OraProc.ParamByName('d_date_').AsDate          := frmSales.dt_ondate.DateTime;    
        DM.OraProc.ParamByName('state_').AsInteger        := 1;
        DM.OraProc.ParamByName('status_').AsInteger       := 0;
        DM.OraProc.ParamByName('id_dep_').AsInteger       := SP_OTDEL;
        DM.OraProc.Execute;

        id_ := DM.OraProc.ParamByName('id_').AsInteger;
        if id_ > 0 then
        begin
          DM.OraProc.Params.Clear;
          DM.OraProc.StoredProcName := 'SALES_PKG.RESERV_DATA';
          DM.OraProc.Prepare;
          DM.OraProc.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_;
          DM.OraProc.Execute;

 	  	    if MessageDlg('Вы хотите распечатать резерв?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  			  begin
            try
                DM.cds_reserv.Close;
                DM.cds_reserv.ParamByName('id_dep_').AsInteger := SP_OTDEL;
                DM.cds_reserv.ParamByName('status_').AsInteger := 10;
                DM.cds_reserv.ParamByName('id_').AsInteger     := id_;
                DM.cds_reserv.Open;

                DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\reserv.fr3');
                Memo1 := DM.frxReport1.FindObject('Memo3') as TfrxMemoView;
                Memo1.Text := 'Отдел: '+ VarToStr(CUR_DEPT_NAME);
                DM.frxReport1.PrepareReport;
                DM.frxReport1.Print;

                DM.cds_reserv.Close;
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
			    end;
        end;
        
      end
      else DM.sale_session.Rollback;
    finally
      begin
        is_scaner := false;
        frmSales.Free;
      end;
    end;
end;






procedure TfrmSalesStarter.aPrintUserExecute(Sender: TObject);
begin
  Showmessage('1');
end;

end.
