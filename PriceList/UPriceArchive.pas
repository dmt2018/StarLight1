unit UPriceArchive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit,
  DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxButtons,
  ExtCtrls, cxCurrencyEdit, cxCalc, cxPC, ActnList, cxGridExportLink, ShellAPI;

type
  TfrmPriceArchive = class(TForm)
    Panel3: TPanel;
    btnClose: TcxButton;
    btnRefresh: TcxButton;
    dtStart: TcxDateEdit;
    dtEnd: TcxDateEdit;
    PPL_Arch: TOraQuery;
    PPL_ArchPPLI_ID: TFloatField;
    PPL_ArchPPL_COMMENT: TStringField;
    PPL_ArchPPL_DATE: TDateTimeField;
    PPL_ArchPRIME_COAST_COEFFICIENT: TFloatField;
    PPL_ArchPROFIT_COEFFITIENT: TFloatField;
    PPL_ArchEXCHANGE_RATE: TFloatField;
    PPL_ArchFINISHED: TIntegerField;
    PPL_ArchUSE_CUST_COEF: TIntegerField;
    PPL_ArchID_DEPARTMENTS: TFloatField;
    PPL_ArchINV_ID: TFloatField;
    PPL_ArchINV_DATE: TDateTimeField;
    PPL_ArchSENDED_TO_WAREHOUSE: TIntegerField;
    PPL_ArchS_NAME_RU: TStringField;
    PPL_ArchIS_MINUS: TFloatField;
    PPL_ArchCOMMENTS: TStringField;
    PPL_ArchINV_ID2: TFloatField;
    PPL_ArchINV_ID3: TFloatField;
    PPL_ArchINV_ID4: TFloatField;
    PPL_ArchPACK_ID: TIntegerField;
    PPL_ArchALL_INV: TStringField;
    PPL_Arch_DS: TOraDataSource;
    pcArchiveMain: TcxPageControl;
    tshListPPLI: TcxTabSheet;
    tshPriceList: TcxTabSheet;
    gd_prices_arch: TcxGrid;
    gd_prices_arch_v: TcxGridDBTableView;
    gd_prices_arch_vFINISHED: TcxGridDBColumn;
    gd_prices_arch_vSENDED_TO_WAREHOUSE: TcxGridDBColumn;
    gd_prices_arch_vPPL_COMMENT: TcxGridDBColumn;
    gd_prices_arch_vPPL_DATE: TcxGridDBColumn;
    gd_prices_arch_vPRIME_COAST_COEFFICIENT: TcxGridDBColumn;
    gd_prices_arch_vPROFIT_COEFFITIENT: TcxGridDBColumn;
    gd_prices_arch_vEXCHANGE_RATE: TcxGridDBColumn;
    gd_prices_arch_vUSE_CUST_COEF: TcxGridDBColumn;
    gd_prices_arch_vINV_ID: TcxGridDBColumn;
    gd_prices_arch_vPACK_ID: TcxGridDBColumn;
    gd_prices_arch_vIS_MINUS: TcxGridDBColumn;
    gd_prices_arch_vINV_DATE: TcxGridDBColumn;
    gd_prices_arch_vCOMMENTS: TcxGridDBColumn;
    gd_prices_arch_vS_NAME_RU: TcxGridDBColumn;
    gd_prices_arch_vPPLI_ID: TcxGridDBColumn;
    gd_prices_arch_vID_DEPARTMENTS: TcxGridDBColumn;
    gd_prices_arch_vINV_ID1: TcxGridDBColumn;
    gd_prices_arch_vINV_ID2: TcxGridDBColumn;
    gd_prices_arch_vINV_ID3: TcxGridDBColumn;
    gd_prices_arch_vINV_ID4: TcxGridDBColumn;
    gd_prices_arch_l: TcxGridLevel;
    grid_ppl: TcxGrid;
    grid_pplView1: TcxGridDBTableView;
    H_CODE: TcxGridDBColumn;
    COMPILED_NAME: TcxGridDBColumn;
    grid_pplView1RUS_MARKS: TcxGridDBColumn;
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
    INV_TOTAL_PROFIT: TcxGridDBColumn;
    STOK_TOTAL_PROFIT: TcxGridDBColumn;
    TOTAL_PROFIT: TcxGridDBColumn;
    HOL_TYPE: TcxGridDBColumn;
    grid_pplView1PPLI_ID: TcxGridDBColumn;
    grid_pplView1PPL_ID: TcxGridDBColumn;
    grid_pplView1COMING_DATE: TcxGridDBColumn;
    grid_pplView1LEFT_AMOUNT: TcxGridDBColumn;
    grid_pplView1GIVEN_AMOUNT: TcxGridDBColumn;
    grid_pplView1N_ID: TcxGridDBColumn;
    grid_pplView1COL: TcxGridDBColumn;
    grid_pplView1COMPILED_NAME: TcxGridDBColumn;
    grid_pplView1INVOICE_DATA_ID: TcxGridDBColumn;
    grid_pplView1CAME_TYPE: TcxGridDBColumn;
    grid_pplView1F_TYPE: TcxGridDBColumn;
    grid_pplView1INV_TOTAL_SUM: TcxGridDBColumn;
    grid_pplView1STOK_TOTAL_SUM: TcxGridDBColumn;
    grid_pplView1NID_ROWNUM: TcxGridDBColumn;
    grid_ppl_Level1: TcxGridLevel;
    PPL: TOraQuery;
    PPLPPLI_ID: TFloatField;
    PPLPPL_ID: TFloatField;
    PPLCOMING_DATE: TDateTimeField;
    PPLINVOICE_AMOUNT: TFloatField;
    PPLSTOCK_AMOUNT: TFloatField;
    PPLLEFT_AMOUNT: TFloatField;
    PPLGIVEN_AMOUNT: TFloatField;
    PPLHOL_PRICE: TFloatField;
    PPLRUBLE_PRICE: TFloatField;
    PPLLAST_PRICE: TFloatField;
    PPLPRICE_PCC: TFloatField;
    PPLPRICE_PCC_PC: TFloatField;
    PPLN_ID: TFloatField;
    PPLFINAL_PRICE: TFloatField;
    PPLINV_TOTAL_SUM: TFloatField;
    PPLSTOK_TOTAL_SUM: TFloatField;
    PPLINV_TOTAL_PROFIT: TFloatField;
    PPLCOMPILED_NAME: TStringField;
    PPLTOTAL_SUM: TFloatField;
    PPLTOTAL_PROFIT: TFloatField;
    PPLCUST_COEF: TFloatField;
    PPLH_CODE: TStringField;
    PPLCOL: TFloatField;
    PPLRUS_MARKS: TStringField;
    PPLINVOICE_DATA_ID: TFloatField;
    PPLCOMPILED_NAME_POT: TStringField;
    PPLF_TYPE: TStringField;
    PPLCAME_TYPE: TStringField;
    PPLNID_ROWNUM: TFloatField;
    PPLHOL_TYPE: TStringField;
    PPLSTOK_TOTAL_PROFIT: TFloatField;
    PPL_DS: TOraDataSource;
    alArchive: TActionList;
    aPPLI: TAction;
    aPPL: TAction;
    pmArchive: TPopupMenu;
    mnExcel: TMenuItem;
    SaveDialog1: TSaveDialog;
    N1: TMenuItem;
    mnDelPrice: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dtStartKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gd_prices_arch_vDblClick(Sender: TObject);
    procedure gd_prices_arch_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aPPLIExecute(Sender: TObject);
    procedure aPPLExecute(Sender: TObject);
    procedure tshPriceListShow(Sender: TObject);
    procedure tshListPPLIShow(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure mnDelPriceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPriceArchive: TfrmPriceArchive;

implementation

uses DataModule, Globals;

{$R *.dfm}

procedure TfrmPriceArchive.aPPLExecute(Sender: TObject);
begin
  pcArchiveMain.ActivePageIndex := 1;
end;

procedure TfrmPriceArchive.aPPLIExecute(Sender: TObject);
begin
  pcArchiveMain.ActivePageIndex := 0;
end;

procedure TfrmPriceArchive.btnCloseClick(Sender: TObject);
begin
  PPL_Arch.Close;
  Close;
end;

procedure TfrmPriceArchive.btnRefreshClick(Sender: TObject);
begin
  dtStart.PostEditValue;
  dtEnd.PostEditValue;
  with PPL_Arch do
  Begin
    Close;
    ParamByName('ID_DEPT_').Value := CUR_DEPT_ID;
    ParamByName('V_OFFICE').Value := dm.id_office;
    ParamByName('V_DBEGIN').Value := dtStart.EditValue;
    ParamByName('V_DEND').Value   := dtEnd.EditValue;
    Open;
  End;
  pcArchiveMain.ActivePageIndex := 0;
  gd_prices_arch.SetFocus;
end;

procedure TfrmPriceArchive.dtStartKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnRefreshClick(nil);
end;

procedure TfrmPriceArchive.FormCreate(Sender: TObject);
begin
  dtStart.EditValue := Now-30;
  dtEnd.EditValue   := Now;
  pcArchiveMain.ActivePageIndex := 0;
end;

procedure TfrmPriceArchive.gd_prices_arch_vDblClick(Sender: TObject);
begin
  pcArchiveMain.ActivePageIndex := 1;
end;

procedure TfrmPriceArchive.gd_prices_arch_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then gd_prices_arch_vDblClick(nil);
end;

procedure TfrmPriceArchive.mnDelPriceClick(Sender: TObject);
var
  res : word;
begin
  if pcArchiveMain.ActivePageIndex > 0 then exit;

  if DM.PPL_IndexPPLI_ID.AsInteger > 0 then
  begin
    res := MessageDlg('Удалить прайс?', mtConfirmation, [mbNo,mbOk], 0, mbOk);

    if res = mrOk then
    begin
      if ({(DM.PPL_IndexFINISHED.AsInteger = 1) or} (DM.PPL_IndexSENDED_TO_WAREHOUSE.AsInteger = 1)) then
        MessageBox(Handle,'Нельзя удалить оконченный прайс-лист или инвойс подгруженный на склад','Внимение',MB_ICONWARNING)
      else
      begin
        with DM.ForceQ do
        Begin
          SQL.Clear;
          SQL.Add('begin PRICE_PKG.DEL_PRICE(:PPLI_ID_, :MESS_); end;');
          ParamByName('PPLI_ID_').Value := DM.PPL_Index.FieldByName('PPLI_ID').Value;
          ParamByName('MESS_').Value    := '';
          ExecSQL;
          if (FindParam('mess_').Value <> '') then
            MessageBox(Handle, PChar(FindParam('mess_').AsString), 'Ощибка!', MB_ICONERROR)
          else
            Dm.PPL_Index.Refresh;
        End;
      end;
    end; // if res = mrOk then
  end
  else ShowMessage('Нет данных для удаления!');
end;

procedure TfrmPriceArchive.mnExcelClick(Sender: TObject);
var cds: TcxGrid;
begin
  if pcArchiveMain.ActivePageIndex = 0 then cds := gd_prices_arch else cds := grid_ppl;
  
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, cds, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
  cds.SetFocus;
end;

procedure TfrmPriceArchive.tshListPPLIShow(Sender: TObject);
begin
  PPL.Close;
end;

procedure TfrmPriceArchive.tshPriceListShow(Sender: TObject);
begin
  PPL.Open;
end;

end.
