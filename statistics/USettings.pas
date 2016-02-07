unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DBAccess, Ora, MemDS, OraSmart, ExtCtrls, StdCtrls, cxContainer, cxLabel,
  cxButtons, cxCheckBox;

type
 TfrmSettings = class(TForm)
    Panel8: TPanel;
    btnClose: TcxButton;
    btn_user: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel3: TcxLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Image1: TImage;
    btn_add: TcxButton;
    CDS_clients: TSmartQuery;
    DS_clients: TOraDataSource;
    CDS_clientsID_CLIENTS: TIntegerField;
    CDS_clientsFIO: TStringField;
    CDS_clientsNICK: TStringField;
    cb_users: TcxLookupComboBox;
    cb_tag: TcxComboBox;
    gr_names: TcxGrid;
    gr_names_v: TcxGridDBTableView;
    gr_btndel: TcxGridDBColumn;
    gr_ID_USER: TcxGridDBColumn;
    gr_TAG_NAME: TcxGridDBColumn;
    gr_FIO: TcxGridDBColumn;
    gr_NICK: TcxGridDBColumn;
    gr_TAG: TcxGridDBColumn;
    gr_C_START: TcxGridDBColumn;
    gr_ID_PROGRAMS: TcxGridDBColumn;
    gr_names_l: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_userClick(Sender: TObject);
    procedure gr_btndelPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmSettings.btnCloseClick(Sender: TObject);
begin
  DM.stat_session.Rollback;
  Close;
end;

// Добавим запись
procedure TfrmSettings.btn_addClick(Sender: TObject);
begin
  try
    with DM.SQL_Q do
    begin
      Close;
      SQL.Clear;
      SQL.Add('insert into admin_programs_buttons values(19,'+VarToStr(cb_users.EditValue)+','+IntToStr(cb_tag.ItemIndex+1)+',1)');
      Execute;
      DM.cds_grants.Refresh;
      DM.cds_grants.Locate('id_user;tag',VarArrayOf([cb_users.EditValue,(cb_tag.ItemIndex+1)]), []);
    end;
  except
    on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
  end;
end;

procedure TfrmSettings.btn_userClick(Sender: TObject);
begin
  DM.stat_session.Commit;
  Close;
end;

procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CDS_clients.State = dsEdit then CDS_clients.Post;  
  CDS_clients.Close;
end;

procedure TfrmSettings.gr_btndelPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
     DM.cds_grants.Delete;
end;

end.
