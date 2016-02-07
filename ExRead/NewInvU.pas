unit NewInvU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Menus, cxLookAndFeelPainters,
  cxButtons, ExtCtrls, ActnList, PI_library, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, IniFiles;

type
  TNewInvF = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    DateTimePicker2: TDateTimePicker;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    alMain: TActionList;
    aEnter: TAction;
    icb_suplier: TcxImageComboBox;
    Label5: TLabel;
    Edit3: TEdit;
    btnSearchClear: TcxButton;
    aClearSearch: TAction;
    aFillCombo: TAction;
    Image5: TImage;
    Image1: TImage;
    Label6: TLabel;
    icbCountryGTD: TcxImageComboBox;
    procedure FormShow(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aClearSearchExecute(Sender: TObject);
    procedure aFillComboExecute(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    s_param : string;
  public
    { Public declarations }
  end;

function GetInvoiceInfo(var InvDat : Variant;
                        var InvComment : Variant;
                        var InvSupDat : Variant;
                        var InvSupNumber : Variant;
                        var S_ID : Variant;
                        var C_def : Variant) : boolean;

var
  NewInvF: TNewInvF;

implementation

uses Math, DataModule, Globals;

{$R *.dfm}

function GetInvoiceInfo(var InvDat : Variant;
                        var InvComment : Variant;
                        var InvSupDat : Variant;
                        var InvSupNumber : Variant;
                        var S_ID : Variant;
                        var C_def : Variant) : boolean;
Begin
  Application.CreateForm(TNewInvF, NewInvF);
  if (InvDat <> null) then NewInvF.Caption := '  Редактирование нового инвойса'
  else NewInvF.Caption := '  Добавление нового инвойса';

  with NewInvF do
    try
      If InvDat <> null then DateTimePicker1.Date := VarToDateTime(InvDat)
                        else DateTimePicker1.Date := Now;
      Edit1.Text := VarToStr(InvComment);
      If InvSupDat <> null then DateTimePicker2.Date := VarToDateTime(InvSupDat)
                           else DateTimePicker2.Date := Now;
      Edit2.Text := VarToStr(InvSupNumber);
      icb_suplier.EditValue := S_ID;
      s_param := '';

      Edit2.Enabled := (S_ID <> 1 );
      if C_def>0 then icbCountryGTD.EditValue := C_def;
      

      if ShowModal = mrOk then
        Begin
          InvDat := DateTimePicker1.Date;
          InvComment := Edit1.Text;
          InvSupDat := DateTimePicker2.Date;
          InvSupNumber := Edit2.Text;
          S_ID := icb_suplier.EditValue;
          C_def := icbCountryGTD.EditValue;
          Result := true;
        End
      else Result := false;
    finally
      Free;
    End;
End;

procedure TNewInvF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (ModalResult = mrOk) and (icb_suplier.ItemIndex < 0) then
  begin
    MessageBox(Handle, 'Необходимо заполнить дату и указать поставщика!', 'Внимание', MB_ICONWARNING);
    Action := caNone;
  end;
  
end;

procedure TNewInvF.FormCreate(Sender: TObject);
begin
    s_param := '';
    aFillCombo.Execute;
end;

procedure TNewInvF.FormShow(Sender: TObject);
begin
  datetimePicker1.SetFocus;
end;

procedure TNewInvF.aClearSearchExecute(Sender: TObject);
begin
  s_param    := '';
  Edit3.Text := 'поиск...';
  aFillCombo.Execute;
end;

procedure TNewInvF.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TNewInvF.aFillComboExecute(Sender: TObject);
VAR i : Integer;
    ColIni : TIniFile;
begin
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  if trim(s_param) = '' then
    DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU')
  else
    DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office and lower(s_name_ru) like lower(''%'+s_param+'%'') ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icb_suplier, '');

  ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
  try
  i := ColIni.ReadInteger('def_countryTrans','value',-1);
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT c_id, country FROM countries order by country');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icbCountryGTD, '');
  icbCountryGTD.EditValue := i;
  finally
    ColIni.Free;
  end;
end;

procedure TNewInvF.Edit3Enter(Sender: TObject);
begin
  Edit3.SelectAll;
end;

procedure TNewInvF.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (trim(Edit3.text) <> '') and (trim(Edit3.Text) <> 'поиск...') then
  begin
    s_param := Edit3.text;
    aFillCombo.Execute;
    icb_suplier.SetFocus;
    icb_suplier.DroppedDown:= true;
  end;
end;

end.
