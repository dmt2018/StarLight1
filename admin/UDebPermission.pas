unit UDebPermission;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxTextEdit, cxButtonEdit, Menus, cxLookAndFeelPainters,
  StdCtrls, Mask, DBCtrlsEh, DBAccess, Ora, MemDS, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls, cxCheckBox, PI_Library_reg;

type
  TfrmDebPermission = class(TForm)
    pnlTop: TPanel;
    pnlMain: TPanel;
    grClients: TcxGrid;
    grClientsV: TcxGridDBTableView;
    grClientsVNICK: TcxGridDBColumn;
    grClientsVFIO: TcxGridDBColumn;
    grBtnDel: TcxGridDBColumn;
    grClientsVID_CLIENTS: TcxGridDBColumn;
    grClientsL: TcxGridLevel;
    pnlBottom: TPanel;
    btnClose: TcxButton;
    cdsQuery: TOraQuery;
    dsQuery: TOraDataSource;
    DBComboBoxEh2: TDBComboBoxEh;
    Label1: TLabel;
    cdsQueryNICK: TStringField;
    cdsQueryFIO: TStringField;
    cdsQueryID_DEBETORS: TFloatField;
    cdsQueryID_CLIENTS: TIntegerField;
    cdsQueryLAST_DDATE: TDateTimeField;
    cdsQuerySTATE: TIntegerField;
    cdsQueryBEZNAL: TIntegerField;
    cdsQueryMARK: TIntegerField;
    cdsQueryDEBET: TFloatField;
    cdsQueryCREDIT_DAYS: TIntegerField;
    cdsQueryINFO: TStringField;
    cdsQueryDDATE: TDateTimeField;
    cdsQueryRUBL: TIntegerField;
    cdsQueryCHART: TFloatField;
    cdsQueryBLOCK1: TIntegerField;
    cdsQueryBLOCK2: TIntegerField;
    cdsQueryPHONE: TStringField;
    cdsQueryREGION: TIntegerField;
    cdsQueryGROUP_NAME: TStringField;
    cdsQueryID_CLIENTS_GROUPS: TIntegerField;
    cdsQueryKKK: TStringField;
    cdsQueryMARK_KOL: TFloatField;
    cdsQueryMAX_DATE: TDateTimeField;
    cdsQueryGROUP_MAX_DATE: TDateTimeField;
    cdsQueryIS_LOCK: TIntegerField;
    cdsQueryLOCK_FOR: TIntegerField;
    cdsQueryLOCK_CLIENT: TStringField;
    cdsQuerySALES: TFloatField;
    cdsQueryWW: TStringField;
    cdsQueryCHART_FOR_GROUP: TFloatField;
    cdsQueryID_OFFICE: TIntegerField;
    cdsQueryBRIEF: TStringField;
    cdsQueryINN: TStringField;
    cdsQueryITOG_DISCOUNT: TFloatField;
    cdsQueryCHART2: TFloatField;
    cdsQueryCHART_GROUP: TFloatField;
    grClientsVID_DEBETORS: TcxGridDBColumn;
    grClientsVLAST_DDATE: TcxGridDBColumn;
    grClientsVSTATE: TcxGridDBColumn;
    grClientsVBEZNAL: TcxGridDBColumn;
    grClientsVMARK: TcxGridDBColumn;
    grClientsVDEBET: TcxGridDBColumn;
    grClientsVCREDIT_DAYS: TcxGridDBColumn;
    grClientsVINFO: TcxGridDBColumn;
    grClientsVDDATE: TcxGridDBColumn;
    grClientsVRUBL: TcxGridDBColumn;
    grClientsVCHART: TcxGridDBColumn;
    grClientsVBLOCK1: TcxGridDBColumn;
    grClientsVBLOCK2: TcxGridDBColumn;
    grClientsVPHONE: TcxGridDBColumn;
    grClientsVREGION: TcxGridDBColumn;
    grClientsVGROUP_NAME: TcxGridDBColumn;
    grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsVKKK: TcxGridDBColumn;
    grClientsVMARK_KOL: TcxGridDBColumn;
    grClientsVMAX_DATE: TcxGridDBColumn;
    grClientsVGROUP_MAX_DATE: TcxGridDBColumn;
    grClientsVIS_LOCK: TcxGridDBColumn;
    grClientsVLOCK_FOR: TcxGridDBColumn;
    grClientsVLOCK_CLIENT: TcxGridDBColumn;
    grClientsVSALES: TcxGridDBColumn;
    grClientsVWW: TcxGridDBColumn;
    grClientsVCHART_FOR_GROUP: TcxGridDBColumn;
    grClientsVID_OFFICE: TcxGridDBColumn;
    grClientsVBRIEF: TcxGridDBColumn;
    grClientsVINN: TcxGridDBColumn;
    grClientsVITOG_DISCOUNT: TcxGridDBColumn;
    grClientsVCHART2: TcxGridDBColumn;
    grClientsVCHART_GROUP: TcxGridDBColumn;
    cdsQueryD_CHECKED: TFloatField;
    Q_IDD: TOraQuery;
    btnSave: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure DBComboBoxEh2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDebPermission: TfrmDebPermission;

implementation

uses DataM;

{$R *.dfm}

procedure TfrmDebPermission.btnSaveClick(Sender: TObject);
var user_id: integer;
begin
  if not btnSave.Visible then ModalResult := mrOk;

  Q_IDD.Close;
  Q_IDD.SQL.Clear;
  Q_IDD.SQL.Add('delete from DEBETOR_PERMISSIONS where USER_ID='+IntToStr(DBComboBoxEh2.Tag));
  Q_IDD.Execute;

  Q_IDD.Close;
  Q_IDD.SQL.Clear;
  Q_IDD.SQL.Add('insert into DEBETOR_PERMISSIONS values(:p1, :p2)');
  cdsQuery.Filter := 'd_checked=1';
  cdsQuery.Filtered := true;

  if cdsQuery.RecordCount = 0 then
  begin
    cdsQuery.Filtered := false;
    cdsQuery.Filter := '';
    exit;
  end;

  if DBComboBoxEh2.Tag > 0 then
    user_id := DBComboBoxEh2.Tag
  else
  begin
    user_id := DBComboBoxEh2.Value;
    DBComboBoxEh2.Tag := DBComboBoxEh2.Value;
  end;


  cdsQuery.DisableControls;
  try
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      Q_IDD.ParamByName('p1').AsInteger := user_id;
      Q_IDD.ParamByName('p2').AsInteger := cdsQueryID_DEBETORS.AsInteger;
      Q_IDD.Execute;
      cdsQuery.next;
    end;
  finally
    DM.OraSession1.Commit;
    cdsQuery.EnableControls;
    ModalResult := mrOk;
  end;
end;

procedure TfrmDebPermission.DBComboBoxEh2Change(Sender: TObject);
begin
  cdsQuery.Close;
  cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Value;
  cdsQuery.Open;
  grClients.SetFocus;
end;

procedure TfrmDebPermission.FormCreate(Sender: TObject);
begin
  DBComboBoxEh2.OnChange := nil;
  FillComboEh(Q_IDD, DBComboBoxEh2, 'select id_clients, FIO from employees_view where (id_office = '+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+' = 0) and active=1 and login is not null order by FIO');
  Q_IDD.Close;

  cdsQuery.Filter   := '';
  cdsQuery.Filtered := false;
  grClientsV.DataController.Filter.Clear;
  grClientsV.DataController.Filter.Active := false;
end;

procedure TfrmDebPermission.FormShow(Sender: TObject);
begin
  cdsQuery.Close;
  cdsQuery.ParamByName('office_id').AsInteger := DM.id_office;

  if DBComboBoxEh2.Tag > 0 then
  begin
    //frmDebPermission.btnSave.Visible := false;
    DBComboBoxEh2.ReadOnly           := true;
    DBComboBoxEh2.Visible            := false;
    cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Tag;
    cdsQuery.Open;

    grBtnDel.DataBinding.AddToFilter(nil, foEqual, 1);
    grClientsV.DataController.Filter.Active := True;
  end
  else
  begin
    //frmDebPermission.btnSave.Visible := true;
    DBComboBoxEh2.ReadOnly           := false;
    DBComboBoxEh2.Visible            := true;
    cdsQuery.ParamByName('user_id').AsInteger   := DBComboBoxEh2.Value;
    cdsQuery.Open;
    DBComboBoxEh2.OnChange := DBComboBoxEh2Change;
  end;
end;

end.
