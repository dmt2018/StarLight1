unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,cxGraphics, cxLookAndFeels, ShellAPI, IniFiles,
  cxLookAndFeelPainters, Menus, //dxSkinsCore, dxSkinOffice2010Black,
  StdCtrls, cxButtons, Mask, ExtCtrls, 
  ActnList, jpeg, Buttons;
type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    edLogin: TEdit;
    Actlistlogon: TActionList;
    ActOK: TAction;
    ActCancel: TAction;
    lblEmailTo: TLabel;
    Label1: TLabel;
    Image2: TImage;
    Label2: TLabel;
    Label3: TLabel;
    edPass: TMaskEdit;
    btnOk: TcxButton;
    btnClose: TcxButton;
    procedure edLoginChange(Sender: TObject);
    procedure edPassChange(Sender: TObject);
    procedure ActOKExecute(Sender: TObject);
    procedure lblEmailToClick(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;
  function CreateLoginForm:Boolean;

implementation

uses uDM;

{$R *.dfm}

function CreateLoginForm:Boolean;
var
  IniFile: TIniFile;
begin
  frmLogin := TfrmLogin.Create(nil);
  try
    Result := False;

    // ���������� ��������� ���������� �� ����� *.ini
    strAppIniName   := ExtractFilePath(Application.ExeName) + Copy(ExtractFileName(Application.ExeName),1,Pos('.',ExtractFileName(Application.ExeName))) + 'ini';
    IniFile         := TIniFile.Create(strAppIniName);
    intServerPort   := StrToIntDef(IniFile.ReadString('ServerPort','Port','1521'),0);
    strDataBaseName := IniFile.ReadString('DataBase','DataBaseName','orcl');

    with frmLogin do
    begin
      strServerName := IniFile.ReadString('Server','ServerName','');

      // ���� �� ������ ����������� ���� *.ini
      if (not FileExists(strAppIniName)) OR (Trim(strDataBaseName)='') then
      begin
        // ����������� ������ ���������
        Application.MessageBox('�� ������� ��������� ���������� � ��. ���������� � �������������.','������',MB_ICONWARNING);
      end;

      if ShowModal = mrOK then   //������������ ����� ����������� �:
      begin
        edLoginChange(edLogin);
        edPassChange(edPass);
        // �������� ������� ���������� � �������
        DM.OraSession.Username  := strUserName;
        DM.OraSession.Password  := strPassword;
        DM.OraSession.Server    := strServerName+':'+IntToStr(intServerPort)+':'+strDataBaseName;

        Result := True;
      end;//if ShowModal = mrOK
    end;//with frmLogin
  finally
    IniFile.Free;
    if Assigned(frmLogin) then
    begin
      frmLogin.Free;
      frmLogin:=nil
    end;
  end;//try
end;

procedure TfrmLogin.ActCancelExecute(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.ActOKExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmLogin.edLoginChange(Sender: TObject);
begin
  strUserName := edLogin.Text;
end;

procedure TfrmLogin.edPassChange(Sender: TObject);
begin
  strPassword := edPass.Text;
end;

procedure TfrmLogin.lblEmailToClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=�� ��������.', nil, nil, SW_RESTORE);
end;

end.
