unit Ueditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, Buttons, ActnList, StdCtrls, cxButtons,
  cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, DBAccess, Ora, ExtCtrls;

type
  Tfrmeditor = class(TForm)
    OraSQL1: TOraSQL;
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnClose: TcxButton;
    alSettings: TActionList;
    aEnter: TAction;
    aClose: TAction;
    pnlMain: TPanel;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Lbl5: TLabel;
    Lbl6: TLabel;
    Lbl7: TLabel;
    sbtn1: TSpeedButton;
    SBtn2: TSpeedButton;
    SBtn3: TSpeedButton;
    SBtn4: TSpeedButton;
    cxDateEdit1: TcxDateEdit;
    Ed1: TcxCurrencyEdit;
    Ed2: TcxCurrencyEdit;
    Ed3: TcxCurrencyEdit;
    Ed4: TcxCurrencyEdit;
    Ed5: TcxCurrencyEdit;
    Ed6: TcxCurrencyEdit;
    Ed7: TcxCurrencyEdit;
    Ed8: TcxCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure sbtn1Click(Sender: TObject);
    procedure SBtn2Click(Sender: TObject);
    procedure SBtn3Click(Sender: TObject);
    procedure SBtn4Click(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow(cds: TOraQuery) : boolean;
  end;

var
  frmeditor: Tfrmeditor;

implementation

{$R *.dfm}

uses UNSICurrency, Udm;


function tfrmeditor.MainFormShow(cds: TOraQuery) : boolean;
 var ddd: TDate;
Begin
  Application.CreateForm(Tfrmeditor, frmeditor);
  try
    with frmeditor do
    Begin
      cxDateEdit1.Date := Now();
      Font.Size := intDefFont;

      if cds <> nil then
      begin
        cxDateEdit1.Date  := cds.FieldByName('DDATE').AsDateTime;
        Ed1.EditValue     := cds.FieldByName('USD').AsFloat;
        Ed2.EditValue     := cds.FieldByName('EUR').AsFloat;
        Ed3.EditValue     := cds.FieldByName('USD_EUR').AsFloat;
        Ed4.EditValue     := cds.FieldByName('EUR_USD').AsFloat;
        Ed5.EditValue     := cds.FieldByName('SHEV_USD').AsFloat;
        Ed6.EditValue     := cds.FieldByName('SHEV_EUR').AsFloat;
        Ed7.EditValue     := cds.FieldByName('SHEV_USD_EUR').AsFloat;
        Ed8.EditValue     := cds.FieldByName('SHEV_EUR_USD').AsFloat;
      end
      else
      begin
        cxDateEdit1.Date  := Now;
        Ed1.EditValue     := 1;
        Ed2.EditValue     := 1;
        Ed3.EditValue     := 1;
        Ed4.EditValue     := 1;
        Ed5.EditValue     := 1;
        Ed6.EditValue     := 1;
        Ed7.EditValue     := 1;
        Ed8.EditValue     := 1;
      end;

      if ShowModal <> mrOk then
      begin
        result := false;
        Exit;
      end;
    End;
  finally
    frmeditor.Free;
  end;
end;



//закрыть
procedure Tfrmeditor.aCloseExecute(Sender: TObject);
begin
  close;
end;


//запись
procedure Tfrmeditor.aEnterExecute(Sender: TObject);
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
    OraSQL1.ParamByName('P1').AsDate  := cxDateEdit1.Date;
    OraSQL1.ParamByName('P2').AsFloat := Ed1.EditValue;
    OraSQL1.ParamByName('P3').AsFloat := Ed2.EditValue;
    OraSQL1.ParamByName('P4').AsFloat := Ed3.EditValue;
    OraSQL1.ParamByName('P5').AsFloat := Ed4.EditValue;
    OraSQL1.ParamByName('P6').AsFloat := Ed5.EditValue;
    OraSQL1.ParamByName('P7').AsFloat := Ed6.EditValue;
    OraSQL1.ParamByName('P8').AsFloat := Ed7.EditValue;
    OraSQL1.ParamByName('P9').AsFloat := Ed8.EditValue;

    try
      OraSQL1.Execute;
      ModalResult := mrOk;
    except
      on E: Exception do
        MessageBox(Handle,PChar('Ошибка при записи курсов валют!'+#13#10+E.Message),'Возникла ошибка',MB_ICONERROR);
    end;
  end;
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
  Ed8.EditValue := Ed5.EditValue / Ed6.EditValue;
end;

end.
