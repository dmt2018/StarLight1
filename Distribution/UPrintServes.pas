unit UPrintServes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCheckBox, MemDS, DBAccess, Ora, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmPrintServes = class(TForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    Grid_types: TcxGrid;
    Grid_types_view: TcxGridDBTableView;
    fst_F_TYPE: TcxGridDBColumn;
    fst_FT_ID: TcxGridDBColumn;
    fst_HT_ID: TcxGridDBColumn;
    fst_HOL_TYPE: TcxGridDBColumn;
    fst_ID_DEPARTMENTS: TcxGridDBColumn;
    Grid_types_level: TcxGridLevel;
    fst_CLIENT_PRINT: TcxGridDBColumn;
    fst_view: TOraQuery;
    fst_view_ds: TDataSource;
    fst_viewNN: TFloatField;
    fst_viewFT_ID: TFloatField;
    fst_viewF_TYPE: TStringField;
    fst_viewHT_ID: TFloatField;
    fst_viewHOL_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewCLIENT_PRINT: TFloatField;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrintServes: TfrmPrintServes;

implementation

{$R *.dfm}

procedure TfrmPrintServes.cxButton1Click(Sender: TObject);
begin
  Close;
end;

end.
