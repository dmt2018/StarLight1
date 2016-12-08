unit all_nacl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ComCtrls, ToolWin, StdCtrls, Buttons, ExtCtrls,
  ActnList, Menus, DB, Ora, MemDS, DateUtils,
  jpeg, useful_functions, DASQLMonitor, OraSQLMonitor, GridsEh, Registry,
   ShellAPI, PI_library,
  frxClass, cxLookAndFeelPainters, cxButtons, dxGDIPlusClasses, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCalendar,
  dxBar, dxBarExtItems, cxGridExportLink, frxExportHTML, frxExportRTF,
  frxExportXLS, frxExportPDF, frxDBSet, frxDMPExport, fs_iinterpreter, frxVariables,
  fs_ipascal, fs_itools, frxExportText, Mask, DBCtrlsEh, frxDMPClass,
  DBAccess, PI_Library_reg, cxContainer, cxMaskEdit, cxDropDownEdit, UFilials,
  cxTimeEdit, cxSpinEdit;

type
  Tall_nacl_Form = class(TForm)
    StatusBar: TStatusBar;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    Panel7: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image1: TImage;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    ClientFio: TLabeledEdit;
    ClientNick: TLabeledEdit;
    DateTrue: TCheckBox;
    Label1: TLabel;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    OraStoredProc: TOraStoredProc;
    Panel1: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    STORE_VIEW: TOraQuery;
    STORE_VIEW_DS: TOraDataSource;
    Store_PC: TPageControl;
    Store_TS_1: TTabSheet;
    Bevel10: TBevel;
    Store_TS_2: TTabSheet;
    Bevel9: TBevel;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Image2: TImage;
    Panel6: TPanel;
    Image3: TImage;
    Panel8: TPanel;
    Image4: TImage;
    Label_time1: TLabel;
    Label_time2: TLabel;
    aList1: TAction;
    aList2: TAction;
    aList3: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    CheckBox1: TCheckBox;
    frxReport1: TfrxReport;
    Panel3: TPanel;
    Close_BitBtn: TcxButton;
    aDocNewOrder: TAction;
    BitBtn1: TcxButton;
    grid_st: TcxGrid;
    grid_st_v: TcxGridDBTableView;
    st_CODE: TcxGridDBColumn;
    st_H_CODE: TcxGridDBColumn;
    st_f_type: TcxGridDBColumn;
    st_F_SUB_TYPE: TcxGridDBColumn;
    st_FULL_NAME: TcxGridDBColumn;
    st_SPESIFICATION: TcxGridDBColumn;
    st_QUANTITY: TcxGridDBColumn;
    st_PRICE: TcxGridDBColumn;
    st_QUANTITY_PRICE: TcxGridDBColumn;
    st_COUNTRY: TcxGridDBColumn;
    grid_st_l: TcxGridLevel;
    st_RESERV: TcxGridDBColumn;
    SaveDialog7: TSaveDialog;
    st_Hol_type: TcxGridDBColumn;
    grid_allnakl: TcxGrid;
    grid_allnakl_v: TcxGridDBTableView;
    galn_DOC_NUMBER: TcxGridDBColumn;
    galn_DOC_DATE: TcxGridDBColumn;
    galn_DOC_DATE_REAL: TcxGridDBColumn;
    galn_QUANTITY_ALL: TcxGridDBColumn;
    galn_PRICE_ALL: TcxGridDBColumn;
    galn_COMMENTS: TcxGridDBColumn;
    grid_allnakl_vID_DOC: TcxGridDBColumn;
    grid_allnakl_vID_DOC_TYPE: TcxGridDBColumn;
    grid_allnakl_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_allnakl_vDEPARTMENT_NAME: TcxGridDBColumn;
    grid_allnakl_vOPERATOR_NAME: TcxGridDBColumn;
    grid_allnakl_vID_CLIENT: TcxGridDBColumn;
    galn_NICK: TcxGridDBColumn;
    galn_FIO: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_OLD: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_NEW: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_allnakl_vINV_ID: TcxGridDBColumn;
    grid_allnakl_vORDER_ID: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_DATE: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_allnakl_vSUPLIER: TcxGridDBColumn;
    grid_allnakl_l: TcxGridLevel;
    grid_st_vN_ID: TcxGridDBColumn;
    st_COLOUR: TcxGridDBColumn;
    grid_st_vFT_ID: TcxGridDBColumn;
    grid_st_vFST_ID: TcxGridDBColumn;
    grid_st_vNBUTTON: TcxGridDBColumn;
    grid_st_vHOL_SUB_TYPE: TcxGridDBColumn;
    grid_st_vBUT_NAME: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    mbtn_expand: TdxBarButton;
    mbtn_collapse: TdxBarButton;
    pm_stock: TdxBarPopupMenu;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    aClearFilter: TAction;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    aChoiseType: TAction;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    fr_doc_data_ds: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    fr_DOC_DS: TfrxDBDataset;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxUserDataSet1: TfrxUserDataSet;
    fsScript1: TfsScript;
    fsPascal1: TfsPascal;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    aArtSearch: TAction;
    aNameSearch: TAction;
    Panel_fill: TPanel;
    DBEdit_fill: TDBEditEh;
    Label3: TLabel;
    Label4: TLabel;
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
    docID_OFFICE: TIntegerField;
    docBRIEF: TStringField;
    grid_st_vFULL_NAME: TcxGridDBColumn;
    grid_st_vLEN: TcxGridDBColumn;
    grid_st_vPACK: TcxGridDBColumn;
    grid_st_vC_ID: TcxGridDBColumn;
    grid_st_vCOL_ID: TcxGridDBColumn;
    grid_st_vS_ID: TcxGridDBColumn;
    grid_st_vS_NAME_RU: TcxGridDBColumn;
    grid_st_vID_OFFICE: TcxGridDBColumn;
    grid_st_vBRIEF: TcxGridDBColumn;
    grid_allnakl_vID_OFFICE: TcxGridDBColumn;
    grid_allnakl_vBRIEF: TcxGridDBColumn;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    aInvoice: TAction;
    tbnTovarExp: TToolButton;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    chbCargo: TCheckBox;
    pmOutStore: TPopupMenu;
    mnMakeFile: TMenuItem;
    mnMakeLink: TMenuItem;
    aInvoiceLink: TAction;
    PopupMenu1: TPopupMenu;
    mnExcel: TMenuItem;
    N4: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    docOFFICE: TStringField;
    grid_allnakl_vOFFICE: TcxGridDBColumn;
    mnLoadFooter2: TdxBarButton;
    mnLoadCell2: TdxBarButton;
    STORE_VIEWN_ID: TFloatField;
    STORE_VIEWFULL_NAME: TStringField;
    STORE_VIEWF_TYPE: TStringField;
    STORE_VIEWF_SUB_TYPE: TStringField;
    STORE_VIEWCODE: TStringField;
    STORE_VIEWH_CODE: TStringField;
    STORE_VIEWLEN: TIntegerField;
    STORE_VIEWPACK: TIntegerField;
    STORE_VIEWCOLOUR: TStringField;
    STORE_VIEWCOUNTRY: TStringField;
    STORE_VIEWQUANTITY: TFloatField;
    STORE_VIEWPRICE: TFloatField;
    STORE_VIEWFT_ID: TFloatField;
    STORE_VIEWFST_ID: TFloatField;
    STORE_VIEWC_ID: TFloatField;
    STORE_VIEWCOL_ID: TFloatField;
    STORE_VIEWS_ID: TFloatField;
    STORE_VIEWS_NAME_RU: TStringField;
    STORE_VIEWQUANTITY_PRICE: TFloatField;
    STORE_VIEWNBUTTON: TFloatField;
    STORE_VIEWRESERV: TFloatField;
    STORE_VIEWSPESIFICATION: TStringField;
    STORE_VIEWHOL_TYPE: TStringField;
    STORE_VIEWHOL_SUB_TYPE: TStringField;
    STORE_VIEWBUT_NAME: TStringField;
    STORE_VIEWCOMPILED_NAME_OTDEL: TStringField;
    STORE_VIEWID_OFFICE: TIntegerField;
    STORE_VIEWBRIEF: TStringField;
    stNotUse: TcxStyle;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    STORE_VIEWNOTUSE: TIntegerField;
    grid_st_vNOTUSE: TcxGridDBColumn;
    docSUM_QUANTITY: TFloatField;
    grid_allnakl_vSUM_QUANTITY: TcxGridDBColumn;
    N1: TMenuItem;
    mnMakeMSKLink: TMenuItem;
    docGROUP_NAME: TStringField;
    grid_allnakl_vGROUP_NAME: TcxGridDBColumn;
    doc_dataID_DOC: TFloatField;
    doc_dataN_ID: TFloatField;
    doc_dataCODE: TStringField;
    doc_dataH_CODE: TStringField;
    doc_dataF_TYPE: TStringField;
    doc_dataF_SUB_TYPE: TStringField;
    doc_dataFULL_NAME: TStringField;
    doc_dataQUANTITY: TIntegerField;
    doc_dataQUANTITY_NOW: TFloatField;
    doc_dataSTORE_TYPE_NAME: TStringField;
    doc_dataSTORE_TYPE: TIntegerField;
    doc_dataPRICE_LIST: TFloatField;
    doc_dataQUANTITY_PRICE: TFloatField;
    doc_dataPRICE_PERCENT: TFloatField;
    doc_dataPRICE: TFloatField;
    doc_dataGTD: TStringField;
    doc_dataSPESIFICATION: TStringField;
    doc_dataS_NAME_RU: TStringField;
    doc_dataCOMPILED_NAME_OTDEL: TStringField;
    doc_dataCOLOUR: TStringField;
    doc_dataCOUNTRY: TStringField;
    doc_dataSPEC_PRICE: TIntegerField;
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure DocNewFrom_ActionExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure new_doc(new_type: integer);
    procedure Doc_FilterOn();
    procedure Store_FilterOn();
    procedure ToolButton23Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Store_PCChange(Sender: TObject);
    procedure aList1Execute(Sender: TObject);
    procedure aList2Execute(Sender: TObject);
    procedure aList3Execute(Sender: TObject);
    procedure Close_BitBtnClick(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientNickKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientFioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Doc_DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_allnakl_vDblClick(Sender: TObject);
    procedure grid_allnakl_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mbtn_expandClick(Sender: TObject);
    procedure mbtn_collapseClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure aChoiseTypeExecute(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure print_doc(param: integer);
    function frxReport1UserFunction(const MethodName: String;
      var Params: Variant): Variant;
    procedure aArtSearchExecute(Sender: TObject);
    procedure aNameSearchExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_st_vDataControllerFilterChanged(Sender: TObject);
    procedure grid_st_vDblClick(Sender: TObject);
    procedure grid_st_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure STORE_VIEWBeforeOpen(DataSet: TDataSet);
    procedure docBeforeOpen(DataSet: TDataSet);
    procedure aInvoiceExecute(Sender: TObject);
    procedure tbnTovarExpClick(Sender: TObject);
    procedure aInvoiceLinkExecute(Sender: TObject);
    procedure pmOutStorePopup(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure grid_st_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mnMakeMSKLinkClick(Sender: TObject);
  private
    path: string;
    param_: integer;
    { Private declarations }
  public
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    { Public declarations }
  end;

var
  all_nacl_Form: Tall_nacl_Form;
  Doc_SQL_beg: string;
  Storeview_SQL_beg : string;

implementation

uses global_date, nacl_new, spisanie, utsenka, global, inventory, prihod, dataM,
client_choos, obnul, invchooser,
  oper_select, UChoiseType, UFullInfo;

{$R *.dfm}


//
//  Создаем форму
//
procedure Tall_nacl_Form.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[0].Text :='  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text :='  Оператор: '+DataM.Operator_Name;
  Label1.Caption := DataM.department_name +' :: Накладные продаж';
  Doc_DateTimePicker1.Date := IncDay(Date,0);
  Doc_DateTimePicker2.Date := Date;

  //склад-----
  Store_PC.ActivePageIndex:=0;
  Store_FilterOn();
  //----------

  PageControl.ActivePageIndex:=0;
  Doc_FilterOn();
end;
//------------------------------------------------------------------------------


//
// Выбираем данные из склада
//
procedure Tall_nacl_Form.Store_FilterOn();
begin
  try
    	screen.cursor:=crhourglass;
  	  STORE_VIEW.Close;
	    STORE_VIEW.ParamByName('id_dep_').Value := strtoint(DataM.department_id);

      if (Store_PC.ActivePage.Name='Store_TS_1') then
	      STORE_VIEW.ParamByName('store_').Value := 1
      else
	      STORE_VIEW.ParamByName('store_').Value := 2;

	    STORE_VIEW.ParamByName('button_').Value := 0;
    	STORE_VIEW.Open;

      grid_st_v.DataController.Groups.FullExpand;
	    screen.cursor:=crdefault;
  except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
  End;
end;
//------------------------------------------------------------------------------


//
// Фильтрация документов--------------------------------------------------------
//
procedure Tall_nacl_Form.Doc_FilterOn();
begin
	if ((DateTrue.Checked=false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
  then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
    try
      Doc_DateTimePicker1.PostEditValue;
      Doc_DateTimePicker2.PostEditValue;

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

  	  DOC.ParamByName('ID_DOC_TYPE_').Value := 4;

	    DOC.ParamByName('fio_').AsString := trim(ClientFio.Text);
	    DOC.ParamByName('nick_').AsString := trim(ClientNick.Text);

      if chbCargo.Checked then
    	  DOC.ParamByName('V_CARGO').Value := 1
      else
    	  DOC.ParamByName('V_CARGO').Value := 0;

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
//  Показать список накладных
//
procedure Tall_nacl_Form.BitBtn1Click(Sender: TObject);
begin
  Doc_FilterOn();
  PageControl.ActivePageIndex := 2;
  grid_allnakl.SetFocus;
  tbnTovarExp.Enabled := ((PageControl.ActivePageIndex = 2) and (not grid_allnakl_v.DataController.DataSet.IsEmpty));
end;


//
//  При закрытии формы сохраняем таблицу
//
procedure Tall_nacl_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_Sklad_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_sklad';
  grid_st_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/StoreHouse_NaklList_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_list';
  grid_allnakl_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  STORE_VIEW.Close;
  DOC.Close;
end;


//
//  При показе формы восстанавливаем таблицу
//
procedure Tall_nacl_Form.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_Sklad_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_sklad';
  grid_st_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/StoreHouse_NaklList_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'store_nakl_list';
  grid_allnakl_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  frxReport1.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
  frxReport1.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
  frxReport1.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');

  grid_st_vBRIEF.Visible := not (GetOfficeID = DM.id_office);
  grid_allnakl_vBRIEF.Visible := grid_st_vBRIEF.Visible;

  dxBarButton1.Down := st_CODE.Visible;
  dxBarButton2.Down := st_H_CODE.Visible;
  dxBarButton3.Down := st_Hol_type.Visible;
  dxBarButton4.Down := st_f_type.Visible;
  dxBarButton5.Down := st_F_SUB_TYPE.Visible;
  dxBarButton6.Down := st_FULL_NAME.Visible;
  dxBarButton7.Down := st_SPESIFICATION.Visible;
  dxBarButton8.Down := st_QUANTITY.Visible;
  dxBarButton9.Down := st_RESERV.Visible;
  dxBarButton10.Down := st_PRICE.Visible;
  dxBarButton11.Down := st_QUANTITY_PRICE.Visible;
  dxBarButton12.Down := st_COUNTRY.Visible;
  dxBarButton13.Down := st_COLOUR.Visible;

  DocNewManually_Action.Enabled := DataM.Operator_edit;
  DocNewScaner_Action.Enabled := DataM.Operator_edit;
  aDocNewOrder.Enabled := DataM.Operator_edit;
  ToolButton4.Enabled := DataM.Operator_edit;

  DocPrint_Action.Enabled := DataM.Operator_print;
  DocListPrint_Action.Enabled := DataM.Operator_print;
  dxBarButton15.Enabled := DataM.Operator_print;

  //grid_allnakl_v.OptionsView.Footer:=true;
end;


//
// Развернуть списки
//
procedure Tall_nacl_Form.mbtn_expandClick(Sender: TObject);
begin
  grid_st_v.DataController.Groups.FullExpand;
end;


//
// Свернуть списки
//
procedure Tall_nacl_Form.mbtn_collapseClick(Sender: TObject);
begin
  grid_st_v.DataController.Groups.FullCollapse;
end;


//
//  При смене основного скалада и склада уценки меняем данные
//
procedure Tall_nacl_Form.Store_PCChange(Sender: TObject);
begin
  Store_FilterOn();
end;


// Закрыть просмотр CTRL+1
procedure Tall_nacl_Form.aList1Execute(Sender: TObject);
begin
  PageControl.TabIndex := 0;
  PageControlChange(Sender);
end;


// Просмотр склада CTRL+2
procedure Tall_nacl_Form.aList2Execute(Sender: TObject);
begin
  PageControl.TabIndex := 1;
  PageControlChange(Sender);
end;


// Просмотр накладных CTRL+3
procedure Tall_nacl_Form.aList3Execute(Sender: TObject);
begin
  PageControl.TabIndex := 2;
  PageControlChange(Sender);
end;


// Ставим фокус на гриды
procedure Tall_nacl_Form.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
     grid_st.SetFocus;
  if PageControl.ActivePageIndex = 2 then
     grid_allnakl.SetFocus;
end;


//  Кнопка закрыть
procedure Tall_nacl_Form.Close_BitBtnClick(Sender: TObject);
begin
  close();
end;


//
// Ввод накладной вручную
//
procedure Tall_nacl_Form.DocNewManually_ActionExecute(Sender: TObject);
begin
  new_doc(1);
end;


//
// Ввод накладной со сканера
//
procedure Tall_nacl_Form.DocNewScaner_ActionExecute(Sender: TObject);
begin
  new_doc(2);
end;


//
// Ввод накладной с заказа
//
procedure Tall_nacl_Form.DocNewFrom_ActionExecute(Sender: TObject);
begin
  new_doc(3);
end;


//
//  Печатаем документ
//
procedure Tall_nacl_Form.print_doc(param: integer);
var Memo  : TfrxDMPMemoView;
    Memo1 : TfrxMemoView;
    repsummary : TfrxReportSummary;
    course: real;
begin
  try
    if DM.id_office = 1 then
    begin
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin dicts.get_curse(:ddate_, :CURSOR_); end;');
      DM.Q_SQL.ParamByName('ddate_').AsDate := StrToDate(GlobalDate_FORMAT);
      DM.Q_SQL.ParamByName('CURSOR_').AsCursor;
      DM.Q_SQL.Open;
      course := DM.Q_SQL.FieldByName('SHEV_EUR').AsCurrency;
      DM.Q_SQL.Close;
    end else course := 1;

    if course = 0 then
    begin
        MessageBox(Handle, PChar('Курс на '+GlobalDate_FORMAT+' равен 0. Необходимо ввести курс'), 'Ощибка!', MB_ICONERROR);
        exit;
    end;

    // Первый вариант печати. Через свойство DotMatrixReport
    frxReport1.DotMatrixReport := CheckBox1.Checked;
    if (CheckBox1.Checked = true) then
    begin
      if ( strtoint(DataM.department_id) = 121 ) then
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot.fr3')
      else
        frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot_code.fr3');

      //frxReport1.LoadFromFile(path+'raports\prodaza_dot.fr3');
      frxDotMatrixExport1.PageBreaks := false;

      if (strtoint(DataM.department_id) = 61) then
        frxDotMatrixExport1.OEMConvert := true
      else
        frxDotMatrixExport1.OEMConvert := false;

      if DM.id_office = 1 then
      begin
        Memo := frxReport1.FindObject('DMPMemo30') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo := frxReport1.FindObject('DMPMemo35') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро,';

        Memo := frxReport1.FindObject('DMPMemo29') as TfrxDMPMemoView;
        Memo.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(grid_allnakl_v.DataController.DataSet.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end
      else
      begin
        repsummary := frxReport1.FindObject('ReportSummary1') as TfrxReportSummary;
        repsummary.Visible := false;
      end;
    end
    else
    begin
      frxReport1.LoadFromFile(path+'raports\prodaza.fr3');

      if DM.id_office = 1 then
      begin
        Memo1 := frxReport1.FindObject('Memo23') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := frxReport1.FindObject('Memo29') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := frxReport1.FindObject('Memo24') as TfrxMemoView;
        Memo1.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(grid_allnakl_v.DataController.DataSet.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end
      else
      begin
        Memo1 := frxReport1.FindObject('Memo20') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo22') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo23') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo24') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo25') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo26') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo27') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := frxReport1.FindObject('Memo29') as TfrxMemoView;
        Memo1.Visible := false;
      end;
    end;
    frxReport1.PrepareReport;

    if (param = 1) then
      frxReport1.Print
    else
      frxReport1.ShowReport;

 	except
     	on E: Exception do
        MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
  End;
end;


//Создание документа-----------------------------------------------------------
procedure Tall_nacl_Form.new_doc(new_type: integer);
var
  theForm: TForm;
  SP_DOC_DATE: tDateTime;
  SP_ID_DOC_TYPE: integer;
  SP_OTDEL: integer;
  SP_COMMENTS: string;
  SP_OPERATOR_NAME: string;
  SP_ID_CLIENT: integer;
  SP_CLIENT_CODE: string;
  BLOCK1_CLIENT: integer;
  active_CLIENT: integer;
  ind: integer;
  id_order: integer;
  err_msg: string;
begin
{
new_type
1 - создание документа вручную
2 - создание со сканера
3 - создание документа из другого документа
}

    if GetOfficeID <> DM.id_office then
    begin
      MessageBox(Handle, 'Формировать продажи можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

try
  DM.OraSession.Savepoint('Begin_Doc_Edit');
  SP_ID_CLIENT  := 0;
  BLOCK1_CLIENT := 0;
  active_CLIENT := 0;
	//-----------------Продажа-------------------------

  if (new_type = 1) or (new_type = 2) then
  begin
    // Считывание со сканера
    if (new_type = 2) then
    begin
		  readscaner();
      dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
  		SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt', dm.Scan, dm.OraSQL_Scan);
      deletefile(path+'scan/1.txt');
      if alert_str <> '' then
         MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);

  			if (SP_CLIENT_CODE <> '') then
  			begin
     		  DM.service_OraQuery.SQL.Clear;
      		DM.service_OraQuery.SQL.Add('SELECT active, CCODE, ID_CLIENTS, nick, BLOCK1 FROM CLIENTS where id_office='+IntToStr(dm.id_office)+' and CCODE='''+SP_CLIENT_CODE+'''');
      		DM.service_OraQuery.Open;
      		SP_ID_CLIENT  := DM.service_OraQuery.FieldByName('ID_CLIENTS').AsInteger;
      		BLOCK1_CLIENT := DM.service_OraQuery.FieldByName('BLOCK1').AsInteger;
  			end;
    end;

    // Если нет клиента, то предлагаем форму с клиентами (добавление вручную)
    if (SP_ID_CLIENT = 0) then
    begin
      try
        clientchoosForm := TclientchoosForm.Create(Application);
	      if clientchoosForm.ShowModal = mrOk then
	      begin
        	SP_ID_CLIENT  := clientchoosForm.CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
      	  BLOCK1_CLIENT := clientchoosForm.CLIENTS.FieldByName('BLOCK1').AsInteger;
        end
	      else
	      begin
	       	DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
	     	  exit;
  	    end;
        clientchoosForm.CLIENTS.Close;
      finally
        clientchoosForm.Free;
      end;
    end;

    // Если клиент заблокирован или его нет, то ругаемся
    if (SP_ID_CLIENT <> 0) and (BLOCK1_CLIENT <> 0) then
    begin
      MessageBox(Handle, 'Клиент заблокирован бухгалтерией!'#10'Накладная не может быть оформлена', 'Предупреждение', MB_ICONSTOP);
      DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
      exit;
    end;

    // Если нет клиента, то ругаемся
    if (SP_ID_CLIENT = 0) then
	  begin
      MessageBox(Handle, 'Невыбран клиент!'#10'Накладная не может быть оформлена', 'Предупреждение', MB_ICONSTOP);
      DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
      exit;
  	end;
  end;   // if (new_type=1) or (new_type=2) then
  //---------------------------------------------------

  // из заказа-------------------------
	if (new_type=3) then
	begin
    try
	    clientchoosForm := TclientchoosForm.Create(Application);
	    clientchoosForm.PanelOrder.Visible:=true;

    	try
      	clientchoosForm.Oder.Close;
      	clientchoosForm.Oder.Open;
      except
        on E: Exception do
          begin
            MessageBox(Handle, PChar(E.Message), 'Ошибка открытия заказов', MB_ICONERROR);
   	        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
	          exit;
          end;
      End;

	    if clientchoosForm.ShowModal = mrOk then
	    begin
        if clientchoosForm.Oder.RecordCount > 0 then
        begin
	        //переносим из заказа
	      	try
          	id_order      := clientchoosForm.Oder.FieldByName('ID_ORDERS_CLIENTS').AsInteger;
  	        DM.OraSession.ExecProc('STORE_PKG.DATA_FROM_ORDER', [id_order,0]) ;
	          SP_ID_CLIENT  := clientchoosForm.CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
	        except on E: Exception do
            begin
              MessageBox(Handle, PChar(E.Message), 'Ошибка открытия заказов', MB_ICONERROR);
    	        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
	            exit;
            end;
	        End;
        end;
	    end
	    else
	    begin
	        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
	        exit;
	    end;
    finally
      clientchoosForm.Free;
    end;
	end; // if (new_type=3) then
  //------------------------------------------



//
//  Начинаем ввод накладной с данными по клиенту
//
  	naclnewForm := TnaclnewForm.Create(Application);
	  naclnewForm.department_index   := strtoint(DataM.department_id);
  	naclnewForm.department_name    := DataM.department_name;
	  naclnewForm.client_id          := SP_ID_CLIENT;
    naclnewForm.Edit_Order_Id.Text := inttostr(id_order);

    if (new_type=3) then
      naclnewForm.AddedCB.Checked := true;

    // Если все ОК, то записываем
    if naclnewForm.ShowModal = mrOk then
    begin
			try
			    SP_DOC_DATE      := DataM.GlobalDate;
	        SP_ID_DOC_TYPE   := 4;
	        SP_COMMENTS      := naclnewForm.EditComments.Text;
	        SP_OPERATOR_NAME := DataM.Operator_NAME;
	        SP_OTDEL         := strtoint(DataM.department_id);
          SP_ID_CLIENT     := naclnewForm.CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
         	OraStoredProc.ParamByName('SP_ID_CLIENT').AsInteger   := SP_ID_CLIENT;
          OraStoredProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
          OraStoredProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
          OraStoredProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
          OraStoredProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
          OraStoredProc.ParamByName('SP_Order_ID').AsInteger    := id_order;
          OraStoredProc.Execute;
		 	except on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
    			DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
          naclnewForm.Free;
		    	exit;
        end;
	    End;

      err_msg :=  OraStoredProc.ParamByName('out_message').AsString;

      if (err_msg<>'') then
			begin
        MessageBox(Handle, PChar(err_msg), 'Результат с ошибкой!', MB_ICONERROR);
				DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        naclnewForm.Free;
				exit;
			end;

      // если БЕЗ ошибки
	    if (err_msg='') then
      begin
         DM.OraSession.Commit;
         MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
         Doc.Refresh;

         DM.D_IDD.SQL.Clear;
         DM.D_IDD.SQL.Add('SELECT get_office_unique_curr(''STORE_DOC_SET_ID'') as nn from DUAL');
         DM.D_IDD.Open;
         ind := DM.D_IDD.FieldByName('nn').AsInteger;
         DOC.Locate('ID_DOC', ind, []);

			   if MessageDlg('Вы хотите распечатать данный документ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
			   begin
            try
                print_doc(1);
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
			   end;
     		 STORE_VIEW.Refresh;
      end;
			//-------
  	end
	  else
  	begin
	   	DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
      naclnewForm.Free;
	 	  exit;
  	end;

except
    on E: Exception do
    begin
      screen.cursor := crdefault;
	  	DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
      MessageBox(Handle, PChar(E.Message), 'Ошибка ввода накладной', MB_ICONERROR);
    end;
End;

end;
//------------------------------------------------------------------------------


//
//  Печать документа
//
procedure Tall_nacl_Form.ToolButton23Click(Sender: TObject);
begin
  try
  if (doc.RecordCount <> 0) then
  begin
    print_doc(0);
  end;
 	except
   	on E: Exception do
       MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
 	End;
end;


//
//  ЕНТЕР на № документа
//
procedure Tall_nacl_Form.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  ЕНТЕР на коде клиента
//
procedure Tall_nacl_Form.ClientNickKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  ЕНТЕР на ФИО клиента
//
procedure Tall_nacl_Form.ClientFioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  ЕНТЕР на дате 1
//
procedure Tall_nacl_Form.Doc_DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  ЕНТЕР на дате 2
//
procedure Tall_nacl_Form.Doc_DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;


//
//  Для рапорта готовим переменныеs
//
function Tall_nacl_Form.frxReport1UserFunction(const MethodName: String;
  var Params: Variant): Variant;
begin
  try
    if (UpperCase(MethodName) = 'PROPIS') then
      Result := Propis( abs(Trunc(Params[0])) );
    if (UpperCase(MethodName) = 'RUBLE') then
      Result := Ruble( abs(Trunc(Params[0])), Params[1] );
    if (UpperCase(MethodName) = 'KOPEIKA') then
      Result := Kopeika( abs(Trunc(Params[0])), Params[1] );
  except
  end;
end;


//
// Просмотр документов----------------------------------------------------------
//
procedure view_doc(ID_DOC:integer);
var theForm: TForm;
begin
  with all_nacl_Form do
    if (DOC.RecordCount <> 0) then
    begin
      try
        theForm := TnaclnewForm.Create(Application);
        TnaclnewForm(theForm).ID   := ID_DOC;
        TnaclnewForm(theForm).N_ID := 0;
        theForm.ShowModal;
      finally
        theForm.Free;
      end;
    end;
end;


//
//  Просмотр накладной
//
procedure Tall_nacl_Form.grid_allnakl_vDblClick(Sender: TObject);
begin
  view_doc(grid_allnakl_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
end;


//
//  Просмотр накладной по ЕНТЕР
//
procedure Tall_nacl_Form.grid_allnakl_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    view_doc(grid_allnakl_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger);
  end;
//grid_allnakl_v.Controller.IsFilterRowFocused
  if (Key = VK_SPACE) then
  begin
    grid_allnakl_v.Controller.FocusNextRecordWithSelection(grid_allnakl_v.Controller.FocusedRowIndex, true, true, true, true);
//    grid_allnakl_v.ViewData.DataController.SelectRows(grid_allnakl_v.Controller.FocusedRowIndex,grid_allnakl_v.Controller.FocusedRowIndex);
//    grid_allnakl_v.ViewData.DataController.GotoNext;
  end;
end;


//
//  Печать списка
//
procedure Tall_nacl_Form.ToolButton2Click(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (doc.RecordCount <> 0) then
  try
    MakeSortForPrint(TOraQuery(grid_allnakl_v.DataController.DataSet),grid_allnakl_v);
    grid_allnakl_v.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(path+'raports\prodaza_list.fr3');
    frxReport1.PrepareReport;
    Memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Документы за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

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
    grid_allnakl_v.DataController.DataSet.EnableControls;
  except
    on E: Exception do
    begin
       grid_allnakl_v.DataController.DataSet.DisableControls;
       MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
    end;
  End;
end;
//------------------------------------------------------------------------------


//
// Минусовая
//
procedure Tall_nacl_Form.ToolButton4Click(Sender: TObject);
var IID_DOC: integer;
    ind: integer;
begin
  if (PageControl.ActivePageIndex = 2) and  (doc.RecordCount <> 0) then
  begin

    if GetOfficeID <> DM.id_office then
    begin
      MessageBox(Handle, 'Минусовать можно только для своего офиса', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

  try
  	IID_DOC := doc.FieldByName('ID_DOC').AsInteger;

  	if (IID_DOC <> 0) then
	  begin
		  if MessageDlg('Создать минусовую накладную для выделенного документа?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  		begin
  			try
    			DM.OraSession.Savepoint('Begin_Doc_Edit');

          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.add('delete from tmp_exp_doc');
          DM.Q_SQL.Execute;

	    		DM.OraSession.ExecProc('STORE_PKG.doc_new_from_store_doc', [IID_DOC, ind]);
		 	  except on E: Exception do
          begin
			      DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
            MessageBox(Handle, PChar(E.Message), 'Ошибка ввода минусовой', MB_ICONERROR);
	  		    exit;
          end;
        End;

  			DM.OraSession.Commit;
        MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
  			STORE_VIEW.Refresh;
        Doc.Refresh;
        ind := DM.OraSession.ParamByName('out_docid').AsInteger;
        DOC.Locate('ID_DOC', ind, []);

        if MessageDlg('Вы хотите распечатать данный документ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          try
              print_doc(1);
          except
            	on E: Exception do MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
          End;
        end;
		  end; // if MessageDlg('Создать минусовую накладную для выделенного документа?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
	  end;

  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка ввода минусовой', MB_ICONERROR);
  End;
  end;
end;


procedure Tall_nacl_Form.ToolButton6Click(Sender: TObject);
begin

end;

//
//  НАСТРОЙКА СТОЛБЦОВ
//
procedure Tall_nacl_Form.dxBarButton1Click(Sender: TObject);
begin
  st_CODE.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton2Click(Sender: TObject);
begin
  st_H_CODE.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton3Click(Sender: TObject);
begin
  st_Hol_type.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton4Click(Sender: TObject);
begin
  st_f_type.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton5Click(Sender: TObject);
begin
  st_F_SUB_TYPE.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton6Click(Sender: TObject);
begin
  st_FULL_NAME.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton7Click(Sender: TObject);
begin
  st_SPESIFICATION.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton8Click(Sender: TObject);
begin
  st_QUANTITY.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton9Click(Sender: TObject);
begin
  st_RESERV.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton10Click(Sender: TObject);
begin
  st_PRICE.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton11Click(Sender: TObject);
begin
  st_QUANTITY_PRICE.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton12Click(Sender: TObject);
begin
  st_COUNTRY.Visible := TdxBarButton(Sender).Down;
end;

procedure Tall_nacl_Form.dxBarButton13Click(Sender: TObject);
begin
  st_COLOUR.Visible := TdxBarButton(Sender).Down;
end;


//
//  Очистка фильтров
//
procedure Tall_nacl_Form.aClearFilterExecute(Sender: TObject);
begin
  if (PageControl.ActivePageIndex = 1) then
      grid_st_v.DataController.Filter.Clear;
  if (PageControl.ActivePageIndex = 2) then
      grid_allnakl_v.DataController.Filter.Clear;
end;


//
//  Выводим окно для выбора типа
//
procedure Tall_nacl_Form.aChoiseTypeExecute(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
  begin
    try
      frm_choise_type := Tfrm_choise_type.Create(Application);
      frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(department_id);
      frm_choise_type.Q_FLOWER_TYPE.Open;
      if frm_choise_type.ShowModal = mrOk then
      begin
         grid_st_vNBUTTON.DataBinding.AddToFilter(nil, foLike, frm_choise_type.Q_FLOWER_TYPENBUTTON.AsString);
         grid_st_v.DataController.Filter.Active := True;
         grid_st_v.DataController.Groups.FullExpand;
      end;
    finally
      frm_choise_type.Free;
    end;
  end;
end;


//
//  Экспорт в excel
//
procedure Tall_nacl_Form.dxBarButton15Click(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_main_store.xls';
     ExportGridToExcel(f, grid_st, True, True, false, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  if SaveDialog7.Execute then
  begin
     ExportGridToExcel(SaveDialog7.FileName, grid_st, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog7.FileName), nil, nil, SW_RESTORE);
  end;
}
end;


//
//  Поиск по артиклу
//
procedure Tall_nacl_Form.aArtSearchExecute(Sender: TObject);
begin
  search_execute(1);
end;


//
//  Поиск по названию
//
procedure Tall_nacl_Form.aNameSearchExecute(Sender: TObject);
begin
  search_execute(2);
end;


//
//  Поиск
//
procedure Tall_nacl_Form.search_execute(param: integer);
begin
  if (PageControl.ActivePageIndex = 1) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(grid_st.Width / 2) - 90;
    Panel_fill.Top     := trunc(grid_st.Height / 2) - 20;
    Panel_fill.Visible := true;
    DBEdit_fill.SetFocus;
  end;
end;


//
//  Принимаем фильтр
//
procedure Tall_nacl_Form.DBEdit_fillKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_st.SetFocus;
  end;  

  if (Key = VK_RETURN) then
  begin
    grid_st_v.DataController.Filter.Clear;
    if (param_ = 1) then
       st_H_CODE.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');
    if (param_ = 2) then
       st_FULL_NAME.DataBinding.AddToFilter(nil, foLike, '%' + trim(DBEdit_fill.Text) + '%');

    grid_st_v.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    DBEdit_fill.Text := '';
    grid_st.SetFocus;
  end;
end;


procedure Tall_nacl_Form.grid_st_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  res : variant;
begin
  res := grid_st_v.DataController.GetValue(
            AViewInfo.GridRecord.RecordIndex, grid_st_v.GetColumnByFieldName('NOTUSE').Index
         );

	IF (1 = res) then
  begin
     ACanvas.Brush.Color := stNotUse.Color;
  end;
end;


procedure Tall_nacl_Form.grid_st_vDataControllerFilterChanged(
  Sender: TObject);
begin
  if grid_st_v.ViewData.RecordCount > 0 then
  begin
    grid_st_v.DataController.Groups.FullExpand;
    grid_st_v.ViewData.FilterRow.Focused := false;
  end;
end;

procedure Tall_nacl_Form.grid_st_vDblClick(Sender: TObject);
begin
  if (grid_st_v.DataController.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_st_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
  end;
end;

procedure Tall_nacl_Form.grid_st_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (grid_st_v.DataController.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.OraSession;
      SelNom.ParamByName('N_ID').Value := grid_st_v.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+DataM.department_id+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
  end;
end;


procedure Tall_nacl_Form.STORE_VIEWBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


procedure Tall_nacl_Form.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;




    procedure Tall_nacl_Form.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    begin
      with cds do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_id').AsInteger := old_id;
        ParamByName('p_cursor').AsCursor;
        Open;

        if not IsEmpty then
        begin
          First;
          while not eof do
          begin
            WriteLn(f, Fields[0].AsString);
            Next;
          end;
        end;
        Close;
      end;
    end;


// Сформировать выходной инвойс для регионов
procedure Tall_nacl_Form.aInvoiceExecute(Sender: TObject);
var sql_str: string;
    res,ResText : Variant;
    new_id, old_id, param_, s_id_: integer;
    F_CSV: TextFile;
begin
  if ( grid_allnakl_v.DataController.DataSet.Active = false )
    or ( grid_allnakl_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта накладной.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Создать экспортный инвойс по накладной для регионов?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  old_id := grid_allnakl_v.DataController.DataSet.FieldByName('ID_DOC').AsInteger;


  if not DirectoryExists(ProgPath+'\OUT\'+grid_allnakl_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString) then
  if not CreateDir(ProgPath+'\OUT\'+grid_allnakl_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString) then
  begin
    MessageBox (Handle,'Ошибка при создании директории.', 'Ошибка!', MB_ICONERROR);
    exit;
  end;

  try
    screen.cursor := crHourGlass;
    AssignFile(F_CSV, ProgPath+ '\OUT\'+grid_allnakl_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString+'\'+IntToStr(old_id)+'_'+DataM.department_name+'_export.sql');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';
    dm.Q_SQL.close;
    dm.Q_SQL.sql.Clear;
    dm.Q_SQL.sql.Add(sql_str);
    dm.Q_SQL.Execute;


    sql_str := 'begin sync_pkg.make_types2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_subtypes2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_flower_names2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_flower_name_trans2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_colors2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_countries2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_suppliers2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_nomenclature2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_nom_spec2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_nomenclature_sync2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_inv_register2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_inv_data2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);
{
    sql_str := 'begin sync_pkg.make_pricelist_index2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);

    sql_str := 'begin sync_pkg.make_pricelist_data2(:p_inv_id, :p_cursor); end;';
    ins_to_file(dm.Q_SQL, F_CSV, sql_str, old_id);
}
    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);

    ShellExecute(Handle, nil, PChar(ProgPath+'\OUT\'+grid_allnakl_v.DataController.DataSet.FieldByName('DOC_NUMBER').AsString), nil, nil, SW_RESTORE);
  end;
end;


// Сформировать выходной инвойс для регионов (через линк)
procedure Tall_nacl_Form.aInvoiceLinkExecute(Sender: TObject);
var sql_str, tmp_str, doc_num: string;
    i, p_client, p_office: integer;
begin
  if ( grid_allnakl_v.DataController.DataSet.Active = false )
    or ( grid_allnakl_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта накладной.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Данные будут напрямую выгружены на региональный сервер?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  if grid_allnakl_v.Controller.SelectedRowCount = 0 then
  begin
    MessageBox (Handle,'Нет выделенных накладных для экспорта.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  // Админ пытается выгрузить нестандартного клиента. Спросим в какой офис
  if not (
    (doc.FieldByName('ID_CLIENT').AsInteger = client_kazan) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_yarik) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_samara) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_cherep) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_ufa) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_eburg) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_samara2)
  ) then
  begin
    if not DataM.Operator_admin then
    begin
      MessageBox (Handle,PChar('Клиент '+doc.FieldByName('NICK').AsString+' не является филиалом. Операция невозможна'), 'Внимание!', MB_ICONWARNING);
      exit;
    end;

    if MessageDlg('Клиент '+doc.FieldByName('NICK').AsString+' не является филиалом. Хотите продолжить выгрузку?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
    exit;

    p_office := frmFilials.OpenForSelect;

    if (p_office = -1) then
    begin
      MessageBox (Handle,'Неуказан филиал для отправки.', 'Внимание!', MB_ICONWARNING);
      exit;
    end;
  end;

  tmp_str := '';
  doc_num := '';
  for I := 0 to grid_allnakl_v.Controller.SelectedRowCount - 1 do
  begin
    if tmp_str = '' then
    begin
      p_client := grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_CLIENT.Index];
      tmp_str  := VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_DOC.Index]);
      doc_num  := VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[galn_DOC_NUMBER.Index]);
    end
    else
    begin
      if p_client <> grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_CLIENT.Index] then
      begin
        MessageBox (Handle,'Можно сформировать инвойс только по накладным одного клиента!', 'Внимание!', MB_ICONWARNING);
        exit;
      end;

      tmp_str := tmp_str +','+ VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_DOC.Index]);
      doc_num := doc_num +','+ VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[galn_DOC_NUMBER.Index]);
    end;
  end;

  try
    screen.cursor := crHourGlass;
    sql_str := 'begin sync_link_pkg.make_out_storedoc(:p_inv_str, :p_doc_str, :p_client, :p_office, :p_res); end;';
      with dm.Q_SQL do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_str').AsString := tmp_str;
        ParamByName('p_doc_str').AsString := doc_num;
        ParamByName('p_client').AsInteger := p_client;
        ParamByName('p_office').AsInteger := p_office;
        ParamByName('p_res').AsString      := '';
        Execute;
      end;
    if dm.Q_SQL.ParamByName('p_res').AsString = '' then
      MessageBox (Handle,'Формирование инвойса завершено успешно.', 'Результат', MB_ICONINFORMATION)
    else
      MessageBox (Handle, PChar(dm.Q_SQL.ParamByName('p_res').AsString), 'Результат', MB_ICONWARNING);
  finally
    screen.cursor := crDefault;
  end;

end;



// Выгрузим в excel приходы в промежутке указанных дат за вычетов товара в отобранных накладных
procedure Tall_nacl_Form.tbnTovarExpClick(Sender: TObject);
var sql_str, v_docs: string;
    F_CSV: TextFile;
begin
  if ( grid_allnakl_v.DataController.DataSet.Active = false )
    or ( grid_allnakl_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта накладной.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Создать файл excel по выбранным накладным?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  try
    screen.cursor := crHourGlass;
    AssignFile(F_CSV, ProgPath+ '\OUT\отчет_по_складу_на_'+DateToStr(Now)+'_'+DataM.department_name+'.csv');
    Rewrite(F_CSV);

    if DecimalSeparator = '.' then
      sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,'''
    else
      sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS='',.''';
    dm.Q_SQL.close;
    dm.Q_SQL.sql.Clear;
    dm.Q_SQL.sql.Add(sql_str);
    dm.Q_SQL.Execute;

    sql_str := 'begin store_pkg.make_prihod_itog(:p_date_b, :p_date_e, :p_docs, :p_cursor); end;';


    v_docs := '';
    grid_allnakl_v.DataController.DataSet.DisableControls;
    grid_allnakl_v.DataController.DataSet.First;
    while not grid_allnakl_v.DataController.DataSet.Eof do
    begin
      if v_docs = '' then
        v_docs := VarToStr(grid_allnakl_vID_DOC.EditValue)
      else
        v_docs := v_docs + ',' + VarToStr(grid_allnakl_vID_DOC.EditValue);
      grid_allnakl_v.DataController.DataSet.Next;
    end;

//grid_prod_v.ViewData.Rows[1].

    with dm.Q_SQL do
    begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_date_b').AsDateTime := Doc_DateTimePicker1.Date;
        ParamByName('p_date_e').AsDateTime := Doc_DateTimePicker2.Date;
        ParamByName('p_docs').AsString     := v_docs;
        ParamByName('p_cursor').AsCursor;
        Open;

        if not IsEmpty then
        begin
          First;
          WriteLn(F_CSV, 'Код;Артикул;Группа;Подгруппа;Название;Страна;Текущий остаток;Продажи;Начальный остаток;Кол-во;Цена продажи;ГТД');
          while not eof do
          begin
            WriteLn(F_CSV, Fields[0].AsString);
            Next;
          end;
        end;
        Close;
    end;

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    grid_allnakl_v.DataController.DataSet.EnableControls;
    screen.cursor := crDefault;
    CloseFile(F_CSV);

    ShellExecute(Handle, nil, PChar(ProgPath+ '\OUT\отчет_по_складу_на_'+DateToStr(Now)+'_'+DataM.department_name+'.csv'), nil, nil, SW_RESTORE);
  end;

end;

// Применим право на выгрузку
procedure Tall_nacl_Form.pmOutStorePopup(Sender: TObject);
begin
  // Админам дадим возможность пулять любого в регион
  aInvoiceLink.Enabled := DataM.Operator_admin;

  // Если нет админских прав, то разрешим пулять если код клиента из числа региональных дилеров
  if not aInvoiceLink.Enabled and doc.Active and not doc.IsEmpty then
     aInvoiceLink.Enabled := (
      (doc.FieldByName('ID_CLIENT').AsInteger = client_kazan) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_yarik) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_samara) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_cherep) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_ufa) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_eburg) or
      (doc.FieldByName('ID_CLIENT').AsInteger = client_samara2)
          );

  mnMakeMSKLink.Enabled := DataM.Operator_admin and doc.Active and not doc.IsEmpty and (DM.id_office > 1);
end;


procedure Tall_nacl_Form.mnExcelClick(Sender: TObject);
var f: string;
begin
  try
     f := path+'..\__xls__\store_all_store_docs.xls';
     ExportGridToExcel(f, grid_allnakl, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
{
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, grid_allnakl, True, True, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    grid_allnakl.SetFocus;
  except
    NULL;
  end;
}
    grid_allnakl.SetFocus;
end;

// Скопируем значение ячейкт в буфер
procedure Tall_nacl_Form.mnLoadCellClick(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
    PoolToClipbaord(grid_st_v.DataController, 1);
  if PageControl.ActivePageIndex = 2 then
    PoolToClipbaord(grid_allnakl_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure Tall_nacl_Form.mnLoadFooterClick(Sender: TObject);
begin
  if PageControl.ActivePageIndex = 1 then
    PoolToClipbaord(grid_st_v.DataController, 0);
  if PageControl.ActivePageIndex = 2 then
    PoolToClipbaord(grid_allnakl_v.DataController, 0);
end;



procedure Tall_nacl_Form.mnMakeMSKLinkClick(Sender: TObject);
var sql_str, tmp_str, doc_num: string;
    i, p_client, p_office: integer;
begin
  if ( grid_allnakl_v.DataController.DataSet.Active = false )
    or ( grid_allnakl_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта накладной.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Данные будут напрямую выгружены на Московский сервер?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  if grid_allnakl_v.Controller.SelectedRowCount = 0 then
  begin
    MessageBox (Handle,'Нет выделенных накладных для экспорта.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;


  tmp_str := '';
  doc_num := '';
  for I := 0 to grid_allnakl_v.Controller.SelectedRowCount - 1 do
  begin
    if tmp_str = '' then
    begin
      p_client := grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_CLIENT.Index];
      tmp_str  := VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_DOC.Index]);
      doc_num  := VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[galn_DOC_NUMBER.Index]);
    end
    else
    begin
      if p_client <> grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_CLIENT.Index] then
      begin
        MessageBox (Handle,'Можно сформировать инвойс только по накладным одного клиента!', 'Внимание!', MB_ICONWARNING);
        exit;
      end;

      tmp_str := tmp_str +','+ VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[grid_allnakl_vID_DOC.Index]);
      doc_num := doc_num +','+ VarToStr(grid_allnakl_v.Controller.SelectedRows[i].Values[galn_DOC_NUMBER.Index]);
    end;
  end;

  try
    screen.cursor := crHourGlass;
    sql_str := 'begin sync_link_pkg.make_out_storedoc_msk(:p_inv_str, :p_doc_str, :p_res); end;';
      with dm.Q_SQL do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_str').AsString := tmp_str;
        ParamByName('p_doc_str').AsString := doc_num;
        ParamByName('p_res').AsString     := '';
        Execute;
      end;
    if dm.Q_SQL.ParamByName('p_res').AsString = '' then
      MessageBox (Handle,'Формирование инвойса завершено успешно.', 'Результат', MB_ICONINFORMATION)
    else
      MessageBox (Handle, PChar(dm.Q_SQL.ParamByName('p_res').AsString), 'Результат', MB_ICONWARNING);
  finally
    screen.cursor := crDefault;
  end;
end;

end.
