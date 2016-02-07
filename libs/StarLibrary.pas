unit StarLibrary;

{***********************************************************
 *   Библиотека написана Демидовым Игорем Вячеславовичем   *
 *   Москва 2005-2006г.                                         *
 ***********************************************************}

interface
uses
SysUtils,Dialogs,Variants;

procedure CheckStarParams(out ed : boolean; out del : boolean; out pr : boolean; out add : boolean; out Username : string;out Password : string;out ora_db_path : string; out DeptID : Variant);

implementation

procedure CheckStarParams(out ed : boolean; out del : boolean; out pr : boolean; out add : boolean; out Username : string;out Password : string;out ora_db_path : string; out DeptID : Variant);
VAR i : integer;
Begin
  ed     := false;
  del    := false;
  pr     := false;
  add    := false;
  DeptID := null;

  if ParamCount < 8 then Exit;

  Username := '0';
  Password := '0';

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

    if LowerCase(ParamStr(i)) = '-e' then ed  := true;
    if LowerCase(ParamStr(i)) = '-k' then del := true;
    if LowerCase(ParamStr(i)) = '-t' then pr  := true;
    if LowerCase(ParamStr(i)) = '-a' then add := true;
  end;
End;

end.
 