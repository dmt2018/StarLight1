unit UClients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, DBAccess,
  Ora, MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxButtons, ExtCtrls, cxCheckBox, cxGridExportLink, ShellAPI, cxPC, frxClass,
  frxDBSet;

type
  TfrmClients = class(TForm)
    Panel3: TPanel;
    btnClose: TcxButton;
    pmDistMain: TPopupMenu;
    N1: TMenuItem;
    cdsClientsStat: TOraQuery;
    dsClientsStat: TOraDataSource;
    cdsClientsStatORD: TFloatField;
    cdsClientsStatHTYPE: TStringField;
    cdsClientsStatID_CLIENTS: TIntegerField;
    cdsClientsStatNICK: TStringField;
    cdsClientsStatFIO: TStringField;
    cdsClientsStatQUANTITY: TFloatField;
    cdsClientsStatDQ: TFloatField;
    cdsClientsStatISDONE: TFloatField;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    SaveDialog15: TSaveDialog;
    pcOrderInfo: TcxPageControl;
    tshGroupByClient: TcxTabSheet;
    tshItemByClient: TcxTabSheet;
    grClients: TcxGrid;
    grClients_V: TcxGridDBTableView;
    grClients_VORD: TcxGridDBColumn;
    grClients_VID_CLIENTS: TcxGridDBColumn;
    grClients_VFIO: TcxGridDBColumn;
    grClients_VNICK: TcxGridDBColumn;
    grClients_VHTYPE: TcxGridDBColumn;
    grClients_VQUANTITY: TcxGridDBColumn;
    grClients_VDQ: TcxGridDBColumn;
    grClients_VISDONE: TcxGridDBColumn;
    grClients_L: TcxGridLevel;
    grClientsItem: TcxGrid;
    grClientsItem_V: TcxGridDBTableView;
    cxGridDBColumnID_CLIENTS: TcxGridDBColumn;
    cxGridDBColumnNICK: TcxGridDBColumn;
    cxGridDBColumnCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    cxGridDBColumnQUANTITY: TcxGridDBColumn;
    cxGridDBColumnDQ: TcxGridDBColumn;
    cxGridDBColumnCOMPILED_NAME_OTDEL_RAZN: TcxGridDBColumn;
    grClientsItem_L: TcxGridLevel;
    cdsClientsStatItem: TOraQuery;
    dsClientsStatItem: TOraDataSource;
    grClientsItem_VN_ID: TcxGridDBColumn;
    grClientsItem_VZATIRKA: TcxGridDBColumn;
    grClientsItem_VID_ORDERS_LIST: TcxGridDBColumn;
    grClientsItem_VCOLOUR: TcxGridDBColumn;
    grClientsItem_VIS_STOCK: TcxGridDBColumn;
    grClientsItem_VDQ_CHECK: TcxGridDBColumn;
    grClientsItem_VDIST_ID: TcxGridDBColumn;
    grClientsItem_VCOLOUR_RAZN: TcxGridDBColumn;
    fr_order_list: TfrxDBDataset;
    frxReport1: TfrxReport;
    btnPrint: TcxButton;
    N5: TMenuItem;
    mnPrintClientOrder: TMenuItem;
    grClientsItem_VIS_PACK: TcxGridDBColumn;
    cdsClientsStatItemN_ID: TFloatField;
    cdsClientsStatItemQUANTITY: TFloatField;
    cdsClientsStatItemZATIRKA: TFloatField;
    cdsClientsStatItemID_ORDERS_LIST: TFloatField;
    cdsClientsStatItemCOMPILED_NAME_OTDEL: TStringField;
    cdsClientsStatItemCOLOUR: TStringField;
    cdsClientsStatItemIS_STOCK: TFloatField;
    cdsClientsStatItemDQ: TFloatField;
    cdsClientsStatItemDQ_CHECK: TFloatField;
    cdsClientsStatItemDIST_ID: TFloatField;
    cdsClientsStatItemCOMPILED_NAME_OTDEL_RAZN: TStringField;
    cdsClientsStatItemCOLOUR_RAZN: TStringField;
    cdsClientsStatItemNICK: TStringField;
    cdsClientsStatItemID_CLIENTS: TFloatField;
    cdsClientsStatItemIS_PACK: TStringField;
    chbPrintAllClients: TCheckBox;
    mnDelDistribAll: TMenuItem;
    N7: TMenuItem;
    mnDelDistribItem: TMenuItem;
    cdsClientsStatWEBSHOP: TFloatField;
    cdsClientsStatItemWEBSHOP: TFloatField;
    grClients_VWEBSHOP: TcxGridDBColumn;
    grClientsItem_VWEBSHOP: TcxGridDBColumn;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure pcOrderInfoChange(Sender: TObject);
    procedure mnPrintClientOrderClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grClientsItem_VCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBColumnQUANTITYCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
  private
    { Private declarations }
  public
    v_print_zero: boolean;
    IdOrders: string;
    { Public declarations }
  end;

var
  frmClients: TfrmClients;

Function GetDistrStat (vDistIndId, vIdOrders : Variant; print_zero: boolean) : Variant;


implementation

uses DataModule, GlobalsU;

{$R *.dfm}

Function GetDistrStat (vDistIndId, vIdOrders : Variant; print_zero: boolean) : Variant;
Begin
  Application.CreateForm(TfrmClients, frmClients);
  try
  with frmClients do
    Begin
      IdOrders := vIdOrders;
      cdsClientsStat.ParamByName('vDistIndId').AsInteger := vDistIndId;
      //cdsClientsStat.ParamByName('vIdOrders').AsInteger  := vIdOrders;
      cdsClientsStat.Open;

      cdsClientsStatItem.Filter   := '';
      cdsClientsStatItem.Filtered := false;
      cdsClientsStatItem.ParamByName('vDistIndId').AsInteger  := vDistIndId;
      //cdsClientsStatItem.ParamByName('vIdOrders').AsInteger  := vIdOrders;
      cdsClientsStatItem.Open;

      pcOrderInfo.ActivePageIndex := 0;
      v_print_zero := print_zero;
      ShowModal;
    End;
  finally
    frmClients.Free;
  end;
End;

procedure TfrmClients.btnPrintClick(Sender: TObject);
var path : string;
    SavePlace : TBookmark;
begin
  if (cdsClientsStatItem.RecordCount = 0) or (cdsClientsStatItem.RecordCount = 0) then exit;

  path := ExtractFilePath(Application.ExeName);
  Screen.Cursor := crHourGlass;

  try
    SavePlace     := grClientsItem_V.DataController.DataSet.GetBookmark;
    try
    if not chbPrintAllClients.Checked then
    begin
      cdsClientsStatItem.Filter := 'nick=''' + cdsClientsStatItemNICK.AsString + '''';
      cdsClientsStatItem.Filtered := true;
    end;

    if not v_print_zero then
    begin
      if cdsClientsStatItem.Filter = '' then
        cdsClientsStatItem.Filter := 'DQ>0'
      else
        cdsClientsStatItem.Filter := cdsClientsStatItem.Filter + ' and DQ>0';
      cdsClientsStatItem.Filtered := true;
    end;


    frxReport1.LoadFromFile(path+'Reps\order_client_list.fr3');
//    frxReport1.Variables['order_number']   := '''' + cdsClientsStat.ParamByName('vIdOrders').AsString + '''';
    frxReport1.Variables['order_number']   := '''' + IdOrders + '''';
    frxReport1.ShowReport;
    Screen.Cursor := crDefault;

    if not chbPrintAllClients.Checked then
    begin
      cdsClientsStatItem.Filter := '';
      cdsClientsStatItem.Filtered := false;
    end;

    finally
      grClientsItem_V.DataController.DataSet.GotoBookmark(SavePlace);
      grClientsItem_V.DataController.DataSet.FreeBookmark(SavePlace);
    end;

  except
    on E: Exception do
    begin
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;



procedure TfrmClients.cxGridDBColumnQUANTITYCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  AAreEqual := (ARow1.Values[grClientsItem_VN_ID.Index] = ARow2.Values[grClientsItem_VN_ID.Index]); 
end;

procedure TfrmClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.SelQ.Close;
  dm.SelQ.Filter := '';
  dm.SelQ.Filtered := false;
end;


procedure TfrmClients.grClientsItem_VCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var qua, qua2 : Variant;
begin

  if not AViewInfo.Selected then
  begin
    qua  := grClientsItem_V.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grClientsItem_V.GetColumnByFieldName('QUANTITY').Index
                );
    qua2 := grClientsItem_V.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grClientsItem_V.GetColumnByFieldName('DQ').Index
                );

    If ( qua = qua2 ) then ACanvas.Brush.Color := TColor($0078C784);
  end;

end;

// Печать клиентского заказ
procedure TfrmClients.mnPrintClientOrderClick(Sender: TObject);
begin
  if not DM.SelPrepDist.Active or DM.SelPrepDist.IsEmpty then exit;

{ Для печати предварительных инвойсов надо пользоваться "Печать заказа"
  try
     dm.SelQ.Close;
     dm.SelQ.SQL.Clear;
     dm.SelQ.SQL.Add( 'begin creator.DISTRIBUTION_PKG.get_print_client_invoice(:ID_ORDER_, :DIST_IND_ID_, :CURSOR_); end;' );
     dm.SelQ.ParamByName('ID_ORDER_').AsInteger    := cdsClientsStat.ParamByName('vIdOrders').AsInteger;
     dm.SelQ.ParamByName('DIST_IND_ID_').AsInteger := cdsClientsStat.ParamByName('vDistIndId').AsInteger;
     dm.SelQ.ParamByName('CURSOR_').AsCursor;
     dm.SelQ.Open;
     if pcOrderInfo.ActivePageIndex = 0 then
       dm.SelQ.Filter := 'id_clients = '+cdsClientsStatID_CLIENTS.AsString
     else
       dm.SelQ.Filter := 'id_clients = '+cdsClientsStatItemID_CLIENTS.AsString;
     dm.SelQ.Filtered := true;

     frxReport1.LoadFromFile(curdir + '/reps/PrepareInvoice.fr3');
     frxReport1.ShowReport;
     dm.SelQ.Close;
     dm.SelQ.Params.Clear;
  except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  end;
}
end;



procedure TfrmClients.N1Click(Sender: TObject);
begin
  if SaveDialog15.Execute then
  begin
     ExportGridToExcel(SaveDialog15.FileName, grClients, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog15.FileName), nil, nil, SW_RESTORE);
  end;
  grClients.SetFocus;
end;

procedure TfrmClients.N2Click(Sender: TObject);
begin
  if pcOrderInfo.ActivePageIndex = 0 then
    grClients_V.DataController.Groups.FullCollapse
  else
    grClientsItem_V.DataController.Groups.FullCollapse;
end;

procedure TfrmClients.N3Click(Sender: TObject);
begin
  if pcOrderInfo.ActivePageIndex = 0 then
    grClients_V.DataController.Groups.FullExpand
  else
    grClientsItem_V.DataController.Groups.FullExpand;
end;

procedure TfrmClients.pcOrderInfoChange(Sender: TObject);
begin
  btnPrint.Visible := (pcOrderInfo.ActivePageIndex = 1);
  chbPrintAllClients.Visible := btnPrint.Visible;
end;

end.
