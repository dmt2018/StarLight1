unit edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ActnList, Mask, DBCtrlsEh, Menus,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit;

type
  Teditf = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    cxDate1: TcxDateEdit;
    BitBtn10: TcxButton;
    cxButton3: TcxButton;
    Edit1: TcxCurrencyEdit;
    Edit2: TcxCurrencyEdit;
    Edit3: TcxCurrencyEdit;
    Edit4: TcxCurrencyEdit;
    Edit5: TcxCurrencyEdit;
    Edit6: TcxCurrencyEdit;
    Edit7: TcxCurrencyEdit;
    Edit8: TcxCurrencyEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editf: Teditf;

implementation

uses main;

{$R *.dfm}

procedure Teditf.BitBtn3Click(Sender: TObject);
var ddd: TDate;
begin
  Edit1.PostEditValue;
  Edit2.PostEditValue;
  Edit3.PostEditValue;
  Edit4.PostEditValue;
  Edit5.PostEditValue;
  Edit6.PostEditValue;
  Edit7.PostEditValue;
  Edit8.PostEditValue;

  if ( Edit5.EditValue = 0 ) or (Edit6.EditValue = 0) then
    MessageBox(Handle, 'Необходимо ввести курсы в фирме!','Внимание',MB_ICONWARNING)
  else
  begin
    // Редактирование курсов
    main_f.OraSQL1.ParamByName('P1').AsDate := cxDate1.Date;
    main_f.OraSQL1.ParamByName('P2').AsFloat := Edit1.EditValue;
    main_f.OraSQL1.ParamByName('P3').AsFloat := Edit2.EditValue;
    main_f.OraSQL1.ParamByName('P4').AsFloat := Edit3.EditValue;
    main_f.OraSQL1.ParamByName('P5').AsFloat := Edit4.EditValue;
    main_f.OraSQL1.ParamByName('P6').AsFloat := Edit5.EditValue;
    main_f.OraSQL1.ParamByName('P7').AsFloat := Edit6.EditValue;
    main_f.OraSQL1.ParamByName('P8').AsFloat := Edit7.EditValue;
    main_f.OraSQL1.ParamByName('P9').AsFloat := Edit8.EditValue;

    try
       main_f.OraSQL1.Execute;
       ddd := main_f.OraSQL1.ParamByName('P1').AsDate;
       main_f.Q_CURR.Refresh;
       main_f.Q_CURR.Locate('DDATE',ddd,[]);
       close;
    except
       on E: Exception do ShowMessage('Ошибка! ' + E.Message);
    end;
  end;
end;

procedure Teditf.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Teditf.SpeedButton1Click(Sender: TObject);
begin
  Edit1.PostEditValue;
  Edit2.PostEditValue;
  Edit3.EditValue := Edit2.EditValue / Edit1.EditValue;
end;

procedure Teditf.SpeedButton2Click(Sender: TObject);
begin
  Edit1.PostEditValue;
  Edit2.PostEditValue;
  Edit4.EditValue := Edit1.EditValue / Edit2.EditValue;
end;

procedure Teditf.SpeedButton3Click(Sender: TObject);
begin
  Edit5.PostEditValue;
  Edit6.PostEditValue;
  Edit7.EditValue := Edit6.EditValue / Edit5.EditValue;
end;

procedure Teditf.SpeedButton4Click(Sender: TObject);
begin
  Edit5.PostEditValue;
  Edit6.PostEditValue;
  Edit8.EditValue := Edit5.EditValue / Edit6.EditValue;
end;

procedure Teditf.FormShow(Sender: TObject);
begin
  cxDate1.SetFocus;
end;

end.
