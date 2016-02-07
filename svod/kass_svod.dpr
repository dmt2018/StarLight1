program kass_svod;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  StarLibrary,
  Globals in 'Globals.pas',
  svod_f in 'svod_f.pas' {svod},
  DataM in 'DataM.pas' {DM: TDataModule},
  debt_f in 'debt_f.pas' {debt},
  nakl_edit_f in 'nakl_edit_f.pas' {nakl_edit},
  help_add_f in 'help_add_f.pas' {help_add},
  deb_edit_f in 'deb_edit_f.pas' {deb_edit},
  import_debet_f in 'import_debet_f.pas' {import_debet},
  statistic_f in 'statistic_f.pas' {statistic},
  help_cash_f in 'help_cash_f.pas' {help_cash},
  operations_f in 'operations_f.pas' {options},
  deleted_form in 'deleted_form.pas' {frm_deleted},
  Usvod_curr in 'Usvod_curr.pas' {frm_svod_curr},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UStat in 'UStat.pas' {frm_stat},
  UCashSettings in 'UCashSettings.pas' {frmCashSettings};

{$R *.res}
VAR
  ora_db_path : string;
  username, password : string;
  ed, del, pr, addit : boolean;

begin

  CheckStarParams(ed,del,pr,addit,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Application.Title := 'Кассовый свод';
  Application.CreateForm(TDM, DM);
  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server   := ora_db_path;
  DM.OraSession1.Connect;

  dm.b_edit   := ed;
  dm.b_delete := del;
  dm.b_print  := pr;
  dm.b_addit  := addit;

  Application.CreateForm(Tsvod, svod);
  Application.Run;
end.
