unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,ShellAPI, Buttons, cxControls, cxContainer,
  cxEdit, cxGroupBox, Menus, cxLookAndFeelPainters, cxButtons, star_lib;

type
  TfrmAbout = class(TForm)
    pnlTop: TPanel;
    gbInfoBuh: TcxGroupBox;
    pnlBottom: TPanel;
    btnexit: TcxButton;
    lbl3: TLabel;
    lblmail3: TLabel;
    gbInfoProg: TcxGroupBox;
    gbInfoInv: TcxGroupBox;
    gbInfoRaznos: TcxGroupBox;
    lbl1: TLabel;
    lblmail1: TLabel;
    lbl2: TLabel;
    lblmail2: TLabel;
    gbInfo: TcxGroupBox;
    lbl4: TLabel;
    lblmail4: TLabel;
    procedure btnexitClick(Sender: TObject);
    procedure lblmail4Click(Sender: TObject);
    procedure lblmail1Click(Sender: TObject);
    procedure lblmail2Click(Sender: TObject);
    procedure lblmail3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
 end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}


function TfrmAbout.MainFormShow : boolean;
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

procedure TfrmAbout.lblmail1Click(Sender: TObject);
begin
  CheckShell(Handle, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.');
end;

procedure TfrmAbout.lblmail2Click(Sender: TObject);
begin
  CheckShell(Handle, 'mailto:dt@starlight.ru?subject=ИС Старлайт.');
end;

procedure TfrmAbout.lblmail4Click(Sender: TObject);
begin
  CheckShell(Handle, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.');
end;

procedure TfrmAbout.lblmail3Click(Sender: TObject);
begin
  CheckShell(Handle, 'mailto:eva@starlight.ru?subject=ИС Старлайт.');
end;

end.
