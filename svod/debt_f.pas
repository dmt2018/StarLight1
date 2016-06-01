unit debt_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ActnList, DB,
  StrUtils, Menus, Registry, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Mask, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxButtonEdit,
  cxBlobEdit, dxBar, ImgList, dxBarExtItems, cxBarEditItem, cxGridExportLink,
  cxCheckBox, cxLabel, jpeg, cxImage, Math, ShellApi, PI_Library_reg,
  cxImageComboBox, PI_Library;

type
  Tdebt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    aRaznos: TAction;
    aEdit: TAction;
    aDel: TAction;
    aRaznosSelected: TAction;
    aEnter: TAction;
    aRaznosOther: TAction;
    aNotPrimary: TAction;
    PopupMenu1: TPopupMenu;
    aSelectAll: TMenuItem;
    aSaveAll: TMenuItem;
    SaveDialog1: TSaveDialog;
    gr_debets: TcxGrid;
    gr_debets_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    _gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    _gr_debets_vOPERATION: TcxGridDBBandedColumn;
    gr_debets_vNICK: TcxGridDBBandedColumn;
    gr_debets_vFIO: TcxGridDBBandedColumn;
    gr_debets_vT_SHORT: TcxGridDBBandedColumn;
    gr_debets_vINVOICE: TcxGridDBBandedColumn;
    gr_debets_vSUMM: TcxGridDBBandedColumn;
    gr_debets_vIN_RUB: TcxGridDBBandedColumn;
    gr_debets_vOUT_RUB: TcxGridDBBandedColumn;
    gr_debets_vIN_USD: TcxGridDBBandedColumn;
    gr_debets_vOUT_USD: TcxGridDBBandedColumn;
    gr_debets_vIN_EU: TcxGridDBBandedColumn;
    gr_debets_vOUT_EU: TcxGridDBBandedColumn;
    gr_debets_vINFO: TcxGridDBBandedColumn;
    _gr_debets_vDDATE_IN: TcxGridDBBandedColumn;
    _gr_cashbook_vDDATE_DONE: TcxGridDBBandedColumn;
    _gr_cashbook_vT_LONG: TcxGridDBBandedColumn;
    _gr_cashbook_vR_PAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vR_DDATE: TcxGridDBBandedColumn;
    gr_debets_vCORRECTOR: TcxGridDBBandedColumn;
    gr_debets_l: TcxGridLevel;
    gr_debets_vID_CASH: TcxGridDBBandedColumn;
    gr_debets_vCHECKED: TcxGridDBBandedColumn;
    gr_debets_vCORRECTOR2: TcxGridDBBandedColumn;
    gr_debets_vCOR_DATE: TcxGridDBBandedColumn;
    gr_debets_vID_DEBETORS: TcxGridDBBandedColumn;
    gr_debets_vGROUP_NAME: TcxGridDBBandedColumn;
    bm_debets: TdxBarManager;
    bm_debrts_menu: TdxBar;
    bm_debrts_legend: TdxBar;
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
    btn_help: TdxBarLargeButton;
    bb_statistic: TdxBarButton;
    dxBarStatic9: TdxBarStatic;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarStatic10: TdxBarStatic;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    bst_deleted: TdxBarStatic;
    sr_debets: TcxStyleRepository;
    st_green: TcxStyle;
    st_otdel: TcxStyle;
    st_kass: TcxStyle;
    st_notkass: TcxStyle;
    stSelect: TcxStyle;
    stSelect2: TcxStyle;
    cxImageList1: TcxImageList;
    bdc_bot_debets: TdxBarDockControl;
    bdc_top_depets: TdxBarDockControl;
    aRefresh: TAction;
    aCanselNotPrimary: TAction;
    Label12: TLabel;
    Label7: TLabel;
    cu_f_usd: TcxCurrencyEdit;
    Label8: TLabel;
    cu_f_eur: TcxCurrencyEdit;
    Label9: TLabel;
    cu_f_usdeur: TcxCurrencyEdit;
    Label11: TLabel;
    cu_f_eurusd: TcxCurrencyEdit;
    aClearFilter: TAction;
    Label10: TLabel;
    Label13: TLabel;
    dedit_begin: TcxDateEdit;
    dedit_end: TcxDateEdit;
    Label5: TLabel;
    chb_raznos: TcxCheckBox;
    chb_notneed: TcxCheckBox;
    chb_bezdolg: TcxCheckBox;
    chb_notraznos: TcxCheckBox;
    gr_debets_vD_CHECKED: TcxGridDBBandedColumn;
    N1: TMenuItem;
    N2: TMenuItem;
    aCheckAll: TAction;
    gr_debets_vID_CLIENTS_GROUPS: TcxGridDBBandedColumn;
    gr_debets_vIS_LOCK: TcxGridDBBandedColumn;
    gr_debets_vIS_LOC_FOR: TcxGridDBBandedColumn;
    gr_debets_vIS_SALE: TcxGridDBBandedColumn;
    dxBarStatic11: TdxBarStatic;
    st_lock: TcxStyle;
    dxBarStatic12: TdxBarStatic;
    gr_debets_vOLD_ID_DEBETORS: TcxGridDBBandedColumn;
    aRaznosFunc: TAction;
    st_bad: TcxStyle;
    dxBarStatic13: TdxBarStatic;
    dxBarStatic14: TdxBarStatic;
    gr_debets_vRUBL: TcxGridDBBandedColumn;
    gr_debets_vBEZNAL: TcxGridDBBandedColumn;
    gr_debets_vID_OFFICE: TcxGridDBBandedColumn;
    gr_debets_vBRIEF: TcxGridDBBandedColumn;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    gr_debets_vCASH_SEQ: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure aSelectAllClick(Sender: TObject);
    procedure aSaveAllClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aRaznosExecute(Sender: TObject);
    procedure aRaznosSelectedExecute(Sender: TObject);
    procedure aRaznosOtherExecute(Sender: TObject);
    procedure bb_closeClick(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure aNotPrimaryExecute(Sender: TObject);
    procedure aCanselNotPrimaryExecute(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure gr_debets_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aCheckAllExecute(Sender: TObject);
    procedure aSetPrimary(param_: integer);
    procedure dedit_beginPropertiesEditValueChanged(Sender: TObject);
    procedure chb_raznosClick(Sender: TObject);
    procedure chb_notneedClick(Sender: TObject);
    procedure chb_bezdolgClick(Sender: TObject);
    procedure chb_notraznosClick(Sender: TObject);
    procedure chb_clear(param_: integer; val_: integer);
    procedure dedit_beginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gr_debets_vDblClick(Sender: TObject);
    procedure aRaznosFuncExecute(Sender: TObject);
    procedure gr_debets_vKeyPress(Sender: TObject; var Key: Char);
    procedure gr_debets_vCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gr_cashbook_vR_DDATEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure _gr_debets_vDDATE_INGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure _gr_cashbook_vDDATE_DONEGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    pnl_msg: TPanel;
    { Private declarations }
  public
    { Public declarations }
    procedure do_check;
  end;

var
  debt: Tdebt;

implementation

uses DataM, svod_f, import_debet_f, deb_edit_f, nakl_edit_f, UFullInfo;

{$R *.dfm}

//
//  Очистить фильтры
//
procedure Tdebt.aClearFilterExecute(Sender: TObject);
begin
  gr_debets_v.DataController.Filter.Clear;
  gr_debets_v.DataController.Filter.Active := false;
  gr_debets.SetFocus;
end;


//
//  Закрываем
//
procedure Tdebt.bb_closeClick(Sender: TObject);
begin
  Close;
end;


procedure Tdebt.chb_clear(param_: integer; val_: integer);
begin
  if (val_ = 1) then
	  gr_debets_vD_CHECKED.DataBinding.AddToFilter(nil,foEqual,param_,IntToStr(param_),true)
  else
	  gr_debets_vD_CHECKED.DataBinding.Filter.Clear;

  gr_debets_v.DataController.Filter.Active := true;
  gr_debets.SetFocus;
end;

procedure Tdebt.chb_raznosClick(Sender: TObject);
begin
  chb_notneed.EditValue   := 0;
  chb_notraznos.EditValue := 0;
  chb_raznos.PostEditValue;
  chb_clear(chb_raznos.Tag, chb_raznos.EditValue);
end;

procedure Tdebt.chb_notneedClick(Sender: TObject);
begin
  chb_raznos.EditValue    := 0;
  chb_notraznos.EditValue := 0;
  chb_notneed.PostEditValue;
  chb_clear(chb_notneed.Tag, chb_notneed.EditValue);
end;

procedure Tdebt.chb_notraznosClick(Sender: TObject);
begin
  chb_notneed.EditValue := 0;
  chb_raznos.EditValue  := 0;
  chb_notraznos.PostEditValue;
  chb_clear(chb_notraznos.Tag, chb_notraznos.EditValue);
end;

procedure Tdebt.chb_bezdolgClick(Sender: TObject);
begin
  chb_bezdolg.PostEditValue;
  if (chb_bezdolg.EditValue = 1) then
	  gr_debets_vID_DEBETORS.DataBinding.AddToFilter(nil,foEqual,0,'нет',true)
  else
	  gr_debets_vID_DEBETORS.DataBinding.Filter.Clear;

  gr_debets_v.DataController.Filter.Active := true;
  gr_debets.SetFocus;
end;


//
//  Выделяем все
//
procedure Tdebt.aSelectAllClick(Sender: TObject);
begin
  gr_debets_v.DataController.SelectAll;
end;


//
//  Сохраняем выделенное
//
procedure Tdebt.aSaveAllClick(Sender: TObject);
begin
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, gr_debets, True, False, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    gr_debets.SetFocus;
  except
    NULL;
  end;
end;


//
//  Открываем окно
//
procedure Tdebt.FormShow(Sender: TObject);
var
  path, AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AStoreKey     := path + '/ini/debets_'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'debets';
  AOptions      := [];
  gr_debets_v.RestoreFromRegistry(AStoreKey, False, False, AOptions, ASaveViewName);

  gr_debets_vBRIEF.Visible := not (GetOfficeID = DM.id_office); //((GetOfficeID = 1) and (DM.id_office > 1));

  gr_debets_v.OptionsData.Editing := dm.b_edit;
  aEdit.Enabled                   := dm.b_edit;
  aDel.Enabled                    := dm.b_delete;
  aRaznos.Enabled                 := dm.b_edit;
  aRaznosSelected.Enabled         := dm.b_edit;
  aRaznosOther.Enabled            := dm.b_edit;
  aNotPrimary.Enabled             := dm.b_edit;
  aCanselNotPrimary.Enabled       := dm.b_edit;
  gr_debets_vIS_SALE.Visible      := dm.b_addit;
end;


//
//  Закрывем окно
//
procedure Tdebt.FormClose(Sender: TObject; var Action: TCloseAction);
var
  path, AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AStoreKey     := path + '/ini/debets_'+DM.OraSession1.Username+'.ini';
  ASaveViewName := 'debets';
  AOptions := [];
  gr_debets_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;


//
//  Отрисовка грида
//
procedure Tdebt.gr_debets_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin

  if (not AViewInfo.Selected) and (gr_debets_v.DataController.DataSet.RecordCount > 0) then
  begin

    // Красим чужой кассовый день
    val1  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('R_DDATE').Index
                );
    if (DM.Q_CASH_Sr_ddate.AsDateTime <> dedit_begin.EditValue) then
         ACanvas.Brush.Color := st_notkass.Color;

  // Отрисовываем цветом клиентов у которых долг. книга закрыта
    val1  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('is_lock').Index
                );
    val2  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('IS_LOC_FOR').Index
                );
	  if ((val1 = 1) or (val2 = 1)) and ( (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FIO') ) then
         ACanvas.Brush.Color := st_lock.Color;


  // Отрисовываем разные даты кассового дня и даты проводки
    val1  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('R_DDATE').Index
                );
    val2  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('DDATE_IN').Index
                );
	  if (val1 <> NULL) and (val2 <> NULL) and ( Trunc(VarToDateTime(val1)) <> Trunc(VarToDateTime(val2)) ) and ( (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'R_DDATE') or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'DDATE_IN') or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'INVOICE') ) then
         ACanvas.Brush.Color := clRed;



  // Отрисовываем цветом клиентов у которых нет долговой книги
    val1  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('id_debetors').Index
                );
	  if (val1 = 0) and ( (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FIO') ) then
         ACanvas.Brush.Color := st_kass.Color;


    val1  := gr_debets_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debets_v.GetColumnByFieldName('D_CHECKED').Index
                );
	  if (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK')
      or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FIO')
      or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'CHECKED')
      or (gr_debets_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'GROUP_NAME')
      then
    begin
      // Если разнесенная операция
      if (val1 = 1) then
         ACanvas.Brush.Color := st_otdel.Color;
      // Если не нужная операция
      if (val1 = 2) then
         ACanvas.Brush.Color := st_green.Color;
    end;

  end;

end;


//
//  Полная информация
//
procedure Tdebt.gr_debets_vDblClick(Sender: TObject);
begin
  if (gr_debets_v.DataController.DataSet.Active = true) and (gr_debets_v.DataController.DataSet.RecordCount >0) and (gr_debets_vID_DEBETORS.EditValue > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    try
      frm_full_info.CDS_DEPS.ParamByName('ID_DEBETORS').AsInteger := gr_debets_vOLD_ID_DEBETORS.EditValue;
      frm_full_info.CDS_DEPS.Open;
      frm_full_info.cxDBVerticalGrid1SALES.Visible := DM.b_addit;
      frm_full_info.ShowModal;
    finally
      frm_full_info.CDS_DEPS.Close;
      frm_full_info.Free;
    end;

  end;
end;


//
//  Удаляем данные
//
procedure Tdebt.aDelExecute(Sender: TObject);
var idd: integer;
begin
  if (gr_debets.Visible) and (gr_debets_v.DataController.DataSet.RecordCount > 0) and (gr_debets_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger > 0) and (aDel.Enabled = true) then
  begin
        if MessageDlg('Вы действительно хотите удалить накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          try
            idd := DM.Q_CASH_SID_CASH.AsInteger;

            DM.Q_SQL.SQL.Clear;
            DM.Q_SQL.SQL.Add('begin cash_pkg.remove_svod_data(:id_, :fio_); end;');
            DM.Q_SQL.Params.ParamByName('id_').AsInteger  := idd;
            DM.Q_SQL.Params.ParamByName('fio_').AsString  := DM.OraSession1.Username;
            DM.Q_SQL.Execute;

            DM.Q_CASH_S.Next;
            idd := DM.Q_CASH_SID_CASH.AsInteger;
            aRefresh.Execute;
            gr_debets_v.DataController.LocateByKey(idd);
//            DM.Q_CASH_S.Locate('ID_CASH',idd,[]);

            gr_debets.SetFocus;
          except
            on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          End;
        end;
  end
  else MessageBox(Handle, 'Нет данных для удаления!', 'Внимание', MB_ICONWARNING);
end;


//
//  Редактируем данные
//
procedure Tdebt.aEditExecute(Sender: TObject);
begin

  if (DM.Q_CASH_SID_CASH.AsInteger > 0) and (aEdit.Enabled = true ) then
  begin

    nakl_edit := Tnakl_edit.Create(Application);
    try
      DM.Q_CLIENTS.Filter   := '';
      DM.Q_CLIENTS.Filtered := false;
      DM.Q_CLIENTS.Open;
      DM.OPERATIONS.Open;
      nakl_edit.state       := 2;

      nakl_edit.edit_serchnick.Enabled    := false;
      nakl_edit.edit_serchfio.Enabled     := false;
      DM.Q_CLIENTS.Locate('ID_CLIENTS',_gr_cashbook_vID_CLIENTS.EditValue,[]);
      nakl_edit.gr_clients.Enabled        := false;

      nakl_edit.imcb_operations.Tag       := gr_debets_vID_CASH.EditValue;
      nakl_edit.imcb_operations.EditValue := _gr_debets_vOPERATION.EditValue;
      nakl_edit.edit_invoice.EditValue    := gr_debets_vINVOICE.EditValue;
      nakl_edit.edit_invoice.Enabled      := false;

      nakl_edit.edit_summ.EditValue       := gr_debets_vSUMM.EditValue;
      nakl_edit.edit_in_ru.EditValue      := gr_debets_vIN_RUB.EditValue;
      nakl_edit.edit_out_ru.EditValue     := gr_debets_vOUT_RUB.EditValue;
      nakl_edit.edit_in_dol.EditValue     := gr_debets_vIN_USD.EditValue;
      nakl_edit.edit_out_dol.EditValue    := gr_debets_vOUT_USD.EditValue;
      nakl_edit.edit_in_ev.EditValue      := gr_debets_vIN_EU.EditValue;
      nakl_edit.edit_out_ev.EditValue     := gr_debets_vOUT_EU.EditValue;
      nakl_edit.edit_info.EditValue       := gr_debets_vINFO.EditValue;
      nakl_edit.RadioGroup1.ItemIndex     := (DM.Q_CASH_S.FieldByName('R_PAYDESK').AsInteger - 1);

      nakl_edit.BitBtn2.Enabled           := false;
      nakl_edit.BitBtn3.Enabled           := false;
      nakl_edit.BitBtn4.Enabled           := false;
      nakl_edit.BitBtn5.Enabled           := false;

      nakl_edit.corrector                 := DM.OraSession1.Username;
      nakl_edit.id_                       := DM.Q_CASH_SID_CASH.AsInteger;
      nakl_edit.cur_date                  := dedit_begin.EditValue;
      nakl_edit.de_kassdate.EditValue     := gr_cashbook_vR_DDATE.EditValue;

      if (nakl_edit.showmodal = mrOK) then
      begin
        aRefresh.Execute;
        gr_debets_v.DataController.LocateByKey(nakl_edit.id_);
//        DM.Q_CASH_S.Locate('ID_CASH',nakl_edit.id_,[]);
      end;

      DM.Q_CLIENTS.Close;
      DM.OPERATIONS.Close;
      nakl_edit.Free;
      gr_debets.SetFocus;

    except
      on E: Exception do
      begin
        nakl_edit.Free;
        MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      end;
    End;

  end // if DM.CASH_TMPID_CASH_TMP.AsInteger > 0 then
  else
  begin
    MessageBox(Handle, 'Нет данных для редактирования!', 'Внимание', MB_ICONWARNING);
    gr_debets.SetFocus;
  end;

end;


//
//  Обновим данные
//
procedure Tdebt.aRefreshExecute(Sender: TObject);
begin
  try
    dedit_begin.PostEditValue;
    dedit_end.PostEditValue;

    if (dedit_begin.EditValue <> NULL) and (dedit_end.EditValue <> NULL) then
    begin
      if (dedit_begin.Date > dedit_end.Date) then
      begin
        ShowMessage('Первая дата не может быть больше второй даты');
        exit;
      end;

      pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
      pnl_msg.Repaint;

      screen.Cursor := crHourGlass;
      DM.Q_CASH_S.Close;
      DM.Q_CASH_S.ParamByName('p_date1').AsDate    := dedit_begin.EditValue;
      DM.Q_CASH_S.ParamByName('p_date2').AsDate    := dedit_end.EditValue;
      DM.Q_CASH_S.Open;

      pnl_msg.Free;
      screen.Cursor := crDefault;
    end;
  except
    on E: Exception do
    begin
      pnl_msg.Free;
      screen.Cursor := crDefault;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  End;
end;


//
//  Отмечаем все
//
procedure Tdebt.aCheckAllExecute(Sender: TObject);
var i,j,k: integer;
begin
  screen.Cursor := crHourGlass;

  pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  if N2.Checked = true then begin N2.Checked := false; i:=0; end else begin N2.Checked := true; i:=1; end;

  gr_debets_v.DataController.DataSet.DisableControls;

  for k := 0 to gr_debets_v.ViewData.RowCount-1 do
  begin
      j := gr_debets_v.ViewData.Rows[k].RecordIndex;
      gr_debets_v.DataController.LocateByKey(gr_debets_v.ViewData.DataController.Values[j,gr_debets_v.GetColumnByFieldName('ID_CASH').Index]);
      gr_debets_v.DataController.DataSet.Edit;
      gr_debets_v.DataController.DataSet.FieldByName('CHECKED').AsInteger := i;
      gr_debets_v.DataController.DataSet.Post;
  end;
  gr_debets_v.DataController.DataSet.First;
  gr_debets_v.DataController.DataSet.EnableControls;

  pnl_msg.Free;
  screen.Cursor := crDefault;
  gr_debets.SetFocus;

end;


//
//  Отмечаем
//
procedure Tdebt.aSetPrimary(param_: integer);
var post_, i, j, id_: integer;
begin
  try
    id_ := DM.Q_CASH_SID_CASH.AsInteger;

    post_ := 0;
    gr_debets_v.DataController.DataSet.First;

//    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
//    pnl_msg.Repaint;

    screen.Cursor := crHourGlass;
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('UPDATE CASH SET D_CHECKED='+IntToStr(param_)+', date_change=sysdate WHERE ID_CASH=:P1');

    gr_debets_v.DataController.DataSet.DisableControls;

    for i:=0 to gr_debets_v.DataController.DataSet.RecordCount do
    begin
      if (gr_debets_v.DataController.DataSet.FieldByName('CHECKED').AsInteger = 1) then
      begin
        DM.Q_SQL.ParamByName('P1').Value := gr_debets_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger;
        DM.Q_SQL.Execute;
        post_ := 1;
      end;
      gr_debets_v.DataController.DataSet.Next;
    end;

    if (post_ = 1) then
      DM.OraSession1.Commit;

    aRefresh.Execute;
    gr_debets_v.DataController.LocateByKey(id_);
//    DM.Q_CASH_S.Locate('ID_CASH',id_,[]);
    gr_debets_v.DataController.DataSet.EnableControls;
    N2.Checked    := false;

    screen.Cursor := crDefault;

    gr_debets.SetFocus;
  except
    on E: Exception do
      begin
//        pnl_msg.Free;
        MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        gr_debets_v.DataController.DataSet.EnableControls;
        screen.Cursor := crDefault;
      end;
  End;
end;

//
//  Отмечаем не нужные долги
//
procedure Tdebt.aNotPrimaryExecute(Sender: TObject);
var post_, i, id_: integer;
begin
  aSetPrimary(2);
end;


//
//  Убираем признак НЕ НУЖНОЕ
//
procedure Tdebt.aCanselNotPrimaryExecute(Sender: TObject);
var sql: string;
    ind3, i: integer;
begin
  aSetPrimary(0);
end;


//
//  При смене 1-й даты проверяем валидность 2-й даты
//
procedure Tdebt.dedit_beginPropertiesEditValueChanged(Sender: TObject);
begin
  if (dedit_end.EditValue <> NULL) and (dedit_end.EditValue < dedit_begin.EditValue) then
    dedit_end.EditValue := dedit_begin.EditValue;
end;


//
// По ЕНТЕР обновляем данные
//
procedure Tdebt.dedit_beginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    dedit_begin.PostEditValue;
    dedit_end.PostEditValue;
    aRefresh.Execute;
  end;
end;


//
//  Постим данные по CTRL+Enter
//
procedure Tdebt.aEnterExecute(Sender: TObject);
begin
  If DM.Q_CASH_S.State = dsEdit then DM.Q_CASH_S.Post;// else
//  if DM.Q_CASH_S.State = dsBrowse then DBGridEh1.EditorMode := true;
end;
























procedure Tdebt.aRaznosFuncExecute(Sender: TObject);
var sql, sql_new, str: string;
    chk, ind, param : integer;
    id_deb_, id_cl_: integer;
    debet: real;
begin
  chk     := 0;
  param   := 0;
  id_deb_ := 0;
  id_cl_  := 0;

// Проверки

  // Делаем проверку на уже разнесенный долг
  if DM.Q_CASH_SD_CHECKED.AsInteger = 1 then
  begin
    if MessageDlg('Долг уже разнесен! Хотите повторно разнести?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      chk := 1
    else DM.Q_CASH_S.Next;
  end
  else chk := 1;

  // Делаем проверку на пометку НЕНУЖНОЕ
  if DM.Q_CASH_SD_CHECKED.AsInteger = 2 then begin chk := 0; DM.Q_CASH_S.Next; end;

  // Делаем проверку на закрытого дебитора в общей группе.
  if (DM.Q_CASH_SIS_LOCK.AsInteger = 1) and (DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger = 2) then begin chk := 0; DM.Q_CASH_S.Next; end;

// ----------------------

  // Разносим долговую запись
  if (chk = 1) and (DM.Q_CASH_SID_CASH.AsInteger > 0) then
  begin
    // Если нет дебеторской карты
    if (DM.Q_CASH_SID_DEBETORS.AsInteger = 0) then
    begin
        chk := 0;
        if MessageDlg('Клиент '+DM.Q_CASH_SNICK.AsString+' не содержит долговой книги!'+#10#13+'Создать книгу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          id_cl_ := DM.Q_CASH_SID_CLIENTS.AsInteger;
          // Создаем деб. карту
          deb_edit := Tdeb_edit.Create(Application);
          try
            DM.Q_CLIENTS.Filter   := '';
            DM.Q_CLIENTS.Filtered := false;
            DM.Q_CLIENTS.Open;
            DM.Q_CLIENTS.Locate('ID_CLIENTS',id_cl_,[]);
            if (deb_edit.ShowModal = mrOk) then
            begin
                id_deb_ := deb_edit.gr_clients.Tag;
                chk     := 1;
            end
            else chk := 0;
          finally
            deb_edit.Free;
          end;
          DM.Q_CLIENTS.Close;
        end;
    end
    else
    // Дебеторская карта есть, то проверим не закрыта ли она
    begin
      if (DM.Q_CASH_SIS_LOCK.AsInteger = 0) then
      begin
        id_deb_ := DM.Q_CASH_SID_DEBETORS.AsInteger; // Запомним найденного дебитора
        id_cl_  := DM.Q_CASH_SID_CLIENTS.AsInteger; // Запомним найденного дебитора
      end;
      if (DM.Q_CASH_SIS_LOCK.AsInteger = 1) and (DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger <> 2) then
      begin
        id_deb_ := DM.Q_CASH_SID_DEBETORS.AsInteger; // Запомним найденного дебитора
        id_cl_  := DM.Q_CASH_SID_CLIENTS.AsInteger; // Запомним найденного дебитора
      end;
    end;

    if (chk = 1) and ((id_deb_ > 0) or (DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger <> 2)) then
    begin
      import_debet := Timport_debet.Create(Application);
      try
         import_debet.Panel12.Visible := true;
         import_debet.gr_deps.Font.Size  := gr_debets.Font.Size;
         import_debet.st_notactive.Font.Size  := gr_debets.Font.Size;



         DM.CDS_CL_DEBETORS.Close;
         DM.CDS_CL_DEBETORS.ParamByName('ID_CL_GROUPS_').AsInteger := DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger;
         if (DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger = 2) then
           DM.CDS_CL_DEBETORS.ParamByName('ID_CL_').AsInteger := id_cl_
         else
           DM.CDS_CL_DEBETORS.ParamByName('ID_CL_').AsInteger := 0;
         DM.CDS_CL_DEBETORS.Open;
//         DM.CDS_CL_DEBETORS.Locate('ID_CLIENTS',DM.Q_CASH_SID_CLIENTS.AsInteger,[]);
         DM.CDS_CL_DEBETORS.Locate('ID_DEBETORS',id_deb_,[]);

         if (DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger <> 2) then
         begin
           import_debet.gr_debetors.Visible := true;
           import_debet.cb_showall.Visible  := true;
         end;
         DM.Q_CLIENT_DEBT.Open;

         import_debet.cb_showall.Tag     := DM.Q_CASH_SID_CLIENTS_GROUPS.AsInteger;
         import_debet.Label1.Caption     := 'Разнос долгов за кассовые дни с ' + VarToStr(dedit_begin.EditValue) + ' по ' + VarToStr(dedit_end.EditValue);
         import_debet.cu_f_usd.EditValue := cu_f_usd.EditValue;
         import_debet.cu_f_eur.EditValue := cu_f_eur.EditValue;
         import_debet.cu_f_usdeur.EditValue := cu_f_usdeur.EditValue;
         import_debet.cu_f_eurusd.EditValue := cu_f_eurusd.EditValue;
         import_debet.cxInfoEdit.EditValue  := DM.Q_CASH_SINFO.AsString;

         // Подтянем скидку
         if (DM.Q_CASH_SIS_SALE.AsInteger = 1) then
         begin
            DM.Q_SQL.Close;
            DM.Q_SQL.SQL.Clear;
            sql := 'begin cash_pkg.get_sale(:id_client_, :ddate_, :otdel_, :discount_, :discount_proc_); end;';
            DM.Q_SQL.SQL.Add(sql);
            DM.Q_SQL.ParamByName('id_client_').AsInteger := id_cl_;
            DM.Q_SQL.ParamByName('ddate_').AsDate        := DM.Q_CASH_SR_DDATE.AsDateTime;
            DM.Q_SQL.ParamByName('otdel_').AsInteger     := DM.Q_CASH_SOPERATION.AsInteger;
            DM.Q_SQL.ParamByName('discount_').Value      := 0;
            DM.Q_SQL.ParamByName('discount_proc_').Value := 0;
            DM.Q_SQL.Execute;

            import_debet.cu_discount.EditValue      := DM.Q_SQL.ParamByName('discount_').Value;
            import_debet.cu_discount_proc.EditValue := DM.Q_SQL.ParamByName('discount_proc_').Value;
            DM.Q_SQL.Close;
         end;

//         import_debet.cu_discount.EditValue      := DM.Q_SQL.ParamByName('discount_').Value;
         with import_debet do
         begin
           if ( DM.Q_CASH_SOPERATION.AsInteger = 3 ) then
           begin
             debet := RoundTo(
              (
                DM.Q_CASH_SSUMM.AsCurrency
                - (
                  DM.Q_CASH_SIN_USD.AsCurrency * cu_f_usd.EditValue
                  )
                + (
                  DM.Q_CASH_SOUT_USD.AsCurrency * cu_f_usd.EditValue
                  )
                - (
                  DM.Q_CASH_SIN_EU.AsCurrency * cu_f_eur.EditValue
                  )
                + (
                  DM.Q_CASH_SOUT_EU.AsCurrency * cu_f_eur.EditValue
                  )
                - DM.Q_CASH_SIN_RUB.AsCurrency
                + DM.Q_CASH_SOUT_RUB.AsCurrency
              )
              , -2);
              //if (DM.Q_CASH_SSUMM.AsCurrency = 0) and (DM.Q_CASH_SIN_RUB.AsCurrency = DM.Q_CASH_SOUT_RUB.AsCurrency) then
              // 2015-02-05 Е.В. Нет, приходник на 50. Из них 27 - нал, 23 - пластик. Не учитываем сумму расхода
              if (DM.Q_CASH_SSUMM.AsCurrency = 0) then
              begin
                if (DM.Q_CASH_SIN_RUB.AsCurrency > 0) then debet := 0-DM.Q_CASH_SIN_RUB.AsCurrency;
                if (DM.Q_CASH_SOUT_RUB.AsCurrency > 0) then debet := DM.Q_CASH_SOUT_RUB.AsCurrency;
                if (DM.Q_CASH_SIN_RUB.AsCurrency > 0) and (DM.Q_CASH_SOUT_RUB.AsCurrency > 0) and (DM.Q_CASH_SIN_RUB.AsCurrency = DM.Q_CASH_SOUT_RUB.AsCurrency) then debet := 0-DM.Q_CASH_SIN_RUB.AsCurrency;
                //cu_debet.EditValue := debet;  Пока не надо, т.к. и так работает
              end;
           end
           else

          if (DM.Q_CASH_SIN_RUB.AsCurrency = DM.Q_CASH_SOUT_RUB.AsCurrency) and ((DM.Q_CASH_SIN_USD.AsCurrency > 0) or (DM.Q_CASH_SIN_EU.AsCurrency > 0)) then
            // операция по конвертации и оплата в одном
            debet := RoundTo( (DM.Q_CASH_SSUMM.AsCurrency - DM.Q_CASH_SIN_RUB.AsCurrency), -2)
          else
             debet := RoundTo(
              (
                DM.Q_CASH_SSUMM.AsCurrency - DM.Q_CASH_SIN_RUB.AsCurrency
              )
              , -2);

{
             debet := RoundTo(
              (
                DM.Q_CASH_SSUMM.AsCurrency
                - (
                  DM.Q_CASH_SIN_USD.AsCurrency * cu_f_usd.EditValue
                  )
                - (
                  DM.Q_CASH_SIN_EU.AsCurrency * cu_f_eur.EditValue
                  )
                - DM.Q_CASH_SIN_RUB.AsCurrency
              )
              , -2);
}
           cu_debet.EditValue := debet - cu_discount.EditValue - RoundTo(( (cu_summ.EditValue/100) * cu_discount_proc.EditValue ),-2);
         end;


        // Если дебеторская карточка существует на клиента, то автоматически разносим долг
        if DM.CDS_CL_DEBETORS.FieldByName('ID_DEBETORS').AsInteger = id_deb_ then
        begin
          import_debet.aNew.Execute;
        end;

        import_debet.showmodal;
      finally
        import_debet.Free;
      end;
    end;
  end;
end;


//
//  Разнос по F5
//
procedure Tdebt.aRaznosExecute(Sender: TObject);
var ind, i, id_deb: integer;
begin
  id_deb := DM.Q_CASH_SID_DEBETORS.AsInteger;
  ind := gr_debets_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger;
  i   := gr_debets_v.Controller.FocusedRowIndex;
  aRaznosFunc.Execute;

  if (id_deb > 0) then
    DM.Q_CASH_S.RefreshRecord
  else
  begin
    DM.Q_CASH_S.Close;
    DM.Q_CASH_S.Open;
  end;

  gr_debets_v.Controller.FocusNextRecordWithSelection(i, True, False, True, True);
  gr_debets.SetFocus;
end;




//
//  Разнос выделенного по F6
//
procedure Tdebt.aRaznosSelectedExecute(Sender: TObject);
var sql: string;
    ind, ind2, ind3, i, chk, operation_: integer;
    SUMM_, IN_RUB_, OUT_RUB_, IN_USD_, OUT_USD_, IN_EU_, OUT_EU_, discount_, discount_proc_, debet: real;

begin

  gr_debets_v.DataController.DataSet.Filter := 'CHECKED = 1';
  gr_debets_v.DataController.DataSet.Filtered := true;
  ind3 := gr_debets_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger;

    for i:=0 to gr_debets_v.DataController.DataSet.RecordCount-1 do
    begin
      if (gr_debets_v.DataController.DataSet.FieldByName('D_CHECKED').AsInteger = 0) and (gr_debets_v.DataController.DataSet.FieldByName('ID_DEBETORS').AsInteger > 0) then
      begin

      try
        ind3      := gr_debets_v.DataController.DataSet.FieldByName('ID_CASH').AsInteger;
        discount_ := 0;
        discount_proc_ := 0;

        SUMM_      := gr_debets_v.DataController.DataSet.FieldByName('SUMM').AsCurrency; //gr_debets_vSUMM.EditValue;
        IN_RUB_    := gr_debets_v.DataController.DataSet.FieldByName('IN_RUB').AsCurrency; //gr_debets_vIN_RUB.EditValue;
        OUT_RUB_   := gr_debets_v.DataController.DataSet.FieldByName('OUT_RUB').AsCurrency; //gr_debets_vOUT_RUB.EditValue;
        IN_USD_    := gr_debets_v.DataController.DataSet.FieldByName('IN_USD').AsCurrency; //gr_debets_vIN_USD.EditValue;
        OUT_USD_   := gr_debets_v.DataController.DataSet.FieldByName('OUT_USD').AsCurrency; //gr_debets_vOUT_USD.EditValue;
        IN_EU_     := gr_debets_v.DataController.DataSet.FieldByName('IN_EU').AsCurrency; //gr_debets_vIN_EU.EditValue;
        OUT_EU_    := gr_debets_v.DataController.DataSet.FieldByName('OUT_EU').AsCurrency; //gr_debets_vOUT_EU.EditValue;
        operation_ := gr_debets_v.DataController.DataSet.FieldByName('OPERATION').AsInteger;

        // Подтянем скидку
        if (DM.Q_CASH_SIS_SALE.AsInteger = 1) then
        begin
            DM.Q_SQL.Close;
            DM.Q_SQL.SQL.Clear;
            sql := 'begin cash_pkg.get_sale(:id_client_, :ddate_, :otdel_, :discount_, :discount_proc_); end;';
            DM.Q_SQL.SQL.Add(sql);
            DM.Q_SQL.ParamByName('id_client_').AsInteger := DM.Q_CASH_SID_CLIENTS.AsInteger;
            DM.Q_SQL.ParamByName('ddate_').AsDate        := DM.Q_CASH_SR_DDATE.AsDateTime;
            DM.Q_SQL.ParamByName('otdel_').AsInteger     := DM.Q_CASH_SOPERATION.AsInteger;
            DM.Q_SQL.ParamByName('discount_').Value      := 0;
            DM.Q_SQL.ParamByName('discount_proc_').Value := 0;
            DM.Q_SQL.Execute;

            discount_      := DM.Q_SQL.ParamByName('discount_').Value;
            discount_proc_ := DM.Q_SQL.ParamByName('discount_proc_').Value;
            DM.Q_SQL.Close;
        end;  // if (DM.Q_CASH_SIS_SALE.AsInteger = 1) then

        ind  := 0;
        ind2 := gr_debets_v.DataController.DataSet.FieldByName('ID_DEBETORS').AsInteger;

        DM.Q_SQL.SQL.Clear;
        sql := 'begin cash_pkg.edit_debetor_list(:id_cl_debetor_, :id_debetor_, :debet_, :rate_, :date_vvod_, :date_oper_, :operation_, :invoice_, :summ_, :in_ru_, :info_, :discount_, :discount_proc_, :v_office); end;';
        DM.Q_SQL.SQL.Add(sql);
        DM.Q_SQL.Prepare;

        DM.Q_SQL.ParamByName('id_cl_debetor_').Value  := 0;  // P1
        DM.Q_SQL.ParamByName('id_debetor_').Value     := ind2; // P1


        if (operation_ = 3) then
        begin
           debet := RoundTo(
            (
              SUMM_
              - (
                IN_USD_ * cu_f_usd.EditValue
                )
              + (
                OUT_USD_ * cu_f_usd.EditValue
                )
              - (
                IN_EU_ * cu_f_eur.EditValue
                )
              + (
                OUT_EU_ * cu_f_eur.EditValue
                )
              - IN_RUB_
              + OUT_RUB_
            )
            , -2);
            //if (SUMM_ = 0) and (IN_RUB_ = OUT_RUB_) then
            // 2015-02-05 Е.В. Нет, приходник на 50. Из них 27 - нал, 23 - пластик. Не учитываем сумму расхода
            if (SUMM_ = 0) then
            begin
              if (IN_RUB_ > 0) then debet := 0-IN_RUB_;
              if (OUT_RUB_ > 0) then debet := OUT_RUB_;
              if (IN_RUB_ > 0) and (OUT_RUB_ > 0) and (IN_RUB_ = OUT_RUB_) then debet := 0-IN_RUB_;
            end;
        end
        else
          if (IN_RUB_ = OUT_RUB_) and ((IN_USD_ > 0) or (IN_EU_ > 0)) then
            // операция по конвертации и оплата в одном
            debet := RoundTo( (SUMM_ - IN_RUB_), -2)
          else
             debet := RoundTo(
              (
                SUMM_ - IN_RUB_
              )
              , -2);

{ 2015-03-08 Старый вариант. Операции по конвертации валюты и оплаты в одном не правильно считались
           debet := RoundTo(
            (
              SUMM_
              - (
                IN_USD_ * cu_f_usd.EditValue
                )
              - (
                IN_EU_ * cu_f_eur.EditValue
                )
              - IN_RUB_
            )
            , -2);
}

        DM.Q_SQL.ParamByName('debet_').AsCurrency := debet - discount_ - RoundTo(( (SUMM_/100) * discount_proc_ ),-2);

           
        // Рассчет рублевый клиентов или безналичных
        if ((gr_debets_v.DataController.DataSet.FieldByName('RUBL').AsInteger = 1) or (gr_debets_v.DataController.DataSet.FieldByName('BEZNAL').AsInteger = 1)) then
        begin
           DM.Q_SQL.ParamByName('rate_').AsCurrency := 1;
        end
        else
        // Рассчет валютных клиентов
        begin
              DM.Q_SQL.ParamByName('rate_').AsCurrency := cu_f_eur.EditValue;
        end;


        DM.Q_SQL.ParamByName('date_vvod_').AsDateTime := DM.Q_CASH_SDDATE_IN.AsDateTime; // P4
        if DM.Q_CASH_SDDATE_DONE.IsNull = true then DM.Q_SQL.ParamByName('date_oper_').AsDateTime := DM.Q_CASH_SDDATE_IN.AsDateTime
        else DM.Q_SQL.ParamByName('date_oper_').AsDateTime := DM.Q_CASH_SDDATE_DONE.AsDateTime;


        DM.Q_SQL.ParamByName('operation_').Value      := DM.Q_CASH_SOPERATION.AsInteger;       // P6
        DM.Q_SQL.ParamByName('invoice_').value        := DM.Q_CASH_SINVOICE.AsString;// P7
        DM.Q_SQL.ParamByName('summ_').Value           := SUMM_;             // P8

        if (gr_debets_vIN_RUB.EditValue = 0) or (gr_debets_vIN_RUB.EditValue = null) then
          DM.Q_SQL.ParamByName('in_ru_').AsCurrency := 0 - OUT_RUB_
        else
          DM.Q_SQL.ParamByName('in_ru_').AsCurrency := IN_RUB_;

        DM.Q_SQL.ParamByName('info_').AsString        := DM.Q_CASH_SINFO.AsString;   // P10


        DM.Q_SQL.ParamByName('discount_').Value       := discount_;
        DM.Q_SQL.ParamByName('discount_proc_').Value  := discount_proc_;
        DM.Q_SQL.ParamByName('v_office').Value        := dm.id_office;
         DM.Q_SQL.Execute;

        ind := DM.Q_SQL.ParamByName('id_cl_debetor_').AsInteger;

        sql := 'UPDATE CASH SET D_CHECKED=1, date_change=sysdate WHERE ID_CASH=:P1';
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add(sql);
        //ind3 := DM.Q_CASH_SID_CASH.AsInteger;
        DM.Q_SQL.ParamByName('P1').Value := ind3;
        DM.Q_SQL.Execute;

        with DM.OraStoredProc1 do
        begin
          Close;
          StoredProcName := 'SET_DEBT_ON_DEBETORS';
          Prepare;
          ParamByName('ID_DEBT').AsInteger := ind2;
          Execute;
        end;

      except
        on E: Exception do
        begin
           MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
        end;
      end;

      end; // if (gr_debets_v.DataController.DataSet.FieldByName('CHECKED').AsInteger = 0) then
      gr_debets_v.DataController.DataSet.Next;

    end;

//  gr_debets_vCHECKED.DataBinding.Filter.Clear;
  gr_debets_v.DataController.DataSet.Filter := '';
  gr_debets_v.DataController.DataSet.Filtered := false;

  DM.Q_CASH_S.Close;
  DM.Q_CASH_S.Open;
  DM.Q_CASH_S.Locate('ID_CASH',ind3,[]);
  gr_debets.SetFocus;

end;


//
//  Разнос отдельного по F7
//
procedure Tdebt.aRaznosOtherExecute(Sender: TObject);
var i, ind3, id :integer;
begin
  id := DM.Q_CASH_SID_CASH.AsInteger;

  gr_debets_v.DataController.DataSet.Filter := 'CHECKED = 1';
  gr_debets_v.DataController.DataSet.Filtered := true;

    for i:=0 to gr_debets_v.DataController.DataSet.RecordCount-1 do
    begin
      aRaznosFunc.Execute;
      gr_debets_v.DataController.DataSet.Next;
    end;

  gr_debets_v.DataController.DataSet.Filter := '';
  gr_debets_v.DataController.DataSet.Filtered := false;

  DM.Q_CASH_S.Close;
  DM.Q_CASH_S.Open;
  DM.Q_CASH_S.Locate('ID_CASH',id,[]);
  gr_debets.SetFocus;
end;



procedure Tdebt.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=' ') then
  begin
//   DBGridEh1CellClick(DBGridEh1.Columns.Items[0]);
   DM.Q_CASH_S.Next;
  end;
end;


//
//  Нажимаем пробел на гриде
//
procedure Tdebt.gr_debets_vKeyPress(Sender: TObject; var Key: Char);
var val: integer;
begin
  if (Key=' ') then
    do_check;
end;


procedure Tdebt.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debets_v.DataController, 0);
end;

procedure Tdebt.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debets_v.DataController, 1);
end;

//
//  Кликаем на гриде в чекбоксе
//
procedure Tdebt.gr_debets_vCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var val: integer;
begin
  if (ACellViewInfo.Item.Name = 'gr_debets_vCHECKED') then
  begin
    do_check;
    AHandled := true;
  end;
end;

procedure Tdebt.do_check;
var val: integer;
begin
  try
     val := DM.Q_CASH_SCHECKED.AsInteger;
     DM.Q_CASH_S.Edit;
     DM.Q_CASH_SCHECKED.AsInteger := abs(val - 1);
     DM.Q_CASH_S.Post;
     gr_debets_v.ViewData.DataController.GotoNext;
//     DM.Q_CASH_S.Next;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;




procedure Tdebt.gr_cashbook_vR_DDATEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy', ARecord.Values[gr_cashbook_vR_DDATE.Index]);
end;


procedure Tdebt._gr_cashbook_vDDATE_DONEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn:ss', ARecord.Values[_gr_cashbook_vDDATE_DONE.Index]);
end;

procedure Tdebt._gr_debets_vDDATE_INGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn:ss', ARecord.Values[_gr_debets_vDDATE_IN.Index]);
end;


end.
