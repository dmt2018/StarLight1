unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,cxGraphics, cxLookAndFeels, ShellAPI, IniFiles,
  cxLookAndFeelPainters, Menus, //dxSkinsCore, dxSkinOffice2010Black,
  StdCtrls, cxButtons, Mask, ExtCtrls, star_lib, ActnList, jpeg, Buttons;
  
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
    Label4: TLabel;
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
  f_name: string;
begin
  frmLogin := TfrmLogin.Create(nil);
  try
    Result := False;

    // считывание последних параметров из файла *.ini
    f_name := Application.ExeName;
    strAppIniName   := ExtractFilePath(f_name) + Copy(ExtractFileName(f_name),1,Pos('.',ExtractFileName(f_name))) + 'ini';

    // если не найден настроечный файл *.ini
    if not FileExists(strAppIniName) then
    begin
      Application.MessageBox('Не найдены настройки соединения с БД. Обратитесь к разработчикам.', 'Ошибка', MB_ICONWARNING);
      exit;
    end;

    IniFile         := TIniFile.Create(strAppIniName);
    intServerPort   := StrToIntDef(IniFile.ReadString('ServerPort','Port',''),0);
    strDataBaseName := IniFile.ReadString('DataBase','DataBaseName','');
    strServerName   := IniFile.ReadString('Server','ServerName','');
    debug_user      := IniFile.ReadString('Logger','User','');

    with frmLogin do
    begin

      // если не найдены ключи в настроечном файле *.ini
      if (Trim(strServerName) = '') OR (Trim(strDataBaseName) = '') then
      begin
        Application.MessageBox(PChar('Не найдены настройки соединения с БД в файле '+strAppIniName+'. Обратитесь к разработчикам.'),'Ошибка',MB_ICONWARNING);
        exit;
      end;

      if ShowModal = mrOK then   //отображается форма авторизации:
      begin
        edLoginChange(edLogin);
        edPassChange(edPass);
        // Пытаемся открыть соединение с Ораклом
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
      frmLogin := nil
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
  CheckShell( Handle, PAnsiChar('mailto:'+(Sender as TLabel).Caption+'?subject=ИС Старлайт.') );
end;

end.
