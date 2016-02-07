unit UHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ExtCtrls, cxPC, cxControls,
  cxButtons;

type
  Tfrm_help = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    pg_help: TcxPageControl;
    tsh_edit_help: TcxTabSheet;
    Image3: TImage;
    Label4: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_help: Tfrm_help;

implementation

{$R *.dfm}

end.
