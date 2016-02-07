unit client_debt_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, ActnList, StrUtils,
  ComCtrls, Mask, DateUtils, Registry, cxGraphics, Menus, cxLookAndFeelPainters,
  cxButtons, cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, Math;

type
  Tclient_debt_edit = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    ActionList1: TActionList;
    aEnter: TAction;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    aDebet: TAction;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    aUp: TAction;
    aDown: TAction;
    aSave: TAction;
    de_date_oper: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    imcb_operations: TcxLookupComboBox;
    edit_summ: TcxCurrencyEdit;
    edit_in_ru: TcxCurrencyEdit;
    edit_debet: TcxCurrencyEdit;
    edit_rate: TcxCurrencyEdit;
    edit_discount: TcxCurrencyEdit;
    Label13: TLabel;
    btn_help: TcxButton;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    Label16: TLabel;
    Label5: TLabel;
    edit_info: TcxTextEdit;
    aCourse: TAction;
    Label14: TLabel;
    edit_invoice: TcxTextEdit;
    edit_discount_proc: TcxCurrencyEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aUpExecute(Sender: TObject);
    procedure aDownExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure aDebetExecute(Sender: TObject);
    procedure edit_in_ruExit(Sender: TObject);
    procedure edit_discountExit(Sender: TObject);
    procedure aCourseExecute(Sender: TObject);
    procedure edit_invoiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    id_debetor_ : integer;
    id_cl_debetor_ : integer;
    state       : integer;
    { Public declarations }
  end;

var
  client_debt_edit: Tclient_debt_edit;

implementation

uses DataM, client_debt_f;

{$R *.dfm}


//
//  Выход
//
procedure Tclient_debt_edit.btnCloseClick(Sender: TObject);
begin
  Close;
end;


//
//  Рассчет долга
//
procedure Tclient_debt_edit.aDebetExecute(Sender: TObject);
begin
  try
    edit_rate.PostEditValue;
    edit_summ.PostEditValue;
    edit_in_ru.PostEditValue;
    edit_discount.PostEditValue;
    edit_discount_proc.PostEditValue;
    edit_debet.EditValue := edit_summ.EditValue - edit_in_ru.EditValue - edit_discount.EditValue - SimpleRoundTo(( (edit_summ.EditValue/100) * edit_discount_proc.EditValue )+0.00001,-2);
    edit_debet.PostEditValue;
  except
    ShowMessage('Ошибка при задании Суммы или Оплаты');
  end
end;


// обрабатываем нажатие кнопки UP
procedure Tclient_debt_edit.aUpExecute(Sender: TObject);
begin
  SelectNext(ActiveControl as tWinControl, False, True);
end;

// обрабатываем нажатие кнопки DOWN
procedure Tclient_debt_edit.aDownExecute(Sender: TObject);
begin
  SelectNext(ActiveControl as tWinControl, True, True);
end;

// на выходе с оплаты рассчитываем долг
procedure Tclient_debt_edit.edit_discountExit(Sender: TObject);
begin
  edit_summ.PostEditValue;
  edit_in_ru.PostEditValue;
  edit_discount.PostEditValue;
  aDebet.Execute;
end;

// на выходе со скидки рассчитываем долг
procedure Tclient_debt_edit.edit_invoiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then
    SelectNext(ActiveControl as tWinControl, False, True);
  if (Key = VK_DOWN) then
    SelectNext(ActiveControl as tWinControl, True, True);
end;

procedure Tclient_debt_edit.edit_in_ruExit(Sender: TObject);
begin
  edit_summ.PostEditValue;
  edit_in_ru.PostEditValue;
  edit_discount.PostEditValue;
  aDebet.Execute;
end;


//
//  Подгрузка курса
//
procedure Tclient_debt_edit.aCourseExecute(Sender: TObject);
begin
  if (Label4.Visible = false) then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('select * from (SELECT a.shev_eur FROM currency a  where a.ddate <= :p1 order by a.ddate desc) a where rownum = 1');
    DM.Q_SQL.ParamByName('p1').AsDate :=  de_date_oper.EditValue;
    DM.Q_SQL.Open;
    edit_rate.EditValue :=  DM.Q_SQL.FieldByName('shev_eur').Value;
    DM.Q_SQL.Close;
  end
  else edit_rate.EditValue := 1;
end;


//
//  Открываем форму и делаем настройки
//
procedure Tclient_debt_edit.FormShow(Sender: TObject);
var
  Reg: TRegIniFile;
  S: integer;
  D_, D2_: TDateTime;
begin
  S   := 0;
  Reg := TRegIniFile.Create('Star_Debetors2');
  S   := Reg.ReadInteger('Combo_val', 'Value', 0);

  try
    D_  := Reg.ReadDate('Combo_date');
    D2_ := Reg.ReadDate('Combo_date2');
  except
    D_  := Now();
    D2_ := Now();
  end;

  Reg.Free;

  if (S > 0) and (state = 1) then
  begin
    imcb_operations.EditValue := S;
  end;

  if (state = 2) then
    cxDateEdit1.SetFocus
  else
  begin
    cxDateEdit1.EditValue := D_;
    de_date_oper.EditValue := D2_;
    aCourse.Execute;
  end;
  edit_invoice.SetFocus;

end;


// Запись
procedure Tclient_debt_edit.BitBtn1Click(Sender: TObject);
var sql: string;
    ind, ind2: integer;
    Reg: TRegIniFile;
begin
if (edit_rate.EditValue = 0.00) then
   MessageBox(Handle, 'Курс не может быть равен 0!', 'Внимание', MB_ICONWARNING)
else
begin
  if (de_date_oper.EditValue = NULL) or (cxDateEdit1.EditValue = NULL) then
  begin
     MessageBox(Handle, 'Необходимо заполнить все поля!', 'Внимание', MB_ICONWARNING);
  end
  else
  begin
    if (round(edit_debet.EditValue) = 0) then aDebet.Execute;

    cxButton2.SetFocus;

    try
      ind  := 0;
      ind2 := id_debetor_; //DM.Q_DEBETORSID_DEBETORS.AsInteger;

      DM.Ora_SQL.SQL.Clear;
      sql := 'begin cash_pkg.edit_debetor_list(:id_cl_debetor_, :id_debetor_, :debet_, :rate_, :date_vvod_, :date_oper_, :operation_, :invoice_, :summ_, :in_ru_, :info_, :discount_, :discount_proc_, :v_office); end;';
      DM.Ora_SQL.SQL.Add(sql);
      DM.Ora_SQL.Prepare;


      { по просьбе Анны Юрьевны от 2010_04_21 при дате без времени добавлять крайнее время }
      if ( cxDateEdit1.EditValue = trunc(cxDateEdit1.EditValue)  ) then
      begin
        cxDateEdit1.EditValue := cxDateEdit1.EditValue + '23:59:00';
//        ShowMessage(VarToStr(cxDateEdit1.EditValue));
      end;


      DM.Ora_SQL.ParamByName('id_cl_debetor_').Value  := id_cl_debetor_;           // P1
      DM.Ora_SQL.ParamByName('id_debetor_').Value     := id_debetor_;           // P1
      DM.Ora_SQL.ParamByName('debet_').Value          := edit_debet.EditValue;  // P2
      DM.Ora_SQL.ParamByName('rate_').Value           := edit_rate.EditValue;   // P3
      DM.Ora_SQL.ParamByName('date_vvod_').AsDateTime := cxDateEdit1.EditValue; // P4
      DM.Ora_SQL.ParamByName('date_oper_').AsDateTime := de_date_oper.EditValue; //round(de_date_oper.EditValue) + time(); // P5
      DM.Ora_SQL.ParamByName('operation_').Value      := imcb_operations.EditValue;       // P6
      DM.Ora_SQL.ParamByName('invoice_').value        := VarToStr(edit_invoice.EditValue);// P7
      DM.Ora_SQL.ParamByName('summ_').Value           := edit_summ.EditValue;             // P8
      DM.Ora_SQL.ParamByName('in_ru_').Value          := edit_in_ru.EditValue;            // P9
      DM.Ora_SQL.ParamByName('info_').AsString        := VarToStr(edit_info.EditValue);   // P10
      DM.Ora_SQL.ParamByName('discount_').Value       := edit_discount.EditValue;
      DM.Ora_SQL.ParamByName('discount_proc_').Value  := edit_discount_proc.EditValue;
      DM.Ora_SQL.ParamByName('v_office').Value        := DM.id_office;
      DM.Ora_SQL.Execute;


      ind := DM.Ora_SQL.ParamByName('id_cl_debetor_').AsInteger;
      state := 0;
      Panel1.Tag := ind;

      Reg:=TRegIniFile.Create('Star_Debetors2');
      try
        Reg.WriteInteger('Combo_val', 'Value', DM.OPERATIONSID_OPERATIONS.AsInteger);
        Reg.WriteDate('Combo_date', cxDateEdit1.EditValue);
        Reg.WriteDate('Combo_date2', de_date_oper.EditValue);
      finally
        Reg.Free;
      end;

    close;
    
    except
      on E: Exception do
      begin
         MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;
    end;

  end;
end;
end;




procedure Tclient_debt_edit.DateTimePicker2Exit(Sender: TObject);
var Year, Month, Day: Word;
begin
{
  if (DateTimePicker2.Value <> null) then
  begin
    DecodeDate(DateTimePicker2.Value, Year, Month, Day);

    if (state = 1) and (DateTimePicker1.Value = null) and (IsValidDate(Year, Month, Day) = true) then DateTimePicker1.Value := DateTimePicker2.Value;
  end;
}
end;


end.
