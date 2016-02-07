unit global_date;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, ActnList;

type
  TGlobalDateForm = class(TForm)
    Label1: TLabel;
    GlDatePicker: TDateTimePicker;
    BitBtnGlDateSet: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnGlDateSetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GlDatePickerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GlobalDateForm: TGlobalDateForm;

implementation

uses dataM;

{$R *.dfm}

procedure TGlobalDateForm.FormCreate(Sender: TObject);
begin
  GlDatePicker.DateTime := (Now);
end;

procedure TGlobalDateForm.BitBtnGlDateSetClick(Sender: TObject);
begin

 if (datetostr(GlDatePicker.DateTime) <>	datetostr((Now))) then
 begin
  if MessageDlg('Вы уверены в правильности информации?',mtConfirmation,[mbYes, mbNo],0) = mrYes
  then
  begin
    dataM.GlobalDate:=GlDatePicker.DateTime;
    dataM.GlobalDate_FORMAT:=FormatDateTime('DD.MM.YYYY', dataM.GlobalDate);
    Close;
  end;
 end
 else
 begin
   dataM.GlobalDate:=GlDatePicker.DateTime;
   dataM.GlobalDate_FORMAT:=FormatDateTime('DD.MM.YYYY', dataM.GlobalDate);
   Close;
 end;

end;

procedure TGlobalDateForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TGlobalDateForm.GlDatePickerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     BitBtnGlDateSetClick(Sender);
end;

end.
