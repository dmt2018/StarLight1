unit UDobor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxGridDBTableView, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls, DBAccess, Ora, MemDS,
  ActnList, cxCurrencyEdit;

type
  TfrmDobor = class(TForm)
    ActionList1: TActionList;
    aSerchNick: TAction;
    aSave: TAction;
    aFiltrOn: TAction;
    aFiltrOff: TAction;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    pnDoborBottom: TPanel;
    btnSave: TcxButton;
    cxButton1: TcxButton;
    pnDoborTop: TPanel;
    Label1: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edit_serchnick: TEdit;
    edit_serchfio: TEdit;
    btn_filtron: TcxButton;
    cxButton2: TcxButton;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    gr_Dobor: TcxGrid;
    gr_Dobor_v: TcxGridDBTableView;
    gr_Dobor_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    gr_Dobor_vSALDO: TcxGridDBColumn;
    gr_Dobor_vTOTAL_QUANTITY: TcxGridDBColumn;
    gr_Dobor_vLEFT_QUANTITY: TcxGridDBColumn;
    gr_Dobor_vALLORDER: TcxGridDBColumn;
    gr_Dobor_vSTOCK: TcxGridDBColumn;
    gr_Dobor_vWHERE_FLOWER_IS: TcxGridDBColumn;
    gr_Dobor_vPREP_DIST_ID: TcxGridDBColumn;
    gr_Dobor_vN_ID: TcxGridDBColumn;
    gr_Dobor_vINVOICE_DATA_ID: TcxGridDBColumn;
    gr_Dobor_vID_STORE_MAIN: TcxGridDBColumn;
    gr_Dobor_vCOMPILED_NAME: TcxGridDBColumn;
    gr_Dobor_vDIST_IND_ID: TcxGridDBColumn;
    gr_Dobor_vNBUTTON: TcxGridDBColumn;
    gr_Dobor_vHOL_SUB_TYPE: TcxGridDBColumn;
    gr_Dobor_vHOL_TYPE: TcxGridDBColumn;
    gr_Dobor_vF_NAME_RU: TcxGridDBColumn;
    gr_Dobor_vFT_ID: TcxGridDBColumn;
    gr_Dobor_vFST_ID: TcxGridDBColumn;
    gr_Dobor_vF_TYPE: TcxGridDBColumn;
    gr_Dobor_vORDERID: TcxGridDBColumn;
    gr_Dobor_l: TcxGridLevel;
    SelPrepDist: TOraQuery;
    SelPrepDistPREP_DIST_ID: TFloatField;
    SelPrepDistDIST_IND_ID: TFloatField;
    SelPrepDistN_ID: TFloatField;
    SelPrepDistINVOICE_DATA_ID: TFloatField;
    SelPrepDistID_STORE_MAIN: TFloatField;
    SelPrepDistTOTAL_QUANTITY: TFloatField;
    SelPrepDistLEFT_QUANTITY: TFloatField;
    SelPrepDistCOMPILED_NAME: TStringField;
    SelPrepDistCOMPILED_NAME_OTDEL: TStringField;
    SelPrepDistFT_ID: TFloatField;
    SelPrepDistFST_ID: TFloatField;
    SelPrepDistWHERE_FLOWER_IS: TStringField;
    SelPrepDistNBUTTON: TFloatField;
    SelPrepDistHOL_SUB_TYPE: TStringField;
    SelPrepDistF_NAME_RU: TStringField;
    SelPrepDistSTOCK: TFloatField;
    SelPrepDistALLORDER: TFloatField;
    SelPrepDistHOL_TYPE: TStringField;
    SelPrepDistF_TYPE: TStringField;
    SelPrepDistORDERID: TFloatField;
    SelPrepDistSALDO: TStringField;
    SelPrepDist_DS: TOraDataSource;
    SelPrepDistEDITABLE: TFloatField;
    gr_Dobor_vEDITABLE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    st_notactive: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure aFiltrOnExecute(Sender: TObject);
    procedure aFiltrOffExecute(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure aSerchNickExecute(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gr_Dobor_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDobor: TfrmDobor;

implementation

{$R *.dfm}

procedure TfrmDobor.aFiltrOffExecute(Sender: TObject);
begin
  edit_serchnick.Text := '';
  edit_serchfio.Text  := '';
  gr_clients_v.DataController.Filter.Clear;
  gr_clients_v.DataController.Filter.Active := false;
end;

procedure TfrmDobor.aFiltrOnExecute(Sender: TObject);
begin
  if trim(edit_serchnick.Text) <> '' then
  begin
	  gr_clients_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchnick.Text + '%',
        edit_serchnick.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;

  if trim(edit_serchfio.Text) <> '' then
  begin
	  gr_clients_vFIO.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchfio.Text + '%',
        edit_serchfio.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;
end;

procedure TfrmDobor.aSaveExecute(Sender: TObject);
var err_msg: string;
begin
  if SelPrepDist.State = dsEdit then SelPrepDist.Post;
  SelPrepDist.DisableControls;
  try
    SelPrepDist.First;
    err_msg := '';
    while not SelPrepDist.Eof do
    begin
      if SelPrepDistLEFT_QUANTITY.AsInteger < SelPrepDistEDITABLE.AsInteger then
        err_msg := err_msg + SelPrepDistCOMPILED_NAME_OTDEL.AsString + #10#13;

      SelPrepDist.Next;
    end;
    if err_msg = '' then ModalResult := mrOk
    else MessageBox(Handle, PChar('Встречены позиции, распределение в которых больше чем остаток'+#10#13+err_msg), 'Внимание', MB_ICONWARNING);

  finally
    SelPrepDist.EnableControls;
  end;
end;

procedure TfrmDobor.aSerchNickExecute(Sender: TObject);
begin
  edit_serchnick.SetFocus;
end;

procedure TfrmDobor.FormCreate(Sender: TObject);
begin
  Q_CLIENTS.Open;
end;

procedure TfrmDobor.gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin
  if {(not AViewInfo.Selected) and} (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Блок кредитом
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    if (val1 = 1) then
         ACanvas.Brush.Color := st_block2.Color;

    // Блок бухом
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );
    if (val2 = 1) then
         ACanvas.Brush.Color := st_block1.Color;
  end;
end;

procedure TfrmDobor.gr_Dobor_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin
  if {(not AViewInfo.Selected) and} (gr_Dobor_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Блок кредитом
    val1  := gr_Dobor_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_Dobor_v.GetColumnByFieldName('EDITABLE').Index
                );
    val2  := gr_Dobor_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_Dobor_v.GetColumnByFieldName('LEFT_QUANTITY').Index
                );
    if (val1 > val2) then
         ACanvas.Brush.Color := st_red.Color;
  end;
end;

end.
