unit UClientSale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ActnList, cxButtons,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxCalendar, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  Ora, MemDS, DBAccess, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxImageComboBox, cxTextEdit, ImgList;

type
  TfrmClientSales = class(TForm)
    Panel1: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnCopy: TcxButton;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    grSalesV: TcxGridDBTableView;
    grSalesL: TcxGridLevel;
    grSales: TcxGrid;
    CDS_SALE: TOraQuery;
    DS_SALE: TOraDataSource;
    CDS_SALEID_EMPLOYEES: TIntegerField;
    CDS_SALENAME: TStringField;
    CDS_SALESALE: TFloatField;
    CDS_SALESALE_STATUS: TIntegerField;
    CDS_SALEDATE1: TDateTimeField;
    CDS_SALEDATE2: TDateTimeField;
    CDS_SALENOTIME: TIntegerField;
    _grSalesVID_EMPLOYEES: TcxGridDBColumn;
    _grSalesVNAME: TcxGridDBColumn;
    grSalesVSALE: TcxGridDBColumn;
    grSalesVSALE_STATUS: TcxGridDBColumn;
    grSalesVDATE1: TcxGridDBColumn;
    grSalesVDATE2: TcxGridDBColumn;
    grSalesVNOTIME: TcxGridDBColumn;
    CDS_SALEPERSENTS: TIntegerField;
    grSalesVPERSENTS: TcxGridDBColumn;
    cxButton1: TcxButton;
    btn_del: TcxButton;
    CDS_SALEID_DEPARTMENTS: TIntegerField;
    grSalesVID: TcxGridDBColumn;
    CDS_SALEID: TIntegerField;
    Label3: TLabel;
    aRefresh: TAction;
    cb_group: TCheckBox;
    CDS_SALENICK: TStringField;
    CDS_SALEID_CLIENTS_GROUPS: TIntegerField;
    grSalesVNAME: TcxGridDBColumn;
    grSalesVNICK: TcxGridDBColumn;
    grSalesVID_CLIENTS_GROUPS: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    mn_del_one: TMenuItem;
    mn_del_all_cl: TMenuItem;
    ImageList1: TImageList;
    mn_del_all_gr: TMenuItem;
    procedure DocSave_ActionExecute(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRefreshExecute(Sender: TObject);
    procedure cb_groupClick(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
    procedure mn_del_oneClick(Sender: TObject);
    procedure mn_del_all_clClick(Sender: TObject);
    procedure mn_del_all_grClick(Sender: TObject);
    procedure do_query(sql: string);
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

uses DataM;

{$R *.dfm}

procedure TfrmClientSales.DocSave_ActionExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmClientSales.cxButton1Click(Sender: TObject);
begin
  try
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin clients_pkg.save_client_sales(:ID_, :id_client_, :id_dep_, :sale_, :sale_status_, :date1_, :date2_, :notime_, :persents_ ); end;');
    DM.Q_SQL.Prepare;
    DM.Q_SQL.ParamByName('ID_').Value         := 0;
    DM.Q_SQL.ParamByName('id_client_').Value  := id_client;
    DM.Q_SQL.ParamByName('id_dep_').Value     := 62;
    DM.Q_SQL.ParamByName('sale_').Value       := 0;
    DM.Q_SQL.ParamByName('sale_status_').Value := 1;
    DM.Q_SQL.ParamByName('date1_').Value      := NULL;
    DM.Q_SQL.ParamByName('date2_').Value      := NULL;
    DM.Q_SQL.ParamByName('notime_').Value     := 0;
    DM.Q_SQL.ParamByName('persents_').Value   := 1;
    DM.Q_SQL.Execute;

    CDS_SALE.Refresh;
    CDS_SALE.Locate('ID',DM.Q_SQL.ParamByName('id_').AsInteger,[]);
  except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
end;

procedure TfrmClientSales.FormShow(Sender: TObject);
begin
  aRefresh.Execute;
end;

procedure TfrmClientSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (CDS_SALE.State = dsEdit) then CDS_SALE.Post;
  CDS_SALE.Close;
end;

procedure TfrmClientSales.aRefreshExecute(Sender: TObject);
begin
  try
    CDS_SALE.Close;
    CDS_SALE.ParamByName('id_').AsInteger    := id_client;
    if ((cb_group.Checked) and (id_group > 2)) then
      CDS_SALE.ParamByName('group_').AsInteger := id_group
    else
      CDS_SALE.ParamByName('group_').AsInteger := 0;
    CDS_SALE.Open;
  except
    on E: Exception do
        begin
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
  End;
end;

procedure TfrmClientSales.cb_groupClick(Sender: TObject);
begin
  if (id_group > 2) then aRefresh.Execute;
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
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin clients_pkg.copy_sales(:ID_, :ID_CL_, :GROUP_); end;');
      DM.Q_SQL.ParamByName('ID_').AsInteger := CDS_SALEID.AsInteger;
      DM.Q_SQL.ParamByName('ID_CL_').AsInteger := CDS_SALEID_EMPLOYEES.AsInteger;
      DM.Q_SQL.ParamByName('GROUP_').AsInteger := id_group;
      DM.Q_SQL.Execute;

      cb_group.Checked := true;
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
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add(sql);
    DM.Q_SQL.Execute;
    DM.OraSession1.Commit;
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
