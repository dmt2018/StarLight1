unit Gtd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, Ora, MemDS,
  DBAccess, Grids, DBGridEh, GridsEh, Menus, cxLookAndFeelPainters, cxButtons,
  DBGridEhGrouping;

type
  TGtdForm = class(TForm)
    Panel2: TPanel;
    gtd: TOraQuery;
    gtd_ds: TOraDataSource;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel16: TPanel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    DBGridEh: TDBGridEh;
    gtdID_GTD: TFloatField;
    gtdDDATE: TDateTimeField;
    gtdN_ID: TFloatField;
    gtdINPUT: TFloatField;
    gtdOUTPUT_STORE: TFloatField;
    gtdGTD: TStringField;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gtdBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    v_n_id : integer;
    { Public declarations }
  end;

var
  GtdForm: TGtdForm;

implementation

uses datam, global;

{$R *.dfm}

procedure TGtdForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  gtd.Close;
end;

procedure TGtdForm.FormShow(Sender: TObject);
begin
  gtd.Close;
  gtd.ParamByName('p_n_id').AsInteger := v_n_id;
  gtd.Open;
end;

procedure TGtdForm.gtdBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

end.
