unit all_utsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGridEh, ToolWin, StdCtrls, Buttons, ExtCtrls,
  ActnList, DB, Ora, MemDS, DBAccess, Menus, DateUtils,
  GridsEh, Registry, frxClass, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxCalendar, cxCurrencyEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxGridExportLink, PI_library,
  dxBar, dxBarExtItems, frxExportRTF, frxExportXLS, frxExportText,
  frxExportHTML, frxExportPDF, frxDBSet, ShellAPI, PI_Library_reg, cxContainer,
  cxMaskEdit, cxDropDownEdit;

type
  Tall_utsen_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    DateTrue: TCheckBox;
    CoolBar7: TCoolBar;
    ToolBar7: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    StatusBar: TStatusBar;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    Panel1: TPanel;
    DOCNEW_DATA: TOraQuery;
    ToolButton1: TToolButton;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    OraStoredProc: TOraStoredProc;
    filter_off: TAction;
    ctrl_enter: TAction;
    Close_BitBtn: TcxButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    grid_ucenka: TcxGrid;
    grid_ucenkaView: TcxGridDBTableView;
    grid_ucenkaLevel: TcxGridLevel;
    grid_ucenkaViewID_DOC: TcxGridDBColumn;
    gu_DOC_NUMBER: TcxGridDBColumn;
    grid_ucenkaViewID_DOC_TYPE: TcxGridDBColumn;
    grid_ucenkaViewID_DEPARTMENTS: TcxGridDBColumn;
    grid_ucenkaViewDEPARTMENT_NAME: TcxGridDBColumn;
    grid_ucenkaViewOPERATOR_NAME: TcxGridDBColumn;
    gu_DOC_DATE: TcxGridDBColumn;
    gu_DOC_DATE_REAL: TcxGridDBColumn;
    grid_ucenkaViewID_CLIENT: TcxGridDBColumn;
    grid_ucenkaViewNICK: TcxGridDBColumn;
    grid_ucenkaViewFIO: TcxGridDBColumn;
    gu_QUANTITY_ALL: TcxGridDBColumn;
    gu_PRICE_ALL: TcxGridDBColumn;
    grid_ucenkaViewSUM_PRICE_OLD: TcxGridDBColumn;
    grid_ucenkaViewSUM_PRICE_NEW: TcxGridDBColumn;
    grid_ucenkaViewSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    gu_COMMENTS: TcxGridDBColumn;
    grid_ucenkaViewINV_ID: TcxGridDBColumn;
    grid_ucenkaViewORDER_ID: TcxGridDBColumn;
    grid_ucenkaViewSUPPLIER_DATE: TcxGridDBColumn;
    grid_ucenkaViewSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_ucenkaViewSUPLIER: TcxGridDBColumn;
    SaveDialog10: TSaveDialog;
    ToolButton2: TToolButton;
    tlb_export: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    dxBarDockControl1: TdxBarDockControl;
    bm_ucenka: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_ucenka: TdxBarPopupMenu;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    docID_DOC: TFloatField;
    docDOC_NUMBER: TFloatField;
    docID_DOC_TYPE: TIntegerField;
    docID_DEPARTMENTS: TIntegerField;
    docDEPARTMENT_NAME: TStringField;
    docOPERATOR_NAME: TStringField;
    docDOC_DATE: TDateTimeField;
    docDOC_DATE_REAL: TDateTimeField;
    docID_CLIENT: TIntegerField;
    docNICK: TStringField;
    docFIO: TStringField;
    docQUANTITY_ALL: TFloatField;
    docPRICE_ALL: TFloatField;
    docSUM_PRICE_OLD: TFloatField;
    docSUM_PRICE_NEW: TFloatField;
    docSUM_PRICE_DIFFERENCE: TFloatField;
    docCOMMENTS: TStringField;
    docINV_ID: TFloatField;
    docORDER_ID: TFloatField;
    docSUPPLIER_DATE: TDateTimeField;
    docSUPPLIER_NUMBER: TStringField;
    docSUPLIER: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    docS_NAME_RU: TStringField;
    docID_OFFICE: TIntegerField;
    docBRIEF: TStringField;
    grid_ucenkaViewS_NAME_RU: TcxGridDBColumn;
    grid_ucenkaViewID_OFFICE: TcxGridDBColumn;
    grid_ucenkaViewBRIEF: TcxGridDBColumn;
    Doc_DateTimePicker2: TcxDateEdit;
    Doc_DateTimePicker1: TcxDateEdit;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    frxRTFExport1: TfrxRTFExport;
    grid_ucenka_sum_quantity: TcxGridDBColumn;
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

    procedure Doc_FilterOn();
    procedure ToolButton5Click(Sender: TObject);
    procedure new_doc(new_type: integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
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
    procedure Close_BitBtnClick(Sender: TObject);
    procedure tlb_exportClick(Sender: TObject);
    procedure grid_ucenkaViewDblClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
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
  all_utsen_Form: Tall_utsen_Form;
  Doc_SQL_beg: string;

implementation

uses global_date, nacl_new, spisanie, utsenka, global, inventory, prihod, dataM, 
client_choos, obnul, invchooser;

{$R *.dfm}


//
//  Создаем форму
//
procedure Tall_utsen_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;
  Label1.Caption           := DataM.department_name +' :: Накладные уценки';

  Doc_DateTimePicker1.Date := IncDay(Date,0);
  Doc_DateTimePicker2.Date := Date;

  Doc_FilterOn();
end;


//
//  Фильтрация документов ------------------------------------------------------
//
procedure Tall_utsen_Form.Doc_FilterOn();
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
	    DOC.ParamByName('id_dep_').Value        := strtoint(DataM.department_id);
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

  	  DOC.ParamByName('ID_DOC_TYPE_').Value  := 3;
    	DOC.Open;
	    screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
  end;
end;
//------------------------------------------------------------------------------


//
//  При показе формы восстанавливаем таблицу
//
procedure Tall_utsen_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Ucenka_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_ucenka';
  grid_ucenkaView.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  grid_ucenkaViewBRIEF.Visible := not (GetOfficeID = DM.id_office);

  ToolButton5.Enabled := DataM.Operator_edit;
  ToolButton9.Enabled := DataM.Operator_edit;
  ToolButton1.Enabled := DataM.Operator_print;
  ToolButton13.Enabled := DataM.Operator_print;
  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  DocNewManually_Action.Enabled := DataM.Operator_edit;
  DocNewScaner_Action.Enabled := DataM.Operator_edit;
  tlb_export.Enabled := DataM.Operator_print;
  dxBarButton15.Enabled := DataM.Operator_print;
end;


//
//  При закрытии формы сохраняем таблицу
//
procedure Tall_utsen_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Ucenka_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_ucenka';
  grid_ucenkaView.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Кнопка выход
//
procedure Tall_utsen_Form.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  Фильтрация
//
procedure Tall_utsen_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  grid_ucenka.SetFocus;
end;


//
// Просмотр документов ---------------------------------------------------------
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_utsen_Form do
  begin
    if (DOC.RecordCount <> 0) then
    begin
      theForm := TutsenkaForm.Create(Application);
      try
        TutsenkaForm(theForm).ID := ID_DOC;
        TutsenkaForm(theForm).N_ID := 0;
        theForm.ShowModal;
      finally
        theForm.Free;
      end;
    end;
  end;
end;
//------------------------------------------------------------------------------


//
//  Очистить фильтр
//
procedure Tall_utsen_Form.BitBtn2Click(Sender: TObject);
begin
  grid_ucenkaView.DataController.Filter.Clear;
  grid_ucenka.SetFocus;
end;


//
//  Добавляем вручную
//
procedure Tall_utsen_Form.ToolButton5Click(Sender: TObject);
begin
  DocNewManually_ActionExecute(Sender);
  grid_ucenka.SetFocus;
end;


//
//  Вводим вручную
//
procedure Tall_utsen_Form.DocNewManually_ActionExecute(Sender: TObject);
begin
  new_doc(1);
end;


//
//  Добавялем со сканера
//
procedure Tall_utsen_Form.ToolButton9Click(Sender: TObject);
begin
  new_doc(2);
  grid_ucenka.SetFocus;
end;


//
//  Вводим из сканера
//
procedure Tall_utsen_Form.DocNewScaner_ActionExecute(Sender: TObject);
begin
  new_doc(2);
end;


//
//  Открываем накладную по CTRL+ENTER
//
procedure Tall_utsen_Form.ctrl_enterExecute(Sender: TObject);
begin
  if (doc.Active = true) and (doc.RecordCount > 0) and (doc.FieldByName('ID_DOC').AsInteger > 0) then
    view_doc(grid_ucenkaView.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


procedure Tall_utsen_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Экспорт в Эксель
//
procedure Tall_utsen_Form.tlb_exportClick(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_all_ucenka.xls';
     ExportGridToExcel(f, grid_ucenka, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog10.Execute then
  begin
     ExportGridToExcel(SaveDialog10.FileName, grid_ucenka, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog10.FileName), nil, nil, SW_RESTORE);
  end;
}
  grid_ucenka.SetFocus;
end;


//
//  Открываем накладную
//
procedure Tall_utsen_Form.grid_ucenkaViewDblClick(Sender: TObject);
begin
  view_doc(grid_ucenkaView.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//
//  Нажимаем ENTER на № документа
//
procedure Tall_utsen_Form.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Нажимаем ENTER на дате 1 
//
procedure Tall_utsen_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Нажимаем ENTER на дате 2
//
procedure Tall_utsen_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
// Создание документа-----------------------------------------------------------
//
procedure Tall_utsen_Form.new_doc(new_type: integer);
{
new_type
1 - создание документа вручную
2 - создание со сканера
3 - создание документа из другого документа
}
var theForm: TForm;
    SP_DOC_DATE: tDateTime;
    SP_ID_DOC_TYPE: integer;
    SP_OTDEL: integer;
    SP_COMMENTS: string;
    SP_OPERATOR_NAME: string;
    err_msg: string;
    SP_CLIENT_CODE: string;
begin

    if GetOfficeID <> DM.id_office then
    begin
      MessageBox(Handle, 'Формировать уценку можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

  DM.OraSession.Savepoint('Begin_Doc_Edit');

  // со сканера
  if (new_type=2) then
  begin
  	readscaner();
    dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt',dm.Scan, dm.OraSQL_Scan);
    deletefile(path+'scan/1.txt');
    if alert_str <> '' then
       MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);
	end;

  try
    // Открываем форму с данными
	  theForm := TutsenkaForm.Create(Application);
  	TutsenkaForm(theForm).department_index:=strtoint(DataM.department_id);
	  TutsenkaForm(theForm).department_name:=DataM.department_name;

    if theForm.ShowModal = mrOk then
	  begin
	    try
	      SP_DOC_DATE:=DataM.GlobalDate;
	      SP_ID_DOC_TYPE:=3;
	      SP_COMMENTS:=TutsenkaForm(theForm).EditComments.Text;
	      SP_OPERATOR_NAME:=DataM.Operator_NAME;
	      SP_OTDEL:=strtoint(DataM.department_id);

        OraStoredProc.ParamByName('SP_DOC_DATE').AsDate:=SP_DOC_DATE;
        OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger:=SP_ID_DOC_TYPE;
        OraStoredProc.ParamByName('SP_COMMENTS').AsString:=SP_COMMENTS;
        OraStoredProc.ParamByName('SP_OTDEL').AsInteger:=SP_OTDEL;
        OraStoredProc.Execute;

        err_msg := OraStoredProc.ParamByName('out_message').AsString;

        if ( err_msg <> '' ) then
        begin
          DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
          MessageBox(Handle, PChar(err_msg), 'Ошибка при записи в БД!', MB_ICONERROR);
        end
        else
        begin
	        DM.OraSession.Commit;
          MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
          Doc.Refresh;
        end;
      except on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
      end;
  	end
	  else
  	begin
      DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
  	end; // if theForm.ShowModal = mrOk then

  finally
    theForm.Free;
  end;
  
end;
//------------------------------------------------------------------------------


//
//  Печать списка
//
procedure Tall_utsen_Form.ToolButton1Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount<>0) then
  try
    MakeSortForPrint(TOraQuery(grid_ucenkaView.DataController.DataSet),grid_ucenkaView);
    grid_ucenkaView.DataController.DataSource := nil;
    frxReport1.LoadFromFile(path+'raports\ucenka_list.fr3');
    frxReport1.PrepareReport;
    Memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Накладные уценки за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

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
    grid_ucenkaView.DataController.DataSource := DOC_DS;
  except
     on E: Exception do
     begin
       grid_ucenkaView.DataController.DataSource := DOC_DS;
       MessageBox(Handle, PChar(E.Message), 'Ошибка при выводе на печать!', MB_ICONERROR);
     end;
  End;
end;


//
//  Печать документа 
//
procedure Tall_utsen_Form.ToolButton13Click(Sender: TObject);
begin
  if (doc.RecordCount<>0) then
  try
    frxReport1.LoadFromFile(path+'raports\ucenka.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
     on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка при выводе на печать!', MB_ICONERROR);
  End;
end;


//
//  Восстанавливаем таблицу
//
procedure Tall_utsen_Form.ToolButton4Click(Sender: TObject);
var i, j: integer;
begin
  grid_ucenkaView.DataController.Filter.Clear;
  j := grid_ucenkaView.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_ucenkaView.SortedItems[0].SortOrder := soNone;
  end;
end;


// Скопируем значение футера в буфер
procedure Tall_utsen_Form.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_ucenkaView.DataController, 0);
end;
// Скопируем значение ячейкт в буфер
procedure Tall_utsen_Form.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_ucenkaView.DataController, 1);
end;



end.
