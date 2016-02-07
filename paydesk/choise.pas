unit choise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, DBCtrls, ComCtrls, cxLabel,
  cxControls, cxContainer, cxEdit, cxImage, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Menus, cxLookAndFeelPainters, cxButtons, IniFiles;

type
  Tchoises = class(TForm)
    Panel5: TPanel;
    Panel6: TPanel;
    img_cass1: TcxImage;
    img_cass2: TcxImage;
    img_cass3: TcxImage;
    img_cass_main: TcxImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Panel7: TPanel;
    kass_date: TcxDateEdit;
    Panel8: TPanel;
    btn_operation: TcxButton;
    btnClose: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cxLabel1Click(Sender: TObject);
    procedure btn_operationClick(Sender: TObject);
  private
    { Private declarations }
  public
    chois: integer;
    client_path: string;
    client_path2: string;
    progas: string;
    path : string;
    param_: integer;
    def_OKUD, def_OKPO, def_title: string;
    { Public declarations }
  end;

var
  choises: Tchoises;

implementation

uses cashbook_f, DataM, operations_f, nakl_edit_f;

{$R *.dfm}


//
//  Выход из программы
//
procedure Tchoises.btnCloseClick(Sender: TObject);
begin
  If MessageDlg('Действительно хотите выйти из программы?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then close;
end;


//
// Открываем опции
//
procedure Tchoises.btn_operationClick(Sender: TObject);
begin
  options := Toptions.Create(Application);
  try
    DM.OPERATIONS.Open;

    options.aInsert.Enabled := (DM.id_office = 1);
    options.aEdit.Enabled   := (DM.id_office = 1);
    options.aDelete.Enabled := (DM.id_office = 1);
    options.Panel2.Visible  := (DM.id_office = 1);

    options.showmodal;
    DM.OPERATIONS.Close;
  finally
    options.Free;
  end;
end;


//
// Запуск касс
//
procedure Tchoises.cxLabel1Click(Sender: TObject);
begin
  btnClose.SetFocus;

  cxLabel1.Style.Color := clWhite;
  cxLabel2.Style.Color := clWhite;
  cxLabel3.Style.Color := clWhite;
  cxLabel4.Style.Color := clWhite;

  img_cass1.Style.Color := clWhite;
  img_cass2.Style.Color := clWhite;
  img_cass3.Style.Color := clWhite;
  img_cass_main.Style.Color := clWhite;

  try
    param_ := ((Sender as TcxLabel).Tag);
  except
    param_ := ((Sender as TcxImage).Tag);
  end;

  case param_ of
      1: begin cxLabel1.Style.Color := clSkyBlue; img_cass1.Style.Color := clSkyBlue; end;
      2: begin cxLabel2.Style.Color := clSkyBlue; img_cass2.Style.Color := clSkyBlue; end;
      3: begin cxLabel3.Style.Color := clSkyBlue; img_cass3.Style.Color := clSkyBlue; end;
      4: begin cxLabel4.Style.Color := clSkyBlue; img_cass_main.Style.Color := clSkyBlue; end;
    end;

  if (param_ > 0) and (param_ < 6) then
  begin
    cashbook := Tcashbook.Create(Application);
    try
      DM.CASH_TMP.Close;
      DM.CASH_TMP.Params.ParamByName('ddate_').AsDate       := kass_date.EditValue;
      DM.CASH_TMP.Params.ParamByName('paydesk_').AsInteger  := param_;
      DM.CASH_TMP.Params.ParamByName('invoice_').AsInteger  := 0;
      DM.CASH_TMP.Params.ParamByName('paydesk2_').AsInteger := 0;
      DM.CASH_TMP.Open;
      cashbook.Label2.Caption := DateToStr(kass_date.EditValue);
      cashbook.cur_paydesk    := param_;
      cashbook.cur_date       := kass_date.EditValue;
      cashbook.corrector      := dm.OraSession1.Username;

      case param_ of
      4: begin
         cashbook.Label3.Caption        := 'Касса главная';
         cashbook.bb_statistic.Enabled  := true;
         cashbook.dxBarControlContainerItem1.Control := cashbook.Panel3;
         cashbook.dxBarButton2.Enabled  := false;
         cashbook.dxBarButton3.Enabled  := false;
         cashbook.gr_cashbook_vCORRECTOR.Visible := true;
         cashbook.imcb_kass.EditValue   := 5;
         cashbook.bb_endcash.Enabled  := dm.b_edit;
         cashbook.bb_delcash.Enabled  := dm.b_edit; // 2012-10-22 по просьбе ЕВ dm.b_delete;
       end;
      else
        cashbook.Label3.Caption         := 'Касса №'+inttostr(param_);
        cashbook.bb_statistic.Enabled   := false;
        cashbook.dxBarControlContainerItem1.Control := cashbook.Panel2;
        cashbook.dxBarButton2.Enabled   := true;
        cashbook.dxBarButton3.Enabled   := true;
        cashbook.gr_cashbook_vCORRECTOR.Visible := false;
      end;

      cashbook.showmodal;
      DM.CASH_TMP.Close;

      cxLabel1.Repaint;
      cxLabel2.Repaint;
      cxLabel3.Repaint;
      cxLabel4.Repaint;

      img_cass1.Repaint;
      img_cass2.Repaint;
      img_cass3.Repaint;
      img_cass_main.Repaint;

    finally
      cashbook.Free;
    end;
  end
  else ShowMessage('Необходимо выбрать кассу или операции!');

  kass_date.SetFocus;
end;


//
// Закрытие программы
//
procedure Tchoises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.OraSession1.Connected := false;
end;


//
//  Счатываем переменные
//
procedure Tchoises.FormCreate(Sender: TObject);
VAR f: TextFile;
    Ini : TIniFile;
begin
  path := ExtractFilePath(Application.ExeName);

  // Пытаемся открыть файл с настройками
  try
    {$I-}
    AssignFile(f,'connections/connections.txt');
    Reset(f);
    Readln(f,client_path);
    Readln(f,client_path2);
    Readln(f,progas);
    CloseFile(f);
    {$I+}
  except
    ShowMessage('Невозможно открыть файл "connections.txt" в папке "connections"!')
  End;
  // Конец считывания


  Ini := TIniFile.Create(path + '\ini\print_setting.ini' );
  try
    def_OKUD  := Ini.ReadString('OKUD','value','');
    def_OKPO  := Ini.ReadString('OKPO', 'value', '');
    def_title := Ini.ReadString('Title', 'value', '') + Chr(10) + Ini.ReadString('Title', 'value2', '');
  finally
    Ini.Free;
  end;

  kass_date.EditValue := Date;
end;

end.
