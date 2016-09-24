unit Ucustoms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PI_Library, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, StdCtrls, ExtCtrls,
  dxBarExtItems, dxDockControl, dxDockPanel, ImgList, dxBar, cxClasses, ActnList,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxCalendar, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLabel, cxSplitter,
  cxCurrencyEdit, ShellAPI, cxGridExportLink, cxBarEditItem, IniFiles, ComObj,
  cxCheckBox, frxClass, cxProgressBar;

type
  TfrmCustoms = class(TForm)
    bdc_customs: TdxBarDockControl;
    aCustoms: TActionList;
    aRefresh: TAction;
    aClear: TAction;
    bm_main: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_otchet: TdxBarLargeButton;
    btn_invoices: TdxBarLargeButton;
    btn_settings: TdxBarLargeButton;
    btn_excel: TdxBarLargeButton;
    img_32: TcxImageList;
    img_24: TcxImageList;
    img_16: TcxImageList;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    pnl_otdel: TPanel;
    Label1: TLabel;
    imgOtdel: TcxImageComboBox;
    bpm_incoices: TdxBarPopupMenu;
    bb_newinvoice: TdxBarButton;
    bb_recogniser: TdxBarButton;
    bb_delete: TdxBarButton;
    Panel1: TPanel;
    dxBarLargeButton1: TdxBarLargeButton;
    cxLabel1: TcxLabel;
    grid_invoices: TcxGrid;
    grid_invoices_v: TcxGridDBTableView;
    INV_ID: TcxGridDBColumn;
    INV_DATE: TcxGridDBColumn;
    grid_invoices_vS_NAME_RU: TcxGridDBColumn;
    SUPPLIER_DATE: TcxGridDBColumn;
    SUPPLIER_NUMBER: TcxGridDBColumn;
    COMMENTS: TcxGridDBColumn;
    grid_invoices_vS_ID_DEFAULT: TcxGridDBColumn;
    grid_invoices_vC_ID_DEFAULT: TcxGridDBColumn;
    grid_invoices_vINV_ID_: TcxGridDBColumn;
    grid_invoices_l: TcxGridLevel;
    grid_invoices_vINV_SUM: TcxGridDBColumn;
    grid_invoices_vSTATUS: TcxGridDBColumn;
    grid_invoices_vID_DEPARTMENTS: TcxGridDBColumn;
    grid_invoices_vQUANT: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    gr_data: TcxGrid;
    view_asis: TcxGridDBTableView;
    level_asis: TcxGridLevel;
    view_asisINV_ID: TcxGridDBColumn;
    view_asisINVOICE_DATA_AS_IS_ID: TcxGridDBColumn;
    view_asisORDER_NUMBER: TcxGridDBColumn;
    view_asisORDER_MARKNAME: TcxGridDBColumn;
    view_asisTRUCS: TcxGridDBColumn;
    view_asisPACKING_CODE: TcxGridDBColumn;
    view_asisPACKING_AMOUNT: TcxGridDBColumn;
    view_asisAMOUNT_IN_THE_PACK: TcxGridDBColumn;
    view_asisUNITS: TcxGridDBColumn;
    view_asisPACKING_MARKS: TcxGridDBColumn;
    view_asisDESCRIPTION: TcxGridDBColumn;
    view_asisHOL_COUNTRY: TcxGridDBColumn;
    view_asisHOL_SUB_TYPE: TcxGridDBColumn;
    view_asisRECOGNISED: TcxGridDBColumn;
    view_asisDATE_IN: TcxGridDBColumn;
    view_asisPD: TcxGridDBColumn;
    bdc_footer: TdxBarDockControl;
    bm_mainBar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_bed: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    view_asisCOUNTY_RU: TcxGridDBColumn;
    view_asisPD_RU: TcxGridDBColumn;
    view_asisID: TcxGridDBColumn;
    view_asisFT_ID: TcxGridDBColumn;
    view_asisF_TYPE: TcxGridDBColumn;
    st_editable: TcxStyle;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    view_asisTROLLEY: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    aNew: TAction;
    aDel: TAction;
    aFile: TAction;
    grid_invoices_vSUMM: TcxGridDBColumn;
    grid_invoices_vIN_FILE: TcxGridDBColumn;
    grid_invoices_vIS_FILE: TcxGridDBColumn;
    bc_fontsize: TcxBarEditItem;
    view_asisHEIGHT: TcxGridDBColumn;
    view_asisDIAMETR: TcxGridDBColumn;
    view_asisTITLE: TcxGridDBColumn;
    view_asisPRICE: TcxGridDBColumn;
    view_asisSUMM: TcxGridDBColumn;
    grid_invoices_vFOLDER: TcxGridDBColumn;
    bb_end: TdxBarButton;
    st_lock: TcxStyle;
    btn_help: TdxBarLargeButton;
    grid_invoices_vTRUCK_DATE: TcxGridDBColumn;
    view_asisFN_ID: TcxGridDBColumn;
    view_asisF_NAME_RU: TcxGridDBColumn;
    view_asisID_DEP: TcxGridDBColumn;
    view_asisH_CODE: TcxGridDBColumn;
    st_commname: TcxStyle;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    view_asisUPACK: TcxGridDBColumn;
    btn_services: TdxBarLargeButton;
    bpm_services: TdxBarPopupMenu;
    btn_calc_groups: TdxBarButton;
    view_asisTYPE_DOP: TcxGridDBColumn;
    view_asisSPLIT_ROSE: TcxGridDBColumn;
    view_asisSTEM_WEIGHT: TcxGridDBColumn;
    view_asisCUST_REGN: TcxGridDBColumn;
    view_asisORDERBY: TcxGridDBColumn;
    view_asisSRC_TROLLEY: TcxGridDBColumn;
    view_asisSRC_NAME: TcxGridDBColumn;
    view_asisTROLLEY_CALC: TcxGridDBColumn;
    grid_invoices_vD_CHECK: TcxGridDBColumn;
    bb_back_add: TdxBarButton;
    bb_back_del: TdxBarButton;
    grid_invoices_vIPP_ID: TcxGridDBColumn;
    grid_invoices_vIPP_COMMENT: TcxGridDBColumn;
    aPackFile: TAction;
    dxBarButton1: TdxBarButton;
    bb_exclude: TdxBarButton;
    bb_include: TdxBarButton;
    btn_inv_equipment: TdxBarButton;
    grid_invoices_vCOURCE: TcxGridDBColumn;
    panel_progress: TPanel;
    Label2: TLabel;
    cxProgressBar1: TcxProgressBar;
    view_asisTROLLEY1: TcxGridDBColumn;
    view_asisREMARK: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btn_settingsClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure view_asisCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_excelClick(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aFileExecute(Sender: TObject);
    procedure grid_invoices_vIS_FILEGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure grid_invoices_vDblClick(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure view_asisCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure bb_endClick(Sender: TObject);
    procedure grid_invoices_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure bpm_incoicesPopup(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure view_asisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_calc_groupsClick(Sender: TObject);
    procedure bpm_servicesPopup(Sender: TObject);
    procedure bb_back_addClick(Sender: TObject);
    procedure bb_back_delClick(Sender: TObject);
    procedure SetPack(param_: integer);
    procedure aPackFileExecute(Sender: TObject);
    procedure view_asisTITLEGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure bb_excludeClick(Sender: TObject);
    procedure bb_includeClick(Sender: TObject);
    procedure btn_inv_equipmentClick(Sender: TObject);
  private
    { Private declarations }
    pnl_msg: TPanel;
    procedure make_out_file(id: integer; report_type: integer; report_name: string; output_file: string; truck: integer);
  public
    split_roses: integer;
    { Public declarations }
  end;

var
  frmCustoms: TfrmCustoms;

implementation

uses UDM, Globals, MainReader, USettings, UHelp, UStat, IppChoose, NewSomethingU,
  UFitoEquipment;

{$R *.dfm}

// Новый инвойс
procedure TfrmCustoms.aNewExecute(Sender: TObject);
begin
  ReadInvoice := TReadInvoice.Create(Application);
  try
    ReadInvoice.ShowModal;
    aRefresh.Execute;
    gr_data.SetFocus;
  finally
    ReadInvoice.Free;
  end;
end;


// Удалим инвойс
procedure TfrmCustoms.aDelExecute(Sender: TObject);
var idd: integer;
begin
  if ((DM.InvoiceRegister.Active = true) and (DM.InvoiceRegister.RecordCount > 0)) then
  begin
    if (DM.InvoiceRegisterSTATUS.AsInteger = 1) then
    begin
      MessageBox(Handle, 'Инвойс закрыт. Редактирование невозможно.', 'Внимание!', MB_ICONINFORMATION);
      exit;
    end;

    if MessageDlg('Вы действительно хотите удалить инвойс?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin

      try
          idd := DM.InvoiceRegisterINV_ID.AsInteger;
          with DM.OraStoredProc1 do
          begin
            Close;
            StoredProcName := 'custom_pkg.del_custom_register';
            Prepare;
            ParamByName('v_id').AsInteger  := idd;
            Execute;
          end;

          if (DM.InvoiceRegister.Active = true) then
          begin
            DM.InvoiceRegister.Next;
            idd := DM.InvoiceRegisterINV_ID.AsInteger;

            DM.InvoiceRegister.Refresh;
            grid_invoices_v.DataController.LocateByKey(idd);
            //DM.InvoiceRegister.Locate('INV_ID',idd,[]);
          end;

      except
        on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;

    end;
  end
  else ShowMessage('Нет данных для удаления!');
  grid_invoices.SetFocus;
end;

// Закроем инвойс
procedure TfrmCustoms.bb_endClick(Sender: TObject);
var idd: integer;
begin
  if ((DM.InvoiceRegister.Active = true) and (DM.InvoiceRegister.RecordCount > 0)) then
  begin
    if MessageDlg('После закрытия инвойса все действия будут недоступны?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin

      try
          idd := DM.InvoiceRegisterINV_ID.AsInteger;
          with DM.SelQ do
          begin
            Close;
            SQL.Clear;
            SQL.Add('update customs_inv_register set status=1 where inv_id='+IntToStr(idd));
            Execute;
          end;
          DM.STAR_DB.Commit;
          DM.InvoiceRegister.RefreshRecord;
      except
        on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;

    end;
  end
  else ShowMessage('Нет данных для закрытия!');
  grid_invoices.SetFocus;
end;


// Сделаем общий файл для пачки
procedure TfrmCustoms.aPackFileExecute(Sender: TObject);
var F_CSV, F_CSV_RU: TextFile;
    country_now, type_now, tmp_str, fileName: string;
    idd, inv, truck_now, i, j, total_sum: integer;
    XL, XArr, WorkBook, Sheet: OLEVariant;
begin
  // Создадим выходные файлы для горшков
  if ( CUR_DEPT_ID = 61 ) then
  begin
  try

    idd := grid_invoices_vIPP_ID.EditValue;
    inv := grid_invoices_vINV_ID_.EditValue;
    // Создание папок внутри папки программы -----------------------------
    if not DirectoryExists(ProgPath+'\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)) then
    if not CreateDir(ProgPath+'\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)) then
    begin
       raise Exception.Create('Cannot create directory');
       exit;
    end;
    // -------------------------------------------------------------------



// bof: total_trunslate_ru, total_trunslate_eng
    DM.cdsTMP.Close;
    DM.cdsTMP.SQL.Clear;
    DM.cdsTMP.SQL.Add('begin custom_pkg.get_custom_register_asis_pack(:IPP_ID_, :SPLIT_ROSE_, :CURSOR_); end;');
    DM.cdsTMP.ParamByName('IPP_ID_').Value := idd;
    DM.cdsTMP.ParamByName('SPLIT_ROSE_').Value  := 0;
    DM.cdsTMP.ParamByName('CURSOR_').AsCursor;
    DM.cdsTMP.Open;
    DM.cdsTMP.IndexFieldNames := 'f_type';

    if (DM.cdsTMP.RecordCount > 0) then
    begin
      with dm.cdsTMP do
      begin
        AssignFile(F_CSV_RU, ProgPath+ '\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)+'\pack_total_trunslate_ru.csv');
        Rewrite(F_CSV_RU);
        AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)+'\pack_total_trunslate_eng.csv');
        Rewrite(F_CSV);
        type_now    := '';
        First;

        WriteLn(F_CSV_RU, 'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');
        WriteLn(F_CSV,    'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');

        type_now := FieldByName('f_type').AsString;
        while not Eof do
        begin
          if (type_now <> FieldByName('f_type').AsString) then
          begin
            WriteLn(F_CSV, '');
            WriteLn(F_CSV_RU, '');
            type_now := FieldByName('f_type').AsString;
          end;

          tmp_str := FieldByName('trucks').AsString +'.'+ FieldByName('order_number').AsString +'.'+ FieldByName('trolley_calc').AsString +';'+
                 FieldByName('PACKING_AMOUNT').AsString +';x;'+ FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 FieldByName('UNITS').AsString +';'+
                 FieldByName('DESCRIPTION').AsString +';'+
                 FieldByName('PRICE').AsString +';'+
                 FieldByName('SUMM').AsString +';'+
                 FieldByName('HOL_COUNTRY').AsString
                 ;
          WriteLn(F_CSV, tmp_str);

          tmp_str := FieldByName('trucks').AsString +'.'+ FieldByName('order_number').AsString +'.'+ FieldByName('trolley_calc').AsString +';'+
                 FieldByName('PACKING_AMOUNT').AsString +';x;'+ FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 FieldByName('UNITS').AsString +';'+
                 FieldByName('F_NAME_RU').AsString+' '+FieldByName('height').AsString+' / '+FieldByName('diametr').AsString +';'+
                 FieldByName('PRICE').AsString +';'+
                 FieldByName('SUMM').AsString +';'+
                 FieldByName('COUNTY_RU').AsString
                 ;
          WriteLn(F_CSV_RU, tmp_str);
          Next;
        end;
        IndexFieldNames := '';
      end;
    end;

    CloseFile(F_CSV_RU);
    CloseFile(F_CSV);
// eof: total_trunslate_ru, total_trunslate_eng



// bof: DUTH_00.csv
    DM.cdsTMP.Close;
    DM.cdsTMP.SQL.Clear;
    DM.cdsTMP.SQL.Add('begin custom_pkg.get_custom_reg_pd_total_pack(:IPP_ID_, :param_, :cursor_); end;');
    DM.cdsTMP.ParamByName('IPP_ID_').Value := idd;
    DM.cdsTMP.ParamByName('param_').Value  := 1;
    DM.cdsTMP.ParamByName('cursor_').AsCursor;
    DM.cdsTMP.Open;

    if (DM.cdsTMP.RecordCount > 0) then
    begin
      with dm.cdsTMP do
      begin
          truck_now   := 0;
          total_sum   := 0;

          First;
          AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)+'\pack_DUTH_00.csv');
          Rewrite(F_CSV);
          while not Eof do
          begin
            WriteLn(F_CSV, FieldByName('pd').AsString+';'+FieldByName('total').AsString);
            total_sum := total_sum + FieldByName('total').AsInteger;
            Next;
          end;
          WriteLn(F_CSV, ';');
          WriteLn(F_CSV, 'Total;'+IntToStr(total_sum));
          CloseFile(F_CSV);
      end;
    end;
// eof: DUTH_00.csv




// bof: DUTH_00.xls
    DM.cdsTMP.Close;
    DM.cdsTMP.SQL.Clear;
    DM.cdsTMP.SQL.Add('begin custom_pkg.get_custom_reg_asis_total_pack(:IPP_ID_, :param_, :cursor_); end;');
    DM.cdsTMP.ParamByName('IPP_ID_').Value := idd;
    DM.cdsTMP.ParamByName('param_').Value  := 1;
    DM.cdsTMP.ParamByName('cursor_').AsCursor;
    DM.cdsTMP.Open;

    if (DM.cdsTMP.RecordCount > 0) then
    begin
      with dm.cdsTMP do
      begin
             total_sum   := 0;
             country_now := FieldByName('county_ru').AsString;
             type_now    := FieldByName('f_type').AsString;
             fileName    := ProgPath+ '\OUT\'+IntToStr(inv)+'\Pack_'+IntToStr(idd)+'\pack_DUTH_00.xls';
             XArr := VarArrayCreate([1,5],varVariant);
             XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
             XL.WorkBooks.Add;
//             XL.visible := false;

             XL.Range['A1','A1'].Value := 'Пояснение к инвойсу №';
             XL.Range['A2','A2'].Value := 'от ' + DateToStr(Now());
             XL.Range['A3','A3'].Value := i;
             XL.Range['A4','A4'].Value := type_now;
             XL.Range['A5','A5'].Value := country_now;
             XL.Range['A6','A6'].Value := '';
             j := 6;

             XL.Range['A1','A5'].select;
             XL.Selection.Font.Bold := true;

             while not Eof do
             begin
                if (FieldByName('county_ru').AsString <> country_now) then
                begin
                   country_now := FieldByName('county_ru').AsString;
                   XArr[1] := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;
                if (FieldByName('f_type').AsString <> type_now) then
                begin
                   type_now := FieldByName('f_type').AsString;
                   XArr[1] := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;

                XArr[1] := FieldByName('pd').Value;
                XArr[2] := FieldByName('pd_ru').Value;
                XArr[3] := FieldByName('total').Value;
                XArr[4] := FieldByName('spec').Value;
                XArr[5] := FieldByName('pd_ru').AsString+' - '+FieldByName('total').AsString+'шт., размер:'+FieldByName('spec').AsString+'см';

                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].NumberFormat := '@';
                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].Value := XArr;

                total_sum := total_sum + FieldByName('total').AsInteger;
                Next;
                j := j + 1;
             end;
             j := j + 1;
             XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := total_sum;


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
      end;
    end;
// eof: DUTH_00.xls


//    End;

      except
        on E: Exception do
          begin
              DM.cdsTMP.IndexFieldNames := '';
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          end;
      end;

  end;
end;


// Формируем файл
procedure TfrmCustoms.aFileExecute(Sender: TObject);
var F_CSV, F_CSV_RU: TextFile;
    country_now, type_now, tmp_str, fileName: string;
    idd, truck_now, i, j,jj, total_sum, trucks: integer;
    XL, XArr, WorkBook, Sheet: OLEVariant;
    WordApp: Variant;
    s,s1:tstringlist;  ss0,ss,ss1,ss2,ss3:string;
begin
  if not DM.InvoiceAsIs.Active or (DM.InvoiceAsIs.RecordCount = 0) then exit;

  if (DM.InvoiceRegisterSTATUS.AsInteger = 1) then
  begin
    MessageBox(Handle, 'Инвойс закрыт. Редактирование невозможно.', 'Внимание!', MB_ICONINFORMATION);
    exit;
  end;


  idd := DM.InvoiceRegisterINV_ID.AsInteger;
  // Создание папок внутри папки программы -----------------------------
  if not DirectoryExists(ProgPath+'\OUT\'+IntToStr(idd)) then
  if not CreateDir(ProgPath+'\OUT\'+IntToStr(idd)) then
  begin
     raise Exception.Create('Cannot create directory');
     exit;
  end;
  // -------------------------------------------------------------------

  with DM.SelQ do
  Begin
    Close;
    SQL.Clear;
    SQL.Add('select max(trucks) from customs_inv_data_as_is where INV_ID='+IntToStr(idd));
    Open;
    trucks := Fields[0].AsInteger;
  end;

// Создадим выходные файлы для горшков
if ( CUR_DEPT_ID = 61 ) then
begin
try
    screen.Cursor := crHourGlass;
    DM.InvoiceAsIs.IndexFieldNames := 'f_type';
    view_asis.Items[view_asisF_TYPE.Index].SortIndex := 0;
    view_asis.Items[view_asisF_TYPE.Index].SortOrder := soAscending;
    DM.InvoiceAsIs.DisableControls;





// bof: 0-я машина (TOTAL)
        AssignFile(F_CSV_RU, ProgPath+ '\OUT\'+IntToStr(idd)+'\00_trunslate_ru.csv');
        Rewrite(F_CSV_RU);
        AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\00_trunslate_eng.csv');
        Rewrite(F_CSV);
        type_now    := '';
        DM.InvoiceAsIs.First;

        WriteLn(F_CSV_RU, 'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');
        WriteLn(F_CSV,    'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');

        type_now := DM.InvoiceAsIs.FieldByName('f_type').AsString;
        while not DM.InvoiceAsIs.Eof do
        begin
          if (type_now <> DM.InvoiceAsIs.FieldByName('f_type').AsString) then
          begin
            WriteLn(F_CSV, '');
            WriteLn(F_CSV_RU, '');
            type_now := DM.InvoiceAsIs.FieldByName('f_type').AsString;
          end;

          tmp_str := DM.InvoiceAsIs.FieldByName('trucks').AsString +'.'+ DM.InvoiceAsIs.FieldByName('order_number').AsString +'.'+ DM.InvoiceAsIs.FieldByName('trolley_calc').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PACKING_AMOUNT').AsString +';x;'+ DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 DM.InvoiceAsIs.FieldByName('UNITS').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('DESCRIPTION').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PRICE').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('SUMM').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('HOL_COUNTRY').AsString
                 ;
          WriteLn(F_CSV, tmp_str);

          tmp_str := DM.InvoiceAsIs.FieldByName('trucks').AsString +'.'+ DM.InvoiceAsIs.FieldByName('order_number').AsString +'.'+ DM.InvoiceAsIs.FieldByName('trolley_calc').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PACKING_AMOUNT').AsString +';x;'+ DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 DM.InvoiceAsIs.FieldByName('UNITS').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('F_NAME_RU').AsString+' '+DM.InvoiceAsIs.FieldByName('height').AsString+' / '+DM.InvoiceAsIs.FieldByName('diametr').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PRICE').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('SUMM').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('COUNTY_RU').AsString
                 ;
          WriteLn(F_CSV_RU, tmp_str);
          DM.InvoiceAsIs.Next;
        end;

        CloseFile(F_CSV_RU);
        CloseFile(F_CSV);
// eof: 0-я машина (TOTAL)






    for i := 0 to trucks do
    begin
      DM.InvoiceAsIs.Filter := 'TRUCKS='+IntToStr(i);
      DM.InvoiceAsIs.Filtered := true;
      DM.InvoiceAsIs.First;

      if ( DM.InvoiceAsIs.RecordCount > 0 ) then
      begin

        AssignFile(F_CSV_RU, ProgPath+ '\OUT\'+IntToStr(idd)+'\'+IntToStr(i)+'_trunslate_ru.csv');
        Rewrite(F_CSV_RU);
        AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\'+IntToStr(i)+'_trunslate_eng.csv');
        Rewrite(F_CSV);
        type_now    := '';

        WriteLn(F_CSV_RU, 'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');
        WriteLn(F_CSV,    'Trolly;Packing;;;Box;Q-ty;Item;Price;Total;Country');

        type_now := DM.InvoiceAsIs.FieldByName('f_type').AsString;
        while not DM.InvoiceAsIs.Eof do
        begin
          if (type_now <> DM.InvoiceAsIs.FieldByName('f_type').AsString) then
          begin
            WriteLn(F_CSV, '');
            WriteLn(F_CSV_RU, '');
            type_now := DM.InvoiceAsIs.FieldByName('f_type').AsString;
          end;

          tmp_str := DM.InvoiceAsIs.FieldByName('trucks').AsString +'.'+ DM.InvoiceAsIs.FieldByName('order_number').AsString +'.'+ DM.InvoiceAsIs.FieldByName('trolley_calc').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PACKING_AMOUNT').AsString +';x;'+ DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 DM.InvoiceAsIs.FieldByName('UNITS').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('DESCRIPTION').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PRICE').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('SUMM').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('HOL_COUNTRY').AsString
                 ;
          WriteLn(F_CSV, tmp_str);

          tmp_str := DM.InvoiceAsIs.FieldByName('trucks').AsString +'.'+ DM.InvoiceAsIs.FieldByName('order_number').AsString +'.'+ DM.InvoiceAsIs.FieldByName('trolley_calc').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PACKING_AMOUNT').AsString +';x;'+ DM.InvoiceAsIs.FieldByName('AMOUNT_IN_THE_PACK').AsString +';;'+
                 DM.InvoiceAsIs.FieldByName('UNITS').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('F_NAME_RU').AsString+' '+DM.InvoiceAsIs.FieldByName('height').AsString+' / '+DM.InvoiceAsIs.FieldByName('diametr').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('PRICE').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('SUMM').AsString +';'+
                 DM.InvoiceAsIs.FieldByName('COUNTY_RU').AsString
                 ;
          WriteLn(F_CSV_RU, tmp_str);
          DM.InvoiceAsIs.Next;
        end;

        CloseFile(F_CSV_RU);
        CloseFile(F_CSV);

      end;
    end;
    DM.InvoiceAsIs.Filter   := '';
    DM.InvoiceAsIs.Filtered := false;

    DM.InvoiceAsIs.First;
    DM.InvoiceAsIs.EnableControls;


    with DM.SelQ do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin custom_pkg.get_custom_register_pd_total(:INV_ID_, :param_, :cursor_); end;');
        ParamByName('INV_ID_').Value := idd;
        ParamByName('param_').Value  := 1;
        ParamByName('cursor_').AsCursor;
        Open;

// bof: 0-я машина (TOTAL)
        if (RecordCount > 0) then
        begin
          truck_now   := 0;
          total_sum   := 0;

          First;
          AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH_00.csv');
          Rewrite(F_CSV);
          while not Eof do
          begin
            WriteLn(F_CSV, FieldByName('HOL_COUNTRY').AsString+';'+FieldByName('pd').AsString+';'+FieldByName('total').AsString);
            total_sum := total_sum + FieldByName('total').AsInteger;
            Next;
          end;
          WriteLn(F_CSV, ';');
          WriteLn(F_CSV, 'Total;'+IntToStr(total_sum));
          CloseFile(F_CSV);
        end;
// eof: 0-я машина (TOTAL)


        Close;
        SQL.Clear;
        SQL.Add('begin custom_pkg.get_custom_register_pd_total(:INV_ID_, :param_, :cursor_); end;');
        ParamByName('INV_ID_').Value := idd;
        ParamByName('param_').Value  := 0;
        ParamByName('cursor_').AsCursor;
        Open;

        if (RecordCount > 0) then
        begin
          truck_now   := 0;
          total_sum   := 0;

          First;
          truck_now := FieldByName('trucks').AsInteger;
          AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH'+IntToStr(truck_now)+'.csv');
          Rewrite(F_CSV);
          while not Eof do
          begin
            if (truck_now <> FieldByName('trucks').AsInteger) then
            begin
              WriteLn(F_CSV, ';');
              WriteLn(F_CSV, 'Total;;'+IntToStr(total_sum));
              total_sum := 0;
              CloseFile(F_CSV);

              truck_now := FieldByName('trucks').AsInteger;
              AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH'+IntToStr(truck_now)+'.csv');
              Rewrite(F_CSV);
            end;

            WriteLn(F_CSV, FieldByName('HOL_COUNTRY').AsString+';'+FieldByName('pd').AsString+';'+FieldByName('total').AsString);
            total_sum := total_sum + FieldByName('total').AsInteger;
            Next;
          end;
          WriteLn(F_CSV, ';');
          WriteLn(F_CSV, 'Total;;'+IntToStr(total_sum));
          CloseFile(F_CSV);

          Close;
        end;


        Close;
        SQL.Clear;
        SQL.Add('begin custom_pkg.get_custom_register_asis_total(:INV_ID_, :param_, :cursor_); end;');
        ParamByName('INV_ID_').Value := idd;
        ParamByName('param_').Value  := 1;
        ParamByName('cursor_').AsCursor;
        Open;



// bof: 0-я машина (TOTAL)
          if (RecordCount > 0) then
          begin
            total_sum   := 0;
             country_now := FieldByName('county_ru').AsString;
             type_now    := FieldByName('f_type').AsString;
             fileName    := ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH_00.xls';
             XArr := VarArrayCreate([1,5],varVariant);
             XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
             XL.WorkBooks.Add;
//             XL.visible := false;

             XL.Range['A1','A1'].Value := 'Пояснение к инвойсу №';
             XL.Range['A2','A2'].Value := 'от ' + DateToStr(Now());
             XL.Range['A3','A3'].Value := i;
             XL.Range['A4','A4'].Value := type_now;
             XL.Range['A5','A5'].Value := country_now;
             XL.Range['A6','A6'].Value := '';
             j := 6;

             XL.Range['A1','A6'].select;
             XL.Selection.Font.Bold := true;

             tmp_str := '';
             while not Eof do
             begin
                if (FieldByName('county_ru').AsString <> country_now) then
                begin
                   country_now := FieldByName('county_ru').AsString;
                   XArr[1] := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;
                if (FieldByName('f_type').AsString <> type_now) then
                begin
                   type_now := FieldByName('f_type').AsString;
                   XArr[1] := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;

                XArr[1] := FieldByName('pd').Value;
                XArr[2] := FieldByName('pd_ru').Value;
                XArr[3] := FieldByName('total').Value;
                XArr[4] := FieldByName('spec').Value;
                XArr[5] := FieldByName('pd_ru').AsString+' - '+FieldByName('total').AsString+'шт., размер:'+FieldByName('spec').AsString+'см';

                tmp_str := tmp_str + FieldByName('pd_ru').AsString+' - '+FieldByName('total').AsString+'шт., размер:'+FieldByName('spec').AsString+'см'+#10#13;

                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].NumberFormat := '@';
                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].Value := XArr;
//                XL.Range['F'+IntToStr(j),'F'+IntToStr(j)].Value := '=СЦЕПИТЬ(B'+IntToStr(j)+';" - ";C'+IntToStr(j)+';"шт., размер:";D'+IntToStr(j)+';"см")';

                total_sum := total_sum + FieldByName('total').AsInteger;
                Next;
                j := j + 1;
             end;
             j := j + 1;
             XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := total_sum;


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


            AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH_00.txt');
            try
              Rewrite(F_CSV);
              WriteLn(F_CSV, tmp_str);
            finally
              CloseFile(F_CSV);
            end;
          end;
// eof: 0-я машина (TOTAL)


        Close;
        SQL.Clear;
        SQL.Add('begin custom_pkg.get_custom_register_asis_total(:INV_ID_, :param_, :cursor_); end;');
        ParamByName('INV_ID_').Value := idd;
        ParamByName('param_').Value  := 0;
        ParamByName('cursor_').AsCursor;
        Open;


        for i := 0 to 10 do
        begin
          Filter   := 'trucks='+inttostr(i);
          Filtered := true;
          total_sum   := 0;

          if (RecordCount > 0) then
          begin
             country_now := FieldByName('county_ru').AsString;
             type_now    := FieldByName('f_type').AsString;
             fileName    := ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH'+IntToStr(i)+'.xls';
             XArr := VarArrayCreate([1,5],varVariant);
             XL   := CreateOLEObject('Excel.Application');     // Создание OLE объекта
             XL.WorkBooks.Add;
//             XL.visible := false;

             XL.Range['A1','A1'].Value := 'Пояснение к инвойсу №';
             XL.Range['A2','A2'].Value := 'от ' + DateToStr(Now());
             XL.Range['A3','A3'].Value := i;
             XL.Range['A4','A4'].Value := type_now;
             XL.Range['A5','A5'].Value := country_now;
             XL.Range['A6','A6'].Value := '';
             j := 6;

             XL.Range['A1','A6'].select;
             XL.Selection.Font.Bold := true;

             tmp_str := '';
             while not Eof do
             begin
                if (FieldByName('county_ru').AsString <> country_now) then
                begin
                   country_now := FieldByName('county_ru').AsString;
                   XArr[1] := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;
                if (FieldByName('f_type').AsString <> type_now) then
                begin
                   type_now := FieldByName('f_type').AsString;
                   XArr[1] := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := type_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].Value := country_now;
                   XL.Range['A'+IntToStr(j),'A'+IntToStr(j)].select;
                   XL.Selection.Font.Bold := true;
                   j := j + 1;
                end;

                XArr[1] := FieldByName('pd').Value;
                XArr[2] := FieldByName('pd_ru').Value;
                XArr[3] := FieldByName('total').Value;
                XArr[4] := FieldByName('spec').Value;
                XArr[5] := FieldByName('pd_ru').AsString+' - '+FieldByName('total').AsString+'шт., размер:'+FieldByName('spec').AsString+'см';

                tmp_str := tmp_str + FieldByName('pd_ru').AsString+' - '+FieldByName('total').AsString+'шт., размер:'+FieldByName('spec').AsString+'см'+#10#13;

                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].NumberFormat := '@';
                XL.Range['A'+IntToStr(j),
                      CHR(64+5)+IntToStr(j)].Value := XArr;

                total_sum := total_sum + FieldByName('total').AsInteger;
                Next;
                j := j + 1;
             end;
             j := j + 1;
             XL.Range['C'+IntToStr(j),'C'+IntToStr(j)].Value := total_sum;


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

            AssignFile(F_CSV, ProgPath+ '\OUT\'+IntToStr(idd)+'\DUTH'+IntToStr(i)+'.txt');
            try
              Rewrite(F_CSV);
              WriteLn(F_CSV, tmp_str);
            finally
              CloseFile(F_CSV);
            end;

          end;
        end;

        Close;
        Filter   := '';
        Filtered := false;

        if (grid_invoices_vIPP_ID.EditValue > 0) then
        begin
          if MessageDlg('Сделать общие файлы для пачки?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
             aPackFile.Execute;
        end;

        MessageBox(Handle, 'Файл создан успешно.', 'Результат', MB_ICONINFORMATION);
      except
        on E: Exception do
        begin
          DM.SelQ.Filter   := '';
          DM.SelQ.Filtered := false;
          MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
        end;
      end;
    End;
finally
  screen.Cursor := crDefault;
  DM.InvoiceAsIs.EnableControls;
  //ShellExecute(Handle, nil, PChar(ProgPath+'\OUT\'+IntToStr(idd)), nil, nil, SW_RESTORE);
end;
end;
// END 61


  // Создадим выходные файлы для срезки
  if ( CUR_DEPT_ID = 62 ) then
  begin
    panel_progress.Left           := trunc(Panel2.Width / 2) - 300;
    panel_progress.Top            := trunc(Panel2.Height / 2) - 30;
    panel_progress.Visible        := true;
    cxProgressBar1.Properties.Min := 0;
    cxProgressBar1.Position       := 0;
    cxProgressBar1.Properties.Max := trucks*4+2;
    panel_progress.Repaint;

    // Бегаем по машинам
    for i := 1 to trucks do
    begin
      // part1_tr%_Phytoes_for_cut_flowers.xls
      // Страна	Подтип	Количество
      DM.raport_srez_phytoes(idd,i,4);
      cxProgressBar1.Position := cxProgressBar1.Position+1;
      cxProgressBar1.Repaint;

      // part2_tr%_Phytoes_for_cut_flowers.xls
      // ТН ВЭД;ТОВАР;КОЛИЧЕСТВО;СТРАНА ПРОИСХОЖДЕНИЯ
      DM.raport_srez_phytoes_part2(idd,i,6);
      cxProgressBar1.Position := cxProgressBar1.Position+1;
      cxProgressBar1.Repaint;

      // part3_%_gtd_f1.xls
      // № п/п;Код ТН ВЭД;Наименование товара;ОБЩЕЕ Количество ШТУК;БАКИ;КОРОБКИ;ОБЩЕЕ Количество мест;Вес брутто, кг;Вес нетто, кг;Цена (ЕВРО);КОЛ-ВО ТЕЛЕЖЕК, 1 ТЕЛ. 94 КГ;КОЛ-ВО ПОДДОНОВ, 1 ПОДДОН - 20 КГ
      // part3_%_gtd_f2.xls
      // № п/п;Код ТН ВЭД;Наименование товара;Сорта
      // part3_%_gtd_f3.xls
      // РОСТ 40 СМ;40;шт.
      DM.raport_GTD(idd,i,5);
      cxProgressBar1.Position := cxProgressBar1.Position+1;
      cxProgressBar1.Repaint;
      //make_out_file(idd, 4, 'raport_srez_phytoes',intToStr(i)+'_Phytoes_for_cut_flowers.xls', i);
      //make_out_file(idd, 5, 'raport_srez_fito', intToStr(i)+'_gtd.xls', i);

      // part4_tr%_G Van Dijk im & export b.v._f1.xls
      // ТН ВЭД;ТОВАР;КОЛИЧЕСТВО;СТРАНА ПРОИСХОЖДЕНИЯ
      // part4_tr%_G Van Dijk im & export b.v._f2.xls
      // Name;Code;Units;Amount;Netto weight;Brutto weight
      // part5_tr%_G Van Dijk im & export b.v._f1.xls
      // Code;Group;Country;Units;pcs
      DM.raport_totallist(idd,i,6);
      cxProgressBar1.Position := cxProgressBar1.Position+1;
      cxProgressBar1.Repaint;
      //make_out_file(idd, 6, 'raport_part2_totallist', VarToStr(grid_invoices_vS_NAME_RU.EditValue)+'_'+intToStr(i)+'.xls', i);
      //make_out_file(idd, 7, 'raport_part2_totallist_spec', VarToStr(grid_invoices_vS_NAME_RU.EditValue)+'_specification_'+intToStr(i)+'.xls', i);


      // fito_tr%.xls
      // Код; Наименование; Стволов; Денег; Нетто; Брутто; Кор; Бак; Нетто за ствол; Вес коробки; Бака; Трол; Пал
      DM.raport_fito_totallist(idd,i);

    end;

    // Создадим файл по странам (в старом варианте так и было)
    // make_out_file(idd, 2, 'raport_srez_countries', 'DUTH.xls', 0);

    // Создадим файл PRECOU
    make_out_file(idd, 3, 'raport_srez_precou', 'precou.xls', 0);
    cxProgressBar1.Position := cxProgressBar1.Position+1;
    cxProgressBar1.Repaint;


    DM.CDS_WEIGHTS.Close;
    DM.CDS_WEIGHTS.Filter := '';
    DM.CDS_WEIGHTS.Filtered := false;
    DM.CDS_WEIGHTS.ParamByName('V_ID_DEP').AsInteger := CUR_DEPT_ID;
    DM.CDS_WEIGHTS.Open;
    DM.CDS_WEIGHTS.First;
    with DM.SelQ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('begin custom_pkg.get_additional_information(:V_ID_INV, :CURSOR_); end;');
      ParamByName('V_ID_INV').Value := idd;
      ParamByName('cursor_').AsCursor;
      Open;
    end;

    if DM.SelQ.RecordCount > 0 then
    begin
      while not DM.CDS_WEIGHTS.Eof do
      begin
        DM.SelQ.Filter := 'hol_sub_type='''+DM.CDS_WEIGHTSNAME_CAT.AsString+'''';
        DM.SelQ.Filtered := true;
        if DM.SelQ.RecordCount > 0 then
        begin
          if DM.CDS_WEIGHTSNAME_CAT.AsString = 'Roses' then
            make_out_file(idd, 2, 'raport_srez_notation_roses', 'пояснение_'+DM.CDS_WEIGHTSNAME_CAT_RU.AsString+'.xls', 0)
          else
            make_out_file(idd, 2, 'raport_srez_notation', 'пояснение_'+DM.CDS_WEIGHTSNAME_CAT_RU.AsString+'.xls', 0);

{ 2016-09-13
Это код Димы. Я не понимаю, что он здесь хотел. Как Настя проверит файлы, то сразу скажет, что не хватает и тогда надо менять запрос
           //--------доработка файлов пояснений--
           i:=0;
           XL:= CreateOLEObject('Excel.Application');
           S := TStringList.Create;
           if DM.CDS_WEIGHTSNAME_CAT_RU.AsString<>'Роза' then begin
            s.Duplicates := dupIgnore;
            s.sorted := true;
           end;
              XL.WorkBooks.open(ProgPath+ '\OUT\'+IntToStr(idd)+'\пояснение_'+DM.CDS_WEIGHTSNAME_CAT_RU.AsString+'.xls');
              XL.Cells.SpecialCells($0000000B, EmptyParam).Activate;
              for i:=1 to XL.ActiveCell.Row  do    begin
              if TryStrToint(vartostr(trim(XL.Range['A'+IntToStr(i),'A'+IntToStr(i)].value)),jj) then  begin
              ss0:=trim(XL.Range['A'+IntToStr(i),'A'+IntToStr(i)].value);
              ss:=trim(XL.Range['B'+IntToStr(i),'B'+IntToStr(i)].value);
              ss1:=trim(XL.Range['D'+IntToStr(i),'D'+IntToStr(i)].value);
              ss2:=trim(XL.Range['E'+IntToStr(i),'E'+IntToStr(i)].value);
              ss3:=trim(XL.Range['F'+IntToStr(i),'F'+IntToStr(i)].value);
              s.add(ss0+'^'+ss+';'+ss1+'%'+ss2+'?'+ss3);
              end;
              end;
              XL.WorkBooks.close;
           XL.Quit;

           // стринглист сформирован, закидываю в эксель:

           XL:= CreateOLEObject('Excel.Application');
           XL.WorkBooks.add;
           for i:=0 to s.count-1  do    begin          //////////////////////////////////////
            ss0:=copy(s[i],0,pos('^',s[i])-1);
            ss:=copy(s[i],pos('^',s[i])+1,pos(';',s[i])-pos('^',s[i])-1);
            ss1:= copy(s[i],pos(';',s[i])+1,pos('%',s[i])-pos(';',s[i])-1);
            ss2:= copy(s[i],pos('%',s[i])+1,pos('?',s[i])-pos('%',s[i])-1);
            ss3:= copy(s[i],pos('?',s[i])+1,length(s[i])-pos('?',s[i]));

            XL.Range['A'+IntToStr(i+1),'A'+IntToStr(i+1)].value :=ss0;
            XL.Range['B'+IntToStr(i+1),'B'+IntToStr(i+1)].value :=ss;
            XL.Range['C'+IntToStr(i+1),'C'+IntToStr(i+1)].value :=', ';
            XL.Range['D'+IntToStr(i+1),'D'+IntToStr(i+1)].value :=ss1;
            XL.Range['E'+IntToStr(i+1),'E'+IntToStr(i+1)].value :=ss2;
            XL.Range['F'+IntToStr(i+1),'F'+IntToStr(i+1)].value :=ss3;
           end;
                       
           // -----сортирую эксель:----------------
           XL.Range['A1','F'+inttostr(s.count)].Sort(Key1:=XL.Range['A1','A'+inttostr(s.count)],
           Order1:=1, Key2:=XL.Range['D1','D'+inttostr(s.count)],Order1:=1,
           Key3:=XL.Range['B1','B'+inttostr(s.count)],Order1:=1,
           Header:=0, OrderCustom:=1,MatchCase:=False, Orientation:=1, DataOption1:=0);
           // -------------------------------------
           XL.Cells.SpecialCells($0000000B, EmptyParam).Activate;

           // этот цикл нужен для работы следущего цикла, ибо в след.цикле XL.ActiveCell.Row
           // задаеца как константа а внутри цикла добав-ся строки XL.Rows[i+1].Insert() и макс-й номер строки
           // в документе увел-ся... В этом цикле я считаю в перем. jj сколько раз может добавиться XL.Rows[i+1].Insert()
           // А в след.цикле использую jj
           jj:=0;
           for i:=1 to XL.ActiveCell.Row  do    begin
             ss:=XL.Range['D'+IntToStr(i),'D'+IntToStr(i)].value;        // текущая страна
             ss1:=XL.Range['D'+IntToStr(i+1),'D'+IntToStr(i+1)].value;   // следущая страна
            //если разные страны и первая непустая, то:
             if (ss<>ss1) and (ss<>'') then  begin // ss<>'' - т.к. вставлена пустая строка- текущая (в частности колонка страна) теперь пустая, значит пробегаем ее
                jj:=jj+1;
             end;
           end;


           for i:=1 to XL.ActiveCell.Row+jj  do    begin
            //если пустая ячейка - вся строка д.б. пустой:
            // if (XL.Range['B'+IntToStr(i+1),'B'+IntToStr(i+1)].value='') then XL.Range['A'+IntToStr(i+1),'D'+IntToStr(i+1)].value:='';
            // if (XL.Range['B'+IntToStr(i),'B'+IntToStr(i)].value='') then XL.Range['A'+IntToStr(i),'D'+IntToStr(i)].value:='';
             ss:=XL.Range['D'+IntToStr(i),'D'+IntToStr(i)].value;        // текущая страна
             ss1:=XL.Range['D'+IntToStr(i+1),'D'+IntToStr(i+1)].value;   // следущая страна
            //если разные страны, убираю запятую в текущей:
             if (ss<>ss1) and (ss<>'') then  begin // ss<>'' - т.к. вставлена пустая строка- текущая (в частности колонка страна) теперь пустая, значит пробегаем ее
              XL.Range['C'+IntToStr(i),'C'+IntToStr(i)].value:=' ';
              XL.Rows[i+1].Insert();  // разделяю страны пустой строкой
             end;
           end;


           //------внешний вид + убираю запятую из последей
           XL.Range['A1','F'+inttostr(s.count)].select;
          // XL.Range['A1','F'+inttostr(XL.ActiveCell.Row)].select;
           XL.Selection.Font.Name:='Arial';
           XL.Selection.Font.Size:=10;
           XL.selection.Columns.AutoFit;
           XL.Cells.SpecialCells($0000000B, EmptyParam).Activate;
           XL.Range['C'+IntToStr(XL.ActiveCell.Row),'C'+IntToStr(XL.ActiveCell.Row)].value:=' ';
           //--------------------------------------------------

           XL.Workbooks[1].SaveAs(ProgPath+ '\OUT\'+IntToStr(idd)+'\пояснение_1'+DM.CDS_WEIGHTSNAME_CAT_RU.AsString+'.xls');
           XL.Quit;
           s.Free;
           i:=0;
         //-----конец доработка файлов пояснений-----
}
        end; //if DM.SelQ.RecordCount > 0
        DM.CDS_WEIGHTS.Next;
      end;

      DM.SelQ.Close;
      DM.SelQ.Filter := '';
      DM.SelQ.Filtered := false;
    end;
    DM.CDS_WEIGHTS.Close;

    cxProgressBar1.Position := cxProgressBar1.Position+1;
    cxProgressBar1.Repaint;



    // Создадим файл с описаниями (в старом варианте так и было)
    //make_out_file(idd, 3, 'raport_srez_notation', 'DUTH.xls', 0);
  end; // END 62


  MessageBox(Handle, 'Генерация файлов прошла успешно','Результат...',MB_ICONINFORMATION);
  panel_progress.Visible := false;
  ShellExecute(Handle, nil, PChar(ProgPath+'\OUT\'+IntToStr(idd)), nil, nil, SW_RESTORE);

  gr_data.SetFocus;
end;


procedure TfrmCustoms.make_out_file(id: integer; report_type: integer; report_name: string; output_file: string; truck: integer);
var mnemo : TfrxMemoView; //XL, XArr, WorkBook, Sheet: OLEVariant;  s:tstringlist;  ss:string;   i:integer;
begin
    try
      if (report_type = 3) or (report_type = 4) then
      begin
        with DM.SelQ do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_group_stat(:V_ID_INV, :V_ID_DEP, :V_VID, :v_truck, :CURSOR_); end;');
          ParamByName('V_ID_INV').Value := id;
          ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
          ParamByName('V_VID').Value := report_type;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;
      end;

      if (report_type = 4) then
      begin
        with DM.SelQ2 do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_group_stat(:V_ID_INV, :V_ID_DEP, :V_VID, :v_truck, :CURSOR_); end;');
          ParamByName('V_ID_INV').Value := id;
          ParamByName('V_ID_DEP').Value := CUR_DEPT_ID;
          ParamByName('V_VID').Value := report_type;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
          IndexFieldNames := 'CUST_REGN;cntr';
        end;
      end;

      if (report_type = 5) then
      begin
        with DM.SelQ do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_fito_raport_page1(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_id_dep').Value := CUR_DEPT_ID;
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;

        with DM.SelQ2 do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_fito_raport_page2(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_id_dep').Value := CUR_DEPT_ID;
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;

        with DM.SelQ3 do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_fito_raport_page3(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_id_dep').Value := CUR_DEPT_ID;
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;
      end;


      if (report_type = 6) then
      begin

        with DM.SelQ do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_suplier_list2(:v_id_dep, :v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_id_dep').Value := CUR_DEPT_ID;
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;
 
        with DM.SelQ2 do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_suplier_list(:v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;
      end;

      if (report_type = 7) then
      begin
        with DM.SelQ do
        begin
          Close;
          IndexFieldNames := '';
          SQL.Clear;
          SQL.Add('begin custom_pkg.get_suplier_list(:v_inv_id, :v_truck, :CURSOR_); end;');
          ParamByName('v_inv_id').Value := id;
          ParamByName('v_truck').Value := truck;
          ParamByName('cursor_').AsCursor;
          Open;
        end;
      end;

      if DM.SelQ.RecordCount > 0 then
      begin
        DM.frx_customs.LoadFromFile(ExtractFilePath(Application.ExeName)+'raps\'+report_name+'.fr3');
        DM.frxXMLExport1.DefaultPath := ProgPath+ '\OUT\'+IntToStr(id);
        DM.frxXMLExport1.FileName    := output_file;
        if (report_type = 3) then
        begin
          mnemo := DM.frx_customs.FindObject('Memo1') as TfrxMemoView;
          mnemo.Text := DM.CDS_WEIGHTSNAME_CAT_RU.AsString+'. СОРТА';
        end;
        DM.frx_customs.PrepareReport(true);
        DM.frx_customs.Export(DM.frxXMLExport1);
        //DM.frx_customs.Export(DM.frxXLSExport1);
      end;
      if report_type <> 2 then DM.SelQ.Close;
      DM.SelQ2.Close;
      DM.SelQ2.IndexFieldNames := '';
      DM.SelQ3.Close;
      DM.SelQ3.IndexFieldNames := '';



    
    except
      on E: Exception do
            MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
    end;
end;


// Обновление данных
procedure TfrmCustoms.aRefreshExecute(Sender: TObject);
var i,j: integer;
begin
  if imgOtdel.ItemIndex = -1 then exit;

  i := 0;
  j := 0;
  if (DM.InvoiceRegister.Active) and (DM.InvoiceRegister.RecordCount > 0) then
      i := DM.InvoiceRegisterINV_ID.AsInteger;
  if (DM.InvoiceAsIs.Active) and (DM.InvoiceAsIs.RecordCount > 0) then
      j := DM.InvoiceAsIsINVOICE_DATA_AS_IS_ID.AsInteger;


  DM.InvoiceRegister.Close;
  DM.InvoiceRegister.ParamByName('ID_DEPARTMENTS_').AsInteger := CUR_DEPT_ID;
  DM.InvoiceRegister.Open;
  grid_invoices_v.DataController.LocateByKey(i);
//  DM.InvoiceRegister.Locate('INV_ID',i,[]);

  view_asisDIAMETR.Visible := false;
  view_asisTROLLEY.Visible := false;
  view_asisUPACK.Visible   := false;

  if ( CUR_DEPT_ID = 61 ) then
  begin
    view_asisDIAMETR.Visible := true;
    view_asisTROLLEY.Visible := true;
  end;
  if ( CUR_DEPT_ID = 62 ) then
  begin
    view_asisUPACK.Visible := true;
  end;


  if (DM.InvoiceRegister.Active) and (DM.InvoiceRegister.RecordCount > 0) then
  begin
    if (DM.InvoiceAsIs.Active) {and (DM.InvoiceAsIs.RecordCount > 0)} then
    begin
      //i := DM.InvoiceAsIsINVOICE_DATA_AS_IS_ID.AsInteger;
      DM.InvoiceAsIs.Refresh;
      view_asis.DataController.LocateByKey(j);
      //DM.InvoiceAsIs.Locate('INVOICE_DATA_AS_IS_ID',i,[]);
    end
    else begin
      DM.InvoiceAsIs.ParamByName('split_rose_').AsInteger := split_roses;
      DM.InvoiceAsIs.Open;
    end;
  end;
end;

// Персональные настройки
procedure TfrmCustoms.btn_settingsClick(Sender: TObject);
begin
  frmSetings := TfrmSetings.Create(Application);
  try
    frmSetings.pc_settings.ActivePageIndex := 0;
    frmSetings.ShowModal;
  finally
    frmSetings.Free;
  end;
end;

// Закроем форму
procedure TfrmCustoms.dxBarLargeButton1Click(Sender: TObject);
begin
  Close;
end;

// Создадим форму
procedure TfrmCustoms.FormCreate(Sender: TObject);
Var RegIni : TIniFile;
begin
  try
    DM.STAR_DB.Connected := false;
    DM.STAR_DB.Server    := ora_db_path;
    DM.STAR_DB.Username  := username;
    DM.STAR_DB.Password  := password;
    DM.STAR_DB.Connect;

    with DM.SelQ do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin admins.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(Username);
        ParamByName('cursor_').AsCursor;
        Open;
      except
        on E: Exception do
        begin
          if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then
              MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING)
          else
              MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
          exit;
        end;
      end;
    End;
    if (DM.SelQ.RecordCount = 0) then
    begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      exit;
    end;

    FillImgComboCx(DM.SelQ, imgOtdel, '');
    if INPUT_DEPT_ID <> null then
    begin
      imgOtdel.EditValue  := INPUT_DEPT_ID;
      CUR_DEPT_ID         := INPUT_DEPT_ID;
      CUR_DEPT_NAME       := imgOtdel.EditText;
    end;

    
    RegIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    try
      bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '10');
      split_roses := RegIni.ReadInteger('roses', 'value', 0);
    finally
      RegIni.Free;
    end;

    
    DM.SelQ.Close;
    aRefresh.Execute;

  Except on E:Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

// Откроем форму
procedure TfrmCustoms.FormShow(Sender: TObject);
begin
    grid_invoices.Font.Size := bc_fontsize.EditValue;
    gr_data.Font.Size     := bc_fontsize.EditValue;
    st_editable.Font.Size := bc_fontsize.EditValue;
    st_commname.Font.Size := bc_fontsize.EditValue;

    aNew.Enabled   := ed;
    aFile.Enabled  := ed;
    aDel.Enabled   := del;
    bb_end.Enabled := ed;
    btn_excel.Enabled      := pr;
    btn_settings.Enabled   := ed;

    grid_invoices.SetFocus;
end;

// Смена отдела
procedure TfrmCustoms.imgOtdelPropertiesChange(Sender: TObject);
begin
  imgOtdel.PostEditValue;
  CUR_DEPT_ID   := imgOtdel.EditValue;
  CUR_DEPT_NAME := imgOtdel.EditText;
end;

// Сменим шрифт
procedure TfrmCustoms.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  grid_invoices.Font.Size := bc_fontsize.EditValue;
  gr_data.Font.Size     := bc_fontsize.EditValue;
  st_editable.Font.Size := bc_fontsize.EditValue;
  st_commname.Font.Size := bc_fontsize.EditValue;

  RegIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
  try
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;

procedure TfrmCustoms.bpm_incoicesPopup(Sender: TObject);
begin
  if DM.InvoiceRegisterSTATUS.AsInteger = 1 then
  begin
    aFile.Enabled  := false;
    aDel.Enabled   := false;
    bb_end.Enabled := false;
  end
  else
  begin
    aFile.Enabled  := ed;
    aDel.Enabled   := del;
    bb_end.Enabled := ed;
  end;
end;

procedure TfrmCustoms.bpm_servicesPopup(Sender: TObject);
begin
  if (CUR_DEPT_ID = 62) then btn_calc_groups.Enabled := true else btn_calc_groups.Enabled := false;
end;

// Выгрузка в Excel
procedure TfrmCustoms.btn_excelClick(Sender: TObject);
begin
  if (grid_invoices_v.DataController.DataSet.RecordCount = 0) or (view_asis.DataController.DataSet.RecordCount = 0) then
  begin
    MessageBox(Handle, 'Нет данных для выгрузки', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  if SaveDialog.Execute then
  begin
     ExportGridToExcel(SaveDialog.FileName, gr_data, True, False, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
  gr_data.SetFocus;
end;

// Помощь
procedure TfrmCustoms.btn_helpClick(Sender: TObject);
begin
  frm_help := Tfrm_help.Create(Application);
  try
    frm_help.ShowModal;
  finally
    frm_help.Free;
  end;
end;


procedure TfrmCustoms.btn_inv_equipmentClick(Sender: TObject);
begin
  if (grid_invoices_v.DataController.DataSet.RecordCount = 0) then
  begin
    MessageBox(Handle, 'Нет данных для операции', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  frmFitoEquipment := TfrmFitoEquipment.Create(Application);
  try
    frmFitoEquipment.CDS_STAT.Close;
    frmFitoEquipment.CDS_STAT.ParamByName('v_id_inv').AsInteger  := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').Value;
    frmFitoEquipment.CDS_STAT.ParamByName('v_id_dep').AsInteger  := CUR_DEPT_ID;
    frmFitoEquipment.CDS_STAT.Open;
    frmFitoEquipment.ShowModal;
  finally
    frmFitoEquipment.Free;
  end;
end;


// Кликаем на файле инвойса
procedure TfrmCustoms.grid_invoices_vDblClick(Sender: TObject);
begin
  if (DM.InvoiceRegister.Active = false) or (DM.InvoiceRegister.RecordCount = 0) then
    exit;

  if ( grid_invoices_v.Controller.FocusedColumn.Name = 'grid_invoices_vIS_FILE' ) then
     ShellExecute(Handle, nil, PChar(ProgPath+'\IN\'+DM.InvoiceRegister.FieldByName('INV_ID').AsString+'\'+DM.InvoiceRegister.FieldByName('IN_FILE').AsString), nil, nil, SW_RESTORE);

  if ( grid_invoices_v.Controller.FocusedColumn.Name = 'grid_invoices_vFOLDER' ) then
  begin
    if DirectoryExists(ProgPath+'\OUT\'+IntToStr(DM.InvoiceRegisterINV_ID.AsInteger)) then
       ShellExecute(Handle, nil, PChar(ProgPath+'\OUT\'+IntToStr(DM.InvoiceRegisterINV_ID.AsInteger)), nil, nil, SW_RESTORE);
  end;
end;


// Показываем хинт инвойса
procedure TfrmCustoms.grid_invoices_vIS_FILEGetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  try
    AHintText := ARecord.Values[grid_invoices_vIN_FILE.Index];
  Except
    AHintText := '';
  end;
end;


// Кликаем на данных
procedure TfrmCustoms.view_asisCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (DM.InvoiceAsIs.Active = false) or (DM.InvoiceAsIs.RecordCount = 0) then
    exit;

  if (view_asis.Controller.FocusedColumn.Name = 'view_asisF_TYPE') and (view_asis.Controller.FocusedColumn.EditValue = null) then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
      frmSetings.pc_settings.ActivePageIndex := 1;
      frmSetings.ed_weight_name.Text := DM.InvoiceAsIsHOL_SUB_TYPE.AsString;
      frmSetings.ed_weight_tr_ru.Text := ''; //DM.InvoiceAsIsPD.AsString;
      frmSetings.ed_weight_code.Text := DM.InvoiceAsIsCUST_REGN.AsString;
      frmSetings.ed_weight_val.EditValue := DM.InvoiceAsIsSTEM_WEIGHT.Value;
      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

//  if (view_asis.Controller.FocusedColumn.Name = 'view_asisPD_RU') and (view_asis.Controller.FocusedColumn.EditValue = null) then
  if (view_asis.Controller.FocusedColumn.Name = 'view_asisPD_RU') then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
      frmSetings.pc_settings.ActivePageIndex := 2;
      if view_asis.Controller.FocusedColumn.EditValue = null then
      begin
        frmSetings.Edit1.Text := DM.InvoiceAsIsPD.AsString;
        frmSetings.Edit2.Text := DM.InvoiceAsIsPD.AsString;
      end
      else
        DM.CDS_FITO.Locate('NAME_RU', view_asis.Controller.FocusedColumn.EditValue, [loCaseInsensitive]);

      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

  if (view_asis.Controller.FocusedColumn.Name = 'view_asisF_NAME_RU') or (view_asis.Controller.FocusedColumn.Name = 'view_asisFIRMA_NAME') then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
        frmSetings.pc_settings.ActivePageIndex := 3;
        if (view_asis.Controller.FocusedColumn.EditValue = null) then
        begin
          frmSetings.ed_name_suplier.Text := DM.InvoiceAsIsTITLE.AsString;
          frmSetings.ed_name_fito.Text := '';
          frmSetings.ed_name_code.Text := DM.InvoiceAsIsH_CODE.AsString;
        end
        else
        begin
          DM.CDS_NAMES.Locate('FITO_NAME', view_asis.Controller.FocusedColumn.EditValue, [loCaseInsensitive])
        end;
      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

end;


// Красим данные
procedure TfrmCustoms.view_asisCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin

  if (not AViewInfo.Selected) and (view_asis.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим 0 в количестве
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('UNITS').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'UNITS') and (val1 = 0) then
        ACanvas.Brush.Color := st_bed.Color;

    // Красим 0 в высоте
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('HEIGHT').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'HEIGHT') and (val1 = 0) then
        ACanvas.Brush.Color := st_bed.Color;

    // Красим 0 в диаметре
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('DIAMETR').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'DIAMETR') and (val1 = 0) then
        ACanvas.Brush.Color := st_bed.Color;


    // Красим "pd mix"
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('PD').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'PD') and (UpperCase(VarToStr(val1)) = 'PD MIX') then
        ACanvas.Brush.Color := st_bed.Color;

    // Красим телеги
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('TROLLEY_CALC').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'TROLLEY_CALC') and (val1 > 43) then
        ACanvas.Brush.Color := st_bed.Color;

    // Красим телеги
    val1  := view_asis.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, view_asis.GetColumnByFieldName('H_CODE').Index
                );
    if (view_asis.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'TITLE') and (val1 = 0) then
        ACanvas.Font.Style := [fsBold];

  end;
end;


procedure TfrmCustoms.view_asisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (DM.InvoiceAsIs.Active = false) or (DM.InvoiceAsIs.RecordCount = 0) then
    exit;

  if (Key = VK_RETURN) and (view_asis.Controller.FocusedColumn.Name = 'view_asisF_TYPE') and (view_asis.Controller.FocusedColumn.EditValue = null) then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
      frmSetings.pc_settings.ActivePageIndex := 1;
      frmSetings.ed_weight_name.Text := DM.InvoiceAsIsHOL_SUB_TYPE.AsString;
      frmSetings.ed_weight_tr_ru.Text := ''; //DM.InvoiceAsIsPD.AsString;
      frmSetings.ed_weight_code.Text := DM.InvoiceAsIsCUST_REGN.AsString;
      frmSetings.ed_weight_val.EditValue := DM.InvoiceAsIsSTEM_WEIGHT.Value;
      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

  if (Key = VK_RETURN) and (view_asis.Controller.FocusedColumn.Name = 'view_asisPD_RU') and (view_asis.Controller.FocusedColumn.EditValue = null) then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
      frmSetings.pc_settings.ActivePageIndex := 2;
      frmSetings.Edit1.Text := DM.InvoiceAsIsPD.AsString;
      frmSetings.Edit2.Text := DM.InvoiceAsIsPD.AsString;
      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

  if (Key = VK_RETURN) and ((view_asis.Controller.FocusedColumn.Name = 'view_asisF_NAME_RU') or (view_asis.Controller.FocusedColumn.Name = 'view_asisFIRMA_NAME')) then
  begin
    frmSetings := TfrmSetings.Create(Application);
    try
        frmSetings.pc_settings.ActivePageIndex := 3;
        if (view_asis.Controller.FocusedColumn.EditValue = null) then
        begin
          frmSetings.ed_name_suplier.Text := DM.InvoiceAsIsTITLE.AsString;
          frmSetings.ed_name_fito.Text := ''; 
          frmSetings.ed_name_code.Text := DM.InvoiceAsIsH_CODE.AsString;
        end
        else
        begin
          DM.CDS_NAMES.Locate('FITO_NAME', view_asis.Controller.FocusedColumn.EditValue, [loCaseInsensitive])
        end;
      frmSetings.ShowModal;
      DM.InvoiceAsIs.RefreshRecord;
    finally
      frmSetings.Free;
    end;
  end;

end;


procedure TfrmCustoms.view_asisTITLEGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  if (ARecord.DisplayTexts[view_asisH_CODE.Index] = '0') then
    AHintText := ARecord.DisplayTexts[view_asisSRC_NAME.Index];
end;


// Красим инвойс
procedure TfrmCustoms.grid_invoices_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (grid_invoices_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим 0 в количестве
    val1  := grid_invoices_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grid_invoices_v.GetColumnByFieldName('STATUS').Index
                );
    if (val1 = 1) then
        ACanvas.Font.Color := st_lock.TextColor;
  end;
end;



//
//  Количество по группам
//
procedure TfrmCustoms.btn_calc_groupsClick(Sender: TObject);
begin
  if (grid_invoices_v.DataController.DataSet.RecordCount = 0) then
  begin
    MessageBox(Handle, 'Нет данных для операции', 'Внимание', MB_ICONWARNING);
    exit;
  end;

  frm_stat := Tfrm_stat.Create(Application);
  try
    frm_stat.CDS_STAT.Close;
    frm_stat.CDS_STAT.ParamByName('v_id_inv').AsInteger  := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').Value;
    frm_stat.CDS_STAT.ParamByName('v_id_dep').AsInteger  := CUR_DEPT_ID;
    frm_stat.CDS_STAT.ParamByName('v_vid').AsInteger     := 1;
    frm_stat.CDS_STAT.ParamByName('v_truck').AsInteger   := 0;
    frm_stat.CDS_STAT.Open;
    frm_stat.ShowModal;
  finally
    frm_stat.Free;
  end;
end;



// Объединить в пачку
procedure TfrmCustoms.bb_back_addClick(Sender: TObject);
begin
  SetPack(1);
end;

// Убрать из пачки
procedure TfrmCustoms.bb_back_delClick(Sender: TObject);
begin
  SetPack(0);
end;


//
// Работаем с пачками
//
procedure TfrmCustoms.SetPack(param_: integer);
var V_INV_ID, IPP_ID: integer;
begin
  if (grid_invoices_v.DataController.DataSet.RecordCount = 0) then
  begin
    MessageBox(Handle, 'Нет данных для операции', 'Внимание', MB_ICONWARNING);
    exit;
  end;

try
  V_INV_ID := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').Value;

  DM.InvoiceRegister.Filter := 'D_CHECK = 1';
  DM.InvoiceRegister.Filtered := true;

  if DM.InvoiceRegister.RecordCount > 0 then
  begin

    {*** Сделаем проверку ***}
      grid_invoices_v.DataController.DataSet.First;
      while not grid_invoices_v.DataController.DataSet.Eof do
      begin
         if ( grid_invoices_v.DataController.DataSet.FieldByName('STATUS').AsInteger = 1 )
         then
         begin
           MessageBox (Handle,'Объединять и разъединять можно только не закрытые инвойсы.', 'Внимание!', MB_ICONWARNING);
           exit;
         end;

         if (grid_invoices_v.DataController.DataSet.FieldByName('IPP_ID').IsNull) and (param_ = 0) then
         begin
           MessageBox (Handle,'Не выбран инвойс с пачкой.', 'Внимание!', MB_ICONWARNING);
           exit;
         end;

         grid_invoices_v.DataController.DataSet.Next;
      end;
    {************************}


    IPP_ID := 0;
    if (param_ = 1) then
      IPP_ID := GetIPP_ID()
    else
      IPP_ID := grid_invoices_v.DataController.DataSet.FieldByName('IPP_ID').AsInteger;

    if (IPP_ID > 0) then
    begin
      grid_invoices_v.OnFocusedRecordChanged := nil;
      grid_invoices_v.DataController.DataSet.DisableControls;
      grid_invoices_v.DataController.DataSet.First;

      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('begin custom_pkg.SET_CUSTOMS_INV_TO_PACK(:V_IPP_ID, :V_PARAM, :V_INV_ID); end;');
      if (param_ = 1) then
        DM.SelQ.ParamByName('V_IPP_ID').AsFloat := IPP_ID
      else
        DM.SelQ.ParamByName('V_IPP_ID').AsFloat := 0;
      DM.SelQ.ParamByName('V_PARAM').AsFloat  := param_;

      while not grid_invoices_v.DataController.DataSet.Eof do
      begin
         DM.SelQ.ParamByName('V_INV_ID').AsFloat := grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsInteger;
         DM.SelQ.Execute;
         grid_invoices_v.DataController.DataSet.Next;
      end;

      DM.STAR_DB.Commit;
      grid_invoices_v.DataController.DataSet.Refresh;
      grid_invoices_v.DataController.DataSet.EnableControls;
    end;
  end
  else MessageBox (Handle,'Необходимо отметить строки для объединения / разъединения.', 'Внимание!', MB_ICONWARNING);

finally
  DM.InvoiceRegister.Filter := '';
  DM.InvoiceRegister.Filtered := false;
  DM.InvoiceRegister.Refresh;
  grid_invoices_v.DataController.LocateByKey(V_INV_ID);
  grid_invoices.SetFocus;
end;

end;


// Разбить на инвойсы
procedure TfrmCustoms.bb_excludeClick(Sender: TObject);
var res_val: integer;
begin
  if not view_asis.DataController.DataSet.Active or view_asis.DataController.DataSet.IsEmpty then
  begin
     MessageBox (Handle,'Нет данных для разъединения.', 'Внимание!', MB_ICONWARNING);
     exit;
  end;

  if MessageDlg('Все текущие позиции будут перенесены в новый инвойс. Продолжить?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
     exit;

    res_val := 0;

    pnl_msg := TPanel(MakePanelLabel(Panel2,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    // Добавляем основную информацию об инвойсе
    with DM.SelQ do
    Begin
      Close;
      SQL.Clear;
      SQL.Add('begin custom_pkg.CUST_INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_TRUCK_DATE, :IN_ID_DEPARTMENTS, :IN_S_ID, :in_INV_ID, :IN_FILE); end;');
      ParamByName('IN_INV_DATE').AsDate           := grid_invoices_v.DataController.DataSet.FieldByName('INV_DATE').AsDateTime;
      ParamByName('IN_COMMENTS').AsString         := 'Разъединение инвойса №'+grid_invoices_v.DataController.DataSet.FieldByName('INV_ID').AsString;
      ParamByName('IN_SUP_INV_DATE').AsDate       := grid_invoices_v.DataController.DataSet.FieldByName('SUPPLIER_DATE').AsDateTime;
      ParamByName('IN_SUP_NUMBER').AsString       := grid_invoices_v.DataController.DataSet.FieldByName('SUPPLIER_NUMBER').AsString;
      ParamByName('IN_TRUCK_DATE').AsDate         := grid_invoices_v.DataController.DataSet.FieldByName('TRUCK_DATE').AsDateTime;
      ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
      ParamByName('IN_S_ID').Value                := grid_invoices_v.DataController.DataSet.FieldByName('S_ID_DEFAULT').AsInteger;
      ParamByName('in_INV_ID').AsInteger          := res_val;
      ParamByName('IN_FILE').AsString             := grid_invoices_v.DataController.DataSet.FieldByName('IN_FILE').AsString;
      Execute;
      res_val := ParamByName('in_INV_ID').Value;
      if res_val = -1 then
      Begin
        MessageBox(Handle, 'Произошла ошибка при добавлении основной информации об инвойсе!', 'Ошибка', MB_ICONERROR);
        Exit;
      End;
    End;

    if res_val > 0 then
    Begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('update CUSTOMS_INV_DATA_AS_IS set INV_ID = '+IntToStr(res_val)+' where INVOICE_DATA_AS_IS_ID = :p_id');
      DM.SelQ.Prepare;

      view_asis.DataController.DataSet.First;
      view_asis.DataController.DataSet.DisableControls;
      try
        while not view_asis.DataController.DataSet.Eof do
        begin
          DM.SelQ.ParamByName('p_id').AsInteger := view_asis.DataController.DataSet.FieldByName('INVOICE_DATA_AS_IS_ID').AsInteger;
          DM.SelQ.Execute;
          view_asis.DataController.DataSet.Next;
        end;
        DM.STAR_DB.Commit;
        MessageBox(Handle, 'Операция завершена!', 'Результат', MB_ICONINFORMATION);
        aRefresh.Execute;
        grid_invoices_v.DataController.LocateByKey(res_val);
      finally
        view_asis.DataController.DataSet.EnableControls;
        pnl_msg.Free;
      end;
    End;
end;


// Собрать в инвойс
procedure TfrmCustoms.bb_includeClick(Sender: TObject);
VAR
  IPPName : string;
begin
  if not view_asis.DataController.DataSet.Active or view_asis.DataController.DataSet.IsEmpty then
  begin
    MessageBox (Handle,'Нет данных для объединения.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Все текущие позиции будут перенесены в указанный инвойс. Продолжить?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
     exit;

  if not NewSomethingF.GetSomething('№ инвойса для объединения',8,IPPName) then exit;

  pnl_msg := TPanel(MakePanelLabel(Panel2,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  try
    if StrToInt(IPPName) > 0 then
    Begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('update CUSTOMS_INV_DATA_AS_IS set INV_ID = '+IPPName+' where INVOICE_DATA_AS_IS_ID = :p_id');
      DM.SelQ.Prepare;

      view_asis.DataController.DataSet.First;
      view_asis.DataController.DataSet.DisableControls;
      try
        while not view_asis.DataController.DataSet.Eof do
        begin
          DM.SelQ.ParamByName('p_id').AsInteger := view_asis.DataController.DataSet.FieldByName('INVOICE_DATA_AS_IS_ID').AsInteger;
          DM.SelQ.Execute;
          view_asis.DataController.DataSet.Next;
        end;
        DM.STAR_DB.Commit;
        MessageBox(Handle, 'Операция завершена!', 'Результат', MB_ICONINFORMATION);
        aRefresh.Execute;
        grid_invoices_v.DataController.LocateByKey(StrToInt(IPPName));
      finally
        view_asis.DataController.DataSet.EnableControls;
        pnl_msg.Free;
      end;
    End;
  Except on E:Exception do
    begin
      MessageBox(Handle, PChar('Произошла ошибка при объединении инвойсов!' + E.Message), 'Ошибка', MB_ICONERROR);
      pnl_msg.Free;
    end;
  end;

end;

end.
