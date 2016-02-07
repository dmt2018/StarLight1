unit UStore;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, cxButtonEdit, cxBlobEdit, cxTextEdit, cxImageComboBox,
  cxDropDownEdit, cxCheckBox, ImgList, cxGraphics, dxBar, dxBarExtItems,
  cxBarEditItem, cxClasses, ActnList, PI_Library_reg, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImage,
  cxCurrencyEdit, cxGridLevel, cxControls, cxGrid, MemDS, DBAccess, Ora,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, Menus, ExtCtrls, PI_Library,
  cxSplitter, cxGridDBTableView;

type
  TfrmStore = class(TForm)
    ActionList1: TActionList;
    aExit: TAction;
    SyncData: TAction;
    aRefresh: TAction;
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
    imgOtdel: TcxBarEditItem;
    dxBarLargeButton9: TdxBarLargeButton;
    bc_fontsize: TcxBarEditItem;
    cb_pics: TcxBarEditItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    imgOffice: TcxBarEditItem;
    bbSyncOne: TdxBarButton;
    bbSyncAll: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    cxImageList1: TcxImageList;
    gvr_nomenclature: TcxGridViewRepository;
    gr_noms_v: TcxGridDBBandedTableView;
    gr_image: TcxGridDBBandedColumn;
    gr_noms_vCOMPILED_NAME_OTDEL: TcxGridDBBandedColumn;
    gr_noms_vH_CODE: TcxGridDBBandedColumn;
    gr_noms_vIS_PHOTO: TcxGridDBBandedColumn;
    gr_noms_vHOL_TYPE: TcxGridDBBandedColumn;
    gr_noms_vREMARKS: TcxGridDBBandedColumn;
    gr_noms_vS_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vF_TYPE: TcxGridDBBandedColumn;
    gr_noms_vF_SUB_TYPE: TcxGridDBBandedColumn;
    gr_noms_vCOUNTRY: TcxGridDBBandedColumn;
    gr_noms_vCOLOUR: TcxGridDBBandedColumn;
    gr_noms_vCODE: TcxGridDBBandedColumn;
    gr_noms_vLEN: TcxGridDBBandedColumn;
    gr_noms_vDIAMETER: TcxGridDBBandedColumn;
    gr_noms_vN_ID: TcxGridDBBandedColumn;
    gr_noms_vFN_ID: TcxGridDBBandedColumn;
    gr_noms_vspesification: TcxGridDBBandedColumn;
    DictView: TOraQuery;
    DictView_DS: TDataSource;
    gr_noms: TcxGrid;
    gr_noms_l: TcxGridLevel;
    pm_main: TPopupMenu;
    mi_groupbytype: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    nFields: TMenuItem;
    DictViewN_ID: TFloatField;
    DictViewFULL_NAME: TStringField;
    DictViewF_TYPE: TStringField;
    DictViewF_SUB_TYPE: TStringField;
    DictViewPHOTO: TStringField;
    DictViewIS_PHOTO: TFloatField;
    DictViewCODE: TStringField;
    DictViewH_CODE: TStringField;
    DictViewLEN: TIntegerField;
    DictViewPACK: TIntegerField;
    DictViewCOLOUR: TStringField;
    DictViewCOUNTRY: TStringField;
    DictViewQUANTITY_MSK: TFloatField;
    DictViewQUANTITY_SAMARA: TFloatField;
    DictViewQUANTITY_KAZAN: TFloatField;
    DictViewQUANTITY_YARIK: TFloatField;
    DictViewPRICE: TFloatField;
    DictViewFT_ID: TFloatField;
    DictViewFST_ID: TFloatField;
    DictViewC_ID: TFloatField;
    DictViewCOL_ID: TFloatField;
    DictViewS_ID: TFloatField;
    DictViewS_NAME_RU: TStringField;
    DictViewQUANTITY_PRICE: TFloatField;
    DictViewRESERV_MSK: TFloatField;
    DictViewRESERV_SAMARA: TFloatField;
    DictViewRESERV_KAZAN: TFloatField;
    DictViewRESERV_YARIK: TFloatField;
    DictViewSPESIFICATION: TStringField;
    DictViewHOL_TYPE: TStringField;
    DictViewHOL_SUB_TYPE: TStringField;
    DictViewNBUTTON: TFloatField;
    DictViewBUT_NAME: TStringField;
    DictViewCOMPILED_NAME_OTDEL: TStringField;
    DictViewREMARKS: TStringField;
    DictViewDIAMETER: TFloatField;
    gr_noms_vFULL_NAME: TcxGridDBBandedColumn;
    gr_noms_vPHOTO: TcxGridDBBandedColumn;
    gr_noms_vPACK: TcxGridDBBandedColumn;
    gr_noms_vQUANTITY_MSK: TcxGridDBBandedColumn;
    gr_noms_vQUANTITY_SAMARA: TcxGridDBBandedColumn;
    gr_noms_vQUANTITY_KAZAN: TcxGridDBBandedColumn;
    gr_noms_vQUANTITY_YARIK: TcxGridDBBandedColumn;
    gr_noms_vPRICE: TcxGridDBBandedColumn;
    gr_noms_vFT_ID: TcxGridDBBandedColumn;
    gr_noms_vFST_ID: TcxGridDBBandedColumn;
    gr_noms_vC_ID: TcxGridDBBandedColumn;
    gr_noms_vCOL_ID: TcxGridDBBandedColumn;
    gr_noms_vS_ID: TcxGridDBBandedColumn;
    gr_noms_vQUANTITY_PRICE: TcxGridDBBandedColumn;
    gr_noms_vRESERV_MSK: TcxGridDBBandedColumn;
    gr_noms_vRESERV_SAMARA: TcxGridDBBandedColumn;
    gr_noms_vRESERV_KAZAN: TcxGridDBBandedColumn;
    gr_noms_vRESERV_YARIK: TcxGridDBBandedColumn;
    gr_noms_vHOL_SUB_TYPE: TcxGridDBBandedColumn;
    gr_noms_vNBUTTON: TcxGridDBBandedColumn;
    gr_noms_vBUT_NAME: TcxGridDBBandedColumn;
    srMain: TcxStyleRepository;
    stNewBG: TcxStyle;
    mi_groupbyholcode: TMenuItem;
    grStatDBV: TcxGridDBTableView;
    grStatL: TcxGridLevel;
    grStat: TcxGrid;
    cdsStat: TOraQuery;
    dsStat: TOraDataSource;
    cdsStatF_TYPE: TStringField;
    cdsStatQUANTITY_MSK: TFloatField;
    cdsStatQUANTITY_SAMARA: TFloatField;
    cdsStatQUANTITY_KAZAN: TFloatField;
    cdsStatQUANTITY_YARIK: TFloatField;
    cdsStatRESERV_MSK: TFloatField;
    cdsStatRESERV_SAMARA: TFloatField;
    cdsStatRESERV_KAZAN: TFloatField;
    cdsStatRESERV_YARIK: TFloatField;
    grStatDBVF_TYPE: TcxGridDBColumn;
    grStatDBVQUANTITY_MSK: TcxGridDBColumn;
    grStatDBVQUANTITY_SAMARA: TcxGridDBColumn;
    grStatDBVQUANTITY_KAZAN: TcxGridDBColumn;
    grStatDBVQUANTITY_YARIK: TcxGridDBColumn;
    grStatDBVRESERV_MSK: TcxGridDBColumn;
    grStatDBVRESERV_SAMARA: TcxGridDBColumn;
    grStatDBVRESERV_KAZAN: TcxGridDBColumn;
    grStatDBVRESERV_YARIK: TcxGridDBColumn;
    spMain: TcxSplitter;
    DictViewQUANTITY_CHEREP: TFloatField;
    DictViewRESERV_CHEREP: TFloatField;
    gr_noms_vQUANTITY_CHEREP: TcxGridDBBandedColumn;
    gr_noms_vRESERV_CHEREP: TcxGridDBBandedColumn;
    cdsStatQUANTITY_CHEREP: TFloatField;
    cdsStatRESERV_CHEREP: TFloatField;
    grStatDBVQUANTITY_CHEREP: TcxGridDBColumn;
    grStatDBVRESERV_CHEREP: TcxGridDBColumn;
    cdsStatQUANTITY_UFA: TFloatField;
    cdsStatRESERV_UFA: TFloatField;
    DictViewQUANTITY_UFA: TFloatField;
    DictViewRESERV_UFA: TFloatField;
    grStatDBVQUANTITY_UFA: TcxGridDBColumn;
    grStatDBVRESERV_UFA: TcxGridDBColumn;
    gr_noms_vQUANTITY_UFA: TcxGridDBBandedColumn;
    gr_noms_vRESERV_UFA: TcxGridDBBandedColumn;
    procedure aExitExecute(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FildsShow(Sender: TObject);
    procedure gr_noms_vDblClick(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_picsPropertiesEditValueChanged(Sender: TObject);
    procedure gr_noms_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gr_noms_vDataControllerFilterChanged(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure SyncDataExecute(Sender: TObject);
    procedure mi_groupbytypeClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure mi_groupbyholcodeClick(Sender: TObject);
  private
    path: string;
    pnl_msg: TPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStore: TfrmStore;

implementation

uses DataModule, UFullInfo, Globals;

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

procedure TfrmStore.gr_noms_vDataControllerFilterChanged(Sender: TObject);
begin
  if cb_pics.EditValue = true then
     LoadPictures(gr_noms_v.DataController, gr_noms_vPHOTO.Index, gr_image.Index);
end;








procedure TfrmStore.aExitExecute(Sender: TObject);
begin
  Close;
end;


procedure TfrmStore.aRefreshExecute(Sender: TObject);
begin
  pnl_msg := TPanel(MakePanelLabel(frmStore,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    DictView.Close;
    DictView.ParamByName('ID_DEP_').AsInteger := CUR_DEPT_ID;
    DictView.Open;

    cdsStat.Close;
    cdsStat.ParamByName('ID_DEP').AsInteger := CUR_DEPT_ID;
    cdsStat.Open;

    gr_noms.SetFocus;
  finally
    pnl_msg.Free;
  end;
end;

procedure TfrmStore.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_noms.Font.Size := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(path+'ini/'+DM.stat_session.Username+'_font.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;


procedure TfrmStore.cb_picsPropertiesEditValueChanged(Sender: TObject);
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


procedure TfrmStore.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AStoreKey     := path + '/ini/'+DM.stat_session.Username+'_'+inttostr(imgOtdel.EditValue)+'.ini';
  ASaveViewName := 'store';
  AOptions := [];
  gr_noms_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


procedure TfrmStore.FormShow(Sender: TObject);
var pass_, i : integer;
    RegIni : TIniFile;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
    newitem: Tmenuitem;
begin
  RegIni := TIniFile.Create(path+'ini/'+DM.stat_session.Username+'_font.ini');
  try
    path  := ExtractFilePath(Application.ExeName);

    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '9');
    gr_noms.Font.Size := bc_fontsize.EditValue;

    RegIni := TIniFile.Create(path+'statistic.ini');
    def_folder := RegIni.ReadString('folder', 'Value', '..');

    pass_ := 1;
    with DM.SQL_Q do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin admins.get_deps_on_user(:login_, :cursor_); end;');
        ParamByName('login_').Value := UpperCase(DM.stat_session.Username);
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

    if (DM.SQL_Q.RecordCount = 0) then
    begin
      MessageBox(Handle, 'У Вас не указан ни один отдел продаж. Обратитесь в менеджерам по персоналу.', 'Внимание!', MB_ICONWARNING);
      pass_ := 0;
    end;

    if (pass_ = 1) then
    begin
      aRefresh.Enabled := true;
      SyncData.Enabled := true;


      imgOtdel.Properties.OnChange := nil;
      FillImgComboCxItm(DM.SQL_Q, imgOtdel, '');

      imgOtdel.EditValue := 62;

      AStoreKey     := path + '/ini/'+DM.stat_session.Username+'_'+inttostr(imgOtdel.EditValue)+'.ini';
      ASaveViewName := 'store';
      AOptions := [];
      gr_noms_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

      for i := 0 to gr_noms_v.ColumnCount - 1 do
      begin
        if (gr_noms_v.Columns[i].Position.BandIndex > 4) and (gr_noms_v.Columns[i].Position.BandIndex < 7) then
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
      gr_noms.SetFocus;
      CUR_DEPT_ID := imgOtdel.EditValue;
    end;

  finally
    RegIni.Free;
  end;
end;


// Просмотр полной информации
procedure TfrmStore.gr_noms_vDblClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  try
    frm_full_info.SelNom.Session := DM.stat_session;
    frm_full_info.SelNom.ParamByName('N_ID').Value := DictView.FieldByName('N_ID').AsInteger;
    frm_full_info.SelNom.Open;

    if (DictView.FieldByName('IS_PHOTO').AsInteger = 1) then
    begin
      if FileExists(def_folder+IntToStr(imgOtdel.EditValue)+'\'+DictView.FieldByName('PHOTO').AsString) then
        frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(imgOtdel.EditValue)+'\'+DictView.FieldByName('PHOTO').AsString);
    end;

    frm_full_info.ShowModal;
  finally
    frm_full_info.Free;
  end;
end;

procedure TfrmStore.gr_noms_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    try
      frm_full_info.SelNom.Session := DM.stat_session;
      frm_full_info.SelNom.ParamByName('N_ID').Value := DictView.FieldByName('N_ID').AsInteger;
      frm_full_info.SelNom.Open;

      if (DictView.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(imgOtdel.EditValue)+'\'+DictView.FieldByName('PHOTO').AsString) then
          frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(imgOtdel.EditValue)+'\'+DictView.FieldByName('PHOTO').AsString);
      end;
      frm_full_info.ShowModal;
    finally
      frm_full_info.Free;
    end;
  end;
end;



procedure TfrmStore.imgOtdelPropertiesChange(Sender: TObject);
begin
  CUR_DEPT_ID := imgOtdel.EditValue;
  aRefresh.Execute;
end;


procedure TfrmStore.mi_groupbyholcodeClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vHOL_TYPE.GroupIndex         := 0;
  mi_groupbyholcode.Checked   := true;
end;

procedure TfrmStore.mi_groupbytypeClick(Sender: TObject);
begin
  N17Click(Self);
  gr_noms_vF_TYPE.GroupIndex       := 0;
  gr_noms_vF_SUB_TYPE.GroupIndex   := 1;
  mi_groupbytype.Checked  := true;
end;

procedure TfrmStore.N17Click(Sender: TObject);
begin
  mi_groupbytype.Checked      := false;
  mi_groupbyholcode.Checked   := false;

  gr_noms_vF_TYPE.GroupIndex     := -1;
  gr_noms_vF_SUB_TYPE.GroupIndex := -1;
  gr_noms_vCOUNTRY.GroupIndex    := -1;
  gr_noms_vS_NAME_RU.GroupIndex  := -1;
  gr_noms_vHOL_TYPE.GroupIndex   := -1;
end;

procedure TfrmStore.SyncDataExecute(Sender: TObject);
begin
  pnl_msg := TPanel(MakePanelLabel(frmStore,300,100,'Идет обработка запроса'));
  try
    pnl_msg.Repaint;

    with DM.SQL_Q do
    Begin
      try
        Close;
        SQL.Clear;
        SQL.Add('begin statistic.collect_store; end;');
        Execute;
      except
        on E: Exception do
           MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
      end;
    End;
  finally
    pnl_msg.Free;
  end;
end;

procedure TfrmStore.FildsShow(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked then (Sender as TMenuItem).Checked := false else (Sender as TMenuItem).Checked := true;
  gr_noms_v.Columns[(Sender as TMenuItem).Tag].Visible := (Sender as TMenuItem).Checked;
end;



end.
