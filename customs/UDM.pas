unit UDM;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Ora, frxClass, frxDBSet, frxExportXLS,
  frxExportXML, frxExportBIFF, Variants, ComObj, Windows, Messages, Math, Dialogs;

type
  TDM = class(TDataModule)
    STAR_DB: TOraSession;
    SelQ: TOraQuery;
    InvoiceRegister: TOraQuery;
    InvoiceAsIs: TOraQuery;
    InvoiceRegister_DS: TDataSource;
    InvoiceAsIs_DS: TDataSource;
    CDS_FITO: TOraQuery;
    DS_FITO: TDataSource;
    CDS_FITOID: TIntegerField;
    CDS_FITONAME_ENG: TStringField;
    CDS_FITONAME_RU: TStringField;
    CDS_FITOID_DEP: TIntegerField;
    CDS_FITONAME_ENG_FULL: TStringField;
    OraStoredProc1: TOraStoredProc;
    CDS_NAMES: TOraQuery;
    DS_NAMES: TDataSource;
    frx_customs: TfrxReport;
    frx_inv_register: TfrxDBDataset;
    frx_selq: TfrxDBDataset;
    SelQ_ds: TDataSource;
    frxXLSExport1: TfrxXLSExport;
    CDS_WEIGHTS: TOraQuery;
    DS_WEIGHTS: TDataSource;
    CDS_WEIGHTSID: TIntegerField;
    CDS_WEIGHTSNAME_CAT: TStringField;
    CDS_WEIGHTSNAME_CAT_RU: TStringField;
    CDS_WEIGHTSSTEM_WEIGHT: TFloatField;
    CDS_WEIGHTSID_DEP: TIntegerField;
    CDS_WEIGHTSMAKE_INFO: TIntegerField;
    CDS_WEIGHTSCUST_REGN: TStringField;
    CDS_WEIGHTSORDERBY: TIntegerField;
    CDS_W_FORMULA: TOraQuery;
    DS_W_FORMULA: TDataSource;
    CDS_W_FORMULAID: TIntegerField;
    CDS_W_FORMULAID_W: TIntegerField;
    CDS_W_FORMULAFO_NAME: TStringField;
    CDS_W_FORMULAFO_FIELD: TIntegerField;
    CDS_W_FORMULAFO_RULE: TIntegerField;
    CDS_W_FORMULAFO_VALUE: TStringField;
    CDS_W_FORMULAV_WEIGHT: TFloatField;
    CDS_W_FORMULAORDERBY: TIntegerField;
    CDS_W_FORMULACOMPILED_STR: TStringField;
    cdsTMP: TOraQuery;
    dsTMP: TDataSource;
    InvoiceRegisterINV_ID: TFloatField;
    InvoiceRegisterINV_ID_: TFloatField;
    InvoiceRegisterINV_DATE: TDateTimeField;
    InvoiceRegisterCOMMENTS: TStringField;
    InvoiceRegisterINV_SUM: TFloatField;
    InvoiceRegisterSTATUS: TIntegerField;
    InvoiceRegisterID_DEPARTMENTS: TFloatField;
    InvoiceRegisterS_ID_DEFAULT: TFloatField;
    InvoiceRegisterC_ID_DEFAULT: TFloatField;
    InvoiceRegisterSUPPLIER_DATE: TDateTimeField;
    InvoiceRegisterSUPPLIER_NUMBER: TStringField;
    InvoiceRegisterTRUCK_DATE: TDateTimeField;
    InvoiceRegisterIN_FILE: TStringField;
    InvoiceRegisterIS_FILE: TFloatField;
    InvoiceRegisterFOLDER: TFloatField;
    InvoiceRegisterS_NAME_RU: TStringField;
    InvoiceRegisterQUANT: TFloatField;
    InvoiceRegisterSUMM: TFloatField;
    InvoiceRegisterD_CHECK: TFloatField;
    InvoiceRegisterIPP_ID: TIntegerField;
    InvoiceRegisterIPP_COMMENT: TStringField;
    CDS_NAMESFITO_ID: TFloatField;
    CDS_NAMESF_NAME: TStringField;
    CDS_NAMESFITO_NAME: TStringField;
    CDS_NAMESID_DEP: TIntegerField;
    CDS_NAMESNAME_CODE: TStringField;
    InvoiceAsIsINV_ID: TFloatField;
    InvoiceAsIsINVOICE_DATA_AS_IS_ID: TFloatField;
    InvoiceAsIsORDER_NUMBER: TFloatField;
    InvoiceAsIsHEIGHT: TIntegerField;
    InvoiceAsIsDIAMETR: TIntegerField;
    InvoiceAsIsTRUCKS: TStringField;
    InvoiceAsIsTITLE: TStringField;
    InvoiceAsIsPACKING_AMOUNT: TFloatField;
    InvoiceAsIsAMOUNT_IN_THE_PACK: TFloatField;
    InvoiceAsIsUNITS: TFloatField;
    InvoiceAsIsPACKING_MARKS: TStringField;
    InvoiceAsIsDESCRIPTION: TStringField;
    InvoiceAsIsHOL_COUNTRY: TStringField;
    InvoiceAsIsPRICE: TFloatField;
    InvoiceAsIsSUMM: TFloatField;
    InvoiceAsIsCOUNTY_RU: TStringField;
    InvoiceAsIsHOL_SUB_TYPE: TStringField;
    InvoiceAsIsRECOGNISED: TIntegerField;
    InvoiceAsIsDATE_IN: TDateTimeField;
    InvoiceAsIsTROLLEY: TIntegerField;
    InvoiceAsIsH_CODE: TStringField;
    InvoiceAsIsUPACK: TStringField;
    InvoiceAsIsSRC_TROLLEY: TStringField;
    InvoiceAsIsSRC_NAME: TStringField;
    InvoiceAsIsTROLLEY_CALC: TFloatField;
    InvoiceAsIsPD: TStringField;
    InvoiceAsIsPD_RU: TStringField;
    InvoiceAsIsID: TIntegerField;
    InvoiceAsIsFT_ID: TIntegerField;
    InvoiceAsIsSTEM_WEIGHT: TFloatField;
    InvoiceAsIsCUST_REGN: TStringField;
    InvoiceAsIsORDERBY: TFloatField;
    InvoiceAsIsF_TYPE: TStringField;
    InvoiceAsIsFN_ID: TFloatField;
    InvoiceAsIsF_NAME_RU: TStringField;
    InvoiceAsIsTYPE_DOP: TStringField;
    InvoiceAsIsID_DEP: TFloatField;
    InvoiceAsIsSPLIT_ROSE: TFloatField;
    CDS_WEIGHTSWEIGHT_PACK: TFloatField;
    CDS_WEIGHTSWEIGHT_TANK: TFloatField;
    frxXMLExport1: TfrxXMLExport;
    SelQ2: TOraQuery;
    SelQ2_ds: TDataSource;
    frx_selq2: TfrxDBDataset;
    InvoiceRegisterCOURCE: TFloatField;
    cds_custcoef: TOraQuery;
    ds_custcoef: TDataSource;
    cds_custcoefID: TIntegerField;
    cds_custcoefID_W: TIntegerField;
    cds_custcoefFS_COUNTRY_ID: TIntegerField;
    cds_custcoefFO_VALUE: TFloatField;
    cds_custcoefNAME_CAT_RU: TStringField;
    cds_custcoefCOUNTRY: TStringField;
    cds_custcoefNAME_CAT: TStringField;
    frx_selq3: TfrxDBDataset;
    SelQ3: TOraQuery;
    SelQ3_ds: TDataSource;
    frxBIFFExport1: TfrxBIFFExport;
    InvoiceAsIsREMARK: TStringField;
    cds_custcoefID_DEPARTMENTS: TIntegerField;
  private
    { Private declarations }
  public
    procedure raport_srez_phytoes(id_inv: integer; truck: integer; report_type: integer);
    procedure raport_srez_phytoes_part2(id_inv: integer; truck: integer; report_type: integer);
    procedure raport_gtd(id_inv: integer; truck: integer; report_type: integer);
    procedure raport_totallist(id_inv: integer; truck: integer; report_type: integer);
    { Public declarations }
  end;

var
  DM: TDM;


implementation

uses Globals;

{$R *.dfm}

//
// Формирование файла
// part1_tr%_Phytoes_for_cut_flowers.xls
// Страна;Подтип;Количество
//
procedure TDM.raport_srez_phytoes(id_inv: integer; truck: integer; report_type: integer);
var XL, XArr, WorkBook, Sheet: OLEVariant;
    j,j1,j2: integer;
    fileName: string;
    sum_u, sum_n, sum_b: real;
begin
  try
    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_group_stat(:V_ID_INV, :V_ID_DEP, :V_VID, :v_truck, :CURSOR_); end;');
      ParamByName('V_ID_INV').Value := id_inv;
      ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
      ParamByName('V_VID').Value := report_type;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part1_tr'+IntToStr(truck)+'_Phytoes_for_cut_flowers.xls';
    XArr := VarArrayCreate([1,3],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := 'Страна';
    XL.Range['B1','B1'].Value := 'Подтип';
    XL.Range['C1','C1'].Value := 'Количество';
    j := 2;

    XL.Range['A1','C1'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := FieldByName('hol_country').Value;
        XArr[2] := FieldByName('hol_sub_type').Value;
        XArr[3] := FieldByName('units').Value;
        XL.Range['A'+IntToStr(j),CHR(64+3)+IntToStr(j)].Value := XArr;
        sum_u := sum_u + FieldByName('units').AsInteger;
        sum_n := sum_n + FieldByName('netto').Asfloat;
        sum_b := sum_b + FieldByName('brutto').Asfloat;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Total pcs:';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_u;
    j := j + 1;

    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Total brutto:';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_b;
    j1:=j; //запомнил номер ячейки
    j := j + 1;

    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Total netto:';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_n;
    j2:=j; //запомнил номер ячейки

    XL.Range['A'+IntToStr(j-2),'C'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    // Часть вторая
    sum_u := 0;
    sum_n := 0;
    sum_b := 0;
    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_fito_raport_page1_1(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;
    j := j+2;

    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := 'Страна';
    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Количество';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := 'Нетто';
    XL.Range['A'+IntToStr(j),'C'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;
    j := j + 1;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := FieldByName('hol_country').Value;
        XArr[2] := FieldByName('units').Value;
        XArr[3] := FieldByName('netto').Value;
        XL.Range['A'+IntToStr(j),CHR(64+3)+IntToStr(j)].Value := XArr;
        sum_u := sum_u + FieldByName('units').AsInteger;
        sum_n := sum_n + FieldByName('netto').AsFloat;
        sum_b := sum_b + FieldByName('brutto').AsFloat;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := 'Total:';
    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := sum_u;
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_n;
    XL.Range['C'+IntToStr(j2),'C'+IntToStr(j2)].Value := sum_n;//перепишу нетто из верхней таблицы
    XL.Range['C'+IntToStr(j1),'C'+IntToStr(j1)].Value := sum_b; //перепишу брутто из верхней таблицы
    XL.Range['A'+IntToStr(j),'C'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+3)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+3)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    DM.SelQ.Close;
    DM.SelQ.IndexFieldNames := '';

  except
    on E: Exception do
    begin
      MessageBox(NULL, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      DM.SelQ.Close;
      DM.SelQ.IndexFieldNames := '';
    end;
  end;
end;


//
// Формирование файла
// part2_tr%_Phytoes_for_cut_flowers.xls
// ТН ВЭД;ТОВАР;КОЛИЧЕСТВО;СТРАНА ПРОИСХОЖДЕНИЯ
//
procedure TDM.raport_srez_phytoes_part2(id_inv: integer; truck: integer; report_type: integer);
var XL, XArr, WorkBook, Sheet: OLEVariant;
    j: integer;
    fileName: string;
    sum_u, sum_n, sum_b: real;
begin
  try
    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_group_stat(:V_ID_INV, :V_ID_DEP, :V_VID, :v_truck, :CURSOR_); end;');
      ParamByName('V_ID_INV').Value := id_inv;
      ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
      ParamByName('V_VID').Value := report_type;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part2_tr'+IntToStr(truck)+'_Phytoes_for_cut_flowers.xls';
    XArr := VarArrayCreate([1,4],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := 'ТН ВЭД';
    XL.Range['B1','B1'].Value := 'ТОВАР';
    XL.Range['C1','C1'].Value := 'КОЛИЧЕСТВО';
    XL.Range['D1','D1'].Value := 'СТРАНА ПРОИСХОЖДЕНИЯ';
    j := 2;

    XL.Range['A1','D1'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := FieldByName('CUST_REGN').Value;
        XArr[2] := FieldByName('akt_category').Value;
        XArr[3] := FieldByName('units').Value;
        XArr[4] := FieldByName('cntr').Value;
        XL.Range['A'+IntToStr(j),CHR(64+4)+IntToStr(j)].Value := XArr;
        sum_u := sum_u + FieldByName('units').AsInteger;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := 'Total rows: '+IntToStr(j-2);
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_u;
    XL.Range['A'+IntToStr(j),'D'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+4)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+4)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    DM.SelQ.Close;
    DM.SelQ.IndexFieldNames := '';

  except
    on E: Exception do
    begin
      DM.SelQ.Close;
      DM.SelQ.IndexFieldNames := '';
    end;
  end;
end;


//
// Формирование 3х файлов
// part3_%_gtd_f1.xls
// № п/п;Код ТН ВЭД;Наименование товара;ОБЩЕЕ Количество ШТУК;БАКИ;КОРОБКИ;ОБЩЕЕ Количество мест;Вес брутто, кг;Вес нетто, кг;Цена (ЕВРО);КОЛ-ВО ТЕЛЕЖЕК, 1 ТЕЛ. 94 КГ;КОЛ-ВО ПОДДОНОВ, 1 ПОДДОН - 20 КГ
// part3_%_gtd_f2.xls
// № п/п;Код ТН ВЭД;Наименование товара;Сорта
// part3_%_gtd_f3.xls
// РОСТ 40 СМ;40;шт.
//
procedure TDM.raport_gtd(id_inv: integer; truck: integer; report_type: integer);
var XL, XL2, XArr, WorkBook, Sheet: OLEVariant;
    j, k: integer;
    fileName, cur_rule_name, ss: string;
    sum_4, sum_5, sum_6, sum_7, sum_8, sum_9, sum_10, sum_11, sum_12: real;
    S : TStringlist;
    i, i1, i2, suma, j1 :integer;
begin
  try
    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_fito_raport_page1(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_id_dep').Value := CUR_DEPT_ID;
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part3_'+IntToStr(truck)+'_gtd_f1.xls';
    XArr := VarArrayCreate([1,12],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := '№ п/п';
    XL.Range['B1','B1'].Value := 'Код ТН ВЭД';
    XL.Range['C1','C1'].Value := 'Наименование товара';
    XL.Range['D1','D1'].Value := 'ОБЩЕЕ Количество ШТУК';
    XL.Range['E1','E1'].Value := 'БАКИ';
    XL.Range['F1','F1'].Value := 'КОРОБКИ';
    XL.Range['G1','G1'].Value := 'ОБЩЕЕ Количество мест';
    XL.Range['H1','H1'].Value := 'Вес брутто, кг';
    XL.Range['I1','I1'].Value := 'Вес нетто, кг';
    XL.Range['J1','J1'].Value := 'Цена (ЕВРО)';
    XL.Range['K1','K1'].Value := 'КОЛ-ВО ТЕЛЕЖЕК, 1 ТЕЛ. 94 КГ';
    XL.Range['L1','L1'].Value := 'КОЛ-ВО ПОДДОНОВ, 1 ПОДДОН - 20 КГ';

    XL.Range['A2','A2'].Value := '1';
    XL.Range['B2','B2'].Value := '7';
    XL.Range['C2','C2'].Value := '2';
    XL.Range['D2','D2'].Value := '';
    XL.Range['E2','E2'].Value := '';
    XL.Range['F2','F2'].Value := '3';
    XL.Range['G2','G2'].Value := '';
    XL.Range['H2','H2'].Value := '5';
    XL.Range['I2','I2'].Value := '6';
    XL.Range['J2','J2'].Value := '8';
    XL.Range['K2','K2'].Value := '';
    XL.Range['L2','L2'].Value := '';

    j := 3;
    XL.Range['A1','L2'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := j-2;
        XArr[2] := FieldByName('CUST_REGN').Value;
        XArr[3] := FieldByName('comp_name').Value;
        XArr[4] := FieldByName('units').Value;
        XArr[5] := FieldByName('sideboards').Value;
        XArr[6] := FieldByName('packs').Value;
        XArr[7] := FieldByName('sideboards').Value + FieldByName('packs').Value;
        XArr[8] := FieldByName('brutto').Value;
        XArr[9] := FieldByName('netto').Value;
        XArr[10] := FieldByName('summ').Value;
        XArr[11] := FieldByName('telega').Value;
        XArr[12] := FieldByName('poddon').Value;
        XL.Range['A'+IntToStr(j),CHR(64+12)+IntToStr(j)].Value := XArr;
        sum_4  := sum_4 + FieldByName('units').AsInteger;
        sum_5  := sum_5 + FieldByName('sideboards').AsInteger;
        sum_6  := sum_6 + FieldByName('packs').AsInteger;
        sum_7  := sum_7 + FieldByName('sideboards').AsInteger+FieldByName('packs').AsInteger;
        sum_8  := sum_8 + FieldByName('brutto').AsInteger;
        sum_9  := sum_9 + FieldByName('netto').AsInteger;
        sum_10 := sum_10 + FieldByName('summ').AsInteger;
        sum_11 := sum_11 + FieldByName('telega').AsInteger;
        sum_12 := sum_12 + FieldByName('poddon').AsInteger;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := '';
    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := '';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := 'Итого: ';
    XL.Range['D'+IntToStr(j),'D'+IntToStr(j)].Value := sum_4;
    XL.Range['E'+IntToStr(j),'E'+IntToStr(j)].Value := sum_5;
    XL.Range['F'+IntToStr(j),'F'+IntToStr(j)].Value := sum_6;
    XL.Range['G'+IntToStr(j),'G'+IntToStr(j)].Value := sum_7;
    XL.Range['H'+IntToStr(j),'H'+IntToStr(j)].Value := sum_8;
    XL.Range['I'+IntToStr(j),'I'+IntToStr(j)].Value := sum_9;
    XL.Range['J'+IntToStr(j),'J'+IntToStr(j)].Value := sum_10;
    XL.Range['K'+IntToStr(j),'K'+IntToStr(j)].Value := sum_11;
    XL.Range['L'+IntToStr(j),'L'+IntToStr(j)].Value := sum_12;

    XL.Range['A'+IntToStr(j),'L'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+12)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+12)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    ////////////////////////////////////////////////////////////////////////////////

    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_fito_raport_page2(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_id_dep').Value := CUR_DEPT_ID;
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part3_'+IntToStr(truck)+'_gtd_f2.xls';

    XL.WorkBooks.Add;
    XArr := VarArrayCreate([1,4],varVariant);
    XL.Range['A1','A1'].Value := '№ п/п';
    XL.Range['B1','B1'].Value := 'Код ТН ВЭД';
    XL.Range['C1','C1'].Value := 'Наименование товара';
    XL.Range['D1','D1'].Value := 'Сорта';
    XL.Range['A2','A2'].Value := '1';
    XL.Range['B2','B2'].Value := '7';
    XL.Range['C2','C2'].Value := '2';
    XL.Range['D2','D2'].Value := '';

    j := 3;

    XL.Range['A1','D2'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := j-2;
        XArr[2] := FieldByName('CUST_REGN').Value;
        XArr[3] := FieldByName('comp_name').Value;
        XArr[4] := FieldByName('fito_names').Value;
        XL.Range['A'+IntToStr(j),CHR(64+4)+IntToStr(j)].Value := XArr;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['A1',CHR(64+4)+IntToStr(j-1)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+4)+IntToStr(j-1)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    ////////////////////////////////////////////////////////////////////////////////

    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_fito_raport_page3(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_id_dep').Value := CUR_DEPT_ID;
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part3_'+IntToStr(truck)+'_gtd_f3.xls';

    XL.WorkBooks.Add;
    XArr := VarArrayCreate([1,4],varVariant);
    j := 1;
    k := 1;
    sum_4 := 0;
    
    cur_rule_name := '';
    with DM.SelQ do
    begin
      while not Eof do
      begin
        if (cur_rule_name <> FieldByName('compile_rule_name').AsString) then
        begin
          XArr[1] := k;
          XArr[2] := FieldByName('rule_name').Value + ' ' + FieldByName('fo_rule_name').Value;
          XArr[3] := '';
          XL.Range['A'+IntToStr(j),CHR(64+4)+IntToStr(j)].Value := XArr;
          XL.Range['A'+IntToStr(j),CHR(64+4)+IntToStr(j)].select;
          XL.Selection.Font.Bold := true;
          cur_rule_name := FieldByName('compile_rule_name').AsString;
          k := k + 1;
          j := j + 1;
        end;
        XArr[1] := '';
        XArr[2] := FieldByName('logo_name').Value;
        XArr[3] := FieldByName('units').Value;
        XArr[4] := 'шт.';
        XL.Range['A'+IntToStr(j),CHR(64+4)+IntToStr(j)].Value := XArr;
        sum_4  := sum_4 + FieldByName('units').AsInteger;
        Next;
        j := j + 1;
      end;
    end;

    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := '';
    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Итого: ';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_4;
    XL.Range['D'+IntToStr(j),'D'+IntToStr(j)].Value := 'шт.';

    XL.Range['A'+IntToStr(j),'D'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+4)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+4)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    ////////////////////////////////////////////////////////////////////////////////

    DM.SelQ.Close;
    DM.SelQ.IndexFieldNames := '';

  except
    on E: Exception do
    begin
      DM.SelQ.Close;
      DM.SelQ.IndexFieldNames := '';
    end;
  end;
end;


//
// Формирование файла
// part4_tr%_G Van Dijk im & export b.v._f1.xls
// ТН ВЭД;ТОВАР;КОЛИЧЕСТВО;СТРАНА ПРОИСХОЖДЕНИЯ
// part4_tr%_G Van Dijk im & export b.v._f2.xls
// Name;Code;Units;Amount;Netto weight;Brutto weight
// part5_tr%_G Van Dijk im & export b.v._f1.xls
// Code;Group;Country;Units;pcs
//
procedure TDM.raport_totallist(id_inv: integer; truck: integer; report_type: integer);
var XL, XArr, WorkBook, Sheet: OLEVariant;
    j, total_packs: integer;
    fileName: string;
    sum_u,sum_u1, sum_n,sum_n1, sum_b,sum_b1, sum_a,sum_a1: real;    st:tstringlist;
    dub2,dub1:string;
begin
  try
    total_packs := 0;
    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('select sum(PACKING_AMOUNT) as cnt from (select distinct SRC_TROLLEY, PACKING_AMOUNT from customs_inv_data_as_is where INV_ID = :v_inv_id and trucks = :v_truck)');
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('v_truck').Value  := truck;
      Open;
      total_packs := Fields[0].AsInteger;
      Close;
    end;

    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_suplier_list(:v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part4_tr'+IntToStr(truck)+'_'+VarToStr(DM.InvoiceRegisterS_NAME_RU.Value)+'_f1.xls';
    XArr := VarArrayCreate([1,10],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := 'Boxes';
    XL.Range['B1','B1'].Value := 'Packing';
    XL.Range['B1:D1'].Merge;
    XL.Range['E1','E1'].Value := 'Box';
    XL.Range['F1','F1'].Value := 'Q-ty';
    XL.Range['G1','G1'].Value := 'Item';
    XL.Range['H1','H1'].Value := 'Price';
    XL.Range['I1','I1'].Value := 'Total';
    XL.Range['J1','J1'].Value := 'Country';
    j := 2;

    XL.columns[1].NumberFormat := '@'; // текстовый формат
    XL.Range['A1','J1'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      while not Eof do
      begin
        XArr[1] := FieldByName('PACKING_MARKS').AsString;
        XArr[2] := FieldByName('PACKING_AMOUNT').Value;
        XArr[3] := 'x';
        XArr[4] := FieldByName('AMOUNT_IN_THE_PACK').Value;
        XArr[5] := FieldByName('box').Value;
        XArr[6] := FieldByName('units').Value;
        XArr[7] := FieldByName('DESCRIPTION').Value;
        XArr[8] := FieldByName('price').Value;
        XArr[9] := FieldByName('SUMM').Value;
        XArr[10] := FieldByName('mnemo').Value;
        XL.Range['A'+IntToStr(j),CHR(64+10)+IntToStr(j)].Value := XArr;
        sum_u := sum_u + FieldByName('units').AsInteger;
        sum_n := sum_n + FieldByName('SUMM').AsCurrency;
        Next;
        j := j + 1;
      end;
    end;

    //***************** ИСКЛЮЧАЮ ПОВТОРЫ ДЛЯ ПРАВИЛЬНОГО СЧЕТА КОЛ-ВА ********************
    XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value :='Total rows: '+ inttostr(total_packs);
    //*************************************

    //XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := 'Total rows: '+IntToStr(j-2);
    XL.Range['F'+IntToStr(j),'F'+IntToStr(j)].Value := sum_u;
    XL.Range['I'+IntToStr(j),'I'+IntToStr(j)].Value := sum_n;
    XL.Range['A'+IntToStr(j),'J'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+10)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+10)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;


    ////////////////////////////////////////////////////////////////////////////////


    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_fito_raport_page1(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    sum_u := 0;
    sum_n := 0;
    sum_b := 0;
    sum_a := 0;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part4_tr'+IntToStr(truck)+'_'+VarToStr(DM.InvoiceRegisterS_NAME_RU.Value)+'_f2.xls';
    XArr := VarArrayCreate([1,6],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := 'Name';
    XL.Range['B1','B1'].Value := 'Code';
    XL.Range['C1','C1'].Value := 'Units';
    XL.Range['D1','D1'].Value := 'Amount';
    XL.Range['E1','E1'].Value := 'Netto weight';
    XL.Range['F1','F1'].Value := 'Brutto weight';
    j := 2;
    XL.Range['A1','F1'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
      sum_n1:=0; dub1:= '1';  dub2:= '1';
      while not Eof do
      begin
        sum_u1 := sum_u1 + FieldByName('units').asinteger;
       // sum_a1 := sum_a1 + simpleroundto((FieldByName('SUMM').value/FieldByName('netto').value)*1.13,-2);
        sum_a1 := sum_a1 + FieldByName('SUMM').ascurrency;
        sum_n1 := sum_n1 + FieldByName('netto').asinteger;
        sum_b1 := sum_b1 + FieldByName('brutto').asinteger;

        XArr[1] := FieldByName('NAME_CAT').Value;
        XArr[2] := FieldByName('CUST_REGN').Value;
        XArr[3] := sum_u1;//FieldByName('units').Value;
        XArr[4] := sum_a1;//FieldByName('SUMM').Value;
        XArr[5] := sum_n1; //FieldByName('netto').Value;
        XArr[6] := sum_b1;//FieldByName('brutto').Value;

        XL.Range['A'+IntToStr(j),CHR(64+6)+IntToStr(j)].Value := XArr;

        sum_u := sum_u + FieldByName('units').asinteger;
        sum_a := sum_a + FieldByName('SUMM').ascurrency;
        sum_n := sum_n + FieldByName('netto').asinteger;
        sum_b := sum_b + FieldByName('brutto').asinteger;

        dub1:= FieldByName('NAME_CAT').Value;
        Next;
        dub2:= FieldByName('NAME_CAT').Value;

        if dub1<>dub2  then begin
         j := j + 1;
         sum_n1:=0; sum_b1:=0; sum_a1:=0; sum_u1:=0;
        end;

        if eof then j := j + 1;
      end;
    end;

    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Total cut flowers: ';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_u;
    XL.Range['D'+IntToStr(j),'D'+IntToStr(j)].Value := sum_a;
    XL.Range['E'+IntToStr(j),'E'+IntToStr(j)].Value := sum_n;
    XL.Range['F'+IntToStr(j),'F'+IntToStr(j)].Value := sum_b;
    XL.Range['A'+IntToStr(j),'F'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+6)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+6)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;


    //////////////////////////////////////////////////////////////////////////


    with DM.SelQ do
    begin
      Close;
      IndexFieldNames := '';
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_suplier_list2(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
      ParamByName('v_inv_id').Value := id_inv;
      ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
      ParamByName('v_truck').Value := truck;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount = 0 then exit;

    sum_u := 0;

    fileName    := ProgPath+ '\OUT\'+IntToStr(id_inv)+'\part5_tr'+IntToStr(truck)+'_'+VarToStr(DM.InvoiceRegisterS_NAME_RU.Value)+'_f1.xls';
    XArr := VarArrayCreate([1,5],varVariant);
    XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
    XL.WorkBooks.Add;

    XL.Range['A1','A1'].Value := 'Code';
    XL.Range['B1','B1'].Value := 'Group';
    XL.Range['C1','C1'].Value := 'Country';
    XL.Range['D1','D1'].Value := 'Units';
    XL.Range['E1','E1'].Value := 'pcs';

    j := 2;
    XL.Range['A1','E1'].select;
    XL.Selection.Font.Bold := true;

    with DM.SelQ do
    begin
     // dub1:= '1';  dub2:= '1';
      while not Eof do
      begin
        XArr[1] := FieldByName('CUST_REGN').Value;
        XArr[2] := FieldByName('NAME_CAT').Value;
        XArr[3] := FieldByName('MNEMO').Value;
        XArr[4] := FieldByName('units').Value;//sum_u;
        XArr[5] := 'pcs';

        XL.Range['A'+IntToStr(j),CHR(64+5)+IntToStr(j)].Value := XArr;

        sum_u := sum_u + FieldByName('units').asinteger;

        Next;
        j := j + 1;
      end;
    end;

    XL.Range['B'+IntToStr(j),'B'+IntToStr(j)].Value := 'Total: ';
    XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := sum_u;
    XL.Range['D'+IntToStr(j),'D'+IntToStr(j)].Value := '';
    XL.Range['E'+IntToStr(j),'E'+IntToStr(j)].Value := '';
    XL.Range['A'+IntToStr(j),'E'+IntToStr(j)].select;
    XL.Selection.Font.Bold := true;

    XL.Range['A1',CHR(64+5)+IntToStr(j)].select;
    XL.Selection.Font.Name:='Arial';
    XL.Selection.Font.Size:=10;
    XL.selection.Columns.AutoFit;
    XL.Range['A1',CHR(64+5)+IntToStr(j)].Borders.LineStyle := $00000002;

    try
      XL.Workbooks[1].SaveAs(filename);
    except
      XL.Quit;
    end;
    XL.Quit;

    //////////////////////////////////////////////////////////////////////////



    //////////////////////////////////////////////////////////////////////////
    DM.SelQ.Close;
    DM.SelQ.IndexFieldNames := '';

  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      DM.SelQ.Close;
      DM.SelQ.IndexFieldNames := '';
    end;
  end;
end;




end.
