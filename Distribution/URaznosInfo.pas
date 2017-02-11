unit URaznosInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxSpinEdit, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxLabel, cxDBLabel;

type
  TfrmNomRaznos = class(TForm)
    pnlBottom: TPanel;
    btnClose: TcxButton;
    pnlMain: TPanel;
    grQuickRaznos: TcxGrid;
    grQuickRaznos_v: TcxGridDBTableView;
    ginfo_nick: TcxGridDBColumn;
    ginfo_QUANTITY: TcxGridDBColumn;
    grQuickRaznos_l: TcxGridLevel;
    cdsClientsStat: TOraQuery;
    dsClientsStat: TOraDataSource;
    cxDBLabel1: TcxDBLabel;
    cxDBLabel2: TcxDBLabel;
    Label1: TLabel;
    cdsClientsStatN_ID: TFloatField;
    cdsClientsStatTOTAL_QUANTITY: TFloatField;
    cdsClientsStatLEFT_QUANTITY: TFloatField;
    cdsClientsStatCOMPILED_NAME_OTDEL: TStringField;
    cdsClientsStatCOLOUR: TStringField;
    cdsClientsStatQUANTITY: TFloatField;
    cdsClientsStatINV_QUANTITY: TFloatField;
    cdsClientsStatINV_CLIENT: TStringField;
    cdsClientsStatORD_CLIENT: TStringField;
    cdsClientsStatPACK_: TIntegerField;
    cdsClientsStatORD_QUANTITY: TFloatField;
    cdsClientsStatRES_PACK: TFloatField;
    cdsClientsStatRES_CLIENT: TStringField;
    cdsClientsStatRES_QUANTITY: TFloatField;
    grQuickRaznos_vN_ID: TcxGridDBColumn;
    grQuickRaznos_vTOTAL_QUANTITY: TcxGridDBColumn;
    grQuickRaznos_vLEFT_QUANTITY: TcxGridDBColumn;
    grQuickRaznos_vQUANTITY: TcxGridDBColumn;
    grQuickRaznos_vINV_QUANTITY: TcxGridDBColumn;
    grQuickRaznos_vINV_CLIENT: TcxGridDBColumn;
    grQuickRaznos_vORD_CLIENT: TcxGridDBColumn;
    grQuickRaznos_vPACK_: TcxGridDBColumn;
    grQuickRaznos_vORD_QUANTITY: TcxGridDBColumn;
    grQuickRaznos_vRES_PACK: TcxGridDBColumn;
    grQuickRaznos_vCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grQuickRaznos_vCOLOUR: TcxGridDBColumn;
    cdsClientsStatORDER_N_ID: TFloatField;
    cdsClientsStatORDER_COMPILED_NAME_OTDEL: TStringField;
    grQuickRaznos_vORDER_N_ID: TcxGridDBColumn;
    grQuickRaznos_vORDER_COMPILED_NAME_OTDEL: TcxGridDBColumn;
    cdsClientsStatDIST_WEBSHOP_ID: TFloatField;
    grQuickRaznos_vDIST_WEBSHOP_ID: TcxGridDBColumn;
    procedure grQuickRaznos_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNomRaznos: TfrmNomRaznos;

Function GetRaznosInfo (vDistIndId, vNID, vPrepDistID : Variant; vText : String) : Variant;

implementation

uses DataModule;

{$R *.dfm}

Function GetRaznosInfo (vDistIndId, vNID, vPrepDistID : Variant; vText : String) : Variant;
var str: string;
Begin
  Application.CreateForm(TfrmNomRaznos, frmNomRaznos);
  try
  with frmNomRaznos do
    Begin
      cdsClientsStat.ParamByName('p_dist_ind_id').AsInteger := vDistIndId;
      cdsClientsStat.ParamByName('p_n_id').AsInteger        := vNID;
      cdsClientsStat.Open;
      Label1.Visible := false;
{
      str := 'Всего/остаток/заказ/сток: '+
        VarToStr(grQuickRaznos_v.DataController.Summary.FooterSummaryValues[grQuickRaznos_vTOTAL_QUANTITY.Index]) + '/' +
        VarToStr(grQuickRaznos_v.DataController.Summary.FooterSummaryValues[grQuickRaznos_vLEFT_QUANTITY.Index]) + '/' +
        DM.SelPrepDistALLORDER.AsString+'/'+DM.SelPrepDistSTOCK.AsString;
      Label1.Caption := str; //vText;
}
      ShowModal;
    End;
  finally
    frmNomRaznos.Free;
  end;
End;

procedure TfrmNomRaznos.grQuickRaznos_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var qua, qua2 : Variant;
begin

  if not AViewInfo.Selected then
  begin
    qua  := grQuickRaznos_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grQuickRaznos_v.GetColumnByFieldName('QUANTITY').Index
                );
    qua2 := grQuickRaznos_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grQuickRaznos_v.GetColumnByFieldName('RES_QUANTITY').Index
                );

    If ( qua = qua2 ) then ACanvas.Brush.Color := TColor($0078C784);


    // Подкрасим разнесенную позицию если она с WebShop
    qua := grQuickRaznos_v.DataController.GetValue(
              AViewInfo.GridRecord.RecordIndex, grQuickRaznos_v.GetColumnByFieldName('DIST_WEBSHOP_ID').Index
           );
    If (qua <> null) then
    begin
      ACanvas.Font.Style := [fsBold];
      ACanvas.Font.Color := clNavy;
    end;

  end;

end;

end.
