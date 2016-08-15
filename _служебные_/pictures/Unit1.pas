unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, DB, MemDS, DBAccess, Ora,ShellAPI,
  ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Button6: TButton;
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Connect;
    procedure start;

  end;

  type
  TMyThread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  public
  end;
  {
 type
TSearchRec = record
Time: Integer; // Время создания найденного файла
Size: Integer; // Размер найденного файла
Attr: Integer; // Атрибуты найденного файла
Name: TFileName; // Имя найденного файла
ExcludeAttr: Integer; // Исключаемые атрибуты найденного файла
FindHandle: THandle; // Указатель, необходимый для поиска
Finddata: TWin32FindData; // Структура поиска файла Winndows
end;
        }

var
  Form1: TForm1;
  MyThread: TMyThread;
implementation

{$R *.dfm}




// дата изменения файла
 function GetFileDate(FileName: string): string;
var
  FHandle: Integer;
begin
  FHandle := FileOpen(FileName, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;


  Procedure TForm1.Connect;
  var  Err: integer; nw: TNetResource;
begin
  nw.dwType := RESOURCETYPE_DISK;
  nw.lpLocalName := 'Z:';
  nw.lpRemoteName := PChar('\\Stsrz_term1\ис2');
  nw.lpProvider := nil;
  Err := WNetAddConnection2(nw, PChar('Starlight7820039'), PChar('prg_10'), 0);
  if Err <> NO_ERROR then
    begin
      ShowMessage('Не удалось подключиться...');
    end;
end;



procedure TForm1.FormShow(Sender: TObject);
begin
//ShellExecute(Handle, "open","at"," 23:00 /every:M,T,W,Th,F,S,Su "C:\123.bat"", nil, SW_SHOWNORMAL);
memo3.SetFocus;

 MyThread:=TMyThread.Create(true);
 MyThread.Priority:=tpNormal;
end;


 
procedure TForm1.start;
var
 sr:TSearchRec;
 data:string;  name:string;  mon,i:integer;
 a: array [1..5] of string;
 b: array [1..5] of string;
begin

 button6.Enabled:=false;
  //Connect;
{if  CopyFile(PChar('\\Stsrz_term1\ис2\1.txt'), PChar('C:\1.txt'), false) then
 ShowMessage('Файл успешно скопирован!')
 else ShowMessage(SysErrorMessage(GetLastError));}

  a[1]:='192.168.3.23';   b[1]:='Kazan';//казань
  a[2]:='192.168.11.23';  b[2]:='Cherepovez';//череп
  a[3]:='192.168.12.23';  b[3]:='Ufa';//уфа
  a[4]:='192.168.15.23';  b[4]:='Ebg';//ебг
  a[5]:='192.168.2.7';    b[5]:='Samara';//samara
   //a[5]:='83.242.248.139';

  try
    OraSession1.Username := 'creator';
    OraSession1.Password := '123456';
    OraSession1.Connect;
  except
    showmessage('Ошибка в соединении');
  End;

try
  OraQuery1.Close;
  OraQuery1.SQL.clear;
  OraQuery1.SQL.Add('select date_change from pictures');
  OraQuery1.open;


FOR I := 1 TO 5 DO BEGIN

//------------------------------------------------------------
  Memo3.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\61\');  // сервер

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name); // на самом деле это дата изменения а не создания
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo3.Lines.Add(sr.Name);  application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\61\'+sr.Name), PChar('\\'+a[i]+'\ис\images\61\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo3.Lines.Add(b[i]+' complete');
//------------------------------------------------------------

  Memo2.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\62\');

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name);
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo2.Lines.Add(sr.Name);   application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\62\'+sr.Name), PChar('\\'+a[i]+'\ис\images\62\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo2.Lines.Add(b[i]+' complete');
//------------------------------------------------------------

  Memo1.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\121\');

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name);
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo1.Lines.Add(sr.Name);    application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\121\'+sr.Name), PChar('\\'+a[i]+'\ис\images\121\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add(b[i]+' complete');

END;



  OraQuery1.Close;
  OraQuery1.SQL.clear;
  OraQuery1.SQL.Add('truncate table pictures');
  OraQuery1.execute;
  OraSession1.Commit;

  OraQuery1.Close;
  OraQuery1.SQL.clear;


  OraQuery1.SQL.Add('INSERT INTO pictures VALUES(:p1)');
  OraQuery1.ParamByName('p1').AsDateTime := now;//strtodatetime(data);
  OraQuery1.execute;
  OraSession1.Commit;

  OraQuery1.Close;
  caption:='**********GOTOVO**************';

except
 ShowMessage(SysErrorMessage(GetLastError));
end;

end;

procedure TMyThread.Execute;
begin
  form1.start;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
var sr:TSearchRec;     data:string;
begin
 // if abs(time - strtotime('12:22:00')) <    strtotime('00:00:02') then start;
if abs(time - strtotime('5:00:00')) <    strtotime('00:00:02') then MyThread.Execute;
end;


 {
создал таблицу в тест бд:
CREATE TABLE pictures(date_change varchar2(30) NOT NULL) TABLESPACE starlight_t
create public synonym pictures for creator.pictures
grant select, insert, update, delete on pictures to new_role
 }
procedure TForm1.Button6Click(Sender: TObject);
var
 sr:TSearchRec;
 data:string;  name:string;  mon,i:integer;
 a: array [1..5] of string;
 b: array [1..5] of string;
begin

 button6.Enabled:=false;
  //Connect;
{if  CopyFile(PChar('\\Stsrz_term1\ис2\1.txt'), PChar('C:\1.txt'), false) then
 ShowMessage('Файл успешно скопирован!')
 else ShowMessage(SysErrorMessage(GetLastError));}

  a[1]:='192.168.3.23';   b[1]:='Kazan';//казань
  a[2]:='192.168.11.23';  b[2]:='Cherepovez';//череп
  a[3]:='192.168.12.23';  b[3]:='Ufa';//уфа
  a[4]:='192.168.15.23';  b[4]:='Ebg';//ебг
  a[5]:='192.168.2.7';    b[5]:='Samara';//samara
 // a[5]:='83.242.248.139';

  try
    OraSession1.Username := 'creator';
    OraSession1.Password := '123456';
    OraSession1.Connect;
  except
    showmessage('Ошибка в соединении');
  End;

try
  OraQuery1.Close;
  OraQuery1.SQL.clear;
  OraQuery1.SQL.Add('select date_change from pictures');
  OraQuery1.open;


FOR I := 1 TO 5 DO BEGIN
//------------------------------------------------------------
  Memo3.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\61\');  // сервер

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name); // на самом деле это дата изменения а не создания
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo3.Lines.Add(sr.Name);   application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\61\'+sr.Name), PChar('\\'+a[i]+'\ис\images\61\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo3.Lines.Add(b[i]+' check');
//------------------------------------------------------------

  Memo2.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\62\');

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name);
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo2.Lines.Add(sr.Name);  application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\62\'+sr.Name), PChar('\\'+a[i]+'\ис\images\62\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo2.Lines.Add(b[i]+' check');
//------------------------------------------------------------

  Memo1.Lines.Clear;
  SetCurrentDir('\\Stsrz_term1\ис2\images\121\');

if FindFirst('*.jpg', faAnyFile , sr)=0 then
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  data:=getFileDate(sr.Name);
 if OraQuery1.FieldByName('date_change').Asdatetime <= strtodatetime(data) then  begin
  memo1.Lines.Add(sr.Name);   application.processmessages;
  CopyFile(PChar('\\Stsrz_term1\ис2\images\121\'+sr.Name), PChar('\\'+a[i]+'\ис\images\121\'+sr.Name), false);  //второй параметр - это локал.пк
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add(b[i]+' check');

END;



  OraQuery1.Close;
  OraQuery1.SQL.clear;
  OraQuery1.SQL.Add('truncate table pictures');
  OraQuery1.execute;
  OraSession1.Commit;

  OraQuery1.Close;
  OraQuery1.SQL.clear;

  //data:=copy(data,1,10);             // берем чистую дату без времени

  {mon:= strtoint(copy(data,4,2));    //month 01..12 переводим в int чтоб исп-ть case

   Case mon of
   1 : name:='jan';
   2 : name:='feb';
   3 : name:='mar';
   4 : name:='apr';
   5 : name:='may';
   6 : name:='jun';
   7 : name:='jul';
   8 : name:='aug';
   9 : name:='sep';
   10 : name:='oct';
   11 : name:='nov';
   12 : name:='dec';
  else ShowMessage('month err');
   End;

   delete(data,4,2);
   insert(name,data,4);

  OraQuery1.SQL.Add('INSERT INTO pictures VALUES('''+data+''')'); }

  OraQuery1.SQL.Add('INSERT INTO pictures VALUES(:p1)');
  OraQuery1.ParamByName('p1').AsDateTime := now;//strtodatetime(data);
  OraQuery1.execute;
  OraSession1.Commit;

  OraQuery1.Close;
  caption:='**********GOTOVO**************';

except
 ShowMessage(SysErrorMessage(GetLastError));
end;

end;




procedure TForm1.Button1Click(Sender: TObject);
begin
{Connect;
if  CopyFile(PChar('\\192.168.1.23\c\1.txt'), PChar('C:\1.txt'), false) then
 ShowMessage('Файл успешно скопирован!')
 else ShowMessage(SysErrorMessage(GetLastError));  }
end;




end.
