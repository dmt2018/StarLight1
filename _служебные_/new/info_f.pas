unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,ShellAPI, Buttons, cxControls, cxContainer,
  cxEdit, cxGroupBox, Menus, cxLookAndFeelPainters, cxButtons;

type
  Tabout = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    gbInfo: TcxGroupBox;
    Label3: TLabel;
    btnexit: TcxButton;
    procedure Label3Click(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  about: Tabout;

implementation

{$R *.dfm}

procedure Tabout.btnexitClick(Sender: TObject);
begin
 close;
end;

procedure Tabout.Label3Click(Sender: TObject);
begin
 ShellExecute(Handle, nil, 'mailto:alex_olmer@mail.ru?subject=ИС Старлайт.', nil, nil, SW_RESTORE);
end;

end.
