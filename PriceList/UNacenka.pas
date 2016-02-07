unit UNacenka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxTextEdit, DBAccess,
  Ora, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ActnList,
  dxBar, dxBarExtItems, cxBarEditItem, ImgList, PI_Library, cxLabel, jpeg,
  cxContainer, cxImage, ExtCtrls, cxGridExportLink, ShellApi, frxBarcode,
  frxExportHTML, frxExportPDF, frxExportXLS, frxClass, frxExportCSV, frxDBSet,
  ShowNomU, PI_Library_reg, Menus;

type
  TfrmPrice = class(TForm)
    cxImageList2: TcxImageList;
    BarMan_invoice: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    BarMan_invoiceBar1: TdxBar;
    tlb_save1: TdxBarButton;
    chb_quant: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    bdc_nacenka: TdxBarDockControl;
    ActionList1: TActionList;
    aRefresh: TAction;
    aExit: TAction;
    aPrint: TAction;
    aExcel: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    grid_nacenka: TcxGrid;
    grid_nacenka_v: TcxGridDBTableView;
    H_CODE: TcxGridDBColumn;
    F_NAME_RU: TcxGridDBColumn;
    PRICE: TcxGridDBColumn;
    F_TYPE: TcxGridDBColumn;
    F_SUB_TYPE: TcxGridDBColumn;
    LEN: TcxGridDBColumn;
    S_NAME_RU: TcxGridDBColumn;
    COLOUR: TcxGridDBColumn;
    COUNTRY: TcxGridDBColumn;
    CODE: TcxGridDBColumn;
    BAR_CODE: TcxGridDBColumn;
    DEPT: TcxGridDBColumn;
    QUANTITY: TcxGridDBColumn;
    PACK: TcxGridDBColumn;
    grid_nacenka_vCOMPILED_NAME: TcxGridDBColumn;
    grid_nacenka_vFT_ID: TcxGridDBColumn;
    grid_nacenka_vFST_ID: TcxGridDBColumn;
    grid_nacenka_vS_ID: TcxGridDBColumn;
    grid_nacenka_vCOL_ID: TcxGridDBColumn;
    grid_nacenka_vC_ID: TcxGridDBColumn;
    grid_nacenka_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_nacenka_vFN_ID: TcxGridDBColumn;
    grid_nacenka_vF_NAME_RU: TcxGridDBColumn;
    grid_nacenka_vGREAT_NAME_F: TcxGridDBColumn;
    grid_nacenka_vORD: TcxGridDBColumn;
    grid_nacenka_l: TcxGridLevel;
    grid_nacenka_vstore_name: TcxGridDBColumn;
    grid_nacenka_vprice_pcc: TcxGridDBColumn;
    grid_nacenka_vprocent: TcxGridDBColumn;
    cds_nacenka: TOraQuery;
    ds_nacenka: TOraDataSource;
    SaveDialog1: TSaveDialog;
    frxReport1: TfrxReport;
    frSelPriceList: TfrxDBDataset;
    frxCSVExport1: TfrxCSVExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    dxBarStatic1: TdxBarStatic;
    PopupMenu1: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    cds_nacenkaSTORE_NAME: TStringField;
    cds_nacenkaSTORE_TYPE: TFloatField;
    cds_nacenkaID_DEPARTMENTS: TIntegerField;
    cds_nacenkaFULL_NAME: TStringField;
    cds_nacenkaF_NAME: TStringField;
    cds_nacenkaF_NAME_RU: TStringField;
    cds_nacenkaF_TYPE: TStringField;
    cds_nacenkaF_SUB_TYPE: TStringField;
    cds_nacenkaCODE: TStringField;
    cds_nacenkaH_CODE: TStringField;
    cds_nacenkaLEN: TIntegerField;
    cds_nacenkaPACK: TIntegerField;
    cds_nacenkaCOLOUR: TStringField;
    cds_nacenkaCOL_ID: TFloatField;
    cds_nacenkaFT_ID: TFloatField;
    cds_nacenkaFST_ID: TFloatField;
    cds_nacenkaFN_ID: TFloatField;
    cds_nacenkaS_ID: TFloatField;
    cds_nacenkaC_ID: TFloatField;
    cds_nacenkaH_NAME: TStringField;
    cds_nacenkaS_NAME_RU: TStringField;
    cds_nacenkaCOUNTRY: TStringField;
    cds_nacenkaQUANTITY: TFloatField;
    cds_nacenkaN_ID: TFloatField;
    cds_nacenkaRESERV: TFloatField;
    cds_nacenkaPRICE: TFloatField;
    cds_nacenkaSPESIFICATION: TStringField;
    cds_nacenkaPRICE_PCC: TFloatField;
    cds_nacenkaCOMPILED_NAME_OTDEL: TStringField;
    cds_nacenkaPROCENT: TFloatField;
    procedure aRefreshExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chb_quantPropertiesChange(Sender: TObject);
    procedure aExcelExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure grid_nacenka_vDblClick(Sender: TObject);
    procedure grid_nacenka_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cds_nacenkaBeforeOpen(DataSet: TDataSet);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    path: string;
    pnl_msg: TPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrice: TfrmPrice;

implementation

uses Globals, DataModule;

{$R *.dfm}

//
// Экспорт в Ексель
//
procedure TfrmPrice.aExcelExecute(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_nacenka, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
  grid_nacenka.SetFocus;
end;

procedure TfrmPrice.aExitExecute(Sender: TObject);
begin
  Close;
end;

//
//  Печать данных
//
procedure TfrmPrice.aPrintExecute(Sender: TObject);
var mTXT: TfrxMemoView;
begin
  try
    Screen.Cursor         := crHandPoint;
    MakeSortForPrint(TOraQuery(grid_nacenka_v.DataController.DataSet),TcxGridDBTableView(grid_nacenka_v));
    grid_nacenka_v.DataController.DataSet.DisableControls;
    frxReport1.LoadFromFile(StartDir + '/Reps/NacenkaList.fr3');
    frxReport1.Variables['PrintMark'] := '''Отдел: ' + CUR_DEPT_NAME + '''';


      mTXT   := frxReport1.FindObject('Memo1') as TfrxMemoView;
      mTXT.Text := title_name;
{
      if DM.id_office = 1 then
         mTXT.Text := 'Список товара ООО "Компании "Старлайт"';
      if DM.id_office = 2 then
         mTXT.Text := 'Список товара ООО "Компании "Старлайт Поволжье Кэш энд Кэрри"';
      if DM.id_office = 3 then
         mTXT.Text := 'Список товара ООО "Компании "Старлайт Казань"';
}
    frxReport1.ShowReport;
    grid_nacenka_v.DataController.DataSet.EnableControls;
    Screen.Cursor := crDefault;
    grid_nacenka.SetFocus;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      grid_nacenka_v.DataController.DataSet.EnableControls;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;

//
// Обновление данных
//
procedure TfrmPrice.aRefreshExecute(Sender: TObject);
begin
  try
    pnl_msg := TPanel(MakePanelLabel(frmPrice,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    cds_nacenka.ParamByName('ID_DEPT').AsInteger := CUR_DEPT_ID;
    ReactivateOraQuery(cds_nacenka);

    pnl_msg.Free;
    grid_nacenka.SetFocus;
  except on E: Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;

procedure TfrmPrice.cds_nacenkaBeforeOpen(DataSet: TDataSet);
begin
  cds_nacenka.ParamByName('V_OFFICE').AsInteger := dm.id_office;
end;

procedure TfrmPrice.chb_quantPropertiesChange(Sender: TObject);
begin
  try
    Screen.Cursor := crHandPoint;

    if (chb_quant.EditValue = 0) then
    begin
       grid_nacenka_v.DataController.Filter.Active := false;
       grid_nacenka_v.DataController.Filter.Clear;
    end
    else
    begin
       QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
       grid_nacenka_v.DataController.Filter.Active := true;
    end;

    Screen.Cursor := crDefault;
    grid_nacenka.SetFocus;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      grid_nacenka_v.DataController.DataSet.EnableControls;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;




//
//  Закрытие формы
//
procedure TfrmPrice.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := path + '/ini/PriceNacenka_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceNacenka';
  grid_nacenka_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  cds_nacenka.Close;
end;

//
//  Открытие формы
//
procedure TfrmPrice.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path                  := ExtractFilePath(Application.ExeName);
  AOptions := [];

  AStoreKey     := path + '/ini/PriceNacenka_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceNacenka';
  grid_nacenka_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  aRefresh.Execute;
  grid_nacenka.SetFocus;
end;

procedure TfrmPrice.grid_nacenka_vDblClick(Sender: TObject);
begin
  ShowNomenclature(DM.STAR_DB, grid_nacenka_v.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;

procedure TfrmPrice.grid_nacenka_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     ShowNomenclature(DM.STAR_DB, grid_nacenka_v.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;

// Скопируем значение ячейкт в буфер
procedure TfrmPrice.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grid_nacenka_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TfrmPrice.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grid_nacenka_v.DataController, 0);
end;

end.
