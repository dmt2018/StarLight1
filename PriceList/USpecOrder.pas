unit USpecOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxCalendar, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, ExtCtrls,
  DBAccess, Ora, MemDS;

type
  TfrmSpecOrder = class(TForm)
    pnlBottom: TPanel;
    BitBtn_Cancel: TcxButton;
    btn_del: TcxButton;
    pnlTop: TPanel;
    btnRefresh: TcxButton;
    dtStart: TcxDateEdit;
    dtEnd: TcxDateEdit;
    grSpecOrders: TcxGrid;
    grSpecOrdersV: TcxGridDBTableView;
    grSpecOrdersL: TcxGridLevel;
    CDS_SpecOrder: TOraQuery;
    DS_SpecOrder: TOraDataSource;
    CDS_SpecOrderSPEC_ORDERS_ID: TFloatField;
    CDS_SpecOrderN_ID: TFloatField;
    CDS_SpecOrderSTART_DATE: TDateTimeField;
    CDS_SpecOrderEND_DATE: TDateTimeField;
    CDS_SpecOrderIS_ACTIVE: TIntegerField;
    CDS_SpecOrderPRICE: TFloatField;
    CDS_SpecOrderCUR_PRICE: TFloatField;
    CDS_SpecOrderPRICE_DATE: TDateTimeField;
    CDS_SpecOrderCOMPILED_NAME_OTDEL: TStringField;
    CDS_SpecOrderF_TYPE: TStringField;
    CDS_SpecOrderF_SUB_TYPE: TStringField;
    CDS_SpecOrderREMARKS: TStringField;
    CDS_SpecOrderRUS_MARKS: TStringField;
    CDS_SpecOrderCOLOUR: TStringField;
    CDS_SpecOrderCOUNTRY: TStringField;
    grSpecOrdersVSPEC_ORDERS_ID: TcxGridDBColumn;
    grSpecOrdersVN_ID: TcxGridDBColumn;
    grSpecOrdersVSTART_DATE: TcxGridDBColumn;
    grSpecOrdersVEND_DATE: TcxGridDBColumn;
    grSpecOrdersVIS_ACTIVE: TcxGridDBColumn;
    grSpecOrdersVPRICE: TcxGridDBColumn;
    grSpecOrdersVCUR_PRICE: TcxGridDBColumn;
    grSpecOrdersVPRICE_DATE: TcxGridDBColumn;
    grSpecOrdersVCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grSpecOrdersVF_TYPE: TcxGridDBColumn;
    grSpecOrdersVF_SUB_TYPE: TcxGridDBColumn;
    grSpecOrdersVREMARKS: TcxGridDBColumn;
    grSpecOrdersVRUS_MARKS: TcxGridDBColumn;
    grSpecOrdersVCOLOUR: TcxGridDBColumn;
    grSpecOrdersVCOUNTRY: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function SpecOfferFormShow : boolean;
  end;

var
  frmSpecOrder: TfrmSpecOrder;

implementation

uses PI_Library, DataModule, Globals;

{$R *.dfm}

procedure TfrmSpecOrder.btnRefreshClick(Sender: TObject);
begin
  try
    CDS_SpecOrder.Close;
    CDS_SpecOrder.ParamByName('v_id_dep').AsInteger := CUR_DEPT_ID;
    CDS_SpecOrder.ParamByName('v_d_b').AsDate       := dtStart.EditValue;
    CDS_SpecOrder.ParamByName('v_d_e').AsDate       := dtEnd.EditValue;
    CDS_SpecOrder.Open;
  except
    on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
end;

procedure TfrmSpecOrder.btn_delClick(Sender: TObject);
begin
  if MessageDlg('Удалить спец.предложение?', mtConfirmation, [mbNo,mbOk], 0, mbOk) = mrOk then
  begin
    CDS_SpecOrder.Delete;
    DM.STAR_DB.Commit;
  end;
end;

procedure TfrmSpecOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmSpecOrder);  //полож.окна
  Action       := caFree;
end;

procedure TfrmSpecOrder.FormShow(Sender: TObject);
begin
  btnRefresh.Click;
  grSpecOrders.SetFocus;
end;

function TfrmSpecOrder.SpecOfferFormShow : boolean;
Begin
    frmSpecOrder := TfrmSpecOrder.Create(Application);
    try
      LoadFormState(frmSpecOrder); //полож.окна
      frmSpecOrder.dtStart.EditValue := Now - 7;
      frmSpecOrder.dtEnd.EditValue   := Now + 14;
      frmSpecOrder.ShowModal;
    finally
      frmSpecOrder := nil;
    end;
end;

end.
