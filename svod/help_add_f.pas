unit help_add_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ActnList;

type
  Thelp_add = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    Action1: TAction;
    Panel2: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  help_add: Thelp_add;

implementation

{$R *.dfm}

procedure Thelp_add.Action1Execute(Sender: TObject);
begin
  close;
end;

end.
