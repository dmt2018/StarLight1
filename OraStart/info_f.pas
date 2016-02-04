unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, Menus, cxLookAndFeelPainters,
  cxButtons, ShellAPI, cxControls, cxContainer, cxEdit, cxGroupBox;

type
  Tabout = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxButton2: TcxButton;
    Label6: TLabel;
    Bevel1: TBevel;
    gbInfo: TcxGroupBox;
    lblVersion: TLabel;
    lblInfo: TLabel;
    lblEmail: TLabel;
    lblEmailTo: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure lblEmailToClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  about: Tabout;

implementation

{$R *.dfm}

procedure Tabout.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tabout.lblEmailToClick(Sender: TObject);
begin
   ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

end.
