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
begin
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

  DBComboBoxEh2.Tag := DBComboBoxEh2.Value;
  cdsQuery.DisableControls;
  try
    cdsQuery.First;
    while not cdsQuery.Eof do
    begin
      Q_IDD.ParamByName('p1').AsInteger := DBComboBoxEh2.Value;
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

procedure TfrmDebPermission.FormCreate(Sender: TObject);
begin
  FillComboEh(Q_IDD, DBComboBoxEh2, 'select id_clients, FIO from employees_view where (id_office = '+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+' = 0) and active=1 and login is not null order by FIO');
  Q_IDD.Close;

  cdsQuery.Close;
  cdsQuery.ParamByName('office_id').AsInteger := DM.id_office;
  cdsQuery.Open;
end;

end.
