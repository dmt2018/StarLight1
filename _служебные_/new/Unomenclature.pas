unit Unomenclature;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxCurrencyEdit,
  cxImageComboBox, cxLabel, cxButtonEdit, ActnList, dxBar, cxBarEditItem,
  dxBarExtItems, cxClasses, DBAccess, Ora, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters, cxSplitter, StdCtrls,
  cxButtons, ExtCtrls, ExtDlgs, IniFiles, ImgList, cxImage, cxTextEdit,
  cxCheckBox, cxGridBandedTableView, cxGridDBBandedTableView, ShellApi, frxClass,
  frxBarcode, frxExportCSV, frxExportRTF, frxExportXLS, frxDBSet;

type
  TfrmNomenclature = class(TForm)
    gr_spec: TcxGrid;
    gr_spec_v: TcxGridDBTableView;
    gr_spec_vSPEC_CODE: TcxGridDBColumn;
    gr_spec_vSPEC_NAME: TcxGridDBColumn;
    gr_spec_vHS_VAL: TcxGridDBColumn;
    gr_spec_vCONTENT_RUS: TcxGridDBColumn;
    _gr_spec_vHS_ID: TcxGridDBColumn;
    gr_spec_vORD: TcxGridDBColumn;
    gr_spec_vSC_ID: TcxGridDBColumn;
    gr_spec_l: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    gr_noms: TcxGrid;
    gr_noms_i: TcxGridLevel;
    bmMain: TdxBarManager;
    bmToolBar: TdxBar;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    btnExit: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    btnHotKeys: TdxBarButton;
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExit: TAction;
    DictView: TOraQuery;
    DictView_DS: TDataSource;
    NomSpec: TOraQuery;
    NomSpec_DS: TOraDataSource;
    CheckImList: TImageList;
    pm_main: TPopupMenu;
    mi_groupbytype: TMenuItem;
    mi_groupbycountry: TMenuItem;
    mi_groupbysupplier: TMenuItem;
    mi_groupbyholcode: TMenuItem;
    aFilterType1: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N1: TMenuItem;
    mnClone: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Action71: TMenuItem;
    N5: TMenuItem;
    N4: TMenuItem;
    mnSet8March: TMenuItem;
    nClone: TMenuItem;
    nFields: TMenuItem;
    N6: TMenuItem;
    mnLoadCell: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    odInvoice: TOpenDialog;
    cxStyleRepository1: TcxStyleRepository;
    st_suplier: TcxStyle;
    cxStyle2: TcxStyle;
    st_8pt: TcxStyle;
    stNotUse: TcxStyle;
    stKovalev: TcxStyle;
    st8March: TcxStyle;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    SelQ: TOraQuery;
    NomSpecHS_ID: TFloatField;
    NomSpecSPEC_CODE: TStringField;
    NomSpecSPEC_NAME: TStringField;
    NomSpecHS_VAL: TStringField;
    NomSpecCONTENT_RUS: TStringField;
    NomSpecORD: TFloatField;
    NomSpecSC_ID: TFloatField;
    gvr_nomenclature: TcxGridViewRepository;
    gr_noms_v: TcxGridDBBandedTableView;
    gr_image: TcxGridDBBandedColumn;
    gr_noms_vBRIEF: TcxGridDBBandedColumn;
    gr_noms_vCOMPILED_NAME_OTDEL: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    gr_noms_vIS_PHOTO: TcxGridDBBandedColumn;
    gr_noms_vID_OFFICE: TcxGridDBBandedColumn;
    gr_noms_vCHECKED: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    gr_noms_vNAMECODE: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    gr_noms_vWEIGHTDRY: TcxGridDBBandedColumn;
    gr_noms_vF_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vF_TYPE: TcxGridDBBandedColumn;
    gr_noms_vF_SUB_TYPE: TcxGridDBBandedColumn;
    gr_noms_vCOUNTRY: TcxGridDBBandedColumn;
    gr_noms_vCOLOUR: TcxGridDBBandedColumn;
    gr_noms_vCODE: TcxGridDBBandedColumn;
    gr_noms_vLEN: TcxGridDBBandedColumn;
    gr_noms_vDIAMETER: TcxGridDBBandedColumn;
    gr_noms_vPACK: TcxGridDBBandedColumn;
    gr_noms_vNSI_NAME: TcxGridDBBandedColumn;
    gr_noms_vRUS_MARKS: TcxGridDBBandedColumn;
    gr_noms_vTNVED: TcxGridDBBandedColumn;
    gr_noms_vNOPRINT: TcxGridDBBandedColumn;
    gr_noms_vNOTUSE: TcxGridDBBandedColumn;
    gr_noms_vNOM_NEW: TcxGridDBBandedColumn;
    gr_noms_vNOM_START: TcxGridDBBandedColumn;
    gr_noms_vNOM_END: TcxGridDBBandedColumn;
    gr_noms_vN_ID: TcxGridDBBandedColumn;
    gr_noms_vVBN: TcxGridDBBandedColumn;
    gr_noms_vFN_ID: TcxGridDBBandedColumn;
    gr_noms_vTYPE_SUBTYPE: TcxGridDBBandedColumn;
    gr_noms_vH_NAME: TcxGridDBBandedColumn;
    gr_noms_vHOL_MARKS: TcxGridDBBandedColumn;
    gr_noms_vPHOTO: TcxGridDBBandedColumn;
    gr_noms_vD_CHECK: TcxGridDBBandedColumn;
    gr_noms_vCOL_ID: TcxGridDBBandedColumn;
    gr_noms_vC_ID: TcxGridDBBandedColumn;
    gr_noms_vS_ID: TcxGridDBBandedColumn;
    gr_noms_vFST_ID: TcxGridDBBandedColumn;
    gr_noms_vFT_ID: TcxGridDBBandedColumn;
    gr_noms_vCUST_COEF: TcxGridDBBandedColumn;
    gr_noms_vHT_ID: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    gr_noms_vHOL_COLOR: TcxGridDBBandedColumn;
    gr_noms_vHS_VAL: TcxGridDBBandedColumn;
    gr_noms_vGREAT_NAME_F: TcxGridDBBandedColumn;
    gr_noms_vHOL_PACK: TcxGridDBBandedColumn;
    gr_noms_vWWW: TcxGridDBBandedColumn;
    gr_noms_NO_ORDER: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    cb_pics: TcxBarEditItem;
    cxBarEditItem6: TcxBarEditItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    bbSyncOne: TdxBarButton;
    bbSyncAll: TdxBarButton;
    bbSyncNomenclature: TdxBarButton;
    bbSyncNomenclatureLoad: TdxBarButton;
    btnReportNom: TdxBarButton;
    btnPrintStickers: TdxBarButton;
    tbnSetDone: TdxBarButton;
    btnCheckBarCode: TdxBarButton;
    btnSyncVolume: TdxBarButton;
    btnShowNotUse: TdxBarButton;
    bbFindByParameters: TdxBarSubItem;
    btnClearFilter: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn3: TcxButton;
    BitBtn4: TcxButton;
    bmMainBar1: TdxBar;
    DictViewD_CHECK: TFloatField;
    DictViewF_NAME: TStringField;
    DictViewF_NAME_RU: TStringField;
    DictViewF_SUB_TYPE: TStringField;
    DictViewF_TYPE: TStringField;
    DictViewCOUNTRY: TStringField;
    DictViewTYPE_SUBTYPE: TStringField;
    DictViewN_ID: TFloatField;
    DictViewFN_ID: TFloatField;
    DictViewFT_ID: TFloatField;
    DictViewFST_ID: TFloatField;
    DictViewS_ID: TFloatField;
    DictViewC_ID: TFloatField;
    DictViewCOL_ID: TFloatField;
    DictViewH_CODE: TStringField;
    DictViewH_NAME: TStringField;
    DictViewHT_ID: TFloatField;
    DictViewCODE: TStringField;
    DictViewLEN: TIntegerField;
    DictViewPACK: TIntegerField;
    DictViewVBN: TIntegerField;
    DictViewHOL_TYPE: TStringField;
    DictViewWEIGHT: TFloatField;
    DictViewWEIGHTDRY: TFloatField;
    DictViewS_NAME_RU: TStringField;
    DictViewCOLOUR: TStringField;
    DictViewIS_PHOTO: TFloatField;
    DictViewHOL_MARKS: TStringField;
    DictViewRUS_MARKS: TStringField;
    DictViewDIAMETER: TFloatField;
    DictViewBAR_CODE: TStringField;
    DictViewCUST_COEF: TFloatField;
    DictViewREMARKS: TStringField;
    DictViewPHOTO: TStringField;
    DictViewGREAT_NAME_F: TStringField;
    DictViewCOMPILED_NAME_OTDEL: TStringField;
    DictViewNAME_CODE: TStringField;
    DictViewNOPRINT: TIntegerField;
    DictViewNOTUSE: TIntegerField;
    DictViewNAMECODE: TStringField;
    DictViewTNVED: TStringField;
    DictViewHOL_PACK: TIntegerField;
    DictViewNOM_NEW: TIntegerField;
    DictViewNOM_START: TIntegerField;
    DictViewNOM_END: TIntegerField;
    DictViewID_OFFICE: TIntegerField;
    DictViewBRIEF: TStringField;
    DictViewCHECKED: TFloatField;
    DictViewHOL_COLOR: TStringField;
    DictViewHS_VAL: TStringField;
    DictViewNSI_NAME: TStringField;
    DictViewREMOVE_FROM_SITE: TFloatField;
    DictViewNO_ORDER: TFloatField;
    StorProc: TOraStoredProc;
    agetrules: TAction;
    copyN: TAction;
    areload: TAction;
    dictsf: TAction;
    add_spec: TAction;
    setparams: TAction;
    hidespec: TAction;
    afotos: TAction;
    afiltertype: TAction;
    repDict: TfrxReport;
    frxDictView: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxSelPrntPreview: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    FlowerNames: TOraQuery;
    FlowerNamesFN_ID: TFloatField;
    FlowerNamesF_NAME_RU: TStringField;
    FlowerNamesCNT: TFloatField;
    FlowerNamesID_DEPARTMENTS: TFloatField;
    FlowerNamesCNT_NOMS: TFloatField;
    FlowerNamesID_OFFICE: TIntegerField;
    FlowerNames_DS: TDataSource;
    FlowerNameTranslations: TOraQuery;
    FlowerNameTranslationsFN_ID: TFloatField;
    FlowerNameTranslationsF_NAME: TStringField;
    FlowerNameTranslationsNAME_CODE: TStringField;
    FlowerNameTranslationsID_DEPARTMENTS: TFloatField;
    FlowerNameTranslationsFNT_ID: TFloatField;
    FlowerNameTranslationsREMARKS: TStringField;
    FlowerNameTranslationsID_OFFICE: TIntegerField;
    FlowerNameTranslationsF_NAME_RU: TStringField;
    FlowerNameTranslations_DS: TOraDataSource;
    FlowerSubTypes_DS: TDataSource;
    FlowerSubTypes: TOraQuery;
    FlowerSubTypesFST_ID: TFloatField;
    FlowerSubTypesF_SUB_TYPE: TStringField;
    FlowerSubTypesFT_ID: TFloatField;
    FlowerSubTypesHOL_SUB_TYPE: TStringField;
    FlowerSubTypesNN: TFloatField;
    FlowerSubTypesMNEMO: TStringField;
    FlowerSubTypesSUB_WEIGHT: TFloatField;
    FlowerSubTypesF_TYPE: TStringField;
    FlowerSubTypesDOUBLE_NAME: TStringField;
    FlowerSubTypesHT_ID: TFloatField;
    FlowerSubTypesHOL_TYPE: TStringField;
    FlowerSubTypesID_OFFICE: TIntegerField;
    FlowerSubTypesPRICE_PREFIX: TStringField;
    FlowerSubTypesTNVED: TStringField;
    FlowerSubTypesSUB_WEIGHT_DRY: TFloatField;
    FlowerSubTypesCNT: TFloatField;
    FlowerTypes: TOraQuery;
    FlowerTypesFT_ID: TFloatField;
    FlowerTypesF_TYPE: TStringField;
    FlowerTypesFT_MASK: TStringField;
    FlowerTypesHT_ID: TFloatField;
    FlowerTypesHOL_TYPE: TStringField;
    FlowerTypesNN: TFloatField;
    FlowerTypesCNT: TFloatField;
    FlowerTypesID_OFFICE: TIntegerField;
    FlowerTypes_DS: TDataSource;
    FNameTransLink: TOraQuery;
    FNameTransLinkFN_ID: TFloatField;
    FNameTransLinkF_NAME: TStringField;
    FNameTransLinkNAME_CODE: TStringField;
    FNameTransLinkID_DEPARTMENTS: TFloatField;
    FNameTransLinkFNT_ID: TFloatField;
    FNameTransLinkREMARKS: TStringField;
    FNameTransLinkID_OFFICE: TIntegerField;
    FNameTransLink_DS: TOraDataSource;
    Suppliers: TOraQuery;
    SuppliersS_ID: TFloatField;
    SuppliersS_NAME_RU: TStringField;
    SuppliersC_ID: TFloatField;
    SuppliersNEED_CUST: TIntegerField;
    SuppliersCOUNTRY: TStringField;
    SuppliersNN: TFloatField;
    SuppliersID_OFFICE: TIntegerField;
    SuppliersANALYZE_DAYS: TIntegerField;
    SuppliersIS_ACTIVE: TFloatField;
    Suppliers_DS: TDataSource;
    Colours: TOraQuery;
    ColoursCOL_ID: TFloatField;
    ColoursCOLOUR: TStringField;
    ColoursNN: TFloatField;
    ColoursID_OFFICE: TIntegerField;
    Colours_DS: TDataSource;
    HColours: TOraQuery;
    HColoursH_COL_ID: TFloatField;
    HColoursCOL_ID: TFloatField;
    HColoursHOL_COLOUR: TStringField;
    HColoursID_OFFICE: TIntegerField;
    HColours_DS: TOraDataSource;
    Countries: TOraQuery;
    CountriesC_ID: TIntegerField;
    CountriesCOUNTRY: TStringField;
    CountriesNN: TFloatField;
    CountriesCOUNTRY_ENG: TStringField;
    CountriesMNEMO: TStringField;
    CountriesBUH_CODE: TStringField;
    Countries_DS: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure cb_picsPropertiesEditValueChanged(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure CopyNExecute(Sender: TObject);
    procedure areloadExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure afotosExecute(Sender: TObject);
    procedure bbSyncOneClick(Sender: TObject);
    procedure bbSyncAllClick(Sender: TObject);
    procedure bbSyncNomenclatureClick(Sender: TObject);
    procedure bbSyncNomenclatureLoadClick(Sender: TObject);
    procedure btnReportNomClick(Sender: TObject);
    procedure btnPrintStickersClick(Sender: TObject);
    procedure tbnSetDoneClick(Sender: TObject);
    procedure btnCheckBarCodeClick(Sender: TObject);
    procedure btnSyncVolumeClick(Sender: TObject);
    procedure btnShowNotUseClick(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure DictViewBeforeOpen(DataSet: TDataSet);
    procedure FlowerNamesAfterPost(DataSet: TDataSet);
    procedure FlowerNamesAfterOpen(DataSet: TDataSet);
    procedure FlowerNameTranslationsAfterPost(DataSet: TDataSet);
    procedure FlowerSubTypesAfterOpen(DataSet: TDataSet);
    procedure FlowerTypesAfterOpen(DataSet: TDataSet);
    procedure FNameTransLinkAfterOpen(DataSet: TDataSet);
    procedure SuppliersAfterOpen(DataSet: TDataSet);
    procedure ColoursAfterOpen(DataSet: TDataSet);
    procedure HColoursAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
    nomsait:variant;
    nomnoorder:variant;
    pnl_msg: TPanel;
    procedure RepaintNom;
    procedure RepaintSpec;
    procedure FildsShow(Sender: TObject);
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
  public
    id_office: integer;
    path: string;
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmNomenclature: TfrmNomenclature;
  //INPUT_DEPT_ID : Variant;
  CUR_DEPT_ID{, CUR_DEPT_NAME} : Variant;
  SPEC_SHOW : Boolean;
  ora_db_path, username, password, creator, def_folder : string;
  err_code: integer;
  err_msg: string;
  v_FN_ID, v_ID_DEPARTMENTS: integer;
  v_F_NAME_RU: string;

implementation

uses umain, udm, UHotKeys, uEditNom;

{$R *.dfm}

procedure TfrmNomenclature.FildsShow(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then (Sender as TMenuItem).Checked := false else (Sender as TMenuItem).Checked := true;
  gr_noms_v.Columns[(Sender as TMenuItem).Tag].Visible := (Sender as TMenuItem).Checked;
end;

procedure TfrmNomenclature.FlowerNamesAfterOpen(DataSet: TDataSet);
begin
 FlowerNames.ParamByName('v_office').AsInteger := id_office;
end;

procedure TfrmNomenclature.FlowerNamesAfterPost(DataSet: TDataSet);
begin
{ ВРЕМЕННО
  EditRusName(StorProc, FlowerNames, v_FN_ID, v_F_NAME_RU, v_ID_DEPARTMENTS);
  v_FN_ID := 0;
  v_F_NAME_RU := '';
  v_ID_DEPARTMENTS := 0;
}  
end;

procedure TfrmNomenclature.FlowerNameTranslationsAfterPost(DataSet: TDataSet);
begin
  FlowerNameTranslations.ParamByName('v_office').AsInteger := id_office;
end;

procedure TfrmNomenclature.FlowerSubTypesAfterOpen(DataSet: TDataSet);
begin
  FlowerSubTypes.ParamByName('v_office').AsInteger := id_office;
end;

procedure TfrmNomenclature.FlowerTypesAfterOpen(DataSet: TDataSet);
begin
  FlowerTypes.ParamByName('v_office').AsInteger := id_office;
end;

procedure TfrmNomenclature.FNameTransLinkAfterOpen(DataSet: TDataSet);
begin
  FNameTransLink.ParamByName('v_office').AsInteger := id_office;
end;

// *************Картинки***********************

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
// *************конец Картинки***********************


// Указываем отдел и открываем данные с номенклатурой
procedure TfrmNomenclature.RepaintNom;
Begin
{  cursor := crHourGlass;
  if (CUR_DEPT_ID > 0) and (imgOtdel.EditValue > 0) then
  Begin
    with DictView do
    if not Active then
      Begin
        Close;
        ParamByName('dept_').Value := CUR_DEPT_ID;
        Open;
      End
    else
      Begin
        ParamByName('dept_').Value := CUR_DEPT_ID;
        Refresh;
      End;
  End;
  if cb_pics.EditValue = true then
     LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);     }
End;

//  Показываем форму со спецификацией и обнавляем данные
procedure TfrmNomenclature.RepaintSpec;
Begin
 { if SPEC_SHOW then
    Begin
      with NomSpec do if not Active then Open
                                       else Refresh;
      Panel4.Visible := true;
    end
  else
    Begin
      Panel4.Visible := false;
      NomSpec.Close;
    End;
  cursor := crDefault;     }
End;

procedure TfrmNomenclature.SuppliersAfterOpen(DataSet: TDataSet);
begin
  Suppliers.ParamByName('v_office').AsInteger := id_office;
end;

// Отметить Ковалевскую позицию как проверенную
procedure TfrmNomenclature.tbnSetDoneClick(Sender: TObject);
begin
  if not DictView.Active or (DictView.RecordCount = 0) then exit;

  if (id_office <> DictView.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    SelQ.Close;
    SelQ.SQL.Text := 'update import_flowers_kov set CHECKED where NOM_CODE = '''+DictView.FieldByName('code').AsString+'''';
    SelQ.Execute;
    SelQ.Close;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;

// удалить номенклатуру
procedure TfrmNomenclature.aDeleteExecute(Sender: TObject);
VAR i, N_ID : integer;
    OutText : Variant;
begin
  if MessageDlg('Вы действительно хотите удалить номенклатуру?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    if (id_office <> DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    try
      for i:=0 to gr_noms_v.Controller.SelectedRowCount-1 do
      begin
        N_ID := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.index]; //  DM.DictView.FieldByName('N_ID').Value;
        with StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_SPEC';
          Prepare;
          ParamByName('N_ID_').Value := N_ID;
          ExecProc;
          OutText := ParamByName('OUT_TEXT').Value;
          if (OutText <> '') then
             MessageBox(Handle, PChar(VarToStr(gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vCOMPILED_NAME_OTDEL.index])+#10+VarToStr(OutText)), 'Ошибка', MB_ICONERROR);
        End;
      end;

      DictView.Refresh;
      if cb_pics.EditValue = true then
        LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);

    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  gr_noms.SetFocus;
end;


// Редактируем номенклатуру
procedure TfrmNomenclature.aEditExecute(Sender: TObject);
begin
    if (DictView.RecordCount > 0) then
  begin
    if (id_office <> DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    frmEditNom          := TfrmEditNom.Create(Application);
    try
      frmEditNom.editing  := true;
      frmEditNom.N_ID_    := DictView.FieldByName('N_ID').AsInteger;
      if frmEditNom.ShowModal = mrOk then
      begin
        gr_spec_v.DataController.DataSet.Refresh;  
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
      end;
    finally
      frmEditNom.Free;
    end;
  end;
  gr_noms.SetFocus;
end;

//выход
procedure TfrmNomenclature.aExitExecute(Sender: TObject);
begin
 close;
end;

// Обработаем изображения
procedure TfrmNomenclature.afotosExecute(Sender: TObject);
var v_file: string;
begin
  if MessageDlg('Вы действительно хотите запустить процедуру?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    NomSpec.DisableControls;
    DictView.DisableControls;
    DictView.First;

    StorProc.StoredProcName := 'nomenclature_pkg.identfy_photo';
    StorProc.Prepare;
    while not DictView.Eof do
    begin
{2016-01-18 Переходим на единый механизм идентификации фото
      if CUR_DEPT_ID = 62 then
        v_file := DM.DictView.FieldByName('NAME_CODE').AsString+'.jpg'
      else
}      
        v_file := DictView.FieldByName('CODE').AsString+'.jpg';

      StorProc.ParamByName('v_n_id').AsInteger := DictView.FieldByName('N_ID').AsInteger;
      if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+v_file) then
         StorProc.ParamByName('v_photo').AsString := v_file
      else
         StorProc.ParamByName('v_photo').AsString := '';
      StorProc.Execute;
      DictView.Next;
    end;

    DM.oraSession.Commit;
    pnl_msg.Free;
    aRefresh.Execute;
  finally
    NomSpec.EnableControls;
    DictView.EnableControls;
  end;
  End;
end;

procedure TfrmNomenclature.aGetRulesExecute(Sender: TObject);
begin
 { with SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('login_').AsString   := UpperCase(Username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=2';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then p_edit := true else p_edit := false;
         if FieldByName('C_DEL').AsInteger=1 then p_delete := true else p_delete := false;
         if FieldByName('C_PRINT').AsInteger=1 then p_print := true else p_print := false;
         if FieldByName('C_ADDIT').AsInteger=1 then p_read := true else p_read := false;

        aNew.Enabled    := p_edit;
        aedit.Enabled   := p_edit;
        adelete.Enabled := p_delete;
        copyn.Enabled   := p_edit;
        add_spec.Enabled:= p_edit;
        BitBtn4.Enabled := p_delete;
        DictsF.Enabled  := true;
        aReload.Enabled := p_edit;
        aFotos.Enabled  := p_edit;
        N2.Enabled      := p_print;
        SetParams.Enabled   := p_edit;
        mnSet8March.Enabled := p_edit;
        nClone.Enabled      := p_edit;
        aRefresh.Enabled    := true;

        bbSyncOne.Enabled := (p_edit and (id_office = 1));
        bbSyncAll.Enabled := (p_edit and (id_office = 1));
        bbSyncNomenclature.Enabled := (p_edit and (id_office = 1));
        bbSyncNomenclatureLoad.Enabled := (p_edit and (id_office > 1));

        RepaintNom;
        RepaintSpec;
      end
      else
      begin
        aNew.Enabled    := false;
        aedit.Enabled   := false;
        adelete.Enabled := false;
        copyn.Enabled   := false;
        add_spec.Enabled:= false;
        BitBtn4.Enabled := false;
        DictsF.Enabled  := false;
        aReload.Enabled := false;
        aFotos.Enabled  := false;
        N2.Enabled      := false;
        SetParams.Enabled := false;
        mnSet8March.Enabled := false;
        nClone.Enabled    := false;
        aRefresh.Enabled  := false;
        bbSyncOne.Enabled := false;
        bbSyncAll.Enabled := false;
        bbSyncNomenclature.Enabled := false;
        bbSyncNomenclatureLoad.Enabled := false;
        NomSpec.Close;
        DictView.Close;
      end;
      Close;
      Filter := '';
      Filtered := false;
  End;     }
end;

// Добавляем номенклатуру
procedure TfrmNomenclature.aNewExecute(Sender: TObject);
begin
  if CUR_DEPT_ID = NULL then ShowMessage('Не выбран текущий отдел!')
  else
  Begin
    frmEditNom          := TfrmEditNom.Create(Application);
    try
      frmEditNom.editing  := false;
      frmEditNom.N_ID_    := -1;
      if frmEditNom.ShowModal = mrOk then
      begin
        gr_spec_v.DataController.DataSet.Refresh;
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
      end;
    finally
      frmEditNom.Free;
    end;
  End;
  gr_noms.SetFocus;
end;

 //обновить
procedure TfrmNomenclature.aRefreshExecute(Sender: TObject);
  var id: integer;
begin
  try

    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

   // id := DictView.FieldByName('N_ID').AsInteger;

    NomSpec.MasterFields := '';
    NomSpec.MasterSource := nil;

   // DictView.Refresh;
    with DictView do
    if not Active then
      Begin
        Close;
        ParamByName('dept_').Value := CUR_DEPT_ID;
        Open;
      End
    else
      Begin
        ParamByName('dept_').Value := CUR_DEPT_ID;
        Refresh;
      End;

   // gr_noms_v.DataController.LocateByKey(id);


  //  NomSpec.MasterFields := 'N_ID';
   // NomSpec.MasterSource := DictView_DS;

   // NomSpec.Refresh;
  if SPEC_SHOW then begin
     with NomSpec do if not Active then Open
                                       else Refresh;
      Panel4.Visible := true;
    end
  else
    Begin
      Panel4.Visible := false;
      NomSpec.Close;
    End;



    pnl_msg.Free;

    if cb_pics.EditValue = true then
       LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);

    gr_noms.SetFocus;
  Except on E:Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;




// Синхронизация номенклатуры
procedure TfrmNomenclature.areloadExecute(Sender: TObject);
begin
    try
      pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      with StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.sync_nomenclature';
        ExecProc;
      End;
      pnl_msg.Free;

      aRefresh.Execute;
    Except on E:Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
    end;
end;


// Синхронизация всей номенклатуры
procedure TfrmNomenclature.bbSyncAllClick(Sender: TObject);
var res_str: string;
begin
  if not DictView.Active or DictView.IsEmpty then exit;

  if MessageDlg('Операция может занять опредленное время. Продолжить?',mtConfirmation,[mbNo,mbYes],0) <> mrYes then Exit;

  pnl_msg := TPanel(MakePanelLabel(gr_noms,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;
  try
    try
      StorProc.StoredProcName := 'NOMENCLATURE_PKG.sync_nomenclature';
      StorProc.ExecProc;

      StorProc.StoredProcName := 'SYNC_LINK_PKG.SYNC_ALL_NOMENCLATURE';
      StorProc.Prepare;
      StorProc.ParamByName('v_res').AsString := res_str;
      StorProc.Execute;
      if StorProc.ParamByName('v_res').AsString <> '' then
        MessageBox(Handle, PChar(StorProc.ParamByName('v_res').AsString), 'Ошибка', MB_ICONERROR);
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  finally
    pnl_msg.Free;
  end;
end;

// Импорт / экспорт номенклатуры
procedure TfrmNomenclature.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
    begin
      with cds do
      begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_debt').AsInteger := CUR_DEPT_ID;
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

// Выгрузка синхронизации наоменклатуры в регионы
procedure TfrmNomenclature.bbSyncNomenclatureClick(Sender: TObject);
var sql_str: string;
    res,ResText : Variant;
    new_id, old_id, param_, s_id_, p_price: integer;
    F_CSV: TextFile;
begin


  if MessageDlg('Создать экспортный файл номенклатуры для регионов?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  p_price := 0;


  if not DirectoryExists(path+'\OUT\'+VarToStr(CUR_DEPT_ID)) then
  if not CreateDir(path+'\OUT\'+VarToStr(CUR_DEPT_ID)) then
  begin
    MessageBox (Handle,'Ошибка при создании директории.', 'Ошибка!', MB_ICONERROR);
    exit;
  end;

  try
    screen.cursor := crHourGlass;

    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    AssignFile(F_CSV, path+ '\OUT\'+VarToStr(CUR_DEPT_ID)+'\export.sql');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';

    SelQ.close;
    SelQ.sql.Clear;
    SelQ.sql.Add(sql_str);
    SelQ.Execute;


    sql_str := 'begin sync_pkg.make_types_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_subtypes_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_flower_names_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_flower_name_trans_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_colors_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_countries_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_suppliers_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nomenclature_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nom_spec_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nomenclature_sync_nom(:p_debt, :p_cursor); end;';
    ins_to_file(SelQ, F_CSV, sql_str, 0);

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);
    pnl_msg.free;
    ShellExecute(Handle, nil, PChar(path+'\OUT\'+VarToStr(CUR_DEPT_ID)), nil, nil, SW_RESTORE);
  end;

end;


//номенк из файла
procedure TfrmNomenclature.bbSyncNomenclatureLoadClick(Sender: TObject);
var F_CSV: TextFile;
    proc_text: string;
    i: integer;
begin
  if odInvoice.Execute then
  begin

    try
      screen.cursor := crHourGlass;

      pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      AssignFile(F_CSV, odInvoice.FileName);
      Reset(F_CSV);
      DecimalSeparator := '.';
      SelQ.close;
      SelQ.sql.Clear;
      SelQ.sql.Add('Alter session set NLS_NUMERIC_CHARACTERS=''.,''');
      SelQ.Execute;


      i := 1;
      while not Eof(F_CSV) do
      begin
        ReadLn(F_CSV, proc_text);
        if (trim(proc_text) <> '') then
        begin
          try
            with SelQ do
            begin
              close;
              sql.Clear;
              sql.Add(proc_text);
              Execute;
              i := i + 1;
            end;
          Except on E:Exception do
            MessageBox(Handle, PChar(E.Message + #13 + proc_text + #13 + IntToStr(i)), 'Ошибка', MB_ICONERROR);
          end;
        end;
      end;

      SelQ.close;
      SelQ.sql.Clear;
      SelQ.sql.Add('begin nomenclature_pkg.sync_nomenclature; end;');
      SelQ.Execute;
      SelQ.close;

    finally
      pnl_msg.Free;
      screen.cursor := crDefault;
      CloseFile(F_CSV);
      DM.oraSession.Commit;
    end;

    aRefresh.Execute;
    MessageBox (Handle,'Файл импортирован успешно.', 'Результат', MB_ICONINFORMATION);

  end;
end;

// Синхронизация одной номенклатуры
procedure TfrmNomenclature.bbSyncOneClick(Sender: TObject);
var cc, i: integer;
    res_str: string;
begin
  if not DictView.Active or DictView.IsEmpty then exit;

  cc := gr_noms_v.Controller.SelectedRowCount;
  if cc = 0 then
  begin
    MessageBox(Handle, 'Необходимо выделить хотя бы одну запись', 'Внимание', MB_ICONWarning);
    exit;
  end;

  pnl_msg := TPanel(MakePanelLabel(gr_noms,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  try
    DictView.DisableControls;
    cursor := crHourGlass;
    StorProc.StoredProcName := 'SYNC_LINK_PKG.SYNC_NOMENCLATURE_ONE';
    StorProc.Prepare;
    StorProc.ParamByName('v_res').AsString := res_str;
    for I := 0 to cc - 1 do
    begin
      try
        StorProc.ParamByName('v_nid').Value := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        StorProc.Execute;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
    if StorProc.ParamByName('v_res').AsString <> '' then
       MessageBox(Handle, PChar(StorProc.ParamByName('v_res').AsString), 'Ошибка', MB_ICONERROR);
  finally
    DictView.EnableControls;
    pnl_msg.Free;
    cursor := crDefault;
  end;
end;


//  Добавить спецификацию
procedure TfrmNomenclature.BitBtn3Click(Sender: TObject);
begin
  {AddSpec := TAddSpec.Create(Application);
  try
    AddSpec.InsertSpec(DM.DictView.FieldByName('N_ID').Value);
    gr_noms.SetFocus;
  finally
    AddSpec.Free;
  end;}
end;

//  Удалить спецификацию
procedure TfrmNomenclature.BitBtn4Click(Sender: TObject);
VAR N_ID, HS_IDS : integer;
    OutText, sc_id_: variant;
begin
  if MessageDlg('Вы действительно хотите удалить спецификацию?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
      N_ID := DictView.FieldByName('N_ID').Value;
      HS_IDS := gr_spec_v.DataController.DataSet.FieldByName('HS_ID').AsInteger;
      sc_id_ := gr_spec_v.DataController.DataSet.FieldByName('SC_ID').Value;
      with StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.DELETE_NOM_SPEC';
        Prepare;
        ParamByName('N_ID_').Value    := N_ID;
        ParamByName('HS_IDS_').Value  := HS_IDS;
        ParamByName('SC_ID_').Value   := sc_id_;
        ExecProc;
        OutText := ParamByName('OUT_TEXT').Value;
        if (OutText <> '') then
           MessageBox(Handle, PChar(ParamByName('OUT_TEXT').AsString), 'Произошла ошибка', MB_ICONERROR)
        else
           NomSpec.Refresh;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  gr_noms.SetFocus;
end;

//  Проверка одинаковых штрих-кодов поставщика в разных номенклатурах
procedure TfrmNomenclature.btnCheckBarCodeClick(Sender: TObject);
var str: string;
begin
    try
      with StorProc do
      Begin
        Close;
        StoredProcName := 'NOMENCLATURE2_PKG.checkBarCodes';
        Prepare;
        ParamByName('v_dep_id').Value    := CUR_DEPT_ID;
        Open;

        if not IsEmpty then
        begin
          First;
          str := '';
          while not Eof do
          begin
            str := str + Fields[0].AsString + #13;
            Next;
          end;
         //какая то форма вывода - не делал даже
         // OpenForShowModal('Одинаковые коды поставщика в номенклатурах',str);
        end;
        Close;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
end;

// Очистить фильтр
procedure TfrmNomenclature.btnClearFilterClick(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filtered := false;
  gr_noms_v.DataController.DataSet.Filter := '';
  gr_noms_v.DataController.Filter.Clear;
  gr_noms_v.DataController.Filter.Active := False;
end;

procedure TfrmNomenclature.btnExitClick(Sender: TObject);
begin

end;

//  Печать стикеров
procedure TfrmNomenclature.btnPrintStickersClick(Sender: TObject);
var i, n_id: integer;
    vItemList: TcxFilterCriteriaItemList;
begin
  if DictView.RecordCount = 0 then exit;

  if gr_noms_v.Controller.SelectedRowCount > 0 then
  begin
    try
      gr_noms_v.DataController.Filter.BeginUpdate;
      gr_noms_v.DataController.Filter.Root.Clear;
      //gr_noms_v.DataController.Filter.Root.BoolOperatorKind := fboOr;
      vItemList := gr_noms_v.DataController.Filter.Root.AddItemList(fboOr);
      for I := 0 to gr_noms_v.Controller.SelectedRowCount - 1 do
      begin
        N_ID := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        vItemList.AddItem(gr_noms_vN_ID, foEqual, N_ID, IntToStr(N_ID));
      end;
    finally
      gr_noms_v.DataController.Filter.EndUpdate;
      gr_noms_v.DataController.Filter.Active := True;
    end;
  end;

  try
    DictView.DisableControls;
    repDict.LoadFromFile(path + '/Reps/stikers.fr3');
    repDict.PrepareReport;
    repDict.ShowReport;
  finally
    DictView.EnableControls;
  end;

end;

//печ списка
procedure TfrmNomenclature.btnReportNomClick(Sender: TObject);
//var Memo1: TfrxMemoView;
begin
 { try
    DictView.DisableControls;
    repDict.LoadFromFile(path+'Reps\dict_list.fr3');
    repDict.PrepareReport;
    Memo1 := repDict.FindObject('Memo3') as TfrxMemoView;
    Memo1.Text := CUR_DEPT_NAME;
    repDict.ShowReport;
  finally
    DictView.EnableControls;
  end;  }
end;

// Показать неиспользуемые позиции
procedure TfrmNomenclature.btnShowNotUseClick(Sender: TObject);
begin
  gr_noms_v.DataController.Filter.Clear;
  gr_noms_vNOTUSE.DataBinding.AddToFilter(nil, foEqual, 1);
  gr_noms_v.DataController.Filter.Active := True;
end;

// Синхронизация объемов
procedure TfrmNomenclature.btnSyncVolumeClick(Sender: TObject);
begin
{  frmSyncVolume := TfrmSyncVolume.Create(Application);
  try
    frmSyncVolume.showmodal;
  finally
    frmSyncVolume.Free;
  end;}
end;

// вывод изображений для всех товаров
procedure TfrmNomenclature.cb_picsPropertiesEditValueChanged(Sender: TObject);
begin
  gr_image.Visible := cb_pics.EditValue;
  gr_noms_vIS_PHOTO.Visible := not cb_pics.EditValue;
  if cb_pics.EditValue = true then
  begin
     gr_noms_v.OptionsView.CellAutoHeight := true;
     LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
  end
  else gr_noms_v.OptionsView.CellAutoHeight := false;
  gr_noms.SetFocus;
end;

//  Копирование номенклатуры
procedure TfrmNomenclature.ColoursAfterOpen(DataSet: TDataSet);
begin
  Colours.ParamByName('v_office').AsInteger := id_office;
end;

procedure TfrmNomenclature.CopyNExecute(Sender: TObject);
VAR
  N_ID, N_ID_OLD : Integer;
begin
{  NewD         := TNewD.Create(Application);
  try
    with StorProc do
    Begin
      N_ID_OLD := DictView.FieldByName('N_ID').AsInteger;
      StoredProcName := 'NOMENCLATURE_PKG.COPY_NOMENCLATURE';
      Prepare;
      ParamByName('N_ID_IN').Value := DictView.FieldByName('N_ID').Value;
      Execute;
      N_ID := ParamByName('N_ID_OUT').Value;
      DictView.Refresh;
      gr_noms_v.DataController.LocateByKey(n_id);
      //DM.DictView.Locate('N_ID',N_ID,[]);
    End;
    NewD.editing := true;
    NewD.N_ID_   := N_ID;

    // Если отменили копирование, то
    if NewD.ShowModal = mrCancel then
    begin
       DM.oraSession.Rollback;
       DictView.Refresh;
       gr_noms_v.DataController.LocateByKey(n_id_old);
       //DM.DictView.Locate('N_ID',N_ID_OLD,[]);
    end
    else
    begin
       DM.oraSession.Commit;
       DictView.Refresh;
       gr_noms_v.DataController.LocateByKey(n_id);
       //DM.DictView.Locate('N_ID',N_ID,[]);
    end;
    gr_noms.SetFocus;

  finally
    NewD.Free;
  end;     }
end;


procedure TfrmNomenclature.DictViewBeforeOpen(DataSet: TDataSet);
begin
 DictView.ParamByName('v_office').AsInteger := id_office;
end;

// Одинаковые артикулы
procedure TfrmNomenclature.dxBarButton21Click(Sender: TObject);
var filter_str : string;
begin
  with SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin nomenclature2_pkg.select_dublicate_hcode(:dep_, :cursor_); end;');
      ParamByName('dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('cursor_').DataType  := ftCursor;
      Open;

      if RecordCount > 0 then
      begin
        gr_noms_v.DataController.DataSet.Filtered := false;
        gr_noms_v.DataController.DataSet.Filter := '';
        first;
        while not Eof do
        begin
          filter_str := filter_str + 'h_code=''' + FieldByName('res').AsString + ''' or ';
          next;
        end;
        gr_noms_v.DataController.DataSet.Filter := copy(filter_str,0,length(filter_str)-3);
        gr_noms_v.DataController.DataSet.Filtered := true;
      end;
  End;
end;

// Одинаковые штрих-кода поставщика
procedure TfrmNomenclature.dxBarButton22Click(Sender: TObject);
var filter_str : string;
begin
  with SelQ do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin nomenclature2_pkg.select_dublicate_barcode(:dep_, :cursor_); end;');
      ParamByName('dep_').AsInteger := CUR_DEPT_ID;
      ParamByName('cursor_').DataType  := ftCursor;
      Open;

      if RecordCount > 0 then
      begin
        gr_noms_v.DataController.DataSet.Filtered := false;
        gr_noms_v.DataController.DataSet.Filter := '';
        first;
        while not Eof do
        begin
          filter_str := filter_str + 'bar_code=''' + FieldByName('res').AsString + ''' or ';
          next;
        end;
        gr_noms_v.DataController.DataSet.Filter := copy(filter_str,0,length(filter_str)-3);
        gr_noms_v.DataController.DataSet.Filtered := true;
      end;
  End;
end;

// Не заполнен код названия поставщика
procedure TfrmNomenclature.dxBarButton23Click(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'NAME_CODE is null';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;

// Требующие проверки позиции
procedure TfrmNomenclature.dxBarButton24Click(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'CHECKED = 0';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;

// Позиции, определенные под предзаказ на 8-е марта
procedure TfrmNomenclature.dxBarButton25Click(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'hs_val is not null';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;

procedure TfrmNomenclature.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть форму?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
    SaveFormState(frmNomenclature); //полож.окна
    frmNomenclature := nil;
    Action := caFree;
  end;
end;


procedure TfrmNomenclature.FormCreate(Sender: TObject);
var recUserRules : TUserRules;
begin
  //Application.CreateForm(Tfrmeditor, frmeditor);
  gr_Noms.Font.Size := intDefFont;

  // получение прав на программу
  recUserRules  := getRules(DM.cdsRules,2);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;
                                
  aNew.Enabled    := p_edit;
  aEdit.Enabled   := p_edit;
  aDelete.Enabled := p_delete;
end;


procedure TfrmNomenclature.FormShow(Sender: TObject);
var pass_, i : integer;
    RegIni : TIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
    newitem: Tmenuitem;
begin
  try
    //RegIni := TIniFile.Create(path+'DictionaryEditor.ini');
    def_folder := strPath+'\images\';//RegIni.ReadString('folder', 'Value', '..');


  //if (imgOffice.Enabled) then
  //begin
      try
        id_office := GetOfficeID;
        CUR_DEPT_ID := intDefDept;
       // CUR_DEPT_NAME := dm.CUR_DEPT_NAME;
      {  imgOffice.Enabled := (id_office = 1);
        imgOffice.Properties.OnChange := nil;
        selq.Close;
        selq.SQL.Clear;
        selq.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        selq.Open;
        SelQ.Close;
        imgOffice.EditValue := id_office; }
        aRefresh.Execute;//вывод в грид
      except
        on E: Exception do ShowMessage(E.Message);
      end;
  //end;

// ********************* Может это убрать? ******************************************
  {  pass_ := 1;
    with SelQ do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin admins.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(dm.OraSession.Username);
        ParamByName('cursor_').AsCursor;
        Open;
      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          pass_ := 0;
        end;
      end;
    End;

    if (SelQ.RecordCount = 0) then
    begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      pass_ := 0;
    end;

    if (pass_ = 1) then
    begin
      CUR_DEPT_ID   := NULL;
      CUR_DEPT_NAME := NULL;

      imgOtdel.Properties.OnChange := nil;
      FillImgComboCxItm(SelQ, imgOtdel, '');

      //frmNomenclature.Repaint;
      imgOtdel.EditValue := INPUT_DEPT_ID;
      CUR_DEPT_ID        := INPUT_DEPT_ID;
      CUR_DEPT_NAME      := imgOtdel.Properties.GetDisplayText(imgOtdel.EditValue,true);
      SPEC_SHOW          := true;

     // AStoreKey     := path + '/ini/'+dm.OraSession.Username+'_'+inttostr(CUR_DEPT_ID)+'.ini';
      ASaveViewName := 'nomenclature';
      AOptions := [];
      gr_noms_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

      for i := 0 to gr_noms_v.ColumnCount - 1 do
      begin
        if (gr_noms_v.Columns[i].Position.BandIndex > 0) and (gr_noms_v.Columns[i].Position.BandIndex < 3) then
        begin
          newitem := tmenuitem.create(nFields);
          newitem.caption := gr_noms_v.Columns[i].Caption;
          newitem.tag := i;
          newitem.Checked := gr_noms_v.Columns[i].Visible;
          newitem.OnClick := FildsShow;
          nFields.insert(nFields.count, newitem);
        end;
      end;


     // imgOtdel.Properties.OnChange := imgOtdelPropertiesChange;
     // gr_noms.SetFocus;
      imgOtdel.SetFocus;

     // это пока коменчу - надо разбираться - права теперь подругому задаюца
     // aGetRules.Execute;
     // и в этом Execute есть процы, которые я думаю надо убрать из проги

      gr_noms.SetFocus;
    end;
    // ********************* конец Может это убрать? ******************************************
     }
    gr_noms_vBRIEF.Visible := not (GetOfficeID = id_office);
    gr_noms.SetFocus;

         try
    //************************читаю чекбокс в перем.NOMSAIT********
          SelQ.Close;
          SelQ.SQL.Clear;
          SelQ.SQL.Add('SELECT REMOVE_FROM_SITE, NO_ORDER FROM nomenclature_site_marks');
          SelQ.Active := TRUE;
          NOMSAIT     := SelQ.FieldByName('REMOVE_FROM_SITE').AsString;
          NOMNOORDER  := SelQ.FieldByName('NO_ORDER').AsString;
          SelQ.Open;
          SelQ.Close;
     //***********************************************************
        except
        end;
            
  finally
  // RegIni.Free;
  end;
end;

procedure TfrmNomenclature.HColoursAfterOpen(DataSet: TDataSet);
begin
  HColours.ParamByName('v_office').AsInteger := id_office;
end;

function TfrmNomenclature.MainFormShow : boolean;
Begin
 if not Assigned(frmNomenclature) then
  begin
    frmNomenclature := TfrmNomenclature.Create(Application);
    try
      frmNomenclature.Show;
      LoadFormState(frmNomenclature); //полож.окна
    finally
      null;
    end;
  end
  else
   if (frmNomenclature.WindowState = wsMinimized) then frmNomenclature.WindowState := wsNormal;
end;



end.
