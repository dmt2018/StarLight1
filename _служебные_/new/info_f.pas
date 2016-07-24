unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,ShellAPI, Buttons, cxControls, cxContainer,
  cxEdit, cxGroupBox, Menus, cxLookAndFeelPainters, cxButtons;

type
  TfrmAbout = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    gbInfo: TcxGroupBox;
    Label3: TLabel;
    pnlBottom: TPanel;
    btnexit: TcxButton;
    procedure Label3Click(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowInfo : boolean;
 end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}


function TfrmAbout.ShowInfo : boolean;
Begin
  Application.CreateForm(TfrmAbout, frmAbout);
  try
    with frmAbout do
    Begin
      if ShowModal <> mrOk then
      begin
        result := false;
        Exit;
      end;
      result := true;
    End;
  finally
    frmAbout.Free;
  end;
end;


procedure TfrmAbout.btnexitClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAbout.Label3Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

end.
