unit SetInvoAllU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PI_Library, Menus,
  cxLookAndFeelPainters, cxButtons, ActnList, IniFiles, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TSetInvoAll = class(TForm)
    Panel9: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Label6: TLabel;
    icbCountryGTD: TcxImageComboBox;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function GetSetInvoParams(var CUST_COEF : Variant; var GTD : Variant; var SENDED_TO_WAREHOUSE : Variant; var C_def : Variant) : boolean;

var
  SetInvoAll: TSetInvoAll;

implementation

uses DataModule, Globals;

{$R *.dfm}

function GetSetInvoParams(var CUST_COEF : Variant; var GTD : Variant; var SENDED_TO_WAREHOUSE : Variant; var C_def : Variant) : boolean;
Begin
  Application.CreateForm(TSetInvoAll, SetInvoAll);
  with SetInvoAll do
    Begin
      icbCountryGTD.EditValue := C_def;
      Result := False;
      if ShowModal = mrOk then
        Begin
          if CheckBox1.Checked then CUST_COEF := StrToVarFloat(Edit1.Text)
                               else CUST_COEF := NULL;
          if CheckBox2.Checked then GTD := StrToVar(Edit2.Text)
                               else GTD := NULL;
          Case ComboBox1.ItemIndex of
            0 : SENDED_TO_WAREHOUSE := NULL;
            1 : SENDED_TO_WAREHOUSE := 0;
            2 : SENDED_TO_WAREHOUSE := 1;
          End;
          C_def := icbCountryGTD.EditValue;
          Result := true;
        End; 
      Free;
    End;
End;

procedure TSetInvoAll.CheckBox1Click(Sender: TObject);
begin
  if (CheckBox1.Checked) and (CheckBox1.Focused) then Edit1.SetFocus;
end;

procedure TSetInvoAll.CheckBox2Click(Sender: TObject);
begin
  if (CheckBox2.Checked) and (CheckBox1.Focused) then Edit2.SetFocus;
end;

procedure TSetInvoAll.Edit1Change(Sender: TObject);
begin
  CheckTEditContentFloat(Sender, clWindow, clRed);
  if (trim(Edit1.Text) <> '') then CheckBox1.Checked := true else CheckBox1.Checked := false;
end;

procedure TSetInvoAll.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Edit2.Text <> '' then CheckBox2.Checked := true else CheckBox2.Checked := false;
end;

procedure TSetInvoAll.FormCreate(Sender: TObject);
begin
//  ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
//  try
//  i := ColIni.ReadInteger('def_countryTrans','value',-1);
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT c_id, country FROM countries order by country');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icbCountryGTD, '');
//  icbCountryGTD.EditValue := i;
//  finally
//    ColIni.Free;
//  end;
end;

procedure TSetInvoAll.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TSetInvoAll.Action1Execute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
