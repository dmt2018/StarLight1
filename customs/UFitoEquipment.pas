unit UFitoEquipment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBAccess, Ora, MemDS,
  StdCtrls, cxButtons, ExtCtrls, cxCurrencyEdit;

type
  TfrmFitoEquipment = class(TForm)
    Panel3: TPanel;
    cxButton2: TcxButton;
    CDS_STAT: TOraQuery;
    DS_STAT: TOraDataSource;
    gr_stat: TcxGrid;
    gr_stat_v: TcxGridDBTableView;
    gr_stat_vTRUCKS: TcxGridDBColumn;
    gr_stat_vHOL_SUB_TYPE: TcxGridDBColumn;
    gr_stat_vHOL_COUNTRY: TcxGridDBColumn;
    gr_stat_vQUANT: TcxGridDBColumn;
    gr_stat_l: TcxGridLevel;
    CDS_STATTRUCKS: TStringField;
    CDS_STATHOL_SUB_TYPE: TStringField;
    CDS_STATORDERBY: TIntegerField;
    CDS_STATID: TIntegerField;
    CDS_STATINV_ID: TFloatField;
    CDS_STATTELEGA: TIntegerField;
    CDS_STATPODDON: TIntegerField;
    pmStatCustom: TPopupMenu;
    mnExpandAll: TMenuItem;
    mnCollapseAll: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure mnExpandAllClick(Sender: TObject);
    procedure mnCollapseAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFitoEquipment: TfrmFitoEquipment;

implementation

{$R *.dfm}

procedure TfrmFitoEquipment.FormShow(Sender: TObject);
begin
  if (CDS_STAT.Active) and (CDS_STAT.RecordCount > 0) then
      gr_stat_v.DataController.Groups.FullExpand;
end;

procedure TfrmFitoEquipment.mnCollapseAllClick(Sender: TObject);
begin
  gr_stat_v.DataController.Groups.FullCollapse;
end;

procedure TfrmFitoEquipment.mnExpandAllClick(Sender: TObject);
begin
  gr_stat_v.DataController.Groups.FullExpand;
end;

end.
