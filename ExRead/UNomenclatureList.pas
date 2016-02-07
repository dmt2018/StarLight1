unit UNomenclatureList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, ActnList, PI_library;

type
  TfrmNomenclature = class(TForm)
    Panel1: TPanel;
    btn_store_close: TcxButton;
    cxButton1: TcxButton;
    grid_noms: TcxGrid;
    grid_noms_v: TcxGridDBTableView;
    nnCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_noms_vH_NAME: TcxGridDBColumn;
    nn_REMARKS: TcxGridDBColumn;
    nn_QUANTITY: TcxGridDBColumn;
    nnTYPE_SUBTYPE: TcxGridDBColumn;
    nnF_NAME: TcxGridDBColumn;
    nnH_CODE: TcxGridDBColumn;
    grid_noms_vIS_PHOTO: TcxGridDBColumn;
    nnCOLOUR: TcxGridDBColumn;
    nnLEN: TcxGridDBColumn;
    nnPACK: TcxGridDBColumn;
    nnS_NAME_RU: TcxGridDBColumn;
    nnCOUNTRY: TcxGridDBColumn;
    nnPRICE: TcxGridDBColumn;
    nnPRICE_DATE: TcxGridDBColumn;
    nnCODE: TcxGridDBColumn;
    grid_noms_vCOMPILED_NAME: TcxGridDBColumn;
    grid_noms_vFULL_NAME: TcxGridDBColumn;
    grid_noms_vF_SUB_TYPE: TcxGridDBColumn;
    grid_noms_vF_TYPE: TcxGridDBColumn;
    grid_noms_vN_ID: TcxGridDBColumn;
    grid_noms_vFN_ID: TcxGridDBColumn;
    grid_noms_vFT_ID: TcxGridDBColumn;
    grid_noms_vFST_ID: TcxGridDBColumn;
    grid_noms_vS_ID: TcxGridDBColumn;
    grid_noms_vC_ID: TcxGridDBColumn;
    grid_noms_vCOL_ID: TcxGridDBColumn;
    grid_noms_vBAR_CODE: TcxGridDBColumn;
    grid_noms_vVBN: TcxGridDBColumn;
    grid_noms_vHOL_TYPE: TcxGridDBColumn;
    grid_noms_vWEIGHT: TcxGridDBColumn;
    grid_noms_vF_NAMES: TcxGridDBColumn;
    grid_noms_vCUST_COEF: TcxGridDBColumn;
    grid_noms_vDIAMETER: TcxGridDBColumn;
    grid_noms_vHT_ID: TcxGridDBColumn;
    grid_noms_vPHOTO: TcxGridDBColumn;
    grid_noms_l: TcxGridLevel;
    grid_noms_vF_NAME_RU: TcxGridDBColumn;
    grid_noms_vWEIGHTDRY: TcxGridDBColumn;
    grid_noms_vCOMPILED_NAME_POT: TcxGridDBColumn;
    grid_noms_vID_OFFICE: TcxGridDBColumn;
    grid_noms_vTNVED: TcxGridDBColumn;
    grid_noms_vNOM_NEW: TcxGridDBColumn;
    grid_noms_vNOM_START: TcxGridDBColumn;
    grid_noms_vNOM_END: TcxGridDBColumn;
    pnl_head: TPanel;
    lbl_content: TLabel;
    lbl_help: TLabel;
    ActionList1: TActionList;
    aFilterByCode: TAction;
    aFilterByName: TAction;
    aFilterByLength: TAction;
    aFilterClear: TAction;
    aCtrlEnter: TAction;
    aFilterByColor: TAction;
    aFilterByRemarks: TAction;
    btnChangeEngData: TcxButton;
    btnEditNom: TcxButton;
    aEdit: TAction;
    aUpdataData: TAction;
    grid_noms_vHOL_COLOR: TcxGridDBColumn;
    grid_noms_vNAME_CODE: TcxGridDBColumn;
    grid_noms_vHOL_PACK: TcxGridDBColumn;
    grid_noms_vNSI_NAME: TcxGridDBColumn;
    procedure grid_noms_vDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aFilterByCodeExecute(Sender: TObject);
    procedure aFilterByNameExecute(Sender: TObject);
    procedure aFilterByLengthExecute(Sender: TObject);
    procedure aFilterClearExecute(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure aFilterByColorExecute(Sender: TObject);
    procedure aFilterByRemarksExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aUpdataDataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    path: string;
    full_name, code_name, color_name, remarks_name: string;
    item_length: integer;
    { Public declarations }
  end;

var
  frmNomenclature: TfrmNomenclature;


implementation

uses DataModule, NewDict, Ora;

{$R *.dfm}

procedure TfrmNomenclature.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions      := [];
  AStoreKey     := path + '/ini/NewNomenclature_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'ShowNomenclature';
  grid_noms_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  SaveFormState(frmNomenclature);
end;

procedure TfrmNomenclature.FormShow(Sender: TObject);
var AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/NewNomenclature_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'ShowNomenclature';
  grid_noms_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  LoadFormState(frmNomenclature);

  if not DM.Nomenclature.Active then
  Begin
    DM.Nomenclature.Open;
  End;
end;

procedure TfrmNomenclature.grid_noms_vDblClick(Sender: TObject);
begin
  aCtrlEnter.Execute;
end;



procedure TfrmNomenclature.aCtrlEnterExecute(Sender: TObject);
begin
  if (grid_noms_v.DataController.DataSet.Active) and (grid_noms_v.DataController.DataSet.RecordCount > 0) then ModalResult := mrOk;
end;


procedure TfrmNomenclature.aFilterByCodeExecute(Sender: TObject);
begin
  if code_name <> '' then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    nnH_CODE.DataBinding.AddToFilter(nil, foLike, trim(code_name)+'%');
    nnH_CODE.DataBinding.Filtered := (Sender as TAction).Checked;
  end;
  grid_noms_v.DataController.Filter.Active := True;
end;

procedure TfrmNomenclature.aFilterByLengthExecute(Sender: TObject);
begin
  if item_length <> 0 then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    nnLEN.DataBinding.AddToFilter(nil, foEqual, item_length);
    nnLEN.DataBinding.Filtered := (Sender as TAction).Checked;
  end;
  grid_noms_v.DataController.Filter.Active := True;
end;

procedure TfrmNomenclature.aFilterByNameExecute(Sender: TObject);
begin
  if full_name <> '' then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    grid_noms_vH_NAME.DataBinding.AddToFilter(nil, foLike, trim(full_name)+'%');
    grid_noms_vH_NAME.DataBinding.Filtered := (Sender as TAction).Checked;
  end;
  grid_noms_v.DataController.Filter.Active := True;
end;


procedure TfrmNomenclature.aFilterByRemarksExecute(Sender: TObject);
begin
  if remarks_name <> '' then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    nn_REMARKS.DataBinding.AddToFilter(nil, foLike, trim(remarks_name)+'%');
    nn_REMARKS.DataBinding.Filtered := (Sender as TAction).Checked;
  end;
  grid_noms_v.DataController.Filter.Active := True;
end;

procedure TfrmNomenclature.aFilterByColorExecute(Sender: TObject);
begin
{
  if color_name <> '' then
  begin
    (Sender as TAction).Checked := not (Sender as TAction).Checked;
    grid_noms_vh.DataBinding.AddToFilter(nil, foLike, trim(color_name)+'%');
    grid_noms_vH_NAME.DataBinding.Filtered := (Sender as TAction).Checked;
  end;
  grid_noms_v.DataController.Filter.Active := True;
}
end;

procedure TfrmNomenclature.aFilterClearExecute(Sender: TObject);
begin
  grid_noms_v.DataController.Filter.Active := false;
end;


//
//  Установить данные поставщика
//
procedure TfrmNomenclature.aUpdataDataExecute(Sender: TObject);
begin
  try
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('begin nomenclature2_pkg.change_nom_by_invoice(:p_hol_name, :p_n_id); end;');
    DM.SelQ.ParamByName('p_hol_name').AsString   := full_name;
    DM.SelQ.ParamByName('p_n_id').AsInteger  := grid_noms_vN_ID.EditValue;
    DM.SelQ.Execute;
    DM.Nomenclature.RefreshRecord;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
  end;
end;


//
//  Редактировать номенклатуру
//
procedure TfrmNomenclature.aEditExecute(Sender: TObject);
var
 arRec: Variant;
 i: integer;
 SavePlace : TBookmark;
begin
  if (grid_noms_v.DataController.DataSet.Active = true) and (grid_noms_v.ViewData.RowCount > 0) then
  begin
    if (DM.id_office <> grid_noms_v.DataController.DataSet.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;

    SavePlace     := grid_noms_v.DataController.DataSet.GetBookmark;
    NewD          := TNewD.Create(Application);
    try
      //NewD.Panel1.Font.Size := grid_nn.Font.Size;
      NewD.editing  := true;
      NewD.OUT_ID   := 0;
      NewD.N_ID_    := grid_noms_v.DataController.DataSet.FieldByName('N_ID').Value;
      NewD.cds      := (grid_noms_v.DataController.DataSet as TOraQuery);
      NewD.ShowModal;
    finally
      NewD.Free;
      grid_noms_v.DataController.DataSet.Refresh;
      grid_noms_v.DataController.DataSet.GotoBookmark(SavePlace);
      grid_noms_v.DataController.DataSet.FreeBookmark(SavePlace);
    end;

  end else ShowMessage('Нет выбранных данных!');
  grid_noms.SetFocus;
end;



end.
