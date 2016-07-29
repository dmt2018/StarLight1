unit star_lib;

interface

uses StdCtrls,Classes,Variants,SysUtils,Graphics,Dialogs, Ora, Forms, IniFiles,
     CheckLst,windows,ComCtrls, DB, DBGrids, cxImageComboBox, cxBarEditItem,
     cxCustomData, Clipbrd, cxDBData, cxGridLevel, cxGridCustomView, cxGridDBBandedTableView,
     cxGridTableView, cxGridDBDataDefinitions, Shellapi;

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

// Достанем ID офиса
  function GetOfficeID : integer;
// Копирование данных ячейки футера в клипборд
  procedure PoolToClipbaord(vControl: TcxGridDBDataController; vParam: integer = 0);
// Версия файла
  function FileInfo( const FileName : String ) : TFixedFileInfo;
// Информация о файле
  function GetFileInformation( const FileName, Value : String ): String;
// Заполнение комбобокса значениями из запроса
  function FillImgComboCx(TheQuery : TOraQuery; TheCombo : TCxImageComboBox; BeginStr : String) : boolean;
  function FillImgComboCxItm(TheQuery : TOraQuery; TheCombo : TCxBarEditItem; BeginStr : String) : boolean;
// Запомнить положение форм на экране
  procedure SaveFormState(aForm: TForm);
  procedure LoadFormState(aForm: TForm);
// Для shellexecute
  procedure CheckShell(hand: Thandle; st: pchar);

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

implementation


// Копирование данных ячейки футера в клипборд
procedure PoolToClipbaord(vControl: TcxGridDBDataController; vParam: integer = 0);
var str: string;
    i: integer;
begin
//  if vParam = 1 then clipboard.SetTextBuf(PChar(gr_cashbook_v.Controller.FocusedColumn.FocusedCellViewInfo.Text));
  if vControl.RecordCount = 0 then exit;

  if vParam = 1 then clipboard.SetTextBuf(PChar(vControl.Controller.FocusedItem.FocusedCellViewInfo.Text))
  else
  begin
    for i := 0 to (vControl.Summary.FooterSummaryItems.Count-1) do
    begin
      str := str + VarToStr(vControl.Summary.FooterSummaryValues[i]) + '  ';
    end;
    clipboard.SetTextBuf(PChar(str));
  end;
end;


// Достанем ID офиса
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
    itm:  TcxImageComboBoxItem;
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
    itm:  TcxImageComboBoxItem;
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


//при закрытии форм  запоминаю координаты
 procedure SaveFormState(aForm: TForm);
    var
      ini: TIniFile;
    begin
      ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '_forms.ini'));
      with aForm do
      begin
        ini.WriteInteger(aForm.Name, 'WindowState', Integer(WindowState));
        ini.WriteInteger(aForm.Name, 'Left',   Left);
        ini.WriteInteger(aForm.Name, 'Top',    Top);
        ini.WriteInteger(aForm.Name, 'Width',  Width);
        ini.WriteInteger(aForm.Name, 'Height', Height);
      end;
      ini.Free;
    end;

 //при открытии форм запоминаю координаты
 procedure LoadFormState(aForm: TForm);
    var
      ini: TIniFile;
    begin
      ini := TIniFile.Create(ChangeFileExt(Application.ExeName, '_forms.ini'));
      with aForm do
      begin
        WindowState := TWindowState(ini.ReadInteger(aForm.Name, 'WindowState', Integer(WindowState)));
        if Integer(WindowState) = 0 then
        begin
          Left  := ini.ReadInteger(aForm.Name, 'Left',   Left);
          Top   := ini.ReadInteger(aForm.Name, 'Top',    Top);
          Width := ini.ReadInteger(aForm.Name, 'Width',  Width);
          Height:= ini.ReadInteger(aForm.Name, 'Height', Height);
        end;
      end;
      ini.Free;
 end;

 // Для shellexecute
 procedure CheckShell(hand: Thandle; st: pchar);
  begin
     ShellExecute(hand, nil, st, nil, nil, SW_RESTORE);
  end;

end.
