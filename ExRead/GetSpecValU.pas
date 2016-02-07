unit GetSpecValU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PI_Library, Mask,
  Menus, cxLookAndFeelPainters, cxButtons, ActnList, cxGraphics, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox;

type
  TGetSpecValF = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    ActionList1: TActionList;
    Action1: TAction;
    imgSpec: TcxImageComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function GetSpecVal (var SpecCode : Variant;var SpecValue  : Variant) : Word;

var
  GetSpecValF: TGetSpecValF;

implementation

uses DataModule, DBAccess, Ora, DB, Math, GetSepecDefValU;

{$R *.dfm}

Function GetSpecVal (var SpecCode : Variant;var SpecValue  : Variant) : Word;
Begin
  Application.CreateForm(TGetSpecValF, GetSpecValF);
  with GetSpecValF do
    try

      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT SPEC_CODE, SPEC_CODE || '' - '' || SPEC_NAME FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
      DM.SelQ.Open;
      FillImgComboCx(DM.SelQ, imgSpec, '');

      GetSpecVal := ShowModal;
      if result = mrOk then
        Begin
          SpecCode  := imgSpec.EditValue;
          SpecValue := Edit1.Text;
        End
      else
        Begin
          SpecCode  := null;
          SpecValue := null;
        End;
    finally
      free;
    End;
End;


//
//  Достаем значения для спецификации
//
procedure TGetSpecValF.SpeedButton1Click(Sender: TObject);
VAR
  HS_ID,HS_VALUE : Variant;
  mr : Word;
begin
  with DM.SelQ do
  Begin
      sql.Clear;
      SQL.Add('SELECT HS_ID FROM HOL_SPECIFICATIONS WHERE (SPEC_CODE = :SPEC_CODE) AND (NEED_TRANSLATION = 1)');
      ParamByName('SPEC_CODE').Value := imgSpec.EditValue;
      Open;

      If IsEmpty then
      Begin
          ShowMessage('Выбранная спецификация не требут перевода и не имеет сохранённых значений!');
          Exit;
      End;

      HS_ID := FieldByName('HS_ID').Value;
      mr    := GetSpecValDef(HS_ID,HS_VALUE);
      if mr = mrOk then Edit1.Text := HS_VALUE;
  End;
end;


procedure TGetSpecValF.Action1Execute(Sender: TObject);
begin
  cxButton2.SetFocus;
  ModalResult := mrOk;
end;

end.
