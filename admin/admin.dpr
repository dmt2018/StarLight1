program admin;

uses
  Forms,
  Windows,
  SysUtils,
  Dialogs,
  Classes,
  main_form in 'main_form.pas' {Main},
  logins_f in 'logins_f.pas' {logins},
  DataM in 'DataM.pas' {DM: TDataModule},
  editor_f in 'editor_f.pas' {editor},
  pr_edit_f in 'pr_edit_f.pas' {pr_editor},
  UClientsByRole in 'UClientsByRole.pas' {frmClientsByRole},
  UDebPermission in 'UDebPermission.pas' {frmDebPermission};

{$R *.res}
VAR
  i, print, delete, edit, dop: Integer;
  ora_db_path : string;
  username, password: string;
begin
  if ParamCount < 4 then Exit;
  Username := '0';
  Password := '0';
  Edit := 0;
  Delete := 0;
  Print := 0;
  Dop := 0;

  for i := 1 to ParamCount do
  begin
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

    // Редактирование
    if LowerCase(ParamStr(i)) = '-e' then edit := 1;
    // Удаление
    if LowerCase(ParamStr(i)) = '-k' then delete := 1;
    // Печать
    if LowerCase(ParamStr(i)) = '-t' then print := 1;
    // Дополнительно
    if LowerCase(ParamStr(i)) = '-a' then dop := 1;

  end;
  
  Application.Initialize;
  Application.Title := 'Администрирование';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(Tlogins, logins);
  Application.CreateForm(Teditor, editor);
  Application.CreateForm(Tpr_editor, pr_editor);
  Application.CreateForm(TDM, DM);
  //Main.creator := creator;

  DM.OraSession1.Username := username;
  DM.OraSession1.Password := Password;
  DM.OraSession1.Server := ora_db_path;
  DM.OraSession1.Connect;


  if dop = 0 then main.PageControl1.Pages[3].Enabled := false
  else main.PageControl1.Pages[3].Enabled := true;

  if delete = 0 then
  begin
    main.BitBtn12.Enabled := false;
    main.BitBtn19.Enabled := false;
    main.BitBtn6.Enabled := false;
    main.BitBtn9.Enabled := false;
    main.BitBtn1.Enabled := false;
    main.BitBtn16.Enabled := false;
  end
  else
  begin
    main.BitBtn12.Enabled := true;
    main.BitBtn19.Enabled := true;
    main.BitBtn6.Enabled := true;
    main.BitBtn9.Enabled := true;
    main.BitBtn1.Enabled := true;
    main.BitBtn16.Enabled := true;
  end;

  if edit = 0 then
  begin
    main.BitBtn2.Enabled := false;
    main.BitBtn10.Enabled := false;
    main.BitBtn14.Enabled := false;
    main.BitBtn4.Enabled := false;
    main.BitBtn5.Enabled := false;
    main.BitBtn7.Enabled := false;
    main.BitBtn8.Enabled := false;
    main.BitBtn3.Enabled := false;
    main.BitBtn11.Enabled := false;
    main.BitBtn17.Enabled := false;
  end
  else
  begin
    main.BitBtn2.Enabled := true;
    main.BitBtn10.Enabled := true;
    main.BitBtn14.Enabled := true;
    main.BitBtn4.Enabled := true;
    main.BitBtn5.Enabled := true;
    main.BitBtn7.Enabled := true;
    main.BitBtn8.Enabled := true;
    main.BitBtn3.Enabled := true;
    main.BitBtn11.Enabled := true;
    main.BitBtn17.Enabled := true;
  end;

  Application.Run;
end.

