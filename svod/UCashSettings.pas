unit UCashSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCheckBox, cxGridLevel, cxControls, cxGrid,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, DBAccess, Ora, MemDS;

type
  TfrmCashSettings = class(TForm)
    pnlBottom: TPanel;
    btnClose: TcxButton;
    pnlTop: TPanel;
    pnlBody: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    cxGridViewRepository1: TcxGridViewRepository;
    cdsIN: TOraQuery;
    cdsOut: TOraQuery;
    dsIn: TOraDataSource;
    dsOut: TOraDataSource;
    viewIN: TcxGridDBTableView;
    viewOUT: TcxGridDBTableView;
    viewINT_SHORT: TcxGridDBColumn;
    viewINT_LONG: TcxGridDBColumn;
    viewINID_OPERATIONS: TcxGridDBColumn;
    viewINT_TYPE: TcxGridDBColumn;
    viewINDOLG: TcxGridDBColumn;
    viewINID_OFFICE: TcxGridDBColumn;
    viewINDATE_CHANGE: TcxGridDBColumn;
    viewININOUT: TcxGridDBColumn;
    viewOUTT_SHORT: TcxGridDBColumn;
    viewOUTT_LONG: TcxGridDBColumn;
    viewOUTID_OPERATIONS: TcxGridDBColumn;
    viewOUTT_TYPE: TcxGridDBColumn;
    viewOUTDOLG: TcxGridDBColumn;
    viewOUTID_OFFICE: TcxGridDBColumn;
    viewOUTDATE_CHANGE: TcxGridDBColumn;
    viewOUTINOUT: TcxGridDBColumn;
    grINDBTableView1: TcxGridDBTableView;
    grINLevel: TcxGridLevel;
    grIN: TcxGrid;
    grOUT: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    grOUTLevel: TcxGridLevel;
    cdsINT_SHORT: TStringField;
    cdsINT_LONG: TStringField;
    cdsINID_OPERATIONS: TIntegerField;
    cdsINT_TYPE: TIntegerField;
    cdsINDOLG: TIntegerField;
    cdsINID_OFFICE: TIntegerField;
    cdsINDATE_CHANGE: TDateTimeField;
    cdsOutT_SHORT: TStringField;
    cdsOutT_LONG: TStringField;
    cdsOutID_OPERATIONS: TIntegerField;
    cdsOutT_TYPE: TIntegerField;
    cdsOutDOLG: TIntegerField;
    cdsOutID_OFFICE: TIntegerField;
    cdsOutDATE_CHANGE: TDateTimeField;
    cdsINCASH_IN: TIntegerField;
    cdsOutCASH_OUT: TIntegerField;
    pmMenuIN: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    pmMenuOut: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    procedure setCheck(param: Integer; cds: TOraQuery);
    { Private declarations }
  public
    { Public declarations }
    function OpenOperSettings : integer;
  end;

var
  frmCashSettings: TfrmCashSettings;

implementation

{$R *.dfm}

procedure TfrmCashSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsIN.State  = dsEdit then cdsIN.Post;
  if cdsOut.State = dsEdit then cdsOut.Post;
end;

procedure TfrmCashSettings.MenuItem1Click(Sender: TObject);
begin
  setCheck(2,cdsOUT);
end;

procedure TfrmCashSettings.MenuItem2Click(Sender: TObject);
begin
  setCheck(0,cdsOUT);
end;

procedure TfrmCashSettings.N1Click(Sender: TObject);
begin
  setCheck(1,cdsIN);
end;

procedure TfrmCashSettings.N2Click(Sender: TObject);
begin
  setCheck(0,cdsIN);
end;

procedure TfrmCashSettings.setCheck(param: Integer; cds: TOraQuery);
var v_field: string;
begin
//  if obj.Name = 'grIN' then
  if cds.Name = 'cdsIN' then
     v_field := 'CASH_IN'
  else
     v_field := 'CASH_OUT';

  screen.Cursor := crHourGlass;
  cds.DisableControls;
  cds.First;
  while not cds.Eof do
  begin
    cds.Edit;
    cds.FieldByName(v_field).AsInteger := param;
    cds.Post;
    cds.Next;
  end;
  cds.EnableControls;
  screen.Cursor := crDefault;
end;

function TfrmCashSettings.OpenOperSettings : integer;
begin
  Application.CreateForm(TfrmCashSettings, frmCashSettings);
  try
    frmCashSettings.cdsIN.Open;
    frmCashSettings.cdsOut.Open;
    Result := frmCashSettings.ShowModal;
  finally
    frmCashSettings.Free;
  end;
end;


procedure TfrmCashSettings.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
