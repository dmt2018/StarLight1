program ClientPrice;

uses
  Forms,
  UClientOrder in 'UClientOrder.pas' {frmClientPrice},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UDeps in 'UDeps.pas' {frmDeps};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Печать клиентских заказов';
  Application.CreateForm(TfrmClientPrice, frmClientPrice);
  Application.Run;
end.
