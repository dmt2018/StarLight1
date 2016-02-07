unit editor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB, ActnList, Grids,
  DBGridEh, Mask, DBCtrlsEh, StrUtils, GridsEh, Menus,
  cxLookAndFeelPainters, cxButtons, DBGridEhGrouping;

type
  Teditor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ActionList1: TActionList;
    Label9: TLabel;
    DBGridEh1: TDBGridEh;
    Label3: TLabel;
    Label7: TLabel;
    DBNumberEditEh1: TDBNumberEditEh;
    Label12: TLabel;
    DBEditEh1: TDBEditEh;
    btnClose: TcxButton;
    btn_save: TcxButton;
    aSave: TAction;
    procedure aSaveExecute(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  editor: Teditor;

implementation

uses DataM;

{$R *.dfm}

procedure Teditor.aSaveExecute(Sender: TObject);
var ind, flag: integer;
begin
  if ( (trim(DBNumberEditEh1.Text) = '') or (DM.Q_INV.RecordCount = 0)) then ShowMessage('Вы не заполнили обязательные поля или данные не верны!')
  else
  begin
    If ((DM.Q_INVTOTAL_SUM.AsInteger = 0) or (DM.Q_INVTOTAL_SUM.isNull = true)) then ShowMessage('Инвойс без суммы!')
    else
    begin
      try
         DM.Ora_SQL.CLose;
         DM.Ora_SQL.SQL.Clear;
         ind := editor.DBEditEh1.tag;
         DM.Ora_SQL.SQL.Add('begin claims_pkg.claims_edit(:ID_,:INV_ID_,:DDATE_,:N_TRACK_,:INFO_, :o_err_code, :o_err_msg); end;');
         DM.Ora_SQL.ParamByName('ID_').Value      := ind;
         DM.Ora_SQL.ParamByName('INV_ID_').Value  := DM.Q_INVINV_ID.AsInteger;
         DM.Ora_SQL.ParamByName('DDATE_').AsDateTime := Date();
         DM.Ora_SQL.ParamByName('N_TRACK_').Value := DBNumberEditEh1.Value;
         DM.Ora_SQL.ParamByName('INFO_').Value    := DBEditEh1.Text;
         DM.Ora_SQL.ParamByName('o_err_code').Value  := 0;
         DM.Ora_SQL.ParamByName('o_err_msg').Value   := '';
         DM.Ora_SQL.Execute;
         ind := DM.Ora_SQL.ParamByName('ID_').Value;
         DM.Q_CLAIMS.Refresh;
         DM.Q_CLAIMS.Locate('CLAIMS_ID',ind,[]);
         close;
      except
        on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      End;
    end;
  end;
end;


end.
