unit report_tovarn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB, MemDS, DBAccess, Ora,
  Grids, DBGridEh, DASQLMonitor, OraSQLMonitor;

type
  TReportTovarnForm = class(TForm)
    Panel1: TPanel;
    Doc_DateTimePicker1: TDateTimePicker;
    Doc_DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn_Cancel: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    OraStoredProc: TOraStoredProc;
    R_Label1: TLabel;
    R_Label2: TLabel;
    R_Label3: TLabel;
    R_Label4: TLabel;
    R_Label5: TLabel;
    R_Label6: TLabel;
    R_Label7: TLabel;
    R_Label8: TLabel;
    Bevel15: TBevel;
    R_Label9: TLabel;
    Label10: TLabel;
    Bevel16: TBevel;
    ost_SP: TOraStoredProc;
    ost_end_SP: TOraStoredProc;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportTovarnForm: TReportTovarnForm;

implementation

uses DataM;
{$R *.dfm}

procedure TReportTovarnForm.BitBtn1Click(Sender: TObject);
var
ost_end, ostat_begin: integer;
begin
screen.cursor:=crhourglass;


 {
  TOraQuery(DBGridEh_Result.DataSource.DataSet).Close;
	TOraQuery(DBGridEh_Result.DataSource.DataSet).ParamByName('DOC_DATE1').AsDate := Doc_DateTimePicker1.Date;
	TOraQuery(DBGridEh_Result.DataSource.DataSet).ParamByName('DOC_DATE2').AsDate := Doc_DateTimePicker2.Date;
  TOraQuery(DBGridEh_Result.DataSource.DataSet).ParamByName('in_OTDEL').AsInteger := strtoint(DataM.department_id);
try
TOraQuery(DBGridEh_Result.DataSource.DataSet).Open;
except
ShowMessage('Не могу открыть!');
End;
  }

OraStoredProc.ParamByName('in_DATE1').AsDate:=Doc_DateTimePicker1.Date;
OraStoredProc.ParamByName('in_DATE2').AsDate:=Doc_DateTimePicker2.Date;
OraStoredProc.ParamByName('in_OTDEL').AsString:=DataM.department_id;

OraStoredProc.Execute;



ost_SP.ParamByName('DDATE_END').AsDate:=Doc_DateTimePicker1.Date;
ost_SP.ParamByName('in_OTDEL').AsString:=DataM.department_id;
ost_SP.Execute;
ostat_begin:=ost_SP.ParamByName('result').AsInteger;
R_Label1.Caption:=ost_SP.ParamByName('result').AsString;

R_Label2.Caption:=OraStoredProc.ParamByName('all_prihod').AsString;
R_Label3.Caption:=OraStoredProc.ParamByName('all_kassa').AsString;
R_Label4.Caption:=OraStoredProc.ParamByName('all_spisanie').AsString;
R_Label5.Caption:=OraStoredProc.ParamByName('all_utsenka').AsString;
R_Label6.Caption:=OraStoredProc.ParamByName('all_korr').AsString;

ost_SP.ParamByName('DDATE_END').AsDate:=Doc_DateTimePicker2.Date;
ost_SP.ParamByName('in_OTDEL').AsString:=DataM.department_id;
ost_SP.Execute;
R_Label7.Caption:=ost_SP.ParamByName('result').AsString;


ost_end:= ostat_begin + OraStoredProc.ParamByName('all_prihod').Asinteger;
ost_end:= ost_end - OraStoredProc.ParamByName('all_kassa').Asinteger;
ost_end:= ost_end - OraStoredProc.ParamByName('all_spisanie').Asinteger;
ost_end:= ost_end - OraStoredProc.ParamByName('all_utsenka').Asinteger;
ost_end:= ost_end + OraStoredProc.ParamByName('all_korr').Asinteger;


R_Label8.Caption:=inttostr(ost_end);



//R_Label7.Caption:=OraStoredProc.ParamByName('all_korr').AsString;
screen.cursor:=crdefault;

end;

procedure TReportTovarnForm.FormCreate(Sender: TObject);
begin
Doc_DateTimePicker1.Date := IncMonth(Date,-1);
Doc_DateTimePicker2.Date := Date;
end;



















end.
