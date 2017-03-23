unit UDM;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, frxExportText, frxExportHTML, Dialogs,
  frxExportRTF, frxExportXLS, frxExportPDF, frxClass, frxDMPExport, frxDBSet,
  useful_functions, PI_Library_reg;

type
  TDM = class(TDataModule)
    sale_session: TOraSession;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTS_DS: TOraDataSource;
    SelQ: TOraQuery;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTSTTYPE_NAME: TStringField;
    CDS_MSTORE: TOraQuery;
    DS_MSTORE: TOraDataSource;
    CDS_USTORE: TOraQuery;
    DS_USTORE: TOraDataSource;
    CDS_NULLSTORE: TOraQuery;
    DS_NULLSTORE: TOraDataSource;
    OraProc: TOraStoredProc;
    doc: TOraQuery;
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
    STORE_VIEW: TOraQuery;
    STORE_VIEW_DS: TOraDataSource;
    DOC_DS: TOraDataSource;
    doc_data_ds: TOraDataSource;
    doc_data: TOraQuery;
    frxReport1: TfrxReport;
    fr_doc_data_ds: TfrxDBDataset;
    fr_DOC_DS: TfrxDBDataset;
    frxUserDataSet1: TfrxUserDataSet;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    OraSQL_Scan: TOraSQL;
    Scan: TOraQuery;
    cds_reserv: TOraQuery;
    ds_reserv: TOraDataSource;
    cds_reservNN: TFloatField;
    cds_reservID_ORDERS_CLIENTS: TFloatField;
    cds_reservID_ORDERS: TFloatField;
    cds_reservID_CLIENTS: TIntegerField;
    cds_reservD_DATE: TDateTimeField;
    cds_reservON_DATE: TDateTimeField;
    cds_reservSTATUS: TIntegerField;
    cds_reservN_TYPE: TIntegerField;
    cds_reservN_TYPE_NAME: TStringField;
    cds_reservNICK: TStringField;
    cds_reservFIO: TStringField;
    cds_reservSTATUS_NAME: TStringField;
    cds_reservKOL: TFloatField;
    ds_reserv_list: TOraDataSource;
    cds_reserv_list: TOraQuery;
    cds_reservID_ORDERS_CLIENTS_: TFloatField;
    fr_reserv: TfrxDBDataset;
    fr_reserv_list: TfrxDBDataset;
    DS_TYPES: TOraDataSource;
    CDS_TYPES: TOraQuery;
    CDS_TYPESFT_ID: TFloatField;
    CDS_TYPESF_TYPE: TStringField;
    cds_reservPRICE_ALL: TFloatField;
    fst_view: TOraQuery;
    fst_view_ds: TDataSource;
    ft_view: TOraQuery;
    ft_view_ds: TDataSource;
    ft_viewFT_ID: TFloatField;
    ft_viewF_TYPE: TStringField;
    ft_viewID_DEPARTMENTS: TFloatField;
    ft_viewNBUTTON: TIntegerField;
    fst_viewFST_ID: TFloatField;
    fst_viewF_SUB_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewNBUTTON: TIntegerField;
    CDS_SALES: TOraQuery;
    DS_SALES: TOraDataSource;
    docID_OFFICE: TIntegerField;
    docBRIEF: TStringField;
    cds_reservID_OFFICE: TIntegerField;
    cds_reservBRIEF: TStringField;
    cds_reservID_USER: TIntegerField;
    cds_reservINS_FIO: TStringField;
    cds_reservINFO: TStringField;
    cds_Order: TOraQuery;
    cds_OrderID_ORDERS_CLIENTS: TFloatField;
    cds_OrderON_DATE: TDateTimeField;
    ds_Order: TOraDataSource;
    cds_OrderFIO: TStringField;
    cds_OrderID_ORDERS: TFloatField;
    Q_CLIENTSPREFIX: TStringField;
    CDS_USTOREN_ID: TFloatField;
    CDS_USTORECODE: TStringField;
    CDS_USTOREH_CODE: TStringField;
    CDS_USTOREF_TYPE: TStringField;
    CDS_USTOREF_SUB_TYPE: TStringField;
    CDS_USTOREFT_ID: TFloatField;
    CDS_USTOREFST_ID: TFloatField;
    CDS_USTOREFULL_NAME: TStringField;
    CDS_USTORESPESIFICATION: TStringField;
    CDS_USTOREQUANTITY_NOW: TFloatField;
    CDS_USTORESTORE_TYPE_NAME: TStringField;
    CDS_USTORESTORE_TYPE: TFloatField;
    CDS_USTOREHOL_TYPE: TStringField;
    CDS_USTOREHOL_SUB_TYPE: TStringField;
    CDS_USTOREPRICE_LIST: TFloatField;
    CDS_USTOREQUANTITY: TIntegerField;
    CDS_USTOREADDED: TFloatField;
    CDS_USTOREID_DEPARTMENTS: TFloatField;
    CDS_USTORECOLOUR: TStringField;
    CDS_USTORECOUNTRY: TStringField;
    CDS_USTORERESERV: TFloatField;
    CDS_USTOREPRICE_DIFFERENCE: TFloatField;
    CDS_USTORESUM_PRICE_DIFFERENCE: TFloatField;
    CDS_USTOREPRICE: TFloatField;
    CDS_USTOREQUANTITY_PRICE: TFloatField;
    CDS_USTOREPRICE_PERCENT: TFloatField;
    CDS_USTORENBUTTON: TFloatField;
    CDS_USTOREBUT_NAME: TStringField;
    CDS_USTOREOUR_CODE: TStringField;
    CDS_USTOREIS_PHOTO: TFloatField;
    CDS_USTOREPHOTO: TStringField;
    CDS_USTORECOMPILED_NAME_OTDEL: TStringField;
    CDS_USTOREID_OFFICE: TIntegerField;
    CDS_USTOREBRIEF: TStringField;
    CDS_NULLSTOREN_ID: TFloatField;
    CDS_NULLSTORECODE: TStringField;
    CDS_NULLSTOREH_CODE: TStringField;
    CDS_NULLSTOREF_TYPE: TStringField;
    CDS_NULLSTOREF_SUB_TYPE: TStringField;
    CDS_NULLSTOREFT_ID: TFloatField;
    CDS_NULLSTOREFST_ID: TFloatField;
    CDS_NULLSTOREFULL_NAME: TStringField;
    CDS_NULLSTORESPESIFICATION: TStringField;
    CDS_NULLSTOREQUANTITY_NOW: TFloatField;
    CDS_NULLSTORESTORE_TYPE_NAME: TStringField;
    CDS_NULLSTORESTORE_TYPE: TFloatField;
    CDS_NULLSTOREHOL_TYPE: TStringField;
    CDS_NULLSTOREHOL_SUB_TYPE: TStringField;
    CDS_NULLSTOREPRICE_LIST: TFloatField;
    CDS_NULLSTOREQUANTITY: TIntegerField;
    CDS_NULLSTOREADDED: TFloatField;
    CDS_NULLSTOREID_DEPARTMENTS: TFloatField;
    CDS_NULLSTORECOLOUR: TStringField;
    CDS_NULLSTORECOUNTRY: TStringField;
    CDS_NULLSTORERESERV: TFloatField;
    CDS_NULLSTOREPRICE_DIFFERENCE: TFloatField;
    CDS_NULLSTORESUM_PRICE_DIFFERENCE: TFloatField;
    CDS_NULLSTOREPRICE: TFloatField;
    CDS_NULLSTOREQUANTITY_PRICE: TFloatField;
    CDS_NULLSTOREPRICE_PERCENT: TFloatField;
    CDS_NULLSTORENBUTTON: TFloatField;
    CDS_NULLSTOREBUT_NAME: TStringField;
    CDS_NULLSTOREOUR_CODE: TStringField;
    CDS_NULLSTOREIS_PHOTO: TFloatField;
    CDS_NULLSTOREPHOTO: TStringField;
    CDS_NULLSTORECOMPILED_NAME_OTDEL: TStringField;
    CDS_NULLSTOREID_OFFICE: TIntegerField;
    CDS_NULLSTOREBRIEF: TStringField;
    CDS_SALESN_ID: TFloatField;
    CDS_SALESCODE: TStringField;
    CDS_SALESH_CODE: TStringField;
    CDS_SALESF_TYPE: TStringField;
    CDS_SALESF_SUB_TYPE: TStringField;
    CDS_SALESFT_ID: TFloatField;
    CDS_SALESFST_ID: TFloatField;
    CDS_SALESFULL_NAME: TStringField;
    CDS_SALESSPESIFICATION: TStringField;
    CDS_SALESQUANTITY_NOW: TFloatField;
    CDS_SALESSTORE_TYPE_NAME: TStringField;
    CDS_SALESSTORE_TYPE: TFloatField;
    CDS_SALESHOL_TYPE: TStringField;
    CDS_SALESHOL_SUB_TYPE: TStringField;
    CDS_SALESPRICE_LIST: TFloatField;
    CDS_SALESQUANTITY: TIntegerField;
    CDS_SALESADDED: TFloatField;
    CDS_SALESID_DEPARTMENTS: TFloatField;
    CDS_SALESCOLOUR: TStringField;
    CDS_SALESCOUNTRY: TStringField;
    CDS_SALESRESERV: TFloatField;
    CDS_SALESPRICE_DIFFERENCE: TFloatField;
    CDS_SALESSUM_PRICE_DIFFERENCE: TFloatField;
    CDS_SALESPRICE: TFloatField;
    CDS_SALESQUANTITY_PRICE: TFloatField;
    CDS_SALESPRICE_PERCENT: TFloatField;
    CDS_SALESNBUTTON: TFloatField;
    CDS_SALESBUT_NAME: TStringField;
    CDS_SALESCOMPILED_NAME_OTDEL: TStringField;
    CDS_SALESOUR_CODE: TStringField;
    CDS_SALESIS_PHOTO: TFloatField;
    CDS_SALESPHOTO: TStringField;
    CDS_SALESID_OFFICE: TIntegerField;
    CDS_SALESBRIEF: TStringField;
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
    cds_reserv_listSTORE_TYPE: TIntegerField;
    cds_reserv_listID_DEPARTMENTS: TIntegerField;
    cds_reserv_listFULL_NAME: TStringField;
    cds_reserv_listF_NAME: TStringField;
    cds_reserv_listF_NAME_RU: TStringField;
    cds_reserv_listF_TYPE: TStringField;
    cds_reserv_listF_SUB_TYPE: TStringField;
    cds_reserv_listCODE: TStringField;
    cds_reserv_listLEN: TIntegerField;
    cds_reserv_listPACK: TIntegerField;
    cds_reserv_listCOLOUR: TStringField;
    cds_reserv_listCOL_ID: TFloatField;
    cds_reserv_listFT_ID: TFloatField;
    cds_reserv_listFST_ID: TFloatField;
    cds_reserv_listFN_ID: TFloatField;
    cds_reserv_listS_ID: TFloatField;
    cds_reserv_listC_ID: TFloatField;
    cds_reserv_listH_CODE: TStringField;
    cds_reserv_listH_NAME: TStringField;
    cds_reserv_listS_NAME_RU: TStringField;
    cds_reserv_listCOUNTRY: TStringField;
    cds_reserv_listN_ID: TFloatField;
    cds_reserv_listPRICE_LIST: TFloatField;
    cds_reserv_listRESERV: TFloatField;
    cds_reserv_listITOGO: TFloatField;
    cds_reserv_listID_ORDERS_LIST: TFloatField;
    cds_reserv_listQUANTITY: TIntegerField;
    cds_reserv_listQUANTITY_PRICE: TFloatField;
    cds_reserv_listID_ORDERS_CLIENTS: TFloatField;
    cds_reserv_listPRICE: TFloatField;
    cds_reserv_listPRICE_PERCENT: TFloatField;
    cds_reserv_listSPESIFICATION: TStringField;
    cds_reserv_listSTORE_TYPE_NAME: TStringField;
    cds_reserv_listCOMPILED_NAME_OTDEL: TStringField;
    cds_reserv_listOUR_CODE: TStringField;
    cds_reserv_listSTORE: TFloatField;
    CDS_USTORENOTUSE: TIntegerField;
    CDS_NULLSTORENOTUSE: TIntegerField;
    cds_reserv_listNOTUSE: TIntegerField;
    cds_reservORDER_SEQ: TFloatField;
    CDS_USTORECUR_CLIENT: TFloatField;
    CDS_NULLSTORECUR_CLIENT: TFloatField;
    docID_CASH_TMP: TFloatField;
    CDS_USTORESPEC_PRICE: TIntegerField;
    CDS_NULLSTORESPEC_PRICE: TIntegerField;
    CDS_SALESNOTUSE: TIntegerField;
    CDS_SALESSPEC_PRICE: TIntegerField;
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
    doc_dataCOMPILED_NAME_OTDEL: TStringField;
    doc_dataSPEC_PRICE: TIntegerField;
    OraQuery1: TOraQuery;
    CDS_MSTOREN_ID: TFloatField;
    CDS_MSTORECODE: TStringField;
    CDS_MSTOREH_CODE: TStringField;
    CDS_MSTOREF_TYPE: TStringField;
    CDS_MSTOREF_SUB_TYPE: TStringField;
    CDS_MSTOREFT_ID: TFloatField;
    CDS_MSTOREFST_ID: TFloatField;
    CDS_MSTOREFULL_NAME: TStringField;
    CDS_MSTORESPESIFICATION: TStringField;
    CDS_MSTOREQUANTITY_NOW: TFloatField;
    CDS_MSTORESTORE_TYPE_NAME: TStringField;
    CDS_MSTORESTORE_TYPE: TFloatField;
    CDS_MSTOREHOL_TYPE: TStringField;
    CDS_MSTOREHOL_SUB_TYPE: TStringField;
    CDS_MSTOREPRICE_LIST: TFloatField;
    CDS_MSTOREQUANTITY: TIntegerField;
    CDS_MSTOREADDED: TFloatField;
    CDS_MSTOREID_DEPARTMENTS: TFloatField;
    CDS_MSTORECOLOUR: TStringField;
    CDS_MSTORECOUNTRY: TStringField;
    CDS_MSTORERESERV: TFloatField;
    CDS_MSTOREPRICE_DIFFERENCE: TFloatField;
    CDS_MSTORESUM_PRICE_DIFFERENCE: TFloatField;
    CDS_MSTOREPRICE: TFloatField;
    CDS_MSTOREQUANTITY_PRICE: TFloatField;
    CDS_MSTOREPRICE_PERCENT: TFloatField;
    CDS_MSTORENBUTTON: TFloatField;
    CDS_MSTOREBUT_NAME: TStringField;
    CDS_MSTOREOUR_CODE: TStringField;
    CDS_MSTOREIS_PHOTO: TFloatField;
    CDS_MSTOREPHOTO: TStringField;
    CDS_MSTORECOMPILED_NAME_OTDEL: TStringField;
    CDS_MSTOREID_OFFICE: TIntegerField;
    CDS_MSTOREBRIEF: TStringField;
    CDS_MSTORENOTUSE: TIntegerField;
    CDS_MSTORECUR_CLIENT: TFloatField;
    CDS_MSTORESPEC_PRICE: TIntegerField;
    CDS_MSTOREFIO: TStringField;
    CDS_USTOREFIO: TStringField;
    CDS_NULLSTOREFIO: TStringField;
    CDS_SALESFIO: TStringField;
    CDS_SALESCUR_CLIENT: TFloatField;
    cds_reserv_listPACK_: TIntegerField;
    cds_reservPACK_: TFloatField;
    function frxReport1UserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure DataModuleCreate(Sender: TObject);
    procedure cds_reserv_listBeforeOpen(DataSet: TDataSet);
    procedure fst_viewAfterPost(DataSet: TDataSet);
    procedure ft_viewAfterPost(DataSet: TDataSet);
    procedure CDS_SALESAfterPost(DataSet: TDataSet);
    procedure sale_sessionAfterConnect(Sender: TObject);
    procedure Q_CLIENTSBeforeOpen(DataSet: TDataSet);
    procedure CDS_MSTOREBeforeOpen(DataSet: TDataSet);
    procedure CDS_USTOREBeforeOpen(DataSet: TDataSet);
    procedure CDS_NULLSTOREBeforeOpen(DataSet: TDataSet);
    procedure CDS_SALESBeforeOpen(DataSet: TDataSet);
    procedure STORE_VIEWBeforeOpen(DataSet: TDataSet);
    procedure docBeforeOpen(DataSet: TDataSet);
    procedure cds_reservBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    check_nid, id_office: integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses Globals;

{$R *.dfm}

procedure TDM.CDS_MSTOREBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
  //(DataSet As TOraQuery).ParamByName('v_client').AsInteger := Q_CLIENTSID_CLIENTS.AsInteger;
  //(DataSet As TOraQuery).ParamByName('v_client').AsInteger := cds_reservID_CLIENTS.AsInteger;
end;

procedure TDM.CDS_NULLSTOREBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.CDS_SALESBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.CDS_USTOREBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.Q_CLIENTSBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.STORE_VIEWBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.docBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.cds_reservBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := id_office;
end;


procedure TDM.cds_reserv_listBeforeOpen(DataSet: TDataSet);
begin
  DM.cds_reserv_list.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
end;

procedure TDM.CDS_SALESAfterPost(DataSet: TDataSet);
begin
  if (CDS_SALES.FieldByName('STORE_TYPE').AsInteger = 1) then
  begin
    if CDS_MSTORE.Locate('N_ID',CDS_SALES.FieldByName('n_id').AsInteger,[]) then CDS_MSTORE.RefreshRecord;
  end;
  if (CDS_SALES.FieldByName('STORE_TYPE').AsInteger = 2) then
  begin
    if CDS_USTORE.Locate('N_ID',CDS_SALES.FieldByName('n_id').AsInteger,[]) then CDS_USTORE.RefreshRecord;
  end;
  if (CDS_NULLSTORE.Active = true) then
  begin
    if CDS_NULLSTORE.Locate('N_ID',CDS_SALES.FieldByName('n_id').AsInteger,[]) then CDS_NULLSTORE.RefreshRecord;
  end;
end;


procedure TDM.DataModuleCreate(Sender: TObject);
begin
  frxReport1.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
  frxReport1.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
  frxReport1.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');
end;


function TDM.frxReport1UserFunction(const MethodName: string;
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

procedure TDM.fst_viewAfterPost(DataSet: TDataSet);
begin
  fst_view.Refresh;
end;

procedure TDM.ft_viewAfterPost(DataSet: TDataSet);
begin
  ft_view.Refresh;
end;

procedure TDM.sale_sessionAfterConnect(Sender: TObject);
begin
  id_office := GetOfficeID;
end;


end.
