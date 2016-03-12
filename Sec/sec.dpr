program sec;

uses
  Forms,
  StarLibrary,
  Globals in 'Globals.pas',
  UClientOrder in 'UClientOrder.pas' {frmClientOrders};

{$R *.res}

begin

  CheckStarParams(ed,del,pr,add,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.Title := '����� ������ ���������� �������';

  //�� ������ �������
  Application.CreateForm(TfrmClientOrders, frmClientOrders);
  frmClientOrders.edit := ed;
  frmClientOrders.delete := del;
  frmClientOrders.print := pr;
  frmClientOrders.addit := add;
  frmClientOrders.Main_session.Username := username;
  frmClientOrders.Main_session.Password := Password;
  frmClientOrders.Main_session.Server := ora_db_path;
  frmClientOrders.DeptID := INPUT_DEPT_ID;
  Application.Run;

end.
