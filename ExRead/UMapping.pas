unit UMapping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit,
  cxCalendar, cxCurrencyEdit, cxProgressBar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, DBAccess, Ora, MemDS, StdCtrls, cxButtons, ExtCtrls, PI_library;

type
  TfrmMapping = class(TForm)
    Panel1: TPanel;
    btnDelete: TcxButton;
    cdsMapping: TOraQuery;
    dsMapping: TOraDataSource;
    grid_mapping: TcxGrid;
    grid_mapping_v: TcxGridDBTableView;
    grid_mapping_l: TcxGridLevel;
    cdsMappingN_ID: TFloatField;
    cdsMappingAS_IS_HCODE: TStringField;
    cdsMappingREPLACEMENT: TIntegerField;
    cdsMappingH_CODE: TStringField;
    cdsMappingH_NAME: TStringField;
    cdsMappingCOMPILED_NAME_OTDEL: TStringField;
    cdsMappingREMARKS: TStringField;
    cdsMappingCOLOUR: TStringField;
    grid_mapping_vN_ID: TcxGridDBColumn;
    grid_mapping_vAS_IS_HCODE: TcxGridDBColumn;
    grid_mapping_vREPLACEMENT: TcxGridDBColumn;
    grid_mapping_vH_CODE: TcxGridDBColumn;
    grid_mapping_vH_NAME: TcxGridDBColumn;
    grid_mapping_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_mapping_vREMARKS: TcxGridDBColumn;
    grid_mapping_vCOLOUR: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BitBtn2: TcxButton;
    cdsMappingSKU: TStringField;
    grid_mapping_vSKU: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    p_H_CODE_ASIS: string;
    path: string;
    { Public declarations }
  end;

function ShowFfmMapping(var inH_CODE_ASIS: string): boolean;

var
  frmMapping: TfrmMapping;

implementation

uses DataModule;

{$R *.dfm}

function ShowFfmMapping(var inH_CODE_ASIS: string): boolean;
begin
  Application.CreateForm(TfrmMapping, frmMapping);
  with frmMapping do
    Begin
      p_H_CODE_ASIS := inH_CODE_ASIS;
      cdsMapping.Open;

      if p_H_CODE_ASIS <> '' then
      begin
        grid_mapping_vAS_IS_HCODE.DataBinding.AddToFilter(nil, foEqual, p_H_CODE_ASIS);
      //grid_mapping_vAS_IS_HCODE.DataBinding.Filtered := (Sender as TAction).Checked;
        grid_mapping_v.DataController.Filter.Active := True;
      end;
      Result := False;
      if ShowModal = mrOk then
      begin
        Result := true;
      end;
      Free;
    End;
end;

procedure TfrmMapping.btnDeleteClick(Sender: TObject);
begin
  if (cdsMapping.Active = false) or (cdsMapping.RecordCount = 0) then exit;

  if MessageDlg('Удалить запись?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then exit;

  try
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('delete from INVOICE_DATA_AS_IS_MAP where n_id = '+cdsMappingN_ID.AsString+' and as_is_hcode='''+cdsMappingAS_IS_HCODE.AsString+''' ');
    DM.SelQ.Execute;
    cdsMapping.Refresh;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONWARNING);
  end;
end;

procedure TfrmMapping.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions      := [];
  AStoreKey     := path + '/ini/mapping_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'ShowNomenclature';
  grid_mapping_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  SaveFormState(frmMapping);
end;

procedure TfrmMapping.FormShow(Sender: TObject);
var AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/mapping_'+DM.STAR_DB.Username+'.ini';
  ASaveViewName := 'ShowNomenclature';
  grid_mapping_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  LoadFormState(frmMapping);
end;

end.
