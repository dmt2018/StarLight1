unit show_track_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls;

type
  Tshow_track = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    BitBtn13: TBitBtn;
    Panel2: TPanel;
    procedure BitBtn13Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  show_track: Tshow_track;

implementation

{$R *.dfm}

procedure Tshow_track.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tshow_track.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (StringGrid1.Cells[0,ARow] = 'Всего') then
  begin
    StringGrid1.canvas.brush.Color := clMedGray;
    StringGrid1.canvas.fillRect(Rect);
    if ACol = 0 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[0,ARow]);
    if ACol = 1 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[1,ARow]);
    if ACol = 2 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[2,ARow]);
    if ACol = 3 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[3,ARow]);
    if ACol = 4 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[4,ARow]);
  end;
end;

end.
