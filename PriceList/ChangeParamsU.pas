unit ChangeParamsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, PI_LIbrary, Menus,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, ActnList;

type
  TChangeParamsF = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Edit2: TcxSpinEdit;
    Edit3: TcxSpinEdit;
    Edit4: TcxSpinEdit;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    Label1: TLabel;
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure SetNewPriceParams();

var
  ChangeParamsF: TChangeParamsF;

implementation

uses DataModule, Ora;

{$R *.dfm}

procedure SetNewPriceParams();
var
  PPLI_ID : Variant;
  res : Word;
Begin
try
  Application.CreateForm(TChangeParamsF, ChangeParamsF);
  with ChangeParamsF do
    Begin
      with DM.PPL_Index do
        Begin
          PPLI_ID     := VarToStr(FieldByName('PPLI_ID').Value);
          Edit1.Text  := VarToStr(FieldByName('PPL_COMMENT').Value);
          Edit2.Value := FieldByName('PRIME_COAST_COEFFICIENT').Value;
          Edit3.Value := FieldByName('PROFIT_COEFFITIENT').Value;
          Edit4.Value := FieldByName('EXCHANGE_RATE').Value;
          CheckBox1.Checked := FieldByName('USE_CUST_COEF').Value = 1;
        End;
      res := ShowModal;
      if res <> mrOk then exit;
      with DM.ForceQ do
        Begin
          SQL.Clear;
          SQL.Add('begin PRICE_PKG.CHANGE_PARAMS(:PPL_COMMENT_, :PRIME_COAST_COEFFICIENT_, :PROFIT_COEFFITIENT_, :EXCHANGE_RATE_, :USE_CUST_COEF_, :PPLI_ID_); end;');
          ParamByName('PPL_COMMENT_').Value             := StrToVar(Edit1.Text);
          ParamByName('PRIME_COAST_COEFFICIENT_').Value := Edit2.Value;
          ParamByName('PROFIT_COEFFITIENT_').Value      := Edit3.Value;
          ParamByName('EXCHANGE_RATE_').Value           := Edit4.Value;
          ParamByName('USE_CUST_COEF_').Value           := BoolToInt(CheckBox1.Checked);
          ParamByName('PPLI_ID_').Value                 := PPLI_ID;
          ExecSQL;
          DM.PPL_Index.Refresh;
          DM.PPL_Index.Locate('PPLI_ID',PPLI_ID,[]);
        End;
    End;
finally
  ChangeParamsF.Free;
end;
End;

procedure TChangeParamsF.Action1Execute(Sender: TObject);
begin
  cxButton1.SetFocus;
  ModalResult := mrOk;
end;

end.
