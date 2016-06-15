unit tabliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  Ora, MemDS, StdCtrls, frxClass, frxExportXLS, cxGridExportLink, shellapi,
  Menus, cxLookAndFeelPainters, cxButtons;

type
  TForm1 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    frxXLSExport1: TfrxXLSExport;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    path: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses report_tovarn_full,dataM;



procedure TForm1.cxButton1Click(Sender: TObject);
var f: string;
begin
  try
     path := ExtractFilePath(Application.ExeName);
     f := path+'__xls__\statistic_result.xls';
     ExportGridToExcel(f, cxGrid1, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(f), nil, nil, SW_RESTORE);
  except
     on E: Exception do ShowMessage(E.Message);
  End;
end;

procedure TForm1.cxButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   try

    screen.cursor := crhourglass;

    OraQuery1.Close;
    OraQuery1.ParamByName('v_id_dep').AsInteger := strtoint(DataM.department_id);
    OraQuery1.ParamByName('DDATE_BEGIN').AsDate := ReportTovarnFullForm.Doc_DateTimePicker1.Date;
    OraQuery1.ParamByName('DDATE_END').AsDate   := ReportTovarnFullForm.Doc_DateTimePicker2.Date;
    OraQuery1.ParamByName('v_office').AsInteger := dm.id_office;

    OraQuery1.Open;
  except on E: Exception do
  begin
    screen.cursor := crdefault;
    MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  end;
  End;
  screen.cursor := crdefault;

end;

end.
