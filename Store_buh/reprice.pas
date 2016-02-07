unit reprice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Ora, MemDS, DBAccess, ActnList, Menus,
  ComCtrls, ToolWin, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, PI_library,
  useful_functions, GridsEh,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCalendar, cxCurrencyEdit, dxBar, dxBarExtItems, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, frxExportRTF, frxExportText, frxExportXLS,
  frxExportPDF, frxClass, frxExportHTML, frxDBSet, cxGridExportLink, ShellAPI,
  cxContainer, cxMaskEdit, cxDropDownEdit;

type
  Treprice_form = class(TForm)
    Panel5: TPanel;
    Panel8: TPanel;
    Panel2: TPanel;
    Panel10: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    Delete_Button: TToolButton;
    ToolButton6: TToolButton;
    PrintDoc_Button: TToolButton;
    ToolButton4: TToolButton;
    PrintAll_Button: TToolButton;
    StatusBar: TStatusBar;
    ActionList1: TActionList;
    DocPrint_Action: TAction;
    ListPrintAction: TAction;
    DocEdit_Action: TAction;
    DocDelete_Action: TAction;
    DOC_DS: TOraDataSource;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    OraQuery: TOraQuery;
    Panel1: TPanel;
    Panel4: TPanel;
    Close_BitBtn: TcxButton;
    Panel3: TPanel;
    Label1: TLabel;
    bm_reprice: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_reprice: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NumberDoc: TLabeledEdit;
    DateTrue: TCheckBox;
    Label2: TLabel;
    OraStoredProc: TOraStoredProc;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxRTFExport1: TfrxRTFExport;
    DOC: TOraQuery;
    aFilterOff: TAction;
    grid_reprice: TcxGrid;
    grid_reprice_v: TcxGridDBTableView;
    gr_DOC_NUMBER: TcxGridDBColumn;
    gr_DOC_DATE: TcxGridDBColumn;
    gr_QUANTITY_ALL: TcxGridDBColumn;
    gr_SUM_PRICE_OLD: TcxGridDBColumn;
    gr_SUM_PRICE_NEW: TcxGridDBColumn;
    gr_SUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    gr_COMMENTS: TcxGridDBColumn;
    grid_reprice_vColumn1: TcxGridDBColumn;
    grid_reprice_vColumn2: TcxGridDBColumn;
    grid_reprice_l: TcxGridLevel;
    DOCID_DOC: TFloatField;
    DOCDOC_NUMBER: TFloatField;
    DOCID_CLIENT: TIntegerField;
    DOCID_DEPARTMENTS: TIntegerField;
    DOCOPERATOR_NAME: TStringField;
    DOCDOC_DATE: TDateTimeField;
    DOCDOC_DATE_REAL: TDateTimeField;
    DOCNUMBER_FULL: TStringField;
    DOCCOMMENTS: TStringField;
    DOCNDS: TIntegerField;
    DOCDISCOUNT: TIntegerField;
    DOCID_DOC_TYPE: TFloatField;
    DOCDOC_NUMBER_ADD: TStringField;
    DOCID_COMPANY: TFloatField;
    DOCID_BANC: TFloatField;
    DOCTTYPE_NAME: TStringField;
    DOCREG_SVID_PRINT: TIntegerField;
    DOCTTYPE: TIntegerField;
    DOCAGREEMENT: TStringField;
    DOCID_CLIENTS: TIntegerField;
    DOCREG_SVID: TStringField;
    DOCNICK: TStringField;
    DOCFIO: TStringField;
    DOCINN: TStringField;
    DOCKPP: TStringField;
    DOCOKATO: TStringField;
    DOCADDRESS: TStringField;
    DOCBANK: TStringField;
    DOCPHONE: TStringField;
    DOCBUH_DOC_TYPE_NAME: TStringField;
    DOCCOMPANY_NAME: TStringField;
    DOCBANC_NAME: TStringField;
    DOCSUM_PRICE_OLD: TFloatField;
    DOCSUM_PRICE_NEW: TFloatField;
    DOCQUANTITY_ALL: TFloatField;
    DOCSUM_PRICE_DIFFERENCE: TFloatField;
    DOCPRICE_ALL: TFloatField;
    DOC_DATAID_DOC_TYPE: TFloatField;
    DOC_DATAID_DOC_DATA: TFloatField;
    DOC_DATAID_DOC: TFloatField;
    DOC_DATAQUANTITY: TFloatField;
    DOC_DATAPRICE: TFloatField;
    DOC_DATAPRICE_OLD: TFloatField;
    DOC_DATAGTD: TStringField;
    DOC_DATAF_NAME_RU: TStringField;
    DOC_DATAN_ID: TFloatField;
    DOC_DATALEN: TIntegerField;
    DOC_DATAPACK: TIntegerField;
    DOC_DATACOL_ID: TFloatField;
    DOC_DATACOLOUR: TStringField;
    DOC_DATAF_TYPE: TStringField;
    DOC_DATAF_SUB_TYPE: TStringField;
    DOC_DATAFT_ID: TFloatField;
    DOC_DATAFST_ID: TFloatField;
    DOC_DATACOUNTRY: TStringField;
    DOC_DATAC_ID: TFloatField;
    DOC_DATAH_CODE: TStringField;
    DOC_DATASPESIFICATION: TStringField;
    DOC_DATACODE: TStringField;
    DOC_DATAPRICE_DIFFERENCE: TFloatField;
    DOC_DATAPRICE_BEZ_NDS: TFloatField;
    DOC_DATASUMM_BEZ_NDS: TFloatField;
    DOC_DATASUMM_NDS: TFloatField;
    DOC_DATAFULL_NAME: TStringField;
    DOC_DATAPRICE_QUANTITY: TFloatField;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Delete_ButtonClick(Sender: TObject);
    procedure PrintDoc_ButtonClick(Sender: TObject);
    procedure PrintAll_ButtonClick(Sender: TObject);

    procedure Doc_FilterOn();
    procedure DocPrint_ActionExecute(Sender: TObject);
    procedure ListPrintActionExecute(Sender: TObject);
    procedure DocEdit_ActionExecute(Sender: TObject);
    procedure DocDelete_ActionExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NumberDocKeyPress(Sender: TObject; var Key: Char);
    procedure grid_reprice_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_reprice_vDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure DOCBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    path : string;
    department_index: integer;
    department_name: string;
    documenttype_id: integer;
    documenttype_name: string;
  end;

var
  reprice_form: Treprice_form;
  doc_SQL_beg : string;

implementation

uses dataM, Print_Type_Select, reprice_edit;

{$R *.dfm}


//
//  Создаем форму
//
procedure Treprice_form.FormCreate(Sender: TObject);
begin
//  StatusBar.Panels[0].Text:='  Дата работы со складом: ' + GlobalDate_FORMAT;
  path := ExtractFilePath(Application.ExeName);
  StatusBar.Panels[0].Text := '  Оператор: '+DataM.Operator_Name;
  Label1.Caption           := DataM.department_name +' :: Накладные переоценки';
  Doc_DateTimePicker1.Date := IncMonth(Date,-1);
  Doc_DateTimePicker2.Date := Date;

  PrintDoc_Button.Enabled  := Operator_print;
  PrintAll_Button.Enabled  := Operator_print;
  Delete_Button.Enabled    := Operator_delete;

  Doc_FilterOn();
end;

//
//  При показе формы восстанавливаем таблицу
//
procedure Treprice_form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AStoreKey     := 'Software\StarLight\StoreBuh_Reprice';
  ASaveViewName := 'storebuh_reprice';
  AOptions      := [];
  grid_reprice_v.RestoreFromRegistry(AStoreKey, False, False, AOptions, ASaveViewName);
end;


//
//  При закрытии формы сохраняем таблицу
//
procedure Treprice_form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  DOC_DATA.Close;
  DOC.Close;

  AStoreKey     := 'Software\StarLight\StoreBuh_Reprice';
  ASaveViewName := 'storebuh_reprice';
  AOptions      := [];
  grid_reprice_v.StoreToRegistry(AStoreKey, True, AOptions, ASaveViewName);
  Action        := caFree;
end;






//Фильтрация документов--------------------------------------------------------
procedure Treprice_form.Doc_FilterOn();
begin
	if ((DateTrue.Checked=false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
	then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
    try
    	screen.cursor:=crhourglass;
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

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := documenttype_id;

	    DOC.ParamByName('fio_').AsString  := '';
	    DOC.ParamByName('nick_').AsString := '';

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
//  Кнопка удаления
//
procedure Treprice_form.Delete_ButtonClick(Sender: TObject);
begin
  DocDelete_ActionExecute(Sender);
end;


procedure Treprice_form.DOCBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Удаление выделенных накладных
//
procedure Treprice_form.DocDelete_ActionExecute(Sender: TObject);
var i: integer;
begin
  if MessageDlg('Удалить выделенные документы?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    if (grid_reprice_v.DataController.DataSet.Active) then
    begin
    try
      screen.cursor := crhourglass;
      if (grid_reprice_v.Controller.SelectedRowCount > 0) then
      begin
        grid_reprice_v.DataController.DataSet.DisableControls;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin buh_pkg.delete_docs(:id_doc_); end;');

        for i := 0 to grid_reprice_v.Controller.SelectedRowCount-1 do
        begin
          DM.Q_SQL.ParamByName('id_doc_').AsInteger := grid_reprice_v.Controller.SelectedRows[i].Values[grid_reprice_v.GetColumnByFieldName('ID_DOC').Index];
          DM.Q_SQL.Execute;
        end;

        grid_reprice_v.DataController.DataSet.Refresh;
        grid_reprice_v.DataController.DataSet.EnableControls;
        screen.cursor := crdefault;
      End;

    except
      on E: Exception do
        begin
          grid_reprice_v.DataController.DataSet.EnableControls;
          screen.cursor:=crdefault;
          MessageBox(NULL, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
    end;
    end;
  end;
end;


//
//  Кнопка показать
//
procedure Treprice_form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
end;


//
//  Кнопка выход
//
procedure Treprice_form.Close_BitBtnClick(Sender: TObject);
begin
  Close;
end;


//
//  По ENTER включаем фильтр на дате 1
//
procedure Treprice_form.Doc_DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  По ENTER включаем фильтр на дате 2
//
procedure Treprice_form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  По ENTER включаем фильтр на № документа
//
procedure Treprice_form.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Проверяем на номера  № документа
//
procedure Treprice_form.NumberDocKeyPress(Sender: TObject; var Key: Char);
begin
  AllowOnlyNumber(Key);
end;


//
//  На ENTER в гриде открываем редактирование
//
procedure Treprice_form.grid_reprice_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case key of
    VK_RETURN:
    DocEdit_ActionExecute(Sender);
  end;
end;


procedure Treprice_form.grid_reprice_vDblClick(Sender: TObject);
begin
  DocEdit_ActionExecute(Sender);
end;


//
//----------Редактирование документа---------------------------
//
procedure Treprice_form.DocEdit_ActionExecute(Sender: TObject);
var id_root: integer;
    theForm: TForm;
begin

  if (DataM.Operator_edit = FALSE) then
     MessageBox(Handle, 'У Вас нет прав для редактирования документа!', 'Внимание!', MB_ICONSTOP)
  else
  begin
    if (DOC.RecordCount = 0) then
       MessageBox(Handle, 'Не выбран ни один документ!', 'Внимание!', MB_ICONSTOP)
    else
    begin
      DM.OraSession.Savepoint('Begin_Doc_Edit');
      theForm := Treprice_edit_form.Create(Application);
      Treprice_edit_form(theForm).id:=doc.FieldByName('id_doc').AsInteger;

      if theForm.ShowModal = mrOk then
      begin
        try
          id_root := DOC.FieldByName('ID_DOC').AsInteger;

          Treprice_edit_form(theForm).DocNumberEdit.PostEditValue;
          Treprice_edit_form(theForm).DOC_DATE.PostEditValue;
          OraQuery.SQL.Clear;
          OraQuery.SQL.Add('begin buh_pkg.update_doc(:date_, :DISCOUNTEdit_, :NDSEdit_, :DocNumberEdit_, :DocNumberAddEdit_, :COMMENTSEdit_, :id_client_, :id_, :BEZNDSMINUS_, :BEZNDS_); end;');
          OraQuery.ParamByName('date_').Value             := Treprice_edit_form(theForm).DOC_DATE.EditValue;
          OraQuery.ParamByName('DISCOUNTEdit_').Value     := 0;// StrToInt(TDocNewForm(theForm).DISCOUNTEdit.Text);
          OraQuery.ParamByName('NDSEdit_').Value          := 0; //TDocNewForm(theForm).NDSEdit.text;
          OraQuery.ParamByName('DocNumberEdit_').Value    := Treprice_edit_form(theForm).DocNumberEdit.EditValue;
          OraQuery.ParamByName('DocNumberAddEdit_').Value := Treprice_edit_form(theForm).DocNumberAddEdit.text;
          OraQuery.ParamByName('COMMENTSEdit_').Value     := Treprice_edit_form(theForm).COMMENTSEdit.Text;
          OraQuery.ParamByName('id_client_').Value        := doc.FieldByName('ID_CLIENT').AsInteger;
          OraQuery.ParamByName('id_').Value               := id_root;
          OraQuery.ParamByName('BEZNDSMINUS_').Value      := 0;
          OraQuery.ParamByName('BEZNDS_').Value           := 0;

          OraQuery.ExecSQL;
          DM.OraSession.Commit;

          doc.Refresh;
          DOC.Locate('ID_DOC', id_root, []);
          ShowMessage('Операция прошла успешно!');

        except
        End;

      end
      else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        exit;
      end;
      theForm.Free;
    end;
  end;
end;


//
//  Очистить фильтр
//
procedure Treprice_form.BitBtn2Click(Sender: TObject);
begin
  grid_reprice_v.DataController.Filter.Clear;
  grid_reprice.SetFocus;
end;


//
//  Экспорт в Эксель
//
procedure Treprice_form.dxBarButton15Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_reprice, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName+'.xls'), nil, nil, SW_RESTORE);
  end;
  grid_reprice.SetFocus;
end;


//
// Кнопка печати документа
//
procedure Treprice_form.PrintDoc_ButtonClick(Sender: TObject);
begin
  if (doc.RecordCount <> 0) then
  begin
    DocPrint_ActionExecute(Sender)
  end
  else
  showmessage('Вы не выбрали документ!');
end;

// Печать документа
procedure Treprice_form.DocPrint_ActionExecute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
    try
      frxReport1.LoadFromFile(path+'raports\doc_reprice.fr3');
      frxReport1.PrepareReport;

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
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
end;


//
// Кнопка печати списка
//
procedure Treprice_form.PrintAll_ButtonClick(Sender: TObject);
begin
  ListPrintActionExecute(Sender);
end;

// Печать списка
procedure Treprice_form.ListPrintActionExecute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  try
    grid_reprice_v.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\doc_list_reprice.fr3');
    frxReport1.PrepareReport;
    Memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Документы за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);
    Memo1 := frxReport1.FindObject('Memo3') as TfrxMemoView;
    Memo1.Text := DataM.department_name;

    Memo1 := frxReport1.FindObject('Memo2') as TfrxMemoView;
    if DM.id_office = 1 then
      Memo1.Text := 'ООО «СТАРЛАЙТ»';
    if DM.id_office = 2 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Поволжье Кэш энд Кэрри»';
    if DM.id_office = 3 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Казань»';


    frxReport1.ShowReport;
  except
    on E: Exception do
    begin
      grid_reprice_v.DataController.DataSet.EnableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


end.
