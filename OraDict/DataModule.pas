unit DataModule;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS, Dialogs, Windows, PI_library_reg,
  frxExportCSV, frxExportRTF, frxClass, frxExportXLS, frxDBSet, frxBarcode;

type
  TDM = class(TDataModule)
    SelectSession: TOraSession;
    DictView: TOraQuery;
    DictView_DS: TDataSource;
    FlowerNames: TOraQuery;
    FlowerNames_DS: TDataSource;
    Countries: TOraQuery;
    Countries_DS: TDataSource;
    Suppliers: TOraQuery;
    Suppliers_DS: TDataSource;
    FlowerTypes: TOraQuery;
    FlowerTypes_DS: TDataSource;
    FlowerSubTypes: TOraQuery;
    FlowerSubTypes_DS: TDataSource;
    Colours: TOraQuery;
    Colours_DS: TDataSource;
    SelQ: TOraQuery;
    CountriesC_ID: TIntegerField;
    CountriesCOUNTRY: TStringField;
    SuppliersS_ID: TFloatField;
    SuppliersS_NAME_RU: TStringField;
    FlowerTypesFT_ID: TFloatField;
    FlowerTypesF_TYPE: TStringField;
    FlowerTypesFT_MASK: TStringField;
    FlowerSubTypesFST_ID: TFloatField;
    FlowerSubTypesF_SUB_TYPE: TStringField;
    FlowerSubTypesFT_ID: TFloatField;
    FlowerSubTypesHOL_SUB_TYPE: TStringField;
    HolSpec: TOraQuery;
    HolSpec_DS: TOraDataSource;
    HolSpecHS_ID: TFloatField;
    HolSpecSPEC_CODE: TStringField;
    HolSpecSPEC_NAME: TStringField;
    HolSpecSPEC_HOL_NAME: TStringField;
    HolSpecADDITION: TStringField;
    NomSpec: TOraQuery;
    NomSpec_DS: TOraDataSource;
    NomSpecSPEC_CODE: TStringField;
    NomSpecHS_VAL: TStringField;
    NomSpecCONTENT_RUS: TStringField;
    NomSpecHS_ID: TFloatField;
    HolSpecRUSSIAN_ADDITION: TStringField;
    HolSpecNEED_TRANSLATION: TIntegerField;
    SpecContent: TOraQuery;
    SpecContent_DS: TOraDataSource;
    SpecContentSC_ID: TFloatField;
    SpecContentHS_ID: TFloatField;
    SpecContentCONTENT_HOL: TStringField;
    SpecContentCONTENT_RUS: TStringField;
    FlowerTypesHT_ID: TFloatField;
    FlowerTypesHOL_TYPE: TStringField;
    StorProc: TOraStoredProc;
    SuppliersC_ID: TFloatField;
    SuppliersNEED_CUST: TIntegerField;
    SuppliersCOUNTRY: TStringField;
    NomSpecSPEC_NAME: TStringField;
    HColours: TOraQuery;
    HColours_DS: TOraDataSource;
    HColoursH_COL_ID: TFloatField;
    HColoursCOL_ID: TFloatField;
    HColoursHOL_COLOUR: TStringField;
    ColoursCOL_ID: TFloatField;
    ColoursCOLOUR: TStringField;
    FlowerNameTranslations: TOraQuery;
    FlowerNameTranslations_DS: TOraDataSource;
    SaveDialog: TSaveDialog;
    CountriesNN: TFloatField;
    SuppliersNN: TFloatField;
    FlowerTypesNN: TFloatField;
    FlowerSubTypesNN: TFloatField;
    ColoursNN: TFloatField;
    HolSpecNN: TFloatField;
    FlowerSubTypesMNEMO: TStringField;
    FlowerSubTypesSUB_WEIGHT: TFloatField;
    HolSpecTT: TFloatField;
    FlowerTypesCNT: TFloatField;
    CountriesCOUNTRY_ENG: TStringField;
    FlowerNames_OLD: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FlowerNamesFN_ID: TFloatField;
    FlowerNamesF_NAME_RU: TStringField;
    FlowerNamesCNT: TFloatField;
    FlowerNamesID_DEPARTMENTS: TFloatField;
    FlowerNamesCNT_NOMS: TFloatField;
    FlowerNameTranslations_OLD: TOraQuery;
    FloatField4: TFloatField;
    StringField3: TStringField;
    FloatField5: TFloatField;
    IntegerField1: TIntegerField;
    FloatField6: TFloatField;
    FNameTransLink: TOraQuery;
    FNameTransLink_DS: TOraDataSource;
    FlowerNameTranslationsFN_ID: TFloatField;
    FlowerNameTranslationsF_NAME: TStringField;
    FlowerNameTranslationsNAME_CODE: TStringField;
    FlowerNameTranslationsID_DEPARTMENTS: TFloatField;
    FlowerNameTranslationsFNT_ID: TFloatField;
    FlowerNameTranslationsREMARKS: TStringField;
    FNameTransLinkFN_ID: TFloatField;
    FNameTransLinkF_NAME: TStringField;
    FNameTransLinkNAME_CODE: TStringField;
    FNameTransLinkID_DEPARTMENTS: TFloatField;
    FNameTransLinkFNT_ID: TFloatField;
    FNameTransLinkREMARKS: TStringField;
    SuppliersID_OFFICE: TIntegerField;
    FlowerNamesID_OFFICE: TIntegerField;
    FNameTransLinkID_OFFICE: TIntegerField;
    FlowerNameTranslationsID_OFFICE: TIntegerField;
    FlowerTypesID_OFFICE: TIntegerField;
    FlowerSubTypesF_TYPE: TStringField;
    FlowerSubTypesDOUBLE_NAME: TStringField;
    FlowerSubTypesHT_ID: TFloatField;
    FlowerSubTypesHOL_TYPE: TStringField;
    FlowerSubTypesID_OFFICE: TIntegerField;
    ColoursID_OFFICE: TIntegerField;
    HColoursID_OFFICE: TIntegerField;
    FlowerSubTypesPRICE_PREFIX: TStringField;
    FlowerSubTypesTNVED: TStringField;
    repDict: TfrxReport;
    frxDictView: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    FlowerNameTranslationsF_NAME_RU: TStringField;
    cds_def_pack: TOraQuery;
    ds_def_pack: TOraDataSource;
    cds_def_packQUANTITY: TIntegerField;
    cds_def_packHOL_TYPE: TIntegerField;
    cds_def_packHOL_SUBTYPE: TStringField;
    CountriesMNEMO: TStringField;
    cds_units: TOraQuery;
    ds_units: TOraDataSource;
    cds_unitsNSI_UNITS_ID: TFloatField;
    cds_unitsUNIT_CODE: TIntegerField;
    cds_unitsNSI_NAME: TStringField;
    cds_unitsSYMBOL_NATIONAL: TStringField;
    cds_unitsSYMBOL_INTERNATIONAL: TStringField;
    cds_unitsCODE_LETTERING_NATIONAL: TStringField;
    cds_unitsCODE_LETTERING_INTERNATIONAL: TStringField;
    SuppliersANALYZE_DAYS: TIntegerField;
    frxSelPrntPreview: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    NomSpecORD: TFloatField;
    NomSpecSC_ID: TFloatField;
    CountriesBUH_CODE: TStringField;
    FlowerSubTypesSUB_WEIGHT_DRY: TFloatField;
    SuppliersIS_ACTIVE: TFloatField;
    FlowerSubTypesCNT: TFloatField;
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
    DictViewNO_ORDER: TIntegerField;
    procedure FlowerNamesAfterPost(DataSet: TDataSet);
    procedure DictViewBeforeOpen(DataSet: TDataSet);
    procedure FlowerNamesAfterOpen(DataSet: TDataSet);
    procedure FNameTransLinkAfterOpen(DataSet: TDataSet);
    procedure FlowerNameTranslationsAfterPost(DataSet: TDataSet);
    procedure SuppliersAfterOpen(DataSet: TDataSet);
    procedure FlowerTypesAfterOpen(DataSet: TDataSet);
    procedure FlowerSubTypesAfterOpen(DataSet: TDataSet);
    procedure ColoursAfterOpen(DataSet: TDataSet);
    procedure HColoursAfterOpen(DataSet: TDataSet);
    procedure FlowerNamesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    id_office : integer;
    { Public declarations }
  end;

var
  DM: TDM;
  err_code: integer;
  err_msg: string;
  v_FN_ID, v_ID_DEPARTMENTS: integer;
  v_F_NAME_RU: string;

implementation

{$R *.dfm}

procedure TDM.DictViewBeforeOpen(DataSet: TDataSet);
begin
  DictView.ParamByName('v_office').AsInteger := id_office;
end;



procedure TDM.FlowerNamesAfterPost(DataSet: TDataSet);
begin
//  EditRusName(StorProc, FlowerNames, FlowerNamesFN_ID.AsInteger, FlowerNamesF_NAME_RU.AsString, FlowerNamesID_DEPARTMENTS.AsInteger);
  EditRusName(StorProc, FlowerNames, v_FN_ID, v_F_NAME_RU, v_ID_DEPARTMENTS);
  v_FN_ID := 0;
  v_F_NAME_RU := '';
  v_ID_DEPARTMENTS := 0;
end;

procedure TDM.FlowerNamesBeforePost(DataSet: TDataSet);
begin
  v_FN_ID := FlowerNamesFN_ID.AsInteger;
  v_F_NAME_RU := FlowerNamesF_NAME_RU.AsString;
  v_ID_DEPARTMENTS := FlowerNamesID_DEPARTMENTS.AsInteger;
end;






procedure TDM.FlowerNameTranslationsAfterPost(DataSet: TDataSet);
begin
  FlowerNameTranslations.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.FlowerSubTypesAfterOpen(DataSet: TDataSet);
begin
  FlowerSubTypes.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.FlowerTypesAfterOpen(DataSet: TDataSet);
begin
  FlowerTypes.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.FNameTransLinkAfterOpen(DataSet: TDataSet);
begin
  FNameTransLink.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.HColoursAfterOpen(DataSet: TDataSet);
begin
  HColours.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.SuppliersAfterOpen(DataSet: TDataSet);
begin
  Suppliers.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.FlowerNamesAfterOpen(DataSet: TDataSet);
begin
  FlowerNames.ParamByName('v_office').AsInteger := id_office;
end;

procedure TDM.ColoursAfterOpen(DataSet: TDataSet);
begin
  Colours.ParamByName('v_office').AsInteger := id_office;
end;

end.
