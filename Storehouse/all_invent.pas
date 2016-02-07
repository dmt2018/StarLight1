unit all_invent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls,
  ActnList, DB, Ora, MemDS, DBAccess, Menus, DateUtils,
  GridsEh, frxClass, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxCalendar, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxButtons, PI_library,
  cxGridExportLink, dxBar, dxBarExtItems, frxExportRTF, PI_Library_reg, 
  frxExportText, frxExportXLS, frxExportPDF, frxExportHTML, frxDBSet, ShellAPI,
  cxImage, cxContainer, cxMaskEdit, cxDropDownEdit;

type
  Tall_invent_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    DateTrue: TCheckBox;
    CoolBar5: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocNewFrom_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    StoreListPrint_Action: TAction;
    Panel1: TPanel;
    StatusBar: TStatusBar;
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
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    grid_invent: TcxGrid;
    grid_invent_v: TcxGridDBTableView;
    gu_DOC_NUMBER: TcxGridDBColumn;
    gu_DOC_DATE: TcxGridDBColumn;
    gu_DOC_DATE_REAL: TcxGridDBColumn;
    gu_QUANTITY_ALL: TcxGridDBColumn;
    gu_PRICE_ALL: TcxGridDBColumn;
    gu_COMMENTS: TcxGridDBColumn;
    grid_invent_vID_DOC: TcxGridDBColumn;
    grid_invent_vID_DOC_TYPE: TcxGridDBColumn;
    grid_invent_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_invent_vDEPARTMENT_NAME: TcxGridDBColumn;
    grid_invent_vOPERATOR_NAME: TcxGridDBColumn;
    grid_invent_vID_CLIENT: TcxGridDBColumn;
    grid_invent_vNICK: TcxGridDBColumn;
    grid_invent_vFIO: TcxGridDBColumn;
    grid_invent_vSUM_PRICE_OLD: TcxGridDBColumn;
    grid_invent_vSUM_PRICE_NEW: TcxGridDBColumn;
    grid_invent_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_invent_vINV_ID: TcxGridDBColumn;
    grid_invent_vORDER_ID: TcxGridDBColumn;
    grid_invent_vSUPPLIER_DATE: TcxGridDBColumn;
    grid_invent_vSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_invent_vSUPLIER: TcxGridDBColumn;
    grid_invent_l: TcxGridLevel;
    SaveDialog11: TSaveDialog;
    dxBarDockControl1: TdxBarDockControl;
    bm_invent: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_invent: TdxBarPopupMenu;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grid_invent_vid_office: TcxGridDBColumn;
    grid_invent_vbrief: TcxGridDBColumn;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    PageScroller1: TPageScroller;
    frxReport1: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    frxRTFExport2: TfrxRTFExport;
    grid_invent_vsum_quantity: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

    procedure Doc_FilterOn();
    procedure ToolButton33Click(Sender: TObject);
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure new_doc(new_type: integer);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton39Click(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure grid_invent_vDblClick(Sender: TObject);
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
  all_invent_Form: Tall_invent_Form;
  Doc_SQL_beg: string;

implementation

uses global_date, nacl_new, spisanie, utsenka, global, inventory, prihod, dataM, 
client_choos, obnul, invchooser;

{$R *.dfm}



//
//  Создаем форму
//
procedure Tall_invent_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text  := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text  := '  Оператор: '+DataM.Operator_Name;
  Label1.Caption            := DataM.department_name + ' :: Накладные инвентаризации';
  Doc_DateTimePicker1.Date  := IncDay(Date,0);
  Doc_DateTimePicker2.Date  := Date;

  Doc_FilterOn();
end;


//
//  Фильтрация документов-------------------------------------------------------
//
procedure Tall_invent_Form.Doc_FilterOn();
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

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := 5;
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
procedure Tall_invent_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Invent_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_invent';
  grid_invent_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  При показе формы восстанавливаем таблицу
//
procedure Tall_invent_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Invent_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_invent';
  grid_invent_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  grid_invent_vbrief.Visible := not (GetOfficeID = DM.id_office);

  ToolButton33.Enabled := DataM.Operator_edit;
  ToolButton35.Enabled := DataM.Operator_edit;

  ToolButton39.Enabled := DataM.Operator_print;
  ToolButton1.Enabled := DataM.Operator_print;
  ToolButton3.Enabled := DataM.Operator_print;
  dxBarButton15.Enabled := DataM.Operator_print;

  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  StoreListPrint_Action.Enabled := DataM.Operator_print;
  DocNewManually_Action.Enabled := DataM.Operator_edit;
  DocNewScaner_Action.Enabled := DataM.Operator_edit;
  DocNewFrom_Action.Enabled := DataM.Operator_edit;
  dxBarButton15.Enabled := DataM.Operator_print;
end;


//
//  Кнопка выход
//
procedure Tall_invent_Form.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  Фильтрация
//
procedure Tall_invent_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  grid_invent.SetFocus;
end;


//
// Просмотр документов----------------------------------------------------------
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_invent_Form do
  begin
    if (DOC.RecordCount<>0) then
    begin
      try
        theForm := TinventoryForm.Create(Application);
        TinventoryForm(theForm).ID   := ID_DOC;
        TinventoryForm(theForm).N_ID := 0;
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
procedure Tall_invent_Form.BitBtn2Click(Sender: TObject);
begin
  grid_invent_v.DataController.Filter.Clear;
  grid_invent.SetFocus;
end;


//
//  Добавляем вручную
//
procedure Tall_invent_Form.ToolButton33Click(Sender: TObject);
begin
  DocNewManually_ActionExecute(Sender);
  grid_invent.SetFocus;
end;


//
//  Вводим вручную
//
procedure Tall_invent_Form.DocNewManually_ActionExecute(Sender: TObject);
begin
  new_doc(1);
end;


//
//  Добавялем со сканера
//
procedure Tall_invent_Form.ToolButton35Click(Sender: TObject);
begin
  DocNewScaner_ActionExecute(Sender);
  grid_invent.SetFocus;
end;


//
//  Добавялем со сканера
//
procedure Tall_invent_Form.DocNewScaner_ActionExecute(Sender: TObject);
begin
  new_doc(2);
end;


//
//  Открываем накладную по CTRL+ENTER
//
procedure Tall_invent_Form.ctrl_enterExecute(Sender: TObject);
begin
  if (doc.Active = true) and (doc.RecordCount > 0) and (doc.FieldByName('ID_DOC').AsInteger > 0) then
    view_doc(grid_invent_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


procedure Tall_invent_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Экспорт в Эксель
//
procedure Tall_invent_Form.ToolButton3Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_all_invent.xls';
     ExportGridToExcel(f, grid_invent, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog11.Execute then
  begin
     ExportGridToExcel(SaveDialog11.FileName, grid_invent, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog11.FileName), nil, nil, SW_RESTORE);
  end;
}
  grid_invent.SetFocus;
end;


//
//  Открываем накладную
//
procedure Tall_invent_Form.grid_invent_vDblClick(Sender: TObject);
begin
  view_doc(grid_invent_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//Создание документа-----------------------------------------------------------
procedure Tall_invent_Form.new_doc(new_type: integer);
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
      MessageBox(Handle, 'Формировать инвентаризацию можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

  DM.OraSession.Savepoint('Begin_Doc_Edit');

  //со сканера
	if (new_type=2) then
  begin
  	readscaner();
    dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt',dm.Scan, dm.OraSQL_Scan);
    deletefile(path+'scan/1.txt');
    if alert_str <> '' then
       MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);
	end;

  // Открываем форму с данными
  try
   	theForm := TinventoryForm.Create(Application);
    TinventoryForm(theForm).department_index  := strtoint(DataM.department_id);
    TinventoryForm(theForm).department_name   := DataM.department_name;

    if theForm.ShowModal = mrOk then
    begin
	     try
	        SP_DOC_DATE      := DataM.GlobalDate;
	        SP_ID_DOC_TYPE   := 5;
	        SP_COMMENTS      := TinventoryForm(theForm).EditComments.Text;
	        SP_OPERATOR_NAME := DataM.Operator_NAME;
	        SP_OTDEL         := strtoint(DataM.department_id);

          OraStoredProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
          OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
          OraStoredProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
          OraStoredProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
          OraStoredProc.Execute;

          err_msg:=OraStoredProc.ParamByName('out_message').AsString;

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
  	end;
  finally
     theForm.Free;
  end;
end;
//------------------------------------------------------------------------------


procedure Tall_invent_Form.ToolButton1Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount<>0) then
  try
    MakeSortForPrint(TOraQuery(grid_invent_v.DataController.DataSet),grid_invent_v);
    grid_invent_v.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\invent_list.fr3');
    frxReport1.PrepareReport;
    Memo1       := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text  := 'Накладные инвентаризации за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

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
    grid_invent_v.DataController.DataSet.EnableControls;
  except
    on E: Exception do
    begin
      grid_invent_v.DataController.DataSet.DisableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


procedure Tall_invent_Form.ToolButton39Click(Sender: TObject);
begin
  if (doc.RecordCount <> 0) then
  try
    frxReport1.LoadFromFile(path+'raports\invent.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


//
//  Нажимаем ENTER на № документа
//
procedure Tall_invent_Form.NumberDocKeyDown(Sender: TObject; var Key: Word;
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
procedure Tall_invent_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
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
procedure Tall_invent_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Восстанавливаем таблицу
//
procedure Tall_invent_Form.ToolButton5Click(Sender: TObject);
var i, j: integer;
begin
  grid_invent_v.DataController.Filter.Clear;
  j := grid_invent_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_invent_v.SortedItems[0].SortOrder := soNone;
  end;
end;


// Скопируем значение ячейкт в буфер
procedure Tall_invent_Form.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_invent_v.DataController, 1);
end;
// Скопируем значение футера в буфер
procedure Tall_invent_Form.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_invent_v.DataController, 0);
end;


end.
