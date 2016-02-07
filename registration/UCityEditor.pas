unit UCityEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, StdCtrls, Mask, DBCtrlsEh, Buttons, ExtCtrls,
  PI_Library_reg;

type
  TfrmCityEditor = class(TForm)
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    DBNumberEditEh1: TDBNumberEditEh;
    Znak_EditPercent: TComboBox;
    pnlCity: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit2: TEdit;
    imcbRegion: TcxImageComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCityEditor: TfrmCityEditor;

implementation

uses DataM;

{$R *.dfm}

procedure TfrmCityEditor.BitBtn3Click(Sender: TObject);
begin
  if (trim(Edit1.Text) = '') then
  begin
     Application.MessageBox('Вы не заполнили обязательные поля','Внимание',MB_ICONWARNING);
     exit;
  end;

  if imcbRegion.ItemIndex < 1 then
  begin
     Application.MessageBox('Необходимо указать регион','Внимание',MB_ICONWARNING);
     exit;
  end;

  try

    DM.Ora_SQL.SQL.Clear;
    DM.Ora_SQL.SQL.Add('begin BOOKS.save_city(:v_city, :v_kod, :v_id_region, :id_); end;');
    DM.Ora_SQL.ParamByName('v_city').AsString := trim(Edit1.Text);
    DM.Ora_SQL.ParamByName('v_kod').AsString  := trim(Edit2.Text);
    DM.Ora_SQL.ParamByName('v_id_region').AsInteger := imcbRegion.EditValue;
    DM.Ora_SQL.ParamByName('id_').AsInteger := Edit1.Tag;
    DM.Ora_SQL.Execute;
    Edit1.Tag := DM.Ora_SQL.ParamByName('id_').AsInteger;

    ModalResult := mrOk;

  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
  End;
end;

procedure TfrmCityEditor.FormShow(Sender: TObject);
begin
    FillImgComboCx(DM.Q_REGIONS,imcbRegion,'Выберите...');
    imcbRegion.EditValue := imcbRegion.Tag;
    imcbRegion.Properties.ReadOnly := true;
end;

end.
