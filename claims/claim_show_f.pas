unit claim_show_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  Tclaim_show = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText5: TDBText;
    Label7: TLabel;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBText6: TDBText;
    Label13: TLabel;
    Label20: TLabel;
    DBText7: TDBText;
    btn_exit: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  claim_show: Tclaim_show;

implementation

uses DataM;

{$R *.dfm}

end.
