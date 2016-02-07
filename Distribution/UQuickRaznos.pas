unit UQuickRaznos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxSpinEdit;

type
  TfrmQuickRaznos = class(TForm)
    Panel3: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    cdsClientsStat: TOraQuery;
    dsClientsStat: TOraDataSource;
    cdsClientsStatID_ORDERS_CLIENTS: TFloatField;
    cdsClientsStatID_ORDERS: TFloatField;
    cdsClientsStatID_CLIENTS: TIntegerField;
    cdsClientsStatN_TRUCK: TIntegerField;
    cdsClientsStatCAPACITY: TFloatField;
    cdsClientsStatD_DATE: TDateTimeField;
    cdsClientsStatPACK_: TIntegerField;
    cdsClientsStatALPHA: TStringField;
    cdsClientsStatN_TYPE: TIntegerField;
    cdsClientsStatSTATUS: TIntegerField;
    cdsClientsStatON_DATE: TDateTimeField;
    cdsClientsStatNICK: TStringField;
    cdsClientsStatFIO: TStringField;
    cdsClientsStatID_ORDERS_CLIENTS_: TFloatField;
    cdsClientsStatN_ID: TFloatField;
    cdsClientsStatQUANTITY: TIntegerField;
    cdsClientsStatZATIRKA: TIntegerField;
    cdsClientsStatID_ORDERS_LIST: TFloatField;
    cdsClientsStatFULL_NAME: TStringField;
    cdsClientsStatCOMPILED_NAME_OTDEL_ORD: TStringField;
    cdsClientsStatIS_STOCK: TFloatField;
    cdsClientsStatDQ: TFloatField;
    cdsClientsStatDQ_CHECK: TFloatField;
    cdsClientsStatDIST_ID: TFloatField;
    cdsClientsStatCOMPILED_NAME_OTDEL: TStringField;
    cdsClientsStatDISTRIBUTED_NUMBER: TFloatField;
    cdsClientsStatPREP_DIST_ID: TFloatField;
    grQuickRaznos: TcxGrid;
    grQuickRaznos_v: TcxGridDBTableView;
    ginfo_nick: TcxGridDBColumn;
    ginfo_PACK_: TcxGridDBColumn;
    _ginfo_FIO: TcxGridDBColumn;
    _ginfo_ID_ORDERS_CLIENTS: TcxGridDBColumn;
    _ginfo_ID_ORDERS: TcxGridDBColumn;
    _ginfo_ID_CLIENTS: TcxGridDBColumn;
    _ginfo_D_DATE: TcxGridDBColumn;
    _ginfo_N_TYPE: TcxGridDBColumn;
    _ginfo_STATUS: TcxGridDBColumn;
    _ginfo_ALPHA: TcxGridDBColumn;
    _ginfo_N_ID: TcxGridDBColumn;
    ginfo_ZATIRKA: TcxGridDBColumn;
    ginfo_QUANTITY: TcxGridDBColumn;
    _ginfo_FULL_NAME: TcxGridDBColumn;
    ginfo_GREAT_NAME: TcxGridDBColumn;
    _ginfo_GREAT_NAME_F: TcxGridDBColumn;
    grQuickRaznos_vDQ: TcxGridDBColumn;
    ginfo_GREAT_NAME2: TcxGridDBColumn;
    _ginfo_GREAT_NAME_F2: TcxGridDBColumn;
    _ginfo_IS_STOCK: TcxGridDBColumn;
    ginfo_DQ_CHECK: TcxGridDBColumn;
    grQuickRaznos_vDIST_ID: TcxGridDBColumn;
    grQuickRaznos_vPREP_DIST_ID: TcxGridDBColumn;
    grQuickRaznos_l: TcxGridLevel;
    Label1: TLabel;
    Label2: TLabel;
    procedure cdsClientsStatAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grQuickRaznos_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grQuickRaznos_vEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
  private
    pPrepDistID : Variant;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQuickRaznos: TfrmQuickRaznos;

Function GetQuickRaznos (vDistIndId, vIdOrders, vNID, vPrepDistID : Variant) : Variant;

implementation

uses DataModule;

{$R *.dfm}

Function GetQuickRaznos (vDistIndId, vIdOrders, vNID, vPrepDistID : Variant) : Variant;
Begin
  Application.CreateForm(TfrmQuickRaznos, frmQuickRaznos);
  try
  with frmQuickRaznos do
    Begin
      cdsClientsStat.ParamByName('DIST_IND_ID_').AsInteger := vDistIndId;
      cdsClientsStat.ParamByName('ID_ORDER_').AsInteger    := vIdOrders;
      cdsClientsStat.ParamByName('N_ID_').AsInteger        := vNID;
      cdsClientsStat.Open;
      pPrepDistID := vPrepDistID;
      ShowModal;
    End;
  finally
    frmQuickRaznos.Free;
  end;
End;

procedure TfrmQuickRaznos.cdsClientsStatAfterPost(DataSet: TDataSet);
var id: integer;
begin
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE2(:IN_PREP_DIST_ID, :ID_ORDERS_LIST, :DQ, :IN_DIST_ID); end;');
  if cdsClientsStatPREP_DIST_ID.IsNull then
    DM.SelQ.ParamByName('IN_PREP_DIST_ID').AsInteger := pPrepDistID
  else
  begin
    DM.SelQ.ParamByName('IN_PREP_DIST_ID').AsInteger := cdsClientsStatPREP_DIST_ID.AsInteger;
//    SelPrepDist.Locate('PREP_DIST_ID',cdsClientsStatPREP_DIST_ID.AsInteger,[]);
  end;

  DM.SelQ.ParamByName('ID_ORDERS_LIST').AsInteger  := cdsClientsStatID_ORDERS_LIST.AsInteger;
  DM.SelQ.ParamByName('DQ').AsInteger              := cdsClientsStatDQ.AsInteger;
  DM.SelQ.ParamByName('IN_DIST_ID').AsInteger      := cdsClientsStatDIST_ID.AsInteger;
  DM.SelQ.Execute;
{
  SelPrepDist.RefreshRecord;
  CDS_GOODS.RefreshRecord;
  if (CDS_ORDER_NIDDQ.AsInteger = 0) then
  begin
    id := CDS_ORDER_NIDDIST_ID.AsInteger;
    CDS_ORDER_NID.Refresh;
    CDS_ORDER_NID.Locate('DIST_ID',id,[]);
  end;
}
end;

procedure TfrmQuickRaznos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsClientsStat.State = dsEdit then cdsClientsStat.Post;
end;

procedure TfrmQuickRaznos.grQuickRaznos_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var var1 : Variant;
begin
  if not AViewInfo.Selected then
  begin
    var1 := grQuickRaznos_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grQuickRaznos_v.GetColumnByFieldName('PACK_').Index
                );
    if (var1 = 0) then ACanvas.Brush.Color := DM.stViewColor.Color;
  end;
end;

procedure TfrmQuickRaznos.grQuickRaznos_vEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  AAllow := (cdsClientsStatPACK_.AsInteger = 0);
end;

end.
