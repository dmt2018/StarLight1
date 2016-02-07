unit report_good_movement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, ExtCtrls, DB, Ora, MemDS,
  DBAccess;

type
  TReportGoodMovementForm = class(TForm)
    Panel10: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel11: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportGoodMovementForm: TReportGoodMovementForm;

implementation

{$R *.dfm}






procedure TReportGoodMovementForm.FormShow(Sender: TObject);
begin
screen.cursor:=crhourglass;

screen.cursor:=crdefault;
end;

end.
