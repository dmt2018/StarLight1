unit report_tovarn_nacls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, ComCtrls, ExtCtrls, DB, Ora,
  MemDS, DBAccess, DASQLMonitor, OraSQLMonitor, GridsEh, Registry, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCalendar, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ImgList, ActnList,
  cxGridExportLink, ShellApi, PI_Library_reg, DBGridEhGrouping, frxClass,
  frxDBSet, frxExportHTML, frxExportText, frxExportRTF, frxExportXLS,
  frxExportPDF;

type
  TReportTovarnNaclsForm = class(TForm)
    Panel14: TPanel;
    Panel15: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cds_docs: TOraQuery;
    docs_ds: TOraDataSource;
    Panel1: TPanel;
    DBGridEh: TDBGridEh;
    Panel3: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    N_ID_INFO: TOraQuery;
    N_ID_INFO_ds: TOraDataSource;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Panel13: TPanel;
    Close_BitBtn: TcxButton;
    grid_docs: TcxGrid;
    grid_docs_v: TcxGridDBBandedTableView;
    d_DOC_NUMBER: TcxGridDBBandedColumn;
    d_INV_ID: TcxGridDBBandedColumn;
    d_DOC_DATE: TcxGridDBBandedColumn;
    _d_DOC_DATE_REAL: TcxGridDBBandedColumn;
    d_QUANTITY: TcxGridDBBandedColumn;
    d_PRICE: TcxGridDBBandedColumn;
    d_COMMENTS: TcxGridDBBandedColumn;
    grid_docs_l: TcxGridLevel;
    d_QUANTITY_PRICE: TcxGridDBBandedColumn;
    d_NICK: TcxGridDBBandedColumn;
    PRICE_new: TcxGridDBBandedColumn;
    price_difference: TcxGridDBBandedColumn;
    TabSheet7: TTabSheet;
    d_QUANTITY_real: TcxGridDBBandedColumn;
    d_store_type_name: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_prihod: TcxStyle;
    _d_ID_DOC_TYPE: TcxGridDBBandedColumn;
    d_p_percent: TcxGridDBBandedColumn;
    al_report: TActionList;
    aAdd: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExport: TAction;
    imglist_report: TImageList;
    SaveDialog13: TSaveDialog;
    ppm_report: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    mm_delete: TMenuItem;
    Excel1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    aRefresh: TAction;
    _d_ID_DOC: TcxGridDBBandedColumn;
    st_reprice: TcxStyle;
    d_store_type_n: TcxGridDBBandedColumn;
    _d_store_type_n: TcxGridDBBandedColumn;
    N8: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    OraStoredProc: TOraStoredProc;
    d_operator_name: TcxGridDBBandedColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    d_ID_OFFICE: TcxGridDBBandedColumn;
    d_brief: TcxGridDBBandedColumn;
    Label1: TLabel;
    N20: TMenuItem;
    N21: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    frxReportTovarMove: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxDBNom: TfrxDBDataset;
    frxDBDocs: TfrxDBDataset;
    mnRaport: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl1Change(Sender: TObject);
    procedure grid_docs_vDblClick(Sender: TObject);
    procedure DBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure grid_docs_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aExportExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ppm_reportPopup(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure d_store_type_nCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure ShowHistory(param_: integer; header_: String);
    procedure cds_docsBeforeOpen(DataSet: TDataSet);
    procedure aDeleteExecute(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure mnRaportClick(Sender: TObject);
  private
    path: string;
    { Private declarations }
  public
    DOC_DATE1: tdate;
    DOC_DATE2: tdate;
    DateTrue: integer;
    sql: string;
    N_ID: integer;
    { Public declarations }
  end;

var
  ReportTovarnNaclsForm: TReportTovarnNaclsForm;

implementation

uses DataM, Store_View_Filtr, all_nacl, nacl_new,
  report_tovarn_full, prihod, spisanie, utsenka, inventory, reprice,
  all_prih, all_spis, all_utsen, all_invent, all_reprice, UHistory;

{$R *.dfm}


//
//  На открытии формы достаем данные
//
procedure TReportTovarnNaclsForm.FormShow(Sender: TObject);
begin
  try
    screen.cursor := crhourglass;
    N_ID_INFO.ParamByName('N_ID').AsInteger := N_ID;
    N_ID_INFO.Open;
    grid_docs_v.Bands.Items[0].Caption := N_ID_INFO.FieldByName('COMPILED_NAME_OTDEL').AsString;

    cds_docs.Close;
    cds_docs.ParamByName('DOC_DATE1').AsDate := DOC_DATE1;
    cds_docs.ParamByName('DOC_DATE2').AsDate := DOC_DATE2;
    cds_docs.ParamByName('N_ID').AsInteger := N_ID;
    cds_docs.Open;
  except on E: Exception do
    begin
       screen.cursor := crdefault;
       MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;

  d_brief.Visible := not (GetOfficeID = DM.id_office);

  aAdd.Enabled := DataM.Operator_edit;
  aEdit.Enabled := DataM.Operator_edit;
  aDelete.Enabled := DataM.Operator_delete;
  aExport.Enabled := DataM.Operator_print;

  screen.cursor := crdefault;
  PageControl1.ActivePageIndex := 0;
  PageControl1Change(PageControl1);
end;


//
//  Закрытие формы
//
procedure TReportTovarnNaclsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  N_ID_INFO.Close;
  cds_docs.Close;
end;


//
// Отрисовка верхнего грида
//
procedure TReportTovarnNaclsForm.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (State = [gdSelected]	) then
	begin
      DBGridEh.Canvas.Brush.Color:=clBtnFace;
 	    DBGridEh.Canvas.Font.Color:=clBlack;
 	    DBGridEh.Canvas.FillRect(Rect);
  		DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;


//
// Просмотр документов-----------------------------------------------------------
//
procedure view_doc(ID_DOC:integer; ID_DOC_TYPE:integer; n_id: integer);
var theForm: TForm;
begin
  try
    if (ID_DOC_TYPE=1) then
    begin
      theForm := TprihodForm.Create(Application);
      TprihodForm(theForm).ID   := ID_DOC;
      TprihodForm(theForm).N_ID := N_ID;
      theForm.ShowModal;
    end;

    if (ID_DOC_TYPE=2) then
    begin
      theForm := TspisanieForm.Create(Application);
      TspisanieForm(theForm).ID   := ID_DOC;
      TspisanieForm(theForm).N_ID := N_ID;
      theForm.ShowModal;
    end;

    if (ID_DOC_TYPE=3) then
    begin
      theForm := TutsenkaForm.Create(Application);
      TutsenkaForm(theForm).ID    := ID_DOC;
      TutsenkaForm(theForm).N_ID  := N_ID;
      theForm.ShowModal;
    end;

    if (ID_DOC_TYPE=4) then
    begin
      theForm := TnaclnewForm.Create(Application);
      TnaclnewForm(theForm).ID    := ID_DOC;
      TnaclnewForm(theForm).N_ID  := N_ID;
      theForm.ShowModal;
    end;

    if (ID_DOC_TYPE=5) then
    begin
      theForm := TinventoryForm.Create(Application);
      TinventoryForm(theForm).ID    := ID_DOC;
      TinventoryForm(theForm).N_ID  := N_ID;
      theForm.ShowModal;
    end;

    if (ID_DOC_TYPE=6) then
    begin
      theForm := TrepriceForm.Create(Application);
      TrepriceForm(theForm).ID    := ID_DOC;
      TrepriceForm(theForm).N_ID  := N_ID;
      theForm.ShowModal;
    end;

  finally
    theForm.Free;
  end;
end;


//
//  Просмотр накладной
//
procedure TReportTovarnNaclsForm.grid_docs_vDblClick(Sender: TObject);
begin
  if (cds_docs.RecordCount<>0) then
    view_doc(cds_docs.FieldByName('ID_DOC').AsInteger, cds_docs.FieldByName('ID_DOC_TYPE').AsInteger, cds_docs.FieldByName('n_id').AsInteger);
end;


//
//  Смена вида
//
procedure TReportTovarnNaclsForm.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePage.Tag < 7) then
  begin
    screen.cursor                               := crhourglass;
    grid_docs_v.DataController.DataSet.Filter   := ' ID_DOC_TYPE=' + IntToStr(PageControl1.ActivePage.Tag);
    grid_docs_v.DataController.DataSet.Filtered := true;
    screen.cursor                               := crdefault;

    d_INV_ID.Visible          := false;
    PRICE_new.Visible         := false;
    price_difference.Visible  := false;
    d_NICK.Visible            := false;
    d_QUANTITY_real.Visible   := false;
    d_store_type_name.Visible := false;
    d_p_percent.Visible       := false;
    price_difference.Summary.FooterKind := skSum;
    price_difference.Summary.FooterFormat := '0.00';

    if (PageControl1.ActivePage.Tag = 1) then
      d_INV_ID.Visible          := true;
    if (PageControl1.ActivePage.Tag = 4) then
    begin
      d_p_percent.Visible       := true;
      d_NICK.Visible            := true;
    end;
    if (PageControl1.ActivePage.Tag = 6) then
    begin
      d_QUANTITY_PRICE.Visible  := false;
      PRICE_new.Visible         := true;
      price_difference.Visible  := true;
    end;
    if (PageControl1.ActivePage.Tag = 3) then
    begin
      d_QUANTITY_PRICE.Visible  := false;
      price_difference.Visible  := true;
    end;
  end;

  if (PageControl1.ActivePage.Tag = 0) then
  begin
    screen.cursor                               := crhourglass;
    grid_docs_v.DataController.DataSet.Filtered := false;
    d_INV_ID.Visible                            := true;
    PRICE_new.Visible                           := true;
    price_difference.Visible                    := true;
    d_NICK.Visible                              := true;
    d_QUANTITY_real.Visible                     := true;
    d_store_type_name.Visible                   := true;
    d_QUANTITY_PRICE.Visible                    := true;
    d_p_percent.Visible                         := true;
    screen.cursor                               := crdefault;
    price_difference.Summary.FooterKind         := skNone;
    price_difference.Summary.FooterFormat       := '';
  end;
end;


//
// Отрисовка грида
//
procedure TReportTovarnNaclsForm.grid_docs_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  v_q, v_qn : variant;
begin
  if (PageControl1.ActivePage.Tag = 0) and (grid_docs_v.DataController.DataSet.RecordCount > 0) and (grid_docs_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName <> 'store_type_n') then
  begin
    v_q := grid_docs_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_docs_v.GetColumnByFieldName('ID_DOC_TYPE').Index
                );
    if (AViewInfo.Selected = false) and (v_q = 1) then
      ACanvas.Brush.Color := st_prihod.Color;

    if (AViewInfo.Selected = false) and (v_q = 6) then
      ACanvas.Brush.Color := st_reprice.Color;

    if (v_q <> 6) and (v_q <> 1) and (grid_docs_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'price_difference') then
      begin
        ACanvas.Font.Color  := clWhite;
        ACanvas.Brush.Color := clWhite;
      end;
  end;
end;


//
//  Вывод в Excel
//
procedure TReportTovarnNaclsForm.aExportExecute(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_result_dvizhenie.xls';
     ExportGridToExcel(f, grid_docs, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog13.Execute then
  begin
     ExportGridToExcel(SaveDialog13.FileName, grid_docs, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog13.FileName), nil, nil, SW_RESTORE);
  end;
}
  grid_docs.SetFocus;
end;


//
//  Приход
//
procedure TReportTovarnNaclsForm.N2Click(Sender: TObject);
begin
  try
    all_prih_Form := Tall_prih_Form.Create(Application);
    all_prih_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_prih_Form.Free;
  end;
end;


//
//  Продажи
//
procedure TReportTovarnNaclsForm.N3Click(Sender: TObject);
begin
  try
    all_nacl_Form := Tall_nacl_Form.Create(Application);
    all_nacl_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_nacl_Form.Free;
  end;
end;


//
//  Списание
//
procedure TReportTovarnNaclsForm.N4Click(Sender: TObject);
begin
  try
    all_spis_Form := Tall_spis_Form.Create(Application);
    all_spis_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_spis_Form.Free;
  end;
end;


//
// Уценка
//
procedure TReportTovarnNaclsForm.N5Click(Sender: TObject);
begin
  try
    all_utsen_Form := Tall_utsen_Form.Create(Application);
    all_utsen_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_utsen_Form.Free;
  end;
end;


//
// Инвентаризация
//
procedure TReportTovarnNaclsForm.N6Click(Sender: TObject);
begin
  try
    all_invent_Form := Tall_invent_Form.Create(Application);
    all_invent_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_invent_Form.Free;
  end;
end;


//
// Переоценка
//
procedure TReportTovarnNaclsForm.N7Click(Sender: TObject);
begin
  try
    all_reprice_Form := Tall_reprice_Form.Create(Application);
    all_reprice_Form.edit_q := true;
    all_reprice_Form.ShowModal;
    aRefresh.Execute;
  finally
    all_reprice_Form.Free;
  end;
end;


//
//  Приход
//
procedure TReportTovarnNaclsForm.N10Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_prih_Form := Tall_prih_Form.Create(Application);
      all_prih_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_prih_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_prih_Form.Free;
    end;
  end;
end;


//
//  Продажа
//
procedure TReportTovarnNaclsForm.N11Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_nacl_Form := Tall_nacl_Form.Create(Application);
      all_nacl_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_nacl_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_nacl_Form.Free;
    end;
  end;
end;


//
//  Списание
//
procedure TReportTovarnNaclsForm.N12Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_spis_Form := Tall_spis_Form.Create(Application);
      all_spis_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_spis_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_spis_Form.Free;
    end;
  end;
end;


//
//  Уценка
//
procedure TReportTovarnNaclsForm.N13Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_utsen_Form := Tall_utsen_Form.Create(Application);
      all_utsen_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_utsen_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_utsen_Form.Free;
    end;
  end;
end;


//
//  Инвентаризация
//
procedure TReportTovarnNaclsForm.N14Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_invent_Form := Tall_invent_Form.Create(Application);
      all_invent_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_invent_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_invent_Form.Free;
    end;
  end;
end;


//
//  Переоценка
//
procedure TReportTovarnNaclsForm.N15Click(Sender: TObject);
begin
  if grid_docs_v.DataController.DataSet.RecordCount > 0 then
  begin
    try
      all_reprice_Form := Tall_reprice_Form.Create(Application);
      all_reprice_Form.NumberDoc.Text := grid_docs_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString;
      all_reprice_Form.ShowModal;
      aRefresh.Execute;
    finally
      all_reprice_Form.Free;
    end;
  end;
end;



// Продажа
procedure TReportTovarnNaclsForm.N16Click(Sender: TObject);
begin
  ShowHistory(4,'Накладная продажи');
end;

// Списание
procedure TReportTovarnNaclsForm.N17Click(Sender: TObject);
begin
  ShowHistory(2,'Накладная списания');
end;

// Уценка
procedure TReportTovarnNaclsForm.N18Click(Sender: TObject);
begin
  ShowHistory(3,'Накладная уценки');
end;

// Переоценка
procedure TReportTovarnNaclsForm.N19Click(Sender: TObject);
begin
  ShowHistory(6,'Накладная переоценки');
end;

// Добавим накладную в историю (без правки склада)
procedure TReportTovarnNaclsForm.ShowHistory(param_: integer; header_: String);
var SP_DOC_DATE: tDateTime;
    SP_ID_DOC_TYPE: integer;
    SP_OTDEL: integer;
    SP_COMMENTS: string;
    SP_OPERATOR_NAME: string;
    err_msg: string;
    SP_CLIENT_CODE: integer;
begin
  try
     frmHistory := TfrmHistory.Create(Application);
     frmHistory.Panel11.Caption  := '  ' + department_name + ' :: ' + header_;
     frmHistory.department_index := StrToInt(DataM.department_id);
     frmHistory.store_type       := param_;

     frmHistory.de_date.EditValue := cds_docs.FieldByName('DOC_DATE').AsDateTime;
     frmHistory.grid_hst_vN_ID.DataBinding.AddToFilter(nil, foEqual, N_ID_INFO.FieldByName('N_ID').AsInteger);

     DM.OraSession.Savepoint('Begin_Doc_Edit');
     if (frmHistory.ShowModal = mrOk) then
     begin
       try
	        SP_DOC_DATE      := frmHistory.de_date.EditValue;
	        SP_ID_DOC_TYPE   := param_;
	        SP_COMMENTS      := frmHistory.EditComments.Text;
	        SP_OPERATOR_NAME := DataM.Operator_NAME;
	        SP_OTDEL         := strtoint(DataM.department_id);
          SP_CLIENT_CODE   := frmHistory.ClientChoos.Tag;

          OraStoredProc.ParamByName('SP_ID_CLIENT').Value       := SP_CLIENT_CODE;
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
            //MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
            aRefresh.Execute;
          end;

       except on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
       end;
     end
     else DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');

  finally
     frmHistory.Free;
  end;
end;



//
//  Прорисовка меню
//
procedure TReportTovarnNaclsForm.ppm_reportPopup(Sender: TObject);
begin

  N1.Enabled := DataM.Operator_edit;
  N9.Enabled := DataM.Operator_edit;
  N8.Enabled := DataM.Operator_admin;
  aDelete.Enabled := DataM.Operator_delete;
  Excel1.Enabled := DataM.Operator_print;

  if PageControl1.ActivePage.Tag > 0 then
  begin
    N2.Enabled := false;
    N3.Enabled := false;
    N4.Enabled := false;
    N5.Enabled := false;
    N6.Enabled := false;
    N7.Enabled := false;
    if PageControl1.ActivePage.Tag = 1 then N2.Enabled := true;
    if PageControl1.ActivePage.Tag = 4 then N3.Enabled := true;
    if PageControl1.ActivePage.Tag = 2 then N4.Enabled := true;
    if PageControl1.ActivePage.Tag = 3 then N5.Enabled := true;
    if PageControl1.ActivePage.Tag = 5 then N6.Enabled := true;
    if PageControl1.ActivePage.Tag = 6 then N7.Enabled := true;
  end
  else
  begin
    N2.Enabled := true;
    N3.Enabled := true;
    N4.Enabled := true;
    N5.Enabled := true;
    N6.Enabled := true;
    N7.Enabled := true;
  end;

  if grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 1 then N10.Enabled := true else N10.Enabled := false;
  if grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 4 then N11.Enabled := true else N11.Enabled := false;
  if grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 2 then N12.Enabled := true else N12.Enabled := false;
  if grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 3 then N13.Enabled := true else N13.Enabled := false;
  if grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 5 then N14.Enabled := true else N14.Enabled := false;

  if (grid_docs_v.DataController.DataSet.FieldByName('ID_DOC_TYPE').AsInteger = 6) then
  begin
    N15.Enabled       := true;
    aDelete.Enabled := DataM.Operator_admin;
  end
  else
  begin
    N15.Enabled       := false;
    aDelete.Enabled := false;
  end;

//  mm_delete.Enabled := true;
//  aDelete.Enabled := true;

end;


//
//  Обновить данные
//
procedure TReportTovarnNaclsForm.aRefreshExecute(Sender: TObject);
var id: integer;
begin
  id := grid_docs_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger;
  grid_docs_v.DataController.DataSet.Refresh;
  grid_docs_v.DataController.DataSet.Locate('ID_DOC',id,[]);
end;


procedure TReportTovarnNaclsForm.cds_docsBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  Удаляем данные
//
procedure TReportTovarnNaclsForm.aDeleteExecute(Sender: TObject);
begin
  try
    with DM.StorProc do
    begin
      Close;
      StoredProcName := 'STORE_PKG.delete_doc';
      Prepare;
      ParamByName('ID_DOC_').AsInteger := grid_docs_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger;
      Execute;
      aRefresh.Execute;
    end;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Не удалось удалить документ!', MB_ICONERROR);
  end;
end;

procedure TReportTovarnNaclsForm.d_store_type_nCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var v_q: variant;
begin
  if (grid_docs_v.DataController.DataSet.RecordCount > 0) then
  begin
    v_q := grid_docs_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_docs_v.GetColumnByFieldName('STORE_TYPE').Index
                );
    if (v_q = 2) then
      ACanvas.Brush.Color := TColor($00E8E6E6)
    else
      ACanvas.Brush.Color := clWhite;

    ACanvas.Font.Color := clBlack;
  end;
end;


// Скопируем значение ячейкт в буфер
procedure TReportTovarnNaclsForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_docs_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TReportTovarnNaclsForm.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_docs_v.DataController, 0);
end;


procedure TReportTovarnNaclsForm.mnRaportClick(Sender: TObject);
begin
  if (cds_docs.RecordCount<>0) then
  try
    cds_docs.DisableControls;
    frxReportTovarMove.LoadFromFile(path+'raports\report_tovar.fr3');
    frxReportTovarMove.PrepareReport;
    frxReportTovarMove.ShowReport;
    cds_docs.EnableControls;
  except
     on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
  grid_docs.SetFocus;
end;

end.
