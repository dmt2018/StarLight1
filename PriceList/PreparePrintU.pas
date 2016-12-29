unit PreparePrintU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, PI_Library, ImgList,
  frxBarcode, frxClass, frxExportXLS, frxDBSet, DBGrids, ComCtrls,
  Menus, cxButtons, dxBar, cxClasses, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxCheckBox, cxTextEdit, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, cxCalendar, cxSpinEdit, cxGridExportLink,
  frxExportHTML, frxExportPDF, cxBarEditItem, DBAccess, Ora, MemDS, OraSmart, DBClient,
  ActnList, dxBarExtItems, cxLabel, jpeg, cxContainer, cxImage, ShowNomU, ShellApi,
  frxExportCSV, IniFiles, frxExportRTF, frxExportImage;

type
  TPreparePrintF = class(TForm)
    Panel3: TPanel;
    CheckList: TImageList;
    frSelPriceList: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxSelPrntPreview: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxReport1: TfrxReport;
    BarMan_invoice: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    tlb_add: TdxBarButton;
    tlb_del: TdxBarButton;
    tlb_edit: TdxBarButton;
    tlb_selall: TdxBarButton;
    tlb_notsel: TdxBarButton;
    tlb_print: TdxBarButton;
    tlb_save1: TdxBarButton;
    tlb_price: TdxBarButton;
    grid_price: TcxGrid;
    grid_priceView1: TcxGridDBTableView;
    idD_CHECK: TcxGridDBColumn;
    H_CODE: TcxGridDBColumn;
    F_NAME_RU: TcxGridDBColumn;
    QUANTITY: TcxGridDBColumn;
    PRICE: TcxGridDBColumn;
    PACK: TcxGridDBColumn;
    LEN: TcxGridDBColumn;
    DEPT: TcxGridDBColumn;
    COLOUR: TcxGridDBColumn;
    COUNTRY: TcxGridDBColumn;
    S_NAME_RU: TcxGridDBColumn;
    F_TYPE: TcxGridDBColumn;
    F_SUB_TYPE: TcxGridDBColumn;
    PRICE_DATE: TcxGridDBColumn;
    CODE: TcxGridDBColumn;
    BAR_CODE: TcxGridDBColumn;
    grid_price_Level1: TcxGridLevel;
    grid_priceView1N_ID: TcxGridDBColumn;
    grid_priceView1COMPILED_NAME: TcxGridDBColumn;
    grid_priceView1FT_ID: TcxGridDBColumn;
    grid_priceView1FST_ID: TcxGridDBColumn;
    grid_priceView1S_ID: TcxGridDBColumn;
    grid_priceView1COL_ID: TcxGridDBColumn;
    grid_priceView1C_ID: TcxGridDBColumn;
    grid_priceView1ID_DEPARTMENTS: TcxGridDBColumn;
    grid_priceView1FN_ID: TcxGridDBColumn;
    STICKERS: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    chb_quant: TcxBarEditItem;
    frSelFST_PriceList: TfrxDBDataset;
    frSelFT_PriceList_DS: TfrxDBDataset;
    tlb_printorder: TdxBarButton;
    tlb_prints: TdxBarSubItem;
    bb_stikers: TdxBarButton;
    bb_price: TdxBarButton;
    bb_print_order: TdxBarButton;
    bb_order_blank: TdxBarButton;
    bb_price_selected: TdxBarButton;
    chb_vid: TcxBarEditItem;
    ppm_price: TdxBarPopupMenu;
    dxBarButton6: TdxBarButton;
    tlb_sorting: TdxBarButton;
    alist_main: TActionList;
    cxImageList1: TcxImageList;
    dxBarButton7: TdxBarButton;
    btn_exit: TdxBarButton;
    aSelectAll: TAction;
    aDeselectAll: TAction;
    aClearFilter: TAction;
    BarMan_invoiceBar1: TdxBar;
    bdc_legend: TdxBarDockControl;
    dxBarLargeButton1: TdxBarLargeButton;
    cxImageList2: TcxImageList;
    ActionList1: TActionList;
    aRefresh: TAction;
    aExit: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    aFromStore: TAction;
    aFromInvoice: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    frxCSVExport1: TfrxCSVExport;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    grid_priceView1F_NAME_RU: TcxGridDBColumn;
    grid_priceView1GREAT_NAME_F: TcxGridDBColumn;
    grid_priceView1ORD: TcxGridDBColumn;
    grid_priceView1IS_PHOTO: TcxGridDBColumn;
    grid_priceView1PHOTO: TcxGridDBColumn;
    cb_pics: TcxBarEditItem;
    gr_photos: TcxGridDBColumn;
    frxRTFExport1: TfrxRTFExport;
    frxJPEGExport1: TfrxJPEGExport;
    dxBarStatic3: TdxBarStatic;
    dbb_pringDesk: TdxBarButton;
    beWithGroup: TcxBarEditItem;
    be_vid: TcxBarEditItem;
    be_article: TcxBarEditItem;
    be_price: TcxBarEditItem;
    beGroupTogether: TcxBarEditItem;
    bb_price_rozn: TdxBarButton;
    dbb_pringHolod: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    st_same: TcxStyle;
    st_profit: TcxStyle;
    st_defolt: TcxStyle;
    st_nullprice: TcxStyle;
    st_equal: TcxStyle;
    st_best_price: TcxStyle;
    st_spec_price: TcxStyle;
    stSPEC: TcxStyle;
    stSuper: TcxStyle;
    grid_priceView1GREAT_NAME: TcxGridDBColumn;
    grid_priceView1PICS: TcxGridDBColumn;
    grid_priceView1ID_OFFICE: TcxGridDBColumn;
    grid_priceView1BRIEF: TcxGridDBColumn;
    grid_priceView1SPEC_PRICE: TcxGridDBColumn;
    grid_priceView1BEST_PRICE: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    bsSpecPrice: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    bsBestPrice: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    mnSpecPrice: TdxBarButton;
    mnBestOrders: TdxBarButton;
    mnClearSign: TdxBarButton;
    addSpecOrder: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure tlb_save1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chb_quantPropertiesChange(Sender: TObject);
    procedure tlb_printorderClick(Sender: TObject);
    procedure bb_order_blankClick(Sender: TObject);
    procedure bb_price_selectedClick(Sender: TObject);
    procedure tlb_sortingClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aSelectAllExecute(Sender: TObject);
    procedure aDeselectAllExecute(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure bb_stikersClick(Sender: TObject);
    procedure bb_priceClick(Sender: TObject);
    procedure print_price(raport: AnsiString; filter_str: String);
    procedure aExitExecute(Sender: TObject);
    procedure aFromStoreExecute(Sender: TObject);
    procedure aFromInvoiceExecute(Sender: TObject);
    procedure grid_priceView1DblClick(Sender: TObject);
    procedure grid_priceView1KeyPress(Sender: TObject; var Key: Char);
    procedure grid_priceView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cb_photosPropertiesEditValueChanged(Sender: TObject);
    procedure grid_priceView1DataControllerFilterChanged(Sender: TObject);
    procedure grid_priceView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbb_pringDeskClick(Sender: TObject);
    procedure bb_price_roznClick(Sender: TObject);
    procedure bb_print_price;
    procedure dbb_pringHolodClick(Sender: TObject);
    procedure grid_priceView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure bsSpecPriceClick(Sender: TObject);
    procedure bsBestPriceClick(Sender: TObject);
    procedure mnClearSignClick(Sender: TObject);
    procedure addSpecOrderClick(Sender: TObject);
  private
    path: string;
    pnl_msg: TPanel;
    procedure Set_check(param_: integer);
    procedure do_check;
    procedure sort_table(filter_param: String);
    { Private declarations }
  public
    CheckPrice : TList;
    setProfit  : Double;
    procedure SetMark(action: String);
    { Public declarations }
  end;

var
  PreparePrintF: TPreparePrintF;

implementation

uses DataModule, print_f, InvoChooseU, Globals, TypInfo, UaddSpecOrder;

{$R *.dfm}

procedure UpdateRecordPictureByFileName(ADataController: TcxCustomDataController;
  AFileName: Variant; ARecordIndex, APictureColumnIndex: Integer);
var
  AValue: string;
  APicture: TPicture;
begin
  AValue := '';
  if (VarToStr(AFileName) <> '') then
  BEGIN
    AFileName := def_folder + IntToStr(CUR_DEPT_ID) + '\tm\'  + AFileName;
    if FileExists(aFileName) then
    begin
      APicture := TPicture.Create;
      try
        APicture.LoadFromFile(AFileName);
        SavePicture(APicture, AValue);
      finally
        FreeAndNil(APicture);
      end;
    end
    else
      AValue := '';
  END;
  ADataController.Values[ARecordIndex, APictureColumnIndex] := AValue;
end;

procedure UpdateRecordPicture(ADataController: TcxCustomDataController;
  ARecordIndex, AFileNameColumnIndex, APictureColumnIndex: Integer);
begin
  UpdateRecordPictureByFileName(ADataController,
    ADataController.Values[ARecordIndex, AFileNameColumnIndex],
    ARecordIndex, APictureColumnIndex);
end;

procedure LoadPictures(ADataController: TcxCustomDataController;
  AFileNameColumnIndex, APictureColumnIndex: Integer);
var
  I: Integer;
begin
  ADataController.BeginUpdate;
  try
    for I := 0 to ADataController.RecordCount - 1 do
      UpdateRecordPicture(ADataController, I, AFileNameColumnIndex,
        APictureColumnIndex);
  finally
    ADataController.EndUpdate;
  end;
end;





//
//  Выход
//
procedure TPreparePrintF.aExitExecute(Sender: TObject);
begin
  Close;
end;


//
//  Открытие формы
//
procedure TPreparePrintF.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path                  := ExtractFilePath(Application.ExeName);
  AOptions := [];

  AStoreKey     := path + '/ini/PricePrint_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceListPrint';
  grid_priceView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  gr_photos.Visible := false;
  grid_priceView1IS_PHOTO.Visible := true;
  be_article.EditValue := (CUR_DEPT_ID = 121);

  aRefresh.Execute;
  grid_price.SetFocus;
end;



//
//  При клиеке покажем номенклатурную позицию
//
procedure TPreparePrintF.grid_priceView1DblClick(Sender: TObject);
begin
  ShowNomenclature(DM.STAR_DB, grid_priceView1.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;
procedure TPreparePrintF.grid_priceView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     ShowNomenclature(DM.STAR_DB, grid_priceView1.DataController.DataSet.FieldByName('N_ID').AsInteger);
end;


procedure TPreparePrintF.grid_priceView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (ACellViewInfo.Item.Name = 'idD_CHECK') then
    do_check;
  AHandled := true;
end;


procedure TPreparePrintF.grid_priceView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
VAR
  Col : Variant;
begin
    // Красим лучшую цену
    Col := grid_priceView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_priceView1.GetColumnByFieldName('BEST_PRICE').Index
                );
    if (Col = 1) then
      ACanvas.Brush.Color := st_best_price.Color;

    // Красим спец.предложение
    Col := grid_priceView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_priceView1.GetColumnByFieldName('SPEC_PRICE').Index
                );
    if (Col = 1) then
      ACanvas.Brush.Color := st_spec_price.Color;

end;

procedure TPreparePrintF.grid_priceView1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=' ') then
    do_check;
end;


procedure TPreparePrintF.do_check;
var val: integer;
begin
  try
     val := DM.PriceListD_CHECKED.AsInteger;
     DM.PriceList.Edit;
     DM.PriceListD_CHECKED.AsInteger := abs(val - 1);
     DM.PriceList.Post;
     grid_priceView1.ViewData.DataController.GotoNext;
     if cb_pics.EditValue = true then
        LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


//
//  Закрыть окно и записать все в реестр
//
procedure TPreparePrintF.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := path + '/ini/PricePrint_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'PriceListPrint';
  grid_priceView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Обновить данные
//
procedure TPreparePrintF.aRefreshExecute(Sender: TObject);
begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    DM.PriceList.ParamByName('ID_DEPT').AsInteger := CUR_DEPT_ID;
    DM.PriceList.ParamByName('vid_').AsInteger    := chb_vid.EditValue;
    ReactivateOraQuery(DM.PriceList);

    pnl_msg.Free;

    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);

    grid_price.SetFocus;
  except on E: Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;


//
//  Снять сортировку
//
procedure TPreparePrintF.tlb_sortingClick(Sender: TObject);
var i, j: integer;
begin
  j := grid_priceView1.SortedItemCount;
  for i := 0 to j-1 do
  begin
    grid_priceView1.SortedItems[0].SortOrder := soNone;
  end;
  grid_price.SetFocus;
end;


//
//  Печать рапорта
//
procedure TPreparePrintF.print_price(raport: AnsiString; filter_str: String);
var old_filter : string;
    mTXT: TfrxMemoView;
    memo1, memo2: TfrxMemoView;
    mGH: TfrxGroupHeader;
    koef : string;
begin
  try
    Screen.Cursor         := crHandPoint;
    grid_priceView1.DataController.DataSet.DisableControls;
    DM.PriceList.First;
    frxReport1.LoadFromFile(raport);

    try
      memo1 := frxReport1.FindObject('MemoName') as TfrxMemoView;
      if be_article.EditValue then
        memo1.Text := '[frSelPriceList."H_CODE"] [frSelPriceList."COMPILED_NAME_POT"]'
      else
        memo1.Text := '[frSelPriceList."COMPILED_NAME_POT"]';
//      memo2 := frxReport1.FindObject('MemoArticle2') as TfrxMemoView;
//      memo1.Visible := be_article.EditValue;
//      memo2.Visible := be_article.EditValue;

    except
      null;
    end;

    try
      memo1 := frxReport1.FindObject('MemoPrice') as TfrxMemoView;
      memo2 := frxReport1.FindObject('MemoKind') as TfrxMemoView;
      if setProfit > 0 then
      begin
        //****** беру % из табл.PROCENT: ************
      with dm do
      begin
       selq.close;
       selq.sql.clear;
       selq.sql.add('select * from sale_percenet where id_departments ='+inttostr(CUR_DEPT_ID));
       selq.open;
       koef := selq.fieldbyname('proc').asstring;  
       selq.close;
      end;
        memo1.Text := '[(<frSelPriceList."PRICE">*'+koef+'/100)+<frSelPriceList."PRICE">]';
      //*******************************************
        //memo1.Text := '[<frSelPriceList."PRICE">*1.5]';
        memo2.Text := 'Розничный Прайс-лист';
      end
      else
      begin
        memo1.Text := '[frSelPriceList."PRICE"]';
        memo2.Text := 'Оптовый Прайс-лист';
      end;
//      memo2 := frxReport1.FindObject('MemoPrice') as TfrxMemoView;
//      memo1.Visible := be_price.EditValue;
//      memo2.Visible := be_price.EditValue;
    except
      null;
    end;

    try
      if (raport = StartDir + '/Reps/PriceRepDesk.fr3') then
      begin
        mGH := frxReport1.FindObject('GroupHeader1') as TfrxGroupHeader;
        mGH.StartNewPage := beGroupTogether.EditValue;
      end;

    except
      null;
    end;
    //title_name - коменчу штоб в шабку мусор не лез
    //mTXT   := frxReport1.FindObject('Memo1') as TfrxMemoView;
    //mTXT.Text := title_name;
    frxReport1.PrepareReport(true);
    frxReport1.ShowReport;
    grid_priceView1.DataController.DataSet.EnableControls;
    Screen.Cursor := crDefault;
    grid_price.SetFocus;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      grid_priceView1.DataController.DataSet.EnableControls;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;


//
//  Печать прайса по выделенным
//
procedure TPreparePrintF.bb_price_selectedClick(Sender: TObject);
begin
  idD_CHECK.DataBinding.AddToFilter(nil, foEqual, 1);
  //QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
  grid_priceView1.DataController.Filter.Active := true;

  if cb_pics.EditValue = true then
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceRepPics.fr3', 'D_CHECKED > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRepPics_wog.fr3', 'D_CHECKED > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end
  else
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceRep.fr3', 'D_CHECKED > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRep_wog.fr3', 'D_CHECKED > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end;
{
  if cb_pics.EditValue = true then
    print_price(StartDir + '/Reps/PriceRepPics.fr3', 'D_CHECKED > 0')
  else
    print_price(StartDir + '/Reps/PriceRep.fr3', 'D_CHECKED > 0');
}
  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
end;


//
//  Печать прайса розница
//
procedure TPreparePrintF.bb_price_roznClick(Sender: TObject);
begin
  setProfit := 1.5;
  bb_print_price;
end;
//
//  Печать прайса
//
procedure TPreparePrintF.bb_priceClick(Sender: TObject);
begin
  setProfit := 0;
  bb_print_price;
end;

procedure TPreparePrintF.bb_print_price;
begin
  QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
  grid_priceView1.DataController.Filter.Active := true;

  if cb_pics.EditValue = true then
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceRepPics.fr3', 'QUANTITY > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRepPics_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end
  else
  begin
    if beWithGroup.EditValue = true then
    begin
      print_price(StartDir + '/Reps/PriceRep.fr3', 'QUANTITY > 0')
    end
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceRep_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end;

  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
end;





//
//  Печать прайса для заказов
//
procedure TPreparePrintF.tlb_printorderClick(Sender: TObject);
begin

  QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
  grid_priceView1.DataController.Filter.Active := true;

  if cb_pics.EditValue = true then
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceClientPics.fr3', 'QUANTITY > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceClientPics_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end
  else
  begin
    if beWithGroup.EditValue = true then
      print_price(StartDir + '/Reps/PriceClient.fr3', 'QUANTITY > 0')
    else
    begin
      MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
      print_price(StartDir + '/Reps/PriceClient_wog.fr3', 'QUANTITY > 0');
      TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
      aRefresh.Execute;
    end;
  end;

  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
end;


//
//  Печать бланков
//
procedure TPreparePrintF.bb_order_blankClick(Sender: TObject);
var mTXT: TfrxMemoView;
begin
  try
    frxReport1.LoadFromFile(StartDir + '/Reps/OrderBlank.fr3');
    frxReport1.Variables['PrintMark'] := '''Отдел: ' + CUR_DEPT_NAME + '''';


      mTXT   := frxReport1.FindObject('Memo6') as TfrxMemoView;
      if DM.id_office = 1 then
         mTXT.Text := 'Телефон: (495) 782 0030, факс: (495) 782 0099, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 2 then
         mTXT.Text := 'Телефон: (846) 342-55-25, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 3 then
         mTXT.Text := 'Телефон: (843) 203-0190, факс: (843) 209-0191, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 4 then
         mTXT.Text := 'Телефон: (4852) 946-419, факс: (4852) 946-419, e-mail: info@starlight.ru, www.starlight.ru';
      if DM.id_office = 5 then
         mTXT.Text := 'Телефон: (843) 203-0190, факс: (843) 209-0191, e-mail: info@starlight.ru, www.starlight.ru';



    frxReport1.ShowReport;
    grid_price.SetFocus;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
  end;
end;


//
// Печать стикеров
//
procedure TPreparePrintF.bb_stikersClick(Sender: TObject);
begin
  printf    := Tprintf.Create(Application);
  try
    if DM.PriceList.State in [dsEdit,dsInsert] then DM.PriceList.Post;
    printf.showmodal;
    grid_price.SetFocus;
  finally
    printf.Free;
    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
  end;
end;


//
//  Снять фильтр
//
procedure TPreparePrintF.aClearFilterExecute(Sender: TObject);
begin
  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    DM.PriceList.Filter   := '';
    DM.PriceList.Filtered := false;

    grid_priceView1.DataController.Filter.Active := false;
    grid_priceView1.DataController.Filter.Clear;

    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);

    grid_price.SetFocus;
  finally
    pnl_msg.Free;
  end;
end;


//
//  Экспорт в Эксель
//
procedure TPreparePrintF.tlb_save1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_price, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
  grid_price.SetFocus;
end;


//
//  Отобразить только в наличии
//
procedure TPreparePrintF.chb_quantPropertiesChange(Sender: TObject);
begin
  try
    Screen.Cursor := crHandPoint;

    if (chb_quant.EditValue = 0) then
    begin
       grid_priceView1.DataController.Filter.Active := false;
       grid_priceView1.DataController.Filter.Clear;
    end
    else
    begin
       QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
       grid_priceView1.DataController.Filter.Active := true;
    end;

    Screen.Cursor := crDefault;
    grid_price.SetFocus;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      grid_priceView1.DataController.DataSet.EnableControls;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;


//
// Выделить все
//
procedure TPreparePrintF.aSelectAllExecute(Sender: TObject);
begin
  Set_check(1);
  grid_price.SetFocus;
end;


//
// Развыделить все
//
procedure TPreparePrintF.aDeselectAllExecute(Sender: TObject);
begin
  Set_check(0);
  grid_price.SetFocus;
end;


//
//  Выделяем
//
procedure TPreparePrintF.Set_check(param_: integer);
var i,j: integer;
begin
  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    screen.Cursor := crHourGlass;
    for i := 0 to grid_priceView1.ViewData.RowCount-1 do
    begin
      j := grid_priceView1.ViewData.Rows[i].RecordIndex;
      grid_priceView1.DataController.LocateByKey(grid_priceView1.ViewData.DataController.Values[j,grid_priceView1.GetColumnByFieldName('N_ID').Index]);
      DM.PriceList.Edit;
      DM.PriceList.FieldByName('D_CHECKED').AsInteger := param_;
      DM.PriceList.Post;
    end;

    screen.Cursor := crDefault;
    grid_price.SetFocus;
  finally
    screen.Cursor := crDefault;
    pnl_msg.Free;
    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
  end;
end;


//
// Ставим кол-во стикеров = кол-ву товара на складе
//
procedure TPreparePrintF.aFromStoreExecute(Sender: TObject);
var id: integer;
begin
  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    id            := grid_priceView1N_ID.EditValue;
    Screen.Cursor := crHandPoint;
    With DM.StoreProc do
    Begin
      StoredProcName := 'PRICE_PKG.COUNT_STICKERS';
      ExecProc;
    End;

    grid_priceView1.DataController.DataSet.Refresh;
    STICKERS.DataBinding.AddToFilter(nil, foGreater, 0);
    grid_priceView1.DataController.Filter.Active := true;
    grid_priceView1.DataController.DataSet.Locate('N_ID',id,[]);

    pnl_msg.Free;
    Screen.Cursor := crDefault;
    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
    grid_price.SetFocus;
  except on E: Exception do
    begin
      Screen.Cursor := crDefault;
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;


//
//  Ставим кол-во стикеров = кол-ву товара из инвойса
//
procedure TPreparePrintF.aFromInvoiceExecute(Sender: TObject);
VAR
  INV_ID : Variant;
  id: integer;
begin
  InvoChoose   := TInvoChoose.Create(Application);
  try
    id            := grid_priceView1N_ID.EditValue;
    Screen.Cursor := crHandPoint;
    InvoChoose.Label1.Visible := false;

    INV_ID        := ChooseInvo(1);
    if INV_ID > 0 then
    begin

      try
        with DM.StoreProc do
        Begin
          StoredProcName := 'PRICE_PKG.COUNT_INVOICE_STICKERS';
          Prepare;
          ParamByName('IN_INV_ID').Value := INV_ID;
          ExecProc;
        End;
      except on E: Exception do
        begin
          Screen.Cursor := crDefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
        end;
      end;

      grid_priceView1.DataController.DataSet.Refresh;
      STICKERS.DataBinding.AddToFilter(nil, foGreater, 0);
      grid_priceView1.DataController.Filter.Active := true;
      Set_check(1);
      grid_priceView1.DataController.DataSet.Locate('N_ID',id,[]);
    end;
    Screen.Cursor := crDefault;
    if cb_pics.EditValue = true then
       LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
    grid_price.SetFocus;
  finally
//    pnl_msg.Free;
    InvoChoose.Free;
  end;
end;


//
//  Печать прайса для стенда
//
procedure TPreparePrintF.dbb_pringDeskClick(Sender: TObject);
begin
  QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
  grid_priceView1.DataController.Filter.Active := true;

  if beWithGroup.EditValue = true then
    print_price(StartDir + '/Reps/PriceRepDesk.fr3', 'QUANTITY > 0')
  else
  begin
    MakeSortForPrint(TOraQuery(grid_priceView1.DataController.DataSet),grid_priceView1);
    print_price(StartDir + '/Reps/PriceRepDesk_wog.fr3', 'QUANTITY > 0');
    TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
    aRefresh.Execute;
  end;

  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
end;


//
//  Печать прайса для холодильник
//
procedure TPreparePrintF.dbb_pringHolodClick(Sender: TObject);
begin
  QUANTITY.DataBinding.AddToFilter(nil, foGreater, 0);
  grid_priceView1.DataController.Filter.Active := true;
  TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := 'ord;F_TYPE;compiled_name_pot';
  print_price(StartDir + '/Reps/PriceRepDeskH.fr3', 'QUANTITY > 0');
  TOraQuery(grid_priceView1.DataController.DataSet).IndexFieldNames := '';
end;

//
//  Обнуляем стикеры
//
procedure TPreparePrintF.dxBarButton6Click(Sender: TObject);
var id: integer;
begin
  if (MessageDlg('Обнулить количество стикеров?', mtConfirmation, [mbNo,mbOk], 0) = mrOk) then
  begin

    try
      pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      id := grid_priceView1N_ID.EditValue;
      Screen.Cursor := crHandPoint;
      With DM.StoreProc do
      Begin
        StoredProcName := 'PRICE_PKG.DELETE_STICKERS';
        ExecProc;
      End;

      grid_priceView1.DataController.DataSet.Refresh;
      grid_priceView1.DataController.DataSet.Locate('N_ID',id,[]);

      Screen.Cursor := crDefault;
      pnl_msg.Free;

      if cb_pics.EditValue = true then
         LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);

      grid_price.SetFocus;

    except on E: Exception do
      begin
        Screen.Cursor := crDefault;
        pnl_msg.Free;
        MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
      end;
    end;
  end;
end;









procedure TPreparePrintF.bsSpecPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;

procedure TPreparePrintF.bsBestPriceClick(Sender: TObject);
begin
  sort_table((Sender as TdxBarStatic).Name);
end;


procedure TPreparePrintF.sort_table(filter_param: String);
begin
  grid_priceView1.DataController.Filter.Clear;
  if filter_param <> '' then
  begin
    if filter_param = 'bsSpecPrice' then grid_priceView1SPEC_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);
    if filter_param = 'bsBestPrice' then grid_priceView1BEST_PRICE.DataBinding.AddToFilter(nil, foEqual, 1);
    grid_priceView1.DataController.Filter.Active := True;
  end;
end;



//
// Покажем изображения
//
procedure TPreparePrintF.cb_photosPropertiesEditValueChanged(Sender: TObject);
begin
  gr_photos.Visible := cb_pics.EditValue;
  grid_priceView1IS_PHOTO.Visible := not cb_pics.EditValue;
  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
  grid_price.SetFocus;
end;


procedure TPreparePrintF.grid_priceView1DataControllerFilterChanged(
  Sender: TObject);
begin
  if cb_pics.EditValue = true then
     LoadPictures(grid_priceView1.DataController, grid_priceView1PHOTO.Index, gr_photos.Index);
end;


procedure TPreparePrintF.mnClearSignClick(Sender: TObject);
begin
  SetMark((Sender as TdxBarButton).Name);
end;

procedure TPreparePrintF.SetMark(action: String);
var sql: string;
begin
  if grid_priceView1N_ID.EditValue > 0 then
  begin
    with DM.ForceQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('update price_list set spec_price=:p1, best_price=:p2 where n_id='+VarToStr(grid_priceView1N_ID.EditValue));
      Prepare;
    End;

    if (action = 'mnSpecPrice') then
    begin
      DM.ForceQ.ParamByName('p1').Value := 1;
      DM.ForceQ.ParamByName('p2').Value := 0;
    end;

    if (action = 'mnBestOrders') then
    begin
      DM.ForceQ.ParamByName('p1').Value := 0;
      DM.ForceQ.ParamByName('p2').Value := 1;
    end;

    if (action = 'mnClearSign') then
    begin
      DM.ForceQ.ParamByName('p1').Value := 0;
      DM.ForceQ.ParamByName('p2').Value := 0;
    end;
    DM.ForceQ.Execute;
    DM.PriceList.RefreshRecord;
    DM.STAR_DB.Commit;
  end;
end;
// -----------------------------------------------------------------------------


//
// Установить спец.предложение
//
procedure TPreparePrintF.addSpecOrderClick(Sender: TObject);
begin
  frmAddSpecOrder.AddSpecOfferFormShow(
    F_TYPE.EditValue + ' / ' + F_SUB_TYPE.EditValue,
    grid_priceView1COMPILED_NAME.EditValue,
    COUNTRY.EditValue,
    PRICE.EditValue,
    grid_priceView1N_ID.EditValue
  );
end;


end.
