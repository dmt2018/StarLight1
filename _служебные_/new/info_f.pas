unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,ShellAPI, Buttons, cxControls, cxContainer,
  cxEdit, cxGroupBox, Menus, cxLookAndFeelPainters, cxButtons;

type
  TfrmAbout = class(TForm)
    pnlTop: TPanel;
    gbInfoBuh: TcxGroupBox;
    pnlBottom: TPanel;
    btnexit: TcxButton;
    Label7: TLabel;
    Label8: TLabel;
    gbInfoProg: TcxGroupBox;
    gbInfoInv: TcxGroupBox;
    gbInfoRaznos: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    gbInfo: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnexitClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
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

procedure TfrmAbout.Label10Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

procedure TfrmAbout.Label12Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:dt@starlight.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

procedure TfrmAbout.Label2Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

procedure TfrmAbout.Label8Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'mailto:eva@starlight.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

end.
