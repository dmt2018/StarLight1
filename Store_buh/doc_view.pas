unit doc_view;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, 
  DB, ActnList, MemDS, DBAccess, Ora, PI_library,
  ToolWin, ImgList, useful_functions, DBCtrls,
  DASQLMonitor, OraSQLMonitor, GridsEh, cxLookAndFeelPainters,
  dxGDIPlusClasses, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCalendar, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, dxBar, dxBarExtItems, cxGridExportLink,
  frxExportMail, frxExportCSV, frxExportText, frxExportRTF, frxExportXLS,
  frxExportHTML, frxClass, frxExportPDF, frxDBSet, ShellAPI, frxDesgn, PI_Library_reg,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCheckBox;

type  TdocsviewForm = class(TForm)
    Panel5: TPanel;
    Panel8: TPanel;
    NumberDoc: TLabeledEdit;
    ClientFio: TLabeledEdit;
    ClientNick: TLabeledEdit;
    DateTrue: TCheckBox;
    Label2: TLabel;
    ActionList1: TActionList;
    DocPrint_Action: TAction;
    DocNew_Action: TAction;
    DOC: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    Panel2: TPanel;
    Panel10: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PrintDoc_Button: TToolButton;
    StatusBar: TStatusBar;
    Delete_Button: TToolButton;
    ToolButton6: TToolButton;
    Edit_Button: TToolButton;
    ToolButton8: TToolButton;
    DocEdit_Action: TAction;
    DocDelete_Action: TAction;
    ListPrintAction: TAction;
    Panel1: TPanel;
    Doctype_name_Label: TLabel;
    ToolButton4: TToolButton;
    PrintAll_Button: TToolButton;
    OraQuery: TOraQuery;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    DocNew_Action_store: TAction;
    DocNew_Action_buh: TAction;
    ToolButton7: TToolButton;
    clients_add: TOraQuery;
    clients_add_ds: TOraDataSource;
    Image1: TImage;
    BitBtn1: TcxButton;
    grid_buh_docs: TcxGrid;
    grid_buh_docs_v: TcxGridDBTableView;
    bdoc_NUMBER_FULL: TcxGridDBColumn;
    bdoc_DOC_DATE: TcxGridDBColumn;
    bdoc_NICK: TcxGridDBColumn;
    bdoc_FIO: TcxGridDBColumn;
    bdoc_QUANTITY_ALL: TcxGridDBColumn;
    bdoc_PRICE_ALL: TcxGridDBColumn;
    bdoc_COMMENTS: TcxGridDBColumn;
    bdoc_COMPANY_NAME: TcxGridDBColumn;
    bdoc_DISCOUNT: TcxGridDBColumn;
    bdoc_NDS: TcxGridDBColumn;
    grid_buh_docs_l: TcxGridLevel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    bm_buh_doc: TdxBarManager;
    bmb_prihod: TdxBar;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    pm_buh_doc: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    aClearFilter: TAction;
    aEnter: TAction;
    SaveDialog1: TSaveDialog;
    _bdoc_id_doc: TcxGridDBColumn;
    frxReportNakl: TfrxReport;
    frxDB_DOC: TfrxDBDataset;
    frxDB_DOC_DATA: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxDBCompany: TfrxDBDataset;
    frxDBBank: TfrxDBDataset;
    frxDBAddess: TfrxDBDataset;
    DocNew_Reserv: TAction;
    DocNew_Cargo: TAction;
    bdoc_cargo: TcxGridDBColumn;
    bdoc_OPERATOR_NAME: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    bdoc_ID_company: TcxGridDBColumn;
    frxDBClients: TfrxDBDataset;
    grid_buh_docs_vgroup_name: TcxGridDBColumn;
    _bdoc_id_office: TcxGridDBColumn;
    bdoc_brief: TcxGridDBColumn;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    PrintBill_Button: TToolButton;
    grid_buh_docs_vsum_quantity: TcxGridDBColumn;
    dbb_sync_docs: TdxBarButton;
    grid_buh_docs_vBEZNDSMINUS: TcxGridDBColumn;
    grid_buh_docs_vsum_price_new: TcxGridDBColumn;
    grid_buh_docs_vBEZNDS: TcxGridDBColumn;
    DOC_DATABUH_CODE: TStringField;
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
    DOC_DATACOMPILED_NAME_OTDEL: TStringField;
    DOC_DATANSI_NAME: TStringField;
    DOC_DATAUNIT_CODE: TIntegerField;
    DOC_DATASYMBOL_NATIONAL: TStringField;
    DOCADDRESS: TStringField;
    DOCU_ADDRESS: TStringField;
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
    DOCBANK: TStringField;
    DOCPHONE: TStringField;
    DOCID_CLIENTS_GROUPS: TIntegerField;
    DOCGROUP_NAME: TStringField;
    DOCBUH_DOC_TYPE_NAME: TStringField;
    DOCCOMPANY_NAME: TStringField;
    DOCBANC_NAME: TStringField;
    DOCCARGO: TStringField;
    DOCSUM_PRICE_OLD: TFloatField;
    DOCSUM_PRICE_NEW: TFloatField;
    DOCQUANTITY_ALL: TFloatField;
    DOCSUM_PRICE_DIFFERENCE: TFloatField;
    DOCPRICE_ALL: TFloatField;
    DOCID_OFFICE: TIntegerField;
    DOCBRIEF: TStringField;
    DOCSUM_QUANTITY: TFloatField;
    DOCBEZNDSMINUS: TIntegerField;
    DOCBEZNDS: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure NumberDocKeyPress(Sender: TObject; var Key: Char);
    procedure DocPrint_ActionExecute(Sender: TObject);
    procedure DocNew_ActionExecute(Sender: TObject);
    procedure DOC_DATABeforeEdit(DataSet: TDataSet);
    procedure ToolButton1Click(Sender: TObject);
    procedure DocEdit_ActionExecute(Sender: TObject);
    procedure DocDelete_ActionExecute(Sender: TObject);
    procedure Delete_ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Doc_FilterOn();
    procedure PrintDoc_ButtonClick(Sender: TObject);
    procedure PrintAll_ButtonClick(Sender: TObject);
    procedure ListPrintActionExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton3Click(Sender: TObject);
    procedure DocNew_Action_storeExecute(Sender: TObject);
    procedure DocNew_Action_buhExecute(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientNickKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientFioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aClearFilterExecute(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure grid_buh_docs_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function frxReportNaklUserFunction(const MethodName: String;
      var Params: Variant): Variant;
    procedure DocNew_ReservExecute(Sender: TObject);
    procedure DocNew_CargoExecute(Sender: TObject);
    procedure DOCBeforeOpen(DataSet: TDataSet);
    procedure PrintBill_ButtonClick(Sender: TObject);
    procedure dbb_sync_docsClick(Sender: TObject);
{
    procedure Doc_DepsCBExChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
}
  private
    { Private declarations }
    new_type: integer; // 1-�� ������; 2-� �����������
  public
    { Public declarations }
    path : string;
    department_index: integer;
    department_name: string;
    documenttype_id: integer;
    documenttype_name: string;
  end;

var
  docsviewForm: TdocsviewForm;
  doc_SQL_beg : string;

implementation

uses dataM, global, doc_new, company, Print_Type_Select,
  client_chooser, Gtd, preferenses, Select_Doc, UChoiseReserv;
{$R *.dfm}


//
//  ������� ��� ������
//
function TdocsviewForm.frxReportNaklUserFunction(const MethodName: String;
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



//
//  �������� �����
//
procedure TdocsviewForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


//
//  ����� �����
//
procedure TdocsviewForm.FormShow(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
  StatusBar.Panels[0].Text    := '  ��������: ' + DataM.Operator_Name;
  Doctype_name_Label.Caption  := department_name + ' :: ' + documenttype_name;

  DateTimePicker1.Date := Now()-2; //IncMonth(Date,-1);
  DateTimePicker2.Date := Date;

  if (documenttype_id = 6) then ToolButton3.Visible := false;
  if (documenttype_id = 7) then ToolButton1.Visible := false;

  DocPrint_Action.Enabled   := Operator_print;
  ListPrintAction.Enabled   := Operator_print;
  dxBarButton15.Enabled     := Operator_print;
  DocNew_Action.Enabled     := Operator_edit;
  DocEdit_Action.Enabled    := Operator_edit;
  DocDelete_Action.Enabled  := Operator_delete;
  DocNew_Action_store.Enabled := Operator_edit;
  DocNew_Action_buh.Enabled := Operator_edit;
  DocNew_Reserv.Enabled     := Operator_edit;
  DocNew_Cargo.Enabled      := Operator_edit;

  PrintDoc_Button.Enabled   := Operator_print;
  PrintAll_Button.Enabled   := Operator_print;
  PrintBill_Button.Enabled  := (Operator_print and ((documenttype_id = 2) or (documenttype_id = 3)));
  Delete_Button.Enabled     := Operator_delete;
  Edit_Button.Enabled       := Operator_edit;
  ToolButton1.Enabled       := Operator_edit;
  ToolButton3.Enabled       := Operator_edit;

  if (documenttype_id = 7) then bdoc_cargo.Visible := true else bdoc_cargo.Visible := false;

  bdoc_brief.Visible := not (GetOfficeID = DM.id_office); //(GetOfficeID <= 1);

  Doc_FilterOn();
  DOC_DATA.ParamByName('p1').AsInteger := DOC.FieldByName('BEZNDSMINUS').AsInteger ; // DataM.bez_nds_minus;
end;


//
//  ������ ��������
//
procedure TdocsviewForm.BitBtn1Click(Sender: TObject);
begin
  DateTimePicker1.PostEditValue;
  DateTimePicker2.PostEditValue;
  Doc_FilterOn();
end;


//
// ���������� ����������
//
procedure TdocsviewForm.Doc_FilterOn();
begin
	if ((DateTrue.Checked=false) and (DateTimePicker1.Date > DateTimePicker2.Date)) then
  	ShowMessage('������ ���� �� ����� ���� ������ ������!')
	else
	begin
    try
    	screen.cursor:=crhourglass;
  	  DOC.Close;
	    DOC.ParamByName('id_dep_').Value := strtoint(DataM.department_id);
	    DOC.ParamByName('DOC_NUMBER_').AsString := NumberDoc.Text;

    	if (DateTrue.Checked=false) then
      begin
  	    DOC.ParamByName('DOC_DATE1_').AsDate := DateTimePicker1.Date;
    	  DOC.ParamByName('DOC_DATE2_').AsDate := DateTimePicker2.Date;
    	end
      else
      begin
  	    DOC.ParamByName('DOC_DATE1_').AsDate := Now()-365;
    	  DOC.ParamByName('DOC_DATE2_').AsDate := Now();
    	end;

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := documenttype_id;

	    DOC.ParamByName('fio_').AsString := trim(ClientFio.Text);
	    DOC.ParamByName('nick_').AsString := trim(ClientNick.Text);

    	DOC.Open;
	    screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), '������', MB_ICONERROR);
        end;
    End;
	end;
end;
//------------------------------------------------------------------------------



//
//  �������� ������
//
procedure TdocsviewForm.aClearFilterExecute(Sender: TObject);
begin
  grid_buh_docs_v.DataController.Filter.Clear;
  grid_buh_docs.SetFocus;
end;


//
//  ������� � ������
//
procedure TdocsviewForm.dxBarButton15Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_buh_docs, True, True, True, 'xls');
//     file_path := ExtractFilePath(SaveDialog1.FileName);
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName+'.xls'), nil, nil, SW_RESTORE);
  end;
  grid_buh_docs.SetFocus;
end;


//
//  �������������� ���� �����, ������-�������� � ���������
//
procedure TdocsviewForm.dbb_sync_docsClick(Sender: TObject);
begin
   if (grid_buh_docs_v.DataController.DataSet.RecordCount > 0) and (MessageDlg('��� ���� ����� ���������������� � �������� �����, � ������-�������� � ���������!'+#10+'���������� ��������?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
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
         grid_buh_docs_v.DataController.DataSet.Refresh;
       end;
       screen.cursor:=crdefault;
       MessageBox(Handle, '�������� ������ �������!', '���������', MB_ICONINFORMATION);
     except
       on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), '�� ������� ��������� ��������!', MB_ICONERROR);
        end;
     End;
   end;
end;

//
//----------�������������� ���������---------------------------
//
procedure TdocsviewForm.DocEdit_ActionExecute(Sender: TObject);
var id_root: integer;
    theForm: TForm;
begin

  if (DataM.Operator_edit = false) then
     MessageBox(Handle, '� ��� ��� ���� ��� �������������� ���������!', '��������!', MB_ICONSTOP)
  else
  begin

    if (DOC.RecordCount = 0) then
       MessageBox(Handle, '�� ������ �� ���� ��������!', '��������!', MB_ICONSTOP)
    else
    begin

      DM.OraSession.Savepoint('Begin_Doc_Edit');
      theForm := TDocNewForm.Create(Application);
      TDocNewForm(theForm).id := doc.FieldByName('id_doc').AsInteger;
      TDocNewForm(theForm).doctype_id   := documenttype_id;
      TDocNewForm(theForm).doctype_name := documenttype_name;
      TDocNewForm(theForm).Caption := '�������������� ��������� ID='+doc.FieldByName('id_doc').AsString;

      if theForm.ShowModal = mrOk then
      begin
        try
          id_root := DOC.FieldByName('ID_DOC').AsInteger;

          TDocNewForm(theForm).DocNumberEdit.PostEditValue;
          OraQuery.SQL.Clear;
          OraQuery.SQL.Add('begin buh_pkg.update_doc(:date_, :DISCOUNTEdit_, :NDSEdit_, :DocNumberEdit_, :DocNumberAddEdit_, :COMMENTSEdit_, :id_client_, :id_, :BEZNDSMINUS_, :BEZNDS_); end;');
          OraQuery.ParamByName('date_').Value             := TDocNewForm(theForm).DOC_DATE.EditValue;
          OraQuery.ParamByName('DISCOUNTEdit_').Value     := StrToInt(TDocNewForm(theForm).DISCOUNTEdit.Text);
          OraQuery.ParamByName('NDSEdit_').Value          := TDocNewForm(theForm).NDSEdit.text;
          OraQuery.ParamByName('DocNumberEdit_').Value    := TDocNewForm(theForm).DocNumberEdit.EditValue;
          OraQuery.ParamByName('DocNumberAddEdit_').Value := TDocNewForm(theForm).DocNumberAddEdit.text;
          OraQuery.ParamByName('COMMENTSEdit_').Value     := TDocNewForm(theForm).COMMENTSEdit.Text;
          OraQuery.ParamByName('id_client_').Value        := TDocNewForm(theForm).doc.FieldByName('ID_CLIENT').AsInteger;
          OraQuery.ParamByName('BEZNDSMINUS_').Value      := BoolToInt(TDocNewForm(theForm).chbMinusNDS.Checked);
          OraQuery.ParamByName('BEZNDS_').Value           := BoolToInt(TDocNewForm(theForm).chbWithoutNDS.Checked);
          OraQuery.ParamByName('id_').Value               := id_root;
          OraQuery.ExecSQL;
          DM.OraSession.Commit;

          doc.Refresh;
          DOC.Locate('ID_DOC', id_root, []);
          ShowMessage('�������� ������ �������!');
        except
        End;
      end
      else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        exit; //2016-05-25
      end;
      TDocNewForm(theForm).DOC.Close;
      TDocNewForm(theForm).doc_data.Close;
      theForm.Free;
    end; // if (DOC.RecordCount = 0) then
  end; //if (DataM.Operator_edit <> 1) then
end;


//
//  �� ENTER �������� ������ �� � ���������
//
procedure TdocsviewForm.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;

//
//  ��������� �� ������  � ���������
//
procedure TdocsviewForm.NumberDocKeyPress(Sender: TObject; var Key: Char);
begin
  AllowOnlyNumber(Key);
end;


//
//  �� ENTER �������� ������ �� ����
//
procedure TdocsviewForm.ClientNickKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  �� ENTER �������� ������ �� ���
//
procedure TdocsviewForm.ClientFioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  �� ENTER �������� ������ �� ���� 1
//
procedure TdocsviewForm.DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  �� ENTER �������� ������ �� ���� 2
//
procedure TdocsviewForm.DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  �� ENTER � ����� ��������� ��������������
//
procedure TdocsviewForm.grid_buh_docs_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Case key of
    VK_RETURN:
      DocEdit_ActionExecute(Sender);
  end;
end;


//
//  ����� ��������������� ������ ��������
//
procedure TdocsviewForm.DOC_DATABeforeEdit(DataSet: TDataSet);
var q1, q2: integer;
begin
{
  Q1 := docsviewForm.DOC_DATA.FieldByName('Quantity').AsInteger;
  docsviewForm.DOC_DATA.RefreshRecord;
  Q2 := docsviewForm.DOC_DATA.FieldByName('Quantity').AsInteger;

  if (Q1 <> Q2) then
  begin
    MessageBox(Handle, PChar('������ ��������! ����� �������� -' + inttostr(Q2)), '��������!', MB_ICONWARNING);
    DataSet.Cancel;
    SysUtils.Abort;
  end;
}  
end;



//----------���������� ������ ���������---------------------------
procedure TdocsviewForm.DocNew_ActionExecute(Sender: TObject);
var id_root:            integer;
    ID_CLIENT:          integer;
    form_copy, res:         integer;
begin

  if (DataM.Operator_edit = false) then
    MessageBox(Handle, '� ��� ��� ���� ��� �������� ���������!', '��������!', MB_ICONWARNING)
  else
  begin

    // ������� ������ �� ��������� �������
    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin buh_pkg.clear_data_temp; end;');
    DM.Ora_SQL.Execute;

    DM.OraSession.Savepoint('Begin_Doc_Add');

    SelectDocForm := TSelectDocForm.Create(Application);
    SelectDocForm.new_type          := new_type;
	  SelectDocForm.department_index  := strtoint(DataM.department_id);
	  SelectDocForm.department_name   := DataM.department_name;
	  SelectDocForm.documenttype_id   := documenttype_id;

    if (new_type=4) then
      SelectDocForm.documenttype_name := '�����'
    else
      SelectDocForm.documenttype_name := '������������� ���������';

    if SelectDocForm.ShowModal = mrOk then
    begin

        clients_add.Close;
        clients_add.Open;

        if (clients_add.RecordCount <> 1) then
        begin
            // ������ ������� �������
            ClientChooserForm := TClientChooserForm.Create(Application);
            ClientChooserForm.Panel1.Visible := true;
            if ClientChooserForm.ShowModal = mrOk then
               id_client := ClientChooserForm.CLIENTS.FieldByName('ID_CLIENTS').AsInteger
            else
            begin
               DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
               exit;
            end;
            ClientChooserForm.Free;
        end
        else
           id_client := clients_add.FieldByName('ID_CLIENT').AsInteger;


        // �������� �����. ��������� ������
        try
          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin buh_pkg.insert_doc(:ID_DOC_TYPE_, :ID_CLIENT_, :ID_DEP_, :NDS_, :OPERATOR_NAME_, :ID_COMPANY_, :ID_BANC_, :ID_, :BEZNDSMINUS_, :BEZNDS_); end;');
          DM.Q_SQL.ParamByName('ID_DOC_TYPE_').Value   := documenttype_id;
          DM.Q_SQL.ParamByName('ID_CLIENT_').Value     := ID_CLIENT;
          DM.Q_SQL.ParamByName('ID_DEP_').Value        := department_index;
          DM.Q_SQL.ParamByName('NDS_').Value           := DataM.nds_default;
          DM.Q_SQL.ParamByName('OPERATOR_NAME_').Value := DataM.Operator_Name;
          DM.Q_SQL.ParamByName('ID_COMPANY_').Value    := DataM.company_default;
          DM.Q_SQL.ParamByName('ID_BANC_').Value       := DataM.banc_default;
//          DM.Q_SQL.ParamByName('v_office').Value       := DM.id_office;
          DM.Q_SQL.ParamByName('ID_').Value            := 0;
          DM.Q_SQL.ParamByName('BEZNDSMINUS_').AsInteger := DataM.bez_nds_minus;
          DM.Q_SQL.ParamByName('BEZNDS_').AsInteger      := DataM.bez_nds_default;
          DM.Q_SQL.Execute;
          id_root := DM.Q_SQL.ParamByName('ID_').Value;

          DOC.Refresh;
          DOC.Locate('ID_DOC', id_root, []);

        except on E: Exception do
          begin
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
            MessageBox(Handle, PChar(E.Message), '������ ��� ���������� ������!', MB_ICONERROR);
            doc.Refresh;
            exit;
          end;
        End;

    //���������� �� ������-----------
        try
          with DM.Q_SQL do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('begin BUH_PKG.DATA_FROM_STOREDOCS(:store_doc_num_add, :store_doc_num_del, :svod, :zatiranie, :V_SERVICE); end;');
            ParamByName('store_doc_num_add').Value := 0;
            ParamByName('store_doc_num_del').Value := 0;
            ParamByName('svod').Value              := id_root;
            ParamByName('zatiranie').Value         := 1;
            ParamByName('V_SERVICE').AsInteger     := 0;
//            ParamByName('v_office').Value          := dm.id_office;
            Execute;
          end;
        except on E: Exception do
          begin
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
            MessageBox(Handle, PChar(E.Message), '������ ��� ��������� �� ������!', MB_ICONERROR);
            doc.Refresh;
            exit;
          end;
        End;


        DocNewForm := TDocNewForm.Create(Application);
        DocNewForm.id := id_root;
        DocNewForm.chbSetOldNumber.Visible := true;

        if DocNewForm.ShowModal = mrOk then
        begin
          try
            DocNewForm.DocNumberEdit.PostEditValue;

            if not DocNewForm.chbSetOldNumber.Checked then
            begin
              with DM.Q_SQL do
              Begin
                Close;
                SQL.Clear;
                SQL.Add('select BUH_PKG.return_doc_number('+inttostr(documenttype_id)+', ''nextval'') from dual');
                Open;
                res := Fields[0].AsInteger;
                if res <> DocNewForm.DocNumberEdit.EditValue then
                begin
                  Application.MessageBox(PChar('��������� �������� ������ ����� �� ������� ('+IntToStr(res)+') ������ ���������� ���� ('+VarToStr(DocNewForm.DocNumberEdit.EditValue)+')!'),'��������!',MB_ICONWARNING);
                end;
                DocNewForm.DocNumberEdit.EditValue := res;
              end;
            end;

            OraQuery.Close;
            OraQuery.SQL.Clear;
            OraQuery.SQL.Add('begin buh_pkg.update_doc(:date_, :DISCOUNTEdit_, :NDSEdit_, :DocNumberEdit_, :DocNumberAddEdit_, :COMMENTSEdit_, :id_client_, :id_, :BEZNDSMINUS_, :BEZNDS_); end;');
            OraQuery.ParamByName('date_').Value             := DocNewForm.DOC_DATE.EditValue;
            OraQuery.ParamByName('DISCOUNTEdit_').Value     := StrToInt(DocNewForm.DISCOUNTEdit.Text);
            OraQuery.ParamByName('NDSEdit_').Value          := DocNewForm.NDSEdit.text;
            OraQuery.ParamByName('DocNumberEdit_').Value    := DocNewForm.DocNumberEdit.EditValue;
            OraQuery.ParamByName('DocNumberAddEdit_').Value := DocNewForm.DocNumberAddEdit.text;
            OraQuery.ParamByName('COMMENTSEdit_').Value     := DocNewForm.COMMENTSEdit.Text;
            OraQuery.ParamByName('id_client_').Value        := DocNewForm.doc.FieldByName('ID_CLIENT').AsInteger;
            OraQuery.ParamByName('id_').Value               := id_root;
            OraQuery.ParamByName('BEZNDSMINUS_').Value      := BoolToInt(DocNewForm.chbMinusNDS.Checked);
            OraQuery.ParamByName('BEZNDS_').Value           := BoolToInt(DocNewForm.chbWithoutNDS.Checked);
            OraQuery.ExecSQL;
            DM.OraSession.Commit;

            doc.Refresh;
            DOC.Locate('ID_DOC', id_root, []);

            // ������� ������� ��������� �� ������� ���������
            form_copy := 0;
            if (documenttype_id = 2) then
            begin
              if MessageDlg('�� ������ ������������ ���. ���������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
              begin
                DM.OraSession.ExecProc('buh_pkg.CREATE_COPY', [id_root, 3]);
                form_copy := 1;
              end;
            end;
            if (documenttype_id = 3) then
            begin
              if MessageDlg('�� ������ ������������ ����-�������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
              begin
                DM.OraSession.ExecProc('buh_pkg.CREATE_COPY', [id_root, 2]);
                form_copy := 1;
              end;
            end;

            ShowMessage('�������� ������ �������!');

            if MessageDlg('�� ������ ����������� ������ ��������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
            begin
              if (documenttype_id = 2) and (form_copy = 1) then
              begin
                if MessageDlg('�� ������ ����������� ����� � ���. ���������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
                  print_copy := 1;
              end;
              if (documenttype_id = 3) and (form_copy = 1) then
              begin
                if MessageDlg('�� ������ ����������� ����� � ����-�������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
                  print_copy := 1;
              end;

              DocPrint_ActionExecute(Sender);
            end;

          except on E: Exception do
            begin
              DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
              MessageBox(Handle, PChar(E.Message), '�� ������� ��������� ��������!', MB_ICONERROR);
            end;
          end;
        End   // if theForm.ShowModal = mrOk then
        else
          DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
        DocNewForm.Free;

    end
    else
    begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
        doc.Cancel;
        doc.Refresh;
        exit;
    end;

  end; // if (DataM.Operator_edit <> 1) then
end;


//
//  ������ ���������� �� ������
//
procedure TdocsviewForm.ToolButton1Click(Sender: TObject);
begin
  DocNew_Action_storeExecute(Sender)
end;


//
//  ������ ��������
//
procedure TdocsviewForm.Delete_ButtonClick(Sender: TObject);
begin
  DocDelete_ActionExecute(Sender);
end;


procedure TdocsviewForm.DOCBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

//
//  �������� ���������� ���������
//
procedure TdocsviewForm.DocDelete_ActionExecute(Sender: TObject);
var i: integer;
begin
if ((grid_buh_docs_v.DataController.DataSet.RecordCount > 0) and (MessageDlg('������� ���������� ���������?',mtConfirmation,[mbYes, mbNo],0) = mrYes)) then
begin
  if (grid_buh_docs_v.DataController.DataSet.Active) then
  begin
    try
      if (grid_buh_docs_v.Controller.SelectedRowCount > 0) then
      begin
        screen.cursor := crhourglass;
        grid_buh_docs_v.DataController.DataSet.DisableControls;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin buh_pkg.delete_docs(:id_doc_); end;');

        for i := 0 to grid_buh_docs_v.Controller.SelectedRowCount-1 do
        begin
          DM.Q_SQL.ParamByName('id_doc_').AsInteger := grid_buh_docs_v.Controller.SelectedRows[i].Values[grid_buh_docs_v.GetColumnByFieldName('ID_DOC').Index];
          DM.Q_SQL.Execute;
        end;

        grid_buh_docs_v.DataController.DataSet.Refresh;
        grid_buh_docs_v.DataController.DataSet.EnableControls;
        screen.cursor := crdefault;
      End;

    except
      on E: Exception do
        begin
          grid_buh_docs_v.DataController.DataSet.EnableControls;
          screen.cursor:=crdefault;
          MessageBox(NULL, PChar(E.Message), '�� ������� ��������� ��������!', MB_ICONERROR);
        end;
    end;
  end;
end;
end;


//
//  ������ ����� �� �����������
//
procedure TdocsviewForm.ToolButton3Click(Sender: TObject);
begin
  DocNew_Action_buhExecute(Sender);
end;


procedure TdocsviewForm.PrintBill_ButtonClick(Sender: TObject);
var tmp_documenttype_id : integer;
begin
  if (doc.RecordCount<>0) then
  begin
    tmp_documenttype_id  := documenttype_id;
    documenttype_id := 6;
    DM.cdsClients.Close;
    DM.cdsClients.ParamByName('group_id').AsInteger := 0;

    DocPrint_ActionExecute(Sender);
    documenttype_id := tmp_documenttype_id;
  end
  else
    MessageBox(Handle, '�������� ���������', '��������!', MB_ICONWARNING);
end;

//
//  ���������� ����� �� �����������
//
procedure TdocsviewForm.DocNew_Action_buhExecute(Sender: TObject);
begin
  new_type := documenttype_id;
  if (new_type = 7) then
    DocNew_Cargo.Execute
  else
    DocNew_ActionExecute(Sender);
end;


// ������� ������������ ���������
procedure TdocsviewForm.DocNew_CargoExecute(Sender: TObject);
var id_root:            integer;
    ID_CLIENT:          integer;
begin
  if (DataM.Operator_edit = false) then
    MessageBox(Handle, '� ��� ��� ���� ��� �������� ���������!', '��������!', MB_ICONWARNING)
  else
  begin
    // ������� ������ �� ��������� �������
    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin buh_pkg.clear_data_temp; end;');
    DM.Ora_SQL.Execute;
    DM.OraSession.Savepoint('Begin_Doc_Add');

    SelectDocForm := TSelectDocForm.Create(Application);
    SelectDocForm.new_type          := new_type;
	  SelectDocForm.department_index  := strtoint(DataM.department_id);
	  SelectDocForm.department_name   := DataM.department_name;
	  SelectDocForm.documenttype_id   := documenttype_id;
    SelectDocForm.documenttype_name := '������������� ���������';

    if SelectDocForm.ShowModal = mrOk then
    begin
        clients_add.Close;
        clients_add.Open;

        if (clients_add.RecordCount <> 1) then
        begin
            // ������ ������� �������
            ClientChooserForm := TClientChooserForm.Create(Application);
            ClientChooserForm.Panel1.Visible := true;
            if ClientChooserForm.ShowModal = mrOk then
               id_client := ClientChooserForm.CLIENTS.FieldByName('ID_CLIENTS').AsInteger
            else
            begin
               DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
               exit;
            end;
            ClientChooserForm.Free;
        end
        else
           id_client := clients_add.FieldByName('ID_CLIENT').AsInteger;


        // �������� �����. ��������� ������
        try
          DM.Q_SQL.Close;
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('begin buh_pkg.insert_doc(:ID_DOC_TYPE_, :ID_CLIENT_, :ID_DEP_, :NDS_, :OPERATOR_NAME_, :ID_COMPANY_, :ID_BANC_, :ID_, :BEZNDSMINUS_, :BEZNDS_); end;');
          DM.Q_SQL.ParamByName('ID_DOC_TYPE_').Value   := documenttype_id;
          DM.Q_SQL.ParamByName('ID_CLIENT_').Value     := ID_CLIENT;
          DM.Q_SQL.ParamByName('ID_DEP_').Value        := department_index;
          DM.Q_SQL.ParamByName('NDS_').Value           := DataM.nds_default;
          DM.Q_SQL.ParamByName('OPERATOR_NAME_').Value := DataM.Operator_Name;
          DM.Q_SQL.ParamByName('ID_COMPANY_').Value    := DataM.company_default;
          DM.Q_SQL.ParamByName('ID_BANC_').Value       := DataM.banc_default;
          DM.Q_SQL.ParamByName('ID_').Value            := 0;
          DM.Q_SQL.ParamByName('BEZNDSMINUS_').AsInteger := DataM.bez_nds_minus;
          DM.Q_SQL.ParamByName('BEZNDS_').AsInteger      := DataM.bez_nds_default;
          DM.Q_SQL.Execute;
          id_root := DM.Q_SQL.ParamByName('ID_').Value;
//          DOC.Refresh;
//          DOC.Locate('ID_DOC', id_root, []);
        except on E: Exception do
          begin
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
            MessageBox(Handle, PChar(E.Message), '������ ��� ���������� ������!', MB_ICONERROR);
            doc.Refresh;
            exit;
          end;
        End;

    //���������� �� ������-----------
        try
          with DM.Q_SQL do
          Begin
            Close;
            SQL.Clear;
            SQL.Add('begin BUH_PKG.SAVE_CARGO_DATA(:id_doc_cargo); end;');
            ParamByName('id_doc_cargo').Value              := id_root;
            Execute;
          end;
        except on E: Exception do
          begin
            DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
            MessageBox(Handle, PChar(E.Message), '������ ��� ��������� �� ������!', MB_ICONERROR);
            doc.Refresh;
            exit;
          end;
        End;

        DocNewForm := TDocNewForm.Create(Application);
        DocNewForm.id := id_root;

        if DocNewForm.ShowModal = mrOk then
        begin
          try
            DocNewForm.DocNumberEdit.PostEditValue;
            DocNewForm.DOC_DATE.PostEditValue;
            OraQuery.Close;
            OraQuery.SQL.Clear;
            OraQuery.SQL.Add('begin buh_pkg.update_doc(:date_, :DISCOUNTEdit_, :NDSEdit_, :DocNumberEdit_, :DocNumberAddEdit_, :COMMENTSEdit_, :id_client_, :id_, :BEZNDSMINUS_, :BEZNDS_); end;');
            OraQuery.ParamByName('date_').Value             := DocNewForm.DOC_DATE.EditValue;
            OraQuery.ParamByName('DISCOUNTEdit_').Value     := StrToInt(DocNewForm.DISCOUNTEdit.Text);
            OraQuery.ParamByName('NDSEdit_').Value          := DocNewForm.NDSEdit.text;
            OraQuery.ParamByName('DocNumberEdit_').Value    := DocNewForm.DocNumberEdit.EditValue;
            OraQuery.ParamByName('DocNumberAddEdit_').Value := DocNewForm.DocNumberAddEdit.text;
            OraQuery.ParamByName('COMMENTSEdit_').Value     := DocNewForm.COMMENTSEdit.Text;
            OraQuery.ParamByName('id_client_').Value        := DocNewForm.doc.FieldByName('ID_CLIENT').AsInteger;
            OraQuery.ParamByName('id_').Value               := id_root;
            OraQuery.ParamByName('BEZNDSMINUS_').Value      := BoolToInt(DocNewForm.chbMinusNDS.Checked);
            OraQuery.ParamByName('BEZNDS_').Value           := BoolToInt(DocNewForm.chbWithoutNDS.Checked);
            OraQuery.ExecSQL;
            DM.OraSession.Commit;

            doc.Refresh;
            DOC.Locate('ID_DOC', id_root, []);

            ShowMessage('�������� ������ �������!');

            if MessageDlg('�� ������ ����������� ������ ��������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
            begin
              DocPrint_ActionExecute(Sender);
            end;

          except on E: Exception do
            begin
              DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
              MessageBox(Handle, PChar(E.Message), '�� ������� ��������� ��������!', MB_ICONERROR);
            end;
          end;
        End;   // if theForm.ShowModal = mrOk then
        DocNewForm.Free;

    end
    else
    begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Add');
        doc.Cancel;
        doc.Refresh;
        exit;
    end;
//    SelectDocForm.Free;

  end; // if (DataM.Operator_edit <> 1) then
end;


//
//  ������ ������ ���������
//
procedure TdocsviewForm.PrintDoc_ButtonClick(Sender: TObject);
begin
  if (doc.RecordCount<>0) then
  begin
    DM.cdsClients.Close;
    DM.cdsClients.ParamByName('group_id').AsInteger := 0;

    DocPrint_ActionExecute(Sender)
  end
  else
    MessageBox(Handle, '�������� ���������', '��������!', MB_ICONWARNING);
end;


//
//  ������ ���������
//
procedure TdocsviewForm.DocPrint_ActionExecute(Sender: TObject);
var theForm: TForm;
    ID_company, ID_BANC:integer;
    Memo1, Memo2: TfrxMemoView;
    dog_num, dog_date: string;
    mOKUD, mOKPO, mOKDP, mNDS, mSumNDS, mNDSMinus, mSumNDS2: TfrxMemoView;
    summ: TfrxReportSummary;
begin
    DM.cdsClients.Close;
    DM.cdsClients.ParamByName('group_id').AsInteger := 0;

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

    TPrintTypeSelectForm(theForm).documenttype_id   := documenttype_id;
    TPrintTypeSelectForm(theForm).documenttype_name := documenttype_name;
    TPrintTypeSelectForm(theForm).Memo1.Text        := DOC.FieldByName('u_address').AsString;
    TPrintTypeSelectForm(theForm).id_client_        := DOC.FieldByName('id_client').AsInteger;
    TPrintTypeSelectForm(theForm).grCargo.Tag       := DOC.FieldByName('ID_CLIENTS_GROUPS').AsInteger;
    TPrintTypeSelectForm(theForm).chb_handcargo.Enabled   := ( DOC.FieldByName('ID_CLIENTS_GROUPS').AsInteger > 2 );

    if (documenttype_id = 1) or (documenttype_id = 6) then
      TPrintTypeSelectForm(theForm).UpDown1.Position := 1
    else
      TPrintTypeSelectForm(theForm).UpDown1.Position := 2;

    DM.CDS_ADDRESS.Close;
    DM.CDS_ADDRESS.ParamByName('id_clients').AsInteger := DOC.FieldByName('id_client').AsInteger;
    DM.CDS_ADDRESS.Open;

// 2014-11-23
// ������� ��������� �� ������
      with OraQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from buh_doc_printset where id_doc ='+doc.FieldByName('id_doc').AsString);
        Open;
        if RecordCount > 0 then
        begin
          TPrintTypeSelectForm(theForm).chb_handcargo.Checked := (FieldByName('hand_cargo').AsInteger = 1);
          if FieldByName('id_clients').AsInteger > 0 then
            DM.cdsClients.Locate('id_clients',FieldByName('id_clients').AsInteger,[]);
        end;
        Close;
      end;
//

    if (theForm.showmodal = mrOk) then
    begin
      DM.cdsClients.Active := TPrintTypeSelectForm(theForm).chb_handcargo.Checked;

// 2014-11-23
// ���� ��������� ��������� ��� ������ ������ �� ����� �����������
      with OraQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('begin buh_pkg.set_print_settings(:ID_DOC_, :hand_cargo_, :id_clients_); end;');
        ParamByName('ID_DOC_').AsInteger     := doc.FieldByName('id_doc').AsInteger;
        ParamByName('hand_cargo_').AsInteger := BoolToInt(TPrintTypeSelectForm(theForm).chb_handcargo.Checked);
        if DM.cdsClients.Active then        
          ParamByName('id_clients_').AsInteger := DM.cdsClientsID_CLIENTS.AsInteger
        else
          ParamByName('id_clients_').AsInteger := 0;
        Execute;
      end;
//

      frxReportNakl.Clear;
      frxReportNakl.AddFunction('function Propis(Value: integer): String','�������������','����� ��������');
      frxReportNakl.AddFunction('function Ruble(Value: integer; Skl: String): String','�������������','�����');
      frxReportNakl.AddFunction('function Kopeika(Value: integer; Skp: String): String','�������������','�������');

// �������� ���������� �� ���������
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

      try
        // �������� ���
        if (documenttype_id = 1) then
          frxReportNakl.LoadFromFile(path+'raports\doc_check.fr3');

        // ���� �������
        if (documenttype_id = 2) then
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

        // �������� ���������
        if (documenttype_id = 3) then
        begin
          if (TPrintTypeSelectForm(theForm).NaKladCB.Checked = true) then
          begin
            frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya.fr3');
          end;

          if (TPrintTypeSelectForm(theForm).NaKlad1CB.Checked = true) then
          begin
            frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
          end;
        end;

        // ����������
        if (documenttype_id = 6) then
        begin
          frxReportNakl.LoadFromFile(path+'raports\doc_reserv.fr3');
        end;


        // ���
        if (documenttype_id = 8) then
        begin
          frxReportNakl.LoadFromFile(path+'raports\doc_upd.fr3');
        end;

        frxReportNakl.PrepareReport(true);
        frxReportNakl.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);


        if (documenttype_id = 2) then
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
            mNDS.Text := '��� ���';
            mSumNDS.Text := '-';
            mSumNDS2.Text := '0';
          end;
{ 2015-12-19
          if (DataM.bez_nds_default = 1) then mNDS.Text := '��� ���';
          if (DataM.bez_nds_default = 1) then mSumNDS.Text := '-';
          if (DataM.bez_nds_default = 1) then mSumNDS.Text := '0';
}
        end;


        // ���
        if (documenttype_id = 8) then
        begin
          Memo1 := frxReportNakl.FindObject('Memo112') as TfrxMemoView;
          Memo2 := frxReportNakl.FindObject('Memo113') as TfrxMemoView;

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
            mNDS.Text := '��� ���';
            mSumNDS.Text := '-';
            mSumNDS2.Text := '0';
          end;
        end;


        if (documenttype_id = 3) then
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
            mNDS.Text := '��� ���';
            mSumNDS.Text := '-';
            mSumNDS2.Text := '0';
          end;
        end;

        if (documenttype_id = 6) then
        begin
          mSumNDS := frxReportNakl.FindObject('Memo36') as TfrxMemoView;
          Memo1 := frxReportNakl.FindObject('Memo83') as TfrxMemoView;
          Memo2 := frxReportNakl.FindObject('Memo84') as TfrxMemoView;
          mNDSMinus := frxReportNakl.FindObject('memSum5') as TfrxMemoView;

          Memo2.Text := '[frxDB_DOC_DATA."SUMM_NDS"]';
          mNDSMinus.Text := '[SUM(<frxDB_DOC_DATA."SUMM_NDS">,bndMaster)]';

          if (DOC.FieldByName('NDS').AsInteger > 0) and (DOC.FieldByName('BEZNDS').AsInteger = 1) and (DOC.FieldByName('BEZNDSMINUS').AsInteger = 1) then
          begin
            mSumNDS.Text := '0';
            Memo1.Text := '0';
            Memo2.Text := '0';
            mNDSMinus.Text := '0';
          end;

          if (DOC.FieldByName('NDS').AsInteger = 0) then
          begin
            mSumNDS.Text := '';
            Memo1.Text := '��� ���';
            Memo2.Text := '-';
            mNDSMinus.Text := '';
          end;
{
          if (DataM.bez_nds_default = 1) then mSumNDS.Text := '';
          if (DataM.bez_nds_default = 1) then
            Memo1.Text := '��� ���';
          if (DataM.bez_nds_default = 1) then
            Memo2.Text := '-'
          else
            Memo2.Text := '[frxDB_DOC_DATA."SUMM_NDS"]';
          if (DataM.bez_nds_default = 1) then
            mNDSMinus.Text := ''
          else
            mNDSMinus.Text := '[SUM(<frxDB_DOC_DATA."SUMM_NDS">,bndMaster)]';
}
          Memo1 := frxReportNakl.FindObject('Memo34') as TfrxMemoView;
          Memo2 := frxReportNakl.FindObject('Memo35') as TfrxMemoView;
        end;





// ������
        if (documenttype_id = 2) or (documenttype_id = 3) or (documenttype_id = 6) then
        begin
          if not OraQuery.IsEmpty then
          begin
             Memo1.Text := '�� ������� '+ OraQuery.FieldByName('prikaz_n').AsString +' �� '+ OraQuery.FieldByName('date_begin').AsString +' �.';
             Memo2.Text := Memo1.Text;
          end
          else
          begin
             Memo1.Text := '';
             Memo2.Text := '';
          end;
        end;
// ----------
{
        if strtoint(DataM.department_id) <> 121 then
        begin
          Memo1 := frxReportNakl.FindObject('MemoTitle') as TfrxMemoView;
          Memo1.Text := ' [frxDB_DOC_DATA."compiled_name_otdel"]';
        end;
}
        frxReportNakl.PrepareReport(true);
        if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
          frxReportNakl.Print
        else
          frxReportNakl.ShowReport;



// �����
        if (Datam.print_copy = 1) then
        //if MessageDlg('�������� ������������� ��������?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          frxReportNakl.Clear;

          if (documenttype_id = 2) then
             frxReportNakl.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
          if (documenttype_id = 3) then
          begin
            if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('09.06.2009')) then
              frxReportNakl.LoadFromFile(path+'raports\doc_faktura_old.fr3')
            else
            begin
              if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('02.09.2010')) then
                 frxReportNakl.LoadFromFile(path+'raports\doc_faktura.fr3')
              else
                 if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('24.01.2012')) then
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_020910.fr3')
                 else
                    frxReportNakl.LoadFromFile(path+'raports\doc_faktura_240112.fr3');
            end;
          end;
          frxReportNakl.PrepareReport;
          frxReportNakl.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);



          if (documenttype_id = 2) then
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
              mNDS.Text := '��� ���';
              mSumNDS.Text := '-';
              mSumNDS2.Text := '0';
            end;
          end;

          if (documenttype_id = 3) then
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
              mNDS.Text := '��� ���';
              mSumNDS.Text := '-';
              mSumNDS2.Text := '0';
            end;
          end;


          if not OraQuery.IsEmpty then
          begin
               Memo1.Text := '�� ������� '+ OraQuery.FieldByName('prikaz_n').AsString +' �� '+ OraQuery.FieldByName('date_begin').AsString +' �.';
               Memo2.Text := Memo1.Text;
          end
          else
          begin
               Memo1.Text := '';
               Memo2.Text := '';
          end;


          if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
            frxReportNakl.Print
          else
            frxReportNakl.ShowReport;
        end;


     	except
     	  on E: Exception do
          MessageBox(Handle, PChar('������ ��� ������ �� ������!'+#10#13+E.Message), '������!', MB_ICONERROR);
      End;

    end;
    DM.cdsClients.Close;
    theForm.Free;
    DOC_DATA.Close;
    DM.CDS_ADDRESS.Close;
    DM.cdsClients.Close;
    dm.banc.Close;
    dm.company.Close;
    OraQuery.Close;
end;


//
//  ������ ������ ������
//
procedure TdocsviewForm.PrintAll_ButtonClick(Sender: TObject);
begin
  ListPrintActionExecute(Sender);
end;


//
//  ������ ������
//
procedure TdocsviewForm.ListPrintActionExecute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount <> 0) then
  try
    grid_buh_docs_v.DataController.DataSource := nil;
    path := ExtractFilePath(Application.ExeName);
    frxReportNakl.LoadFromFile(path+'raports\doc_list.fr3');
    frxReportNakl.PrepareReport;
    Memo1 := frxReportNakl.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := '��������� �� ������ � '+ DateToStr(DateTimePicker1.Date) + ' �� ' + DateToStr(DateTimePicker2.Date);
    Memo1 := frxReportNakl.FindObject('Memo3') as TfrxMemoView;
    Memo1.Text := DataM.department_name;


    Memo1 := frxReportNakl.FindObject('Memo2') as TfrxMemoView;
    Memo1.Text := DM.title_name;

    frxReportNakl.ShowReport;
    grid_buh_docs_v.DataController.DataSource := DOC_DS;
  except on E: Exception do
    begin
      grid_buh_docs_v.DataController.DataSource := DOC_DS;
      ShowMessage('������ ��� ������ �� ������!'+#10#13+'��������� ��������� ��������');
    end;
  end;
end;


//
//  ������ ���������� ������ ��������� �� ������
//
procedure TdocsviewForm.DocNew_Action_storeExecute(Sender: TObject);
begin
  if (documenttype_id = 6) then
    DocNew_Reserv.Execute
  else
  begin
    new_type := 4;
    DocNew_ActionExecute(Sender);
  end;
end;



//
//  ������� �� �������
//
procedure TdocsviewForm.DocNew_ReservExecute(Sender: TObject);
var theForm: TForm;
    id_order, i, id_doc_: integer;
begin
  try
    DM.readparameters();
    theForm := TfrmChoiseReserv.Create(Application);
    if (theForm.ShowModal = mrOk) then
    begin

         TfrmChoiseReserv(theForm).grid_allreserv_v.DataController.DataSet.First;
         try
           if (TfrmChoiseReserv(theForm).grid_allreserv_v.Controller.SelectedRecordCount > 0) then
           begin
           	 screen.cursor:=crhourglass;
             id_doc_  := 0;
             id_order := TfrmChoiseReserv(theForm).grid_allreserv_v.Controller.SelectedRows[i].Values[TfrmChoiseReserv(theForm).grid_allreserv_vID_ORDERS_CLIENTS.index];

      	     DM.StorProc.Close;
             DM.StorProc.StoredProcName := 'buh_pkg.insert_in_buh_head';
             DM.StorProc.Prepare;
             DM.StorProc.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_order;
             DM.StorProc.ParamByName('ID_COMPANY_').AsInteger        := company_default;
             DM.StorProc.ParamByName('ID_BANC_').AsInteger           := banc_default;
             DM.StorProc.ParamByName('NDS_').AsInteger               := nds_default;
             DM.StorProc.ParamByName('id_doc_').AsInteger            := id_doc_;
//             DM.StorProc.ParamByName('v_office').AsInteger           := dm.id_office;
             DM.StorProc.Execute;
             id_doc_ := DM.StorProc.ParamByName('id_doc_').AsInteger;

             if (id_doc_ > 0) then
             begin
     	         DM.StorProc.Close;
               DM.StorProc.Params.Clear;
               DM.StorProc.StoredProcName := 'buh_pkg.insert_in_buh2';
               DM.StorProc.Prepare;

               for i:=0 to TfrmChoiseReserv(theForm).grid_allreserv_v.Controller.SelectedRecordCount-1 do
               begin
                  id_order := TfrmChoiseReserv(theForm).grid_allreserv_v.Controller.SelectedRows[i].Values[TfrmChoiseReserv(theForm).grid_allreserv_vID_ORDERS_CLIENTS.index];
                  DM.StorProc.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_order;
                  DM.StorProc.ParamByName('id_doc_').AsInteger            := id_doc_;
//                  DM.StorProc.ParamByName('v_office').AsInteger           := dm.id_office;
                  DM.StorProc.Execute;
               End;
             end;
             DM.OraSession.Commit;
           end else MessageBox(Handle, '��� ���������� �������!'+#10+'���������� �������� ������ ���� ������ ������ ����� ������ ����', '��������', MB_ICONWARNING);
           Doc_FilterOn();
           screen.cursor:=crdefault;
         except
             on E: Exception do
             begin
                screen.cursor := crdefault;
                MessageBox(Handle, PChar(E.Message), '������', MB_ICONERROR);
             end;
         end;
    end;
  finally
      theForm.Free;
  end;
end;





// ���������� ���������
{
procedure TdocsviewForm.Doc_DepsCBExChange(Sender: TObject);
begin
DOC.Close;
end;

procedure TdocsviewForm.BitBtn4Click(Sender: TObject);
begin
DocNew_ActionExecute(Sender)
end;

procedure TdocsviewForm.Button1Click(Sender: TObject);
begin
DM.OraSession.ExecProc('S_STOREBUH.INS_set_numb', []) ;
end;
}


end.



