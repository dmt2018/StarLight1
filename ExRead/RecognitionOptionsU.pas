unit RecognitionOptionsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, PI_library, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  ActnList, IniFiles;

type TOptSet = set of 1..4;

type
    TRecognitionOptionsF = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox3: TCheckBox;
    Label1: TLabel;
    icb_suplier: TcxImageComboBox;
    icb_country: TcxImageComboBox;
    Label2: TLabel;
    ActionList1: TActionList;
    aCtrlEnter: TAction;
    CheckBox4: TCheckBox;
    procedure aCtrlEnterExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetRecognitionOptioons() : TOptSet;
  end;

var
  RecognitionOptionsF: TRecognitionOptionsF;

implementation

uses DataModule, Globals, Ora;

{$R *.dfm}

procedure TRecognitionOptionsF.aCtrlEnterExecute(Sender: TObject);
begin
  BitBtn1.SetFocus;
  ModalResult := mrOk;
end;

function TRecognitionOptionsF.GetRecognitionOptioons() : TOptSet;
var
  S_ID,C_ID : VAriant;
  ColIni : TIniFile;
Begin
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT C_ID,COUNTRY FROM COUNTRIES ORDER BY CASE WHEN C_ID = 0 THEN C_ID END, COUNTRY');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icb_country, '');

  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, icb_suplier, '');


  ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
  if DM.InvoiceRegister.FieldByName('S_ID_DEFAULT').AsInteger > 0 then
     S_ID := DM.InvoiceRegister.FieldByName('S_ID_DEFAULT').Value
  else
     S_ID := ColIni.ReadInteger('supplier','value',-1);

  if DM.InvoiceRegister.FieldByName('C_ID_DEFAULT').AsInteger > 0 then
     C_ID := DM.InvoiceRegister.FieldByName('C_ID_DEFAULT').Value
  else
     C_ID := ColIni.ReadInteger('def_country','value',-1);

  CheckBox1.Checked  := ColIni.ReadBool('def_code','value',false);
  CheckBox2.Checked  := ColIni.ReadBool('def_name','value',false);
  CheckBox3.Checked  := ColIni.ReadBool('def_remarks','value',false);
  CheckBox4.Checked  := ColIni.ReadBool('def_pack','value',false);

  icb_country.EditValue := C_ID;
  icb_suplier.EditValue := S_ID;

  if ShowModal <> mrOk then
    Begin
      result := [];
      Exit;
    End;

  if ( icb_country.EditValue = NULL ) or (icb_country.ItemIndex < 0)  then
  begin
      MessageBox(Handle,'Забыли указать страну','Внимание',MB_ICONWARNING);
      Exit;
  end;

  if ( icb_suplier.EditValue = NULL ) or (icb_suplier.ItemIndex < 0) then
  begin
      MessageBox(Handle,'Забыли указать поставщика','Внимание',MB_ICONWARNING);
      Exit;
  end;



  // Если кнопка CANCEL не нажата то записываем страну и поставщика в инвойс для разбора по умолчанию
  DEF_COUNTRY_ID  := icb_country.EditValue;
  DEF_SUPPLIER_ID := icb_suplier.EditValue;

  with DM.SelQ do
  Begin
     Close;
     SQL.Clear;
     SQL.Add('begin INVOICE_PKG.SET_DEFAULT(:INV_ID_, :DEF_COUNTRY_ID_, :DEF_SUPPLIER_ID_); end;');
     ParamByName('INV_ID_').Value           := DM.InvoiceRegister.FieldByName('INV_ID').AsInteger;
     ParamByName('DEF_COUNTRY_ID_').Value   := DEF_COUNTRY_ID;
     ParamByName('DEF_SUPPLIER_ID_').Value  := DEF_SUPPLIER_ID;
     Execute;
     DM.InvoiceRegister.RefreshRecord;
  End;

  result := [];
  if CheckBox1.Checked then result := result + [1];
  if CheckBox2.Checked then result := result + [2];
  if CheckBox3.Checked then result := result + [3];
  if CheckBox4.Checked then result := result + [4];
End;

end.
