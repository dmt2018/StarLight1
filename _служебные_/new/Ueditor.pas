unit Ueditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, Buttons, ActnList, StdCtrls, cxButtons,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  Tfrmeditor = class(TForm)
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Lbl5: TLabel;
    Lbl6: TLabel;
    Lbl7: TLabel;
    cxDateEdit1: TcxDateEdit;
    Ed1: TcxCurrencyEdit;
    Ed2: TcxCurrencyEdit;
    Ed3: TcxCurrencyEdit;
    Ed4: TcxCurrencyEdit;
    Ed5: TcxCurrencyEdit;
    Ed6: TcxCurrencyEdit;
    Ed7: TcxCurrencyEdit;
    Ed8: TcxCurrencyEdit;
    btnSav: TcxButton;
    btnClos: TcxButton;
    ActionList1: TActionList;
    sbtn1: TSpeedButton;
    SBtn2: TSpeedButton;
    SBtn3: TSpeedButton;
    SBtn4: TSpeedButton;
    Action1: TAction;
    procedure FormShow(Sender: TObject);
    procedure btnClosClick(Sender: TObject);
    procedure sbtn1Click(Sender: TObject);
    procedure SBtn2Click(Sender: TObject);
    procedure SBtn3Click(Sender: TObject);
    procedure SBtn4Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmeditor: Tfrmeditor;

implementation

{$R *.dfm}

uses UNSICurrency;


function tfrmeditor.MainFormShow : boolean;
Begin
  Application.CreateForm(Tfrmeditor, frmeditor);
  try
    with frmeditor do
    Begin
      if ShowModal <> mrOk then
      begin
        result := false;
        Exit;
      end;
      result := true;
    End;
  finally
    frmeditor.Free;
  end;
end;



//запись
procedure Tfrmeditor.Action1Execute(Sender: TObject);
 var ddd: TDate;
begin
  Ed1.PostEditValue;
  Ed2.PostEditValue;
  Ed3.PostEditValue;
  Ed4.PostEditValue;
  Ed5.PostEditValue;
  Ed6.PostEditValue;
  Ed7.PostEditValue;
  Ed8.PostEditValue;

  if ( Ed5.EditValue = 0 ) or (Ed6.EditValue = 0) then
    MessageBox(Handle, 'Необходимо ввести курсы в фирме!', 'Внимание', MB_ICONWARNING)
  else
  begin
    // Редактирование курсов
    frmNSICurreny.OraSQL1.ParamByName('P1').AsDate  := cxDateEdit1.Date;
    frmNSICurreny.OraSQL1.ParamByName('P2').AsFloat := Ed1.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P3').AsFloat := Ed2.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P4').AsFloat := Ed3.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P5').AsFloat := Ed4.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P6').AsFloat := Ed5.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P7').AsFloat := Ed6.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P8').AsFloat := Ed7.EditValue;
    frmNSICurreny.OraSQL1.ParamByName('P9').AsFloat := Ed8.EditValue;

    try
       frmNSICurreny.OraSQL1.Execute;
       ddd := frmNSICurreny.OraSQL1.ParamByName('P1').AsDate;
       frmNSICurreny.Q_CURR.Refresh;
       frmNSICurreny.Q_CURR.Locate('DDATE',ddd,[]);
       close;
    except
       on E: Exception do ShowMessage('Ошибка! ' + E.Message);
    end;
  end;
end;

//закрыть
procedure Tfrmeditor.btnClosClick(Sender: TObject);
begin
 close;
end;

procedure Tfrmeditor.FormShow(Sender: TObject);
begin
 cxDateEdit1.SetFocus;
end;

procedure Tfrmeditor.sbtn1Click(Sender: TObject);
begin
  Ed1.PostEditValue;
  Ed2.PostEditValue;
  Ed3.EditValue := Ed2.EditValue / Ed1.EditValue;
end;

procedure Tfrmeditor.SBtn2Click(Sender: TObject);
begin
  Ed1.PostEditValue;
  Ed2.PostEditValue;
  Ed4.EditValue := Ed1.EditValue / Ed2.EditValue;
end;

procedure Tfrmeditor.SBtn3Click(Sender: TObject);
begin
  Ed5.PostEditValue;
  Ed6.PostEditValue;
  Ed7.EditValue := Ed6.EditValue / Ed5.EditValue;
end;

procedure Tfrmeditor.SBtn4Click(Sender: TObject);
begin
  Ed5.PostEditValue;
  Ed6.PostEditValue;
  Ed7.EditValue := Ed5.EditValue / Ed6.EditValue;
end;

end.
