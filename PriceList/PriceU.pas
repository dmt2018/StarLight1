unit PriceU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, DBCtrls, Buttons, PI_Library, ActnList, ShowNomU, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxCalc, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxGridExportLink, dxBar, dxBarExtItems, ShellApi,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBAccess, Ora, MemDS, frxBarcode, frxExportHTML,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet, PI_Library_reg,
  cxDBExtLookupComboBox, cxCheckComboBox, cxSpinEdit, cxImageComboBox;
type
  TPriceF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText5: TDBText;
    Panel5: TPanel;
    ActionList1: TActionList;
    a_saveprice: TAction;
    a_changeparams: TAction;
    a_pereschet: TAction;
    a_calculate: TAction;
    a_loadinvoice: TAction;
    a_loadstock: TAction;
    DBCheckBox1: TDBCheckBox;
    BitBtn8: TcxButton;
    BitBtn1: TcxButton;
    grid_ppl: TcxGrid;
    grid_pplView1: TcxGridDBTableView;
    H_CODE: TcxGridDBColumn;
    COMPILED_NAME: TcxGridDBColumn;
    INVOICE_AMOUNT: TcxGridDBColumn;
    STOCK_AMOUNT: TcxGridDBColumn;
    HOL_PRICE: TcxGridDBColumn;
    RUBLE_PRICE: TcxGridDBColumn;
    LAST_PRICE: TcxGridDBColumn;
    PRICE_PCC: TcxGridDBColumn;
    PRICE_PCC_PC: TcxGridDBColumn;
    CUST_COEF: TcxGridDBColumn;
    FINAL_PRICE: TcxGridDBColumn;
    TOTAL_SUM: TcxGridDBColumn;
    TOTAL_PROFIT: TcxGridDBColumn;
    grid_ppl_Level1: TcxGridLevel;
    grid_pplView1PPLI_ID: TcxGridDBColumn;
    grid_pplView1PPL_ID: TcxGridDBColumn;
    grid_pplView1COMING_DATE: TcxGridDBColumn;
    grid_pplView1LEFT_AMOUNT: TcxGridDBColumn;
    grid_pplView1GIVEN_AMOUNT: TcxGridDBColumn;
    grid_pplView1N_ID: TcxGridDBColumn;
    grid_pplView1COL: TcxGridDBColumn;
    BitBtn2: TcxButton;
    BitBtn4: TcxButton;
    BitBtn5: TcxButton;
    BitBtn6: TcxButton;
    BitBtn7: TcxButton;
    SaveDialog1: TSaveDialog;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    HOL_TYPE: TcxGridDBColumn;
    bm_prices: TdxBarManager;
    bdc_price_legend: TdxBarDockControl;
    bm_pricesBar1: TdxBar;
    bsSameNomsWithoutSamePrice: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_same: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    grid_pplView1RUS_MARKS: TcxGridDBColumn;
    dxBarStatic3: TdxBarStatic;
    Label6: TLabel;
    grid_pplView1INVOICE_DATA_ID: TcxGridDBColumn;
    Label7: TLabel;
    btn_stock_out: TcxButton;
    cds_types: TOraQuery;
    ds_types: TOraDataSource;
    cds_typesFT_ID: TFloatField;
    cds_typesFST_ID: TFloatField;
    cds_typesF_SUB_TYPE: TStringField;
    cds_typesF_TYPE: TStringField;
    bsProfit: TdxBarStatic;
    bsLoss: TdxBarStatic;
    st_profit: TcxStyle;
    st_defolt: TcxStyle;
    dxBarStatic6: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    frx_price: TfrxReport;
    frxPriceListNew: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    grid_pplView1CAME_TYPE: TcxGridDBColumn;
    grid_pplView1F_TYPE: TcxGridDBColumn;
    grid_pplView1INV_TOTAL_SUM: TcxGridDBColumn;
    grid_pplView1STOK_TOTAL_SUM: TcxGridDBColumn;
    INV_TOTAL_PROFIT: TcxGridDBColumn;
    STOK_TOTAL_PROFIT: TcxGridDBColumn;
    btnSync: TcxButton;
    bsNullPrice: TdxBarStatic;
    st_nullprice: TcxStyle;
    dxBarStatic9: TdxBarStatic;
    Label8: TLabel;
    grid_pplView1NID_ROWNUM: TcxGridDBColumn;
    btnSyncInv: TcxButton;
    PopupMenu1: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    chb_types: TcxCheckComboBox;
    chek_types: TCheckBox;
    btnOldPrice: TcxButton;
    aLoadOldPrice: TAction;
    bsEqlPrice: TdxBarStatic;
    st_equal: TcxStyle;
    dxBarStatic11: TdxBarStatic;
    grid_pplView1COUNTRY: TcxGridDBColumn;
    grid_pplView1COLOUR: TcxGridDBColumn;
    grid_pplView1BAR_CODE: TcxGridDBColumn;
    mnColumns: TMenuItem;
    N2: TMenuItem;
    mn1: TMenuItem;
    mn2: TMenuItem;
    mn3: TMenuItem;
    mn4: TMenuItem;
    mn5: TMenuItem;
    N1: TMenuItem;
    mnSamePriceBy: TMenuItem;
    mnSamePriceByGroup: TMenuItem;
    mnSamePriceBySubGroup: TMenuItem;
    mnSamePriceBySubGroupAndLength: TMenuItem;
    grid_pplView1FT_ID: TcxGridDBColumn;
    grid_pplView1FST_ID: TcxGridDBColumn;
    grid_pplView1COL_ID: TcxGridDBColumn;
    grid_pplView1LEN: TcxGridDBColumn;
    grid_pplView1TYPE_SUBTYPE: TcxGridDBColumn;
    mn6: TMenuItem;
    grid_pplView1SPEC_PRICE: TcxGridDBColumn;
    grid_pplView1BEST_PRICE: TcxGridDBColumn;
    grid_pplView1DISCOUNT: TcxGridDBColumn;
    bsSpecPrice: TdxBarStatic;
    dxBarStatic13: TdxBarStatic;
    bsBestPrice: TdxBarStatic;
    dxBarStatic15: TdxBarStatic;
    st_best_price: TcxStyle;
    st_spec_price: TcxStyle;
    mnSpecPrice: TMenuItem;
    mnBestPrice: TMenuItem;
    aClearFilter: TAction;
    dxBarStatic1: TdxBarStatic;
    N3: TMenuItem;
    N4: TMenuItem;
    chb_suplier: TcxCheckComboBox;
    check_suplier: TCheckBox;
    grid_pplView1LOSS_PROFIT: TcxGridDBColumn;
    grid_pplView1EQ_PRICE: TcxGridDBColumn;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    grid_pplView1COMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_pplView1F_SUB_TYPE: TcxGridDBColumn;
    mn7: TMenuItem;
    mn8: TMenuItem;
    grid_pplView1DISTRIBUTED_NUMBER: TcxGridDBColumn;
    grid_pplView1OBSHAK: TcxGridDBColumn;
    grid_pplView1INV_ID: TcxGridDBColumn;
    grid_pplView1INV_ID2: TcxGridDBColumn;
    grid_pplView1INV_ID3: TcxGridDBColumn;
    grid_pplView1INV_ID4: TcxGridDBColumn;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label9: TLabel;
    te_search: TcxTextEdit;
    aSearchByName: TAction;
    aFilterByType: TAction;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic10: TdxBarStatic;
    aOrderStat: TAction;
    N5: TMenuItem;
    grid_pplView1ID_CLIENTS: TcxGridDBColumn;
    grid_pplView1CLIENT_PRICE: TcxGridDBColumn;
    grid_pplView1NICK: TcxGridDBColumn;
    mn9: TMenuItem;
    grid_pplView1SPEC: TcxGridDBColumn;
    stSPEC: TcxStyle;
    bsSPEC: TdxBarStatic;
    dxBarStatic14: TdxBarStatic;
    aSpecDeal: TAction;
    aBestPrice: TAction;
    aSetPrice: TAction;
    pnlPrice: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    te_price: TcxCurrencyEdit;
    aSetPrice1: TMenuItem;
    btn_print: TcxButton;
    chb_clients: TcxCheckComboBox;
    check_clients: TCheckBox;
    grid_pplView1TO_CLIENT: TcxGridDBColumn;
    grid_pplView1PAINT_SUPER: TcxGridDBColumn;
    stSuper: TcxStyle;
    aLoadClientsInCombo: TAction;
    cxButton3: TcxButton;
    Label12: TLabel;
    btnLoadPrice: TcxButton;
    cbInvoices: TcxImageComboBox;
    aClearPriznak: TAction;
    N6: TMenuItem;
    mnSyncCurPriceList: TMenuItem;
    N7: TMenuItem;
    mnSyncSelPriceList: TMenuItem;
    mnRollbackSync: TMenuItem;
    chbUseSended: TDBCheckBox;
    N8: TMenuItem;
    aSetPrice2: TMenuItem;
    aSetPriceByOld: TAction;
    aGetStatistic: TAction;
    N9: TMenuItem;
    grid_pplView1PROFIT_COEFFITIENT: TcxGridDBColumn;
    aSetProfit: TAction;
    N10: TMenuItem;
    N01: TMenuItem;
    aSetProfitDataSet: TAction;
    N11: TMenuItem;
    aSelectAll: TAction;
    aDeSelectAll: TAction;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    DBText6: TDBText;
    grid_pplView1PPLI_ID_OLD: TcxGridDBColumn;
    grid_pplView1EXTRA_GROSS: TcxGridDBColumn;
    bsExtraGross: TdxBarStatic;
    dxBarStatic16: TdxBarStatic;
    st_extragross: TcxStyle;
    aClearNewMark: TAction;
    N15: TMenuItem;
    grid_pplView1MDL_PRICE: TcxGridDBColumn;
    st_stat_col: TcxStyle;
    grid_pplView1STAT_LAST_PRICE: TcxGridDBColumn;
    N16: TMenuItem;
    N17: TMenuItem;
    grid_pplView1HAS_PRICE: TcxGridDBColumn;
    bsHASPRICE: TdxBarStatic;
    st_hasprice: TcxStyle;
    dxBarStatic12: TdxBarStatic;
    mnSyncWebShop: TMenuItem;
    grid_pplView1W_QUANTITY: TcxGridDBColumn;
    grid_pplView1W_PRICE: TcxGridDBColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PrFrF1Edit1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Panel5Resize(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grid_pplView1DblClick(Sender: TObject);
    procedure grid_pplView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure grid_pplView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_stock_outClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnSyncInvClick(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure chb_typesPropertiesEditValueChanged(Sender: TObject);
    procedure chek_typesClick(Sender: TObject);
    procedure aLoadOldPriceExecute(Sender: TObject);
    procedure mn1Click(Sender: TObject);
    procedure Grid_Set;
    procedure mnSamePriceByGroupClick(Sender: TObject);
    procedure mnSamePriceBySubGroupClick(Sender: TObject);
    procedure mnSamePriceBySubGroupAndLengthClick(Sender: TObject);
    procedure SetPriceBy(action: String);
    procedure bsSameNomsWithoutSamePriceClick(Sender: TObject);
    procedure bsProfitClick(Sender: TObject);
    procedure bsLossClick(Sender: TObject);
    procedure bsNullPriceClick(Sender: TObject);
    procedure bsEqlPriceClick(Sender: TObject);
    procedure bsSpecPriceClick(Sender: TObject);
    procedure bsBestPriceClick(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure chb_suplierPropertiesEditValueChanged(Sender: TObject);
    procedure check_suplierClick(Sender: TObject);
    procedure aSearchByNameExecute(Sender: TObject);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aFilterByTypeExecute(Sender: TObject);
    procedure aOrderStatExecute(Sender: TObject);
    procedure grid_pplView1OBSHAKCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure bsSPECClick(Sender: TObject);
    procedure aSpecDealExecute(Sender: TObject);
    procedure aBestPriceExecute(Sender: TObject);
    procedure grid_pplView1KeyPress(Sender: TObject; var Key: Char);
    procedure aSetPriceExecute(Sender: TObject);
    procedure te_priceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chb_clientsPropertiesEditValueChanged(Sender: TObject);
    procedure check_clientsClick(Sender: TObject);
    procedure aLoadClientsInComboExecute(Sender: TObject);
    procedure INVOICE_AMOUNTCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure grid_pplView1DISTRIBUTED_NUMBERCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure btnLoadPriceClick(Sender: TObject);
    procedure aClearPriznakExecute(Sender: TObject);
    procedure mnSyncCurPriceListClick(Sender: TObject);
    procedure mnSyncSelPriceListClick(Sender: TObject);
    procedure mnRollbackSyncClick(Sender: TObject);
    procedure aSetPriceByOldExecute(Sender: TObject);
    procedure aGetStatisticExecute(Sender: TObject);
    procedure aSetProfitExecute(Sender: TObject);
    procedure aSetProfitDataSetExecute(Sender: TObject);
    procedure aSelectAllExecute(Sender: TObject);
    procedure aDeSelectAllExecute(Sender: TObject);
    procedure bsExtraGrossClick(Sender: TObject);
    procedure aClearNewMarkExecute(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure bsHASPRICEClick(Sender: TObject);
    procedure mnSyncWebShopClick(Sender: TObject);
  private
    path: string;
    is_sync: boolean;
    { Private declarations }
  public
    { Public declarations }
    param_: integer;
    procedure ShowPriceList();
    procedure SetMark(action: String);
    procedure sort_table(filter_param: String);
    procedure search_execute(param: integer);
    procedure do_check(param: string; val: integer);
    procedure sync_execute(param: integer);
  end;

var
  PriceF: TPriceF;

implementation

uses DataModule, WhatToDoU, InvoChooseU, ChangeParamsU,
  StockLoadOptsU, Globals, StartU, UStat, UOldPrice, UChoiseType, UClientList,
  UPriceStatistic, UaddSpecOrder;

{$R *.dfm}


//
//  ������� �������� ��� ������ � �������� (����������, ������� � �.�.)
//
procedure TPriceF.ShowPriceList();
VAR
  PPLI_ID : integer;
  mod_res : boolean;
Begin
  if not DM.STAR_DB.connected then DM.STAR_DB.Connect;
  DM.PPL.Close;
  mod_res := true;
  WhatToDo := TWhatToDo.Create(Application);

  while mod_res do
    Begin
      // ��������� ����� � ��������
      mod_res := WhatToDo.AskWhatToDo(PPLI_ID);
      if not mod_res then continue;
      DM.PPL_Index.Locate('PPLI_ID',PPLI_ID,[]);
      DM.PPL.ParamByName('v_PPLI_ID').AsInteger := PPLI_ID;
      DM.PPL.ParamByName('v_PPLI_ID_OLD').AsInteger := DM.PPL_IndexPPLI_ID_OLD.AsInteger;
      DM.PPL.Open;
      Caption := '�����-����. ��-'+IntToStr(PPLI_ID);
      ShowModal;
      DM.PPL.Filter := '';
      DM.PPL.Filtered := false;
      DM.PPL.Close;
    End;
  WhatToDo.free;
End;



//
//  ��������� ������
//
procedure TPriceF.BitBtn1Click(Sender: TObject);
VAR
  INV_ID, IN_PPLI_ID, IN_IPP_ID, cnt : Variant;
begin
  InvoChoose := TInvoChoose.Create(Application);

  InvoChoose.BitBtn1.Visible := true;
  InvoChoose.Caption := '����� ������� ��� ������';

  INV_ID    := ChooseInvo(0);
  IN_IPP_ID := 0;
  if INV_ID = Null then exit;
  try

    if (DM.InvoRegIPP_ID.AsInteger > 0) then
    begin
      if MessageDlg('���������� ��� ����� �'+DM.InvoRegIPP_ID.AsString+#10+DM.InvoRegIPP_COMMENT.AsString+'?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
      begin
        IN_IPP_ID := DM.InvoRegIPP_ID.AsInteger;
      end;
    end;

{
BOF: �������� �� ������� �������������� �����
}
    cnt     := 0;
    err_msg := '';
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin creator.invoice2_pkg.check_asis(:IN_INV_ID, :IN_IPP_ID, :out_cnt, :out_errmsg); end;');
      ParamByName('IN_INV_ID').Value     := INV_ID;
      ParamByName('IN_IPP_ID').Value     := IN_IPP_ID;
      ParamByName('out_cnt').Value       := cnt;
      ParamByName('out_errmsg').AsString := err_msg;
      Execute;
      if (ParamByName('out_errmsg').AsString <> '') then
        raise Exception.Create(ParamByName('out_errmsg').AsString);

      cnt := ParamByName('out_cnt').Value;

      if (cnt > 0) then
      begin
        if MessageDlg('������� ������� � ������� ���� �������������� ������!'+#10+'������� �� ���� ������ ���������� ������� � ����� ������, ��� - �������� ��� ��� ����', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
        begin
          Close;
          SQL.Clear;
          SQL.Add('begin creator.invoice2_pkg.copy_asis(:IN_INV_ID, :IN_IPP_ID, :out_errmsg); end;');
          ParamByName('IN_INV_ID').Value     := INV_ID;
          ParamByName('IN_IPP_ID').Value     := IN_IPP_ID;
          ParamByName('out_errmsg').AsString := err_msg;
          Execute;
          if (ParamByName('out_errmsg').AsString <> '') then
            raise Exception.Create(ParamByName('out_errmsg').AsString);
        end;
      end;
    End;
{
EOF: �������� �� ������� ������������� �����
}


    with DM.LoadInvoice do
    Begin
      Prepare;
      ParamByName('IN_INV_ID').Value  := INV_ID;
      ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
      ParamByName('IN_IPP_ID').Value  := IN_IPP_ID;
      ExecProc;
    End;
    IN_PPLI_ID := DM.PPL_Index.fieldByName('PPLI_ID').Value;
    DM.PPL_Index.Refresh;
    DM.PPL_Index.Locate('PPLI_ID',IN_PPLI_ID,[]);

    // ������� ���� ���� �� ���������� ��������
        with DM.SelQ do
        begin
          Close;
          SQL.Clear;
          SQL.Add('begin creator.price_pkg.insert_auto_discount(:IN_PPLI_ID); end;');
          ParamByName('IN_PPLI_ID').Value     := IN_PPLI_ID;
          Execute;
        end;

    Label6.Caption := '� ��������: '+ DM.PPL_Index.fieldByName('ALL_INV').AsString;
    Label8.Caption := '� �����: '+ VarToStr(DM.PPL_Index.fieldByName('PACK_ID').Value);

    InvoChoose.Free;
    aLoadClientsInCombo.Execute;
    DM.PPL.Refresh;
    grid_ppl.SetFocus;
  except on E: Exception do
    begin
      InvoChoose.Free;
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR);
    end;
  End;

end;


//
//  ��������� ����
//
procedure TPriceF.BitBtn2Click(Sender: TObject);
var
  ID_STORE_TYPE : Variant;
  vv, res_fst, res_ft, res_sup: string;
  i: integer;
begin
  GetStockLoadParams(ID_STORE_TYPE);
  if ID_STORE_TYPE <> null then
  Begin

    res_fst := '';
    res_ft  := '';
    res_sup := '';

    // ������� ��� ������� ��� ������� �����, ���� ���������
    chb_types.PostEditValue;
	  vv := chb_types.EditValue;
   	for i:=0 to chb_types.Properties.Items.Count do
    begin
    	if ( vv[i+1] = '1' ) then
        if res_ft = '' then
          res_ft := IntToStr(chb_types.Properties.Items.Items[i].Tag)
        else
          res_ft := res_ft + ',' + IntToStr(chb_types.Properties.Items.Items[i].Tag);
    end;


    // ������� ���� ����������� ��� ������� �����, ���� ���������
    chb_suplier.PostEditValue;
	  vv := chb_suplier.EditValue;
   	for i:=0 to chb_suplier.Properties.Items.Count do
    begin
    	if ( vv[i+1] = '1' ) then
        if res_sup = '' then
          res_sup := IntToStr(chb_suplier.Properties.Items.Items[i].Tag)
        else
          res_sup := res_sup + ',' + IntToStr(chb_suplier.Properties.Items.Items[i].Tag);
    end;


      with DM.LoadStock do
      Begin
          Prepare;
          ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
          ParamByName('IN_ID_DEPARTMENTS').Value := CUR_DEPT_ID;
            ParamByName('IN_FT').Value   := res_ft;
            ParamByName('IN_FST').Value  := res_fst;
            ParamByName('IN_SUP').Value  := res_sup;
{
          if (cb_types.ItemIndex > 0) and (cds_typesFT_ID.AsInteger > 0) then
            ParamByName('IN_FT').Value  := cds_typesFT_ID.AsInteger
          else
            ParamByName('IN_FT').Value  := 0;
          if (cb_types.ItemIndex > 0) and (cds_typesFST_ID.AsInteger > 0) then
            ParamByName('IN_FST').Value := cds_typesFST_ID.AsInteger
          else
            ParamByName('IN_FST').Value  := 0;
}
          ParamByName('IN_ID_STORE_TYPE').Value := ID_STORE_TYPE;
          ExecProc;
      End;
      DM.PPL.Refresh;
      grid_ppl.SetFocus;
  End;
end;


//
//  ��������� ����
//
procedure TPriceF.BitBtn4Click(Sender: TObject);
var
  res, out_res : Variant;
  isGood, isExGross: boolean;
begin
  if DM.PPL.Locate('FINAL_PRICE',0,[]) then
  begin
      MessageBox(Handle, '���������� ������� ���� �������!'+#10+'���������� ����������.', '��������!', MB_ICONWARNING);
      exit;
  end;

  isGood    := true;
  isExGross := true;
  // �������� �� ���� ������� = ���� ������� (������ ��� ���)
  if (dm.id_office = 1) then
  begin
    DM.PPL.DisableControls;
    try
      DM.PPL.First;
      while not DM.PPL.Eof do
      begin
        if DM.PPLRUBLE_PRICE.AsFloat = DM.PPLFINAL_PRICE.AsFloat then
        begin
          isGood := false;
        end;
        if DM.PPLEXTRA_GROSS.AsInteger > 1then
        begin
          isExGross := false;
        end;
        DM.PPL.Next;
      end
    finally
      DM.PPL.EnableControls
    end;

    if not isGood and (MessageDlg('���� �������, ��� ���� ������� = ���� ����������!'+#10+'���������� ���������� ���?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrNo) then
      exit;

    if not isExGross and (MessageDlg('���� �������, ��� ���� ������� � 2 ���� ������ ��������� ����!'+#10+'���������� ���������� ���?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrNo) then
      exit;
  end;

  try
    if DM.PPL.State in [dsEdit,dsInsert] then DM.PPL.Post;
    with DM.SavePrice do
    Begin
      StoredProcName := 'PRICE_PKG.SAVE_PRICES';
      Prepare;
      ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.FieldByName('PPLI_ID').Value;
      ParamByName('OUT_RES').Value := '';
      ExecProc;
      out_res := ParamByName('OUT_RES').Value;
      ShowMessage(out_res);
    End;
    DM.PPL.Refresh;
    grid_ppl.SetFocus;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR)
  End;
end;


//
//  ������� ���������
//
procedure TPriceF.BitBtn5Click(Sender: TObject);
begin
  SetNewPriceParams();
  grid_ppl.SetFocus;
end;


//
//  �������� � ������ ����������� 
//
procedure TPriceF.BitBtn6Click(Sender: TObject);
begin
  if (MessageDlg('����� ����������� ��� ������������� ���� � ������ �������������!'+#10+'���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbNo) = mrNo) then
    exit;

  if DM.PPL.State in [dsEdit,dsInsert] then DM.PPL.Post;
  with DM.UpdatePPL do
  Begin
    StoredProcName := 'PRICE_PKG.UPDATE_PPL';
    Prepare;
    ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
    ExecProc;
  End;
  DM.PPL.Refresh;
  grid_ppl.SetFocus;
end;


//
//  ������������ ������ �����
//
procedure TPriceF.Panel5Resize(Sender: TObject);
begin
  BitBtn8.Left := Panel5.Width - BitBtn8.Width - 8;
end;


//
//  ������� ������� � EXCEL
//
procedure TPriceF.SpeedButton2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_ppl, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
  grid_ppl.SetFocus;
end;



//
//  �� ������ ����� ��������������� ����
//
procedure TPriceF.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  is_sync := false;
  BitBtn1.Enabled := ed;
  BitBtn2.Enabled := ed;
  btn_stock_out.Enabled := ed;
  btnSync.Enabled := ed;
  BitBtn4.Enabled := ed;
  BitBtn5.Enabled := ed;
  BitBtn6.Enabled := ed;
  cxButton1.Enabled := pr;

  BitBtn5.Enabled := (dm.id_office = 1);
  a_changeparams.Enabled := BitBtn5.Enabled;

  a_saveprice.Enabled    := ed;
  a_changeparams.Enabled := ed;
  a_pereschet.Enabled    := ed;
  a_loadinvoice.Enabled  := ed;
  a_loadstock.Enabled    := ed;
  grid_pplView1.OptionsData.Editing := ed;

  mnSyncCurPriceList.Enabled := (dm.id_office = 1) and addit;
  mnSyncSelPriceList.Enabled := mnSyncCurPriceList.Enabled;
  mnRollbackSync.Enabled := false;

  if (DM.PPL_IndexSENDED_TO_WAREHOUSE.AsInteger = 1) then
  begin
    BitBtn1.Enabled := false;
    BitBtn2.Enabled := false;
    btn_stock_out.Enabled := false;
    btnSync.Enabled := false;
    BitBtn4.Enabled := false;
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;

    a_changeparams.Enabled := false;
    btnSyncInv.Enabled := false;
    btnLoadPrice.Enabled := false;
    aLoadOldPrice.Enabled := false;

    mnSamePriceBy.Enabled := false;
    aSetPrice.Enabled := false;
    aSetPriceByOld.Enabled := false;
    aSpecDeal.Enabled := false;
    aBestPrice.Enabled := false;
    aClearPriznak.Enabled := false;

    a_saveprice.Enabled    := false;
    a_changeparams.Enabled := false;
    a_pereschet.Enabled    := false;
    a_loadinvoice.Enabled  := false;
    a_loadstock.Enabled    := false;
    grid_pplView1.OptionsData.Editing := false;
    Label7.Visible         := true;
    mnSyncCurPriceList.Enabled := false;
    mnSyncSelPriceList.Enabled := false;
    mnRollbackSync.Enabled := false;
  end;

  path     := ExtractFilePath(Application.ExeName);
  AOptions := [];

  Label6.Caption := '� ��������: '+DM.PPL_Index.fieldByName('ALL_INV').AsString;
  Label8.Caption := '� �����: '+VarToStr(DM.PPL_Index.fieldByName('PACK_ID').Value);

  AStoreKey     := path + '/ini/Price_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceList';
  grid_pplView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  //grid_pplView1BEST_PRICE.Visible := false;

  cds_types.Close;
  cds_types.ParamByName('ID_DEPT_').AsInteger := CUR_DEPT_ID;
  cds_types.Open;


  mn1.Checked := H_CODE.Visible;
  mn2.Checked := grid_pplView1COUNTRY.Visible;
  mn3.Checked := grid_pplView1COLOUR.Visible;
  mn4.Checked := grid_pplView1BAR_CODE.Visible;
  mn5.Checked := grid_pplView1RUS_MARKS.Visible;
  mn6.Checked := grid_pplView1TYPE_SUBTYPE.Visible;
  mn7.Checked := grid_pplView1F_TYPE.Visible;
  mn8.Checked := grid_pplView1F_SUB_TYPE.Visible;
  mn9.Checked := grid_pplView1NICK.Visible;

    chb_types.Properties.OnEditValueChanged := nil;
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add('SELECT a.ft_id, a.f_type FROM ft_view a where ID_DEPARTMENTS='+IntToStr(CUR_DEPT_ID)+' order by a.f_type');
    DM.ForceQ.Open;
    FillChComboCx(DM.ForceQ, chb_types, '');
    chb_types.Properties.OnEditValueChanged := chb_typesPropertiesEditValueChanged;

    chb_suplier.Properties.OnEditValueChanged := nil;
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add('SELECT a.s_id, a.s_name_ru FROM SUPPLIERS a order by a.s_name_ru');
    DM.ForceQ.Open;
    FillChComboCx(DM.ForceQ, chb_suplier, '');
    chb_suplier.Properties.OnEditValueChanged := chb_suplierPropertiesEditValueChanged;

    aLoadClientsInCombo.Execute;


    try
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT ppli_id, ppli_id ||'' - ''|| to_char(ppl_date,''dd.mm.yyyy'') ||'' - ''|| ppl_comment as inv_str FROM prepare_price_list_index where ID_DEPARTMENTS='+IntToStr(CUR_DEPT_ID)+' and ppli_id <> '+DM.PPL_Index.fieldByName('PPLI_ID').AsString+' and ppl_date > sysdate - 15 and finished=1 order by ppl_date desc');
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, cbInvoices, '������� ������� ��� ���������');
      DM.SelQ.Close;
      if DM.PPL_Index.fieldByName('ppli_id_old').AsInteger > 0 then
        cbInvoices.EditValue := DM.PPL_Index.fieldByName('ppli_id_old').AsInteger
      else
        cbInvoices.ItemIndex := 0;
    except
      on E: Exception do ShowMessage(E.Message);
    end;

end;


//
//  �� �������� ����� ��������� ����
//
procedure TPriceF.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin

  if is_sync then
  begin
    if (MessageDlg('��������� ��������� ��� � ����� � ��������������?', mtConfirmation, [mbNo,mbOk], 0, mbNo) = mrNo) then
      DM.STAR_DB.Rollback
    else
      DM.STAR_DB.Commit;
  end
  else
    DM.STAR_DB.Commit;


  AOptions := [];

  AStoreKey     := path + '/ini/Price_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceList';
  grid_pplView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  ���������� �������������� �������
//
procedure TPriceF.grid_pplView1DblClick(Sender: TObject);
begin
  ShowNomenclature(DM.STAR_DB, grid_pplView1.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;
procedure TPriceF.grid_pplView1DISTRIBUTED_NUMBERCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ( ARow1.Values[grid_pplView1N_ID.Index] = ARow2.Values[grid_pplView1N_ID.Index] ) then
    AAreEqual := true
  else
    AAreEqual := false;
end;

procedure TPriceF.grid_pplView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     ShowNomenclature(DM.STAR_DB, grid_pplView1.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;



procedure TPriceF.grid_pplView1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key='1') or (Key='0')) and grid_pplView1SPEC_PRICE.Focused then
    do_check('SO',DM.PPLSPEC_PRICE.AsInteger);
  if ((Key='1') or (Key='0')) and grid_pplView1BEST_PRICE.Focused then
    do_check('BP',DM.PPLNOM_NEW.AsInteger);
end;

procedure TPriceF.do_check(param: string; val: integer);
begin
  try
     DM.PPL.Edit;
     if param = 'SO' then
       DM.PPLSPEC_PRICE.AsInteger := abs(val - 1);
     if param = 'BP' then
       DM.PPLNOM_NEW.AsInteger := abs(val - 1);
     DM.PPL.Post;
     grid_pplView1.ViewData.DataController.GotoNext;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR);
  end;
end;



procedure TPriceF.grid_pplView1OBSHAKCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ( ARow1.Values[grid_pplView1N_ID.Index] = ARow2.Values[grid_pplView1N_ID.Index] ) then
    AAreEqual := true
  else
    AAreEqual := false;
end;

procedure TPriceF.INVOICE_AMOUNTCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  if ( ARow1.Values[grid_pplView1N_ID.Index] = ARow2.Values[grid_pplView1N_ID.Index] ) and (ARow1.Values[HOL_PRICE.Index] = ARow2.Values[HOL_PRICE.Index]) then
    AAreEqual := true
  else
    AAreEqual := false;
end;

//
// ������ ���������� ������� � ������� ������
//
procedure TPriceF.grid_pplView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  Col, price_old, price_new, RUBLE_PRICE : Variant;
begin

  if not AViewInfo.Selected then
  begin
    // ������ ���������� ������� � ������� ������
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('Col').Index
                );

    if (Col > 0) then
      ACanvas.Brush.Color := st_same.Color // Col
    else
      ACanvas.Brush.Color := clWhite;

    // ������ �������� �������
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('INVOICE_DATA_ID').Index
                );

    if (Col > 0) then
      ACanvas.Font.Color := clBlack
    else
      ACanvas.Font.Color := $00FF8080;


    // ������ ������ � ������
    price_new := grid_pplView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('FINAL_PRICE').Index
                  );
    RUBLE_PRICE := grid_pplView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('RUBLE_PRICE').Index
                  );
    if col > 0 then
      price_old := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('PRICE_PCC').Index
                )
    else
      price_old := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('LAST_PRICE').Index
                );


    if (grid_pplView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FINAL_PRICE') then
    begin
      if (price_old > 0) and (price_new > 0) then
      begin
        if (trunc(price_old) < trunc(price_new)) then
          ACanvas.Brush.Color := st_profit.Color;
        if (trunc(price_old) > trunc(price_new)) then
          ACanvas.Brush.Color := st_defolt.Color;
        // ������ ������� � ������� ���� ������� = ���� �������
        if (trunc(RUBLE_PRICE) = trunc(price_new)) and (dm.id_office = 1) then
          ACanvas.Brush.Color := st_equal.Color;
      end;

      Col := grid_pplView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('extra_gross').Index
                  );
      if (Col > 1) then
          ACanvas.Brush.Color := st_extragross.Color;


      Col := grid_pplView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('FINAL_PRICE').Index
                  );
      if (Col = 0) then
          ACanvas.Brush.Color := st_nullprice.Color;

    end;


    // ������ �������
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('NOM_NEW').Index
                );
    if (Col = 1) then
      ACanvas.Brush.Color := st_best_price.Color;

    // ������ ����.�����������
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('SPEC_PRICE').Index
                );
    if (Col = 1) then
      ACanvas.Brush.Color := st_spec_price.Color;
{
    // ������ M URIS_
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('PAINT_SUPER').Index
                );
    if (Col = 1) then
    begin
      ACanvas.Font.Color := stSuper.TextColor;
      ACanvas.Font.Style := stSuper.Font.Style;
    end;
}
    // ������ �������� � "!"
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('spec').Index
                );
    if (Col > 0) and (grid_pplView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_POT') then
      ACanvas.Brush.Color := stSPEC.Color;


    // ������ ������� ���� � ��� ���� ����.����
    if (grid_pplView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_POT') then
    begin
      Col := grid_pplView1.DataController.GetValue(
                  AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('HAS_PRICE').Index
                  );
      if (Col = 1) then
          ACanvas.Brush.Color := st_hasprice.Color;
    end;

  end;

    // ��������� ������� � ������� ��� �������
    Col := grid_pplView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_pplView1.GetColumnByFieldName('id_clients').Index
                );
    if (Col > 0) then
    begin
      if (grid_pplView1.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FINAL_PRICE') then
      begin
        ACanvas.Font.Color := clPurple;
        ACanvas.Font.Style := [fsBold];
      end;
    end;

end;



procedure TPriceF.PrFrF1Edit1Change(Sender: TObject);
begin
  CheckTEditContentFloat(Sender,$008BD683,clRed);
end;


//
//  ����������
//
procedure TPriceF.BitBtn7Click(Sender: TObject);
begin
  try
    if DM.PPL.State in [dsEdit,dsInsert] then DM.PPL.Post;
    frm_stat := Tfrm_stat.Create(Application);
    try
      frm_stat.CDS_STAT.Close;
      frm_stat.CDS_STAT.ParamByName('id_').AsInteger := DM.PPL_Index.FieldByName('PPLI_ID').Value;
      frm_stat.CDS_STAT.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
      frm_stat.CDS_STAT.ParamByName('date1_').AsDate := Now()-7;
      frm_stat.CDS_STAT.ParamByName('date2_').AsDate := Now();
      frm_stat.CDS_STAT.ParamByName('v_office').AsInteger := dm.id_office;
      frm_stat.cxDateEdit1.EditValue := Now() - 7;
      frm_stat.cxDateEdit2.EditValue := Now();
      frm_stat.CDS_STAT.Open;
      frm_stat.ShowModal;
      frm_stat.CDS_STAT.Close;

      dm.PPL_Index.RefreshRecord;      
    finally
      frm_stat.Free;
    end;
  except on E: Exception do
    begin
      frm_stat.Free;
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR);
    end;
  End;

end;


//
//  ������ ������
//
procedure TPriceF.btn_printClick(Sender: TObject);
var mTXT: TfrxMemoView;
begin
  try
    DM.cds_ppl_price.Open;
    frx_price.LoadFromFile(StartDir + '/Reps/PriceListNew.fr3');
    frx_price.Variables['PrintMark'] := '''�����: ' + CUR_DEPT_NAME + '''';


      mTXT   := frx_price.FindObject('Memo6') as TfrxMemoView;
      if DM.id_office = 1 then
         mTXT.Text := '�������: (495) 782 0030, ����: (495) 782 0099, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 2 then
         mTXT.Text := '�������: (846) 342-55-25, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 3 then
         mTXT.Text := '�������: (843) 203-0190, ����: (843) 209-0191, e-mail: info@starlight.ru, www.starlight.ru';


    frx_price.ShowReport;
    DM.cds_ppl_price.Close;
    grid_ppl.SetFocus;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR)
  end;
end;


//
//  ��������� ����
//
procedure TPriceF.btn_stock_outClick(Sender: TObject);
begin
  if (DM.PPL.Active = true) and (DM.PPL.RecordCount > 0) then
  Begin
    if MessageDlg('��� ������ � ���������� ����� ��������! ��������� ����?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
    begin
      with DM.ForceQ do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('delete from PREPARE_PRICE_LIST where PPLI_ID=:in_ppli_id and INVOICE_DATA_ID is null');
        Prepare;
        ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
        Execute;
      End;
      DM.PPL.Refresh;
    end;
    grid_ppl.SetFocus;
  End;
end;

procedure TPriceF.chb_clientsPropertiesEditValueChanged(Sender: TObject);
begin
  check_clients.Checked := false;
end;

procedure TPriceF.chb_suplierPropertiesEditValueChanged(Sender: TObject);
begin
  check_suplier.Checked := false;
end;

procedure TPriceF.chb_typesPropertiesEditValueChanged(Sender: TObject);
begin
  chek_types.Checked := false;
end;

procedure TPriceF.check_clientsClick(Sender: TObject);
begin
  if check_clients.Checked then
  begin
    chb_clients.Properties.OnEditValueChanged := nil;
    chb_clients.EditValue := 0;
    chb_clients.Properties.OnEditValueChanged := chb_clientsPropertiesEditValueChanged;
  end;
end;

procedure TPriceF.check_suplierClick(Sender: TObject);
begin
  if check_suplier.Checked then
  begin
    chb_suplier.Properties.OnEditValueChanged := nil;
    chb_suplier.EditValue := 0;
    chb_suplier.Properties.OnEditValueChanged := chb_suplierPropertiesEditValueChanged;
  end;
end;

procedure TPriceF.chek_typesClick(Sender: TObject);
begin
  if chek_types.Checked then
  begin
    chb_types.Properties.OnEditValueChanged := nil;
    chb_types.EditValue := 0;
    chb_types.Properties.OnEditValueChanged := chb_typesPropertiesEditValueChanged;
  end;
end;

procedure TPriceF.cxButton2Click(Sender: TObject);
var i: integer;
    vv: string;
    vItemList: TcxFilterCriteriaItemList;
begin
  DM.PPL.Refresh;

  if not check_clients.Checked then
  begin
    chb_clients.PostEditValue;
	  vv := chb_clients.EditValue;
    grid_pplView1.DataController.Filter.Clear;
    vItemList := grid_pplView1.DataController.Filter.Root.AddItemList(fboOr);
    for i:=0 to chb_clients.Properties.Items.Count do
    begin
  	  if ( vv[i+1] = '1' ) then
      begin
        vItemList.AddItem(grid_pplView1TO_CLIENT, foEqual, chb_clients.Properties.Items.Items[i].Description, chb_clients.Properties.Items.Items[i].Description);
      end;
    end;
    grid_pplView1.DataController.Filter.Active := True;
  end;
end;



//
// �������������� ����
//
procedure TPriceF.btnSyncClick(Sender: TObject);
begin
  if (DM.PPL.Active = true) and (DM.PPL.RecordCount > 0) then
  Begin
    if MessageDlg('����� ���������������� ������� �� ������! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
    begin
      with DM.ForceQ do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin price_pkg.sync_ppli(:in_ppli_id, :use_sended); end;');
        Prepare;
        ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
        ParamByName('use_sended').Value := BoolToInt(chbUseSended.Checked);
        Execute;
      End;
      DM.PPL.Refresh;
    end;
    grid_ppl.SetFocus;
  End;
end;


//
// �������������� ������
//
procedure TPriceF.btnSyncInvClick(Sender: TObject);
begin
  if (DM.PPL.Active = true) and (DM.PPL.RecordCount > 0) then
  Begin
    if MessageDlg('����� ���������������� ��� ������ �� ������������ ��������! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
    begin
      with DM.ForceQ do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin price_pkg.update_INVOICE(:in_ppli_id); end;');
        Prepare;
        ParamByName('IN_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
        Execute;
      End;
      DM.PPL.Refresh;
    end;
    grid_ppl.SetFocus;
  End;
end;


// ��������� �������� ������ � �����
procedure TPriceF.mn1Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked = false then (Sender as TMenuItem).Checked := true else (Sender as TMenuItem).Checked := false;
  Grid_Set;
end;


//
//  ������������� ��������� ��� �������
//
procedure TPriceF.Grid_Set;
begin
  H_CODE.Visible                 := mn1.Checked;
  grid_pplView1COUNTRY.Visible   := mn2.Checked;
  grid_pplView1COLOUR.Visible    := mn3.Checked;
  grid_pplView1BAR_CODE.Visible  := mn4.Checked;
  grid_pplView1RUS_MARKS.Visible := mn5.Checked;
  grid_pplView1TYPE_SUBTYPE.Visible := mn6.Checked;
  grid_pplView1F_TYPE.Visible       := mn7.Checked;
  grid_pplView1F_SUB_TYPE.Visible   := mn8.Checked;
  grid_pplView1NICK.Visible   := mn9.Checked;
end;


procedure TPriceF.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_pplView1.DataController, 1);
end;

// ��������� �������� ������ � �����
procedure TPriceF.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_pplView1.DataController, 0);
end;


// �������� ������ �������� � �����
procedure TPriceF.aLoadClientsInComboExecute(Sender: TObject);
begin
    chb_clients.Properties.OnEditValueChanged := nil;
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Clear;
{
      select d.id_orders i
      from distributions_invoices i, distributions_index d, PREPARE_PRICE_LIST_INDEX p
      where i.dist_ind_id = d.dist_ind_id and p.ppli_id = 20002809 and (i.inv_id = p.inv_id or i.inv_id = p.inv_id2 or i.inv_id = p.inv_id3 or i.inv_id = p.inv_id4)
    ;

      select distinct d.nick
      FROM orders_list a
        inner join orders_clients b on b.id_orders = 383 and b.id_orders_clients = a.id_orders_clients and b.active = 1
        inner join clients d on d.id_clients = b.id_clients
        left outer join PPL_CLIENT_PRICE p on p.ppli_id = 20002809 and p.n_id = a.N_ID and p.ID_CLIENTS = d.id_clients
      WHERE a.active = 1
        and a.quantity <> 0
      group by d.nick, b.alpha, b.ID_ORDERS_CLIENTS, b.id_clients, b.pack_, a.zatirka, b.id_orders, p.SPEC_PRICE, p.PPLCP_ID
}

    DM.ForceQ.SQL.Add('SELECT distinct 1, TO_CLIENT FROM prepare_price_list_index a, invoice_data b where a.ppli_id = '+DM.PPL_IndexPPLI_ID.AsString+' and (b.inv_id = a.inv_id or b.inv_id = a.inv_id2 or b.inv_id = a.inv_id3 or b.inv_id = a.inv_id4) order by TO_CLIENT');
    DM.ForceQ.Open;
    FillChComboCx(DM.ForceQ, chb_clients, '');
    chb_clients.Properties.OnEditValueChanged := chb_clientsPropertiesEditValueChanged;
end;


// �������� ���� �� ������ ��
procedure TPriceF.aLoadOldPriceExecute(Sender: TObject);
begin
  UOldPrice.OpenForShowModal;
end;


// �������� ������ ���������� ������ �������
procedure TPriceF.aOrderStatExecute(Sender: TObject);
var bm : TBookMark;
begin
  if DM.PPL_IndexINV_ID.IsNull then exit;
  UClientList.ShowClientList(DM.PPL_IndexPPLI_ID.AsInteger, DM.PPLN_ID.AsInteger, DM.PPLCOMPILED_NAME_OTDEL.AsString, DM.PPLFINAL_PRICE.AsFloat);

    bm := grid_pplView1.DataController.DataSet.GetBookmark;
    try
      grid_pplView1.DataController.DataSet.Refresh;
    finally
      grid_pplView1.DataController.DataSet.GotoBookmark(bm);
      grid_pplView1.DataController.DataSet.FreeBookmark(bm);
    end;

end;

//
//  ��������� ������ ���� �� ����� �� �������� ---------------------------------
//

// ��������� ����� ���� ��� ��������� ������� �� ���������� ����
procedure TPriceF.aSetPriceByOldExecute(Sender: TObject);
var price: real;
begin
  price := LAST_PRICE.EditValue;
  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 1;
    pnlPrice.Left    := trunc(Panel1.Width / 2) - 90;
    pnlPrice.Top     := trunc(Panel1.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;

// ��������� ����� ���� ��� ��������� �������
procedure TPriceF.aSetPriceExecute(Sender: TObject);
var price: real;
begin
  price := FINAL_PRICE.EditValue;
  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 1;
    pnlPrice.Left    := trunc(Panel1.Width / 2) - 90;
    pnlPrice.Top     := trunc(Panel1.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;


procedure TPriceF.te_priceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: integer;
    SavePlace : TBookmark;
begin
  if (Key = VK_DELETE) then
  begin
    pnlPrice.Visible := false;
    grid_ppl.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_price.PostEditValue;
    pnlPrice.Visible := false;

    SavePlace := DM.PPL.GetBookmark;
    grid_pplView1.DataController.DataSet.DisableControls;
    try
      if te_price.Tag = 1 then
      begin
        DM.ForceQ.SQL.Clear;
        DM.ForceQ.SQL.Add('UPDATE PREPARE_PRICE_LIST SET FINAL_PRICE = :FINAL_PRICE, date_change=sysdate WHERE PPL_ID = :P_ID');
        DM.ForceQ.Prepare;

        for i := 0 to grid_pplView1.Controller.SelectedRowCount-1 do
        begin
          DM.ForceQ.ParamByName('FINAL_PRICE').AsCurrency := te_price.EditingValue;
          DM.ForceQ.ParamByName('P_ID').AsInteger := grid_pplView1.Controller.SelectedRows[i].Values[grid_pplView1PPL_ID.Index];
          DM.ForceQ.Execute;
        end;
      end;

      if te_price.Tag = 2 then
      begin
        DM.ForceQ.SQL.Clear;
        DM.ForceQ.SQL.Add('UPDATE PREPARE_PRICE_LIST SET FINAL_PRICE = round((PRICE_PCC*:PROFIT),2), PROFIT_COEFFITIENT = :PROFIT, date_change=sysdate WHERE PPL_ID = :P_ID');
        DM.ForceQ.Prepare;

        for i := 0 to grid_pplView1.Controller.SelectedRowCount-1 do
        begin
          if grid_pplView1.Controller.SelectedRows[i].Values[grid_pplView1INVOICE_DATA_ID.Index] > 0 then
          begin
            DM.ForceQ.ParamByName('PROFIT').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_ID').AsInteger := grid_pplView1.Controller.SelectedRows[i].Values[grid_pplView1PPL_ID.Index];
            DM.ForceQ.Execute;
          end;
        end;
      end;

      if te_price.Tag = 3 then
      begin
        DM.ForceQ.SQL.Clear;
        DM.ForceQ.SQL.Add('UPDATE PREPARE_PRICE_LIST SET FINAL_PRICE = round((PRICE_PCC*:PROFIT),2), PROFIT_COEFFITIENT = :PROFIT, date_change=sysdate WHERE PPL_ID = :P_ID');
        DM.ForceQ.Prepare;

        grid_pplView1.DataController.DataSet.First;
        while not grid_pplView1.DataController.DataSet.Eof do
        begin
          if grid_pplView1.DataController.DataSet.FieldByName('INVOICE_DATA_ID').AsInteger > 0 then
          begin
            DM.ForceQ.ParamByName('PROFIT').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_ID').AsInteger := grid_pplView1.DataController.DataSet.FieldByName('PPL_ID').AsInteger;
            DM.ForceQ.Execute;
          end;
          grid_pplView1.DataController.DataSet.Next;
        end;
      end;
    finally
      grid_pplView1.DataController.DataSet.EnableControls;
      dm.PPL_Index.RefreshRecord;
      DM.PPL.Refresh;
      DM.PPL.GotoBookmark(SavePlace);
      DM.PPL.FreeBookmark(SavePlace);
      grid_ppl.SetFocus;
    end;
  end;

end;


procedure TPriceF.mnSamePriceByGroupClick(Sender: TObject);
begin
  SetPriceBy((Sender as TMenuItem).Name);
end;

procedure TPriceF.mnSamePriceBySubGroupAndLengthClick(Sender: TObject);
begin
  SetPriceBy((Sender as TMenuItem).Name);
end;

procedure TPriceF.mnSamePriceBySubGroupClick(Sender: TObject);
begin
  SetPriceBy((Sender as TMenuItem).Name);
end;


procedure TPriceF.SetPriceBy(action: String);
var idGroup, idSubGroup, idLength: Integer;
    i: Integer;
    price: Real;
begin
  if grid_pplView1N_ID.EditValue > 0 then
  begin
    idGroup     := grid_pplView1FT_ID.EditValue;
    idSubGroup  := grid_pplView1FST_ID.EditValue;
    idLength    := grid_pplView1LEN.EditValue;
    price       := FINAL_PRICE.EditValue;

    grid_pplView1.DataController.Filter.Clear;

    if (action = 'mnSamePriceByGroup') then
    begin
      grid_pplView1FT_ID.DataBinding.AddToFilter(nil, foEqual, idGroup);
    end;

    if (action = 'mnSamePriceBySubGroup') then
    begin
      grid_pplView1FST_ID.DataBinding.AddToFilter(nil, foEqual, idSubGroup);
    end;

    if (action = 'mnSamePriceBySubGroupAndLength') then
    begin
      grid_pplView1FST_ID.DataBinding.AddToFilter(nil, foEqual, idSubGroup);
      grid_pplView1LEN.DataBinding.AddToFilter(nil, foEqual, idLength);
    end;

    grid_pplView1.DataController.Filter.Active := True;

    if MessageDlg('����� ����������� ������ ���� '+FloatToSTr(price)+' �� ��������� �������! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
    begin
      while not DM.PPL.Eof do
      begin
        DM.PPL.Edit;
        DM.PPL.FieldByName('FINAL_PRICE').AsCurrency := price;
        DM.PPL.Post;
        DM.PPL.Next;
      end;
    end;
  end;
end;
// -----------------------------------------------------------------------------



//
//  ��������� �������� ����������� ---------------------------------
//
procedure TPriceF.aBestPriceExecute(Sender: TObject);
begin
  SetMark((Sender as TAction).Name);
end;

procedure TPriceF.aSpecDealExecute(Sender: TObject);
begin
  SetMark((Sender as TAction).Name);
end;


procedure TPriceF.SetMark(action: String);
var idGroup, idSubGroup, idLength: Integer;
    i: Integer;
    price: Real;
begin
  if grid_pplView1N_ID.EditValue > 0 then
  begin
    // ��� �������
    if (action = 'aBestPrice') then
    begin
      if grid_pplView1BEST_PRICE.EditValue = 1 then
        grid_pplView1BEST_PRICE.EditValue := NULL
      else
        grid_pplView1BEST_PRICE.EditValue := 1;
    end;

    // ���� �����������
    if (action = 'aSpecDeal') then
    begin
      if grid_pplView1SPEC_PRICE.EditValue = 1 then
        grid_pplView1SPEC_PRICE.EditValue := NULL
      else
      grid_pplView1SPEC_PRICE.EditValue := 1;
    end;
{
    if (action = 'mnSamePriceBySubGroupAndLength') then
    begin
      grid_pplView1FST_ID.DataBinding.AddToFilter(nil, foEqual, idSubGroup);
      grid_pplView1LEN.DataBinding.AddToFilter(nil, foEqual, idLength);
    end;

    grid_pplView1.DataController.Filter.Active := True;

    if MessageDlg('����� ����������� ������ ���� '+FloatToSTr(price)+' �� ��������� �������! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
      for i := 0 to grid_pplView1.ViewData.RowCount-1 do
      begin
        grid_pplView1.ViewData.Records[i].Values[FINAL_PRICE.Index] := price;
      end;
}
  end;
end;
// -----------------------------------------------------------------------------



procedure TPriceF.bsEqlPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsExtraGrossClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsHASPRICEClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsProfitClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsLossClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;



procedure TPriceF.bsSpecPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsBestPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsSameNomsWithoutSamePriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsSPECClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.bsNullPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPriceF.sort_table(filter_param: String);
begin
  grid_pplView1.DataController.Filter.Clear;
  if filter_param <> '' then
  begin
    if filter_param = 'bsSpecPrice' then grid_pplView1SPEC_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'bsBestPrice' then grid_pplView1BEST_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'bsSameNomsWithoutSamePrice' then grid_pplView1COL.DataBinding.AddToFilter(nil, foGreater, 0);
    if filter_param = 'bsNullPrice' then FINAL_PRICE.DataBinding.AddToFilter(nil, foEqual, 0);

    if filter_param = 'bsProfit' then grid_pplView1LOSS_PROFIT.DataBinding.AddToFilter(nil, foEqual, 1,'��', true);
    if filter_param = 'bsLoss' then grid_pplView1LOSS_PROFIT.DataBinding.AddToFilter(nil, foEqual, 0,'���', true);
    if filter_param = 'bsEqlPrice' then grid_pplView1EQ_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'bsSPEC' then grid_pplView1SPEC.DataBinding.AddToFilter(nil, foGreater, 0);

    if filter_param = 'bsHASPRICE' then grid_pplView1HAS_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);

    if filter_param = 'bsExtraGross' then grid_pplView1EXTRA_GROSS.DataBinding.AddToFilter(nil, foGreater, 1);

    grid_pplView1.DataController.Filter.Active := True;
  end;
end;


procedure TPriceF.aClearFilterExecute(Sender: TObject);
begin
  check_clients.Checked := true;
  DM.PPL.Filter := '';
  DM.PPL.Filtered := false;
  grid_pplView1.DataController.Filter.Clear;
  grid_pplView1.DataController.Filter.Active := False;
end;


procedure TPriceF.aClearNewMarkExecute(Sender: TObject);
begin
    if MessageDlg('����� �������� ������� "�������"! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) <> mrOk then exit;

    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin nomenclature2_pkg.claer_NEW_mark(:v_id_dep); end;');
      Prepare;
      ParamByName('v_id_dep').Value := CUR_DEPT_ID;
      Execute;
    End;
    DM.PPL.Refresh;
end;

procedure TPriceF.aClearPriznakExecute(Sender: TObject);
begin
    if MessageDlg('����� �������� ������� ����.����! ���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbOk) <> mrOk then exit;

    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin price_pkg.clear_price_settings(:v_PPLI_ID); end;');
      Prepare;
      ParamByName('v_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
      Execute;
    End;
    DM.PPL.Refresh;
end;


// ����� �� ��������
procedure TPriceF.aSearchByNameExecute(Sender: TObject);
begin
  search_execute(2);
end;


// �������� ���
procedure TPriceF.aSelectAllExecute(Sender: TObject);
begin
  grid_pplView1.DataController.SelectAll;
end;


// ����� ����������
procedure TPriceF.aDeSelectAllExecute(Sender: TObject);
begin
  grid_pplView1.DataController.ClearSelection;
end;


//
//  �����
//
procedure TPriceF.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(Panel1.Width / 2) - 90;
    Panel_fill.Top     := trunc(Panel1.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;

// ������������ ����� ������
procedure TPriceF.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_ppl.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_search.PostEditValue;
    grid_pplView1.DataController.Filter.Clear;
    COMPILED_NAME.DataBinding.AddToFilter(nil, foLike, '%' + VarToStr(te_search.EditValue) + '%');
    grid_pplView1.DataController.Filter.Active := True;
    Panel_fill.Visible := false;
    grid_ppl.SetFocus;
  end;
end;


// ���������� �� �����
procedure TPriceF.aFilterByTypeExecute(Sender: TObject);
begin
  if (Panel_fill.Visible = false) then
  begin
    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(CUR_DEPT_ID);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := 1; //var_;
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid_pplView1.DataController.Filter.Clear;
      grid_pplView1F_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
       grid_pplView1.DataController.Filter.Active := True;
       grid_ppl.SetFocus;
    end;
  end;
end;


// ���������� �� �����
procedure TPriceF.aGetStatisticExecute(Sender: TObject);
begin
  if (Panel_fill.Visible = false) then
  begin
    frmPriceStatisitic := TfrmPriceStatisitic.Create(Application);
    frmPriceStatisitic.qPriceHistory.ParamByName('p_n_id').AsInteger := DM.PPLN_ID.AsInteger;
    frmPriceStatisitic.qPriceHistory.Open;
    frmPriceStatisitic.Panel2.Caption := VarToStr(grid_pplView1COMPILED_NAME_OTDEL.EditValue);
    if frmPriceStatisitic.ShowModal = mrOk then
    begin
      frmPriceStatisitic.qPriceHistory.Close;
      grid_ppl.SetFocus;
    end;
  end;

end;



// ��������� � ���� ���������� ���� �������
procedure TPriceF.btnLoadPriceClick(Sender: TObject);
begin
  try
    cbInvoices.PostEditValue;

    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin price_pkg.set_ppli_old(:v_PPLI_ID, :v_PPLI_ID_old); end;');
      Prepare;
      ParamByName('v_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
      ParamByName('v_PPLI_ID_old').Value := cbInvoices.EditValue;
      Execute;
    End;
    DM.PPL_Index.RefreshRecord;

    DM.PPL.Close;
    DM.PPL.ParamByName('v_PPLI_ID_OLD').AsInteger := DM.PPL_IndexPPLI_ID_OLD.AsInteger;
    DM.PPL.Open;

  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR)
  end;
end;


// ������������� ��� � ������� �����-������ �����
procedure TPriceF.mnSyncCurPriceListClick(Sender: TObject);
begin
  sync_execute(0);
end;


// ������������� ��� � ���������� ������� (��������� �� ������)
procedure TPriceF.mnSyncSelPriceListClick(Sender: TObject);
begin
  if cbInvoices.EditValue > 0 then
    sync_execute(cbInvoices.EditValue)
  else
    MessageBox(Handle, '���������� ������� ������ ��� �������������', '��������!', MB_ICONINFORMATION);
end;


procedure TPriceF.N16Click(Sender: TObject);
begin
  frmAddSpecOrder.AddSpecOfferFormShow(
    grid_pplView1F_TYPE.EditValue + ' / ' + grid_pplView1F_SUB_TYPE.EditValue,
    COMPILED_NAME.EditValue,
    grid_pplView1COUNTRY.EditValue,
    FINAL_PRICE.EditValue,
    grid_pplView1N_ID.EditValue
  );
end;

// ���������� �������������
procedure TPriceF.sync_execute(param: integer);
begin
  if (MessageDlg('����� ����������� ��� ������������� ���� � ������ �������� ��� ���������� �����!'+#10+'���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbNo) = mrNo) then
    exit;

  try
    cbInvoices.PostEditValue;

    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin price_pkg.sync_with_curr_pricelist(:v_PPLI_ID, :v_PPLI_ID_old); end;');
      Prepare;
      ParamByName('v_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
      ParamByName('v_PPLI_ID_old').Value := param;
      Execute;
    End;
    is_sync := true;
    mnRollbackSync.Enabled := is_sync and addit;

    DM.PPL.Refresh;
    FINAL_PRICE.DataBinding.AddToFilter(nil,foEqual,0);
    grid_pplView1.DataController.Filter.Active := True;

  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR)
  end;
end;


procedure TPriceF.mnRollbackSyncClick(Sender: TObject);
begin
  if (MessageDlg('������������� ����� ��������!'+#10+'���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbNo) = mrNo) then
    exit;

  is_sync := false;
  mnRollbackSync.Enabled := false;

  DM.STAR_DB.Rollback;
  DM.PPL.Refresh;
end;


// ���������� ������ ���� ������� �� ����������
procedure TPriceF.aSetProfitExecute(Sender: TObject);
var price: real;
begin
  price := grid_pplView1PROFIT_COEFFITIENT.EditValue;
  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 2;
    pnlPrice.Left    := trunc(Panel1.Width / 2) - 90;
    pnlPrice.Top     := trunc(Panel1.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;


// ���������� ������ ���� ������� �� �������� ��������
procedure TPriceF.aSetProfitDataSetExecute(Sender: TObject);
var price: real;
begin
  if grid_pplView1PROFIT_COEFFITIENT.EditValue = null then
    price := DM.PPL_IndexPROFIT_COEFFITIENT.AsFloat
  else
    price := grid_pplView1PROFIT_COEFFITIENT.EditValue;
  
  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 3;
    pnlPrice.Left    := trunc(Panel1.Width / 2) - 90;
    pnlPrice.Top     := trunc(Panel1.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;


//
//  ������������� � WebShop. �������� ������� � ����, ��� ��������� ���� �� �����.
//
procedure TPriceF.mnSyncWebShopClick(Sender: TObject);
begin
  if (MessageDlg('����� ����������� ������� � WebShop �� ���� �������� � �������� ���������!'+#10+'���������� ��������?', mtConfirmation, [mbNo,mbOk], 0, mbNo) = mrNo) then
    exit;

  try
    cbInvoices.PostEditValue;

    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin price_pkg.sync_webshop_prices(:v_PPLI_ID); end;');
      Prepare;
      ParamByName('v_PPLI_ID').Value := DM.PPL_Index.fieldByName('PPLI_ID').Value;
      Execute;
    End;

    MessageBox(Handle, '�������� ������ �������', '���������', MB_ICONINFORMATION);

    //DM.PPL.Refresh;
    //FINAL_PRICE.DataBinding.AddToFilter(nil,foEqual,0);
    //grid_pplView1.DataController.Filter.Active := True;

  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), '������!', MB_ICONERROR)
  end;
end;


end.
