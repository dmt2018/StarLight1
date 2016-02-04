unit logon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, Mask, ActnList, Menus,
  cxLookAndFeelPainters, cxButtons, ShellAPI;

type
  Tlogin = class(TForm)
    Panel4: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    MaskEdit1: TMaskEdit;
    ActList: TActionList;
    OkAction: TAction;
    btnClose: TcxButton;
    btnOk: TcxButton;
    Image4: TImage;
    lblEmail: TLabel;
    lblEmailTo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure OkActionExecute(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
    procedure lblEmailToClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    creator, ora_db_path : string;

  end;

var
  login: Tlogin;

implementation

uses RunOther, DataModule;

{$R *.dfm}

//
//  Выход
//
procedure Tlogin.btnCloseClick(Sender: TObject);
begin
  If MessageDlg('Действительно хотите выйти из программы?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then close;
end;


//
// Пытаемся открыть файл с настройками для соединения с Ораклом
//
procedure Tlogin.FormCreate(Sender: TObject);
VAR
  f : TextFile;
begin
  try
    {$I-}
    AssignFile(f,'connections/connections.txt');
    Reset(f);
    Readln(f,ora_db_path);
    Readln(f,creator);
    CloseFile(f);
    {$I+}
  except
    ShowMessage('Невозможно открыть файл "connections.txt" в папке "connections"!')
  End;
end;


procedure Tlogin.lblEmailToClick(Sender: TObject);
begin
   ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

//
//  Авторизация
//
procedure Tlogin.OkActionExecute(Sender: TObject);
begin
  try
    DM.SelectSession.Username := Edit1.Text;
    DM.SelectSession.Password := MaskEdit1.Text;
    DM.SelectSession.Server   := ora_db_path;
    DM.SelectSession.Connect;

    Runner.pnl_User.Caption     := 'Пользователь: '+Edit1.Text;
    Runner.show;
    login.Hide;
  except
    on E: Exception do
    begin
      if Pos('01017',E.Message) > 0 then
      begin
        Edit1.Text     := '';
        MaskEdit1.Text := '';
        ShowMessage('Неправльный логин или пароль!');
        Edit1.SetFocus;
      end
      else
        ShowMessage(E.Message);
      exit;
    end;
  End;
end;



procedure Tlogin.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then OkAction.Execute;
end;

procedure Tlogin.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then OkAction.Execute;
end;


end.
