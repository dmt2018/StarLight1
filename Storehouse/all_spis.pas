unit all_spis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls,
  ActnList, DB, Ora, MemDS, DBAccess, Menus, DateUtils, PI_library,
  GridsEh, Registry, frxClass, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxCalendar, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxGridExportLink,
  dxBar, dxBarExtItems, frxExportHTML, frxExportText,
  frxExportRTF, frxExportXLS, frxExportPDF, frxDBSet, ShellAPI, PI_Library_reg,
  cxContainer, cxMaskEdit, cxDropDownEdit;

type
  Tall_spis_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    DateTrue: TCheckBox;
    StatusBar: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    Panel1: TPanel;
    ToolButton5: TToolButton;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    OraStoredProc: TOraStoredProc;
    ctrl_enter: TAction;
    filter_off: TAction;
    Close_BitBtn: TcxButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tlb_export: TToolButton;
    ToolButton6: TToolButton;
    grid_spis: TcxGrid;
    grid_spisView: TcxGridDBTableView;
    gu_DOC_NUMBER: TcxGridDBColumn;
    gu_DOC_DATE: TcxGridDBColumn;
    gu_DOC_DATE_REAL: TcxGridDBColumn;
    gu_QUANTITY_ALL: TcxGridDBColumn;
    gu_PRICE_ALL: TcxGridDBColumn;
    gu_COMMENTS: TcxGridDBColumn;
    grid_spisViewID_DOC: TcxGridDBColumn;
    grid_spisViewID_DOC_TYPE: TcxGridDBColumn;
    grid_spisViewID_DEPARTMENTS: TcxGridDBColumn;
    grid_spisViewDEPARTMENT_NAME: TcxGridDBColumn;
    grid_spisViewOPERATOR_NAME: TcxGridDBColumn;
    grid_spisViewID_CLIENT: TcxGridDBColumn;
    grid_spisViewNICK: TcxGridDBColumn;
    grid_spisViewFIO: TcxGridDBColumn;
    grid_spisViewSUM_PRICE_OLD: TcxGridDBColumn;
    grid_spisViewSUM_PRICE_NEW: TcxGridDBColumn;
    grid_spisViewSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_spisViewINV_ID: TcxGridDBColumn;
    grid_spisViewORDER_ID: TcxGridDBColumn;
    grid_spisViewSUPPLIER_DATE: TcxGridDBColumn;
    grid_spisViewSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_spisViewSUPLIER: TcxGridDBColumn;
    grid_spisLevel: TcxGridLevel;
    SaveDialog8: TSaveDialog;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    dxBarDockControl1: TdxBarDockControl;
    bm_spisanie: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_spisanie: TdxBarPopupMenu;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxHTMLExport1: TfrxHTMLExport;
    fr_DOC_DS: TfrxDBDataset;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grid_spisViewid_office: TcxGridDBColumn;
    grid_spisViewbrief: TcxGridDBColumn;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    frxRTFExport1: TfrxRTFExport;
    grid_spisViewsum_quantity: TcxGridDBColumn;
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

    procedure Doc_FilterOn();
    procedure ToolButton1Click(Sender: TObject);
    procedure new_doc(new_type: integer);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure tlb_exportClick(Sender: TObject);
    procedure grid_spisViewDblClick(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
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
  all_spis_Form: Tall_spis_Form;
  Doc_SQL_beg: string;

implementation

uses global_date, nacl_new, spisanie, utsenka, global, inventory, prihod, dataM, 
client_choos, obnul, invchooser;

{$R *.dfm}


//
//  Создаем форму
//
procedure Tall_spis_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text:='  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text:='  Оператор: '+DataM.Operator_Name;
  Label1.Caption := DataM.department_name +' :: Накладные списания';

  Doc_DateTimePicker1.Date := IncDay(Date,0);
  Doc_DateTimePicker2.Date := Date;

  Doc_FilterOn();
end;


//
// Фильтрация документов--------------------------------------------------------
//
procedure Tall_spis_Form.Doc_FilterOn();
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

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := 2;
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
//  При закрытии формы сохраняем таблицу
//
procedure Tall_spis_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Spisanie_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_spis';
  grid_spisView.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  При показе формы восстанавливаем таблицу
//
procedure Tall_spis_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Spisanie_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_spis';
  grid_spisView.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  ToolButton1.Enabled := DataM.Operator_edit;
  ToolButton3.Enabled := DataM.Operator_edit;

  ToolButton7.Enabled := DataM.Operator_print;
  ToolButton5.Enabled := DataM.Operator_print;
  tlb_export.Enabled := DataM.Operator_print;

  grid_spisViewbrief.Visible := not (GetOfficeID = DM.id_office);

  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  DocNewManually_Action.Enabled := DataM.Operator_edit;
  DocNewScaner_Action.Enabled := DataM.Operator_edit;
  dxBarButton15.Enabled := DataM.Operator_print;
end;


//
//  Кнопка выход
//
procedure Tall_spis_Form.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  Фильтрация
//
procedure Tall_spis_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  grid_spis.SetFocus;
end;


//
// Просмотр документов ---------------------------------------------------------
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_spis_Form do
  begin
    if (DOC.RecordCount<>0) then
    begin
      theForm := TspisanieForm.Create(Application);
      try
        TspisanieForm(theForm).ID   := ID_DOC;
        TspisanieForm(theForm).N_ID := 0;
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
procedure Tall_spis_Form.BitBtn2Click(Sender: TObject);
begin
  grid_spisView.DataController.Filter.Clear;
  grid_spis.SetFocus;
end;


//
//  Добавляем вручную
//
procedure Tall_spis_Form.ToolButton1Click(Sender: TObject);
begin
  DocNewManually_ActionExecute(Sender);
  grid_spis.SetFocus;
end;


//
//  Вводим вручную
//
procedure Tall_spis_Form.DocNewManually_ActionExecute(Sender: TObject);
begin
  new_doc(1);
end;


//
//  Добавялем со сканера
//
procedure Tall_spis_Form.ToolButton3Click(Sender: TObject);
begin
  DocNewScaner_ActionExecute(Sender);
  grid_spis.SetFocus;
end;


//
//  Добавялем со сканера
//
procedure Tall_spis_Form.DocNewScaner_ActionExecute(Sender: TObject);
begin
  new_doc(2);
end;


//
//  Открываем накладную по CTRL+ENTER
//
procedure Tall_spis_Form.ctrl_enterExecute(Sender: TObject);
begin
  if (doc.Active = true) and (doc.RecordCount > 0) and (doc.FieldByName('ID_DOC').AsInteger > 0) then
    view_doc(grid_spisView.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


procedure Tall_spis_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Экспорт в Эксель
//
procedure Tall_spis_Form.tlb_exportClick(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_all_spisanie.xls';
     ExportGridToExcel(f, grid_spis, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog8.Execute then
  begin
     ExportGridToExcel(SaveDialog8.FileName, grid_spis, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog8.FileName), nil, nil, SW_RESTORE);
  end;
}
  grid_spis.SetFocus;
end;


//
//  Открываем накладную
//
procedure Tall_spis_Form.grid_spisViewDblClick(Sender: TObject);
begin
  view_doc(grid_spisView.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//
// Создание документа-----------------------------------------------------------
//
procedure Tall_spis_Form.new_doc(new_type: integer);
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
      MessageBox(Handle, 'Формировать списание можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

  DM.OraSession.Savepoint('Begin_Doc_Edit');

  //со сканера
	if (new_type=2) then
  begin
  	readscaner();
    dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    dm.Scan.Filter   := 'QUANTITY_NOW > 0';
    dm.Scan.Filtered := true;
    SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt',dm.Scan, dm.OraSQL_Scan);
    deletefile(path+'scan/1.txt');

    dm.Scan.Filter   := '';
    dm.Scan.Filtered := false;
    if alert_str <> '' then
       MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);
	end;

  try
    // Открываем форму с данными
    theForm := TspisanieForm.Create(Application);
    TspisanieForm(theForm).department_index:=strtoint(DataM.department_id);
    TspisanieForm(theForm).department_name:=DataM.department_name;

    if theForm.ShowModal = mrOk then
    begin
       try
	        SP_DOC_DATE      := DataM.GlobalDate;
	        SP_ID_DOC_TYPE   := 2;
	        SP_COMMENTS      := TspisanieForm(theForm).EditComments.Text;
	        SP_OPERATOR_NAME := DataM.Operator_NAME;
	        SP_OTDEL         := strtoint(DataM.department_id);

          OraStoredProc.ParamByName('SP_DOC_DATE').AsDate:=SP_DOC_DATE;
          OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger:=SP_ID_DOC_TYPE;
          OraStoredProc.ParamByName('SP_COMMENTS').AsString:=SP_COMMENTS;
          OraStoredProc.ParamByName('SP_OTDEL').AsInteger:=SP_OTDEL;
          OraStoredProc.Execute;

          err_msg := OraStoredProc.ParamByName('out_message').AsString;

          if ( err_msg <> '' ) then
          begin
            MessageBox(Handle, PChar(err_msg), 'Ошибка при записи в БД!', MB_ICONERROR);
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
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
  	end;  // if theForm.ShowModal = mrOk then
  finally
    theForm.Free;
  end;
end;
//------------------------------------------------------------------------------


//
//  Нажимаем ENTER на № документа
//
procedure Tall_spis_Form.NumberDocKeyDown(Sender: TObject; var Key: Word;
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
procedure Tall_spis_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
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
procedure Tall_spis_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


procedure Tall_spis_Form.ToolButton7Click(Sender: TObject);
begin
  if (doc.RecordCount<>0) then
  try
    frxReport1.LoadFromFile(path+'raports\spisanie.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


procedure Tall_spis_Form.ToolButton5Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount<>0) then
  try
    MakeSortForPrint(TOraQuery(grid_spisView.DataController.DataSet),grid_spisView);
    grid_spisView.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\spisanie_list.fr3');
    frxReport1.PrepareReport;
    Memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Накладные списания за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

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
    grid_spisView.DataController.DataSet.EnableControls;
  except
     on E: Exception do
     begin
        grid_spisView.DataController.DataSet.DisableControls;
        ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
     end;
  End;
end;


//
//  Восстанавливаем таблицу
//
procedure Tall_spis_Form.ToolButton10Click(Sender: TObject);
var i, j: integer;
begin
  grid_spisView.DataController.Filter.Clear;
  j := grid_spisView.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_spisView.SortedItems[0].SortOrder := soNone;
  end;
end;


// Скопируем значение ячейкт в буфер
procedure Tall_spis_Form.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_spisView.DataController, 1);
end;
// Скопируем значение футера в буфер
procedure Tall_spis_Form.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_spisView.DataController, 0);
end;


end.
