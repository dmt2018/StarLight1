unit AddSpecU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, PI_Library, ExtCtrls, cxGraphics,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, Menus, cxLookAndFeelPainters, ActnList, cxButtons;

type
  TAddSpec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    imcb_spec: TcxImageComboBox;
    imcb_spec_trans: TcxImageComboBox;
    Edit1: TcxTextEdit;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    ActionList1: TActionList;
    aSave: TAction;
    Panel3: TPanel;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure imcb_specPropertiesChange(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InsertSpec(N_ID : Integer);
  end;

var
  AddSpec: TAddSpec;

implementation

uses DataModule, Ora;

{$R *.dfm}

procedure TAddSpec.InsertSpec(N_ID : Integer);
VAR
  SPEC_VAL : String;
  sc_id_: Variant;
Begin
  sc_id_ := null;
  imcb_spec.Properties.OnChange := nil;
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION FROM HOL_SPECIFICATIONS ORDER BY SPEC_CODE');
  DM.SelQ.Open;
  FillImgComboCx(DM.SelQ, imcb_spec, '');
  imcb_spec.Properties.OnChange := imcb_specPropertiesChange;
  imcb_specPropertiesChange(Self);

  If ShowModal <> mrOk then exit;
  if Edit1.Enabled then
    SPEC_VAL := Edit1.Text
  else
    Begin
      sc_id_ := imcb_spec_trans.EditValue;
      SPEC_VAL := '';
{
      With DM.SelQ do
        Begin
          SQL.Clear;
          SQL.Add('select CONTENT_HOL FROM SPECIFICATION_CONTENT WHERE SC_ID = :SC_ID');
          ParamByName('SC_ID').Value := sc_id_;
          Open;
          SPEC_VAL := FieldByName('CONTENT_HOL').AsString;
        End;
}
    End;
  if (trim(SPEC_VAL) = '') and (sc_id_ = null) then
  Begin
    ShowMessage('Не было введено значение!');
    Exit;
  End;


  with DM.StorProc do
    Begin
      StoredProcName := 'NOMENCLATURE_PKG.INS_NOM_SPEC';
      Prepare;
      ParamByName('N_ID_').Value    := N_ID;
      ParamByName('HS_ID_').Value   := imcb_spec.EditValue;
      ParamByName('HS_VAL_').Value  := SPEC_VAL;
      ParamByName('SC_ID_').Value    := sc_id_;
      Try
        ExecProc;
      except on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Произошла ошибка', MB_ICONERROR);
      end;
    End;

//  DM.DictView.Refresh;
//  DM.DictView.Locate('N_ID',N_ID,[]);
  DM.NomSpec.Refresh;
End;



procedure TAddSpec.aSaveExecute(Sender: TObject);
begin
  cxButton2.SetFocus;
  Modalresult := mrOk;
end;



procedure TAddSpec.FormShow(Sender: TObject);
begin
  imcb_spec.SetFocus;
end;



procedure TAddSpec.imcb_specPropertiesChange(Sender: TObject);
begin
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add('select NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE HS_ID = :HS_ID');
  DM.SelQ.ParamByName('HS_ID').Value := imcb_spec.EditValue;
  DM.SelQ.Execute;
  if DM.SelQ.FieldByName('NEED_TRANSLATION').Value = 1 then
  begin
    imcb_spec_trans.Enabled := true;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT SC_ID, CONTENT_HOL || '' | '' || CONTENT_RUS FROM SPECIFICATION_CONTENT WHERE HS_ID = ' + VarToStr(imcb_spec.EditValue));
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, imcb_spec_trans, '');

    Edit1.Clear;
    Edit1.Enabled := false;
  end
  else
  begin
    Edit1.Clear;
    Edit1.Enabled             := true;
    imcb_spec_trans.EditValue := -1;
    imcb_spec_trans.Enabled   := false;
  end;
end;

end.
