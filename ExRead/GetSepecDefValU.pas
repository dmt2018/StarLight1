unit GetSepecDefValU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons;

type
  TGetSepecDefValF = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    ListBox1: TListBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function GetSpecValDef(const HS_ID : Variant; out SPEC_VAL : Variant) : Word;

var
  GetSepecDefValF: TGetSepecDefValF;

implementation

uses DataModule, DBAccess, Ora, DB;

{$R *.dfm}

Function GetSpecValDef(const HS_ID : Variant; out SPEC_VAL : Variant) : Word;
Begin
  Application.CreateForm(TGetSepecDefValF, GetSepecDefValF);
  with GetSepecDefValF do
  try
      with DM.SelQ do
      Begin
          Close;
          sql.Clear;
          sql.Add('SELECT CONTENT_HOL FROM SPECIFICATION_CONTENT WHERE HS_ID = :HS_ID');
          ParamByName('HS_ID').Value := HS_ID;
          Open;
          if IsEmpty then
          Begin
              ShowMessage('У этой спецификации нет ни одного сохранённого значения! Введите значение руками!');
              Exit;
          End;
          First;
          while not eof do
          Begin
              ListBox1.Items.Add(FieldByName('CONTENT_HOL').AsString);
              next;
          End;
      End;
      GetSpecValDef := GetSepecDefValF.ShowModal;
      if result        = mrOk then  SPEC_VAL := ListBox1.Items[ListBox1.ItemIndex]
                              else  SPEC_VAL := null;
  finally
      free;
  End;
End;

end.
