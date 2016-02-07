unit all_prih;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, Grids, DB, Ora,
  MemDS, useful_functions, Buttons,
  Menus, GridsEh, Registry, frxClass, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxTextEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxGridExportLink,
  frxExportHTML, frxExportText, frxExportRTF, frxExportXLS, frxExportPDF,
  frxDBSet, DBAccess, ShellAPI, cxCheckBox, cxImage, IniFiles, ActnList,
  cxContainer, dxBar, dxBarExtItems, PI_Library_reg, cxCalendar,
  cxGridBandedTableView, cxGridDBBandedTableView, DateUtils, cxMaskEdit,
  cxDropDownEdit;

type
  Tall_prih_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    BitBtn1: TBitBtn;
    DateTrue: TCheckBox;
    CoolBar4: TCoolBar;
    ToolBar4: TToolBar;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    StatusBar: TStatusBar;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocNewFrom_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    Panel1: TPanel;
    DOCNEW_DATA: TOraQuery;
    ToolButton1: TToolButton;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    Panel4: TPanel;
    OraStoredProc: TOraStoredProc;
    BitBtn2: TBitBtn;
    filter_off: TAction;
    ctrl_enter: TAction;
    btn_store_close: TcxButton;
    grid_prihod: TcxGrid;
    grid_prihod_Level1: TcxGridLevel;
    grid_prihod_view1: TcxGridDBBandedTableView;
    prih_DOC_NUMBER: TcxGridDBBandedColumn;
    prih_INV_ID: TcxGridDBBandedColumn;
    prih_DOC_DATE: TcxGridDBBandedColumn;
    prih_DOC_DATE_REAL: TcxGridDBBandedColumn;
    prih_QUANTITY_ALL: TcxGridDBBandedColumn;
    prih_PRICE_ALL: TcxGridDBBandedColumn;
    prih_COMMENTS: TcxGridDBBandedColumn;
    prih_SUPLIER: TcxGridDBBandedColumn;
    prih_SUPPLIER_DATE: TcxGridDBBandedColumn;
    prih_SUPPLIER_NUMBER: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_sel_column: TcxStyle;
    filter_on: TAction;
    tlb_export: TToolButton;
    ToolButton3: TToolButton;
    SaveDialog9: TSaveDialog;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    bm_prhod: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    bc_prihod: TdxBarDockControl;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    prih_s_name_ru: TcxGridDBBandedColumn;
    prih_operator_name: TcxGridDBBandedColumn;
    cxStyle1: TcxStyle;
    prih_id_office: TcxGridDBBandedColumn;
    prih_brief: TcxGridDBBandedColumn;
    prih_INV_SUM: TcxGridDBBandedColumn;
    pm_all_prihod: TPopupMenu;
    mn_exl_export: TMenuItem;
    filteroff1: TMenuItem;
    N1: TMenuItem;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    N2: TMenuItem;
    OpenDialog1: TOpenDialog;
    grid_prihod_view1sum_quantity: TcxGridDBBandedColumn;
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure DocNewFrom_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

    procedure Doc_FilterOn();
    procedure ToolButton25Click(Sender: TObject);
    procedure new_doc(new_type: integer);
    procedure ToolButton29Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_store_closeClick(Sender: TObject);
    procedure grid_prihod_view1DblClick(Sender: TObject);
    procedure tlb_exportClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure docBeforeOpen(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    path: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  all_prih_Form: Tall_prih_Form;
  Doc_SQL_beg: string;

implementation

uses global_date, nacl_new, global, prihod, dataM, client_choos, invchooser;
//uses  oper_select, UFullInfo, UChoiseType;
//uses global_date, global, dataM, oper_select, UFullInfo, UChoiseType, prihod, invchooser;

{$R *.dfm}


//
// Создание формы
//
procedure Tall_prih_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text:='  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text:='  Оператор: '+DataM.Operator_Name;
  Panel1.Caption := DataM.department_name +' :: Накладные прихода';
  Doc_DateTimePicker1.Date := IncDay(Date,0);
  Doc_DateTimePicker2.Date := Date;
  Doc_FilterOn();   // Открытие главной таблицы
end;


//
//Фильтрация документов--------------------------------------------------------
//
procedure Tall_prih_Form.Doc_FilterOn();
begin
	if ((DateTrue.Checked=false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
	then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
    try
    	screen.cursor:=crhourglass;

      Doc_DateTimePicker1.PostEditValue;
      Doc_DateTimePicker2.PostEditValue;

  	  DOC.Close;
	    DOC.ParamByName('id_dep_').Value := strtoint(DataM.department_id);
	    DOC.ParamByName('DOC_NUMBER_').AsString := NumberDoc.Text;

    	if (DateTrue.Checked=false) then
      begin
  	    DOC.ParamByName('DOC_DATE1_').AsDate := Doc_DateTimePicker1.Date;
    	  DOC.ParamByName('DOC_DATE2_').AsDate := Doc_DateTimePicker2.Date;
    	end
      else
      begin
  	    DOC.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	  DOC.ParamByName('DOC_DATE2_').AsDate := Now();
    	end;

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := 1;
    	DOC.Open;
	    screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor:=crdefault;
          ShowMessage(E.Message);
        end;
    End;
	end;
end;
//------------------------------------------------------------------------------


//
//  Кнопка "Показать"
//
procedure Tall_prih_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  grid_prihod.SetFocus;
end;
// -----------------------------------------------------------------------------


//
//  Просмотр документов
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_prih_Form do
  begin
    if (DOC.RecordCount<>0) then
    begin
      try
        theForm := TprihodForm.Create(Application);
        TprihodForm(theForm).ID := ID_DOC;
        TprihodForm(theForm).N_ID := 0;
        theForm.ShowModal;
      finally
        theForm.Free;
      end;
    end;
  end;
end;
//------------------------------------------------------------------------------


//
//  Открываем накладную
//
procedure Tall_prih_Form.grid_prihod_view1DblClick(Sender: TObject);
begin
  view_doc(grid_prihod_view1.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//
//  Открываем накладную по CTRL+ENTER
//
procedure Tall_prih_Form.ctrl_enterExecute(Sender: TObject);
begin
  if (doc.Active = true) and (doc.RecordCount > 0) and (doc.FieldByName('ID_DOC').AsInteger > 0) then
    view_doc(grid_prihod_view1.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


procedure Tall_prih_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
// По ENTER запускаем показ
//
procedure Tall_prih_Form.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


// По ENTER запускаем показ
procedure Tall_prih_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


// По ENTER запускаем показ
procedure Tall_prih_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Очистка фильтра
//
procedure Tall_prih_Form.BitBtn2Click(Sender: TObject);
begin
  grid_prihod_view1.DataController.Filter.Clear;
  grid_prihod.SetFocus;
end;


//
//  Подгружаем таблицу из реестра
//
procedure Tall_prih_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Prihod';
  grid_prihod_view1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);


  prih_INV_SUM.Visible := DataM.Operator_admin;

  ToolButton29.Enabled := DataM.Operator_print;
  ToolButton31.Enabled := DataM.Operator_print;
  ToolButton1.Enabled := DataM.Operator_print;
  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  DocNewManually_Action.Enabled := DataM.Operator_edit;
  DocNewScaner_Action.Enabled := DataM.Operator_edit;
  DocNewFrom_Action.Enabled := DataM.Operator_edit;
  dxBarButton15.Enabled := DataM.Operator_print;
  tlb_export.Enabled := DataM.Operator_print;

  prih_brief.Visible := not (GetOfficeID = DM.id_office);
end;


//
//  Записываем таблицу в реестр
//
procedure Tall_prih_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Prihod';
  grid_prihod_view1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Закрываем окно
//
procedure Tall_prih_Form.btn_store_closeClick(Sender: TObject);
begin
  Close;
end;


//Создание документа-----------------------------------------------------------
procedure Tall_prih_Form.new_doc(new_type: integer);
{
new_type
1 - создание документа вручную
2 - создание со сканера
3 - создание документа из другого документа
}
var
  theForm: TForm;
  SP_DOC_DATE: tDateTime;
  SP_ID_DOC_TYPE: integer;
  SP_OTDEL: integer;
  SP_COMMENTS: string;
  SP_OPERATOR_NAME: string;
  Inv_Id: integer;
  is_minus: integer;
  err_msg: string;
  SP_CLIENT_CODE: string;
begin

  DM.OraSession.Savepoint('Begin_Doc_Edit');

// со сканера
	if (new_type = 2) then
  begin
  	readscaner();
    SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt',dm.Scan, dm.OraSQL_Scan);
    if alert_str <> '' then
       MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);
	end;
// -----------------------------------------------------------------------------

// из инвойса
	if (new_type = 3) then
  begin
    if MessageDlg('Из инвойса на склад будут подгружены только те товары, на которые уже проставлены цены и указаны ГТД, если это необходимо. Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
	  begin
      try
        try
          // Открываем таблицу с инвойсами
          screen.cursor := crHourGlass;
      	  theForm:=TinvchooserForm.Create(Application);
          TinvchooserForm(theForm).Invoices.Close;
          TinvchooserForm(theForm).Invoices.ParamByName('ID_DEP_').Value := DataM.department_id;
          TinvchooserForm(theForm).Invoices.Open;
          screen.cursor := crDefault;
        except on E: Exception do
          begin
            screen.cursor := crDefault;
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
            MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
            exit;
          end
        End; // КОНЕЦ Открываем таблицу с инвойсами

  	    if theForm.ShowModal = mrOk then
	      begin
	        // Записываем данные из инвойса во временную таблицу
  	      try
            Inv_Id   := TinvchooserForm(theForm).grid_invoicesView1.DataController.DataSet.FieldByName('inv_id').AsInteger;
            is_minus := TinvchooserForm(theForm).grid_invoicesView1.DataController.DataSet.FieldByName('is_minus').AsInteger;
            SP_COMMENTS := TinvchooserForm(theForm).grid_invoicesView1.DataController.DataSet.FieldByName('COMMENTS').AsString;
            if (Inv_Id > 0) then
            begin
              // 2013-05-19 Дополнительная проверка, что кол-во подгуржаемого товара = инвойсу, а то в Казани и Самаре ничего не смотрят
                DM.Q_SQL.Close;
                DM.Q_SQL.SQL.Clear;
                DM.Q_SQL.SQL.add('begin store_pkg.check_data_from_inv(:inv_num, :res); end;');
                DM.Q_SQL.Prepare;
                DM.Q_SQL.ParamByName('inv_num').AsInteger := Inv_Id;
                DM.Q_SQL.ParamByName('res').AsString := '';
                DM.Q_SQL.Execute;
                if DM.Q_SQL.ParamByName('res').AsString <> '' then
                begin
                  if Application.MessageBox(PChar(DM.Q_SQL.ParamByName('res').AsString),'Внимание',MB_OKCANCEL+MB_ICONQUESTION) <> mrOk then
                  begin
                    DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
                    screen.cursor := crDefault;
                    exit;
                  end;
                end;
                
              //

              // Сделаем переоценку остатков
                DM.Q_SQL.Close;
                DM.Q_SQL.SQL.Clear;
                DM.Q_SQL.SQL.add('begin store_pkg.insert_in_store_reprice(:v_PPLI_ID); end;');
                DM.Q_SQL.Prepare;
                DM.Q_SQL.ParamByName('v_PPLI_ID').AsInteger := Inv_Id;
                DM.Q_SQL.Execute;
              // -------------------------

  	          DM.OraSession.ExecProc('STORE_PKG.DATA_FROM_INV', [Inv_Id]) ;
            end;
  	      except on E: Exception do
            begin
              MessageBox(Handle, PChar(E.Message), 'Не удалось подгрузить из инвойса!', MB_ICONERROR);
              DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
	            exit;
            end;
	        End;
	        // КОНЕЦ Записываем данные из инвойса во временную таблицу
  	    end
	      else
        begin
          DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
          exit;
        end;
      finally
        theForm.Free;
      end;
    end;

    if (Inv_Id > 0) then
    begin
      try
        // Открываем окно со считанными данными
	      theForm := TprihodForm.Create(Application);
	      TprihodForm(theForm).department_index := strtoint(DataM.department_id);
  	    TprihodForm(theForm).department_name  := DataM.department_name;
        TprihodForm(theForm).Edit_Inv_Id.Text := inttostr(Inv_Id);
        if is_minus = 1 then
          TprihodForm(theForm).EditComments.Text :=  SP_COMMENTS;

        // Если все ОК то начинаем запись в БД
    	  if theForm.ShowModal = mrOk then
        begin
	         try
	            SP_DOC_DATE      := DataM.GlobalDate;
    	        SP_ID_DOC_TYPE   := 1;
	            SP_COMMENTS      := TprihodForm(theForm).EditComments.Text;
	            SP_OPERATOR_NAME := DataM.Operator_NAME;
    	        SP_OTDEL         := strtoint(DataM.department_id);

              OraStoredProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
              OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
              OraStoredProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
              OraStoredProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
              OraStoredProc.ParamByName('SP_INV_ID').AsInteger      := Inv_Id;
              OraStoredProc.Execute;

              err_msg := OraStoredProc.ParamByName('out_message').AsString;

    	        if (err_msg='') then
              begin
                // Ставим метки о приходовании
                DM.Q_SQL.Close;
                DM.Q_SQL.SQL.Clear;
                DM.Q_SQL.SQL.add('begin store_pkg.set_params_to_invoice(:inv_num); end;');
                DM.Q_SQL.Prepare;
                DM.Q_SQL.ParamByName('inv_num').AsInteger := Inv_Id;
                DM.Q_SQL.Execute;
                // -------------------------

	              DM.OraSession.Commit;
                MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
                Doc.Refresh;
              end
              else
              begin
                DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
                MessageBox(Handle, PChar(err_msg), 'Ошибка при записи в БД!', MB_ICONERROR);
              end;
    	     except on E: Exception do
             begin
               MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
               DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
    	       End;
           end;
  	    end
	      else
    	     DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
      finally
        theForm.Free;
      end;
    end;

  end; // конец считывания из инвойса
// -----------------------------------------------------------------------------

end;
//------------------------------------------------------------------------------





//
//  Вызовы процедуры добавления  -----------------------------------------------
//
  procedure Tall_prih_Form.DocNewManually_ActionExecute(Sender: TObject);
  begin
    new_doc(1);  // Документ вручную
  end;

  procedure Tall_prih_Form.DocNewScaner_ActionExecute(Sender: TObject);
  begin
    new_doc(2);  // Документ со сканера
  end;

  procedure Tall_prih_Form.DocNewFrom_ActionExecute(Sender: TObject);
  begin
    if GetOfficeID <> DM.id_office then
    begin
      MessageBox(Handle, 'Подгружать инвойс можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

    new_doc(3);  // Документ из списка
  end;
// -----------------------------------------------------------------------------



procedure Tall_prih_Form.ToolButton25Click(Sender: TObject);
begin
  DocNewManually_ActionExecute(Sender);
end;


//
// Подгрузить из инвойса
//
procedure Tall_prih_Form.ToolButton29Click(Sender: TObject);
begin
  DocNewFrom_ActionExecute(Sender);
  grid_prihod.SetFocus;
end;


//
//  Печать списка
//
procedure Tall_prih_Form.ToolButton1Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount<>0) then
  try
    MakeSortForPrint(TOraQuery(grid_prihod_view1.DataController.DataSet),TcxGridDBTableView(grid_prihod_view1));
    grid_prihod_view1.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\prihod_list.fr3');
    frxReport1.PrepareReport;
    Memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Накладные прихода за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

    Memo1 := frxReport1.FindObject('Memo2') as TfrxMemoView;
    Memo1.Text := DM.title_name;
{
    if DM.id_office = 1 then
      Memo1.Text := 'ООО «СТАРЛАЙТ»';
    if DM.id_office = 2 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Поволжье Кэш энд Кэрри»';
    if DM.id_office = 3 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Казань»';
}

    frxReport1.ShowReport;
    grid_prihod_view1.DataController.DataSet.EnableControls;
  except on E: Exception do
    begin
      grid_prihod_view1.DataController.DataSet.DisableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
// Печать документа
//
procedure Tall_prih_Form.ToolButton31Click(Sender: TObject);
begin
  if (doc.RecordCount<>0) then
  try
    frxReport1.LoadFromFile(path+'raports\prihod.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
     on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;



//
//  Экспорт в Эксель
//
procedure Tall_prih_Form.tlb_exportClick(Sender: TObject);
var f: string;
begin
  try
//  if SaveDialog9.Execute then
//  begin
     f := path+'..\__xls__\store_all_prihod.xls';
     ExportGridToExcel(f, grid_prihod, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
//  end;
  except
     on E: Exception do ShowMessage(E.Message);
  End;
end;


//
//  Восстанавливаем таблицу
//
procedure Tall_prih_Form.ToolButton2Click(Sender: TObject);
var i, j: integer;
begin
  grid_prihod_view1.DataController.Filter.Clear;
  j := grid_prihod_view1.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_prihod_view1.SortedItems[0].SortOrder := soNone;
  end;
end;

// Скопируем значение ячейкт в буфер
procedure Tall_prih_Form.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_prihod_view1.DataController, 1);
end;
// Скопируем значение футера в буфер
procedure Tall_prih_Form.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_prihod_view1.DataController, 0);
end;


end.
