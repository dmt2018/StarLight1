unit info_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, Mask, DBCtrlsEh, ActnList;

type
  Tinfo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    DBCheckBoxEh1: TDBCheckBoxEh;
    DBEditEh1: TDBEditEh;
    Label3: TLabel;
    Edit1: TDBEditEh;
    cxButton1: TcxButton;
    ActionList1: TActionList;
    esc_: TAction;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  info: Tinfo;

implementation

{$R *.dfm}

procedure Tinfo.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
