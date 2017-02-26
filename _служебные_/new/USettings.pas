unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, ActnList, cxGraphics, Menus, cxLookAndFeelPainters,
  cxLabel, StdCtrls, cxButtons, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, star_lib, ExtCtrls;

type
  TfrmSettings = class(TForm)
    pcSettings: TcxPageControl;
    tshMain: TcxTabSheet;
    alSettings: TActionList;
    cbOtdel: TcxImageComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    aEnter: TAction;
    aClose: TAction;
    cbFont: TcxComboBox;
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnClose: TcxButton;
    Pnltop: TPanel;
    procedure aCloseExecute(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmSettings: TfrmSettings;

implementation

uses UDM;

{$R *.dfm}

function TfrmSettings.MainFormShow : boolean;
Begin
 if not Assigned(frmSettings) then
  begin
    frmSettings := TfrmSettings.Create(Application);
    try
      frmSettings.Show;
      LoadFormState(frmSettings); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmSettings.WindowState = wsMinimized) then frmSettings.WindowState := wsNormal;
end;

procedure TfrmSettings.aCloseExecute(Sender: TObject);
begin
  Close;
end;

//пишу значени€ шрифта и отдела в Ѕƒ и закр.форму
procedure TfrmSettings.aEnterExecute(Sender: TObject);
var
  p_key: array [1..2] of string;
  p_val: array [1..2] of integer;
  i: integer;
begin
  p_key[1] := 'FontSize';    p_val[1] := cbFont.EditValue;
  p_key[2] := 'Department';  p_val[2] := cbOtdel.EditValue;

  dm.cdsSQL.Close;
  dm.cdsSQL.SQL.clear;
  dm.cdsSQL.SQL.Add('begin admins.save_user_setting(:p_key, :p_val);end;');

  //оказалось save_user_setting уже обрабатывает - что за юзер и т.д., поэтому лишнее убираю:
  for i := 1 to length(p_key) do
  begin
    if (cbFont.EditValue <> intDefFont) or (cbOtdel.EditValue <> intDefDept) then begin
      dm.cdsSQL.ParamByName('p_key').value := p_key[i];
      dm.cdsSQL.ParamByName('p_val').value := p_val[i];
      dm.cdsSQL.execute;
    end;
  end;

  dm.OraSession.Commit;
  dm.cdsSQL.Close;
  dm.cdssettings.refresh;

  //переписываю знач.перем-х:
  intDefFont := cbFont.EditValue;
  intDefDept := cbOtdel.EditValue;

  Close;
end;

procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmSettings); //полож.окна
  frmSettings := nil;
  Action := caFree;
end;

procedure TfrmSettings.FormShow(Sender: TObject);
begin
  //заполн€ю комбобоксы настройками, полученными из бд при старте проги:
  cbFont.EditValue  := intDefFont;
  cbOtdel.EditValue := intDefDept;
end;

end.
