unit Edit;

interface
                                   
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Menus, ActnList,StrUtils,
  ImgList, cxLookAndFeelPainters, Pi_Library,
  cxButtons, ComCtrls, PI_Library_reg, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxLabel,
  cxCurrencyEdit, cxGridExportLink, cxTextEdit, cxButtonEdit, cxBlobEdit, dxBar,
  dxBarExtItems, cxBarEditItem, cxImageComboBox, cxSplitter, Controls, ExtDlgs,
  jpeg, cxContainer, cxImage, IniFiles, cxDropDownEdit, cxGridCardView,
  cxGridDBCardView, cxGridBandedTableView, cxGridDBBandedTableView, frxClass,
  Ora, ShellApi;
  
type
  TEditForm = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    aExit: TAction;
    AddN: TAction;
    EditN: TAction;
    DeleteN: TAction;
    DictsF: TAction;
    SetParams: TAction;
    Panel4: TPanel;
    HideSpec: TAction;
    add_spec: TAction;
    aRefresh: TAction;
    CopyN: TAction;
    CheckImList: TImageList;
    cxStyleRepository1: TcxStyleRepository;
    st_suplier: TcxStyle;
    pm_main: TPopupMenu;
    mi_groupbytype: TMenuItem;
    mi_groupbycountry: TMenuItem;
    mi_groupbysupplier: TMenuItem;
    mi_groupbyholcode: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cxStyle2: TcxStyle;
    Action71: TMenuItem;
    cxImageList1: TcxImageList;
    bm_nomenclature: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    bb_close: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    bb_summoney: TdxBarButton;
    bb_endcash: TdxBarButton;
    bb_delcash: TdxBarButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    dxBarLargeButton8: TdxBarLargeButton;
    bb_statistic: TdxBarButton;
    dc_main_nom: TdxBarDockControl;
    imgOtdel: TcxBarEditItem;
    cxSplitter1: TcxSplitter;
    Panel2: TPanel;
    Panel5: TPanel;
    BitBtn3: TcxButton;
    BitBtn4: TcxButton;
    gr_spec: TcxGrid;
    gr_spec_v: TcxGridDBTableView;
    gr_spec_l: TcxGridLevel;
    gr_spec_vSPEC_CODE: TcxGridDBColumn;
    gr_spec_vHS_VAL: TcxGridDBColumn;
    gr_spec_vCONTENT_RUS: TcxGridDBColumn;
    _gr_spec_vHS_ID: TcxGridDBColumn;
    gr_spec_vSPEC_NAME: TcxGridDBColumn;
    cxImageList2: TcxImageList;
    OpenPictureDialog1: TOpenPictureDialog;
    N4: TMenuItem;
    N5: TMenuItem;
    aReload: TAction;
    dxBarLargeButton9: TdxBarLargeButton;
    aGetRules: TAction;
    bc_fontsize: TcxBarEditItem;
    cb_pics: TcxBarEditItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    aFotos: TAction;
    dxBarButton6: TdxBarButton;
    gr_noms: TcxGrid;
    gr_noms_l: TcxGridLevel;
    gvr_nomenclature: TcxGridViewRepository;
    gr_noms_v: TcxGridDBBandedTableView;
    gr_noms_vD_CHECK: TcxGridDBBandedColumn;
    gr_noms_vF_NAME: TcxGridDBBandedColumn;
    gr_noms_vF_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vF_SUB_TYPE: TcxGridDBBandedColumn;
    gr_noms_vF_TYPE: TcxGridDBBandedColumn;
    gr_noms_vCOUNTRY: TcxGridDBBandedColumn;
    gr_noms_vTYPE_SUBTYPE: TcxGridDBBandedColumn;
    gr_noms_vN_ID: TcxGridDBBandedColumn;
    gr_noms_vFN_ID: TcxGridDBBandedColumn;
    gr_noms_vFT_ID: TcxGridDBBandedColumn;
    gr_noms_vFST_ID: TcxGridDBBandedColumn;
    gr_noms_vS_ID: TcxGridDBBandedColumn;
    gr_noms_vC_ID: TcxGridDBBandedColumn;
    gr_noms_vCOL_ID: TcxGridDBBandedColumn;
    gr_noms_vH_CODE: TcxGridDBBandedColumn;
    gr_noms_vH_NAME: TcxGridDBBandedColumn;
    gr_noms_vCODE: TcxGridDBBandedColumn;
    gr_noms_vLEN: TcxGridDBBandedColumn;
    gr_noms_vPACK: TcxGridDBBandedColumn;
    gr_noms_vVBN: TcxGridDBBandedColumn;
    gr_noms_vHOL_TYPE: TcxGridDBBandedColumn;
    gr_noms_vWEIGHT: TcxGridDBBandedColumn;
    gr_noms_vS_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vCOLOUR: TcxGridDBBandedColumn;
    gr_noms_vIS_PHOTO: TcxGridDBBandedColumn;
    gr_noms_vHOL_MARKS: TcxGridDBBandedColumn;
    gr_noms_vRUS_MARKS: TcxGridDBBandedColumn;
    gr_noms_vDIAMETER: TcxGridDBBandedColumn;
    gr_noms_vBAR_CODE: TcxGridDBBandedColumn;
    gr_noms_vCUST_COEF: TcxGridDBBandedColumn;
    gr_noms_vREMARKS: TcxGridDBBandedColumn;
    gr_noms_vPHOTO: TcxGridDBBandedColumn;
    gr_noms_vCOMPILED_NAME_OTDEL: TcxGridDBBandedColumn;
    gr_image: TcxGridDBBandedColumn;
    st_8pt: TcxStyle;
    nFields: TMenuItem;
    imgOffice: TcxBarEditItem;
    gr_noms_vID_OFFICE: TcxGridDBBandedColumn;
    gr_noms_vBRIEF: TcxGridDBBandedColumn;
    gr_noms_vNOPRINT: TcxGridDBBandedColumn;
    gr_noms_vNOTUSE: TcxGridDBBandedColumn;
    gr_noms_vNAMECODE: TcxGridDBBandedColumn;
    bbSyncOne: TdxBarButton;
    bbSyncAll: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    gr_noms_vHT_ID: TcxGridDBBandedColumn;
    gr_noms_vTNVED: TcxGridDBBandedColumn;
    tbnSetDone: TdxBarButton;
    gr_noms_vCHECKED: TcxGridDBBandedColumn;
    gr_noms_vWEIGHTDRY: TcxGridDBBandedColumn;
    N6: TMenuItem;
    mnLoadCell: TMenuItem;
    btnCheckBarCode: TdxBarButton;
    stNotUse: TcxStyle;
    btnShowNotUse: TdxBarButton;
    btnClearFilter: TdxBarButton;
    btnReportNom: TdxBarButton;
    btnSyncVolume: TdxBarButton;
    gr_noms_vNOM_NEW: TcxGridDBBandedColumn;
    gr_noms_vNOM_START: TcxGridDBBandedColumn;
    gr_noms_vNOM_END: TcxGridDBBandedColumn;
    nClone: TMenuItem;
    bbFindByParameters: TdxBarSubItem;
    bbSameArticles: TdxBarButton;
    bbSameBarcode: TdxBarButton;
    bbNoCodeName: TdxBarButton;
    gr_noms_vNAME_CODE: TcxGridDBBandedColumn;
    gr_noms_vHOL_COLOR: TcxGridDBBandedColumn;
    mnClone: TMenuItem;
    N7: TMenuItem;
    bbNotCheckedNom: TdxBarButton;
    bbEightMarch: TdxBarButton;
    gr_noms_vHS_VAL: TcxGridDBBandedColumn;
    dbc_legend: TdxBarDockControl;
    bm_nomenclatureBar1: TdxBar;
    dxBarStatic9: TdxBarStatic;
    stKovalev: TcxStyle;
    dxBarStatic10: TdxBarStatic;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    dxBarStatic13: TdxBarStatic;
    st8March: TcxStyle;
    dxBarStatic14: TdxBarStatic;
    mnSet8March: TMenuItem;
    gr_noms_vNSI_NAME: TcxGridDBBandedColumn;
    gr_noms_vGREAT_NAME_F: TcxGridDBBandedColumn;
    gr_noms_vHOL_PACK: TcxGridDBBandedColumn;
    aFilterType: TAction;
    btnPrintStickers: TdxBarButton;
    aFilterType1: TMenuItem;
    bbSyncNomenclature: TdxBarButton;
    bbSyncNomenclatureLoad: TdxBarButton;
    odInvoice: TOpenDialog;
    gr_spec_vORD: TcxGridDBColumn;
    gr_spec_vSC_ID: TcxGridDBColumn;
    gr_noms_vWWW: TcxGridDBBandedColumn;
    gr_noms_NO_ORDER: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aExitExecute(Sender: TObject);
    procedure AddNExecute(Sender: TObject);
    procedure EditNExecute(Sender: TObject);
    procedure DeleteNExecute(Sender: TObject);
    procedure DictsFExecute(Sender: TObject);
    procedure SetParamsExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure HideSpecExecute(Sender: TObject);
    procedure CopyNExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure mi_groupbytypeClick(Sender: TObject);
    procedure mi_groupbycountryClick(Sender: TObject);
    procedure mi_groupbysupplierClick(Sender: TObject);
    procedure mi_groupbyholcodeClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure add_specExecute(Sender: TObject);
    procedure gr_noms_vDblClick(Sender: TObject);
    procedure aReloadExecute(Sender: TObject);
    procedure aGetRulesExecute(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure gr_noms_vDataControllerFilterChanged(Sender: TObject);
    procedure cb_picsPropertiesEditValueChanged(Sender: TObject);
    procedure aFotosExecute(Sender: TObject);
    procedure gr_noms_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure bbSyncOneClick(Sender: TObject);
    procedure bbSyncAllClick(Sender: TObject);
    procedure gr_noms_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbnSetDoneClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure btnCheckBarCodeClick(Sender: TObject);
    procedure btnShowNotUseClick(Sender: TObject);
    procedure btnClearFilterClick(Sender: TObject);
    procedure btnReportNomClick(Sender: TObject);
    procedure btnSyncVolumeClick(Sender: TObject);
    procedure dxBarSubItem2Popup(Sender: TObject);
    procedure nCloneClick(Sender: TObject);
    procedure bbSameArticlesClick(Sender: TObject);
    procedure bbSameBarcodeClick(Sender: TObject);
    procedure bbNoCodeNameClick(Sender: TObject);
    procedure mnCloneClick(Sender: TObject);
    procedure bbNotCheckedNomClick(Sender: TObject);
    procedure bbEightMarchClick(Sender: TObject);
    procedure mnSet8MarchClick(Sender: TObject);
    procedure aFilterTypeExecute(Sender: TObject);
    procedure btnPrintStickersClick(Sender: TObject);
    procedure bbSyncNomenclatureClick(Sender: TObject);
    procedure bbSyncNomenclatureLoadClick(Sender: TObject);
  private
    { Private declarations }
    nomsait:variant;
    nomnoorder:variant;
    pnl_msg: TPanel;
    procedure FildsShow(Sender: TObject);
    procedure RepaintNom;
    procedure RepaintSpec;
    procedure ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);

  public
    creator : string;
    path: string;
    { Public declarations }
  end;

var
  EditForm: TEditForm;

implementation

uses DataModule,
     EditDicts,
     NewDict, SetParsU, AddSpecU, Globals, UFullInfo, UHelp, UShowText,
  USyncVolume, UChoiseType;

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


procedure TEditForm.gr_noms_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  str_tmp : variant;
begin

  // подкрасим строку, если номенклатура от андрея из файла
  if not AViewInfo.Selected then
  begin
    // Красим отправленные на склад
    str_tmp := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('CHECKED').Index
                );

    if (str_tmp = 0) then
      ACanvas.Brush.Color := stKovalev.Color;

    if gr_noms_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'COMPILED_NAME_OTDEL' then
    begin
      // Красим 8-ми мартовские позиции
      str_tmp := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('HS_VAL').Index
                );

      if (str_tmp = '1') then
        ACanvas.Brush.Color := st8March.Color;
    end;
  end;

  str_tmp := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('NOTUSE').Index
                );

  if (str_tmp = 1) then
    ACanvas.Brush.Color := stNotUse.Color;
end;

procedure TEditForm.gr_noms_vDataControllerFilterChanged(Sender: TObject);
begin
  if cb_pics.EditValue = true then
     LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
end;




// Обновление после смены офиса
procedure TEditForm.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;
  RepaintNom;
  RepaintSpec;
end;






// Изменим размер шрифта
procedure TEditForm.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_noms.Font.Size := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(path+'ini/'+DM.SelectSession.Username+'_font.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;


//
//  Выход из программы
//
procedure TEditForm.aExitExecute(Sender: TObject);
begin
  if ( MessageDlg('Вы действительно хотите выйти из программы?',mtConfirmation,[mbNo,mbYes],0) = mrYes ) then
    Close;
end;


//
//  Закрытие формы
//
procedure TEditForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AStoreKey     := path + '/ini/'+DM.SelectSession.Username+'_'+inttostr(CUR_DEPT_ID)+'.ini';
  ASaveViewName := 'nomenclature';
  AOptions := [];
  gr_noms_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  DM.SelectSession.Close;
end;


//
//  Открытие формы
//
procedure TEditForm.FormShow(Sender: TObject);
var pass_, i : integer;
    RegIni : TIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
    newitem: Tmenuitem;
begin
  try



    path  := ExtractFilePath(Application.ExeName);

    RegIni := TIniFile.Create(path+'ini/'+DM.SelectSession.Username+'_font.ini');
    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '9');
    gr_noms.Font.Size := bc_fontsize.EditValue;

    RegIni := TIniFile.Create(path+'DictionaryEditor.ini');
    def_folder := RegIni.ReadString('folder', 'Value', '..');


    DM.SelectSession.Connect;
    DM.id_office := GetOfficeID;


    imgOffice.Enabled := (GetOfficeID = 1);
    if (imgOffice.Enabled) then
    begin
      try
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.SelQ.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      imgOffice.Properties.OnChange := nil;
      FillImgComboCxItm(DM.SelQ, imgOffice, 'Все...');
      imgOffice.EditValue := DM.id_office;
      imgOffice.Properties.OnChange := imgOfficePropertiesChange;
    end;





    pass_ := 1;
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
          pass_ := 0;
        end;
      end;
    End;

    if (DM.SelQ.RecordCount = 0) then
    begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      pass_ := 0;
    end;

    if (pass_ = 1) then
    begin
      CUR_DEPT_ID   := NULL;
      CUR_DEPT_NAME := NULL;

      imgOtdel.Properties.OnChange := nil;
      FillImgComboCxItm(DM.SelQ, imgOtdel, '');

      EditForm.Repaint;
      imgOtdel.EditValue := INPUT_DEPT_ID;
      CUR_DEPT_ID        := INPUT_DEPT_ID;
      CUR_DEPT_NAME      := imgOtdel.Properties.GetDisplayText(imgOtdel.EditValue,true);
      SPEC_SHOW          := true;

      AStoreKey     := path + '/ini/'+DM.SelectSession.Username+'_'+inttostr(CUR_DEPT_ID)+'.ini';
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

      imgOtdel.Properties.OnChange := imgOtdelPropertiesChange;
      gr_noms.SetFocus;
      imgOtdel.SetFocus;
      aGetRules.Execute;
      gr_noms.SetFocus;
    end;
    gr_noms_vBRIEF.Visible := not (GetOfficeID = DM.id_office);


             try
    //************************читаю чекбокс в перем.NOMSAIT********
          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.Add('SELECT REMOVE_FROM_SITE, NO_ORDER FROM nomenclature_site_marks');
          DM.SelQ.Active:=TRUE;
          NOMSAIT:= DM.SelQ.FieldByName('REMOVE_FROM_SITE').AsString;
          NOMNOORDER:= DM.SelQ.FieldByName('NO_ORDER').AsString;
          DM.SelQ.Open;
          DM.SelQ.Close;
     //***********************************************************
        except
        end;


  finally
    RegIni.Free;
  end;
end;


procedure TEditForm.FildsShow(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then (Sender as TMenuItem).Checked := false else (Sender as TMenuItem).Checked := true;
  gr_noms_v.Columns[(Sender as TMenuItem).Tag].Visible := (Sender as TMenuItem).Checked;
end;

//
//  Просмотр полной информации
//
procedure TEditForm.gr_noms_vDblClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  try
    frm_full_info.SelNom.Session := DM.SelectSession;
    frm_full_info.SelNom.ParamByName('N_ID').Value := DM.DictView.FieldByName('N_ID').AsInteger;
    frm_full_info.SelNom.Open;

    if (DM.DictView.FieldByName('IS_PHOTO').AsInteger = 1) then
    begin
      if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+DM.DictView.FieldByName('PHOTO').AsString) then
        frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+DM.DictView.FieldByName('PHOTO').AsString);
    end;

    frm_full_info.ShowModal;
  finally
    frm_full_info.Free;
  end;
end;


procedure TEditForm.gr_noms_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    try
      frm_full_info.SelNom.Session := DM.SelectSession;
      frm_full_info.SelNom.ParamByName('N_ID').Value := DM.DictView.FieldByName('N_ID').AsInteger;
      frm_full_info.SelNom.Open;

      if (DM.DictView.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+DM.DictView.FieldByName('PHOTO').AsString) then
          frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+DM.DictView.FieldByName('PHOTO').AsString);
      end;
      frm_full_info.ShowModal;
    finally
      frm_full_info.Free;
    end;
  end;
end;



//
// Указываем отдел и открываем данные с номенклатурой
procedure TEditForm.RepaintNom;
Begin
  cursor := crHourGlass;
  if (CUR_DEPT_ID > 0) and (imgOtdel.EditValue > 0) {(imgOtdel.CurText <> '')} then
  Begin
    with DM.DictView do
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
     LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
End;


//
//  Показываем форму со спецификацией и обнавляем данные
//
procedure TEditForm.RepaintSpec;
Begin
  if SPEC_SHOW then
    Begin
      with DM.NomSpec do if not Active then Open
                                       else Refresh;
      Panel4.Visible := true;
    end
  else
    Begin
      Panel4.Visible := false;
      DM.NomSpec.Close;
    End;
  cursor := crDefault;  
End;


//
//  Смена отдела
//
procedure TEditForm.imgOtdelPropertiesChange(Sender: TObject);
begin
  CUR_DEPT_ID        := imgOtdel.EditValue;
  CUR_DEPT_NAME      := imgOtdel.Properties.GetDisplayText(imgOtdel.EditValue,true);
  aGetRules.Execute;
  gr_noms.SetFocus;
end;


//
// Сохраняем грид в файле
//
procedure TEditForm.N2Click(Sender: TObject);
begin
    if (DM.SaveDialog.Execute = true) then
    begin
      case DM.SaveDialog.FilterIndex of
        1: begin ExportGridToText(DM.SaveDialog.FileName,gr_noms,true,true,';','','') end;
        2: begin ExportGridToHTML(DM.SaveDialog.FileName,gr_noms,true,true);  end;
        3: begin ExportGridToExcel(DM.SaveDialog.FileName,gr_noms,true,true,true); end;
      else
        ShowMessage('Неверный формат!');
      end;
    end;
end;


// Клонировать позицию
procedure TEditForm.nCloneClick(Sender: TObject);
begin
  if (DM.DictView.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    NewD          := TNewD.Create(Application);
    try
      NewD.editing  := false;
      NewD.N_ID_    := DM.DictView.FieldByName('N_ID').AsInteger;
      if NewD.ShowModal = mrOk then
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
    finally
      NewD.Free;
    end;
  end;
  gr_noms.SetFocus;
//  ShowMessage('clone');
end;

//
//  Группировки ----------------------------------------------------------------
//
procedure TEditForm.mi_groupbytypeClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vF_TYPE.GroupIndex       := 0;
  gr_noms_vF_SUB_TYPE.GroupIndex   := 1;
  mi_groupbytype.Checked  := true;
end;


procedure TEditForm.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_noms_v.DataController, 1);
end;



// Все выбранным проставить/убрать признак 8-го марта
procedure TEditForm.mnSet8MarchClick(Sender: TObject);
var j, i, n_id: integer;
begin
    if (gr_noms_v.Controller.SelectedRowCount > 0) then
    begin
      DM.StorProc.StoredProcName := 'NOMENCLATURE_PKG.UPDATE_SPECIFICATIONS';
      DM.StorProc.Prepare;
    End;
    j := 0;
    for I := 0 to gr_noms_v.Controller.SelectedRowCount - 1 do
    begin
      DM.StorProc.ParamByName('N_ID_IN').Value    := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
      DM.StorProc.ParamByName('param_IN').Value   := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vHS_VAL.Index];
      DM.StorProc.Execute;
      j:= i;
    end;
    N_ID := gr_noms_v.Controller.SelectedRows[j].Values[gr_noms_vN_ID.Index];

    gr_noms_v.Controller.ClearSelection;
    DM.DictView.Refresh;
    gr_noms_v.DataController.LocateByKey(n_id);
end;



procedure TEditForm.mi_groupbycountryClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vCOUNTRY.GroupIndex          := 0;
  mi_groupbycountry.Checked   := true;
end;


procedure TEditForm.mi_groupbysupplierClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vS_NAME_RU.GroupIndex        := 0;
  mi_groupbysupplier.Checked  := true;
end;


procedure TEditForm.mi_groupbyholcodeClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vHOL_TYPE.GroupIndex         := 0;
  mi_groupbyholcode.Checked   := true;
end;


procedure TEditForm.N17Click(Sender: TObject);
begin
  mi_groupbytype.Checked      := false;
  mi_groupbycountry.Checked   := false;
  mi_groupbysupplier.Checked  := false;
  mi_groupbyholcode.Checked   := false;

  gr_noms_vF_TYPE.GroupIndex     := -1;
  gr_noms_vF_SUB_TYPE.GroupIndex := -1;
  gr_noms_vCOUNTRY.GroupIndex    := -1;
  gr_noms_vS_NAME_RU.GroupIndex  := -1;
  gr_noms_vHOL_TYPE.GroupIndex   := -1;
end;
// -----------------------------------------------------------------------------


//
// Показываем / скрываем спецификации
//
procedure TEditForm.HideSpecExecute(Sender: TObject);
begin
  SPEC_SHOW         := not SPEC_SHOW;
  Action71.Checked  := SPEC_SHOW;
  RepaintSpec;
end;


//
//  Удалить спецификацию
//
procedure TEditForm.BitBtn4Click(Sender: TObject);
VAR N_ID, HS_IDS : integer;
    OutText, sc_id_: variant;
begin
  if MessageDlg('Вы действительно хотите удалить спецификацию?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
      N_ID := DM.DictView.FieldByName('N_ID').Value;
      HS_IDS := gr_spec_v.DataController.DataSet.FieldByName('HS_ID').AsInteger;
      sc_id_ := gr_spec_v.DataController.DataSet.FieldByName('SC_ID').Value;
      with DM.StorProc do
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
           DM.NomSpec.Refresh;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  gr_noms.SetFocus;
end;


//  Проверка одинаковых штрих-кодов поставщика в разных номенклатурах
procedure TEditForm.btnCheckBarCodeClick(Sender: TObject);
var str: string;
begin
    try
      with DM.StorProc do
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
          OpenForShowModal('Одинаковые коды поставщика в номенклатурах',str);
        end;
        Close;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;

end;



procedure TEditForm.cb_picsPropertiesEditValueChanged(Sender: TObject);
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

//
//  Добавить спецификацию
//
procedure TEditForm.add_specExecute(Sender: TObject);
begin
  AddSpec := TAddSpec.Create(Application);
  try
    AddSpec.InsertSpec(DM.DictView.FieldByName('N_ID').Value);
    gr_noms.SetFocus;
  finally
    AddSpec.Free;
  end;
end;


// Обработаем изображения
procedure TEditForm.aFotosExecute(Sender: TObject);
var v_file: string;
begin
  if MessageDlg('Вы действительно хотите запустить процедуру?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    DM.NomSpec.DisableControls;
    DM.DictView.DisableControls;
    DM.DictView.First;

    DM.StorProc.StoredProcName := 'nomenclature_pkg.identfy_photo';
    DM.StorProc.Prepare;
    while not DM.DictView.Eof do
    begin
{2016-01-18 Переходим на единый механизм идентификации фото
      if CUR_DEPT_ID = 62 then
        v_file := DM.DictView.FieldByName('NAME_CODE').AsString+'.jpg'
      else
}      
        v_file := DM.DictView.FieldByName('CODE').AsString+'.jpg';

      DM.StorProc.ParamByName('v_n_id').AsInteger := DM.DictView.FieldByName('N_ID').AsInteger;
      if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+v_file) then
         DM.StorProc.ParamByName('v_photo').AsString := v_file
      else
         DM.StorProc.ParamByName('v_photo').AsString := '';
      DM.StorProc.Execute;
      DM.DictView.Next;
    end;

    DM.SelectSession.Commit;
    pnl_msg.Free;
    aRefresh.Execute;
  finally
    DM.NomSpec.EnableControls;
    DM.DictView.EnableControls;
  end;
  End;
end;


procedure TEditForm.aGetRulesExecute(Sender: TObject);
begin
  with DM.SelQ do
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
         if FieldByName('C_EDIT').AsInteger=1 then ed := true else ed := false;
         if FieldByName('C_DEL').AsInteger=1 then del := true else del := false;
         if FieldByName('C_PRINT').AsInteger=1 then pr := true else pr := false;
         if FieldByName('C_ADDIT').AsInteger=1 then add := true else add := false;

        addn.Enabled    := ed;
        editn.Enabled   := ed;
        deleten.Enabled := del;
        copyn.Enabled   := ed;
        add_spec.Enabled:= ed;
        BitBtn4.Enabled := del;
        DictsF.Enabled  := true;
        aReload.Enabled := ed;
        aFotos.Enabled  := ed;
        N2.Enabled      := pr;
        SetParams.Enabled   := ed;
        mnSet8March.Enabled := ed;
        nClone.Enabled      := ed;
        aRefresh.Enabled    := true;

        bbSyncOne.Enabled := (ed and (DM.id_office = 1));
        bbSyncAll.Enabled := (ed and (DM.id_office = 1));
        bbSyncNomenclature.Enabled := (ed and (DM.id_office = 1));
        bbSyncNomenclatureLoad.Enabled := (ed and (DM.id_office > 1));

        RepaintNom;
        RepaintSpec;
      end
      else
      begin
        addn.Enabled    := false;
        editn.Enabled   := false;
        deleten.Enabled := false;
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
        DM.NomSpec.Close;
        DM.DictView.Close;
      end;
      Close;
      Filter := '';
      Filtered := false;
  End;
end;

//
// Синхронизация номенклатуры
//
procedure TEditForm.aReloadExecute(Sender: TObject);
begin
    try
      pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      with DM.StorProc do
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


//
// Обновление данных
//
procedure TEditForm.aRefreshExecute(Sender: TObject);
var id: integer;
begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    id := DM.DictView.FieldByName('N_ID').AsInteger;

    DM.NomSpec.MasterFields := '';
    DM.NomSpec.MasterSource := nil;

    DM.DictView.Refresh;
    gr_noms_v.DataController.LocateByKey(id);
//    DM.DictView.Locate('N_ID',id,[]);

    DM.NomSpec.MasterFields := 'N_ID';
    DM.NomSpec.MasterSource := DM.DictView_DS;

    DM.NomSpec.Refresh;
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


//
//  Открываем словари
//
procedure TEditForm.DictsFExecute(Sender: TObject);
begin
  if CUR_DEPT_ID = NULL then
         MessageBox(Handle, 'Не выбран текущий отдел!', 'Внимание', MB_ICONINFORMATION)
  else
  begin
    DictsEdit := TDictsEdit.Create(Application);
    try
      DictsEdit.ShowModal;
      if (DictsEdit.f_name_ru <> '') then
      begin
        gr_noms_v.DataController.Filter.Clear;
        gr_noms_vF_NAME_RU.DataBinding.AddToFilter(nil, foEqual, DictsEdit.f_name_ru);
        gr_noms_v.DataController.Filter.Active := True;
      end;
    finally
      DictsEdit.Free;
    end;
  end;
  gr_noms.SetFocus;
end;



// Отметить Ковалевскую позицию как проверенную
procedure TEditForm.tbnSetDoneClick(Sender: TObject);
begin
  if not DM.DictView.Active or (DM.DictView.RecordCount = 0) then exit;

  if (DM.id_office <> DM.DictView.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    DM.SelQ.Close;
    DM.SelQ.SQL.Text := 'update import_flowers_kov set CHECKED where NOM_CODE = '''+DM.DictView.FieldByName('code').AsString+'''';
    DM.SelQ.Execute;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;


// Синхронизация объемов
procedure TEditForm.btnSyncVolumeClick(Sender: TObject);
begin
  frmSyncVolume := TfrmSyncVolume.Create(Application);
  try
    frmSyncVolume.showmodal;
  finally
    frmSyncVolume.Free;
  end;
end;


procedure TEditForm.dxBarLargeButton8Click(Sender: TObject);
begin
  frm_help := Tfrm_help.Create(Application);
  try
    frm_help.pg_help.ActivePageIndex  := 1;
    frm_help.pg_help.HideTabs         := true;
    frm_help.Height                   := 500;
    frm_help.ShowModal;
  finally
    frm_help.free;
  end;
end;

procedure TEditForm.dxBarSubItem2Popup(Sender: TObject);
begin
  btnSyncVolume.Enabled := (CUR_DEPT_ID = 62); 
end;

//
// Добавляем номенклатуру
//
procedure TEditForm.AddNExecute(Sender: TObject);
begin
  if CUR_DEPT_ID = NULL then ShowMessage('Не выбран текущий отдел!')
  else
  Begin
    NewD          := TNewD.Create(Application);
    try
      NewD.editing  := false;
      NewD.N_ID_    := -1;
      if NewD.ShowModal = mrOk then
      begin
        gr_spec_v.DataController.DataSet.Refresh;
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
      end;
    finally
      NewD.Free;
    end;
  End;
  gr_noms.SetFocus;
end;


//
// Редактируем номенклатуру
//
procedure TEditForm.EditNExecute(Sender: TObject);
begin
  if (DM.DictView.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    NewD          := TNewD.Create(Application);
    try
      NewD.editing  := true;
      NewD.N_ID_    := DM.DictView.FieldByName('N_ID').AsInteger;
      if NewD.ShowModal = mrOk then
      begin
        gr_spec_v.DataController.DataSet.Refresh;
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
      end;
    finally
      NewD.Free;
    end;
  end;
  gr_noms.SetFocus;
end;


//
//  Удаляем номенклатуру
//
procedure TEditForm.DeleteNExecute(Sender: TObject);
VAR i, N_ID : integer;
    OutText : Variant;
begin
  if MessageDlg('Вы действительно хотите удалить номенклатуру?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    if (DM.id_office <> DM.DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    try
      for i:=0 to gr_noms_v.Controller.SelectedRowCount-1 do
      begin
        N_ID := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.index]; //  DM.DictView.FieldByName('N_ID').Value;
        with DM.StorProc do
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

      DM.DictView.Refresh;
      if cb_pics.EditValue = true then
        LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);

    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  gr_noms.SetFocus;
end;






//
//  Копирование номенклатуры
//
procedure TEditForm.CopyNExecute(Sender: TObject);
VAR
  N_ID, N_ID_OLD : Integer;
begin
  NewD         := TNewD.Create(Application);
  try
    with DM.StorProc do
    Begin
      N_ID_OLD := DM.DictView.FieldByName('N_ID').AsInteger;
      StoredProcName := 'NOMENCLATURE_PKG.COPY_NOMENCLATURE';
      Prepare;
      ParamByName('N_ID_IN').Value := DM.DictView.FieldByName('N_ID').Value;
      Execute;
      N_ID := ParamByName('N_ID_OUT').Value;
      DM.DictView.Refresh;
      gr_noms_v.DataController.LocateByKey(n_id);
      //DM.DictView.Locate('N_ID',N_ID,[]);
    End;
    NewD.editing := true;
    NewD.N_ID_   := N_ID;

    // Если отменили копирование, то
    if NewD.ShowModal = mrCancel then
    begin
       DM.SelectSession.Rollback;
       DM.DictView.Refresh;
       gr_noms_v.DataController.LocateByKey(n_id_old);
       //DM.DictView.Locate('N_ID',N_ID_OLD,[]);
    end
    else
    begin
       DM.SelectSession.Commit;
       DM.DictView.Refresh;
       gr_noms_v.DataController.LocateByKey(n_id);
       //DM.DictView.Locate('N_ID',N_ID,[]);
    end;
    gr_noms.SetFocus;

  finally
    NewD.Free;
  end;
end;



//
//  Всем выбранным проставить
//
procedure TEditForm.SetParamsExecute(Sender: TObject);
var i, j, N_ID: integer;
begin

SetParsF   := TSetParsF.Create(Application);
try
  if (SetParsF.ShowModal = mrOk) then
  begin
    if (gr_noms_v.Controller.SelectedRowCount > 0) then
    begin
      DM.StorProc.StoredProcName := 'NOMENCLATURE_PKG.UPDATE_PARAMS';
      DM.StorProc.Prepare;
    End;
    j := 0;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin NOMENCLATURE2_PKG.gen_h_code(:v_n_id, :v_id_dep); end;');
    DM.SelQ.ParamByName('v_id_dep').Value     := CUR_DEPT_ID;

    for I := 0 to gr_noms_v.Controller.SelectedRowCount - 1 do
    begin
      DM.StorProc.ParamByName('N_ID_IN').Value      := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
      DM.StorProc.ParamByName('FN_ID_IN').Value     := SetParsF.lookcombo_name.EditValue;
      DM.StorProc.ParamByName('FST_ID_IN').Value    := SetParsF.lookcombo_subtype.EditValue;
      DM.StorProc.ParamByName('C_ID_IN').Value      := SetParsF.lookcombo_country.EditValue;
      DM.StorProc.ParamByName('S_ID_IN').Value      := SetParsF.lookcombo_suplier.EditValue;
      DM.StorProc.ParamByName('COL_ID_IN').Value    := SetParsF.lookcombo_color.EditValue;
      DM.StorProc.ParamByName('LEN_IN').Value       := SetParsF.cb_length.EditValue;
      DM.StorProc.ParamByName('PACK_IN').Value      := SetParsF.ed_length.EditValue;
      DM.StorProc.ParamByName('PACK_HOL_IN').Value  := SetParsF.ed_length_hol.EditValue;
      DM.StorProc.ParamByName('HOL_TYPE_IN').Value  := SetParsF.imcb_holtype.EditText;
      DM.StorProc.ParamByName('WEIGTH_IN').Value    := SetParsF.ed_weight.EditValue;
      DM.StorProc.ParamByName('WEIGTHDRY_IN').Value := SetParsF.ed_weight_dry.EditValue;
      DM.StorProc.ParamByName('DIAMETR_IN').Value   := SetParsF.ed_width.EditValue;
      DM.StorProc.ParamByName('COEF_IN').Value      := SetParsF.ed_cust.EditValue;
      DM.StorProc.ParamByName('VBN_IN').Value       := SetParsF.imcb_units.EditValue;  // Теперь это единица измерения
      DM.StorProc.ParamByName('PHOTO_IN').AsString  := ''; // VarToStr(SetParsF.edit_file.EditValue);
{
      DM.StorProc.ParamByName('noprint_').Value     := BoolToInt(SetParsF.chbNoPrint.Checked);  // неучаствует в изменении
      DM.StorProc.ParamByName('notuse_').Value      := BoolToInt(SetParsF.chbNotUse.Checked);  // неучаствует в изменении
      DM.StorProc.ParamByName('nom_new_').Value     := BoolToInt(SetParsF.cb_new.Checked);  // новинка
      DM.StorProc.ParamByName('nom_start_').Value   := BoolToInt(SetParsF.cb_start.Checked);  // старт сезона
      DM.StorProc.ParamByName('nom_end_').Value     := BoolToInt(SetParsF.cb_end.Checked);  // конец сезона
}
      DM.StorProc.ParamByName('noprint_').Value     := SetParsF.chbNoPrint.EditValue;  // неучаствует в изменении
      DM.StorProc.ParamByName('notuse_').Value      := SetParsF.chbNotUse.EditValue;  // неучаствует в изменении
      DM.StorProc.ParamByName('nom_new_').Value     := SetParsF.cb_new.EditValue;  // новинка
      DM.StorProc.ParamByName('nom_start_').Value   := SetParsF.cb_start.EditValue;  // старт сезона
      DM.StorProc.ParamByName('nom_end_').Value     := SetParsF.cb_end.EditValue;  // конец сезона
      //DM.StorProc.ParamByName('remove_from_site').Value     := SetParsF.cb_sait.EditValue;  // сайт

      DM.StorProc.ParamByName('TNVED_IN').Value     := SetParsF.edTnVed.EditValue;
      DM.StorProc.ParamByName('CODENAME_IN').Value  := SetParsF.ed_holcodename.EditValue;
      DM.StorProc.ParamByName('HOLCOLOR_IN').Value  := SetParsF.ed_hol_color.EditValue;
      DM.StorProc.ParamByName('REMARKS_IN').Value   := SetParsF.ed_remarks.EditValue;

      DM.StorProc.Execute;

      if CUR_DEPT_ID = 62 then
      begin
        DM.SelQ.ParamByName('v_n_id').Value       := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        DM.SelQ.Execute;
      end;

      j:= i;
    end;
    N_ID := gr_noms_v.Controller.SelectedRows[j].Values[gr_noms_vN_ID.Index];

      //******** доб/удал данные ********
      if SetParsF.cb_sait.State<>cbsgrayed then begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('begin nomenclature2_pkg.set_nomenclature_site_marks(:v_n_id,'+IntToStr(BoolToInt(SetParsF.cb_sait.Checked))+','+IntToStr(BoolToInt(SetParsF.cb_no_order.Checked))+'); end;');
        for I := 0 to gr_noms_v.Controller.SelectedRowCount - 1 do begin
        DM.SelQ.ParamByName('v_n_id').Value       := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        DM.SelQ.execute;
        j:= i;
        end;
        DM.SelQ.Close;
      end;
     //*********************************


    gr_noms_v.Controller.ClearSelection;
    DM.DictView.Refresh;
    //DM.DictView.Locate('N_ID',N_ID,[]);
    gr_noms_v.DataController.LocateByKey(n_id);
  end;
  SetParsF.Free;


Except on E:Exception do
begin
  SetParsF.Free;
  MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
end;
end;

end;


// Синхронизация одной номенклатуры
procedure TEditForm.bbSyncOneClick(Sender: TObject);
var cc, i: integer;
    res_str: string;
begin
  if not DM.DictView.Active or DM.DictView.IsEmpty then exit;

  cc := gr_noms_v.Controller.SelectedRowCount;
  if cc = 0 then
  begin
    MessageBox(Handle, 'Необходимо выделить хотя бы одну запись', 'Внимание', MB_ICONWarning);
    exit;
  end;

  pnl_msg := TPanel(MakePanelLabel(gr_noms,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  try
    DM.DictView.DisableControls;
    cursor := crHourGlass;
    DM.StorProc.StoredProcName := 'SYNC_LINK_PKG.SYNC_NOMENCLATURE_ONE';
    DM.StorProc.Prepare;
    DM.StorProc.ParamByName('v_res').AsString := res_str;
    for I := 0 to cc - 1 do
    begin
      try
        DM.StorProc.ParamByName('v_nid').Value := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        DM.StorProc.Execute;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
    if DM.StorProc.ParamByName('v_res').AsString <> '' then
       MessageBox(Handle, PChar(DM.StorProc.ParamByName('v_res').AsString), 'Ошибка', MB_ICONERROR);
  finally
    DM.DictView.EnableControls;
    pnl_msg.Free;
    cursor := crDefault;
  end;

end;

// Синхронизация всей номенклатуры
procedure TEditForm.bbSyncAllClick(Sender: TObject);
var res_str: string;
begin
  if not DM.DictView.Active or DM.DictView.IsEmpty then exit;

  if MessageDlg('Операция может занять опредленное время. Продолжить?',mtConfirmation,[mbNo,mbYes],0) <> mrYes then Exit;

  pnl_msg := TPanel(MakePanelLabel(gr_noms,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;
  try
    try
      DM.StorProc.StoredProcName := 'NOMENCLATURE_PKG.sync_nomenclature';
      DM.StorProc.ExecProc;

      DM.StorProc.StoredProcName := 'SYNC_LINK_PKG.SYNC_ALL_NOMENCLATURE';
      DM.StorProc.Prepare;
      DM.StorProc.ParamByName('v_res').AsString := res_str;
      DM.StorProc.Execute;
      if DM.StorProc.ParamByName('v_res').AsString <> '' then
        MessageBox(Handle, PChar(DM.StorProc.ParamByName('v_res').AsString), 'Ошибка', MB_ICONERROR);
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
{
  DM.DictView.DisableControls;
  DM.DictView.First;
  try
    while not DM.DictView.Eof do
    begin
      bbSyncOneClick(Sender);
      DM.DictView.Next;
    end;
}
  finally
//    DM.DictView.EnableControls;
    pnl_msg.Free;
  end;
end;



// Показать неиспользуемые позиции
procedure TEditForm.btnShowNotUseClick(Sender: TObject);
begin
  gr_noms_v.DataController.Filter.Clear;
  gr_noms_vNOTUSE.DataBinding.AddToFilter(nil, foEqual, 1);
  gr_noms_v.DataController.Filter.Active := True;
end;

// Очистить фильтр
procedure TEditForm.btnClearFilterClick(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filtered := false;
  gr_noms_v.DataController.DataSet.Filter := '';
  gr_noms_v.DataController.Filter.Clear;
  gr_noms_v.DataController.Filter.Active := False;
end;


procedure TEditForm.btnPrintStickersClick(Sender: TObject);
var i, n_id: integer;
    vItemList: TcxFilterCriteriaItemList;
begin
  if DM.DictView.RecordCount = 0 then exit;

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
    dm.DictView.DisableControls;
    DM.repDict.LoadFromFile(path + '/Reps/stikers.fr3');
    DM.repDict.PrepareReport;
    DM.repDict.ShowReport;
  finally
    dm.DictView.EnableControls;
  end;

end;

//
//  Печать списка
//
procedure TEditForm.btnReportNomClick(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  try
    dm.DictView.DisableControls;
    dm.repDict.LoadFromFile(path+'Reps\dict_list.fr3');
    dm.repDict.PrepareReport;
    Memo1 := dm.repDict.FindObject('Memo3') as TfrxMemoView;
    Memo1.Text := CUR_DEPT_NAME;
    dm.repDict.ShowReport;
  finally
    dm.DictView.EnableControls;
  end;
end;


// Одинаковые штрих-кода поставщика
procedure TEditForm.bbSameBarcodeClick(Sender: TObject);
var filter_str : string;
begin
  with DM.SelQ do
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
procedure TEditForm.bbNoCodeNameClick(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'NAME_CODE is null';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;


// Позиции, определенные под предзаказ на 8-е марта
procedure TEditForm.bbEightMarchClick(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'hs_val is not null';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;


// Требующие проверки позиции
procedure TEditForm.bbNotCheckedNomClick(Sender: TObject);
begin
  gr_noms_v.DataController.DataSet.Filter := 'CHECKED = 0';
  gr_noms_v.DataController.DataSet.Filtered := true;
end;


// Одинаковые артикулы
procedure TEditForm.bbSameArticlesClick(Sender: TObject);
var filter_str : string;
begin
  with DM.SelQ do
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


// Клонировать
procedure TEditForm.mnCloneClick(Sender: TObject);
begin
  if (DM.DictView.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.DictView.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    NewD          := TNewD.Create(Application);
    try
      NewD.editing  := false;
      NewD.N_ID_    := DM.DictView.FieldByName('N_ID').AsInteger;
      if NewD.ShowModal = mrOk then
        if cb_pics.EditValue = true then
           LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
    finally
      NewD.Free;
    end;
  end;
  gr_noms.SetFocus;
end;


// Фильтрация списка номенклатуры по типам
procedure TEditForm.aFilterTypeExecute(Sender: TObject);
begin
  frm_choise_type := Tfrm_choise_type.Create(Application);
  frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(CUR_DEPT_ID);
  frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := 1;
  frm_choise_type.Q_FLOWER_TYPE.Open;
  if frm_choise_type.ShowModal = mrOk then
  begin
    gr_noms_v.DataController.Filter.Clear;
    gr_noms_vF_TYPE.DataBinding.AddToFilter(nil, foEqual, frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString);
    gr_noms_v.DataController.Filter.Active := True;
    gr_noms.SetFocus;
  end;
end;













//
//
// Импорт / экспорт номенклатуры
//
    procedure TEditForm.ins_to_file(cds: TOraQuery; var f: TextFile; sql_str: string; old_id: integer);
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

//
// Выгрузка синхронизации наоменклатуры в регионы
//
procedure TEditForm.bbSyncNomenclatureClick(Sender: TObject);
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
    //WriteLn(F_CSV, 'Alter session set NLS_NUMERIC_CHARACTERS=''.,'';');
    dm.SelQ.close;
    dm.SelQ.sql.Clear;
    dm.SelQ.sql.Add(sql_str);
    dm.SelQ.Execute;


    sql_str := 'begin sync_pkg.make_types_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_subtypes_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_flower_names_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_flower_name_trans_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_colors_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_countries_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_suppliers_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nomenclature_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nom_spec_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    sql_str := 'begin sync_pkg.make_nomenclature_sync_nom(:p_debt, :p_cursor); end;';
    ins_to_file(dm.SelQ, F_CSV, sql_str, 0);

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    screen.cursor := crDefault;
    CloseFile(F_CSV);
    pnl_msg.free;
    ShellExecute(Handle, nil, PChar(path+'\OUT\'+VarToStr(CUR_DEPT_ID)), nil, nil, SW_RESTORE);
  end;

end;


procedure TEditForm.bbSyncNomenclatureLoadClick(Sender: TObject);
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
      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('Alter session set NLS_NUMERIC_CHARACTERS=''.,''');
      dm.SelQ.Execute;


      i := 1;
      while not Eof(F_CSV) do
      begin
        ReadLn(F_CSV, proc_text);
        if (trim(proc_text) <> '') then
        begin
          try
            with dm.SelQ do
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

      dm.SelQ.close;
      dm.SelQ.sql.Clear;
      dm.SelQ.sql.Add('begin nomenclature_pkg.sync_nomenclature; end;');
      dm.SelQ.Execute;
      dm.SelQ.close;

    finally
      pnl_msg.Free;
      screen.cursor := crDefault;
      CloseFile(F_CSV);
      DM.SelectSession.Commit;
    end;

    aRefresh.Execute;
    MessageBox (Handle,'Файл импортирован успешно.', 'Результат', MB_ICONINFORMATION);

  end;
end;



end.
