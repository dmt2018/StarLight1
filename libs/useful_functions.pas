unit useful_functions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons,
  CheckLst, Menus, StrUtils;

type
  // This is a very simple record we use to store data in the nodes.
  // Since the application is responsible to manage all data including the node's caption
  // this record can be considered as minimal requirement in all VT applications.
  // Extend it to whatever your application needs.
  PMyRec = ^TMyRec;
  TMyRec = record
  Number:integer;
  Caption: WideString;
  end;

type
  ArrOfInt = array of integer;

//--------------------------------------------------------------------------------


  procedure AllowOnlyNumber(var Key: Char);   //разрешение на ввод только цифр
  function explode(sPart, sInput: string): ArrOfInt;   //разбиение строки на массив по разделителю
  function Among(N: Integer; const Values: array of Integer): LongBool;  // проверка на вхождение числа в массив
  function Kopeika(Value: integer; Skp: string): string;
  function Ruble(Value: int64; Skl: string): string;
  function Propis(Value: int64): string;

implementation





function explode(sPart, sInput: string): ArrOfInt;
 begin
 if (Length(sInput)<>0) then
 begin
   while Pos(sPart, sInput) <> 0 do
    begin
     SetLength(Result, Length(Result) + 1);
     Result[Length(Result) - 1] := strtoint(Copy(sInput, 0,Pos(sPart, sInput) - 1));
     Delete(sInput, 1,Pos(sPart, sInput));
   end;
   SetLength(Result, Length(Result) + 1);
   Result[Length(Result) - 1] := strtoint(sInput);
 end;
end;





function Among(N: Integer; const Values: array of Integer): LongBool;
asm
   push ebx
   xor ebx, ebx
@@10:
   test ecx, ecx
   jl @@30
   cmp eax, [edx]
   jne @@20
   not ebx
   jmp @@30
@@20:
   add edx, 4
   dec ecx
   jmp @@10
@@30:
   mov eax, ebx
   pop ebx
end;





//Allow only Numbers for Edit---------------------------------------------------
procedure AllowOnlyNumber(var Key: Char);
begin
if  (NOT (Key in ['0'..'9',#8, #13]))
    //OR ((Key = '.') AND (POS ('.', Edit.Text) > 0)) )
    then
    begin
      Key := #0;
      MessageBeep (MB_OK);
   end;
end;
//------------------------------------------------------------------------------







function Propis(Value: int64): string;
var
  Rend: boolean;
  ValueTemp, ValueOst: int64;

  procedure Num(Value: byte);
  begin
    case Value of
      1: if Rend = true then Result := Result + 'один ' else Result := Result + 'одна ';
      2: if Rend = true then Result := Result + 'два ' else Result := Result + 'две ';
      3: Result := Result + 'три ';
      4: Result := Result + 'четыре ';
      5: Result := Result + 'п€ть ';
      6: Result := Result + 'шесть ';
      7: Result := Result + 'семь ';
      8: Result := Result + 'восемь ';
      9: Result := Result + 'дев€ть ';
      10: Result := Result + 'дес€ть ';
      11: Result := Result + 'одиннадцать ';
      12: Result := Result + 'двенадцать ';
      13: Result := Result + 'тринадцать ';
      14: Result := Result + 'четырнадцать ';
      15: Result := Result + 'п€тнадцать ';
      16: Result := Result + 'шестнадцать ';
      17: Result := Result + 'семнадцать ';
      18: Result := Result + 'восемнадцать ';
      19: Result := Result + 'дев€тнадцать ';
    end
  end;

  procedure Num10(Value: byte);
  begin
    case Value of
      2: Result := Result + 'двадцать ';
      3: Result := Result + 'тридцать ';
      4: Result := Result + 'сорок ';
      5: Result := Result + 'п€тьдес€т ';
      6: Result := Result + 'шестьдес€т ';
      7: Result := Result + 'семьдес€т ';
      8: Result := Result + 'восемьдес€т ';
      9: Result := Result + 'дев€носто ';
    end;
  end;

  procedure Num100(Value: byte);
  begin
    case Value of
      1: Result := Result + 'сто ';
      2: Result := Result + 'двести ';
      3: Result := Result + 'триста ';
      4: Result := Result + 'четыреста ';
      5: Result := Result + 'п€тьсот ';
      6: Result := Result + 'шестьсот ';
      7: Result := Result + 'семьсот ';
      8: Result := Result + 'восемьсот ';
      9: Result := Result + 'дев€тьсот ';
    end
  end;

  procedure Num00;
  begin
    Num100(ValueTemp div 100);
    ValueTemp := ValueTemp mod 100;
    if ValueTemp < 20 then Num(ValueTemp)
    else
    begin
      Num10(ValueTemp div 10);
      ValueTemp := ValueTemp mod 10;
      Num(ValueTemp);
    end;
  end;

  procedure NumMult(Mult: int64; s1, s2, s3: string);
  var ValueRes: int64;
  begin
    if Value >= Mult then
    begin
      ValueTemp := Value div Mult;
      ValueRes := ValueTemp;
      Num00;
      if ValueTemp = 1 then Result := Result + s1
      else if (ValueTemp > 1) and (ValueTemp < 5) then Result := Result + s2
      else Result := Result + s3;
      Value := Value - Mult * ValueRes;
    end;
  end;

begin
  if (Value = 0) then Result := 'ноль'
  else
  begin
    Result := '';
    Rend := true;
    NumMult(1000000000000, 'триллион ', 'триллиона ', 'триллионов ');
    NumMult(1000000000, 'миллиард ', 'миллиарда ', 'миллиардов ');
    NumMult(1000000, 'миллион ', 'миллиона ', 'миллионов ');
    Rend := false;
    NumMult(1000, 'тыс€ча ', 'тыс€чи ', 'тыс€ч ');
    Rend := true;
    ValueTemp := Value;
    Num00;
  end;
end;




procedure Fst(S: string; Var  S1: string; Var  S2: string; Var  S3: string);
var
  pos: integer;
begin
  S1 := '';
  S2 := '';
  S3 := '';

  pos := 1;

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S1 := S1 + S[pos];
    inc(pos);
  end;
  inc(pos);

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S2 := S2 + S[pos];
    inc(pos);
  end;
  inc(pos);

  while ((pos <= Length(S))and(S[pos] <> ';'))do
  begin
    S3 := S3 + S[pos];
    inc(pos);
  end;
  inc(pos);
end;





function Ruble(Value: int64; Skl: string): string;
var
  hk10, hk20: integer;
  Skl1,Skl2,Skl3: string;
begin
  Fst(Skl,Skl1,Skl2,Skl3);
  hk10 := Value mod 10;
  hk20 := Value mod 100;
  if (hk20 > 10) and (hk20 < 20) then result := result + Skl3
  else if (hk10 = 1) then result := result + Skl1
  else if (hk10 > 1) and (hk10 < 5) then result := result + Skl2
  else result := result + Skl3;
end;






function Kopeika(Value: integer; Skp: string): string;
var
  hk10, hk20: integer;
  Skp1,Skp2,Skp3: string;
begin
  Fst(Skp,Skp1,Skp2,Skp3);
  hk10 := Value mod 10;
  hk20 := Value mod 100;
  if (hk20 > 10) and (hk20 < 20) then result := result + Skp3
  else if (hk10 = 1) then result := result + Skp1
  else if (hk10 > 1) and (hk10 < 5) then result := result + Skp2
  else result := result + Skp3;
end;





end.