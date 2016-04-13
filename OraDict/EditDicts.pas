unit EditDicts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  ImgList,Pi_Library_reg,Pi_Library,
  ActnList,ora, Menus, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, cxSplitter, cxLabel, jpeg, cxContainer, cxImage,
  cxImageComboBox, cxDBLookupComboBox, cxCurrencyEdit;

type
  TDictsEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    TabSheet7: TTabSheet;
    CheckImList: TImageList;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel12: TPanel;
    Panel19: TPanel;
    Panel15: TPanel;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aChangeType: TAction;
    aRefresh: TAction;
    Panel20: TPanel;
    Panel13: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel9: TPanel;
    Panel25: TPanel;
    BitBtn1: TcxButton;
    BitBtn3: TcxButton;
    BitBtn34: TcxButton;
    BitBtn35: TcxButton;
    BitBtn36: TcxButton;
    SpeedButton1: TcxButton;
    BitBtn4: TcxButton;
    BitBtn5: TcxButton;
    BitBtn6: TcxButton;
    BitBtn7: TcxButton;
    BitBtn8: TcxButton;
    BitBtn9: TcxButton;
    BitBtn10: TcxButton;
    BitBtn11: TcxButton;
    BitBtn12: TcxButton;
    BitBtn14: TcxButton;
    BitBtn15: TcxButton;
    BitBtn16: TcxButton;
    BitBtn20: TcxButton;
    BitBtn21: TcxButton;
    BitBtn22: TcxButton;
    BitBtn31: TcxButton;
    BitBtn32: TcxButton;
    BitBtn33: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    gr_fname: TcxGrid;
    gr_fname_View: TcxGridDBTableView;
    gr_fname_Level: TcxGridLevel;
    gr_fname_ViewFN_ID: TcxGridDBColumn;
    gr_fname_ViewF_NAME_RU: TcxGridDBColumn;
    gr_country: TcxGrid;
    gr_country_view: TcxGridDBTableView;
    gr_country_viewc_id: TcxGridDBColumn;
    gr_country_viewnn: TcxGridDBColumn;
    gr_country_viewcountry: TcxGridDBColumn;
    gr_country_level: TcxGridLevel;
    gr_suplier: TcxGrid;
    gr_suplier_view: TcxGridDBTableView;
    gr_suplier_level: TcxGridLevel;
    gr_suplier_viewS_ID: TcxGridDBColumn;
    gr_suplier_viewS_NAME_RU: TcxGridDBColumn;
    gr_suplier_viewC_ID: TcxGridDBColumn;
    gr_suplier_viewNEED_CUST: TcxGridDBColumn;
    gr_suplier_viewCOUNTRY: TcxGridDBColumn;
    gr_suplier_viewNN: TcxGridDBColumn;
    gr_color: TcxGrid;
    gr_color_view: TcxGridDBTableView;
    gr_color_viewnn: TcxGridDBColumn;
    gr_color_viewcolour: TcxGridDBColumn;
    gr_color_level: TcxGridLevel;
    gr_color_viewcol_id: TcxGridDBColumn;
    gr_type: TcxGrid;
    gr_type_view: TcxGridDBTableView;
    gr_type_viewft_id: TcxGridDBColumn;
    gr_type_viewnn: TcxGridDBColumn;
    gr_type_viewf_type: TcxGridDBColumn;
    gr_type_level: TcxGridLevel;
    gr_type_viewhol_type: TcxGridDBColumn;
    gr_type_viewht_id: TcxGridDBColumn;
    gr_type_viewft_mask: TcxGridDBColumn;
    gr_subtype: TcxGrid;
    gr_subtype_view: TcxGridDBTableView;
    gr_subtype_viewft_id: TcxGridDBColumn;
    gr_subtype_viewnn: TcxGridDBColumn;
    gr_subtype_viewf_sub_type: TcxGridDBColumn;
    gr_subtype_viewhol_sub_type: TcxGridDBColumn;
    gr_subtype_viewfst_id: TcxGridDBColumn;
    gr_subtype_level: TcxGridLevel;
    gr_trans: TcxGrid;
    gr_trans_view: TcxGridDBTableView;
    gr_trans_viewfn_id: TcxGridDBColumn;
    gr_trans_viewf_name: TcxGridDBColumn;
    gr_trans_viewfnt_id: TcxGridDBColumn;
    gr_trans_level: TcxGridLevel;
    gr_hcolor: TcxGrid;
    gr_hcolor_view: TcxGridDBTableView;
    gr_hcolorcol_id: TcxGridDBColumn;
    gr_hcolorhol_color: TcxGridDBColumn;
    gr_hcolor_level: TcxGridLevel;
    gr_hcolorh_col_id: TcxGridDBColumn;
    gr_subtype_viewMNEMO: TcxGridDBColumn;
    gr_subtype_viewSUB_WEIGHT: TcxGridDBColumn;
    cxButton3: TcxButton;
    OpenDialog1: TOpenDialog;
    Panel26: TPanel;
    btn_close: TcxButton;
    cxSplitter1: TcxSplitter;
    gr_fname_ViewCNT: TcxGridDBColumn;
    cxSplitter2: TcxSplitter;
    cxSplitter3: TcxSplitter;
    Panel8: TPanel;
    Panel16: TPanel;
    BitBtn24: TcxButton;
    BitBtn25: TcxButton;
    BitBtn26: TcxButton;
    cxSplitter4: TcxSplitter;
    gr_spec: TcxGrid;
    gr_spec_v: TcxGridDBTableView;
    gr_spec_v_HS_ID: TcxGridDBColumn;
    gr_spec_v_nn: TcxGridDBColumn;
    gr_spec_v_SPEC_NAME: TcxGridDBColumn;
    gr_spec_l: TcxGridLevel;
    gr_spec_vSPEC_CODE: TcxGridDBColumn;
    gr_spec_vSPEC_HOL_NAME: TcxGridDBColumn;
    gr_spec_vADDITION: TcxGridDBColumn;
    gr_spec_vRUSSIAN_ADDITION: TcxGridDBColumn;
    gr_spec_vNEED_TRANSLATION: TcxGridDBColumn;
    Panel14: TPanel;
    Panel27: TPanel;
    BitBtn27: TcxButton;
    BitBtn28: TcxButton;
    BitBtn29: TcxButton;
    gr_content: TcxGrid;
    gr_content_v: TcxGridDBTableView;
    gr_content_l: TcxGridLevel;
    gr_content_vSC_ID: TcxGridDBColumn;
    gr_content_vHS_ID: TcxGridDBColumn;
    gr_content_vCONTENT_HOL: TcxGridDBColumn;
    gr_content_vCONTENT_RUS: TcxGridDBColumn;
    Panel28: TPanel;
    Label2: TLabel;
    gr_spec_vTT: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    btn_help: TcxButton;
    gr_type_viewCNT: TcxGridDBColumn;
    gr_country_viewCOUNTRY_ENG: TcxGridDBColumn;
    gr_fname_ViewID_DEPARTMENTS: TcxGridDBColumn;
    cb_show_translate: TCheckBox;
    gr_fname_ViewCNT_NOMS: TcxGridDBColumn;
    aShowTranslate: TAction;
    gr_trans_viewNAME_CODE: TcxGridDBColumn;
    gr_trans_viewID_DEPARTMENTS: TcxGridDBColumn;
    gr_trans_viewREMARKS: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    stInactive: TcxStyle;
    tsh_eng_names: TTabSheet;
    Panel29: TPanel;
    Panel30: TPanel;
    btn_engname_add: TcxButton;
    btn_engname_del: TcxButton;
    gr_eng_name: TcxGrid;
    gr_eng_name_v: TcxGridDBTableView;
    gr_eng_name_l: TcxGridLevel;
    btn_engname_edit: TcxButton;
    gr_eng_name_vFN_ID: TcxGridDBColumn;
    gr_eng_name_vF_NAME: TcxGridDBColumn;
    gr_eng_name_vNAME_CODE: TcxGridDBColumn;
    gr_eng_name_vID_DEPARTMENTS: TcxGridDBColumn;
    gr_eng_name_vFNT_ID: TcxGridDBColumn;
    gr_eng_name_vREMARKS: TcxGridDBColumn;
    gr_fname_ViewID_OFFICE: TcxGridDBColumn;
    gr_trans_viewID_OFFICE: TcxGridDBColumn;
    gr_eng_name_vID_OFFICE: TcxGridDBColumn;
    gr_subtype_viewPRICE_PREFIX: TcxGridDBColumn;
    gr_subtype_viewTNVED: TcxGridDBColumn;
    gr_eng_name_vF_NAME_RU: TcxGridDBColumn;
    tshDefPacks: TTabSheet;
    Panel31: TPanel;
    Panel32: TPanel;
    btnAddPack: TcxButton;
    btnDelPack: TcxButton;
    grPack: TcxGrid;
    grPack_v: TcxGridDBTableView;
    grPack_l: TcxGridLevel;
    grPack_vQUANTITY: TcxGridDBColumn;
    grPack_vHOL_TYPE: TcxGridDBColumn;
    grPack_vHOL_SUBTYPE: TcxGridDBColumn;
    gr_country_viewMNEMO: TcxGridDBColumn;
    tshUnits: TTabSheet;
    Panel33: TPanel;
    Panel34: TPanel;
    addUnits: TcxButton;
    delUnits: TcxButton;
    grUnits: TcxGrid;
    grUnitsV: TcxGridDBTableView;
    grUnitsL: TcxGridLevel;
    grUnitsVNSI_UNITS_ID: TcxGridDBColumn;
    grUnitsVUNIT_CODE: TcxGridDBColumn;
    grUnitsVNSI_NAME: TcxGridDBColumn;
    grUnitsVSYMBOL_NATIONAL: TcxGridDBColumn;
    grUnitsVSYMBOL_INTERNATIONAL: TcxGridDBColumn;
    grUnitsVCODE_LETTERING_NATIONAL: TcxGridDBColumn;
    grUnitsVCODE_LETTERING_INTERNATIONAL: TcxGridDBColumn;
    aAddUnit: TAction;
    gr_suplier_viewID_OFFICE: TcxGridDBColumn;
    gr_suplier_viewANALYZE_DAYS: TcxGridDBColumn;
    gr_country_viewColumn1: TcxGridDBColumn;
    gr_subtype_viewSUB_WEIGHT_DRY: TcxGridDBColumn;
    procedure btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn28Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aChangeTypeExecute(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gr_spec_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_helpClick(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure gr_fname_ViewEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure aShowTranslateExecute(Sender: TObject);
    procedure cb_show_translateClick(Sender: TObject);
    procedure gr_fname_ViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gr_fname_ViewDblClick(Sender: TObject);
    procedure gr_fname_ViewEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure gr_trans_viewEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure gr_eng_name_vEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure aAddUnitExecute(Sender: TObject);
    procedure gr_spec_vFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
    pnl_msg: TPanel;
    function CheckTranslation() : boolean;
    procedure do_visible;
    procedure btnAddPackExecute;
  public
    f_name_ru: string;
    { Public declarations }
  end;

var
  DictsEdit: TDictsEdit;

implementation

uses DataModule, Edit, Globals, UEditForm, UHelp;

{$R *.dfm}

procedure TDictsEdit.btn_closeClick(Sender: TObject);
begin
  Close;
end;


procedure TDictsEdit.btn_helpClick(Sender: TObject);
begin
  frm_help                          := Tfrm_help.Create(Application);
  try
    if PC.ActivePageIndex = 0 then
      frm_help.pg_help.ActivePageIndex  := 2;
    if PC.ActivePageIndex = 1 then
      frm_help.pg_help.ActivePageIndex  := 3;
    if PC.ActivePageIndex = 2 then
      frm_help.pg_help.ActivePageIndex  := 4;
    if PC.ActivePageIndex = 3 then
      frm_help.pg_help.ActivePageIndex  := 5;
    if PC.ActivePageIndex = 4 then
      frm_help.pg_help.ActivePageIndex  := 6;
    if PC.ActivePageIndex = 5 then
      frm_help.pg_help.ActivePageIndex  := 7;
    if PC.ActivePageIndex = 6 then
      frm_help.pg_help.ActivePageIndex  := 8;

    frm_help.pg_help.HideTabs         := true;
    frm_help.Height                   := 500;
    frm_help.ShowModal;
  finally
    frm_help.free;
  end;
end;


//
// При выходе закрываем таблицы
//
procedure TDictsEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.FlowerNames.Close;
  DM.FlowerNameTranslations.Close;
  DM.Countries.Close;
  DM.Suppliers.Close;
  DM.FlowerTypes.Close;
  DM.FlowerSubTypes.Close;
  Dm.Colours.Close;
  Dm.HColours.Close;
  DM.HolSpec.Close;
  DM.SpecContent.Close;
  DM.cds_def_pack.Close;
  DM.cds_units.Close;
end;


procedure TDictsEdit.FormCreate(Sender: TObject);
begin
    PC.ActivePageIndex := 0;
end;

//
// При открытии обновляем таблицы
//
procedure TDictsEdit.FormShow(Sender: TObject);
begin
  f_name_ru := '';
  aNew.Enabled        := ed;
  aEdit.Enabled       := ed;
  aDelete.Enabled     := del;
  aChangeType.Enabled := ed;



  BitBtn4.Enabled    := (ed and (dm.id_office = 1));
  BitBtn5.Enabled    := (ed and (dm.id_office = 1));
  BitBtn6.Enabled    := (del and (dm.id_office = 1));
  BitBtn24.Enabled    := (ed and (dm.id_office = 1));
  BitBtn25.Enabled    := (ed and (dm.id_office = 1));
  BitBtn26.Enabled    := (del and (dm.id_office = 1));
  BitBtn27.Enabled    := (ed and (dm.id_office = 1));
  BitBtn28.Enabled    := (ed and (dm.id_office = 1));
  BitBtn29.Enabled    := (del and (dm.id_office = 1));

  btnAddPack.Enabled  := (ed and (dm.id_office = 1));
  btnDelPack.Enabled  := (del and (dm.id_office = 1));

  addUnits.Enabled  := (ed and (dm.id_office = 1));
  delUnits.Enabled  := (ed and (dm.id_office = 1));

  BitBtn34.Enabled    := ed;
  BitBtn35.Enabled    := ed;
  BitBtn36.Enabled    := del;
//  BitBtn37.Enabled    := ed;
  BitBtn10.Enabled    := ed;
  BitBtn11.Enabled    := ed;
  BitBtn12.Enabled    := del;
  cxButton3.Enabled   := ed;
  BitBtn31.Enabled    := ed;
  BitBtn32.Enabled    := ed;
  BitBtn33.Enabled    := del;

  pnl_msg := TPanel(MakePanelLabel(Panel1,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  DM.FlowerNames.ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
  ReactivateOraQuery(DM.FlowerNames);
  DM.FlowerNameTranslations.ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
  ReactivateOraQuery(DM.FlowerNameTranslations);
  DM.FNameTransLink.ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
  ReactivateOraQuery(DM.FNameTransLink);
  ReactivateOraQuery(DM.Countries);
  ReactivateOraQuery(DM.Suppliers);
  ReactivateOraQuery(DM.cds_def_pack);
  ReactivateOraQuery(DM.cds_units);

  with DM.FlowerTypes do
  Begin
      ParamByName('ID_DEPARTMENTS').Value := CUR_DEPT_ID;
      if not Active then Open
                    else Refresh;
  End;
  if not DM.FlowerSubTypes.Active then DM.FlowerSubTypes.Open;

  ReactivateOraQuery(Dm.Colours);
  ReactivateOraQuery(Dm.HColours);
  if not DM.HolSpec.Active then DM.HolSpec.Open;
  if not DM.SpecContent.Active then DM.SpecContent.Open;

  pnl_msg.Free;

  if PC.ActivePageIndex = 0 then gr_fname.SetFocus;
  if PC.ActivePageIndex = 1 then gr_eng_name.SetFocus;
  if PC.ActivePageIndex = 2 then gr_country.SetFocus;
  if PC.ActivePageIndex = 3 then gr_suplier.SetFocus;
  if PC.ActivePageIndex = 4 then gr_type.SetFocus;
  if PC.ActivePageIndex = 5 then gr_color.SetFocus;
  if PC.ActivePageIndex = 6 then gr_spec.SetFocus;
  if PC.ActivePageIndex = 7 then grPack.SetFocus;
  if pc.ActivePageIndex = 8 then grUnits.SetFocus;
  
end;


procedure TDictsEdit.gr_fname_ViewEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := ((AItem.FocusedCellViewInfo.GridRecord.Values[gr_fname_ViewID_OFFICE.Index] = DM.id_office) or (AItem.FocusedCellViewInfo.GridRecord.Values[gr_fname_ViewID_OFFICE.Index] = null));
end;

procedure TDictsEdit.gr_fname_ViewEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (gr_fname_View.DataController.DataSet.State = dsEdit)  then
  begin
    gr_fname_View.DataController.DataSet.Post;
  end;
end;


// Покажем доп.данные
procedure TDictsEdit.gr_fname_ViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (gr_fname_View.Controller.FocusedColumn.Tag = 1) then
    aShowTranslate.Execute;
  if (Key = VK_RETURN) and (gr_fname_View.Controller.FocusedColumn.Tag = 2) then
  begin
    f_name_ru := VarToStr(gr_fname_ViewF_NAME_RU.EditValue);
    close;
  end;
end;
procedure TDictsEdit.gr_eng_name_vEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := ((AItem.FocusedCellViewInfo.GridRecord.Values[gr_eng_name_vID_OFFICE.Index] = DM.id_office) or (AItem.FocusedCellViewInfo.GridRecord.Values[gr_eng_name_vID_OFFICE.Index] = null));
end;

procedure TDictsEdit.gr_fname_ViewDblClick(Sender: TObject);
begin
  if (gr_fname_View.Controller.FocusedColumn.Tag = 1) then
    aShowTranslate.Execute;
  if (gr_fname_View.Controller.FocusedColumn.Tag = 2) then
  begin
    f_name_ru := VarToStr(gr_fname_ViewF_NAME_RU.EditValue);
    close;
  end;
end;



//
//  Красим грид со спецификациями
//
procedure TDictsEdit.gr_spec_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (gr_spec_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_spec_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_spec_v.GetColumnByFieldName('tt').Index
                );
    if (val1 = 1) then
       ACanvas.Brush.Color := panel28.Color
  end;
end;

procedure TDictsEdit.gr_spec_vFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  BitBtn27.Visible := (gr_spec_v.DataController.DataSet.Active and (gr_spec_v.DataController.Values[AFocusedRecord.Index, gr_spec_vNEED_TRANSLATION.Index] = 1));
  BitBtn28.Visible := BitBtn27.Visible;
  BitBtn29.Visible := BitBtn27.Visible;
end;

procedure TDictsEdit.gr_trans_viewEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := ((AItem.FocusedCellViewInfo.GridRecord.Values[gr_trans_viewID_OFFICE.Index] = DM.id_office) or (AItem.FocusedCellViewInfo.GridRecord.Values[gr_trans_viewID_OFFICE.Index] = null));
end;

procedure TDictsEdit.PCChange(Sender: TObject);
begin
{
  DM.FlowerNameTranslations.Close;
  if PC.ActivePageIndex = 0 then
  begin
    DM.FlowerNameTranslations.MasterSource := DM.FlowerNames_DS;
    DM.FlowerNameTranslations.MasterFields := 'FN_ID';
  end
  else
  begin
    DM.FlowerNameTranslations.MasterSource := nil;
    DM.FlowerNameTranslations.MasterFields := '';
  end;
  ReactivateOraQuery(DM.FlowerNameTranslations);
}
end;

//
// Добавление товара
//
procedure TDictsEdit.BitBtn1Click(Sender: TObject);
VAR FN_ID, FNT_ID : Variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 0;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    if (frm_editform.ShowModal = mrOk) then
    begin
      FN_ID := EditRusName(DM.StorProc, DM.FlowerNames, 0, frm_editform.Edit_name.EditValue, CUR_DEPT_ID);

      if ( length(frm_editform.Edit_eng_name.EditingText) > 0 ) then
      begin
        FNT_ID := EditTransName(DM.StorProc, DM.FNameTransLink, 0
          , VarToStr(frm_editform.Edit_eng_name.EditValue)
          , CUR_DEPT_ID
          , FN_ID
          , VarToStr(frm_editform.edit_code.EditValue)
          , VarToStr(frm_editform.edit_remarks.EditValue)
        );
        DM.FNameTransLink.Refresh;
        gr_trans_view.DataController.LocateByKey(FNT_ID);
//        DM.FNameTransLink.Locate('FNT_ID',FNT_ID,[]);
//        DM.FlowerNames.RefreshRecord;
      end;

      DM.FlowerNames.Refresh;
      gr_fname_View.DataController.LocateByKey(FN_ID);

    end;
    frm_editform.Free;
    gr_fname.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;


//
// Удаление названия
//
procedure TDictsEdit.BitBtn3Click(Sender: TObject);
begin
  if (DM.FlowerNames.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.FlowerNames.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    if MessageDlg('Название '+DM.FlowerNamesF_NAME_RU.AsString+' будет удалено! Продолжить?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    Begin
      try
        with DM.StorProc do
        Begin
          StoredProcName := 'creator.NOMENCLATURE2_PKG.delete_tovar_name';
          Prepare;
          ParamByName('IN_FN_ID').Value := DM.FlowerNames.FieldByName('FN_ID').Value;
          Execute;
          err_code := ParamByName('out_code').AsInteger;
          err_msg  := ParamByName('out_errmsg').AsString;

          if (err_code = 1) then
            MessageBox(Handle, PChar(err_msg), 'Внимание', MB_ICONINFORMATION);
          if (err_code = -1) then
            MessageBox(Handle, PChar(err_msg), 'Внимание', MB_ICONERROR);
            
          DM.FlowerNames.Refresh;
        End;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
    gr_fname.SetFocus;
  end;
end;



//
// Добавляем перевод
//
procedure TDictsEdit.BitBtn34Click(Sender: TObject);
var FNT_ID : Variant;
    cds: TOraQuery;
begin
  if (PC.ActivePageIndex = 0) then
    cds := DM.FNameTransLink
  else
    cds := DM.FlowerNameTranslations;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 1;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    if (PC.ActivePageIndex = 0) then
      frm_editform.lcb_runames.EditValue          := gr_fname_ViewFN_ID.EditValue;

    if (frm_editform.ShowModal = mrOk) then
    begin
      FNT_ID := EditTransName(DM.StorProc, cds, 0
        , VarToStr(frm_editform.edit_translate.EditValue)
        , CUR_DEPT_ID
        , frm_editform.lcb_runames.EditValue
        , VarToStr(frm_editform.edit_translate_code.EditValue)
        , VarToStr(frm_editform.edit_translate_remarks.EditValue)
      );
      cds.Refresh;
      if (PC.ActivePageIndex = 0) then
      begin
         gr_trans_view.DataController.LocateByKey(FNT_ID);
         DM.FlowerNames.RefreshRecord;
      end
      else
         gr_eng_name_v.DataController.LocateByKey(FNT_ID);

//      cds.Locate('FNT_ID',FNT_ID,[]);
    end;

    frm_editform.Free;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;

  if (PC.ActivePageIndex = 0) then
    gr_trans.SetFocus
  else
    gr_eng_name.SetFocus;

end;


//
// Редактируем перевод
//
procedure TDictsEdit.BitBtn35Click(Sender: TObject);
VAR
  FNT_ID : Variant;
  RetVal,OutText : Variant;
  cds: TOraQuery;
begin
  if (PC.ActivePageIndex = 0) then
    cds := DM.FNameTransLink
  else
    cds := DM.FlowerNameTranslations;

  if (cds.RecordCount > 0) then
  begin
    if (DM.id_office <> cds.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;


    frm_editform                                := Tfrm_editform.Create(Application);
    try
      FNT_ID := cds.FieldByName('FNT_ID').Value;

      frm_editform.cxPageControl1.HideTabs        := true;
      frm_editform.cxPageControl1.ActivePageIndex := 1;
      frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
      frm_editform.edit_translate.EditValue       := cds.FieldByName('F_NAME').Value;
      if (PC.ActivePageIndex = 0) then
        frm_editform.lcb_runames.EditValue          := gr_fname_ViewFN_ID.EditValue
      else
        frm_editform.lcb_runames.EditValue          := cds.FieldByName('FN_ID').Value;
      frm_editform.edit_translate_code.EditValue     := cds.FieldByName('NAME_CODE').Value;
      frm_editform.edit_translate_remarks.EditValue  := cds.FieldByName('REMARKS').Value;

      if (frm_editform.ShowModal = mrOk) then
      begin
        FNT_ID := EditTransName(DM.StorProc, cds, FNT_ID
          , VarToStr(frm_editform.edit_translate.EditValue)
          , CUR_DEPT_ID
          , frm_editform.lcb_runames.EditValue
          , VarToStr(frm_editform.edit_translate_code.EditValue)
          , VarToStr(frm_editform.edit_translate_remarks.EditValue)
        );
        cds.RefreshRecord;
        if (PC.ActivePageIndex = 0) then
           DM.FlowerNames.RefreshRecord;
      End;

      frm_editform.Free;

    Except on E:Exception do
      begin
        frm_editform.Free;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
  end;

  if (PC.ActivePageIndex = 0) then
    gr_trans.SetFocus
  else
    gr_eng_name.SetFocus;

end;


//
//  Удаляем перевод
//
procedure TDictsEdit.BitBtn36Click(Sender: TObject);
var cds: TOraQuery;
begin
  if (PC.ActivePageIndex = 0) then
    cds := DM.FNameTransLink
  else
    cds := DM.FlowerNameTranslations;

  if (cds.RecordCount > 0) then
  begin
    if (DM.id_office <> cds.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    if MessageDlg('Вы действительно хотите удалить название поставщика '+cds.FieldByName('F_NAME').AsString+' ?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    Begin
      try
        with DM.StorProc do
        Begin
          StoredProcName := 'creator.NOMENCLATURE2_PKG.delete_tovar_name_eng';
          Prepare;
          ParamByName('IN_FNT_ID').Value      := cds.FieldByName('FNT_ID').Value;
          ParamByName('out_errmsg').AsString  := err_msg;
          Execute;
          err_msg  := ParamByName('out_errmsg').AsString;
          if (err_msg <> '') then
            MessageBox(0, PChar(err_msg), 'Внимание', MB_ICONINFORMATION);

          cds.Refresh;
          if (PC.ActivePageIndex = 0) then
             DM.FlowerNames.RefreshRecord;
        End;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
  end;

  if (PC.ActivePageIndex = 0) then
    gr_trans.SetFocus
  else
    gr_eng_name.SetFocus;

end;







//
//  Добавляем страну
//
procedure TDictsEdit.BitBtn4Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 2;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin

      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := 0;
        ParamByName('NAME_').Value  := frm_editform.edit_country.EditValue;
        ParamByName('NAME2_').Value := frm_editform.edit_country_eng.EditValue;
        ParamByName('mnemo_').Value := frm_editform.edit_country_code.EditValue;
        ParamByName('FNT_ID').Value := 0;
        ParamByName('what_').Value  := 0;
        ParamByName('where_').Value := 0;
        ParamByName('dep_').Value   := 0;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.Countries.Refresh;
          DM.Countries.Locate('C_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_country.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
//  Редактируем страну
//
procedure TDictsEdit.BitBtn5Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
if (DM.Countries.RecordCount > 0) then
begin
{
    if (DM.id_office <> DM.Countries.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;
}

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 2;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.edit_country.EditValue         := DM.Countries.FieldByName('COUNTRY').Value;
    frm_editform.edit_country_eng.EditValue     := DM.Countries.FieldByName('COUNTRY_ENG').Value;
    frm_editform.edit_country_code.EditValue    := DM.Countries.FieldByName('MNEMO').Value;
    ID                                          := DM.Countries.FieldByName('C_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := ID;
        ParamByName('NAME_').Value  := frm_editform.edit_country.EditValue;
        ParamByName('NAME2_').Value := frm_editform.edit_country_eng.EditValue;
        ParamByName('mnemo_').Value := frm_editform.edit_country_code.EditValue;
        ParamByName('FNT_ID').Value := 0;
        ParamByName('what_').Value  := 1;
        ParamByName('where_').Value := 0;
        ParamByName('dep_').Value   := 0;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.Countries.Refresh;
          DM.Countries.Locate('C_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_country.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;
end;


//
// Удаляем страну
//
procedure TDictsEdit.BitBtn6Click(Sender: TObject);
VAR OutText : Variant;
begin
if (DM.Countries.RecordCount > 0) then
begin
{
    if (DM.id_office <> DM.Countries.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;
}
  if MessageDlg('Вы действительно хотите удалить страну?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_COUNTRY';
          Prepare;
          ParamByName('C_ID_').Value := DM.Countries.FieldByName('C_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').Value;
          if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
          else
            DM.Countries.Refresh;
        End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  End;
  gr_country.SetFocus;
end;
end;






//
// Добавление поставщика
//
procedure TDictsEdit.BitBtn7Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 3;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.cb_supplier_days.EditValue     := 3;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_SUPPLIERS';
        Prepare;
        ParamByName('S_NAME_RU_').Value   := frm_editform.edit_suplier.EditValue;
        ParamByName('C_ID_').Value        := frm_editform.cb_suplier_c.EditValue;
        ParamByName('NEED_CUST_').Value   := frm_editform.cb_suplier.EditValue;
        ParamByName('ANALYZE_DAYS_').Value := frm_editform.cb_supplier_days.EditValue;
        ParamByName('in_id_').Value       := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.Suppliers.Refresh;
          DM.Suppliers.Locate('S_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_suplier.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
// Редактирование поставщика
//
procedure TDictsEdit.BitBtn8Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
if (DM.Suppliers.RecordCount > 0) then
begin
  if DM.Suppliers.FieldByName('S_ID').Value = 1 then
  begin
    MessageBox(Handle, 'Нельзя изменять эту запись!', 'Внимание', MB_ICONWARNING);
    exit;
  end;

    if (DM.id_office <> DM.Suppliers.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 3;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.edit_suplier.EditValue         := DM.Suppliers.FieldByName('S_NAME_RU').Value;
    frm_editform.cb_suplier_c.EditValue         := DM.Suppliers.FieldByName('C_ID').Value;
    frm_editform.cb_suplier.EditValue           := DM.Suppliers.FieldByName('NEED_CUST').Value;
    frm_editform.cb_supplier_days.EditValue     := DM.Suppliers.FieldByName('ANALYZE_DAYS').Value;
    ID := DM.Suppliers.FieldByName('S_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.UPDATE_SUPPLIERS';
        Prepare;
        ParamByName('S_ID_').Value      := ID;
        ParamByName('S_NAME_RU_').Value := frm_editform.edit_suplier.EditValue;
        ParamByName('C_ID_').Value      := frm_editform.cb_suplier_c.EditValue;
        ParamByName('NEED_CUST_').Value := frm_editform.cb_suplier.EditValue;
        ParamByName('ANALYZE_DAYS_').Value := frm_editform.cb_supplier_days.EditValue;
        ParamByName('in_id_').Value     := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.Suppliers.Refresh;
          DM.Suppliers.Locate('S_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_suplier.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;
end;


//
// Удалить поставщика
//
procedure TDictsEdit.BitBtn9Click(Sender: TObject);
VAR OutText : Variant;
begin
if (DM.Suppliers.RecordCount > 0) then
begin
  if DM.Suppliers.FieldByName('S_ID').Value = 1 then
  begin
    MessageBox(Handle, 'Нельзя удалять эту запись!', 'Внимание', MB_ICONWARNING);
    exit;
  end;

    if (DM.id_office <> DM.Suppliers.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  if MessageDlg('Вы действительно хотите удалить поставщика?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_SUPPLIERS';
          Prepare;
          ParamByName('S_ID_').Value := DM.Suppliers.FieldByName('S_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').Value;
          if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
          else
            DM.Suppliers.Refresh;
        End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;

  End;
  gr_suplier.SetFocus;
end;
end;



















//
//  Добавить группу цветов
//
procedure TDictsEdit.BitBtn10Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 4;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, frm_editform.imcb_holtype, '');
    frm_editform.imcb_holtype.EditValue         := 0;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := 0;
        ParamByName('NAME_').Value  := frm_editform.edit_type.EditValue;
        ParamByName('NAME2_').Value := null;
        ParamByName('mnemo_').Value := '';
        ParamByName('FNT_ID').Value := frm_editform.imcb_holtype.EditValue;
        ParamByName('what_').Value  := 0;
        ParamByName('where_').Value := 2;
        ParamByName('dep_').Value   := CUR_DEPT_ID;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.FlowerTypes.Refresh;
          DM.FlowerTypes.Locate('ft_id',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_type.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
//  Редактировать группу цветов
//
procedure TDictsEdit.BitBtn11Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
if (DM.FlowerTypes.RecordCount > 0) then
begin
    if (DM.id_office <> DM.FlowerTypes.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 4;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, frm_editform.imcb_holtype, '');
    frm_editform.edit_type.EditValue         := DM.FlowerTypes.FieldByName('F_TYPE').AsString;
    frm_editform.imcb_holtype.EditValue      := DM.FlowerTypes.FieldByName('HT_ID').AsInteger;
    id := DM.FlowerTypes.FieldByName('FT_ID').AsInteger;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.SAVE_DATA';
        Prepare;
        ParamByName('ID_').Value    := id;
        ParamByName('NAME_').Value  := frm_editform.edit_type.EditValue;
        ParamByName('NAME2_').Value := null;
        ParamByName('mnemo_').Value := '';
        ParamByName('FNT_ID').Value := frm_editform.imcb_holtype.EditValue;
        ParamByName('what_').Value  := 1;
        ParamByName('where_').Value := 2;
        ParamByName('dep_').Value   := CUR_DEPT_ID;
        ParamByName('in_id_').Value := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.FlowerTypes.Refresh;
          DM.FlowerTypes.Locate('ft_id',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_type.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;
end;


//
// Удаление группы цветов
//
procedure TDictsEdit.BitBtn12Click(Sender: TObject);
VAR OutText : Variant;
begin
if (DM.FlowerTypes.RecordCount > 0) then
begin
    if (DM.id_office <> DM.FlowerTypes.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  if MessageDlg('Вы действительно хотите удалить тип товаров?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_FTYPE';
          Prepare;
          ParamByName('FT_ID_').Value := DM.FlowerTypes.FieldByName('FT_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').Value;
          if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
          else
            DM.FlowerTypes.Refresh;
        End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  End;
  gr_type.SetFocus;
end;
end;



//
//  Добавление подгруппы
//
procedure TDictsEdit.BitBtn14Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 5;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_SUBTYPES';
        Prepare;
        ParamByName('S_NAME_RU_').Value     := frm_editform.edit_subtype.EditValue;
        ParamByName('FT_ID_').Value         := DM.FlowerTypes.FindField('FT_ID').Value;
        ParamByName('HOL_SUB_TYPE_').Value  := frm_editform.edit_sub_eng.EditValue;
        ParamByName('MNEMO_').Value         := frm_editform.edit_subshort.EditValue;
        ParamByName('wight_').Value         := frm_editform.edit_weight.EditValue;
        ParamByName('prefix_').Value        := frm_editform.edit_subprefix.EditValue;
        ParamByName('vTnVed').Value         := frm_editform.edTnVed.EditValue;
        ParamByName('in_id_').Value         := 0;
        ParamByName('wight_dry_').Value         := frm_editform.edit_weight_dry.EditValue;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.FlowerSubTypes.Refresh;
          DM.FlowerSubTypes.Locate('fst_id',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_subtype.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
//  Редактирование подгруппы
//
procedure TDictsEdit.BitBtn15Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
if (DM.FlowerSubTypes.RecordCount > 0) then
begin
    if (DM.id_office <> DM.FlowerSubTypes.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 5;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    frm_editform.edit_subtype.EditValue         := DM.FlowerSubTypes.FieldByName('F_SUB_TYPE').AsString;
    frm_editform.edit_sub_eng.EditValue         := DM.FlowerSubTypes.FieldByName('HOL_SUB_TYPE').AsString;
    frm_editform.edit_subshort.EditValue        := DM.FlowerSubTypes.FieldByName('MNEMO').AsString;
    frm_editform.edit_weight.EditValue          := DM.FlowerSubTypes.FieldByName('SUB_WEIGHT').AsFloat;
    frm_editform.edit_subprefix.EditValue       := DM.FlowerSubTypes.FieldByName('price_prefix').AsString;
    frm_editform.edTnVed.EditValue              := DM.FlowerSubTypes.FieldByName('TnVed').AsString;
    frm_editform.edit_weight_dry.EditValue          := DM.FlowerSubTypes.FieldByName('SUB_WEIGHT_DRY').AsFloat;
    id := DM.FlowerSubTypes.FieldByName('FST_ID').AsInteger;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.EDIT_SUBTYPES';
        Prepare;
        ParamByName('S_NAME_RU_').Value     := frm_editform.edit_subtype.EditValue;
        ParamByName('FST_ID_').Value        := id;
        ParamByName('HOL_SUB_TYPE_').Value  := frm_editform.edit_sub_eng.EditValue;
        ParamByName('MNEMO_').Value         := frm_editform.edit_subshort.EditValue;
        ParamByName('wight_').Value         := frm_editform.edit_weight.EditValue;
        ParamByName('prefix_').Value        := frm_editform.edit_subprefix.EditValue;
        ParamByName('vTnVed').Value         := frm_editform.edTnVed.EditValue;
        ParamByName('in_id_').Value         := 0;
        ParamByName('wight_dry_').Value         := frm_editform.edit_weight_dry.EditValue;
        ExecProc;

        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.FlowerSubTypes.Refresh;
          DM.FlowerSubTypes.Locate('fst_id',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_subtype.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;
end;


//
// Удаление подтипа
//
procedure TDictsEdit.BitBtn16Click(Sender: TObject);
VAR OutText : Variant;
begin
  if (DM.FlowerSubTypes.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.FlowerSubTypes.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    if MessageDlg('Вы действительно хотите удалить подтип товаров?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    Begin
      try
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_FSUBTYPE';
          Prepare;
          ParamByName('FST_ID_').Value := DM.FlowerSubTypes.FieldByName('FST_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').Value;
          if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
          else
            DM.FlowerSubTypes.Refresh;
        End;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
    gr_subtype.SetFocus;
  end;
end;


//
//  Сменить тип для подтипа
//
procedure TDictsEdit.BitBtn23Click(Sender: TObject);
var ID_FST : Variant;
begin
  if (DM.FlowerSubTypes.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.FlowerSubTypes.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    frm_editform                                := Tfrm_editform.Create(Application);
    try
      frm_editform.cxPageControl1.HideTabs        := true;
      frm_editform.cxPageControl1.ActivePageIndex := 6;
      frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
      frm_editform.lcb_types.EditValue            := DM.FlowerSubTypes.FieldByName('FT_ID').AsString;
      ID_FST := DM.FlowerSubTypes.FieldByName('FST_ID').Value;
      //DM.FlowerTypes.DisableControls;
      //DM.FlowerSubTypes.DisableControls;
      if (frm_editform.ShowModal = mrOk) then
      begin

        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.CHANGE_FSUBTYPE';
          Prepare;
          ParamByName('FST_ID_').Value := ID_FST;
          ParamByName('FT_ID_').Value  := frm_editform.lcb_types.EditValue;
          Execute;
          DM.FlowerSubTypes.Refresh;
        End;
        //DM.FlowerTypes.EnableControls;
        //DM.FlowerSubTypes.EnableControls;
        gr_subtype.SetFocus;

      end;
      frm_editform.Free;

    Except on E:Exception do
      begin
        frm_editform.Free;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
  end;

end;




//
// Добавить цвет
//
procedure TDictsEdit.BitBtn20Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 7;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_COLOUR';
        Prepare;
        ParamByName('IN_COLOUR').Value     := frm_editform.edit_color.EditValue;
        ParamByName('in_id_').Value         := 0;
        ExecProc;

        ID := ParamByName('in_id_').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, 'Запрос не выполнился', 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.Colours.Refresh;
          gr_color_view.DataController.LocateByKey(ID);
          //DM.Colours.Locate('COL_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_color.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
// Редактировать цвет
//
procedure TDictsEdit.BitBtn21Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  if (DM.Colours.RecordCount > 0) then
  begin

    if (DM.id_office <> DM.Colours.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 7;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.edit_color.EditValue           := DM.Colours.FieldByName('COLOUR').Value;
    id := DM.Colours.FieldByName('COL_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.EDIT_COLOUR';
        Prepare;
        ParamByName('IN_COL_ID').Value := id;
        ParamByName('IN_COLOUR').Value := frm_editform.edit_color.EditValue;
        ExecProc;
        if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
        else
        Begin
            DM.Colours.RefreshRecord;
            //DM.Colours.Locate('COL_ID',ID,[]);
        End;
      End;
    end;

    frm_editform.Free;
    gr_color.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  end;
end;


//
// Удалить цвет
//
procedure TDictsEdit.BitBtn22Click(Sender: TObject);
VAR ColID, RetVal, OutText : Variant;
begin
  if (DM.Colours.RecordCount > 0) then
  begin

    if (DM.id_office <> DM.Colours.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  if MessageDlg('Вы действительно хотите удалить цвет?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
      ColID := DM.Colours.FieldByName('COL_ID').Value;

      if not IsDelColor(ColID) then
      begin
        MessageBox(Handle, 'Данный цвет удалять нельзя', 'Внимание', MB_ICONWARNING);
        exit;
      end;

      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.DELETE_COLOUR';
        Prepare;
        ParamByName('IN_COL_ID').Value := ColID;
        ExecProc;
        OutText := ParamByName('OUT_TEXT').Value;
        if (OutText <> '') then
            MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
        else
           DM.Colours.Refresh;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  end;
  gr_color.SetFocus;
end;



//
//  Добавить гол. цвет
//
procedure TDictsEdit.BitBtn31Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 7;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    id := DM.Colours.FieldByName('COL_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.INSERT_H_COLOUR';
        Prepare;
        ParamByName('IN_COL_ID').Value      := id;
        ParamByName('IN_HOL_COLOUR').Value  := frm_editform.edit_color.EditValue;
        ParamByName('in_id_').Value         := 0;
        ExecProc;
        ID := ParamByName('in_id_').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, 'Запрос не выполнился', 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.HColours.Refresh;
          DM.HColours.Locate('H_COL_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_hcolor.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;
end;


//
// Редактировать гол. цвет
//
procedure TDictsEdit.BitBtn32Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  if (DM.HColours.RecordCount > 0) then
  begin

    if (DM.id_office <> DM.HColours.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 7;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    frm_editform.edit_color.EditValue           := DM.HColours.FieldByName('HOL_COLOUR').Value;
    id := DM.HColours.FieldByName('H_COL_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.EDIT_H_COLOUR';
        Prepare;
        ParamByName('IN_H_COL_ID').Value    := id;
        ParamByName('IN_HOL_COLOUR').Value  := frm_editform.edit_color.EditValue;
        ParamByName('in_id_').Value         := 0;
        ExecProc;
        ID := ParamByName('in_id_').Value;
      End;
      IF ((ID = null) or (ID = 0)) then MessageBox(Handle, 'Запрос не выполнился', 'Ошибка', MB_ICONWARNING)
      else
      Begin
          DM.HColours.Refresh;
          DM.HColours.Locate('H_COL_ID',ID,[]);
      End;
    end;

    frm_editform.Free;
    gr_hcolor.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  end;
end;


//
// Удаление гол. названия
//
procedure TDictsEdit.BitBtn33Click(Sender: TObject);
VAR HColID : Variant;
begin
  if (DM.HColours.RecordCount > 0) then
  begin
    if (DM.id_office <> DM.HColours.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    if MessageDlg('Вы действительно хотите удалить перевод цвета?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
    Begin
      try
        HColID := DM.HColours.FieldByName('H_COL_ID').Value;
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_HOL_COLOUR';
          Prepare;
          ParamByName('IN_H_COL_ID').Value := HColID;
          ExecProc;
        End;
        DM.HColours.Refresh;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
    gr_hcolor.SetFocus;
  end;
end;












//
//  Добавить спецификацию
//
procedure TDictsEdit.BitBtn24Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 8;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.EDIT_HOL_SPEC';
        Prepare;
        ParamByName('IN_HS_ID').Value             := Int(-1);
        ParamByName('IN_SPEC_CODE').Value         := frm_editform.edit_spec_kod.EditValue;
        ParamByName('IN_SPEC_NAME').Value         := frm_editform.edit_spec_name.EditValue;
        ParamByName('IN_SPEC_HOL_NAME').Value     := frm_editform.edit_spec_latname.EditValue;
        ParamByName('IN_ADDITION').Value          := frm_editform.edit_spec_pref_lat.EditValue;
        ParamByName('IN_RUSSIAN_ADDITION').Value  := frm_editform.edit_spec_pref.EditValue;
        ParamByName('IN_NEED_TRANSLATION').Value  := frm_editform.cb_spec_trans.EditValue;
        ParamByName('in_id_').Value               := 0;
        Execute;
        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;

        IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
        else
        Begin
          if (frm_editform.cb_spec_trans.EditValue = 1) then
          begin
            StoredProcName := 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC';
            Prepare;
            ParamByName('SC_ID_').Value := -1;
            ParamByName('HS_ID_').Value := ID;
            ParamByName('CONTENT_HOL_').Value := frm_editform.edit_trans_lat.EditValue;
            ParamByName('CONTENT_RUS_').Value := frm_editform.edit_trans_rus.EditValue;
            ParamByName('in_id_').Value := 0;
            ExecProc;
            OutText := ParamByName('OUT_TEXT').Value;

            IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING);

            DM.SpecContent.Refresh;
            dm.SpecContent.Locate('SC_ID', ParamByName('in_id_').Value, []);
          end;
        End;

        DM.HolSpec.Refresh;
        DM.HolSpec.Locate('HS_ID',ID,[]);

      End;
    end;
    frm_editform.Free;
    gr_spec.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;

end;


//
// Редактирование спецификации
//
procedure TDictsEdit.BitBtn25Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  if (DM.HolSpec.RecordCount > 0) then
  begin

//    if (DM.id_office <> DM.HolSpec.FieldByName('ID_OFFICE').AsInteger) then
    if ( GetOfficeID <> 1 ) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 8;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    frm_editform.edit_spec_kod.EditValue        := DM.HolSpec.FieldByName('SPEC_CODE').Value;
    frm_editform.edit_spec_name.EditValue       := DM.HolSpec.FieldByName('SPEC_NAME').Value;
    frm_editform.edit_spec_latname.EditValue    := DM.HolSpec.FieldByName('SPEC_HOL_NAME').Value;
    frm_editform.edit_spec_pref_lat.EditValue   := DM.HolSpec.FieldByName('ADDITION').Value;
    frm_editform.edit_spec_pref.EditValue       := DM.HolSpec.FieldByName('RUSSIAN_ADDITION').Value;
    frm_editform.cxGroupBox2.Enabled            := false;
    frm_editform.cb_spec_trans.EditValue        := DM.HolSpec.FieldByName('NEED_TRANSLATION').Value;
    id :=  DM.HolSpec.FieldByName('HS_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.EDIT_HOL_SPEC';
        Prepare;
        ParamByName('IN_HS_ID').Value             := ID;
        ParamByName('IN_SPEC_CODE').Value         := frm_editform.edit_spec_kod.EditValue;
        ParamByName('IN_SPEC_NAME').Value         := frm_editform.edit_spec_name.EditValue;
        ParamByName('IN_SPEC_HOL_NAME').Value     := frm_editform.edit_spec_latname.EditValue;
        ParamByName('IN_ADDITION').Value          := frm_editform.edit_spec_pref_lat.EditValue;
        ParamByName('IN_RUSSIAN_ADDITION').Value  := frm_editform.edit_spec_pref.EditValue;
        ParamByName('IN_NEED_TRANSLATION').Value  := frm_editform.cb_spec_trans.EditValue;
        ParamByName('in_id_').Value               := 0;
        Execute;
        ID := ParamByName('in_id_').Value;
        OutText := ParamByName('OUT_TEXT').Value;

        IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
        else
        Begin
          DM.HolSpec.Refresh;
          DM.HolSpec.Locate('HS_ID',ID,[]);
        End;

      End;
    end;
    frm_editform.Free;
    gr_spec.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;

  end;

end;


//
//  Удаление спецификации
//
procedure TDictsEdit.BitBtn26Click(Sender: TObject);
VAR COL_IDS : String;
begin
  if MessageDlg('Вы действительно хотите удалить спецификацию?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    if (DM.HolSpec.RecordCount > 0) then
    begin

//    if (DM.id_office <> DM.HolSpec.FieldByName('ID_OFFICE').AsInteger) then
    if ( GetOfficeID <> 1 ) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

      try
        COL_IDS := DM.HolSpec.FieldByName('HS_ID').Value;
        with DM.StorProc do
        Begin
          StoredProcName := 'NOMENCLATURE_PKG.DELETE_HOL_SPEC';
          Prepare;
          ParamByName('HS_ID_').Value := COL_IDS;
          ExecProc;
        End;
        DM.HolSpec.Refresh;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
  End;
  gr_spec.SetFocus;
end;






//
// Добавление перевода
//
procedure TDictsEdit.BitBtn27Click(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 9;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    id :=  DM.HolSpec.FieldByName('HS_ID').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
          StoredProcName := 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC';
          Prepare;
          ParamByName('SC_ID_').Value := -1;
          ParamByName('HS_ID_').Value := ID;
          ParamByName('CONTENT_HOL_').Value := frm_editform.edit_spec_trans_lat.EditValue;
          ParamByName('CONTENT_RUS_').Value := frm_editform.edit_spec_trans.EditValue;
          ParamByName('in_id_').Value := 0;
          ExecProc;
          ID := ParamByName('in_id_').Value;
          OutText := ParamByName('OUT_TEXT').Value;

          IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
          else
          begin
            DM.SpecContent.Refresh;
            dm.SpecContent.Locate('SC_ID', ParamByName('in_id_').Value, []);
            DM.HolSpec.RefreshRecord;
          end;
      End;
    end;

    frm_editform.Free;
    gr_content.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;

end;


//
// Редактирование перевода
//
procedure TDictsEdit.BitBtn28Click(Sender: TObject);
 var id : variant;
    OutText : variant;
begin
if (DM.SpecContent.RecordCount > 0) then
begin
//    if (DM.id_office <> DM.SpecContent.FieldByName('ID_OFFICE').AsInteger) then
    if ( GetOfficeID <> 1 ) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 9;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;
    id :=  DM.SpecContent.FieldByName('SC_ID').Value;
    frm_editform.edit_spec_trans_lat.EditValue  := DM.SpecContent.FieldByName('CONTENT_HOL').Value;
    frm_editform.edit_spec_trans.EditValue      := DM.SpecContent.FieldByName('CONTENT_RUS').Value;

    if (frm_editform.ShowModal = mrOk) then
    begin
      with DM.StorProc do
      Begin
          StoredProcName := 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC';
          Prepare;
          ParamByName('SC_ID_').Value       := ID;
          ParamByName('HS_ID_').Value       := DM.HolSpec.FieldByName('HS_ID').Value;
          ParamByName('CONTENT_HOL_').Value := frm_editform.edit_spec_trans_lat.EditValue;
          ParamByName('CONTENT_RUS_').Value := frm_editform.edit_spec_trans.EditValue;
          ParamByName('in_id_').Value       := 0;
          ExecProc;
          ID := ParamByName('in_id_').Value;
          OutText := ParamByName('OUT_TEXT').Value;

          IF ( Length(VarToStr(OutText)) > 0) then MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONWARNING)
          else
          begin
            DM.SpecContent.Refresh;
            dm.SpecContent.Locate('SC_ID', ParamByName('in_id_').Value, []);
          end;
      End;
    end;

    frm_editform.Free;
    gr_content.SetFocus;

  Except on E:Exception do
  begin
    frm_editform.Free;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  end;

end;
end;

{
VAR
  CONTENT_HOL, CONTENT_RUS, ValMnemo : String;
  RetVal, OutText : variant;
  Mnemo: integer;
  ValWeight: real;
begin
  if not CheckTranslation then Exit;
  CONTENT_RUS := DM.SpecContent.FieldByName('CONTENT_RUS').AsString;
  CONTENT_HOL := DM.SpecContent.FieldByName('CONTENT_HOL').AsString;;
  ValMnemo := '';
  Mnemo := 0;
  ValWeight := 0;
  if not Edit2Pos.GetTwoVals('Введите перевод содержимого спецификатции',CONTENT_RUS,CONTENT_HOL,Mnemo,ValMnemo, ValWeight) then exit;

  with DM.StorProc do
    Begin
      StoredProcName := 'NOMENCLATURE_PKG.EDIT_TRANS_SPEC';
      Prepare;
      ParamByName('SC_ID_').Value := DM.SpecContent.FieldByName('SC_ID').Value;
      ParamByName('HS_ID_').Value := DM.HolSpec.FieldByName('HS_ID').Value;
      ParamByName('CONTENT_HOL_').Value := CONTENT_HOL;
      ParamByName('CONTENT_RUS_').Value := CONTENT_RUS;
      ParamByName('in_id_').Value := 0;
      ExecProc;

      RetVal := ParamByName('in_id_').Value;
      OutText := ParamByName('OUT_TEXT').Value;

      if RetVal > 0 then
      begin
        DM.SpecContent.Refresh;
        dm.SpecContent.Locate('SC_ID', RetVal, []);
      end
      else ShowMessage(OutText);
    End;

//  DBGridEh2.SetFocus;

end;
}


//
// Проверка необходимости перевода для спецификации
//
function TDictsEdit.CheckTranslation() : boolean;
Begin
  If DM.HolSpec.FieldByName('NEED_TRANSLATION').Value <> 1 then
    Begin
      ShowMessage('Эта спецификация не нуждается в переводе!');
      Result := false;
    End
  else
    Begin
      Result := true;
    End;
End;


//
// Удаляем перевод
//
procedure TDictsEdit.BitBtn29Click(Sender: TObject);
VAR
  SC_ID : Variant;
begin
if (DM.SpecContent.RecordCount > 0) then
begin
//    if (DM.id_office <> DM.SpecContent.FieldByName('ID_OFFICE').AsInteger) then
    if ( GetOfficeID <> 1 ) then
    begin
      MessageBox(Handle,'Данная запись принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

  if MessageDlg('Вы действительно хотите удалить перевод спецификации?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    SC_ID := DM.SpecContent.FieldByName('SC_ID').Value;
    with DM.StorProc do
    Begin
      StoredProcName := 'NOMENCLATURE_PKG.DELETE_TRANS_SPEC';
      Prepare;
      ParamByName('SC_ID_').Value := SC_ID;
      ExecProc;
    End;
    DM.SpecContent.Refresh;
    DM.HolSpec.RefreshRecord;
  end;
end;
gr_content.SetFocus;
end;











//
//  Нажимаем F1 - добавление
//
procedure TDictsEdit.aNewExecute(Sender: TObject);
begin
  if PC.TabIndex = 0 then BitBtn1Click(self);
  if PC.TabIndex = 1 then BitBtn34Click(self);
  if (PC.TabIndex = 2) and (dm.id_office = 1) then BitBtn4Click(self);
  if PC.TabIndex = 3 then BitBtn7Click(self);
  if PC.TabIndex = 4 then BitBtn14Click(self);
  if PC.TabIndex = 5 then BitBtn20Click(self);
  if (PC.TabIndex = 6) and (dm.id_office = 1) then BitBtn24Click(self);
  if (PC.TabIndex = 7) and (dm.id_office = 1) then btnAddPackExecute;
  if (PC.TabIndex = 8) and (dm.id_office = 1) then aAddUnit.Execute;
end;


//  Добавление упаковки
procedure TDictsEdit.btnAddPackExecute;
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 10;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT ht_id, hol_type FROM hol_types where active = 1 ORDER BY ord');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, frm_editform.cb_pack_type, '');
    frm_editform.imcb_holtype.EditValue         := 0;


    if (frm_editform.ShowModal = mrOk) then
    begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('insert into hol_subtype_def_pack values('+VarToStr(frm_editform.ed_pack_quantity.EditValue)+', '+VarToStr(frm_editform.cb_pack_type.EditValue)+', '''+VarToStr(frm_editform.ed_pack_name.EditValue)+''')');
      DM.SelQ.Execute;
    end;

    frm_editform.Free;
    grPack_v.DataController.DataSet.Refresh;
    grPack.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  //grPack_v.DataController.DataSet.Insert;
end;



// показ связанных названий поставщика
procedure TDictsEdit.aShowTranslateExecute(Sender: TObject);
begin
  if (PC.ActivePageIndex = 0) then
  begin
    if (cb_show_translate.Checked) then cb_show_translate.Checked := false else cb_show_translate.Checked := true;
    do_visible;
  end;
end;

procedure TDictsEdit.cb_show_translateClick(Sender: TObject);
begin
  do_visible;
end;

procedure TDictsEdit.do_visible;
begin
    Panel24.Visible := cb_show_translate.Checked;
    DM.FNameTransLink.Active := cb_show_translate.Checked;
end;



//
//  Нажимаем F2 - редактирование
//
procedure TDictsEdit.aEditExecute(Sender: TObject);
begin
  if (PC.TabIndex = 2) and (dm.id_office = 1) then BitBtn5Click(self);
  if PC.TabIndex = 3 then BitBtn8Click(self);
  if PC.TabIndex = 4 then BitBtn15Click(self);
  if PC.TabIndex = 5 then BitBtn21Click(self);
  if (PC.TabIndex = 6) and (dm.id_office = 1) then BitBtn25Click(self);
end;

//
//  Нажимаем F3 - удаление
//
procedure TDictsEdit.aDeleteExecute(Sender: TObject);
begin
  if PC.TabIndex = 0 then BitBtn3Click(self);
  if PC.TabIndex = 1 then BitBtn36Click(self);

  if (PC.TabIndex = 2) and (dm.id_office = 1) then BitBtn6Click(self);
  if PC.TabIndex = 3 then BitBtn9Click(self);
  if PC.TabIndex = 4 then BitBtn16Click(self);
  if PC.TabIndex = 5 then BitBtn22Click(self);
  if (PC.TabIndex = 6) and (dm.id_office = 1) then BitBtn26Click(self);
  if (PC.TabIndex = 7) and (dm.id_office = 1) and (MessageDlg('Запись будет удалена! Продолжить?',mtConfirmation,[mbNo,mbYes],0) = mrYes) then grPack_v.DataController.DataSet.Delete;
  if (PC.TabIndex = 8) and (dm.id_office = 1) and (MessageDlg('Запись будет удалена! Продолжить?',mtConfirmation,[mbNo,mbYes],0) = mrYes) then grUnitsV.DataController.DataSet.Delete;
end;

//
//  F5 - сменить тип
//
procedure TDictsEdit.aChangeTypeExecute(Sender: TObject);
begin
  if PC.ActivePage.Tag = 3 then BitBtn23Click(self);
end;


//
//  Подгружаем формулы
//
procedure TDictsEdit.cxButton3Click(Sender: TObject);
VAR
  f: TextFile;
  str, param_, value_, RetVal: String;
  i: integer;
begin
//  path := ExtractFilePath(Application.ExeName);

  if (OpenDialog1.Execute) then
  begin
    Screen.Cursor := crHourGlass;
    RetVal := '';
    DM.StorProc.StoredProcName := 'NOMENCLATURE_PKG.import_weight';
    DM.StorProc.Prepare;

    // Пытаемся открыть файл с настройками
    try
      {$I-}
      AssignFile(f,OpenDialog1.FileName);
      Reset(f);
      while not Eof(f) do
      begin
        Readln(f,str);
        i := Pos(';', str);
        param_ := Copy(str, 0, i-1);
        value_ := Copy(str, i+1, Length(str));

        DM.StorProc.ParamByName('param_').AsString := param_;
        DM.StorProc.ParamByName('value_').Value    := StrToFloat(value_);
        DM.StorProc.ParamByName('out_text').Value  := '';
        DM.StorProc.ExecProc;
        if (DM.StorProc.ParamByName('out_text').Value <> '') then
          RetVal := RetVal + #10 + DM.StorProc.ParamByName('out_text').Value;

      end;
      CloseFile(f);
      {$I+}

      Screen.Cursor := crDefault;
      
      if (RetVal <> '') then
        MessageBox(Handle,PChar('Данные подтипы отсутствуют в БД:'+RetVal),'Результат',MB_ICONINFORMATION);

    except on E:Exception do
      begin
        Screen.Cursor := crDefault;
        MessageBox(Handle,PChar('Произошла непредвиденная ошибка.'+#10+E.Message),'Ошибка',MB_ICONERROR);
      end;
    End;
  end;
  // Конец считывания
end;


// Добавление единицы измерения
procedure TDictsEdit.aAddUnitExecute(Sender: TObject);
var id : variant;
    OutText : variant;
begin
  frm_editform                                := Tfrm_editform.Create(Application);
  try
    frm_editform.cxPageControl1.HideTabs        := true;
    frm_editform.cxPageControl1.ActivePageIndex := 11;
    frm_editform.Caption                        := frm_editform.cxPageControl1.ActivePage.Caption;

    if (frm_editform.ShowModal = mrOk) then
    begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('insert into nsi_units values(get_office_unique(''UNIVERSAL_ID''),'
        +VarToStr(frm_editform.edUnit_code.EditValue)+', '''
        +VarToStr(frm_editform.edUnit_name.EditValue)+''', '''
        +VarToStr(frm_editform.edUnit_znach_national.EditValue)+''', '''
        +VarToStr(frm_editform.edUnit_znach_international.EditValue)+''', '''
        +VarToStr(frm_editform.edUnit_code_litering_national.EditValue)+''', '''
        +VarToStr(frm_editform.edUnit_code_litering_international.EditValue)+''')');
      DM.SelQ.Execute;
    end;

    frm_editform.Free;
    grUnitsV.DataController.DataSet.Refresh;
    grUnits.SetFocus;

  Except on E:Exception do
    begin
      frm_editform.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
end;


end.
