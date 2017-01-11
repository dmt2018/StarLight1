unit UTruckSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit,
  cxCalendar, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, DBAccess, Ora, MemDS, cxContainer, cxMaskEdit, cxDropDownEdit,
  StdCtrls, cxButtons, ExtCtrls, ActnList, cxGridExportLink, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, IniFiles, dxBar, cxLabel, ShellAPI, cxImageComboBox;

type
  TfrmTruckSale = class(TForm)
    pnlTop: TPanel;
    btnRefresh: TcxButton;
    dtStart: TcxDateEdit;
    dtEnd: TcxDateEdit;
    pnlBottom: TPanel;
    BitBtn_Cancel: TcxButton;
    CDS_TruckSaleData: TOraQuery;
    DS_TruckSaleData: TOraDataSource;
    grSpecOrders: TcxGrid;
    grSpecOrdersV: TcxGridDBTableView;
    grSpecOrdersVIS_ACTIVE: TcxGridDBColumn;
    grSpecOrdersVF_TYPE: TcxGridDBColumn;
    grSpecOrdersVF_SUB_TYPE: TcxGridDBColumn;
    grSpecOrdersVCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grSpecOrdersVCOLOUR: TcxGridDBColumn;
    grSpecOrdersVCOUNTRY: TcxGridDBColumn;
    grSpecOrdersVREMARKS: TcxGridDBColumn;
    grSpecOrdersVPRICE: TcxGridDBColumn;
    grSpecOrdersVCUR_PRICE: TcxGridDBColumn;
    grSpecOrdersVN_ID: TcxGridDBColumn;
    grSpecOrdersVRUS_MARKS: TcxGridDBColumn;
    grSpecOrdersL: TcxGridLevel;
    CDS_TruckSale: TOraQuery;
    DS_TruckSale: TOraDataSource;
    grTruckSale: TcxGrid;
    grTruckSale_v: TcxGridDBTableView;
    grTruckSale_l: TcxGridLevel;
    grTruckSale_vTRUCK_SALE_ID: TcxGridDBColumn;
    grTruckSale_vSTART_DATE: TcxGridDBColumn;
    grTruckSale_vSTOP_DATE: TcxGridDBColumn;
    grTruckSale_vCOMMENTS: TcxGridDBColumn;
    grTruckSale_vPRICE_COEF: TcxGridDBColumn;
    grTruckSale_vID_OFFICE: TcxGridDBColumn;
    grTruckSale_vDATE_CREATE: TcxGridDBColumn;
    grTruckSale_vDATE_CHANGE: TcxGridDBColumn;
    grTruckSale_vUSER_CREATE: TcxGridDBColumn;
    grTruckSale_vUSER_CHANGE: TcxGridDBColumn;
    grTruckSale_vSTATUS: TcxGridDBColumn;
    btnAdd: TcxButton;
    btnDel: TcxButton;
    Panel1: TPanel;
    grTruckSale_vTRUCK_SALE_ID_: TcxGridDBColumn;
    grTruckSale_vLIST_INV: TcxGridDBColumn;
    grTruckSale_vLIST_DISTR: TcxGridDBColumn;
    CDS_TruckSaleTRUCK_SALE_ID: TFloatField;
    CDS_TruckSaleSTART_DATE: TDateTimeField;
    CDS_TruckSaleSTOP_DATE: TDateTimeField;
    CDS_TruckSaleCOMMENTS: TStringField;
    CDS_TruckSalePRICE_COEF: TFloatField;
    CDS_TruckSaleID_OFFICE: TIntegerField;
    CDS_TruckSaleDATE_CREATE: TDateTimeField;
    CDS_TruckSaleDATE_CHANGE: TDateTimeField;
    CDS_TruckSaleUSER_CREATE: TStringField;
    CDS_TruckSaleUSER_CHANGE: TStringField;
    CDS_TruckSaleSTATUS: TStringField;
    CDS_TruckSaleTRUCK_SALE_ID_: TFloatField;
    CDS_TruckSaleLIST_INV: TStringField;
    CDS_TruckSaleLIST_DISTR: TStringField;
    CDS_TruckSaleCOURSE: TFloatField;
    grTruckSale_vCOURSE: TcxGridDBColumn;
    grSpecOrdersVINVOICE_DATA_ID: TcxGridDBColumn;
    grSpecOrdersVPRICE_COEF: TcxGridDBColumn;
    grSpecOrdersVP_COEF: TcxGridDBColumn;
    grSpecOrdersVP_PRICE: TcxGridDBColumn;
    grSpecOrdersVUNITS: TcxGridDBColumn;
    stCarSale: TcxStyleRepository;
    stEdit: TcxStyle;
    grSpecOrdersVTRUCK_SALE_ID: TcxGridDBColumn;
    btnAddAll: TcxButton;
    btnRemoveAll: TcxButton;
    ActionList1: TActionList;
    aSetActive: TAction;
    btnStat: TcxButton;
    btnWeb: TcxButton;
    btnBlockWeb: TcxButton;
    CDS_TruckSaleDataUNITS: TFloatField;
    CDS_TruckSaleDataPRICE_PER_UNIT: TFloatField;
    CDS_TruckSaleDataPRICE_COEF: TFloatField;
    CDS_TruckSaleDataPRICE: TFloatField;
    CDS_TruckSaleDataCOEF_PRICE: TFloatField;
    CDS_TruckSaleDataIS_ACTIVE: TFloatField;
    CDS_TruckSaleDataP_COEF: TFloatField;
    CDS_TruckSaleDataP_PRICE: TFloatField;
    CDS_TruckSaleDataTRUCK_SALE_ID: TFloatField;
    CDS_TruckSaleDataCOMPILED_NAME: TStringField;
    CDS_TruckSaleDataFULL_NAME: TStringField;
    CDS_TruckSaleDataF_NAME: TStringField;
    CDS_TruckSaleDataF_NAME_RU: TStringField;
    CDS_TruckSaleDataF_SUB_TYPE: TStringField;
    CDS_TruckSaleDataF_TYPE: TStringField;
    CDS_TruckSaleDataID_DEPARTMENTS: TFloatField;
    CDS_TruckSaleDataDEPT: TStringField;
    CDS_TruckSaleDataFT_ID: TFloatField;
    CDS_TruckSaleDataHOL_SUB_TYPE: TStringField;
    CDS_TruckSaleDataSUB_WEIGHT: TFloatField;
    CDS_TruckSaleDataHT_ID: TFloatField;
    CDS_TruckSaleDataN_ID: TFloatField;
    CDS_TruckSaleDataFN_ID: TFloatField;
    CDS_TruckSaleDataFST_ID: TFloatField;
    CDS_TruckSaleDataS_ID: TFloatField;
    CDS_TruckSaleDataC_ID: TFloatField;
    CDS_TruckSaleDataCOL_ID: TFloatField;
    CDS_TruckSaleDataH_CODE: TStringField;
    CDS_TruckSaleDataH_NAME: TStringField;
    CDS_TruckSaleDataCODE: TFloatField;
    CDS_TruckSaleDataLEN: TIntegerField;
    CDS_TruckSaleDataPACK: TIntegerField;
    CDS_TruckSaleDataDIAMETER: TFloatField;
    CDS_TruckSaleDataVBN: TIntegerField;
    CDS_TruckSaleDataHOL_TYPE: TStringField;
    CDS_TruckSaleDataWEIGHT: TFloatField;
    CDS_TruckSaleDataREMARKS: TStringField;
    CDS_TruckSaleDataS_NAME_RU: TStringField;
    CDS_TruckSaleDataBAR_CODE: TStringField;
    CDS_TruckSaleDataCUST_COEF: TFloatField;
    CDS_TruckSaleDataPHOTO: TStringField;
    CDS_TruckSaleDataIS_PHOTO: TFloatField;
    CDS_TruckSaleDataCOLOUR: TStringField;
    CDS_TruckSaleDataCOUNTRY: TStringField;
    CDS_TruckSaleDataTYPE_SUBTYPE: TStringField;
    CDS_TruckSaleDataHOL_MARKS: TStringField;
    CDS_TruckSaleDataRUS_MARKS: TStringField;
    CDS_TruckSaleDataGREAT_NAME: TStringField;
    CDS_TruckSaleDataGREAT_NAME_F: TStringField;
    CDS_TruckSaleDataNAME_CODE: TStringField;
    CDS_TruckSaleDataCOMPILED_NAME_OTDEL: TStringField;
    CDS_TruckSaleDataID_OFFICE: TIntegerField;
    CDS_TruckSaleDataDATE_CHANGE: TDateTimeField;
    CDS_TruckSaleDataNOPRINT: TIntegerField;
    CDS_TruckSaleDataNOTUSE: TIntegerField;
    CDS_TruckSaleDataNAMECODE: TStringField;
    CDS_TruckSaleDataTNVED: TStringField;
    CDS_TruckSaleDataWEIGHTDRY: TFloatField;
    CDS_TruckSaleDataNOM_NEW: TIntegerField;
    CDS_TruckSaleDataNOM_START: TIntegerField;
    CDS_TruckSaleDataNOM_END: TIntegerField;
    CDS_TruckSaleDataHOL_COLOR: TStringField;
    CDS_TruckSaleDataHOL_PACK: TIntegerField;
    IdFTP1: TIdFTP;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PRODUCT_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CODENAME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPART_ID: TcxGridDBColumn;
    cxGrid1DBTableView1BRAND_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTRY: TcxGridDBColumn;
    cxGrid1DBTableView1CATEGORY: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1COLOUR: TcxGridDBColumn;
    cxGrid1DBTableView1SIZE: TcxGridDBColumn;
    cxGrid1DBTableView1PIECESINPACK: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_DESC: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1NEW_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PROFIT: TcxGridDBColumn;
    cxGrid1DBTableView1BESTPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_START: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_END: TcxGridDBColumn;
    cxGrid1DBTableView1ONMARCH: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cds_export: TOraQuery;
    ds_export: TOraDataSource;
    stItog: TcxStyle;
    btnEditInv: TcxButton;
    mpEdit: TPopupMenu;
    miEdit: TMenuItem;
    miUnloadInv: TMenuItem;
    miUnloadDistr: TMenuItem;
    miDelInv: TMenuItem;
    miDelDistr: TMenuItem;
    cxLabel1: TcxLabel;
    cxGrid1DBTableView1SALE_START: TcxGridDBColumn;
    cxGrid1DBTableView1SALE_END: TcxGridDBColumn;
    cxGrid1DBTableView1INV_ID: TcxGridDBColumn;
    pmMain: TPopupMenu;
    mmCoefSel: TMenuItem;
    mmCoefAll: TMenuItem;
    pnlPrice: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    te_price: TcxCurrencyEdit;
    N1: TMenuItem;
    mmPriceSel: TMenuItem;
    mmPriceAll: TMenuItem;
    CDS_TruckSaleDataMIN_PACK: TIntegerField;
    grSpecOrdersVPACK: TcxGridDBColumn;
    grSpecOrdersVMIN_PACK: TcxGridDBColumn;
    cds_exportPRODUCT_ART: TFloatField;
    cds_exportCODENAME: TStringField;
    cds_exportDEPART_ID: TFloatField;
    cds_exportBRAND_TITLE: TStringField;
    cds_exportCOUNTRY: TStringField;
    cds_exportCATEGORY: TStringField;
    cds_exportPRODUCT_TITLE: TStringField;
    cds_exportCOLOUR: TStringField;
    cds_exportSIZE: TIntegerField;
    cds_exportPIECESINPACK: TFloatField;
    cds_exportPRODUCT_DESC: TStringField;
    cds_exportPRODUCT_PRICE: TFloatField;
    cds_exportPRODUCT_QTY: TFloatField;
    cds_exportPRODUCT_RESERVE: TFloatField;
    cds_exportNEW_FLAG: TFloatField;
    cds_exportDISCOUNT: TFloatField;
    cds_exportPROFIT: TFloatField;
    cds_exportBESTPRICE: TFloatField;
    cds_exportSEASON_START: TFloatField;
    cds_exportSEASON_END: TFloatField;
    cds_exportONMARCH: TStringField;
    cds_exportSALE_START: TDateTimeField;
    cds_exportSALE_END: TDateTimeField;
    cds_exportINV_ID: TFloatField;
    cbInvoices: TcxImageComboBox;
    Label12: TLabel;
    btnLoadPrice: TcxButton;
    CDS_OLD_PRICE: TOraQuery;
    DS_OLD_PRICE: TOraDataSource;
    CDS_OLD_PRICEN_ID: TFloatField;
    CDS_OLD_PRICEHOL_PRICE: TFloatField;
    CDS_OLD_PRICEFINAL_PRICE: TFloatField;
    CDS_TruckSaleTRUCKINCAMING: TDateTimeField;
    grTruckSale_vTRUCKINCAMING: TcxGridDBColumn;
    cds_exportTRUCKINCAMING: TDateTimeField;
    cxGrid1DBTableView1TRUCKINCAMING: TcxGridDBColumn;
    CDS_OLD_PRICEPPLI_ID: TFloatField;
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure grTruckSale_vEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnRemoveAllClick(Sender: TObject);
    procedure aSetActiveExecute(Sender: TObject);
    procedure btnStatClick(Sender: TObject);
    procedure CDS_TruckSaleAfterScroll(DataSet: TDataSet);
    procedure btnWebClick(Sender: TObject);
    procedure btnBlockWebClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miEditClick(Sender: TObject);
    procedure miDelInvClick(Sender: TObject);
    procedure miDelDistrClick(Sender: TObject);
    procedure mmCoefAllClick(Sender: TObject);
    procedure mmCoefSelClick(Sender: TObject);
    procedure te_priceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmPriceSelClick(Sender: TObject);
    procedure mmPriceAllClick(Sender: TObject);
    procedure btnLoadPriceClick(Sender: TObject);
  private
    { Private declarations }
    ed_param : integer;
    out_dir: string;
  public
    { Public declarations }
    function TruckSaleFormShow : boolean;
    procedure setMenuItem(element: string; src: TMenuItem; p_type: string);
    procedure UnloadObject(param: string; p_id: integer);
  end;

var
  frmTruckSale: TfrmTruckSale;

implementation

uses PI_Library, DataModule, Globals, UEditWebShop;

{$R *.dfm}

function TfrmTruckSale.TruckSaleFormShow : boolean;
Begin
    frmTruckSale := TfrmTruckSale.Create(Application);
    try
      LoadFormState(frmTruckSale); //полож.окна
      frmTruckSale.dtStart.EditValue := Now - 7;
      frmTruckSale.dtEnd.EditValue   := Now + 14;
      frmTruckSale.ShowModal;
    finally
      frmTruckSale := nil;
    end;
end;

procedure TfrmTruckSale.FormCreate(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'pricelist.ini';
    RegIni := TIniFile.Create(path);
    IdFTP1.Host     := RegIni.ReadString('FTP', 'host', '');
    IdFTP1.Username := RegIni.ReadString('FTP', 'login', '');
    IdFTP1.Password := RegIni.ReadString('FTP', 'pass', '');
    out_dir := RegIni.ReadString('OUTDIR', 'value', '');
  finally
    RegIni.Free;
  end;
end;

procedure TfrmTruckSale.FormShow(Sender: TObject);
begin
  btnRefresh.Click;

    try
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT ppli_id, ppl_comment ||'' - ''|| to_char(ppl_date,''dd.mm.yyyy'') as inv_str FROM prepare_price_list_index where ID_DEPARTMENTS='+IntToStr(CUR_DEPT_ID)+' and ppl_date > sysdate - 85 and finished=1 order by ppl_date desc');
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, cbInvoices, 'Выбрать инвойса для подгрузки');
      DM.SelQ.Close;
      if DM.PPL_Index.fieldByName('ppli_id_old').AsInteger > 0 then
        cbInvoices.EditValue := DM.PPL_Index.fieldByName('ppli_id_old').AsInteger
      else
        cbInvoices.ItemIndex := 0;
    except
      on E: Exception do ShowMessage(E.Message);
    end;

  grTruckSale.SetFocus;
end;



// Добавить продажу с колес
procedure TfrmTruckSale.btnAddClick(Sender: TObject);
begin
  frmEditWebShop.ShowEditWebShop('new', CDS_TruckSale);
  btnRefreshClick(nil);
  grSpecOrders.SetFocus;
end;


// Изменить состав инвойсов/разносов
procedure TfrmTruckSale.miEditClick(Sender: TObject);
begin
  if grTruckSale_v.ViewData.RecordCount = 0 then exit;

  frmEditWebShop.ShowEditWebShop('edit', CDS_TruckSale);
  //btnRefreshClick(nil);
  CDS_TruckSale.RefreshRecord;
  CDS_TruckSaleData.Refresh;
  grSpecOrders.SetFocus;
end;


// Удалить продажу с колес
procedure TfrmTruckSale.btnDelClick(Sender: TObject);
begin
  if grTruckSale_v.ViewData.RecordCount = 0 then exit;

  if MessageDlg('Удалить продажу?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
    grTruckSale_v.DataController.DataSet.Delete;
end;


// Обновление таблиц
procedure TfrmTruckSale.btnRefreshClick(Sender: TObject);
begin
  if (grTruckSale_v.DataController.DataSet.State = dsEdit) then
    grTruckSale_v.DataController.DataSet.Post;

  try
    CDS_TruckSale.AfterScroll := nil;
    CDS_TruckSale.Close;
    CDS_TruckSale.ParamByName('startDate').AsDate   := dtStart.EditValue;
    CDS_TruckSale.ParamByName('stopDate').AsDate    := dtEnd.EditValue;
    CDS_TruckSale.Open;
    CDS_TruckSale.AfterScroll := CDS_TruckSaleAfterScroll;
    CDS_TruckSale.First;

    if CDS_TruckSaleData.Active then
      CDS_TruckSaleData.Refresh
    else
      CDS_TruckSaleData.Open
  except
    on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


// Обработка нажатий кнопок на основной таблице
procedure TfrmTruckSale.grTruckSale_vEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (grTruckSale_v.DataController.DataSet.State = dsEdit) then
  begin
    grTruckSale_v.DataController.DataSet.Post;
    CDS_TruckSaleData.Refresh;
  end;
end;


// Добавить все позиции
procedure TfrmTruckSale.btnAddAllClick(Sender: TObject);
begin
  ed_param := 1;
  aSetActive.Execute;
end;

// Убрать все позиции
procedure TfrmTruckSale.btnRemoveAllClick(Sender: TObject);
begin
  ed_param := 0;
  aSetActive.Execute;
end;

// обновим активность
procedure TfrmTruckSale.aSetActiveExecute(Sender: TObject);
begin
  CDS_TruckSaleData.First;
  CDS_TruckSaleData.DisableControls;
  try
    while not CDS_TruckSaleData.Eof do
    begin
      if (CDS_TruckSaleDataIS_ACTIVE.AsInteger <> ed_param) then
      begin
        CDS_TruckSaleData.Edit;
        CDS_TruckSaleDataIS_ACTIVE.AsInteger := ed_param;
        CDS_TruckSaleData.Post;
      end;
      CDS_TruckSaleData.Next;
    end;
  finally
    CDS_TruckSaleData.EnableControls;
  end;
end;


// Статистика
procedure TfrmTruckSale.btnStatClick(Sender: TObject);
begin
  with DM.SelQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('begin truck_sale_pkg.get_statistic(:p_TRUCK_SALE_ID, :cursor_); end;');
    ParamByName('p_TRUCK_SALE_ID').AsInteger := CDS_TruckSaleTRUCK_SALE_ID.AsInteger;
    ParamByName('cursor_').DataType  := ftCursor;
    Open;

    if RecordCount = 1 then
    begin
      MessageBox(Handle, PChar(
        'Позиций - '+FieldByName('nn').AsString+#10#13+
        'Стеблей - '+FieldByName('units').AsString+#10#13+
        //'Стоимость инвойса - '+FieldByName('net_summ').AsString+#10#13+
        'Стоимость итоговая - '+FieldByName('summ').AsString
      ), 'Информация', MB_ICONINFORMATION);
    end;
    close;
  end;
end;


// Выгрузить на сайт
procedure TfrmTruckSale.btnWebClick(Sender: TObject);
var file_str: string;
begin
  if grTruckSale_v.ViewData.RecordCount = 0 then exit;

  if MessageDlg('Будет сформирован файл экспорта и статус утановлен "Исполненный". Продолжить?', mtConfirmation, [mbNo,mbOk], 0, mbOk) <> mrOk then exit;

  with cds_export do
  begin
    Close;
    SQL.Clear;
    SQL.Add('begin truck_sale_pkg.get_data_for_web(:p_TRUCK_SALE_ID, :cursor_); end;');
    ParamByName('p_TRUCK_SALE_ID').AsInteger := CDS_TruckSaleTRUCK_SALE_ID.AsInteger;
    ParamByName('cursor_').DataType  := ftCursor;
    Open;
  end;

  file_str := 'export\webshop.csv';
  ExportGridToText( file_str, cxGrid1, True, True, ';', '', '', 'csv');
  cds_export.Close;
  MessageBox(Handle, PChar('Экспорт завершен'), 'Информация', MB_ICONINFORMATION);

  CDS_TruckSale.Edit;
  CDS_TruckSaleSTATUS.AsString := 'Исполненный';
  CDS_TruckSale.Post;

  // Копируем файл в удаленную папку для обмена
  if out_dir <> '' then
  begin
    CopyFile(PChar(file_str), PChar(out_dir+'/webshop.csv'), false);
  end;
  ShellExecute(Handle, nil, PChar('export\'), nil, nil, SW_RESTORE);
{
  if MessageDlg('Отправить файл на FTP?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
  begin
    IdFTP1.Connect;
    //IdFTP1.ChangeDir('orders');
    IdFTP1.Put(file_str,'webshop.csv',false);
    IdFTP1.Disconnect;
    MessageBox(Handle, PChar('Отправка завершена'), 'Информация', MB_ICONINFORMATION);
  end
  else
  begin
    ShellExecute(Handle, nil, PChar('export\'), nil, nil, SW_RESTORE);
  end;
}
end;

// Приостановить продажу
procedure TfrmTruckSale.btnBlockWebClick(Sender: TObject);
var file_str: string;
    F: TextFile;
begin
  if MessageDlg('Будет сформирован файл экспорта приостановки продажи и статус утановлен "Остановленный". Продолжить?', mtConfirmation, [mbNo,mbOk], 0, mbOk) <> mrOk then exit;

  file_str := 'export\webshop_stop.csv';
  try
      AssignFile(F, file_str);
      Rewrite(F);
      WriteLn(F, CDS_TruckSaleTRUCK_SALE_ID.AsString+';'+FormatDateTime('dd.mm.yy', Now));
  finally
    CloseFile(F);
  end;  
  CDS_TruckSale.Edit;
  CDS_TruckSaleSTATUS.AsString := 'Остановленный';
  CDS_TruckSale.Post;

  if MessageDlg('Отправить файл на FTP?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
  begin
    IdFTP1.Connect;
    IdFTP1.ChangeDir('starlight.ru/exchange');
    IdFTP1.Put(file_str,'webshop_stop.csv',false);
    IdFTP1.Disconnect;
    MessageBox(Handle, PChar('Отправка завершена'), 'Информация', MB_ICONINFORMATION);
  end;
end;




// Установка разрешений кнопок при выборе продажи
procedure TfrmTruckSale.CDS_TruckSaleAfterScroll(DataSet: TDataSet);
var ItemLink: TMenuItem;
    elements, new_str: string;
    i: integer;
begin
{
Новый
Подготовленный
Утвержденный
Исполненный
Остановленный
}
{ Временно уберем все ограничения, для проведения тестирования
  btnAddAll.Enabled     := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный'));
  btnRemoveAll.Enabled  := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный'));
  btnDel.Enabled        := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный'));
  btnWeb.Enabled        := ((CDS_TruckSaleSTATUS.AsString = 'Утвержденный') or (CDS_TruckSaleSTATUS.AsString = 'Исполненный'));
  btnBlockWeb.Enabled   := (CDS_TruckSaleSTATUS.AsString = 'Исполненный');

  btnEditInv.Enabled        := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный'));

  grSpecOrdersV.OptionsData.Editing := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный'));
  grTruckSale_v.OptionsData.Editing := ((CDS_TruckSaleSTATUS.AsString = 'Новый') or (CDS_TruckSaleSTATUS.AsString = 'Подготовленный') or (CDS_TruckSaleSTATUS.AsString = 'Утвержденный'));
}
  btnWeb.Enabled := (CDS_TruckSale.Active and (CDS_TruckSale.RecordCount > 0));
  btnAddAll.Enabled     := btnWeb.Enabled;
  btnRemoveAll.Enabled  := btnWeb.Enabled;
  btnStat.Enabled       := btnWeb.Enabled;

  if CDS_TruckSale.RecordCount = 0 then
  begin
    miUnloadDistr.Enabled := false;
    miUnloadInv.Enabled   := false;
    miUnloadInv.Clear;
    miUnloadDistr.Clear;
  end;

  elements := VarToStr(grTruckSale_vLIST_INV.EditValue);
  if elements <> '' then
  begin
    miUnloadDistr.Enabled := false;
    miUnloadInv.Enabled   := true;
    miUnloadInv.Clear;
    while pos(',',elements) > 0 do
    begin
      i := pos(',',elements);
      new_str := copy(elements,0,i-1);
      elements := copy(elements,i+2,length(elements));
      setMenuItem(new_str, miUnloadInv, 'inv');
    end;
    setMenuItem(elements, miUnloadInv, 'inv');
  end;

  elements := VarToStr(grTruckSale_vLIST_DISTR.EditValue);
  if elements <> '' then
  begin
    miUnloadInv.Enabled   := false;
    miUnloadDistr.Enabled := true;
    miUnloadDistr.Clear;
    while pos(',',elements) > 0 do
    begin
      i := pos(',',elements);
      new_str := copy(elements,0,i-1);
      elements := copy(elements,i+2,length(elements));
      setMenuItem(new_str, miUnloadDistr, 'distr');
    end;
    setMenuItem(elements, miUnloadDistr, 'distr');
  end;

end;


procedure TfrmTruckSale.setMenuItem(element: string; src: TMenuItem; p_type: string);
var ItemLink: TMenuItem;
begin
  ItemLink := TMenuItem.Create(src);
  ItemLink.Name := 'mn_'+element;
  ItemLink.Caption := 'ID '+element;
  ItemLink.Tag := StrToInt(element);
  if p_type = 'inv' then
    ItemLink.OnClick := miDelInvClick
  else
    ItemLink.OnClick := miDelDistrClick;
  src.Add(ItemLink);
end;


procedure TfrmTruckSale.miDelDistrClick(Sender: TObject);
begin
  UnloadObject('distr', (Sender as TMenuItem).Tag);
end;

procedure TfrmTruckSale.miDelInvClick(Sender: TObject);
begin
  UnloadObject('inv', (Sender as TMenuItem).Tag);
end;

procedure TfrmTruckSale.UnloadObject(param: string; p_id: integer);
begin
  if MessageDlg('Будет удален объект №'+IntToStr(p_id)+' из продаж. Продолжить?', mtConfirmation, [mbNo,mbOk], 0, mbOk) <> mrOk then exit;

  try
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Text := 'begin truck_sale_pkg.edit_truck_sale_del(:p_id, :p_obj_id, :p_type); end;';
    DM.ForceQ.ParamByName('p_id').AsInteger       := grTruckSale_vTRUCK_SALE_ID.EditValue;
    DM.ForceQ.ParamByName('p_obj_id').AsInteger   := p_id;
    DM.ForceQ.ParamByName('p_type').AsString      := param;
    DM.ForceQ.Execute;
    CDS_TruckSale.RefreshRecord;
    CDS_TruckSaleData.Refresh;
  except
    on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;


// Установить единый коэф. по выделенным
procedure TfrmTruckSale.mmCoefSelClick(Sender: TObject);
var price: real;
begin
  if grSpecOrdersVP_COEF.EditValue = null then
    price := grTruckSale_vPRICE_COEF.EditValue
  else
    price := grSpecOrdersVP_COEF.EditValue;

  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 1;
    pnlPrice.Left    := trunc(grSpecOrders.Width / 2) - 90;
    pnlPrice.Top     := trunc(grSpecOrders.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;

// Установить единый коэф. текущим
procedure TfrmTruckSale.mmCoefAllClick(Sender: TObject);
var price: real;
begin
  if grSpecOrdersVP_COEF.EditValue = null then
    price := grTruckSale_vPRICE_COEF.EditValue
  else
    price := grSpecOrdersVP_COEF.EditValue;

  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 2;
    pnlPrice.Left    := trunc(grSpecOrders.Width / 2) - 90;
    pnlPrice.Top     := trunc(grSpecOrders.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;

// Установить единую цену по выделенным
procedure TfrmTruckSale.mmPriceAllClick(Sender: TObject);
var price: real;
begin
  if grSpecOrdersVP_PRICE.EditValue = null then
    price := grSpecOrdersVCUR_PRICE.EditValue
  else
    price := grSpecOrdersVP_PRICE.EditValue;

  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 4;
    pnlPrice.Left    := trunc(grSpecOrders.Width / 2) - 90;
    pnlPrice.Top     := trunc(grSpecOrders.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;

// Установить единую цену текущим
procedure TfrmTruckSale.mmPriceSelClick(Sender: TObject);
var price: real;
begin
  if grSpecOrdersVP_PRICE.EditValue = null then
    price := grSpecOrdersVCUR_PRICE.EditValue
  else
    price := grSpecOrdersVP_PRICE.EditValue;

  if (pnlPrice.Visible = false) then
  begin
    te_price.Tag     := 3;
    pnlPrice.Left    := trunc(grSpecOrders.Width / 2) - 90;
    pnlPrice.Top     := trunc(grSpecOrders.Height / 2) - 20;
    pnlPrice.Visible := true;
    te_price.EditValue := price;
    te_price.SetFocus;
  end;
end;

procedure TfrmTruckSale.te_priceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: integer;
    SavePlace : TBookmark;
begin
  if (Key = VK_DELETE) then
  begin
    pnlPrice.Visible := false;
    grSpecOrders.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    te_price.PostEditValue;
    pnlPrice.Visible := false;

    //SavePlace := DM.PPL.GetBookmark;
    grSpecOrdersV.DataController.DataSet.DisableControls;
    try
      if ((te_price.Tag = 1) or (te_price.Tag = 3)) then
      begin
        DM.ForceQ.SQL.Clear;
        DM.ForceQ.SQL.Add('begin TRUCK_SALE_PKG.INS_TRUCK_SALE_DATA(:TRUCK_SALE_ID, :N_ID, :P_COEF, :P_PRICE); end;');
        DM.ForceQ.Prepare;
        DM.ForceQ.ParamByName('TRUCK_SALE_ID').AsInteger := grTruckSale_vTRUCK_SALE_ID.EditValue;

        for i := 0 to grSpecOrdersV.Controller.SelectedRowCount-1 do
        begin
          DM.ForceQ.ParamByName('N_ID').AsInteger := grSpecOrdersV.Controller.SelectedRows[i].Values[grSpecOrdersVN_ID.Index];
          if te_price.Tag = 1 then
          begin
            DM.ForceQ.ParamByName('P_COEF').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_PRICE').Value := null;
          end
          else
          begin
            DM.ForceQ.ParamByName('P_PRICE').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_COEF').Value := null;
          end;
          DM.ForceQ.Execute;
        end;
      end;

      if ((te_price.Tag = 2) or (te_price.Tag = 4)) then
      begin
        DM.ForceQ.SQL.Clear;
        DM.ForceQ.SQL.Add('begin TRUCK_SALE_PKG.INS_TRUCK_SALE_DATA(:TRUCK_SALE_ID, :N_ID, :P_COEF, :P_PRICE); end;');
        DM.ForceQ.Prepare;
        DM.ForceQ.ParamByName('TRUCK_SALE_ID').AsInteger := grTruckSale_vTRUCK_SALE_ID.EditValue;

        grSpecOrdersV.DataController.DataSet.First;
        while not grSpecOrdersV.DataController.DataSet.Eof do
        begin
          DM.ForceQ.ParamByName('N_ID').AsInteger := grSpecOrdersV.DataController.DataSet.FieldByName('N_ID').AsInteger;
          if te_price.Tag = 2 then
          begin
            DM.ForceQ.ParamByName('P_COEF').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_PRICE').Value  := null;
          end
          else
          begin
            DM.ForceQ.ParamByName('P_PRICE').AsFloat := te_price.EditingValue;
            DM.ForceQ.ParamByName('P_COEF').Value  := null;
          end;
          DM.ForceQ.Execute;
          grSpecOrdersV.DataController.DataSet.Next;
        end;
      end;


    finally
      grSpecOrdersV.DataController.DataSet.EnableControls;
      CDS_TruckSaleData.Refresh;
{
      dm.PPL_Index.RefreshRecord;
      DM.PPL.GotoBookmark(SavePlace);
      DM.PPL.FreeBookmark(SavePlace);
}
      grSpecOrders.SetFocus;
    end;
  end;
end;


// Применим цены выбранного прайса
procedure TfrmTruckSale.btnLoadPriceClick(Sender: TObject);
begin
  if CDS_TruckSaleData.State = dsEdit then CDS_TruckSaleData.Post;

  cbInvoices.PostEditValue;
  if cbInvoices.ItemIndex = 0 then exit;

  try
    with CDS_OLD_PRICE do
    Begin
      Close;
      Prepare;
      ParamByName('old_price').Value := cbInvoices.EditValue;
      Open;
    End;

    if CDS_OLD_PRICE.RecordCount = 0 then
    begin
      CDS_OLD_PRICE.Close;
      exit;
    end;

    CDS_TruckSaleData.First;
    CDS_TruckSaleData.DisableControls;
    try
      while not CDS_TruckSaleData.Eof do
      begin
        if CDS_OLD_PRICE.Locate('N_ID',CDS_TruckSaleDataN_ID.AsInteger,[]) then
        begin
          CDS_TruckSaleData.Edit;
          CDS_TruckSaleDataP_PRICE.AsCurrency := CDS_OLD_PRICEFINAL_PRICE.AsCurrency;
          CDS_TruckSaleData.Post;
        end;
        CDS_TruckSaleData.Next;
      end;
    finally
      CDS_TruckSaleData.EnableControls;
    end;
    CDS_OLD_PRICE.Close;
    CDS_TruckSaleData.Refresh;
    MessageBox(Handle, PChar('Обработка завершена'), 'Информация', MB_ICONINFORMATION);

  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
  end;
end;


end.
