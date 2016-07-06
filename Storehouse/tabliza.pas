unit tabliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  Ora, MemDS, StdCtrls, frxClass, frxExportXLS, cxGridExportLink, shellapi,
  Menus, cxLookAndFeelPainters, cxButtons, ExtCtrls;

type
  TfrmSupplierReport = class(TForm)
    grSupplierReport_v: TcxGridDBTableView;
    grSupplierReport_l: TcxGridLevel;
    grSupplierReport: TcxGrid;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    grSupplierReport_vColumn1: TcxGridDBColumn;
    grSupplierReport_vColumn2: TcxGridDBColumn;
    grSupplierReport_vColumn3: TcxGridDBColumn;
    grSupplierReport_vColumn4: TcxGridDBColumn;
    grSupplierReport_vColumn5: TcxGridDBColumn;
    grSupplierReport_vColumn6: TcxGridDBColumn;
    grSupplierReport_vColumn7: TcxGridDBColumn;
    grSupplierReport_vColumn8: TcxGridDBColumn;
    grSupplierReport_vColumn9: TcxGridDBColumn;
    frxXLSExport1: TfrxXLSExport;
    Panel1: TPanel;
    btnExport: TcxButton;
    BitBtn_Cancel: TcxButton;
    OraQuery1S_NAME_RU: TStringField;
    OraQuery1PRIHOD: TFloatField;
    OraQuery1PRODAZA: TFloatField;
    OraQuery1OFFICE: TFloatField;
    OraQuery1UCENKA: TFloatField;
    OraQuery1SPISANIE: TFloatField;
    OraQuery1INVENT: TFloatField;
    OraQuery1CLAIM: TFloatField;
    OraQuery1REPRICE: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    path: string;
  public
    { Public declarations }
    doc_date1, doc_date2: TDate;
    v_service: integer;
  end;

var
  frmSupplierReport: TfrmSupplierReport;

implementation

{$R *.dfm}
uses dataM;

procedure TfrmSupplierReport.btnExportClick(Sender: TObject);
var f: string;
begin
  try
     path := ExtractFilePath(Application.ExeName);
     f := path+'__xls__\statistic_result.xls';
     ExportGridToExcel(f, grSupplierReport, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
end;

procedure TfrmSupplierReport.FormCreate(Sender: TObject);
begin
  v_service := 0;
end;

procedure TfrmSupplierReport.FormShow(Sender: TObject);
begin
  try
    screen.cursor := crhourglass;
    OraQuery1.Close;
    OraQuery1.ParamByName('v_id_dep').AsInteger  := strtoint(DataM.department_id);
    OraQuery1.ParamByName('DDATE_BEGIN').AsDate  := DOC_DATE1;
    OraQuery1.ParamByName('DDATE_END').AsDate    := DOC_DATE2;
    OraQuery1.ParamByName('v_office').AsInteger  := dm.id_office;
    OraQuery1.ParamByName('v_service').AsInteger := v_service;
    OraQuery1.Open;
    screen.cursor := crdefault;
    grSupplierReport.SetFocus;
  except on E: Exception do
    begin
      screen.cursor := crdefault;
      MessageBox(Handle, PChar(E.Message), 'Œ¯Ë·Í‡', MB_ICONERROR);
    end;
  End;
end;

end.
