unit all_reprice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, ToolWin, StdCtrls, Buttons, ExtCtrls,
  ActnList, DB, MemDS, DBAccess, Menus, DateUtils, PI_library,
  frxClass, Ora, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxCalendar, cxCurrencyEdit, cxGridLevel, PI_Library_reg, 
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxButtons, cxGridExportLink, dxBar, dxBarExtItems, frxExportRTF,
  frxExportText, frxExportXLS, frxExportPDF, frxExportHTML, frxDBSet, ShellAPI,
  cxContainer, cxMaskEdit, cxDropDownEdit;

type
  Tall_reprice_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    DateTrue: TCheckBox;
    CoolBar7: TCoolBar;
    ToolBar7: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    StatusBar: TStatusBar;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
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
    grid_reprice: TcxGrid;
    grid_reprice_v: TcxGridDBTableView;
    gr_DOC_NUMBER: TcxGridDBColumn;
    gr_DOC_DATE: TcxGridDBColumn;
    gr_QUANTITY_ALL: TcxGridDBColumn;
    grid_reprice_l: TcxGridLevel;
    gr_SUM_PRICE_OLD: TcxGridDBColumn;
    gr_SUM_PRICE_NEW: TcxGridDBColumn;
    gr_SUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    gr_COMMENTS: TcxGridDBColumn;
    grid_reprice_vColumn1: TcxGridDBColumn;
    grid_reprice_vColumn2: TcxGridDBColumn;
    SaveDialog15: TSaveDialog;
    dxBarDockControl1: TdxBarDockControl;
    bm_reprice: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_reprice: TdxBarPopupMenu;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    tlb_add: TToolButton;
    ToolButton7: TToolButton;
    gr_operator_name: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grid_reprice_vid_office: TcxGridDBColumn;
    grid_reprice_vbrief: TcxGridDBColumn;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    mnLoadFooter: TdxBarButton;
    mnLoadCell: TdxBarButton;
    frxRTFExport1: TfrxRTFExport;
    grid_reprice_vsum_quantity: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);


    procedure Doc_FilterOn();
    procedure BitBtn2Click(Sender: TObject);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure grid_reprice_vDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton5Click(Sender: TObject);
    procedure tlb_addClick(Sender: TObject);
    procedure DocNewManually_ActionExecute(Sender: TObject);

    procedure new_doc(new_type: integer);
    procedure docBeforeOpen(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    path: string;
    { Private declarations }
  public
    edit_q: boolean;
    { Public declarations }
  end;

var
  all_reprice_Form: Tall_reprice_Form;

implementation

uses global_date, nacl_new, spisanie, global, dataM, all_utsen, reprice;

{$R *.dfm}


//
//  Создаем форму
//
procedure Tall_reprice_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text := '  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text := '  Оператор: '+DataM.Operator_Name;
  Label1.Caption           := DataM.department_name +' :: Накладные переоценки';
  Doc_DateTimePicker1.Date := IncDay(Date,0);
  Doc_DateTimePicker2.Date := Date;
  Doc_FilterOn();
end;


//
//  Фильтрация документов-------------------------------------------------------
//
procedure Tall_reprice_Form.Doc_FilterOn();
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
  	    DOC.ParamByName('DOC_DATE1_').AsDate  := Doc_DateTimePicker1.Date;
    	  DOC.ParamByName('DOC_DATE2_').AsDate  := Doc_DateTimePicker2.Date;
    	end
      else
      begin
  	    DOC.ParamByName('DOC_DATE1_').AsDate  := Now()-365;
    	  DOC.ParamByName('DOC_DATE2_').AsDate  := Now();
    	end;

  	  DOC.ParamByName('ID_DOC_TYPE_').Value   := 6;
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
procedure Tall_reprice_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Reprice_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_reprice';
  grid_reprice_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  При показе формы восстанавливаем таблицу
//
procedure Tall_reprice_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Reprice_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_reprice';
  grid_reprice_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  tlb_add.Visible := DataM.Operator_admin;
  tlb_add.Enabled := DataM.Operator_edit;

  grid_reprice_vbrief.Visible := not (GetOfficeID = DM.id_office);

  ToolButton13.Enabled := DataM.Operator_print;
  ToolButton1.Enabled := DataM.Operator_print;
  ToolButton2.Enabled := DataM.Operator_print;

  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  DocNewManually_Action.Enabled := DataM.Operator_edit;
  dxBarButton15.Enabled := DataM.Operator_print;
end;


//
//  Кнопка выход
//
procedure Tall_reprice_Form.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  Фильтрация
//
procedure Tall_reprice_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  grid_reprice.SetFocus;
end;


//
// Просмотр документов----------------------------------------------------------
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_reprice_Form do
    if (DOC.RecordCount<>0) then
    begin
      theForm := TrepriceForm.Create(Application);
      try
        TrepriceForm(theForm).ID    := ID_DOC;
        TrepriceForm(theForm).N_ID  := 0;
        TrepriceForm(theForm).de_reprice.Visible    := false;
        TrepriceForm(theForm).Label1.Visible        := false;
        theForm.ShowModal;
      finally
        theForm.Free;
      end;
    end;
end;
//------------------------------------------------------------------------------


//
//  Очистить фильтр
//
procedure Tall_reprice_Form.BitBtn2Click(Sender: TObject);
begin
  grid_reprice_v.DataController.Filter.Clear;
  grid_reprice.SetFocus;
end;


//
//  Печать документа
//
procedure Tall_reprice_Form.ToolButton13Click(Sender: TObject);
begin
  if (doc.RecordCount <> 0) then
  try
    frxReport1.LoadFromFile(path+'raports\reprice.fr3');
    frxReport1.PrepareReport;
    frxReport1.ShowReport;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;


//
//  Печать списка
//
procedure Tall_reprice_Form.ToolButton1Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount<>0) then
  try
    MakeSortForPrint(TOraQuery(grid_reprice_v.DataController.DataSet),grid_reprice_v);
    grid_reprice_v.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\reprice_list.fr3');
    frxReport1.PrepareReport;
    Memo1      := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Накладные переоценки за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

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
    grid_reprice_v.DataController.DataSet.EnableControls;
  except
    on E: Exception do
    begin
      grid_reprice_v.DataController.DataSet.DisableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
//  Открываем накладную по CTRL+ENTER
//
procedure Tall_reprice_Form.ctrl_enterExecute(Sender: TObject);
begin
  if (doc.Active = true) and (doc.RecordCount > 0) and (doc.FieldByName('ID_DOC').AsInteger > 0) then
    view_doc(grid_reprice_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


procedure Tall_reprice_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Открываем накладную
//
procedure Tall_reprice_Form.grid_reprice_vDblClick(Sender: TObject);
begin
  view_doc(grid_reprice_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//
//  Экспорт в Эксель
//
procedure Tall_reprice_Form.ToolButton2Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_reprice.xls';
     ExportGridToExcel(f, grid_reprice, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog15.Execute then
  begin
     ExportGridToExcel(SaveDialog15.FileName, grid_reprice, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog15.FileName), nil, nil, SW_RESTORE);
  end;
}
  grid_reprice.SetFocus;
end;


//
//  Нажимаем ENTER на дате 1
//
procedure Tall_reprice_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
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
procedure Tall_reprice_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
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
procedure Tall_reprice_Form.ToolButton5Click(Sender: TObject);
var i, j: integer;
begin
  grid_reprice_v.DataController.Filter.Clear;
  j := grid_reprice_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_reprice_v.SortedItems[0].SortOrder := soNone;
  end;
end;


//
//  Добавить
//
procedure Tall_reprice_Form.tlb_addClick(Sender: TObject);
begin
  DocNewManually_ActionExecute(Sender);
  grid_reprice.SetFocus;
end;


//
//  Добавить
//
procedure Tall_reprice_Form.DocNewManually_ActionExecute(Sender: TObject);
begin
  new_doc(1);
end;


//
// Создание документа-----------------------------------------------------------
//
procedure Tall_reprice_Form.new_doc(new_type: integer);
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
      MessageBox(Handle, 'Формировать продажи можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

  DM.OraSession.Savepoint('Begin_Doc_Edit');

  //со сканера
	if (new_type=2) then 
  begin
  	readscaner();
    SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt',dm.Scan, dm.OraSQL_Scan);
    if alert_str <> '' then
       MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);
	end;

  try
    // Открываем форму с данными
    theForm := TrepriceForm.Create(Application);
    TrepriceForm(theForm).department_index      := strtoint(DataM.department_id);
    TrepriceForm(theForm).department_name       := DataM.department_name;
    TrepriceForm(theForm).de_reprice.EditValue  := DataM.GlobalDate;
    TrepriceForm(theForm).de_reprice.Visible    := true;
    TrepriceForm(theForm).Label1.Visible        := true;
    TrepriceForm(theForm).edit_q                := edit_q;

    if theForm.ShowModal = mrOk then
    begin
       try
	        SP_DOC_DATE      := TrepriceForm(theForm).de_reprice.EditValue;
	        SP_ID_DOC_TYPE   := 6;
	        SP_COMMENTS      := TrepriceForm(theForm).EditComments.Text;
	        SP_OPERATOR_NAME := DataM.Operator_NAME;
	        SP_OTDEL         := strtoint(DataM.department_id);

          OraStoredProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
          OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
          OraStoredProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
          OraStoredProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
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


// Скопируем значение ячейкт в буфер
procedure Tall_reprice_Form.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_reprice_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure Tall_reprice_Form.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_reprice_v.DataController, 0);
end;


end.
