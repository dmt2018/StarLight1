unit PI_Library;

{***********************************************************
 *   Библиотека написана Клеповым Александром              *
 *   Москва 2009 г.                                        *
 ***********************************************************}

interface

uses StdCtrls, Classes, Variants, Ora, SysUtils, Graphics, OraError, Dialogs,
     CheckLst, windows, ComCtrls, DB, cxImageComboBox, DBGrids, cxBarEditItem, DBCtrlsEh,
     cxGridDBTableView, cxCustomData, cxCheckComboBox;

type
  PFixedFileInfo = ^TFixedFileInfo;
  TFixedFileInfo = record
     dwSignature       : DWORD;
     dwStrucVersion    : DWORD;
     wFileVersionMS    : WORD;  // Minor Version
     wFileVersionLS    : WORD;  // Major Version
     wProductVersionMS : WORD;  // Build Number
     wProductVersionLS : WORD;  // Release Version
     dwFileFlagsMask   : DWORD;
     dwFileFlags       : DWORD;
     dwFileOS          : DWORD;
     dwFileType        : DWORD;
     dwFileSubtype     : DWORD;
     dwFileDateMS      : DWORD;
     dwFileDateLS      : DWORD;
  end; // TFixedFileInfo
type
 PTOKEN_USER = ^TOKEN_USER;
 _TOKEN_USER = record
   User : TSidAndAttributes;
 end;
 TOKEN_USER = _TOKEN_USER;



function FillImgComboCx(TheQuery : TOraQuery; TheCombo : TCxImageComboBox; BeginStr : String) : boolean;
function FillImgComboCxItm(TheQuery : TOraQuery; TheCombo : TCxBarEditItem; BeginStr : String) : boolean;

//функция FillComboEh написана Клёповым А.В.
function FillComboEh(TheQuery : TOraQuery; TheCombo : TDBComboBoxEh; TheSql : String) : boolean;
function FillChComboCx(TheQuery : TOraQuery; TheCombo : TCxCheckComboBox; BeginStr : String) : boolean;
function FillComboOlmer(TheQuery : TOraQuery; TheCombo : TDBComboBoxEh; BeginStr : String) : boolean;
procedure MakeSortForPrint(cds : TOraQuery; grid : TcxGridDBTableView);


function FillListBox(TheQuery : TOraQuery; TheListBox : TListBox; TheList : TList; TheSql : String) : boolean;
procedure CheckListBox(IDList : TList; CheckedList : TList; CheckListBox : TCheckListBox);
function  StrToVar(Str : String) : Variant;
function  StrToVarInt(Str : String) : Variant;
function  StrToVarFloat(Str : String) : Variant;
function  VarToStr(VarVar : Variant) : String;
function  VarToInt(VarVar : Variant) : Integer;
function BoolToInt(inp : boolean) : integer;
function CharToBool(value : String) : boolean;
function EditIsNotEmpty(Ed : TEdit) : boolean;
function OpenConnection(Conn : TOraSession) : boolean;
procedure ListToStr (TheList : TList; OUT TheString : String);
function SysExec(start_line : String; start_dir : String) : boolean;
function IsThereAnotherApp(AppExe : String) : boolean;
procedure ReactivateOraQuery(Que : TOraQuery);
procedure ClickOnListedID (InList : TList; InID : Integer);
procedure CheckTEditContentFloat(Sender: TObject; ColNormal : TColor; ColAlert : TColor);
function StringListToStr (TheList : TStrings) : WideString;
procedure CheckAllInt(TheList : TList; TheIdFieldName : String; TheQuery : TOraQuery; TheGrid : TDBGrid);
function CutSpaces(str : string) : string;


function EditRusName(StorProc: TOraStoredProc; cds: TOraQuery; in_fn_id: integer; in_f_name_ru: string; in_id_dep: integer) : integer;
function EditTransName(StorProc: TOraStoredProc; cds: TOraQuery; in_fnt_id: integer; in_f_name: string; in_id_dep: integer; in_fn_id: integer; in_codename: string; in_remarks: string) : integer;
//
// Достанем ID офиса
//
function GetOfficeID : integer;


// Версия файла
  function FileInfo( const FileName : String ) : TFixedFileInfo;
// Информация о файле
  function GetFileInformation( const FileName, Value : String ): String;
// Получения имени пользователя и домена под которым работает текущий поток или процесс
  function GetCurrentUserAndDomain (szUser : PChar; var chUser: DWORD; szDomain :PChar; var chDomain : DWORD ):Boolean;

{
  const fr01cm: Extended = 3.77953;
  const fr1cm: Extended = 37.7953;
  const fr01in: Extended = 9.6;
  const fr1in: Integer = 96;
  const fr1CharX: Extended = 9.6;
  const fr1CharY: Integer = 17;
}
const RussianMonthsNames: array[1..12] of String =  //Просто массив русских названий месяцев
('Январь',
 'Февраль',
 'Март',
 'Апрель',
 'Май',
 'Июнь',
 'Июль',
 'Август',
 'Сентябрь',
 'Октябрь',
 'Ноябрь',
 'Декабрь');

const RussianWeekDays: array[1..7,0..1] of String =  //Просто массив русских названий дней недели
(('Понедельник','пн'),
 ('Вторник','вт'),
 ('Среда','ср'),
 ('Четверг','чт'),
 ('Пятница','пт'),
 ('Суббота','сб'),
 ('Воскресенье','вс'));


var
  err_msg: string;
  err_code: integer;

implementation

//
// Достанем ID офиса
//
function GetOfficeID : integer;
var StorProc: TOraQuery;
begin
  StorProc := TOraQuery.Create(nil);
  try
    StorProc.SQL.Add('select CONST_OFFICE as idd from dual');
    StorProc.Open;
    Result := StorProc.Fields[0].AsInteger;
  finally
    StorProc.Free;
  end;
end;




//
// Добавление русского названия
//
function EditRusName(StorProc: TOraStoredProc; cds: TOraQuery; in_fn_id: integer; in_f_name_ru: string; in_id_dep: integer) : integer;
begin
  with StorProc do
  begin
//    Params.Clear;
    StoredProcName := 'CREATOR.NOMENCLATURE2_PKG.edit_rus_tovar_name';
    Prepare;
    ParamByName('IN_ID').AsInteger             := in_fn_id;
    ParamByName('IN_F_NAME_RU').AsString       := in_f_name_ru;
    ParamByName('IN_ID_DEPARTMENTS').AsInteger := in_id_dep;
    ParamByName('out_code').AsInteger          := err_code;
    ParamByName('out_errmsg').AsString         := err_msg;
    Execute;
    err_code := ParamByName('out_code').AsInteger;
    err_msg  := ParamByName('out_errmsg').AsString;
    if (err_code = 1) then
    begin
      MessageBox(0, PChar(err_msg), 'Внимание', MB_ICONINFORMATION);
      cds.RefreshRecord;
    end;
    if (err_code = -1) then
    begin
      MessageBox(0, PChar(err_msg), 'Внимание', MB_ICONERROR);
      cds.RefreshRecord;
    end;
    result := ParamByName('IN_ID').AsInteger;
  end;
end;

//
// Добавление названия поставщика
//
function EditTransName(StorProc: TOraStoredProc; cds: TOraQuery; in_fnt_id: integer; in_f_name: string; in_id_dep: integer; in_fn_id: integer; in_codename: string; in_remarks: string) : integer;
begin
  with StorProc do
  begin
//    Params.Clear;
    StoredProcName := 'CREATOR.NOMENCLATURE2_PKG.edit_eng_tovar_name';
    Prepare;
    ParamByName('IN_ID').AsInteger             := in_fnt_id;
    ParamByName('IN_F_NAME').AsString          := in_f_name;
    ParamByName('IN_ID_DEPARTMENTS').AsInteger := in_id_dep;
    ParamByName('IN_FN_ID').AsInteger          := in_fn_id;
    ParamByName('IN_CODENAME').AsString        := in_codename;
    ParamByName('IN_REMARKS').AsString         := in_remarks;
    ParamByName('out_code').AsInteger          := err_code;
    ParamByName('out_errmsg').AsString         := err_msg;
    Execute;
    err_code := ParamByName('out_code').AsInteger;
    err_msg  := ParamByName('out_errmsg').AsString;
    if (err_code = 1) then
    begin
      MessageBox(0, PChar(err_msg), 'Внимание', MB_ICONINFORMATION);
      cds.RefreshRecord;
    end;
    if (err_code = -1) then
    begin
      MessageBox(0, PChar(err_msg), 'Внимание', MB_ICONERROR);
      cds.RefreshRecord;
    end;
    result := ParamByName('IN_ID').AsInteger;
  end;
end;



function CutSpaces(str : string) : string;
var
  buf : string;
  position : integer;
begin
  {Сначала удалим пробелы из начала строки,}
//  while (pos(' ', str) = 1) and (length(str) > 0) do
//    delete(str, 1, 1);
  {затем из конца,}
//  while (pos(' ', str) = length(str)) and (length(str) > 0) do
//    delete(buf, length(str), 1);
  {а потом и лишние пробелы между словами}
  if str <> '' then
  begin
  buf := ''; position := 1;
  while position <> 0 do
  begin
    position := pos(' ', str);
    while str[position + 1] = ' ' do
      delete(str, position, 1);

    buf := buf + copy(str, 1, position);
    delete(str, 1, position);
  end;
  buf := buf + str;
  //str   := buf;
  end else CutSpaces := '';
  CutSpaces := buf;
end;


function FillImgComboCx(TheQuery : TOraQuery; TheCombo : TCxImageComboBox; BeginStr : String) : boolean;
{********************************************************************************
 * Функция предназначена для заполнения комбо-бокса значениями                  *
 * А также для запоминания ID каждого значения компонента DevExpress            *
 * TheQuery - TQuery с набором данных                                           *
 * TheCombo - комбо-бокс для значений                                           *
 * BeginStr - начальная строка в списке с ID=0, если NULL то нет первой строки  *
 * первый столбик TheQuery содержит ID , а второй - значение.                   *
 ********************************************************************************}
var cbep: TcxImageComboBoxProperties;
    itm: TcxImageComboBoxItem;
Begin
  try
    TheQuery.First;
//    TheCombo.Properties.Items.Clear;

    cbep := (TheCombo.Properties as TcxImageComboBoxProperties);
    cbep.Items.Clear;

    if Length(BeginStr) > 0 then
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= BeginStr;
     	itm.Value			  := 0;
    end;

    while not TheQuery.Eof do
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= TheQuery.Fields[1].AsString;
     	itm.Value			  := TheQuery.Fields[0].AsString;
      if TheQuery.Fields.Count = 3 then
       	itm.Tag			  := TheQuery.Fields[2].AsInteger;
 	    TheQuery.Next;
    end;

    TheQuery.First;
    
    FillImgComboCx := true;
  except
    FillImgComboCx := false;
  End;
End;


function FillChComboCx(TheQuery : TOraQuery; TheCombo : TCxCheckComboBox; BeginStr : String) : boolean;
{********************************************************************************
 * Функция предназначена для заполнения комбо-бокса значениями                  *
 * А также для запоминания ID каждого значения компонента DevExpress            *
 * TheQuery - TQuery с набором данных                                           *
 * TheCombo - комбо-бокс для значений                                           *
 * BeginStr - начальная строка в списке с ID=0, если NULL то нет первой строки  *
 * первый столбик TheQuery содержит ID , а второй - значение.                   *
 ********************************************************************************}
var cbep: TcxCheckComboBoxProperties;
    itm: TcxCheckComboBoxItem;
Begin
  try
    TheQuery.First;
//    TheCombo.Properties.Items.Clear;

    cbep := (TheCombo.Properties as TcxCheckComboBoxProperties);
    cbep.Items.Clear;

    if Length(BeginStr) > 0 then
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= BeginStr;
     	itm.Tag			    := 0;
    end;

    while not TheQuery.Eof do
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= TheQuery.Fields[1].AsString;
     	itm.Tag			    := TheQuery.Fields[0].AsInteger;
 	    TheQuery.Next;
    end;

    TheQuery.First;
    
    FillChComboCx := true;
  except
    FillChComboCx := false;
  End;
End;



//
//  Проца для сортировки датасета при печати списка по гриду (DevExpress)
//
//  Для работы алгоритма необходимо, чтобы значение AlternateCaption у колонок грида было заполнено и = FieldName
//  пример кода в билдере (    MakeSortForPrint(TOraQuery(grid_spisView.DataController.DataSet),grid_spisView); )
//
procedure MakeSortForPrint(cds : TOraQuery; grid : TcxGridDBTableView);
var i: integer;
    str: string;
begin
  str := '';
  for i:= 0 to grid.SortedItemCount-1 do
  begin
    if (grid.SortedItems[i].Visible = true) and (grid.SortedItems[i].SortIndex > -1) then
      if (grid.SortedItems[i].SortOrder = soDescending) then
        str := str + grid.SortedItems[i].DataBinding.FilterFieldName + ' DESC;'
      else
        str := str + grid.SortedItems[i].DataBinding.FilterFieldName + ';';
  end;
  if (str <> '') then
      str := copy(str,0,length(str)-1);
  cds.IndexFieldNames := str;
end;



function FillComboOlmer(TheQuery : TOraQuery; TheCombo : TDBComboBoxEh; BeginStr : String) : boolean;
{********************************************************************************
 * Функция предназначена для заполнения комбо-бокса значениями                  *
 * А также для запоминания ID каждого значения компонента EhLib                 *
 * TheQuery - TQuery с набором данных                                           *
 * TheCombo - комбо-бокс для значений                                           *
 * BeginStr - начальная строка в списке с ID=0, если NULL то нет первой строки  *
 * первый столбик TheQuery содержит ID , а второй - значение.                   *
 ********************************************************************************}
Begin
  try
    TheQuery.First;
    TheCombo.Items.Clear;
    TheCombo.KeyItems.Clear;
    if Length(BeginStr) > 0 then
    begin
        TheCombo.KeyItems.Add('0');
        TheCombo.Items.Add(BeginStr);
    end;
    while not TheQuery.Eof do
      Begin
        TheCombo.KeyItems.Add(TheQuery.Fields[0].AsString);
        TheCombo.Items.Add(TheQuery.Fields[1].AsString);
        TheQuery.Next;
      End;
    TheCombo.ItemIndex := 0;
    TheQuery.First;
    FillComboOlmer := true;
  except
    FillComboOlmer := false;
  End;
End;



function FillComboEh(TheQuery : TOraQuery; TheCombo : TDBComboBoxEh; TheSql : String) : boolean;
{***************************************************************
 * Функция предназначена для заполнения комбо-бокса значениями *
 * А также для запоминания ID каждого значения компонента EhLib*
 * TheQuery - TQuery для обращени к БД                         *
 * TheCombo - комбо-бокс для значений                          *
 *                             *
 * TheSql - SQL выражение которое должно содержать селект,     *
 * первый столбик которого содержит ID , а второй - значение.  *
 ***************************************************************}
Begin
  try
    with TheQuery do
      Begin
        Close;
        SQL.Clear;
        SQL.Add(TheSql);
        Open;
      End;
    TheCombo.Items.Clear;
    TheCombo.KeyItems.Clear;
    while not TheQuery.Eof do
      Begin
        TheCombo.KeyItems.Add(TheQuery.Fields[0].AsString);
        TheCombo.Items.Add(TheQuery.Fields[1].AsString);
        TheQuery.Next;
      End;
    TheQuery.Close;
    TheCombo.ItemIndex := 0;
    FillComboEh := true;
  except
    FillComboEh := false;
  End;
End;


function FillImgComboCxItm(TheQuery : TOraQuery; TheCombo : TCxBarEditItem; BeginStr : String) : boolean;
{********************************************************************************
 * Функция предназначена для заполнения комбо-бокса значениями                  *
 * А также для запоминания ID каждого значения компонента DevExpress            *
 * TheQuery - TQuery с набором данных                                           *
 * TheCombo - комбо-бокс для значений                                           *
 * BeginStr - начальная строка в списке с ID=0, если NULL то нет первой строки  *
 * первый столбик TheQuery содержит ID , а второй - значение.                   *
 ********************************************************************************}
var cbep: TcxImageComboBoxProperties;
    itm: TcxImageComboBoxItem;
Begin
  try
    TheQuery.First;
//    TheCombo.Properties.Items.Clear;

    cbep := (TheCombo.Properties as TcxImageComboBoxProperties);
    cbep.Items.Clear;

    if Length(BeginStr) > 0 then
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= BeginStr;
     	itm.Value			  := 0;
    end;

    while not TheQuery.Eof do
    begin
     	itm             := cbep.Items.Add;
   		itm.Description	:= TheQuery.Fields[1].AsString;
     	itm.Value			  := TheQuery.Fields[0].AsString;
 	    TheQuery.Next;
    end;

    TheQuery.First;
    
    FillImgComboCxItm := true;
  except
    FillImgComboCxItm := false;
  End;
End;


function FillListBox(TheQuery : TOraQuery; TheListBox : TListBox; TheList : TList; TheSql : String) : boolean;
{***************************************************************
 * Функция предназначена для заполнения лист-бокса значениями  *
 * А также для запоминания ID каждого значения                 *
 * TheQuery - TQuery для обращени к БД                         *
 * TheListBox - комбо-бокс для значений                        *
 * TheList - лист для хранения ID                              *
 * TheSql - SQL выражение которое должно содержать селект,     *
 * первый столбик которого содержит ID , а второй - значение.  *
 ***************************************************************}
Begin
  try
    with TheQuery do
      Begin
        Close;
        SQL.Clear;
        SQL.Add(TheSql);
        Open;
      End;
    TheList.Clear;
    TheListBox.Items.Clear;
    while not TheQuery.Eof do
      Begin
        TheList.Add(Pointer(TheQuery.Fields[0].AsInteger));
        TheListBox.Items.Add(TheQuery.Fields[1].AsString);
        TheQuery.Next;
      End;
    TheQuery.Close;
    TheListBox.ItemIndex := 0;
    FillListBox := true;
  except
    FillListBox := false;
  End;
End;

procedure CheckListBox(IDList : TList; CheckedList : TList; CheckListBox : TCheckListBox);
{***************************************************************
 * Функция предназначена для заполнения ЧекЛистБокса галочками *
 * IDList - Лист ID                                            *
 * CheckedList - лист отмеченных ID                            *
 * CheckListBox - компонент                                    *
 ***************************************************************}
VAR
  i,CheckedIndex : integer;
  pID : Pointer;
Begin
  For i := 0 to CheckListBox.Items.Count - 1 do
    Begin
      pID := IDList[i];
      CheckedIndex := CheckedList.IndexOf(pID);
      if CheckedIndex = -1 then CheckListBox.Checked[i] := false
                           else CheckListBox.Checked[i] := true;
    End;
End;

procedure ListToStr (TheList : TList; OUT TheString : String);
{***************************************************************
 * Функция предназначена для превращения списка в строку       *
 * с разделителеми запятой                                     *
 * TheList - Лист                                              *
 * TheString - строка                                          *
 ***************************************************************}
VAR
i : integer;
Begin
  TheString := '';
  for i := 0 to TheList.Count -1 do
    Begin
      TheString := TheString + IntToStr(Integer(TheList[i]));
      if i < (TheList.Count -1) then TheString := TheString + ',';
    End;
End;

function  StrToVar(Str : String) : Variant;
Begin
  if Str = '' then StrToVar := NULL
              else StrToVar := Str;
End;

function  StrToVarInt(Str : String) : Variant;
Begin
  try
    if ( trim(Str) = '' ) then result := 0
    else result := StrToInt(Str);
  except
    result := NULL;
  end;
End;

function  StrToVarFloat(Str : String) : Variant;
{***************************************************************
 * Функция предназначена для превращения string в variant      *
 * по возможности в Float = типа                               *
 ***************************************************************}
Begin
  try
    if ( trim(Str) = '' ) then result := 0
    else result := StrToFloat(Str);
  except
    result := NULL;
  end;
End;

function  VarToStr(VarVar : Variant) : String;
{***************************************************************
 * Функция предназначена для преобразования                    *
 * переменной типа Variant в строчку                           *
 ***************************************************************}
VAR
  VT : TVarType;
Begin
  VT := VarType(VarVar);
  case VT of
    varEmpty,varNull	: VarToStr := '';
    varString : VarToStr := VarVar;
    varInteger,varSmallint : VarToStr := IntToStr(VarVar);
    varSingle,varDouble	: VarToStr := FloatToStr(VarVar);
    varDate : VarToStr := DateToStr(VarVar);
  End;
End;

function  VarToInt(VarVar : Variant) : Integer;
{***************************************************************
 * Функция предназначена для преобразования                    *
 * переменной типа Variant в integer                           *
 * в случае невозможности преобразования результат -1          * 
 ***************************************************************}
VAR
  VT : TVarType;
Begin
  VT := VarType(VarVar);
  case VT of
    varEmpty,varNull	: VarToInt := -1;
    varString : try
                  VarToInt := StrToInt(VarVar);
                except
                  VarToInt := -1
                end;
    varInteger,varSmallint : VarToInt := VarVar;
    varSingle,varDouble	: VarToInt := Trunc(VarVar);
  End;
End;


function BoolToInt(inp : boolean) : integer;
Begin
  if inp then BoolToInt := 1
         else BoolToInt := 0;
End;

function CharToBool(value : string) : boolean;
Begin
  if (value = '1') then CharToBool := true
         else CharToBool := false;
End;


function EditIsNotEmpty(Ed : TEdit) : boolean;
VAR
  tmp_str : string;
Begin
  tmp_str := trim(Ed.text);
  if tmp_str = '' then
    Begin
      Ed.Clear;
      Ed.Color := clRed;
      EditIsNotEmpty := false;
    End
  else
    Begin
      EditIsNotEmpty := true;
    End;
End;

function OpenConnection(Conn : TOraSession) : boolean;
{***************************************************************
 * Функция предназначена для соединения с БД и для вывода      *
 * сообщений об ошибках                                        *
 * Conn - TOraSession которую хотим подключить                 *
 ***************************************************************}
Begin
  try
    OpenConnection := True;
    Conn.Connect;
    Conn.StartTransaction;
  except
    on E: EOraError do
      Begin
        if E.ErrorCode = 01017 then ShowMessage('Неправильный Логин/пароль!' + #13 + E.Message);
        if E.ErrorCode = 28000 then ShowMessage('Пользователь заблокирован!' + #13 + E.Message);
        if E.ErrorCode = 01005 then ShowMessage('А пароль?' + #13 + E.Message);
        if E.ErrorCode = 1 then ShowMessage('Неправильный путь к БД!' + #13 + E.Message);
        OpenConnection := False;
      End;
    else
      Begin
        OpenConnection := False;
        ShowMessage('Ошибка!');
      End;
  end;
End;

function SysExec(start_line : String; start_dir : String) : boolean;
{*****************************************************************
 * Функция предназначена для облегчения запуска внешних программ *
 * start_line - приложение + параметры                           *
 * start_dir - стартовая директория                              *
 *****************************************************************}
VAR
  pr_si : STARTUPINFO;
  pr_pi : PROCESS_INFORMATION;
begin

  ZeroMemory(@pr_si,sizeof(pr_si));
  pr_si.cb := SizeOf(pr_si);
  start_line := 'notepad help.txt';
  pr_si.cb := SizeOf(pr_si);
  SysExec := CreateProcess( nil, // No module name (use command line).
                            PChar(start_line),  // Command line.
                            nil,                // Process handle not inheritable.
                            nil,                // Thread handle not inheritable.
                            False,              // Set handle inheritance to FALSE.
                            0,                  // No creation flags.
                            nil,                // Use parent's environment block.
                            PChar('./help'),    // Use starting directory.
                            pr_si,              // Pointer to STARTUPINFO structure.
                            pr_pi )             // Pointer to PROCESS_INFORMATION structure.
end;

function IsThereAnotherApp(AppExe : String) : boolean;
var
  CCMapping:THandle;
Begin
  CCMapping := CreateFileMapping($ffffffff,nil,PAGE_READONLY,0,32,PChar(AppExe));
  result := true;
  if CCMapping=0 then
    begin
      ShowMessage('Ошибка выделения памяти!');
      exit;
    end
  else if GetLastError=ERROR_ALREADY_EXISTS then
    begin
      exit;
    end;
  result := false;
End;

procedure ReactivateOraQuery(Que : TOraQuery);
Begin
  with Que do
    if active then refresh
              else Open;
end;

procedure ClickOnListedID (InList : TList; InID : Integer);
{*****************************************************************
 * Функция включает / исключает ID из списка руководствуясь      *
 * его присутствием в списке                                     *
 *****************************************************************}
VAR
  ind : integer;
Begin
  ind := InList.IndexOf(Pointer(InID));
  if ind <> -1 then InList.Delete(ind)
               else InList.Add(Pointer(InID));
End;

procedure CheckTEditContentFloat(Sender: TObject; ColNormal : TColor; ColAlert : TColor);
{*****************************************************************
 * функция проверяет введённое значение на соответствие типу     *
 * float, и красит его в один из цветов в зависимости от рез.    *
 *****************************************************************}
Begin
  if Sender.ClassName <> 'TEdit' then exit;
  with TEdit(Sender) do
    Begin
      if Text = '' then Color := ColNormal
      else
        try
          StrToFloat(Text);
          Color := ColNormal;
        except
          Color := ColAlert;
        end;
    End;
End;

function StringListToStr (TheList : TStrings) : WideString;
{***************************************************************
 * Функция предназначена для превращения TStrings в строку  *
 * с разделителеми запятой                                     *
 * TheList - Лист                                              *
 ***************************************************************}
VAR
i : integer;
Begin
  result := '';
  for i := 0 to TheList.Count -1 do
    Begin
      result := result + '''' + TheList[i] + '''';
      if i < (TheList.Count -1) then result := result + ',';
    End;
End;

procedure CheckAllInt(TheList : TList; TheIdFieldName : String; TheQuery : TOraQuery; TheGrid : TDBGrid);
{***************************************************************
 * Функция предназначена для наполнения TheList значениями поля*
 * TheIdFieldName из TheQuery                                  *
 ***************************************************************}
Var
  SavePlace : TBookmark;
  THE_ID : Integer;
begin
  TheGrid.Hide;
  With TheQuery do
    Begin
      SavePlace := GetBookmark;
      first;
      TheList.Clear;
      while not eof do
        Begin
          THE_ID := FieldByName(TheIdFieldName).Value;
          TheList.Add(Pointer(THE_ID));
          Next;
        End;
      GotoBookmark(SavePlace);
      FreeBookmark(SavePlace);
    End;
  TheGrid.Show;
End;



//// Версия файла FIXEDFILEINFO
function FileInfo( const FileName :String ) : TFixedFileInfo;
var
  dwHandle, dwVersionSize : DWORD;
  strSubBlock             : String;
  pTemp                   : Pointer;
  pData                   : Pointer;
begin
   strSubBlock := '\';

   // get version information values
   dwVersionSize := GetFileVersionInfoSize( PChar( FileName ), // pointer to filename string
                                            dwHandle );        // pointer to variable to receive zero

   // if GetFileVersionInfoSize is successful
   if dwVersionSize <> 0 then
   begin
      GetMem( pTemp, dwVersionSize );
      try
         if GetFileVersionInfo( PChar( FileName ),             // pointer to filename string
                                dwHandle,                      // ignored
                                dwVersionSize,                 // size of buffer
                                pTemp ) then                   // pointer to buffer to receive file-version info.

            if VerQueryValue( pTemp,                           // pBlock     - address of buffer for version resource
                              PChar( strSubBlock ),            // lpSubBlock - address of value to retrieve
                              pData,                           // lplpBuffer - address of buffer for version pointer
                              dwVersionSize ) then             // puLen      - address of version-value length buffer
               Result := PFixedFileInfo( pData )^;
      finally
         FreeMem( pTemp );
      end; // try
   end; // if dwVersionSize
end;

function GetFileInformation( const FileName, Value : String ): String;
var
  dwHandle, dwVersionSize   : DWORD;
  strLangCharSetInfoString  : String;
  pcBuffer                  : PChar;
  pTemp                     : Pointer;
begin
   strLangCharSetInfoString := '\StringFileInfo\040904E4\' + Value;
   // get version information values
   dwVersionSize := GetFileVersionInfoSize( PChar( FileName ),   // pointer to filename string
                                            dwHandle );          // pointer to variable to receive zero
   // if GetFileVersionInfoSize is successful
   if dwVersionSize <> 0 then
   begin
      GetMem( pcBuffer, dwVersionSize );
      try
         if GetFileVersionInfo( PChar( FileName ),               // pointer to filename string
                                dwHandle,                        // ignored
                                dwVersionSize,                   // size of buffer
                                pcBuffer ) then                  // pointer to buffer to receive file-version info.

            if VerQueryValue( pcBuffer,                          // pBlock     - address of buffer for version resource
                              PChar( strLangCharSetInfoString ), // lpSubBlock - address of value to retrieve
                              pTemp,                             // lplpBuffer - address of buffer for version pointer
                              dwVersionSize ) then               // puLen      - address of version-value length buffer

               Result := PChar( pTemp );
      finally
         FreeMem( pcBuffer );
      end; // try
   end;// if dwVersionSize
end; // GetFileInformation

// Получения имени пользователя и домена под которым работает текущий поток или процесс
function GetCurrentUserAndDomain (szUser : PChar; var chUser: DWORD; szDomain :PChar; var chDomain : DWORD ):Boolean;
var
 hToken : THandle;
 cbBuf  : Cardinal;
 ptiUser : PTOKEN_USER;
 snu    : SID_NAME_USE;
begin
  Result:=false;
  // Получаем маркер доступа текущего потока нашего процесса
  if not OpenThreadToken(GetCurrentThread(),TOKEN_QUERY,true,hToken) then
  begin
    if GetLastError() <> ERROR_NO_TOKEN then exit;
    // В случее ошибки - получаем маркер доступа нашего процесса.
    if not OpenProcessToken(GetCurrentProcess(),TOKEN_QUERY,hToken)
     then exit;
  end;

  // Вызываем GetTokenInformation для получения размера буфера
  if not GetTokenInformation(hToken, TokenUser, nil, 0, cbBuf) then
     if GetLastError()<> ERROR_INSUFFICIENT_BUFFER then
     begin
       CloseHandle(hToken);
       Exit;
     end;

  if cbBuf = 0 then exit;

  // Выделяем память под буфер
  GetMem(ptiUser,cbBuf);

  // В случае удачного вызова получим указатель на TOKEN_USER
  if GetTokenInformation(hToken,TokenUser,ptiUser,cbBuf,cbBuf) then
  begin
   // Ищем имя пользователя и его домен по его SID
   if LookupAccountSid(nil,ptiUser.User.Sid,szUser,chUser,szDomain,chDomain,snu)
    then Result:=true;
  end;

  // Освобождаем ресурсы
  CloseHandle(hToken);
  FreeMem(ptiUser);
end;


end.
