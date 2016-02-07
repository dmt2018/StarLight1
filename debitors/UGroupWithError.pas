unit UGroupWithError;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, DBAccess, Ora, MemDS, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmBadClients = class(TForm)
    pnlBottom: TPanel;
    btnClose: TcxButton;
    cdsSummary: TOraQuery;
    dsSummary: TOraDataSource;
    cdsSummaryCOUNTS: TFloatField;
    cdsSummaryID_CLIENTS_GROUPS: TIntegerField;
    cdsSummaryNAME: TStringField;
    cdsSummaryBEZNAL: TFloatField;
    cdsSummarySTATE: TFloatField;
    cdsSummaryRUBL: TFloatField;
    grClients: TcxGrid;
    grClientsV: TcxGridDBTableView;
    grClientsL: TcxGridLevel;
    grClientsVCOUNTS: TcxGridDBColumn;
    grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsVNAME: TcxGridDBColumn;
    grClientsVBEZNAL: TcxGridDBColumn;
    grClientsVSTATE: TcxGridDBColumn;
    grClientsVRUBL: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBadClients: TfrmBadClients;

implementation

{$R *.dfm}

procedure TfrmBadClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsSummary.Close;
end;

procedure TfrmBadClients.FormShow(Sender: TObject);
begin
  cdsSummary.Open;
end;

end.
