unit UStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCalendar,
  cxCurrencyEdit, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ActnList, dxBar, dxBarExtItems, cxContainer, StdCtrls, GridsEh,
  DBGridEh, cxPC, cxButtons, ExtCtrls, ComCtrls, dxGDIPlusClasses, DateUtils,
  cxGridExportLink, DBGridEhImpExp, useful_functions, IniFiles, PI_library,
  ShellApi, cxMaskEdit, cxDropDownEdit, cxImageComboBox, frxClass, frxDMPClass
  , PI_Library_reg, UFilials, DBGridEhGrouping, cxSpinEdit;

type
  TfrmStore = class(TForm)
    StatusBar: TStatusBar;
    Panel3: TPanel;
    DocInfo_Panel: TPanel;
    btn_ucenka: TcxButton;
    btnPrintAll: TcxButton;
    pc_sales: TcxPageControl;
    tch_main: TcxTabSheet;
    gr_main: TDBGridEh;
    tch_nakls: TcxTabSheet;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    dxBarDockControl1: TdxBarDockControl;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    mbtn_expand: TdxBarButton;
    mbtn_collapse: TdxBarButton;
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
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    al_sales: TActionList;
    aLoad: TAction;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aClearFilter: TAction;
    cxStyleRepository1: TcxStyleRepository;
    st_priority: TcxStyle;
    st_warning: TcxStyle;
    st_legend_b: TcxStyle;
    grid_allnakl: TcxGrid;
    grid_allnakl_v: TcxGridDBTableView;
    galn_DOC_NUMBER: TcxGridDBColumn;
    galn_DOC_DATE: TcxGridDBColumn;
    galn_DOC_DATE_REAL: TcxGridDBColumn;
    galn_NICK: TcxGridDBColumn;
    galn_FIO: TcxGridDBColumn;
    galn_QUANTITY_ALL: TcxGridDBColumn;
    galn_PRICE_ALL: TcxGridDBColumn;
    galn_COMMENTS: TcxGridDBColumn;
    grid_allnakl_vID_DOC: TcxGridDBColumn;
    grid_allnakl_vID_DOC_TYPE: TcxGridDBColumn;
    grid_allnakl_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_allnakl_vDEPARTMENT_NAME: TcxGridDBColumn;
    grid_allnakl_vOPERATOR_NAME: TcxGridDBColumn;
    grid_allnakl_vID_CLIENT: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_OLD: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_NEW: TcxGridDBColumn;
    grid_allnakl_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_allnakl_vINV_ID: TcxGridDBColumn;
    grid_allnakl_vORDER_ID: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_DATE: TcxGridDBColumn;
    grid_allnakl_vSUPPLIER_NUMBER: TcxGridDBColumn;
    grid_allnakl_vSUPLIER: TcxGridDBColumn;
    grid_allnakl_l: TcxGridLevel;
    STORE_VIEW: TOraQuery;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    STORE_VIEW_DS: TOraDataSource;
    doc_data: TOraQuery;
    doc_data_ds: TOraDataSource;
    Panel10: TPanel;
    Image1: TImage;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    ClientFio: TLabeledEdit;
    ClientNick: TLabeledEdit;
    DateTrue: TCheckBox;
    btn_filter: TcxButton;
    aGetNakls: TAction;
    aSklad: TAction;
    aNakls: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    aExport: TAction;
    excel1: TMenuItem;
    btnPrint: TcxButton;
    btnMinus: TcxButton;
    Panel14: TPanel;
    BitBtn_Cancel: TcxButton;
    aPrintAll: TAction;
    aPrint: TAction;
    aMinus: TAction;
    aCtrlEnter: TAction;
    tch_reserv: TcxTabSheet;
    aReserv: TAction;
    grid_allreserv: TcxGrid;
    grid_allreserv_v: TcxGridDBTableView;
    grid_allreserv_l: TcxGridLevel;
    grid_allreserv_vNN: TcxGridDBColumn;
    grid_allreserv_vID_ORDERS_CLIENTS: TcxGridDBColumn;
    grid_allreserv_vID_ORDERS: TcxGridDBColumn;
    grid_allreserv_vID_CLIENTS: TcxGridDBColumn;
    grid_allreserv_vD_DATE: TcxGridDBColumn;
    grid_allreserv_vON_DATE: TcxGridDBColumn;
    grid_allreserv_vSTATUS: TcxGridDBColumn;
    grid_allreserv_vN_TYPE: TcxGridDBColumn;
    grid_allreserv_vN_TYPE_NAME: TcxGridDBColumn;
    grid_allreserv_vSTATUS_NAME: TcxGridDBColumn;
    grid_allreserv_vKOL: TcxGridDBColumn;
    grid_allreserv_vNICK: TcxGridDBColumn;
    grid_allreserv_vFIO: TcxGridDBColumn;
    aGetReserv: TAction;
    Panel1: TPanel;
    btn_edit: TcxButton;
    aEdit: TAction;
    aDel: TAction;
    btn_del: TcxButton;
    icb_status: TcxImageComboBox;
    btn_set: TcxButton;
    aSetStatus: TAction;
    aMakeNakl: TAction;
    btn_savenakl: TcxButton;
    aSaveNakl: TAction;
    aGetStore: TAction;
    grid_allreserv_vID_ORDERS_CLIENTS_: TcxGridDBColumn;
    grid_allreserv_vPRICE_ALL: TcxGridDBColumn;
    N6: TMenuItem;
    N7: TMenuItem;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    aSearchOurCode: TAction;
    dxBarStatic13: TdxBarStatic;
    aFiltrType: TAction;
    grid_allnakl_vID_OFFICE: TcxGridDBColumn;
    grid_allnakl_vBRIEF: TcxGridDBColumn;
    grid_allreserv_vID_OFFICE: TcxGridDBColumn;
    grid_allreserv_vBRIEF: TcxGridDBColumn;
    grid_allreserv_vID_USER: TcxGridDBColumn;
    grid_allreserv_vINS_FIO: TcxGridDBColumn;
    grid_allreserv_vINFO: TcxGridDBColumn;
    aInvoiceLink: TAction;
    N8: TMenuItem;
    new1: TMenuItem;
    N9: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    grid_allnakl_vOFFICE: TcxGridDBColumn;
    Doc_DateTimePicker1: TcxDateEdit;
    Doc_DateTimePicker2: TcxDateEdit;
    chbFixPrice: TCheckBox;
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
    STORE_VIEWSTORE_TYPE_NAME: TStringField;
    STORE_VIEWOUR_CODE: TStringField;
    STORE_VIEWIS_PHOTO: TFloatField;
    STORE_VIEWPHOTO: TStringField;
    STORE_VIEWCOMPILED_NAME_OTDEL: TStringField;
    STORE_VIEWID_OFFICE: TIntegerField;
    STORE_VIEWBRIEF: TStringField;
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
    docID_OFFICE: TIntegerField;
    docBRIEF: TStringField;
    docOFFICE: TStringField;
    mnShowReserv: TMenuItem;
    N10: TMenuItem;
    aShowReserv: TAction;
    STORE_VIEWNOTUSE: TIntegerField;
    stNotUse: TcxStyle;
    chbOrderHist: TCheckBox;
    actDelExecute: TAction;
    docORDER_DATE: TDateTimeField;
    grid_allnakl_vORDER_DATE: TcxGridDBColumn;
    Label6: TLabel;
    EditPercent: TcxSpinEdit;
    docID_CASH_TMP: TFloatField;
    doc_dataID_DOC: TFloatField;
    doc_dataN_ID: TFloatField;
    doc_dataCODE: TStringField;
    doc_dataH_CODE: TStringField;
    doc_dataF_TYPE: TStringField;
    doc_dataF_SUB_TYPE: TStringField;
    doc_dataFULL_NAME: TStringField;
    doc_dataCOUNTRY: TStringField;
    doc_dataCOLOUR: TStringField;
    doc_dataQUANTITY: TIntegerField;
    doc_dataQUANTITY_NOW: TFloatField;
    doc_dataSTORE_TYPE_NAME: TStringField;
    doc_dataSTORE_TYPE: TIntegerField;
    doc_dataPRICE_LIST: TFloatField;
    doc_dataOUR_CODE: TStringField;
    doc_dataQUANTITY_PRICE: TFloatField;
    doc_dataPRICE_PERCENT: TFloatField;
    doc_dataPRICE: TFloatField;
    doc_dataGTD: TStringField;
    doc_dataSPESIFICATION: TStringField;
    doc_dataCOMPILED_NAME_OTDEL: TStringField;
    doc_dataSTORE: TFloatField;
    doc_dataNOTUSE: TIntegerField;
    doc_dataID_DOC_DATA: TFloatField;
    doc_dataSPEC_PRICE: TIntegerField;
    procedure aLoadExecute(Sender: TObject);
    procedure aGetNaklsExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aClearFilterExecute(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aSkladExecute(Sender: TObject);
    procedure aNaklsExecute(Sender: TObject);
    procedure aExportExecute(Sender: TObject);
    procedure aPrintAllExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    function frxRStoreUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure print_doc(param: integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pc_salesChange(Sender: TObject);
    procedure aMinusExecute(Sender: TObject);
    procedure gr_mainDblClick(Sender: TObject);
    procedure grid_allnakl_vDblClick(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure aReservExecute(Sender: TObject);
    procedure aGetReservExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure grid_allreserv_vDblClick(Sender: TObject);
    procedure btn_filterClick(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aSetStatusExecute(Sender: TObject);
    procedure grid_allreserv_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aEditExecute(Sender: TObject);
    procedure aMakeNaklExecute(Sender: TObject);
    procedure aSaveNaklExecute(Sender: TObject);
    procedure aGetStoreExecute(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure gr_mainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure gr_mainTitleClick(Column: TColumnEh);
    procedure aFiltrTypeExecute(Sender: TObject);
    procedure STORE_VIEWBeforeOpen(DataSet: TDataSet);
    procedure docBeforeOpen(DataSet: TDataSet);
    procedure aInvoiceLinkExecute(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure aShowReservExecute(Sender: TObject);
    procedure gr_mainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure chbOrderHistClick(Sender: TObject);
    procedure actDelExecuteExecute(Sender: TObject);
  private
    param_, var_: integer;
    path: string;
    SP_DOC_DATE: tDateTime;
    SP_ID_DOC_TYPE: integer;
    SP_OTDEL: integer;
    SP_COMMENTS: string;
    SP_OPERATOR_NAME: string;
    SP_ID_CLIENT: integer;
    ondate: TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStore: TfrmStore;

implementation

uses Globals, UDM, USaleStarter, UFullInfo, UNaklInfo, USales, client_choos,
  UChoiseType, UReservInfo;

{$R *.dfm}

// Закрытие формы
procedure TfrmStore.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_NaklList.ini';
    ASaveViewName := 'store_nakl_list';
    AOptions := [];
    grid_allnakl_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store.ini';
    gr_main.SaveGridLayoutIni(AStoreKey,'store',true);
end;

// При открытии расставляем усе
procedure TfrmStore.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
  vv: string;
  RegIni : TIniFile;
begin
  try

    aExport.Enabled     := pr;
    aMakeNakl.Enabled   := ed;
    aSetStatus.Enabled  := ed;
    aEdit.Enabled       := ed;
    N6.Enabled          := ed;
    aDel.Enabled        := ed;

    chbOrderHist.Visible := add;

    pc_salesChange(Sender);

    path          := ExtractFilePath(Application.ExeName);
    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_NaklList.ini';
    ASaveViewName := 'store_nakl_list';
    AOptions      := [];
    grid_allnakl_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

    DM.frxReport1.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
    DM.frxReport1.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
    DM.frxReport1.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store.ini';
    gr_main.RestoreGridLayoutIni(AStoreKey,'store',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

    AStoreKey     := path + 'ini/'+DM.sale_session.Username+'_'+intToStr(CUR_DEPT_ID)+'.ini';
    RegIni        := TIniFile.Create(AStoreKey);
    vv            := RegIni.ReadString('StrValue', 'Value', '111111111111111');
    var_          := RegIni.ReadInteger('SortVal', 'Value', 1);

    gr_main.FieldColumns['CODE'].Visible        := CharToBool(vv[1]);
    gr_main.FieldColumns['H_CODE'].Visible      := CharToBool(vv[2]);
    gr_main.FieldColumns['F_TYPE'].Visible      := CharToBool(vv[3]);
    gr_main.FieldColumns['F_SUB_TYPE'].Visible  := CharToBool(vv[4]);
    gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Visible   := CharToBool(vv[5]);
    gr_main.FieldColumns['SPESIFICATION'].Visible := CharToBool(vv[6]);
    gr_main.FieldColumns['COUNTRY'].Visible     := CharToBool(vv[7]);
    gr_main.FieldColumns['COLOUR'].Visible      := CharToBool(vv[8]);
    gr_main.FieldColumns['PRICE'].Visible       := CharToBool(vv[12]);
    gr_main.FieldColumns['QUANTITY_PRICE'].Visible := CharToBool(vv[13]);
    gr_main.FieldColumns['QUANTITY'].Visible    := CharToBool(vv[14]);
    gr_main.FieldColumns['RESERV'].Visible      := CharToBool(vv[15]);
    gr_main.FieldColumns['OUR_CODE'].Visible    := CharToBool(vv[16]);

    gr_main.FieldColumns['BRIEF'].Visible       := not (GetOfficeID = DM.id_office);
    grid_allnakl_vBRIEF.Visible                 := gr_main.FieldColumns['BRIEF'].Visible;
    grid_allreserv_vBRIEF.Visible               := gr_main.FieldColumns['BRIEF'].Visible;

    grid_allnakl_v.OptionsView.Footer:=false;

  finally
    RegIni.Free;
    pc_sales.ActivePageIndex := 0;
    gr_main.SetFocus;
  end;
end;


//
//  Дотсаем все накладные
//
procedure TfrmStore.aGetNaklsExecute(Sender: TObject);
begin
	if ((DateTrue.Checked=false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
  then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
      try
      	screen.cursor:=crhourglass;
  	    DOC.Close;
	      DOC.ParamByName('id_dep_').Value := CUR_DEPT_ID;
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
      	DOC.Open;
	      screen.cursor:=crdefault;
        if (frmStore.Visible) and (pc_sales.ActivePageIndex = 1) then
          grid_allnakl.SetFocus;
      except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
      End;
  end;
end;

//
//  Добудем склад
//
procedure TfrmStore.aGetStoreExecute(Sender: TObject);
begin
    STORE_VIEW.Close;
    STORE_VIEW.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
    STORE_VIEW.ParamByName('cursor_');
    STORE_VIEW.Open;
end;


//
//  Добудем бронирования
//
procedure TfrmStore.aGetReservExecute(Sender: TObject);
var status_: integer;
begin
    try
      if (NumberDoc.Text = '') then status_ := 0 else status_ := StrToInt(NumberDoc.Text);

    	screen.cursor:=crhourglass;
  	  DM.cds_reserv.Close;
	    DM.cds_reserv.ParamByName('id_dep_').Value := CUR_DEPT_ID;
  	  DM.cds_reserv.ParamByName('STATUS_').Value := 10;
	    DM.cds_reserv.ParamByName('ID_').AsInteger := status_;
	    //DM.cds_reserv.ParamByName('fio_').AsString := trim(ClientFio.Text);
	    //DM.cds_reserv.ParamByName('nick_').AsString := trim(ClientNick.Text);

    	DM.cds_reserv.Open;
	    screen.cursor:=crdefault;
      if (frmStore.Visible) and (pc_sales.ActivePageIndex = 2) then
        grid_allreserv.SetFocus;
    except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
end;


//
//  Обновляем все данные
//
procedure TfrmStore.aLoadExecute(Sender: TObject);
begin
  try
    Doc_DateTimePicker1.Date := IncDay(CUR_DATE,0);
    Doc_DateTimePicker2.Date := CUR_DATE;
    aGetStore.Execute;
    aGetNakls.Execute;
    aGetReserv.Execute;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  End;
end;


//
//  Минусовая
//
procedure TfrmStore.aMinusExecute(Sender: TObject);
var IID_DOC: integer;
    ind: integer;
begin
  if (pc_sales.ActivePageIndex = 1) and (doc.RecordCount <> 0) then
  begin
    try
    	IID_DOC := doc.FieldByName('ID_DOC').AsInteger;
    	if (IID_DOC <> 0) then
	    begin
		    if MessageDlg('Создать минусовую накладную для документа №'+doc.FieldByName('DOC_NUMBER').AsString+'?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  		  begin
    			try
      			DM.sale_session.Savepoint('Begin_Doc_Edit');

            DM.SelQ.SQL.Clear;
            DM.SelQ.SQL.add('delete from tmp_exp_doc');
            DM.SelQ.Execute;

	      		DM.sale_session.ExecProc('STORE_PKG.doc_new_from_store_doc', [IID_DOC, ind]);
		 	    except on E: Exception do
            begin
			        DM.sale_session.RollbackToSavepoint('Begin_Doc_Edit');
              MessageBox(Handle, PChar(E.Message), 'Ошибка ввода минусовой', MB_ICONERROR);
  	  		    abort;
            end;
          End;

    			DM.sale_session.Commit;
          MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
  	  		STORE_VIEW.Refresh;
          Doc.Refresh;
          ind := DM.sale_session.ParamByName('out_docid').AsInteger;
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


// поиск по артиклу
procedure TfrmStore.aSearchArticleExecute(Sender: TObject);
begin
  if pc_sales.ActivePageIndex = 0 then
    search_execute(1);
end;
// поиск по названию
procedure TfrmStore.aSearchNameExecute(Sender: TObject);
begin
  if pc_sales.ActivePageIndex = 0 then
    search_execute(2);
end;
// поиск по внутр.коду
procedure TfrmStore.aSearchOurCodeExecute(Sender: TObject);
begin
  if pc_sales.ActivePageIndex = 0 then
    search_execute(3);
end;

//
//  Поиск
//
procedure TfrmStore.search_execute(param: integer);
begin
  param_             := param;
  Panel_fill.Left    := trunc(pc_sales.Width / 2) - 90;
  Panel_fill.Top     := trunc(pc_sales.Height / 2) - 20;
  Panel_fill.Visible := true;
  te_search.SetFocus;
end;


// Отрабатываем форму поиска
procedure TfrmStore.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var grid: TDBGridEh;
begin
  grid := gr_main;

  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid.ClearFilter;
    if (param_ = 1) then
      grid.FieldColumns['H_CODE'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    if (param_ = 2) then
      grid.FieldColumns['COMPILED_NAME_OTDEL'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    if (param_ = 3) then
      grid.FieldColumns['OUR_CODE'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    grid.ApplyFilter;
    Panel_fill.Visible := false;
    te_search.Text := '';
    grid.SetFocus;
  end;
end;


//
//  Очищаем фильтры
//
procedure TfrmStore.aClearFilterExecute(Sender: TObject);
begin
  if (pc_sales.ActivePageIndex = 0) then
  begin
    gr_main.DataSource.DataSet.Filtered := false;
    gr_main.ClearFilter;
  end;
  if (pc_sales.ActivePageIndex = 1) then
  begin
    grid_allnakl_v.DataController.DataSet.Filter := '';
    grid_allnakl_v.DataController.DataSet.Filtered := false;
    grid_allnakl_v.DataController.Filter.Clear;
  end;
  if (pc_sales.ActivePageIndex = 2) then
  begin
    grid_allreserv_v.DataController.DataSet.Filter := '';
    grid_allreserv_v.DataController.DataSet.Filtered := false;
    grid_allreserv_v.DataController.Filter.Clear;
  end;
end;


//
//  ЕНТЕР на поле поиска
//
procedure TfrmStore.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    aGetNakls.Execute;
  end;
end;

// Ctrl+1
procedure TfrmStore.aSkladExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 0;
  gr_main.SetFocus;
end;


// Филтруем данные
procedure TfrmStore.btn_filterClick(Sender: TObject);
begin
  if pc_sales.ActivePageIndex = 1 then aGetNakls.Execute;
  if pc_sales.ActivePageIndex = 2 then aGetReserv.Execute;
end;


procedure TfrmStore.chbOrderHistClick(Sender: TObject);
begin
//  DM.cds_reserv.Close;
//  DM.cds_reserv.ParamByName('id_dep_').AsInteger := SP_OTDEL;
  if chbOrderHist.Checked then
    DM.cds_reserv.ParamByName('status_').AsInteger := 11
  else
    DM.cds_reserv.ParamByName('status_').AsInteger := 10;
  DM.cds_reserv.Refresh;
//  DM.cds_reserv.ParamByName('id_').AsInteger     := id_;
//  DM.cds_reserv.Open;
end;

// Ctrl+2
procedure TfrmStore.aNaklsExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 1;
  grid_allnakl.SetFocus;
end;

// Ctrl+3
procedure TfrmStore.aReservExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 2;
  grid_allreserv.SetFocus;
end;


//
//  Экспорт в excel
//
procedure TfrmStore.aExportExecute(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if (pc_sales.ActivePageIndex = 0) then
       SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,gr_main, SaveDialog1.FileName, True);
    if (pc_sales.ActivePageIndex = 1) then
       ExportGridToExcel(SaveDialog1.FileName, grid_allnakl, True, True, True, 'xls');
    if (pc_sales.ActivePageIndex = 2) then
       ExportGridToExcel(SaveDialog1.FileName, grid_allreserv, True, True, True, 'xls');

    ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;


//
//  Выводим окно для выбора типа
//
procedure TfrmStore.aFiltrTypeExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  if (Panel_fill.Visible = false) and (pc_sales.ActivePageIndex = 0) then
  begin
    grid := gr_main;

    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(CUR_DEPT_ID);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := var_;
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid.ClearFilter;
       if var_ = 1 then
         grid.FieldColumns['F_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString
       else
         grid.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString;
       grid.ApplyFilter;
       grid.SetFocus;
    end;
  end;
end;


//
//  Печать списка
//
procedure TfrmStore.aPrintAllExecute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  if (pc_sales.ActivePageIndex = 1) and (doc.RecordCount > 0) then
  begin
  try
    MakeSortForPrint(TOraQuery(grid_allnakl_v.DataController.DataSet),grid_allnakl_v);
    grid_allnakl_v.DataController.DataSet.DisableControls;
    DM.fr_DOC_DS.DataSource := frmStore.DOC_DS;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_list.fr3');

    Memo1 := DM.frxReport1.FindObject('Memo6') as TfrxMemoView;
    Memo1.Text := 'Документы за период с '+ DateToStr(Doc_DateTimePicker1.Date) + ' по ' + DateToStr(Doc_DateTimePicker2.Date);

    Memo1 := DM.frxReport1.FindObject('Memo2') as TfrxMemoView;
    if DM.id_office = 1 then
      Memo1.Text := 'ООО «СТАРЛАЙТ»';
    if DM.id_office = 2 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Поволжье Кэш энд Кэрри»';
    if DM.id_office = 3 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Казань»';
    if DM.id_office = 4 then
      Memo1.Text := 'ООО "СТАРЛАЙТ Голден Ринг»';
    if DM.id_office = 5 then
      Memo1.Text := 'ООО «СТАРЛАЙТ «СЕВЕРО-ЗАПАД»';

    DM.frxReport1.PrepareReport;
    DM.frxReport1.ShowReport;
    grid_allnakl_v.DataController.DataSet.EnableControls;
    grid_allnakl.SetFocus;
  except
    on E: Exception do
    begin
       grid_allnakl_v.DataController.DataSet.DisableControls;
       MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
    end;
  End;
  end;

  if (pc_sales.ActivePageIndex = 2) and (dm.cds_reserv.RecordCount > 0) then
  begin
  try
    MakeSortForPrint(TOraQuery(grid_allnakl_v.DataController.DataSet),grid_allnakl_v);
    grid_allreserv_v.DataController.DataSet.DisableControls;
    DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\reserv_list.fr3');
    Memo1 := DM.frxReport1.FindObject('Memo3') as TfrxMemoView;
    Memo1.Text := 'Отдел: '+ VarToStr(CUR_DEPT_NAME);
    DM.frxReport1.PrepareReport;
    DM.frxReport1.ShowReport;
    grid_allreserv_v.DataController.DataSet.EnableControls;
    grid_allreserv.SetFocus;
  except
    on E: Exception do
    begin
       grid_allreserv_v.DataController.DataSet.DisableControls;
       MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
    end;
  End;
  end;
end;


//
//  Печать накладной
//
procedure TfrmStore.aPrintExecute(Sender: TObject);
var Memo1: TfrxMemoView;
    Memo  : TfrxDMPMemoView;
begin
  if (pc_sales.ActivePageIndex = 1) and (doc.RecordCount > 0) then
  begin
    try
      print_doc(0);
   	except
     	on E: Exception do
       MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
   	End;
  end;

  if (pc_sales.ActivePageIndex = 2) and (dm.cds_reserv.RecordCount > 0) then
  begin
    try
      //if CUR_DEPT_ID = 62 then
      DM.frxReport1.DotMatrixReport := print_dot; //frmSalesStarter.CheckBox1.Checked;
      if (print_dot = true) then
      begin
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\reserv_dot.fr3');
        Memo := DM.frxReport1.FindObject('DMPMemo2') as TfrxDMPMemoView;
        Memo.Text := 'Отдел: '+ VarToStr(CUR_DEPT_NAME);
      end
      else
      begin
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\reserv.fr3');
        Memo1 := DM.frxReport1.FindObject('Memo3') as TfrxMemoView;
        Memo1.Text := 'Отдел: '+ VarToStr(CUR_DEPT_NAME);
      end;
      DM.frxReport1.PrepareReport;
      DM.frxReport1.ShowReport;
      grid_allreserv.SetFocus;
    except
      on E: Exception do
         MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
    End;
  end;

end;


//
//  Печатаем документ
//
procedure TfrmStore.print_doc(param: integer);
var Memo  : TfrxDMPMemoView;
    Memo1 : TfrxMemoView;
    repsummary : TfrxReportSummary;
    course: real;
begin
  try
    if DM.id_office = 1 then
    begin
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('begin dicts.get_curse(:ddate_, :CURSOR_); end;');
      DM.SelQ.ParamByName('ddate_').AsDate := frmSalesStarter.de_date.EditValue;
      DM.SelQ.ParamByName('CURSOR_').AsCursor;
      DM.SelQ.Open;
      course := DM.SelQ.FieldByName('SHEV_EUR').AsCurrency;
      DM.SelQ.Close;
    end else course := 1;

    DM.fr_DOC_DS.DataSource      := frmStore.DOC_DS;
    DM.fr_doc_data_ds.DataSource := frmStore.doc_data_ds;

    // Первый вариант печати. Через свойство DotMatrixReport
    DM.frxReport1.DotMatrixReport := print_dot; //frmSalesStarter.CheckBox1.Checked;
    if (print_dot = true) then
    begin
      if (CUR_DEPT_ID = 121) then
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot.fr3')
      else
        DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza_dot_code.fr3');

      DM.frxDotMatrixExport1.PageBreaks := false;
      DM.frxDotMatrixExport1.OEMConvert := true;

      if DM.id_office = 1 then
      begin
        Memo := DM.frxReport1.FindObject('DMPMemo30') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo := DM.frxReport1.FindObject('DMPMemo35') as TfrxDMPMemoView;
        Memo.Text := FloatToStr(course) + ' руб. за 1 Евро,';

        Memo := DM.frxReport1.FindObject('DMPMemo29') as TfrxDMPMemoView;
        Memo.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(grid_allnakl_v.DataController.DataSet.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end
      else
      begin
        repsummary := DM.frxReport1.FindObject('ReportSummary1') as TfrxReportSummary;
        repsummary.Visible := false;
      end;
    end
    else
    begin
      DM.frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'raports\prodaza.fr3');

      if DM.id_office = 1 then
      begin
        Memo1 := DM.frxReport1.FindObject('Memo23') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := DM.frxReport1.FindObject('Memo29') as TfrxMemoView;
        Memo1.Text := FloatToStr(course) + ' руб. за 1 Евро';

        Memo1 := DM.frxReport1.FindObject('Memo24') as TfrxMemoView;
        Memo1.Text := 'Сумма накладной в Евро = ' + Format('%8.2f', [(grid_allnakl_v.DataController.DataSet.FieldByName('PRICE_ALL').AsCurrency / course)] ) + '.';
      end
      else
      begin
        Memo1 := DM.frxReport1.FindObject('Memo20') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo22') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo23') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo24') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo25') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo26') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo27') as TfrxMemoView;
        Memo1.Visible := false;
        Memo1 := DM.frxReport1.FindObject('Memo29') as TfrxMemoView;
        Memo1.Visible := false;
      end;
    end;
    DM.frxReport1.PrepareReport;

    if (param = 1) then
      DM.frxReport1.Print
    else
      DM.frxReport1.ShowReport;

    if pc_sales.ActivePageIndex = 1 then grid_allnakl.SetFocus;
    if pc_sales.ActivePageIndex = 2 then grid_allreserv.SetFocus;

 	except
     	on E: Exception do
        MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
  End;
end;


//
//  Для рапорта готовим переменныеs
//
function TfrmStore.frxRStoreUserFunction(const MethodName: string;
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
//  Просмотр полной информации по номенклатуре
//
procedure TfrmStore.gr_mainDblClick(Sender: TObject);
begin
if (STORE_VIEW.RecordCount > 0) then
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := STORE_VIEWN_ID.AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
end;
end;


procedure TfrmStore.gr_mainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (STORE_VIEWnotuse.AsInteger = 1) then
	begin
 	    gr_main.Canvas.Brush.Color  := stNotUse.Color;
 	    gr_main.Canvas.FillRect(Rect);
  		gr_main.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
  if (Length(STORE_VIEWSTORE_TYPE_NAME.AsString) > 1) then
	begin
 	    gr_main.Canvas.Font.Style  := [fsItalic];
 	    gr_main.Canvas.FillRect(Rect);
  		gr_main.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;


procedure TfrmStore.gr_mainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (STORE_VIEW.RecordCount > 0) and (Key = VK_RETURN) then
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := STORE_VIEWN_ID.AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
end;
end;



procedure TfrmStore.gr_mainTitleClick(Column: TColumnEh);
begin
  STORE_VIEW.IndexFieldNames := Column.FieldName;
end;


//
//  Просмотр полной информации по накладной
//
procedure TfrmStore.grid_allnakl_vDblClick(Sender: TObject);
begin
if (doc.RecordCount > 0) then
begin
  frmNaklInfo := TfrmNaklInfo.Create(Application);
  doc_data.Open;
  With frmNaklInfo do
  Begin
    vg_doc.DataController.DataSource := doc_ds;
    gr_data.DataSource := doc_data_ds;
    Caption := 'Полная нформация по накладной продажи';
    v_vid := 1;
    frmNaklInfo.btnMinus.Visible := true;
    frmNaklInfo.btnMinus.Tag := 0;
    ShowModal;
    vg_doc.DataController.DataSource := nil;
    gr_data.DataSource := nil;
    doc_data.Close;

    if frmNaklInfo.btnMinus.Tag > 0 then
    begin
   		STORE_VIEW.Refresh;
      Doc.Refresh;
      DOC.Locate('ID_DOC', frmNaklInfo.btnMinus.Tag, []);
    end;

    Free;
  End;
end;
end;


//
//  Просмотр полной информации о резерве
//
procedure TfrmStore.grid_allreserv_vDblClick(Sender: TObject);
begin
  if (DM.cds_reserv.RecordCount > 0) then
  begin
    frmNaklInfo := TfrmNaklInfo.Create(Application);
    DM.cds_reserv_list.Open;
    With frmNaklInfo do
    Begin
      gr_data.DataSource := nil;
      vg_docDOC_NUMBER.Properties.DataBinding.FieldName := 'ID_ORDERS_CLIENTS';
      vg_docDOC_DATE_REAL.Properties.DataBinding.FieldName := 'ON_DATE';
      vg_docQUANTITY_ALL.Properties.DataBinding.FieldName := 'KOL';
//      vg_docPRICE_ALL.Visible := false;
      vg_docCOMMENTS.Visible  := false;
      vg_docOPERATOR_NAME.Visible := false;
      Caption := 'Полная нформация по накладной бронирования';
      v_vid := 2;
      vg_doc.DataController.DataSource    := DM.ds_reserv;
      gr_data.DataSource := DM.ds_reserv_list;
      ShowModal;
      vg_doc.DataController.DataSource := nil;
      gr_data.DataSource := nil;
      DM.cds_reserv_list.Close;
      Free;
    End;
  end;
end;


procedure TfrmStore.pc_salesChange(Sender: TObject);
begin
  if (pr = true) and ((pc_sales.ActivePageIndex = 1) or (pc_sales.ActivePageIndex = 2)) then aPrintAll.Enabled := true else aPrintAll.Enabled := false;
  aPrint.Enabled := aPrintAll.Enabled;
  if (ed = true) and (pc_sales.ActivePageIndex = 1) then aMinus.Enabled := true else aMinus.Enabled := false;
  if (pc_sales.ActivePageIndex = 2) then dxBarStatic10.Visible := ivAlways else dxBarStatic10.Visible := ivNever;
end;


procedure TfrmStore.PopupMenu1Popup(Sender: TObject);
begin
  N2.Enabled := (pc_sales.ActivePageIndex = 0);
  N4.Enabled :=N2.Enabled;
  N6.Enabled := ((pc_sales.ActivePageIndex = 2) and (ed = true));

  // Админам дадим возможность пулять любого в регион
  aInvoiceLink.Enabled := add;

  // Если нет админских прав, то разрешим пулять если код клиента из числа региональных дилеров
  if not aInvoiceLink.Enabled and doc.Active and not doc.IsEmpty then
     aInvoiceLink.Enabled := (
        (doc.FieldByName('ID_CLIENT').AsInteger = client_kazan) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_samara) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_yarik) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_cherep) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_ufa) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_eburg) or
        (doc.FieldByName('ID_CLIENT').AsInteger = client_samara2)
          );
end;


procedure TfrmStore.aCtrlEnterExecute(Sender: TObject);
begin
  if (pc_sales.ActivePageIndex = 0) then gr_mainDblClick(Sender);
  if (pc_sales.ActivePageIndex = 1) then grid_allnakl_vDblClick(Sender);
  if (pc_sales.ActivePageIndex = 2) then grid_allreserv_vDblClick(Sender);
end;


//
//  Снимаем бронь
//
procedure TfrmStore.aDelExecute(Sender: TObject);
var i: integer;
begin
  if (pc_sales.ActivePageIndex = 2) and (dm.cds_reserv.RecordCount > 0) and (DM.cds_reservSTATUS.AsInteger < 10) then
  begin
    if grid_allreserv_v.Controller.SelectedRowCount > 0 then
    begin
      if MessageDlg('Удалить выделенные резервы - штук: '+IntToStr(grid_allreserv_v.Controller.SelectedRowCount)+' ?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        for I := 0 to grid_allreserv_v.Controller.SelectedRowCount - 1 do
        begin
          actDelExecute.Tag := grid_allreserv_v.Controller.SelectedRows[i].Values[grid_allreserv_vID_ORDERS_CLIENTS.Index];
          actDelExecute.Execute;
        end;
      end;
    end
    else
    begin
      actDelExecute.Tag := DM.cds_reservID_ORDERS_CLIENTS.AsInteger;
      if MessageDlg('Удалить резерв №'+IntToStr(actDelExecute.Tag)+'?',mtConfirmation,[mbYes, mbNo],0) = mrYes then actDelExecute.Execute;
    end;
    aGetReserv.Execute;
    STORE_VIEW.Refresh;
    grid_allreserv.SetFocus;
  end;
  actDelExecute.Tag := 0;
end;

procedure TfrmStore.actDelExecuteExecute(Sender: TObject);
begin
    try
      screen.Cursor := crHandPoint;
      DM.OraProc.Close;
      DM.OraProc.StoredProcName := 'SALES_PKG.remove_reserv';
      DM.OraProc.Prepare;
      DM.OraProc.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := actDelExecute.Tag;
      DM.OraProc.Execute;
      screen.Cursor := crDefault;
    except
      on E: Exception do
        begin
           screen.Cursor := crDefault;
           MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
        end;
    End;
end;

procedure TfrmStore.aSetStatusExecute(Sender: TObject);
var id_: integer;
begin
  if (pc_sales.ActivePageIndex = 2) and (dm.cds_reserv.RecordCount > 0) and (icb_status.ItemIndex >= 0) then
  begin
    try
      screen.Cursor := crHandPoint;
      id_ := DM.cds_reservID_ORDERS_CLIENTS.AsInteger;

      DM.OraProc.StoredProcName := 'SALES_PKG.RESERV_NEW';
      DM.OraProc.Prepare;
      DM.OraProc.ParamByName('id_').AsInteger           := id_;
     	DM.OraProc.ParamByName('id_clients_').AsInteger   := DM.cds_reservID_CLIENTS.AsInteger;
      DM.OraProc.ParamByName('d_date_').AsDate          := DM.cds_reservON_DATE.AsDateTime;      // поменять
      DM.OraProc.ParamByName('state_').AsInteger        := 2;
      DM.OraProc.ParamByName('status_').AsInteger       := icb_status.EditValue;
      DM.OraProc.ParamByName('id_dep_').AsInteger       := CUR_DEPT_ID;
      DM.OraProc.Execute;
    
      aGetReserv.Execute;
      DM.cds_reserv.Locate('ID_ORDERS_CLIENTS',id_,[]);
      icb_status.ItemIndex := -1;
      grid_allreserv.SetFocus;
      screen.Cursor := crDefault;
    except
      on E: Exception do
        begin
           screen.Cursor := crDefault;
           MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
        end;
    End;
  end;
end;


procedure TfrmStore.aShowReservExecute(Sender: TObject);
begin
  if not STORE_VIEW.Active or STORE_VIEW.IsEmpty or (STORE_VIEWRESERV.AsInteger < 1) then exit;
     OpenFormForShow(STORE_VIEWN_ID.AsInteger, STORE_VIEWCOMPILED_NAME_OTDEL.AsString);
end;

//
//  Отрисуем грид бронирований
//
procedure TfrmStore.grid_allreserv_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if (not AViewInfo.Selected) and (grid_allreserv_v.DataController.DataSet.RecordCount > 0) and (grid_allreserv_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'ID_ORDERS_CLIENTS') then
  begin
    val1  := grid_allreserv_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_allreserv_v.GetColumnByFieldName('ON_DATE').Index
                );
    val2  := grid_allreserv_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_allreserv_v.GetColumnByFieldName('STATUS').Index
                );

    if ((val1 = Date) and (val2 = 0)) or (val1 < Date) then
         ACanvas.Brush.Color := st_warning.TextColor;
  end;
end;


//
//  Изменим бронь
//
procedure TfrmStore.aEditExecute(Sender: TObject);
var id_: integer;
    SP_DOC_DATE: tDateTime;
    SP_ID_DOC_TYPE: integer;
    SP_OTDEL: integer;
    SP_COMMENTS: string;
    SP_OPERATOR_NAME: string;
    SP_ID_CLIENT: integer;

begin
  if (dm.cds_reserv.RecordCount > 0) and (DM.cds_reservSTATUS.AsInteger < 10) then
  begin
    try
      frmSales := TfrmSales.Create(Application);

      DM.Q_CLIENTS.Filter := '';
      DM.Q_CLIENTS.Filtered := false;
      DM.Q_CLIENTS.Locate('ID_CLIENTS',dm.cds_reservID_CLIENTS.AsInteger,[]);

      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('begin SALES_PKG.edit_reserv(:ID_ORDERS_CLIENTS_); end;');
      DM.SelQ.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := dm.cds_reservID_ORDERS_CLIENTS.AsInteger;
      DM.SelQ.Execute;

      frmSales.aLoad.Execute;
      frmSales.Edit_Order_Id.Visible  := false;
      frmSales.Label1.Caption         := 'На дату';
      frmSales.dt_ondate.DateTime     := dm.cds_reservON_DATE.AsDateTime;
//      frmSales.Label1.Visible         := frmSales.Edit_Order_Id.Visible;
//      frmSales.Label1.Visible         := frmSales.Edit_Order_Id.Visible;
//      frmSales.Label1.Visible         := frmSales.Edit_Order_Id.Visible;
      frmSales.tsh_nulls.Visible      := frmSales.Edit_Order_Id.Visible;

      frmSales.StatusBar.Panels[0].Text:='  Дата работы со складом: ' + DateToStr(CUR_DATE);
      frmSales.StatusBar.Panels[1].Text:='  Оператор: ' + operator_name;
      frmSales.Caption := VarToStr(CUR_DEPT_NAME) +' :: Бронирование';

      frmSales.AddedCB.Checked := true;
      if frmSales.showmodal = mrOk then
      begin
        id_:= dm.cds_reservID_ORDERS_CLIENTS.AsInteger;

        //SP_COMMENTS      := frmSales.EditComments.Text;
        if frmSales.EditComments.Text='' then SP_COMMENTS:= dm.cds_reservINFO.AsString else SP_COMMENTS:= frmSales.EditComments.Text;

		    SP_DOC_DATE      := dm.cds_reservON_DATE.AsDateTime;
        SP_OPERATOR_NAME := operator_name;
        SP_OTDEL         := CUR_DEPT_ID;
        SP_ID_CLIENT     := dm.cds_reservID_CLIENTS.AsInteger;

        DM.OraProc.StoredProcName := 'SALES_PKG.RESERV_NEW';
        DM.OraProc.Prepare;
        DM.OraProc.ParamByName('id_').AsInteger           := id_;
       	DM.OraProc.ParamByName('id_clients_').AsInteger   := SP_ID_CLIENT;
        DM.OraProc.ParamByName('d_date_').AsDate          := frmSales.dt_ondate.DateTime;
        DM.OraProc.ParamByName('state_').AsInteger        := 2;
        DM.OraProc.ParamByName('status_').AsInteger       := 0; //dm.cds_reservSTATUS.AsInteger;
        DM.OraProc.ParamByName('id_dep_').AsInteger       := SP_OTDEL;
        DM.OraProc.Execute;

        id_ := DM.OraProc.ParamByName('id_').AsInteger;
        if id_ > 0 then
        begin
          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.Add('update ORDERS_CLIENTS set INFO='''+ SP_COMMENTS +''' where ID_ORDERS_CLIENTS='+intToStr(id_));
          DM.SelQ.Execute;
          DM.SelQ.Close;
        
          DM.OraProc.Params.Clear;
          DM.OraProc.StoredProcName := 'SALES_PKG.RESERV_DATA';
          DM.OraProc.Prepare;
          DM.OraProc.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_;
          DM.OraProc.Execute;
          DM.sale_session.Commit;
          MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
            try
               aGetReserv.Execute;
               DM.cds_reserv.Locate('ID_ORDERS_CLIENTS',id_,[]);
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
        end;

      end
      else DM.sale_session.Rollback;
    finally
        frmSales.Free;
    end;
  end;
end;


//
// Создаем накладную из брони
//
procedure TfrmStore.aMakeNaklExecute(Sender: TObject);
begin
  if (DM.cds_reserv.Active) and (DM.cds_reserv.RecordCount > 0) and (dm.cds_reservKOL.AsInteger > 0) and (DM.cds_reservSTATUS.AsInteger < 10) then
  begin
    if MessageDlg('Вы выписываете накладную по резерв №'+dm.cds_reservID_ORDERS_CLIENTS.AsString+'. Продолжить?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
    try
			 SP_DOC_DATE      := CUR_DATE;
	     SP_ID_DOC_TYPE   := 4;
       if pos('По заказу №',dm.cds_reservINFO.AsString) > 0 then
         SP_COMMENTS      := dm.cds_reservINFO.AsString
       else
         SP_COMMENTS      := 'Сформирована из брони №' + dm.cds_reservID_ORDERS_CLIENTS.asString;

	     SP_OPERATOR_NAME := operator_name;
	     SP_OTDEL         := CUR_DEPT_ID;
       SP_ID_CLIENT     := dm.cds_reservID_CLIENTS.AsInteger;
       ondate           := dm.cds_reservON_DATE.AsDateTime;
       EditPercent.PostEditValue;

       if chbFixPrice.Checked then
         DM.sale_session.ExecProc('STORE_PKG.DATA_FROM_ORDER', [dm.cds_reservID_ORDERS_CLIENTS.AsInteger,1,EditPercent.EditValue])
       else
         DM.sale_session.ExecProc('STORE_PKG.DATA_FROM_ORDER', [dm.cds_reservID_ORDERS_CLIENTS.AsInteger,0,EditPercent.EditValue]);
       aSaveNakl.Execute;

    except on E: Exception do
      begin
        MessageBox(Handle, PChar(E.Message), 'Ошибка открытия бронирований', MB_ICONERROR);
      end;
    end;
    end;
  end;
end;


procedure TfrmStore.aSaveNaklExecute(Sender: TObject);
var
  err_msg: string;
  ind: integer;
begin
			try
          DM.OraProc.StoredProcName := 'STORE_PKG.DOC_NEW';
          DM.OraProc.Prepare;
         	DM.OraProc.ParamByName('SP_ID_CLIENT').AsInteger   := SP_ID_CLIENT;
          DM.OraProc.ParamByName('SP_DOC_DATE').AsDate       := SP_DOC_DATE;
          DM.OraProc.ParamByName('SP_ID_DOC_TYPE').AsInteger := SP_ID_DOC_TYPE;
          DM.OraProc.ParamByName('SP_COMMENTS').AsString     := SP_COMMENTS;
          DM.OraProc.ParamByName('SP_OTDEL').AsInteger       := SP_OTDEL;
          DM.OraProc.ParamByName('SP_INV_ID').AsInteger      := -1; // Для различия заказа и минуса 
          DM.OraProc.ParamByName('SP_Order_ID').AsInteger    := dm.cds_reservID_ORDERS_CLIENTS.AsInteger;
          DM.OraProc.Execute;
		 	except on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Не удалось сохранить документ!', MB_ICONERROR);
          DM.sale_session.Rollback;
		    	exit;
        end;
	    End;

      err_msg :=  DM.OraProc.ParamByName('out_message').AsString;

      if (err_msg<>'') then
			begin
        MessageBox(Handle, PChar(err_msg), 'Результат с ошибкой!', MB_ICONERROR);
        DM.sale_session.Rollback;
				exit;
			end;

      // если БЕЗ ошибки
	    if (err_msg='') then
      begin
         DM.sale_session.Commit;
         DM.SelQ.SQL.Clear;
         DM.SelQ.SQL.Add('SELECT get_office_unique_curr(''STORE_DOC_SET_ID'') as nn from DUAL');
         DM.SelQ.Open;
         ind := DM.SelQ.FieldByName('nn').AsInteger;

         pc_sales.ActivePageIndex := 1;
         aLoad.Execute;
         DOC.Locate('ID_DOC', ind, []);
    	   if MessageDlg('Вы хотите распечатать накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
		     begin
            try
                print_doc(1);
                grid_allnakl.SetFocus;
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
  		   end;
      end;
end;


// Изменим клиента
procedure TfrmStore.N6Click(Sender: TObject);
var id_client_, id_: integer;
begin
  if (grid_allreserv_v.DataController.DataSet.Active) and (grid_allreserv_v.DataController.DataSet.RecordCount > 0) and (grid_allreserv_vID_ORDERS_CLIENTS.EditValue > 0) then
  begin
    try
      id_ := grid_allreserv_vID_ORDERS_CLIENTS.EditValue;
      id_client_ := 0;
      clientchoosForm := TclientchoosForm.Create(Application);
      clientchoosForm.block_client_ := 0;
      if clientchoosForm.showmodal = mrOk then
      begin
        id_client_ := clientchoosForm.choised_client_;
        if (id_client_ = 0) or (clientchoosForm.block_client_ = 1) then
          MessageBox(Handle, 'Клиент заблокирован!'#10'Накладная не может быть оформлена', 'Предупреждение', MB_ICONSTOP)
        else
        begin
          if (id_ > 0) and (id_client_ > 0) then
          begin
            try
              DM.SelQ.Close;
              DM.SelQ.SQL.Clear;
              DM.SelQ.SQL.Add('update ORDERS_CLIENTS set ID_CLIENTS='+IntToStr(id_client_)+', date_change=sysdate where ID_ORDERS_CLIENTS='+IntToStr(id_));
              DM.SelQ.Execute;
              DM.sale_session.Commit;
              grid_allreserv_v.DataController.DataSet.Refresh;
              grid_allreserv_v.DataController.DataSet.Locate('ID_ORDERS_CLIENTS',id_,[]);
           	except
             	on E: Exception do
                MessageBox(Handle, PChar('Ошибка при смене клиента!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
           	End;
          end;
        end;
      end;
    finally
      clientchoosForm.Free;
    end;
  end else MessageBox(Handle, 'Необходимо выбрать отдел', 'Внимание', MB_ICONWARNING);
end;


procedure TfrmStore.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


procedure TfrmStore.STORE_VIEWBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;


// Сформировать выходной инвойс для регионов (через линк)
procedure TfrmStore.aInvoiceLinkExecute(Sender: TObject);
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

  if not doc.FieldByName('OFFICE').IsNull then
     if MessageDlg('Накладная уже выгружена в регион. Экспортировать еще раз?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then Exit;

  // Админ пытается выгрузить нестандартного клиента. Спросим в какой офис
  if not (
    (doc.FieldByName('ID_CLIENT').AsInteger = client_kazan) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_samara) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_yarik) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_cherep) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_ufa) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_eburg) or
    (doc.FieldByName('ID_CLIENT').AsInteger = client_samara2)
  ) then
  begin
    if not add then
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
      with dm.SelQ do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_inv_str').AsString := tmp_str;
        ParamByName('p_doc_str').AsString := doc_num;
        ParamByName('p_client').AsInteger := p_client;
        ParamByName('p_office').AsInteger := p_office;
        ParamByName('p_res').AsString     := '';
        Execute;
      end;
    if dm.SelQ.ParamByName('p_res').AsString = '' then
      MessageBox (Handle,'Формирование инвойса завершено успешно.', 'Результат', MB_ICONINFORMATION)
    else
      MessageBox (Handle, PChar(dm.SelQ.ParamByName('p_res').AsString), 'Результат', MB_ICONWARNING);
  finally
    screen.cursor := crDefault;
  end;
end;


// Скопируем значение ячейки в буфер
procedure TfrmStore.mnLoadCellClick(Sender: TObject);
begin
//  if pc_sales.ActivePageIndex = 0 then
//     PoolToClipbaord(gr_cashbook_v.DataController, 1);
  if pc_sales.ActivePageIndex = 1 then
     PoolToClipbaord(grid_allnakl_v.DataController, 1);
  if pc_sales.ActivePageIndex = 2 then
     PoolToClipbaord(grid_allreserv_v.DataController, 1);
end;
// Скопируем значение футера в буфер
procedure TfrmStore.mnLoadFooterClick(Sender: TObject);
begin
//  if pc_sales.ActivePageIndex = 0 then
//     PoolToClipbaord(gr_cashbook_v.DataController, 0);
  if pc_sales.ActivePageIndex = 1 then
     PoolToClipbaord(grid_allnakl_v.DataController, 0);
  if pc_sales.ActivePageIndex = 2 then
     PoolToClipbaord(grid_allreserv_v.DataController, 0);
end;


end.
