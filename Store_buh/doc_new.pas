unit doc_new;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ExtCtrls, DBCtrls, Grids, DBGridEh, StdCtrls, Buttons,
  ComCtrls, Mask, DB, DBCtrlsEh, Ora, MemDS, DBAccess, ToolWin, useful_functions,
  GridsEh, Menus, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxSpinEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, dxGDIPlusClasses,
  cxLookAndFeelPainters, cxButtons, cxGridExportLink, dxBar, dxBarExtItems,
  cxTextEdit, ShellApi, cxContainer, cxLabel, frxExportPDF, frxExportXLS,
  frxExportText, frxExportMail, frxExportCSV, frxExportRTF, frxClass,
  frxExportHTML, frxDBSet, cxMaskEdit, cxDropDownEdit, cxCalendar, IniFiles,
  cxCheckBox, pi_library;

type
  TDocNewForm = class(TForm)
    Panel2: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    ClientChoos: TLabel;
    Image1: TImage;
    DB_OPERATOR_NAME: TDBText;
    Label6: TLabel;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel_Edit: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    DOC: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    ActionList1: TActionList;
    New_pos: TAction;
    Change_prise: TAction;
    From_store: TAction;
    aSave: TAction;
    DBText4: TDBText;
    Label1: TLabel;
    NDSEdit: TEdit;
    DISCOUNTEdit: TEdit;
    COMMENTSEdit: TEdit;
    Label2: TLabel;
    DocNumberAddEdit: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    grid_buh_view: TcxGrid;
    grid_buh_view_v: TcxGridDBTableView;
    rp_CODE: TcxGridDBColumn;
    rp_H_CODE: TcxGridDBColumn;
    rp_f_type: TcxGridDBColumn;
    rp_F_SUB_TYPE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_COUNTRY: TcxGridDBColumn;
    rp_QUANTITY: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    rp_PRICE_QUANTITY: TcxGridDBColumn;
    rp_GTD: TcxGridDBColumn;
    grid_buh_view_l: TcxGridLevel;
    SaveDialog1: TSaveDialog;
    _rp_ID_DOC_DATA: TcxGridDBColumn;
    rp_PRICE_BEZ_NDS: TcxGridDBColumn;
    rp_SUMM_BEZ_NDS: TcxGridDBColumn;
    rp_SUMM_NDS: TcxGridDBColumn;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_edit: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    Panel3: TPanel;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    _rp_n_id: TcxGridDBColumn;
    dxBarStatic3: TdxBarStatic;
    tb_delete: TToolButton;
    ToolButton2: TToolButton;
    mn_gtd: TMenuItem;
    ToolButton1: TToolButton;
    tbb_gtd: TToolButton;
    pnl_newgtd: TPanel;
    cxLabel1: TcxLabel;
    te_newgtd: TcxTextEdit;
    Label7: TLabel;
    Label8: TLabel;
    ToolButton5: TToolButton;
    tbb_sync_price: TToolButton;
    tbb_showgtd: TToolButton;
    ToolButton8: TToolButton;
    tbb_print: TToolButton;
    frxReportNakl: TfrxReport;
    frxDB_DOC: TfrxDBDataset;
    frxDB_DOC_DATA: TfrxDBDataset;
    frxDBCompany: TfrxDBDataset;
    frxDBBank: TfrxDBDataset;
    frxDBAddess: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    OraQuery: TOraQuery;
    DBText6: TDBText;
    DocNumberEdit: TcxCurrencyEdit;
    DOC_DATE: TcxDateEdit;
    grid_buh_view_vID_DOC_TYPE: TcxGridDBColumn;
    grid_buh_view_vID_DOC: TcxGridDBColumn;
    grid_buh_view_vPRICE_OLD: TcxGridDBColumn;
    grid_buh_view_vF_NAME_RU: TcxGridDBColumn;
    grid_buh_view_vLEN: TcxGridDBColumn;
    grid_buh_view_vPACK: TcxGridDBColumn;
    grid_buh_view_vCOL_ID: TcxGridDBColumn;
    grid_buh_view_vCOLOUR: TcxGridDBColumn;
    grid_buh_view_vFT_ID: TcxGridDBColumn;
    grid_buh_view_vFST_ID: TcxGridDBColumn;
    grid_buh_view_vC_ID: TcxGridDBColumn;
    grid_buh_view_vSPESIFICATION: TcxGridDBColumn;
    grid_buh_view_vPRICE_DIFFERENCE: TcxGridDBColumn;
    grid_buh_view_vFULL_NAME: TcxGridDBColumn;
    grid_buh_view_vBUH_CODE: TcxGridDBColumn;
    rp_COUNTRY_GTD: TcxGridDBColumn;
    grid_buh_view_vNSI_NAME: TcxGridDBColumn;
    grid_buh_view_vUNIT_CODE: TcxGridDBColumn;
    grid_buh_view_vSYMBOL_NATIONAL: TcxGridDBColumn;
    chbSetOldNumber: TCheckBox;
    tbb_cargo: TToolButton;
    ToolButton9: TToolButton;
    ToolButton6: TToolButton;
    stCargo: TcxStyle;
    stEqNoms: TcxStyle;
    grid_buh_view_vNN: TcxGridDBColumn;
    grid_buh_view_vSRC_PRICE: TcxGridDBColumn;
    grid_buh_view_vPPP: TcxGridDBColumn;
    grid_buh_view_vSTART_PRICE: TcxGridDBColumn;
    chbMinusNDS: TCheckBox;
    chbWithoutNDS: TCheckBox;
    priznak: TcxGridDBColumn;
    stSpec: TcxStyle;
    chbSpecDiscont: TCheckBox;
    DOC_DATAID_DOC_TYPE: TFloatField;
    DOC_DATAID_DOC_DATA: TFloatField;
    DOC_DATAID_DOC: TFloatField;
    DOC_DATAQUANTITY: TFloatField;
    DOC_DATAPRICE: TFloatField;
    DOC_DATASRC_PRICE: TFloatField;
    DOC_DATASTART_PRICE: TFloatField;
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
    DOC_DATABUH_CODE: TStringField;
    DOC_DATACOMPILED_NAME_OTDEL: TStringField;
    DOC_DATACOUNTRY_GTD: TStringField;
    DOC_DATANSI_NAME: TStringField;
    DOC_DATAUNIT_CODE: TIntegerField;
    DOC_DATASYMBOL_NATIONAL: TStringField;
    DOC_DATANN: TFloatField;
    DOC_DATAPPP: TFloatField;
    DOC_DATABEZNDSMINUS: TIntegerField;
    DOC_DATANDS: TIntegerField;
    DOC_DATABEZNDS: TIntegerField;
    DOC_DATASPEC_PRICE: TIntegerField;
    DOC_DATAP2: TStringField;
    procedure ClientChoosClick(Sender: TObject);
    procedure NDSEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);


    procedure Initialize();  //инициализация формы
    procedure Edit(id: integer); //инициализация редактирования ID
    procedure View(id: integer);
    procedure New_posExecute(Sender: TObject);
    procedure Change_priseExecute(Sender: TObject);
    procedure From_storeExecute(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure grid_buh_view_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tb_deleteClick(Sender: TObject);
    procedure mn_gtdClick(Sender: TObject);
    procedure tbb_gtdClick(Sender: TObject);
    procedure te_newgtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbb_sync_priceClick(Sender: TObject);
    procedure tbb_showgtdClick(Sender: TObject);
    procedure tbb_printClick(Sender: TObject);
    function frxReportNaklUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure DOC_DATEChange(Sender: TObject);
    procedure DocNumberAddEditChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DocNumberEditPropertiesChange(Sender: TObject);
    procedure tbb_cargoClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure grid_buh_view_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chbSpecDiscontClick(Sender: TObject);
    procedure FormCreate(Sender: TObject); //инициализация просмотра ID


  private
    cargo_default: integer;
    { Private declarations }
  public
    { Public declarations }
    hcode_, gtd_, doctype_name, path: string;
    id, doctype_id: integer;
  end;

var
  DocNewForm: TDocNewForm;
  spec_discont : integer;

implementation

{$R *.dfm}
uses Client_Chooser, DataM, Select_Doc, edit_list_f, Change_Prices, global, Change_Country, doc_view,
  Gtd, print_type_select;



//-----инициализация формы---------------------
procedure TDocNewForm.Initialize();
begin
  if (id <> 0) then   //если передано ID
    Edit(id)
  else
    View(id);
end;


// Заменим следующие ГТД текущим
procedure TDocNewForm.mn_gtdClick(Sender: TObject);
var new_gtd: string;
    I: integer;
begin
  if (DOC_DATA.Active = false) or (DOC_DATA.RecordCount = 0) or (grid_buh_view_v.ViewData.RecordCount = 0) or (DOC_DATAGTD.IsNull = true) then
     exit;

  if DOC_DATA.State = dsEdit then DOC_DATA.Post;
    
  new_gtd := DOC_DATAGTD.AsString;
  if MessageDlg('Все нижестоящие ГТД будут заменены текущим '+new_gtd+' Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    try
      for I := DOC_DATA.RecNo to DOC_DATA.RecordCount - 1 do
      begin
        DOC_DATA.Next;
        DOC_DATA.Edit;
        DOC_DATAGTD.AsString := new_gtd;
        DOC_DATA.Post;
      end;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;
  end;
end;

//
//-----инициализация просмотра ID------------
//
procedure TDocNewForm.View(id: integer);
begin
    try
      //grid_rp_v.DataController.DataSource := DOC_DATA_DS;
      DocNewForm.Caption := 'Просмотр накладной ID='+IntToStr(id);
      DOC.Close;
      doc_data.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;

      chbMinusNDS.Checked := (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1);
      chbMinusNDS.Enabled := false;

      chbWithoutNDS.Checked := (DOC.FieldByName('BEZNDS').AsInteger = 1);
      chbWithoutNDS.Enabled := false;

      DOC_DATA.ParamByName('p1').AsString := IntToStr(spec_discont);
      doc_data.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    //Дисейблим все, что можно редактировать
    Panel_Edit.Visible                  := false;
    DOC_DATE.Enabled                    := false;
    NDSEdit.Enabled                     := false;
    DISCOUNTEdit.Enabled                := false;
    COMMENTSEdit.Enabled                := false;
    grid_buh_view_v.OptionsData.Editing := false;
    grid_buh_view_v.OptionsData.Editing := false;
    BitBtnSave.Enabled                  := false;
    ClientChoos.Enabled                 := false;
    tbb_print.Visible := false;
End;


//
// -----инициализация редактирования ID------------
//
procedure TDocNewForm.Edit(id: integer);
begin

  if (id <> 0) then
  begin
    try
      //grid_rp_v.DataController.DataSource := DOC_DATA_DS;
      //DocNewForm.Caption := 'Редактирование накладной ID='+IntToStr(id);
      DOC.Close;
      doc_data.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;

      chbMinusNDS.Checked := (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1);
      chbMinusNDS.Enabled := DataM.Operator_edit;

      chbWithoutNDS.Checked := (DOC.FieldByName('BEZNDS').AsInteger = 1);
      chbWithoutNDS.Enabled := DataM.Operator_edit;

      DOC_DATA.ParamByName('p1').AsString := IntToStr(spec_discont);
      doc_data.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;
  end;

end;


// Проверим позиции на минус
procedure TDocNewForm.FormClose(Sender: TObject; var Action: TCloseAction);
var id: integer;
begin
  // Проверим на минусовые позиции
  grid_buh_view_v.DataController.Filter.Clear;
  id := 0;
  if (ModalResult = mrOk) and DOC_DATA.Active and not DOC_DATA.IsEmpty then
  begin
    grid_buh_view_v.DataController.DataSet.DisableControls;
    try
      rp_QUANTITY.DataBinding.AddToFilter(nil,foLess,0);
      grid_buh_view_v.DataController.Filter.Active := True;
//      if grid_buh_view_v.ViewData.RecordCount > 0 then
      if DOC_DATA.RecordCount > 0 then
         if MessageDlg('Есть позиции с минусовым количеством. Продолжить запись?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
         begin
            id := _rp_ID_DOC_DATA.EditValue;
            Action := caNone;
            grid_buh_view.SetFocus;
         end;
    finally
      grid_buh_view_v.DataController.Filter.Clear;
      grid_buh_view_v.DataController.DataSet.EnableControls;
      if id > 0 then grid_buh_view_v.DataController.DataSet.Locate('ID_DOC_DATA',id,[]);
    end;

  end;
end;



procedure TDocNewForm.FormCreate(Sender: TObject);
begin
  spec_discont := 0;
end;

//
//  Открытие формы
//
procedure TDocNewForm.FormShow(Sender: TObject);
VAR Ini : TIniFile;  i: integer;
begin
  cargo_default := 0;
  path := ExtractFilePath(Application.ExeName);
  Ini := TIniFile.Create(path + '\store_buh.ini' );
  try
    cargo_default := Ini.ReadInteger('cargo','value',0);
  finally
    Ini.Free;
  end;

  Initialize();

{
  DOC_DATA.first;
  for I := DOC_DATA.RecNo to DOC_DATA.RecordCount - 1 do
  begin
   if doc_data.FieldByName('spec_price').AsString='1' then
   showmessage('спецпредложение в строке '+inttostr(i));
   DOC_DATA.Next;
  end;
}

  DOC_DATE.EditValue     := doc.FieldByName('DOC_DATE').AsDateTime;
  NDSEdit.Text          := doc.FieldByName('NDS').AsString;
  DISCOUNTEdit.Text     := doc.FieldByName('DISCOUNT').AsString;
  COMMENTSEdit.Text     := doc.FieldByName('COMMENTS').AsString;
  DocNumberEdit.EditValue    := doc.FieldByName('DOC_NUMBER').AsInteger;
  DocNumberAddEdit.Text := doc.FieldByName('DOC_NUMBER_ADD').AsString;

  if (hcode_ <> '') then rp_H_CODE.DataBinding.AddToFilter(nil,foEqual,hcode_);
  if (gtd_ <> '')   then rp_GTD.DataBinding.AddToFilter(nil,foEqual,gtd_);
  if (hcode_ <> '') or (gtd_ <> '') then grid_buh_view_v.DataController.Filter.Active := True;

  tb_delete.Enabled := DataM.Operator_delete;

 {if not(assigned(preferensesForm)) then
 application.createform(tpreferensesForm,preferensesForm);}
 chbSpecDiscont.Checked := spec_discont = 1;//false;
 //datam.spec_discont := 0;

end;


//
//  Нажатие CTRL+ENTER
//
procedure TDocNewForm.aSaveExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


//
//  Экспорт в Эксель
//
procedure TDocNewForm.spis_m1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_buh_view, True, True, True, 'xls');
//     file_path := ExtractFilePath(SaveDialog1.FileName);
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName+'.xls'), nil, nil, SW_RESTORE);
  end;
end;


//
//  Восстанавливаем таблицу
//
procedure TDocNewForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_buh_view_v.DataController.Filter.Clear;
  j := grid_buh_view_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
    grid_buh_view_v.SortedItems[0].SortOrder := soNone;
  end;
end;


//
//  Меняем клиента
//
procedure TDocNewForm.ClientChoosClick(Sender: TObject);
var theForm: TForm;
    ID_CLIENT: integer;
begin

  //Получаем текущий ID клиента
  ID_CLIENT := doc.FieldByName('ID_CLIENTS').AsInteger;

  theForm := TClientChooserForm.Create(Application);
  TClientChooserForm(theForm).id_client := ID_CLIENT;

  if theForm.ShowModal = mrOK then
  begin
    ID_CLIENT := TClientChooserForm(theForm).CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin buh_pkg.set_new_client(:id_client_, :ID_DOC_); end;');
      DM.Q_SQL.ParamByName('id_client_').Value := ID_CLIENT;
      DM.Q_SQL.ParamByName('ID_DOC_').Value    := doc.FieldByName('ID_DOC').AsInteger;
      DM.Q_SQL.Execute;
      doc.RefreshRecord;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;
  end;
  theForm.Free;

end;



//
//  Удаление выделенных строк
//
procedure TDocNewForm.grid_buh_view_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if not AViewInfo.Selected then
  begin
    val1  := grid_buh_view_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_buh_view_v.GetColumnByFieldName('N_ID').Index
                );
    if (val1 = cargo_default) then
         ACanvas.Brush.Color := stCargo.Color;

    val1  := grid_buh_view_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_buh_view_v.GetColumnByFieldName('nn').Index
                );
    if (val1 > 1) then
         ACanvas.Brush.Color := stEqNoms.Color;

    val1  := grid_buh_view_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_buh_view_v.GetColumnByFieldName('SPEC_PRICE').Index
                );
    if (val1 = 1) then
         ACanvas.Font.Style := stSpec.Font.Style;
  end;


  {val1  := grid_buh_view_v.DataController.GetValue(
  AViewInfo.GridRecord.RecordIndex, grid_buh_view_v.GetColumnByFieldName('COMPILED_NAME_OTDEL').Index
                );
    if pos('!',val1)<>0 then
         ACanvas.Brush.Color := clyellow; }

{

  if (not AViewInfo.Selected) and (grid_buh_view_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_OTDEL') then
  begin
    val1  := grid_buh_view_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_buh_view_v.GetColumnByFieldName('nn').Index
                );

    if (val1 > 1) then
         ACanvas.Brush.Color := stEqNoms.Color;
  end;
}
end;

procedure TDocNewForm.grid_buh_view_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

 if key = VK_DELETE then
 begin
   tb_deleteClick(Sender);
 end;

end;


//
//  Добавление позиции (F1)
//
procedure TDocNewForm.New_posExecute(Sender: TObject);
var edit_list: TForm;
begin
  edit_list := Tedit_list.Create(Application);
  edit_list.showmodal;
  DOC_DATA.Refresh;
end;


//
//  Проца изменения
//
procedure Change(DBGridEh2:TcxGridDBTableView; ChangeAll:Boolean; ChangeWhat:string; NewValue:integer);
var i, j: integer;
begin

  if (DBGridEh2.DataController.DataSet.Active) then
  begin
    try
      screen.cursor := crhourglass;
      DBGridEh2.DataController.DataSet.DisableControls;

      if (ChangeAll = true) then
        DBGridEh2.Controller.SelectAll;

      if (DBGridEh2.Controller.SelectedRowCount > 0) then
      begin

          DBGridEh2.DataController.DataSet.first;
          for i := 0 to DBGridEh2.Controller.SelectedRowCount-1 do
          begin
            j :=  DBGridEh2.Controller.SelectedRows[i].RecordIndex;
            //отрабатываю когда стоит галка "применять для спецп" или галки нет, но и спецП нет
            if ( (spec_discont = 1) or ( (spec_discont = 0) and (DBGridEh2.ViewData.DataController.Values[j, DBGridEh2.GetColumnByFieldName('spec_price').Index] <> 1) ) ) then
            begin
              DBGridEh2.DataController.DataSet.Locate('ID_DOC_DATA',DBGridEh2.ViewData.DataController.Values[j, DBGridEh2.GetColumnByFieldName('ID_DOC_DATA').Index],[]);
              DBGridEh2.DataController.DataSet.Edit;
              DBGridEh2.DataController.DataSet.FieldByName('PRICE').AsFloat := DBGridEh2.DataController.DataSet.FieldByName('PRICE').AsFloat+(NewValue/100)*DBGridEh2.DataController.DataSet.FieldByName('PRICE').AsFloat;
              DBGridEh2.DataController.DataSet.Post;
            end;
          end;
      end;

      DBGridEh2.DataController.DataSet.EnableControls;
      screen.cursor := crdefault;

    except
      on E: Exception do
        begin
          DBGridEh2.DataController.DataSet.EnableControls;
          screen.cursor:=crdefault;
          MessageBox(NULL, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
    end;
  end;

end;



//
//  Изменение цены
//
procedure TDocNewForm.Change_priseExecute(Sender: TObject);
var ChangePricesForm: TChangePricesForm;
    ChangeAll:        boolean;
    ChangeWhat:       string;
    NewValue:         integer;
begin

  ChangePricesForm := TChangePricesForm.Create(Application);

  if ChangePricesForm.ShowModal <> mrCancel then
  begin

    if ChangePricesForm.ChangeAll_RB.Checked=true then
      ChangeAll := true
    else
      ChangeAll := false;

    ChangeWhat := 'PRICE';

    if (ChangePricesForm.Znak_EditPercent.Text='-') then
      NewValue := StrToInt('-'+ChangePricesForm.EditPercent.Text)
    else
      NewValue := StrToInt(ChangePricesForm.EditPercent.Text);

    Change(grid_buh_view_v, ChangeAll, ChangeWhat, NewValue);

    spec_discont := 0; // обнуляю
    chbSpecDiscont.Checked:=false;

  end;
  DOC_DATA.Refresh;

end;


procedure TDocNewForm.chbSpecDiscontClick(Sender: TObject);
 //var ini: tinifile; ID_COMPANY: integer;
begin
{  ID_COMPANY := preferensesForm.Company_All_CBEx.Value;
  path := ExtractFilePath(Application.ExeName);
  Ini := TIniFile.Create(path + '\ini\'+Operator_username+'_setting.ini' );
  try
    Ini.WriteInteger('id_company','value',ID_COMPANY);
    Ini.WriteInteger('spec_discont','value',BoolToInt(chbSpecDiscont.Checked));
    DataM.spec_discont := Ini.ReadInteger('spec_discont','value',0);
  finally
    Ini.Free;
  end;
      }
      spec_discont := BoolToInt(chbSpecDiscont.Checked);
end;

// Кнопка "Изменить цены"
procedure TDocNewForm.ToolButton3Click(Sender: TObject);
begin
  Change_priseExecute(Sender);
end;



//
// Подгрузка со склада
//
procedure TDocNewForm.From_storeExecute(Sender: TObject);
var theForm: TForm;
begin

  theForm                                   := TSelectDocForm.Create(Application);
	TSelectDocForm(theForm).department_index  := strtoint(DataM.department_id);
	TSelectDocForm(theForm).department_name   := DataM.department_name;
	TSelectDocForm(theForm).documenttype_id   := doc.FieldByName('ID_DOC_TYPE').AsInteger;
  TSelectDocForm(theForm).documenttype_name := 'Подгрузка документов со склада';

  if theForm.ShowModal = mrOk then
  begin
    try
      screen.cursor:=crhourglass;
      with DM.Q_SQL do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin BUH_PKG.DATA_FROM_STOREDOCS(:store_doc_num_add, :store_doc_num_del, :svod, :zatiranie, :V_SERVICE) end;');
        ParamByName('store_doc_num_add').Value := 0;
        ParamByName('store_doc_num_del').Value := 0;
        ParamByName('svod').Value              := id;
        ParamByName('V_SERVICE').AsInteger     := 0;

        if MessageDlg('Подгрузить с затиранием?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
          ParamByName('zatiranie').Value       := 1
        else
          ParamByName('zatiranie').Value       := 0;

        Execute;
      end;
      doc_data.close;
      doc_data.open;
      screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
    End;
  end;
  theForm.Free;
end;


function TDocNewForm.frxReportNaklUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  try
    if (UpperCase(MethodName) = 'PROPIS') then
      Result := Propis( Trunc(Params[0]) );
    if (UpperCase(MethodName) = 'RUBLE') then
      Result := Ruble( Trunc(Params[0]), Params[1] );
    if (UpperCase(MethodName) = 'KOPEIKA') then
      Result := Kopeika( Trunc(Params[0]), Params[1] );
  except
  end;
end;

// Нажимаем "подгрузить со склада"
procedure TDocNewForm.ToolButton7Click(Sender: TObject);
begin
  From_storeExecute(Sender);
end;


// Проверка на цифры в НДС
procedure TDocNewForm.NDSEditKeyPress(Sender: TObject; var Key: Char);
begin
 //  AllowOnlyNumber(Key); - нах не надо
end;


//
//  Удаление записи
//
procedure TDocNewForm.tb_deleteClick(Sender: TObject);
var i: integer;
begin
   if (grid_buh_view_v.DataController.DataSet.RecordCount > 0) and (MessageDlg('Удалить выделенные записи?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
   begin
     try
       screen.cursor:=crhourglass;
       with DM.Q_SQL do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('begin BUH_PKG.del_doc_data(:ID_DOC_DATA_); end;');

         for i:=0 to grid_buh_view_v.Controller.SelectedRecordCount-1 do
         begin
           ParamByName('ID_DOC_DATA_').Value := grid_buh_view_v.Controller.SelectedRows[i].Values[1];
           Execute;
         end;
         grid_buh_view_v.DataController.DataSet.Refresh;

       end;
       screen.cursor:=crdefault;
       MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
     except
       on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
     End;
   end;
end;


procedure TDocNewForm.te_newgtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: integer;
begin
  if (Key = VK_DELETE) then
  begin
    pnl_newgtd.Visible := false;
    grid_buh_view.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_newgtd.PostEditValue;



     try
       screen.cursor:=crhourglass;
       with DM.Q_SQL do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('UPDATE buh_doc_data SET GTD = :v_GTD, date_change = sysdate WHERE ID_DOC_DATA = :v_ID_DOC_DATA');

         grid_buh_view_v.DataController.DataSet.First;
         for i:=0 to grid_buh_view_v.Controller.SelectedRecordCount-1 do
         begin
           ParamByName('v_GTD').AsString      := VarToStr(te_newgtd.EditValue);
           ParamByName('v_ID_DOC_DATA').Value := grid_buh_view_v.Controller.SelectedRows[i].Values[_rp_ID_DOC_DATA.Index];
           Execute;
         end;
         grid_buh_view_v.DataController.DataSet.Refresh;
         //dm.OraSession.Commit;

       end;
       screen.cursor:=crdefault;
       MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
     except
       on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
     End;




    pnl_newgtd.Visible := false;
    te_newgtd.Text := '';
    grid_buh_view.SetFocus;
  end;
end;

//
//  Смена ГТД
//
procedure TDocNewForm.tbb_gtdClick(Sender: TObject);
var i: integer;
begin
   if (grid_buh_view_v.DataController.DataSet.RecordCount > 0) and (MessageDlg('Всем выбранным записям будет проставлен единый новый ГТД'+#10+'Продолжить действие?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
   begin
      pnl_newgtd.Left     := trunc(grid_buh_view.Width / 2) - 90;
      pnl_newgtd.Top      := trunc(grid_buh_view.Height / 2) - 20;
      pnl_newgtd.Visible  := true;
      te_newgtd.EditValue := grid_buh_view_v.DataController.DataSet.FieldByName('GTD').AsString;
      te_newgtd.SetFocus;
   end;
end;


//
//  Синхронизируем цены чеках, счетах-фактурах и накладных
//
procedure TDocNewForm.tbb_sync_priceClick(Sender: TObject);
begin
   if (grid_buh_view_v.DataController.DataSet.RecordCount > 0) and (MessageDlg('Все ЦЕНЫ будут синхронизированы в товарных чеках, в счетах-фактурах и накладных!'+#10+'Продолжить действие?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
   begin
     try
       screen.cursor:=crhourglass;
       with DM.Q_SQL do
       Begin
         Close;
         SQL.Clear;
         SQL.Add('begin BUH_PKG.sync_doc_data(:ID_DOC_); end;');
         ParamByName('ID_DOC_').Value := DOC.FieldByName('ID_DOC').AsInteger;
         Execute;
         grid_buh_view_v.DataController.DataSet.Refresh;
       end;
       screen.cursor:=crdefault;
       MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
     except
       on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
     End;

   end;
end;



//
//  Просмотр ГТД
//
procedure TDocNewForm.tbb_showgtdClick(Sender: TObject);
var theForm: TForm;
begin
  if (grid_buh_view_v.DataController.DataSet.Active = false) or (grid_buh_view_v.DataController.DataSet.RecordCount = 0) then
      exit;

  theForm := TGtdForm.Create(Application);
  try
    TGtdForm(theForm).v_n_id := _rp_n_id.EditValue;
    theForm.ShowModal;
  finally
    theForm.Free;
  end;
end;




procedure TDocNewForm.DocNumberAddEditChange(Sender: TObject);
begin
  DOC.Edit;

  DocNumberEdit.PostEditValue;
  if (DocNumberAddEdit.Text = '') then
    DOC.FieldByName('NUMBER_FULL').AsString := VarToStr(DocNumberEdit.EditValue)
  else
    DOC.FieldByName('NUMBER_FULL').AsString := VarToStr(DocNumberEdit.EditValue) + '/' + DocNumberAddEdit.Text;

//  DOC.FieldByName('DOC_NUMBER_ADD').AsString := DocNumberAddEdit.Text;
  DOC.Post;
end;

procedure TDocNewForm.DocNumberEditPropertiesChange(Sender: TObject);
begin
  DOC.Edit;

  DocNumberEdit.PostEditValue;
  if (DocNumberAddEdit.Text = '') then
    DOC.FieldByName('NUMBER_FULL').AsString := VarToStr(DocNumberEdit.EditValue)
  else
    DOC.FieldByName('NUMBER_FULL').AsString := VarToStr(DocNumberEdit.EditValue) + '/' + DocNumberAddEdit.Text;

//  DOC.FieldByName('DOC_NUMBER').AsString := DocNumberEdit.Text;
  DOC.Post;
end;

procedure TDocNewForm.DOC_DATEChange(Sender: TObject);
begin
  DOC_DATE.PostEditValue;
  DOC.Edit;
  DOC.FieldByName('DOC_DATE').AsDateTime := DOC_DATE.EditValue;
  DOC.Post;
end;



//
//  Печать накладной
//
procedure TDocNewForm.tbb_printClick(Sender: TObject);
var theForm: TForm;
    ID_company, ID_BANC:integer;
    Memo1, Memo2: TfrxMemoView;
    dog_num, dog_date: string;
    mOKUD, mOKPO, mOKDP, mNDS, mSumNDS, mSumNDS2: TfrxMemoView;
begin
    ID_company := 0;
    ID_BANC    := 0;
    dog_num    := '';
    dog_date   := '';

    ID_company := doc.FieldByName('ID_company').AsInteger;
    ID_BANC    := doc.FieldByName('ID_BANC').AsInteger;

    if (ID_company = 0) then ID_company := company_default;
    if (ID_BANC = 0)    then ID_BANC    := banc_default;

    dm.company.Close;
    dm.company.ParamByName('ID_company').AsInteger     := ID_company;
    dm.company.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    dm.company.Open;

    dm.banc.Close;
    dm.banc.ParamByName('ID_BANC').AsInteger           := banc_default;
    dm.banc.Open;

    theForm := TPrintTypeSelectForm.Create(Application);

    TPrintTypeSelectForm(theForm).documenttype_id   := doctype_id;
    TPrintTypeSelectForm(theForm).documenttype_name := doctype_name;
    TPrintTypeSelectForm(theForm).Memo1.Text        := DOC.FieldByName('address').AsString;
    TPrintTypeSelectForm(theForm).id_client_        := DOC.FieldByName('id_client').AsInteger;
    TPrintTypeSelectForm(theForm).grCargo.Tag       := DOC.FieldByName('ID_CLIENTS_GROUPS').AsInteger;
    TPrintTypeSelectForm(theForm).chb_handcargo.Enabled   := ( DOC.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 2 );

    if (doctype_id = 1) or (doctype_id = 6) then
      TPrintTypeSelectForm(theForm).UpDown1.Position := 1
    else
      TPrintTypeSelectForm(theForm).UpDown1.Position := 2;

    DM.CDS_ADDRESS.Close;
    DM.CDS_ADDRESS.ParamByName('id_clients').AsInteger := DOC.FieldByName('id_client').AsInteger;
    DM.CDS_ADDRESS.Open;

    if (theForm.showmodal = mrOk) then
    begin
      if not TPrintTypeSelectForm(theForm).chb_handcargo.Checked then DM.cdsClients.Close;

      frxReportNakl.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
      frxReportNakl.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
      frxReportNakl.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');

// Достанем информацию по договорам
      with OraQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('begin store_pkg.get_personal_settings(:v_date, :v_id_company, :cursor_); end;');
        ParamByName('v_date').AsDateTime      := doc.FieldByName('DOC_DATE').AsDateTime;
        ParamByName('v_id_company').AsInteger := ID_company;
        ParamByName('cursor_').AsCursor;
        Open;
      end;

      DOC_DATA.Open;

      frxReportNakl.Clear;
      try
        if (doctype_id = 1) then
          frxReportNakl.LoadFromFile(path+'raports\doc_check.fr3');

        if (doctype_id = 2) then
        begin
          if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('09.06.2009')) then
            frxReportNakl.LoadFromFile(path+'raports\doc_faktura_old.fr3')
          else
          begin
            if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('02.09.2010')) then
               frxReportNakl.LoadFromFile(path+'raports\doc_faktura.fr3')
            else
            begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('24.01.2012')) then
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_020910.fr3')
                 else
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_240112.fr3');
            end;
          end;
        end;

        if (doctype_id = 3) then
        begin
          if (TPrintTypeSelectForm(theForm).NaKladCB.Checked = true) then
            frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya.fr3');
          if (TPrintTypeSelectForm(theForm).NaKlad1CB.Checked = true) then
            frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
        end;

        if (doctype_id = 6) then
        begin
          frxReportNakl.LoadFromFile(path+'raports\doc_reserv.fr3');
        end;

        // УПД
        if (doctype_id = 8) then
        begin
          frxReportNakl.LoadFromFile(path+'raports\doc_upd.fr3');
        end;

        frxReportNakl.PrepareReport;
        frxReportNakl.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);





        if (doctype_id = 2) then
        begin
          Memo1 := frxReportNakl.FindObject('Memo64') as TfrxMemoView;
          Memo2 := frxReportNakl.FindObject('Memo65') as TfrxMemoView;

          mNDS    := frxReportNakl.FindObject('Memo22') as TfrxMemoView;
          mSumNDS := frxReportNakl.FindObject('Memo23') as TfrxMemoView;
          mSumNDS2 := frxReportNakl.FindObject('memSum4') as TfrxMemoView;
          if (DOC.FieldByName('NDS').AsInteger > 0) and (DOC.FieldByName('BEZNDS').AsInteger = 1) and (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1) then
          begin
            mNDS.Text := '0';
            mSumNDS.Text := '0';
            mSumNDS2.Text := '0';
          end;

          if (DOC.FieldByName('NDS').AsInteger = 0) then
          begin
            mNDS.Text := 'без НДС';
            mSumNDS.Text := '-';
            mSumNDS2.Text := '0';
          end;
{2015-12-19
          mNDS    := frxReportNakl.FindObject('Memo22') as TfrxMemoView;
          if (DataM.bez_nds_default = 1) then mNDS.Text := 'без НДС';

          mSumNDS := frxReportNakl.FindObject('Memo23') as TfrxMemoView;
          if (DataM.bez_nds_default = 1) then mSumNDS.Text := '-';

          mSumNDS := frxReportNakl.FindObject('memSum4') as TfrxMemoView;
          if (DataM.bez_nds_default = 1) then mSumNDS.Text := '0';
}
        end;

        if (doctype_id = 3) then
        begin
          if (TPrintTypeSelectForm(theForm).NaKladCB.Checked = true) then
          begin
            Memo1 := frxReportNakl.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportNakl.FindObject('Memo117') as TfrxMemoView;
          end;

          if (TPrintTypeSelectForm(theForm).NaKlad1CB.Checked = true) then
          begin
            Memo1 := frxReportNakl.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportNakl.FindObject('Memo43') as TfrxMemoView;
          end;

          mOKPO   := frxReportNakl.FindObject('Memo12') as TfrxMemoView;
          mOKPO.Text := Datam.okpo_default;

          mOKDP   := frxReportNakl.FindObject('Memo4') as TfrxMemoView;
          mOKDP.Text := Datam.okdp_default;

          mNDS    := frxReportNakl.FindObject('Memo83') as TfrxMemoView;
          mSumNDS := frxReportNakl.FindObject('Memo84') as TfrxMemoView;
          mSumNDS2 := frxReportNakl.FindObject('Memo188') as TfrxMemoView;
          if (DOC.FieldByName('NDS').AsInteger > 0) and (DOC.FieldByName('BEZNDS').AsInteger = 1) and (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1) then
          begin
            mNDS.Text := '0';
            mSumNDS.Text := '0';
            mSumNDS2.Text := '0';
          end;

          if (DOC.FieldByName('NDS').AsInteger = 0) then
          begin
            mNDS.Text := 'без НДС';
            mSumNDS.Text := '-';
            mSumNDS2.Text := '0';
          end;
        end;

        if (doctype_id = 6) then
        begin
          Memo1 := frxReportNakl.FindObject('Memo34') as TfrxMemoView;
          Memo2 := frxReportNakl.FindObject('Memo35') as TfrxMemoView;
        end;

// Приказ
        if (doctype_id = 2) or (doctype_id = 3) or (doctype_id = 6) then
        begin
          if not OraQuery.IsEmpty then
          begin
             Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
             Memo2.Text := Memo1.Text;
          end
          else
          begin
             Memo1.Text := '';
             Memo2.Text := '';
          end;
        end;
// ----------




        if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
          frxReportNakl.Print
        else
          frxReportNakl.ShowReport;



// Копия
        //if (Datam.print_copy = 1) then
       // if MessageDlg('Печатать сопутствующий документ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          frxReportNakl.Clear;

          if (doctype_id = 2) then
             frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
          if (doctype_id = 3) then
          begin
            if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('09.06.2009')) then
              frxReportNakl.LoadFromFile(path+'raports\doc_faktura_old.fr3')
            else
            begin
              if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('02.09.2010')) then
                 frxReportNakl.LoadFromFile(path+'raports\doc_faktura.fr3')
              else
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('24.01.2012')) then
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_020910.fr3')
                 else
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_240112.fr3');
              end;
            end;
          end;
          frxReportNakl.PrepareReport;
          frxReportNakl.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);





          if (doctype_id = 2) then
          begin
            Memo1 := frxReportNakl.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportNakl.FindObject('Memo43') as TfrxMemoView;

            mOKPO   := frxReportNakl.FindObject('Memo12') as TfrxMemoView;
            mOKPO.Text := Datam.okpo_default;

            mOKDP   := frxReportNakl.FindObject('Memo4') as TfrxMemoView;
            mOKDP.Text := Datam.okdp_default;

            mNDS    := frxReportNakl.FindObject('Memo83') as TfrxMemoView;
            mSumNDS := frxReportNakl.FindObject('Memo84') as TfrxMemoView;
            mSumNDS2 := frxReportNakl.FindObject('Memo188') as TfrxMemoView;
            if (DOC.FieldByName('NDS').AsInteger > 0) and (DOC.FieldByName('BEZNDS').AsInteger = 1) and (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1) then
            begin
              mNDS.Text := '0';
              mSumNDS.Text := '0';
              mSumNDS2.Text := '0';
            end;

            if (DOC.FieldByName('NDS').AsInteger = 0) then
            begin
              mNDS.Text := 'без НДС';
              mSumNDS.Text := '-';
              mSumNDS2.Text := '0';
            end;
          end;

          if (doctype_id = 3) then
          begin
            Memo1 := frxReportNakl.FindObject('Memo64') as TfrxMemoView;
            Memo2 := frxReportNakl.FindObject('Memo65') as TfrxMemoView;

            mNDS    := frxReportNakl.FindObject('Memo22') as TfrxMemoView;
            mSumNDS := frxReportNakl.FindObject('Memo23') as TfrxMemoView;
            mSumNDS2 := frxReportNakl.FindObject('memSum4') as TfrxMemoView;
            if (DOC.FieldByName('NDS').AsInteger > 0) and (DOC.FieldByName('BEZNDS').AsInteger = 1) and (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1) then
            begin
              mNDS.Text := '0';
              mSumNDS.Text := '0';
              mSumNDS2.Text := '0';
            end;

            if (DOC.FieldByName('NDS').AsInteger = 0) then
            begin
              mNDS.Text := 'без НДС';
              mSumNDS.Text := '-';
              mSumNDS2.Text := '0';
            end;
          end;


          if not OraQuery.IsEmpty then
          begin
               Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
               Memo2.Text := Memo1.Text;
          end
          else
          begin
               Memo1.Text := '';
               Memo2.Text := '';
          end;


{
        if strtoint(DataM.department_id) <> 121 then
        begin
          Memo1 := frxReportNakl.FindObject('MemoTitle') as TfrxMemoView;
          Memo1.Text := ' [frxDB_DOC_DATA."compiled_name_otdel"]';
        end;
}

          if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
            frxReportNakl.Print
          else
            frxReportNakl.ShowReport;
        end;


     	except
     	  on E: Exception do
          MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
      End;

    end;

    theForm.Free;
    DM.CDS_ADDRESS.Close;
    DM.cdsClients.Close;
    dm.banc.Close;
    dm.company.Close;
    OraQuery.Close;
end;


// Добавление позиции для имитации "траспорта"
procedure TDocNewForm.tbb_cargoClick(Sender: TObject);
begin
  if cargo_default = 0 then exit;

  try
    with DM.Q_SQL do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO buh_doc_data (ID_DOC_DATA, N_ID, QUANTITY, price, ID_DOC, GTD, id_office, compiled_name_otdel)');
      SQL.Add('values(get_office_unique(''BUH_DOC_DATA_SET_ID''), '+IntToStr(cargo_default)+', 1, 1, '+doc.FieldByName('id_doc').AsString+', null, const_office, null)');
      Execute;
      DOC_DATA.Refresh;
    end;
  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка при добавлении позиции!', MB_ICONERROR);
    end;
  End;
end;


//
//  Проводим проверку данных накладной. Если кол-во 0, то удалим, если найдем 2 позиции с одинаковым ГТД, то схлопнем
//
procedure TDocNewForm.ToolButton6Click(Sender: TObject);
begin
  if DOC_DATA.RecordCount = 0 then exit;

  if MessageDlg('Все 0-е записи будут удалены. Задвоенные позиции уберутся. Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrNo then exit;

  try
      with OraQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('begin buh_pkg.reorganazy_data(:v_id_doc); end;');
        ParamByName('v_id_doc').AsInteger := doc.FieldByName('id_doc').AsInteger;
        Execute;
      end;
      DOC_DATA.Refresh;
  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка при добавлении позиции!', MB_ICONERROR);
    end;
  End;
end;


end.
