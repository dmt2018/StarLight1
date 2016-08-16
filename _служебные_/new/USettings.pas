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
    btnSav: TcxButton;
    btnClos: TcxButton;
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

//пишу значения шрифта и отдела в БД и закр.форму
procedure TfrmSettings.aEnterExecute(Sender: TObject);
var
   p_key: array [1..2] of string;
   p_val: array [1..2] of integer;
   i:     integer;
begin
  intDefFont := cbFont.EditValue;
  intDefDept := cbOtdel.EditValue;

  p_key[1] := 'FontSize';    p_val[1] := intDefFont;
  p_key[2] := 'Department';  p_val[2] := intDefDept;

 { for i := 1 to 2 do begin
    dm.cdsSQL.Close;
     dm.cdsSQL.SQL.clear;
      dm.cdsSQL.SQL.Add('begin service_pkg.save_user_setting(:p_key, :p_val);end;');
       dm.cdsSQL.ParamByName('p_key').value := p_key[i];
       dm.cdsSQL.ParamByName('p_val').value := p_val[i];
      dm.cdsSQL.execute;
     dm.OraSession.Commit;
    dm.cdsSQL.Close;
  end;    }


//------cdssettings открыто с момента открытия формы и хранит настройки---------------------
for i := 1 to 2 do begin
    dm.cdsSQL.Close;
     dm.cdsSQL.SQL.clear;
      dm.cdsSQL.SQL.Add('begin service_pkg.save_user_setting(:p_key, :p_val);end;');

       dm.cdssettings.First;
        while not dm.cdssettings.Eof do begin
         if (dm.orasession.Username = dm.cdssettings.FieldByName('DB_USER').value) then
         if (dm.cdssettings.FieldByName('STG_KEY').value = p_key[i])
         and (dm.cdssettings.FieldByName('STG_VALUE').Asinteger <> p_val[i]) then begin
           dm.cdsSQL.ParamByName('p_key').value := p_key[i];
           dm.cdsSQL.ParamByName('p_val').value := p_val[i];
           dm.cdsSQL.execute;
         end;
         dm.cdssettings.Next;
        end;

     dm.OraSession.Commit;
    dm.cdsSQL.Close;
end;

dm.cdssettings.close; // закрываю при закрытии формы
//-------------------------------------------------------------------------------------

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
 // dm.cdsDeps.Close; //список отделов получен - закрываю
   {
   cbFont.EditValue  := intDefFont;
   cbOtdel.EditValue := intDefDept;
    }

// при открытии формы считываю знач.шрифта и отдела для текущ.юзера на форму
 with dm do begin
   cdssettings.ParamByName('cursor_').AsCursor;
   cdssettings.Open;
   cdssettings.First;
   while not cdssettings.Eof do
    begin
      if (orasession.Username = cdssettings.FieldByName('DB_USER').value) then begin
        if (cdssettings.FieldByName('STG_KEY').value = 'FontSize')   then cbFont.EditValue  := cdssettings.FieldByName('STG_VALUE').Asinteger;
        if (cdssettings.FieldByName('STG_KEY').value = 'Department') then cbOtdel.EditValue := cdssettings.FieldByName('STG_VALUE').Asinteger;
      end;
    cdssettings.Next;
    end;


  // сохраняю значения в переменные:
  //intDefFont := cbFont.EditValue;
  //intDefDept := cbOtdel.EditValue;

  { cdsSQL.Close;
   cdsSQL.SQL.clear;
   cdsSQL.SQL.Add('begin service_pkg.get_user_setting(:cursor_);end;');
   cdsSQL.ParamByName('cursor_').AsCursor;
   cdsSQL.open;
   cdsSQL.First;
    while not cdsSQL.Eof do
    begin
     if (orasession.Username = cdsSQL.FieldByName('DB_USER').value) then begin
      if (cdsSQL.FieldByName('STG_KEY').value = 'FontSize')   then cbFont.EditValue := cdsSQL.FieldByName('STG_VALUE').Asinteger;
      if (cdsSQL.FieldByName('STG_KEY').value = 'Department') then cbOtdel.EditValue := cdsSQL.FieldByName('STG_VALUE').Asinteger;
     end;
    cdsSQL.Next;
    end;
   cdsSQL.Close; }
 end;
end;

end.
