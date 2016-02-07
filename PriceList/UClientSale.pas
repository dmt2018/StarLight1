unit UClientSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ActnList, cxButtons,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxCalendar, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Ora, MemDS, DBAccess, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxImageComboBox, cxTextEdit, ImgList, cxContainer,
  cxMaskEdit, cxSpinEdit, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmClientSales = class(TForm)
    Panel1: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnCopy: TcxButton;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel2: TPanel;
    grSalesV: TcxGridDBTableView;
    grSalesL: TcxGridLevel;
    grSales: TcxGrid;
    CDS_SALE: TOraQuery;
    DS_SALE: TOraDataSource;
    _grSalesVID_EMPLOYEES: TcxGridDBColumn;
    grSalesVSALE: TcxGridDBColumn;
    grSalesVSALE_STATUS: TcxGridDBColumn;
    grSalesVDATE1: TcxGridDBColumn;
    grSalesVDATE2: TcxGridDBColumn;
    grSalesVNOTIME: TcxGridDBColumn;
    grSalesVPERSENTS: TcxGridDBColumn;
    btn_del: TcxButton;
    grSalesVID: TcxGridDBColumn;
    aRefresh: TAction;
    grSalesVNICK: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    mn_del_one: TMenuItem;
    mn_del_all_cl: TMenuItem;
    ImageList1: TImageList;
    mn_del_all_gr: TMenuItem;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vPREFIX: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_vTTYPE: TcxGridDBBandedColumn;
    gr_clients_vID_CLIENTS_GROUPS: TcxGridDBBandedColumn;
    gr_clients_vTTYPE_NAME: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    debt_name: TLabel;
    rb_euro: TRadioButton;
    rb_rubl: TRadioButton;
    ed_discount: TcxSpinEdit;
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
    Q_CLIENTSTTYPE_NAME: TStringField;
    Q_CLIENTSPREFIX: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    CDS_SALEID: TIntegerField;
    CDS_SALEID_EMPLOYEES: TIntegerField;
    CDS_SALESALE: TFloatField;
    CDS_SALESALE_STATUS: TIntegerField;
    CDS_SALEDATE1: TDateTimeField;
    CDS_SALEID_DEPARTMENTS: TIntegerField;
    CDS_SALEDATE2: TDateTimeField;
    CDS_SALENOTIME: TIntegerField;
    CDS_SALEPERSENTS_NAME: TStringField;
    CDS_SALENICK: TStringField;
    CDS_SALEID_CLIENTS_GROUPS: TIntegerField;
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRefreshExecute(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
    procedure mn_del_oneClick(Sender: TObject);
    procedure mn_del_all_clClick(Sender: TObject);
    procedure mn_del_all_grClick(Sender: TObject);
    procedure do_query(sql: string);
    procedure grSalesVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    id_client: integer;
    id_group: integer;
    { Public declarations }
  end;

var
  frmClientSales: TfrmClientSales;

implementation

uses DataModule, Globals;

{$R *.dfm}

procedure TfrmClientSales.DocSave_ActionExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmClientSales.cxButton1Click(Sender: TObject);
begin
  try
    with DM.ForceQ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('begin clients_pkg.save_client_sales(:ID_, :id_client_, :id_dep_, :sale_, :sale_status_, :date1_, :date2_, :notime_, :persents_ ); end;');
      Prepare;
      ParamByName('ID_').Value         := 0;
      ParamByName('id_client_').Value  := Q_CLIENTSID_CLIENTS.AsInteger; // _gr_cashbook_vID_CLIENTS.EditValue;
      ParamByName('id_dep_').Value     := CUR_DEPT_ID;
      ParamByName('sale_').Value       := ed_discount.EditValue;
      ParamByName('sale_status_').Value := 0;
      ParamByName('date1_').Value      := NULL;
      ParamByName('date2_').Value      := NULL;
      ParamByName('notime_').Value     := 0;
      if rb_euro.Checked then
        ParamByName('persents_').Value := 2
      else
        ParamByName('persents_').Value := 3;
      Execute;
    end;

    CDS_SALE.Refresh;
    CDS_SALE.Locate('ID',DM.ForceQ.ParamByName('id_').AsInteger,[]);
  except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
end;

procedure TfrmClientSales.FormShow(Sender: TObject);
begin
  debt_name.Caption := CUR_DEPT_NAME;
  Q_CLIENTS.Close;
  Q_CLIENTS.ParamByName('v_office').AsInteger := DM.id_office;
  Q_CLIENTS.Open;
  aRefresh.Execute;
end;

procedure TfrmClientSales.grSalesVCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  Col, price_old, price_new, RUBLE_PRICE : Variant;
begin
    // Подкрасим строчку и колонку для клиента
    Col := grSalesV.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grSalesV.GetColumnByFieldName('SALE_STATUS').Index
                );
    if (Col = 0) then
    begin
      //ACanvas.Font.Style := [fsItalic];
      ACanvas.Font.Color := clGrayText;
    end;
end;

procedure TfrmClientSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (CDS_SALE.State = dsEdit) then CDS_SALE.Post;
  DM.STAR_DB.Commit;
  CDS_SALE.Close;
end;

procedure TfrmClientSales.aRefreshExecute(Sender: TObject);
begin
  try
    CDS_SALE.Close;
    CDS_SALE.ParamByName('V_ID_DEP').AsInteger    := CUR_DEPT_ID;
    CDS_SALE.Open;
  except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
  End;
end;


//
//  Скопируем скидку на всю группу
//
procedure TfrmClientSales.BitBtnCopyClick(Sender: TObject);
var i: integer;
begin
  if (CDS_SALE.RecordCount > 0) and (MessageDlg('Вы уверены, что хотите копировать скидку на всю группу?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
  begin
    try
      i:= CDS_SALEID.AsInteger;
      with DM.ForceQ do
      begin
        Close;
        SQL.Clear;
        SQL.Add('begin clients_pkg.copy_sales(:ID_, :ID_CL_, :GROUP_); end;');
        ParamByName('ID_').AsInteger := CDS_SALEID.AsInteger;
        ParamByName('ID_CL_').AsInteger := CDS_SALEID_EMPLOYEES.AsInteger;
        ParamByName('GROUP_').AsInteger := id_group;
        Execute;
      end;

      aRefresh.Execute;
      CDS_SALE.Locate('ID',i,[]);
      grSales.SetFocus;
    except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
  end;
end;


// Удалим одну
procedure TfrmClientSales.mn_del_oneClick(Sender: TObject);
begin
  if (CDS_SALE.RecordCount > 0) and (MessageDlg('Вы уверены, что хотите удалить одну скидку?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
  begin
    do_query('delete from CLIENTS_SALES where id='+CDS_SALEID.AsString);
  end;
end;

// Удалим все у клиента
procedure TfrmClientSales.mn_del_all_clClick(Sender: TObject);
begin
  if (CDS_SALE.RecordCount > 0) and (MessageDlg('Вы уверены, что хотите удалить все скидки клиента?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
  begin
    do_query('delete from CLIENTS_SALES where ID_EMPLOYEES='+CDS_SALEID_EMPLOYEES.AsString);
  end;
end;

// Удалим все у группы
procedure TfrmClientSales.mn_del_all_grClick(Sender: TObject);
begin
  if (CDS_SALE.RecordCount > 0) and (MessageDlg('Вы уверены, что хотите удалить все скидки по группе?',mtConfirmation,[mbYes, mbNo],0) = mrYes) then
  begin
    do_query('delete from CLIENTS_SALES where ID_EMPLOYEES in (select id_clients from clients where id_clients_groups='+CDS_SALEID_CLIENTS_GROUPS.AsString+')');
  end;
end;

procedure TfrmClientSales.do_query(sql: string);
begin
  try
    if (CDS_SALE.State = dsEdit) then CDS_SALE.Cancel;
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add(sql);
    DM.ForceQ.Execute;
    DM.STAR_DB.Commit;
    aRefresh.Execute;
//    CDS_SALE.Refresh;
  except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
  End;
end;

end.
