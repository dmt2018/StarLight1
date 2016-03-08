program orders;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  frm_first_dialog in 'frm_first_dialog.pas' {first_dialog_frm},
  frm_DM in 'frm_DM.pas' {DM: TDataModule},
  frm_formula_main in 'frm_formula_main.pas' {formula_main},
  formula_edit_f in 'formula_edit_f.pas' {formula_edit},
  frm_orders_main in 'frm_orders_main.pas' {orders_main},
  new_order_f in 'new_order_f.pas' {new_order},
  frm_orders_clients in 'frm_orders_clients.pas' {orders_clients},
  frm_orders_new_client in 'frm_orders_new_client.pas' {orders_new_client},
  frm_orders_list in 'frm_orders_list.pas' {orders_list},
  raznos_f in 'raznos_f.pas' {raznos},
  show_track_f in 'show_track_f.pas' {show_track},
  buttons_for in 'buttons_for.pas' {frm_buttons},
  UFindClient in 'UFindClient.pas' {frm_find_client},
  UShowOrder in 'UShowOrder.pas' {frm_show_order},
  Ustat in 'Ustat.pas' {frm_stat},
  NewInvNomU in 'NewInvNomU.pas' {NewInvNomF},
  UAddSomething in 'UAddSomething.pas' {frm_add_something},
  UStat_raznos in 'UStat_raznos.pas' {frm_stat_raznos},
  UShowNom in 'UShowNom.pas' {frm_show_nom},
  Globals in 'Globals.pas',
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UInfo in 'UInfo.pas' {frmDataInfo},
  UChoiseType in '..\sales\UChoiseType.pas' {frm_choise_type},
  UCopyOrder in 'UCopyOrder.pas' {frmCopyOrder},
  client_choos in 'client_choos.pas' {clientchoosForm},
  ULoadOldOrder in 'ULoadOldOrder.pas' {frmOldOrder},
  UExportDBF in 'UExportDBF.pas' {frmLoadFromDBF},
  NewDict in 'NewDict.pas' {NewD},
  UClientList in 'UClientList.pas' {frmClientList},
  prod_stat_f in 'prod_stat_f.pas' {frm_prod_stat};

{$R *.res}

VAR
  i, DeptID: Integer;
  print, delete, edit, Addit: boolean;
  ora_db_path : string;
  username, password : string;
begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit := false;
  Delete := false;
  Print := false;
  Addit := false;

  for i := 1 to ParamCount do
  begin
    // Логин
    if LowerCase(ParamStr(i)) = '-l' then
      if ParamCount >= i+1 then
        Begin
          username := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Пароль
    if LowerCase(ParamStr(i)) = '-p' then
      if ParamCount >= i+1 then
        Begin
          Password := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Путь к БД
    if LowerCase(ParamStr(i)) = '-d' then
      if ParamCount >= i+1 then
        Begin
          ora_db_path := AnsiLowerCase(ParamStr(i+1));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Отдел
    if LowerCase(ParamStr(i)) = '-otd' then
      if ParamCount >= i+1 then
        Begin
          DeptID := StrToInt(AnsiLowerCase(ParamStr(i+1)));
        End
    else
      Begin
        ShowMessage('Ошибка параметров!');
        Exit;
      End;

    // Редактирование
    if LowerCase(ParamStr(i)) = '-e' then edit := true;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete := true;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print := true;
    // Дополнительно
    if LowerCase(ParamStr(i)) = '-a' then addit := true;
  end;

  Application.Initialize;
  Application.Title := 'Заказы и бронирование';


  Application.CreateForm(Tfirst_dialog_frm, first_dialog_frm);
  first_dialog_frm.edit := edit;
  first_dialog_frm.delete := delete;
  first_dialog_frm.print := print;
  first_dialog_frm.addit := addit;

  Application.CreateForm(TDM, DM);
  DM.Main_session.Username := username;
  DM.Main_session.Password := Password;
  DM.Main_session.Server := ora_db_path;
  DM.DeptID := DeptID;
  DM.Main_session.Connect;

  Application.Run;
end.
