unit UReservInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, DBGridEhGrouping, DB, DBAccess, Ora,
  MemDS, GridsEh, DBGridEh, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmReservInfo = class(TForm)
    pnlBottom: TPanel;
    BitBtn_Cancel: TcxButton;
    pnlTop: TPanel;
    gr_data: TDBGridEh;
    cdsInfo: TOraQuery;
    dsInfo: TOraDataSource;
    cdsInfoID_ORDERS: TFloatField;
    cdsInfoON_DATE: TDateTimeField;
    cdsInfoNICK: TStringField;
    cdsInfoQUANTITY: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    NID: integer;
    { Public declarations }
  end;

var
  frmReservInfo: TfrmReservInfo;

  function OpenFormForShow(NID: integer; str: string): variant;

implementation

uses UDM;

function OpenFormForShow(NID: integer; str: string): variant;
begin
  Application.CreateForm(TfrmReservInfo, frmReservInfo);
  try
    frmReservInfo.NID := NID;
    frmReservInfo.pnlTop.Caption := str;

    // ѕытаемс€ выполнить SQL запрос
    try
      frmReservInfo.cdsInfo.ParamByName('vN_ID').AsInteger := NID;
      frmReservInfo.cdsInfo.Open;
    except
      on E: Exception do Application.MessageBox(PChar('ќщибка при записи заказа!'#13#10+E.Message), '¬нимание', MB_ICONERROR)
    End;

    result := frmReservInfo.ShowModal;
  finally
    frmReservInfo.Free;
  end;
end;

{$R *.dfm}

procedure TfrmReservInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsInfo.Close;
end;

end.
