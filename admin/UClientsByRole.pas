unit UClientsByRole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, Ora, DB,
  MemDS, DBAccess, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxButtonEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmClientsByRole = class(TForm)
    pnlBottom: TPanel;
    pnlTop: TPanel;
    btnClose: TcxButton;
    pnlMain: TPanel;
    cdsQuery: TOraQuery;
    dsQuery: TOraDataSource;
    cdsQueryNICK: TStringField;
    cdsQueryFIO: TStringField;
    grClientsV: TcxGridDBTableView;
    grClientsL: TcxGridLevel;
    grClients: TcxGrid;
    grClientsVNICK: TcxGridDBColumn;
    grClientsVFIO: TcxGridDBColumn;
    grBtnDel: TcxGridDBColumn;
    cdsQueryID_CLIENTS: TIntegerField;
    grClientsVID_CLIENTS: TcxGridDBColumn;
    cdsQ: TOraQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grBtnDelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientsByRole: TfrmClientsByRole;

  function OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;

implementation

{$R *.dfm}

  function OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;
  begin
    //frmClientsByRole := TfrmClientsByRole.Create();
    Application.CreateForm(TfrmClientsByRole, frmClientsByRole);
    try
      with frmClientsByRole do
      begin
        try
          frmClientsByRole.pnlTop.Caption := GroupName;
          cdsQuery.Session := oraSess;
          cdsQ.Session := oraSess;
          cdsQuery.Close;
          cdsQuery.SQL.Text := 'SELECT c.id_clients, c.nick, c.fio FROM ADMIN_EMPLOYEES_ROLE_GROUPS EG, clients c where EG.ID_EMPLOYEES = c.id_clients and EG.ID_ROLE_GROUPS='+IntToStr(idGroup);
          cdsQuery.Open;
          pnlTop.Tag := idGroup;
          result := ShowModal;
        except
          on E: Exception do MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        End;
      end;
    finally
      frmClientsByRole.Free;
    end;
  end;


procedure TfrmClientsByRole.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsQuery.Close;
end;

procedure TfrmClientsByRole.grBtnDelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Удалить доступ сотрудника к роли?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then exit;

  cdsQ.Close;
  cdsQ.SQL.Text := 'delete from ADMIN_EMPLOYEES_ROLE_GROUPS where ID_EMPLOYEES='+IntToStr(grClientsVID_CLIENTS.EditValue)+' and ID_ROLE_GROUPS='+IntToStr(pnlTop.Tag);
  cdsQ.ExecSQL;
  cdsQ.Session.Commit;
  cdsQuery.Refresh;
end;

end.
