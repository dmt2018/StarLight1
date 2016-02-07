unit UHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ExtCtrls, cxPC, cxControls,
  cxButtons, dxGDIPlusClasses;

type
  Tfrm_help = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    pg_help: TcxPageControl;
    tsh_new_invoice: TcxTabSheet;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    tsh_invoice: TcxTabSheet;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tsh_settings: TcxTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
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
