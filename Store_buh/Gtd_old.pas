unit Gtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, Ora, MemDS,
  DBAccess, Grids, DBGridEh, GridsEh;

type
  TGtdForm = class(TForm)
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    gtd: TOraQuery;
    gtd_ds: TOraDataSource;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel16: TPanel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Panel7: TPanel;
    BitBtn4: TBitBtn;
    gtdID_GTD: TFloatField;
    gtdDDATE: TDateTimeField;
    gtdGTD: TStringField;
    DBGridEh: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure gtdDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure gtdEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure gtdPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure gtdUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GtdForm: TGtdForm;

implementation

uses datam, global;

{$R *.dfm}

procedure TGtdForm.FormCreate(Sender: TObject);
begin
gtd.Open;
end;

procedure TGtdForm.gtdDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
datasetErrors(E);
abort;
end;

procedure TGtdForm.gtdEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
datasetErrors(E);
abort;
end;

procedure TGtdForm.gtdPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
datasetErrors(E);
DataSet.Cancel;
SysUtils.Abort;
end;

procedure TGtdForm.gtdUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
datasetErrors(E);
abort;
end;

end.
