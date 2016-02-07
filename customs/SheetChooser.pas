unit SheetChooser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ActnList, cxControls, cxContainer, cxEdit, cxLabel;

type
  TChooseSheet = class(TForm)
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Ok: TAction;
    cxLabel1: TcxLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure OkExecute(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SheetChoosed : WideString;
    completed : boolean;
  end;

var
  ChooseSheet: TChooseSheet;

implementation

{$R *.dfm}

procedure TChooseSheet.BitBtn2Click(Sender: TObject);
begin
  SheetChoosed := '';
  completed    := false;
  Close;
end;

procedure TChooseSheet.OkExecute(Sender: TObject);
VAR
  i, sel_index : integer;
begin
  for i := 0 to ListBox1.Count - 1 do
    Begin
      if ListBox1.Selected[i] then sel_index := i;
    End;
  SheetChoosed := ListBox1.Items[sel_index];
  completed    := true;
  Close;
end;

procedure TChooseSheet.FormShow(Sender: TObject);
begin
  ListBox1.SetFocus;
  if ListBox1.Count > 0 then
    ListBox1.Selected[0] := true;
end;

procedure TChooseSheet.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then ActionList1.Actions[0].Execute;
end;

end.
