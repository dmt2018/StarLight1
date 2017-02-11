unit frm_first_dialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrlsEh, ExtCtrls, ActnList, DB, Registry,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, PI_Library_reg, IniFiles;

type
  Tfirst_dialog_frm = class(TForm)
    Panel5: TPanel;
    Label5: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ActionList1: TActionList;
    acF2: TAction;
    acF3: TAction;
    acF4: TAction;
    SpeedButton4: TSpeedButton;
    acF5: TAction;
    DBCheckBoxEh1: TDBCheckBoxEh;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    ButtonStat: TSpeedButton;
    procedure BitBtn13Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBCheckBoxEh1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure ButtonStatClick(Sender: TObject);
  private
    { Private declarations }
  public
    print, delete, edit, addit: boolean;
    path : string;
    uFont, uSupplier: integer;
    uFilter, uSortClient, uHideCargoMoving, uOrderFormat, uFilterByRus: boolean;
    uDefDir: string;
    uDefSort, uSTOK: integer;
    vSTOK, vDAYS: integer;
    def_folder: string;
    { Public declarations }
  end;

var
  first_dialog_frm: Tfirst_dialog_frm;

implementation

uses Globals, frm_DM, frm_formula_main, frm_orders_main,
  buttons_for, prod_stat_f;

{$R *.dfm}

//
//  Выход из программы
//
procedure Tfirst_dialog_frm.BitBtn13Click(Sender: TObject);
begin
 if MessageDlg('Вы действительно хотите выйти из программы?',mtConfirmation,[mbYes, mbNo],0) = mrYes then close;
end;



//
//  Открытие формул
//
procedure Tfirst_dialog_frm.SpeedButton3Click(Sender: TObject);
begin
if DBComboBoxEh1.Value > -1 then
begin
  try
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.get_formula(:debt_, :CURSOR_); end; ');
    DM.Q_SQL.ParamByName('debt_').AsInteger  := DBComboBoxEh1.Value;
    DM.Q_SQL.ParamByName('CURSOR_').DataType := ftCursor;
    DM.Q_SQL.Open;

    formula_main := Tformula_main.Create(Application);
    try
      formula_main.BitBtn10.Enabled := edit;
      formula_main.BitBtn11.Enabled := edit;
      formula_main.BitBtn12.Enabled := delete;
      formula_main.ShowModal();
      DM.Q_SQL.Close;
    finally
      formula_main.Free;
    end;
  except
      on E: Exception do
      begin
        formula_main.Free;
        DM.Q_SQL.Close;
        ShowMessage('Ошибка при открытии ФОРМУЛ'+#13#10+E.Message);
      end;
  End;
end;
end;


//
//  Открытие заказов
//
procedure Tfirst_dialog_frm.SpeedButton1Click(Sender: TObject);
begin
if DBComboBoxEh1.Value > -1 then
begin
  CUR_DEPT_ID := DBComboBoxEh1.Value;
  DM.DeptID := CUR_DEPT_ID;
  orders_main := Torders_main.Create(Application);
  try
    orders_main.add.Enabled  := edit;
    orders_main.edit.Enabled := edit;
    orders_main.mnJoin.Enabled := edit;
    orders_main.aLoadFile.Enabled := edit;
    orders_main.del.Enabled  := delete;

    orders_main.pmPrintList.Enabled := print;
    orders_main.N4.Enabled      := print;
    orders_main.bbFileSup.Enabled := print;
    orders_main.bbFileMSK.Enabled := print;

    orders_main.N5.Enabled      := print;
    orders_main.pmPrintStock.Enabled := print;

    orders_main.Panel5.Caption := 'Отдел: ' + DBComboBoxEh1.Text;
    DM.Q_ORDERS.ParamByName('p1').AsInteger := DBComboBoxEh1.Value;
    DM.Q_ORDERS.ParamByName('d1').AsDate := orders_main.de_begin.EditValue;
    DM.Q_ORDERS.ParamByName('d2').AsDate := orders_main.de_end.EditValue;

    DM.Q_ORDERS.ParamByName('t1').AsInteger := 0;
    if DM.isFilterByDobor then
      DM.Q_ORDERS.ParamByName('t2').AsInteger := 2
    else
      DM.Q_ORDERS.ParamByName('t2').AsInteger := 0;
    if DM.isFilterByWebShop then
      DM.Q_ORDERS.ParamByName('t3').AsInteger := 3
    else
      DM.Q_ORDERS.ParamByName('t3').AsInteger := 0;

    DM.Q_ORDERS.Open;

    orders_main.ShowModal();
    DM.Q_ORDERS.Close;
  finally
    orders_main.Free;
  end;
end;
end;

procedure Tfirst_dialog_frm.FormCreate(Sender: TObject);
var  RegIni : TIniFile;
begin
  path := ExtractFilePath(Application.ExeName);

  RegIni := TIniFile.Create(path+'orders.ini');
  try
    uFont     := RegIni.ReadInteger('Font', 'value', 9);
    uFilter   := RegIni.ReadBool('Filter','value', false);
    uSortClient  := RegIni.ReadBool('defSortClient','value', false);
    uDefDir   := RegIni.ReadString('iniDir', 'value', 'c:\');
    uDefSort  := RegIni.ReadInteger('defSort', 'value', 0);
    uHideCargoMoving := RegIni.ReadBool('defHideCargoMoving', 'value', false);
    uOrderFormat := RegIni.ReadBool('defOrderFormat', 'value', false);
    uSupplier := RegIni.ReadInteger('defSupplier','value', 0);
    uFilterByRus := RegIni.ReadBool('defFilterByRus','value', false);
    uSTOK     := RegIni.ReadInteger('STOK', 'value', 0);

    vSTOK     := RegIni.ReadInteger('STOK', 'value', 0);
    vDAYS     := RegIni.ReadInteger('DAYS', 'value', 0);

    def_folder  := RegIni.ReadString('folder', 'Value', '..');
  finally
    RegIni.Free;
  end;
end;


//
// настройка кнопок
//
procedure Tfirst_dialog_frm.SpeedButton4Click(Sender: TObject);
begin
  frm_buttons := Tfrm_buttons.Create(Application);
  try
    frm_buttons.ShowModal();
  finally
    frm_buttons.Free;
  end;
end;


procedure Tfirst_dialog_frm.DBCheckBoxEh1Click(Sender: TObject);
var Reg: TRegIniFile;
begin
    Reg:=TRegIniFile.Create('Star_Orders');
    try
      Reg.WriteBool('specification_val', 'Value', DBCheckBoxEh1.Checked);
    finally
      Reg.Free;
    end;
end;


procedure Tfirst_dialog_frm.FormShow(Sender: TObject);
var  Reg: TRegIniFile;
     s: boolean;
begin
  cbOffices.Enabled := (dm.id_office = 1);
  if (cbOffices.Enabled) then
  begin
      try
        cbOffices.Properties.OnChange := nil;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Q_SQL.Open;
        FillImgComboCx(DM.Q_SQL, cbOffices, 'Все');
        DM.Q_SQL.Close;
        cbOffices.EditValue := DM.id_office;
        cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
      except
        on E: Exception do ShowMessage(E.Message);
      end;
  end;

  Reg:=TRegIniFile.Create('Star_Orders');
  try
    S:= Reg.ReadBool('specification_val', 'Value', false);
  finally
    Reg.Free;
  end;

  SpeedButton3.Enabled := (addit and cbOffices.Enabled);
  DBCheckBoxEh1.Checked := S;
end;

// Открываем статистику
procedure Tfirst_dialog_frm.ButtonStatClick(Sender: TObject);
begin
  frm_prod_stat := Tfrm_prod_stat.Create(Application);
  try
    DM.Q_CLIENTS.Open;
    frm_prod_stat.showmodal;
    DM.Q_CLIENTS.Close;
  finally
    frm_prod_stat.free;
  end;
end;

procedure Tfirst_dialog_frm.cbOfficesPropertiesChange(Sender: TObject);
begin
  DM.id_office   := cbOffices.EditValue;
end;


end.
