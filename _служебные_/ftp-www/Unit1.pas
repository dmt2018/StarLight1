unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, ExtCtrls, StdCtrls, IniFiles;

type
  Tfrmftpwww = class(TForm)
    Memo1: TMemo;
    btnExport: TButton;
    TimerStore: TTimer;
    IdFTP1: TIdFTP;
    TimerClients: TTimer;
    Button4: TButton;
    Button1: TButton;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    procedure btnExportClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TimerStoreTimer(Sender: TObject);
    procedure TimerClientsTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //timer_store, timer_clients: integer;
    timer_min : integer;
    autoran: boolean;
  end;

var
  frmftpwww: Tfrmftpwww;

implementation

{$R *.dfm}

//ftp-dir
procedure Tfrmftpwww.btnExportClick(Sender: TObject);
var
    sr:TSearchRec;
    data:string;
    name:string;
    mon,i:integer;
    FileList : TStringList;
    k:NETRESOURCE;
begin
// шаг1. фтп - локальный
 IdFTP1.Connect;
 IdFTP1.ChangeDir('/orders');
 memo1.Lines.Add('1.Копирую с фтп на локальный');

// ищу файлы
FileList:=tstringlist.Create;
IdFTP1.List(FileList,'*', False);
if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //забираю с фтп:
  idFTP1.Get(FileList.Strings[i], ExtractFilePath(Application.ExeName)+'copy_скачать\'+FileList.Strings[i], True,false);
  memo1.Lines.Add(FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('скачено на лок');
 IdFTP1.Disconnect;
 FileList.Free;
//------------------------------------------------------------

// шаг2. локальный - сетевая папка
memo1.Lines.Add('2.Копирую с лок на сетевой');
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_скачать\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'copy_скачать\'+sr.Name),PChar('\\Max\g\скачать\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_скачать\'+ sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('скачено на диск'+ DateTimeToStr(Now));
//------------------------------------------------------------


end;


//dir - ftp
procedure Tfrmftpwww.Button1Click(Sender: TObject);
var
    sr:TSearchRec;
    data:string;
    name:string;
    mon,i:integer;
    FileList : TStringList;
    k:NETRESOURCE;
begin

// шаг1. сетевая папка - локальный
memo1.Lines.Add('1.Копирую с сетевого на лок');
SetCurrentDir('\\Max\g\отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar('\\Max\g\отправить\'+sr.Name), PChar(ExtractFilePath(Application.ExeName)+'copy_отправить\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('отправлено на лок');
//------------------------------------------------------------

// шаг2. локальный - фтп
 IdFTP1.Connect;
 IdFTP1.ChangeDir('/');
 memo1.Lines.Add('2.Копирую с локального на фтп');

// ищу файлы
FileList:=tstringlist.Create;
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  //заполню стринглист:
  FileList.Add(sr.Name);
until (FindNext(sr) <> 0) ;

if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //кладу из стринглист на фтп:
  idFTP1.put(ExtractFilePath(Application.ExeName)+'copy_отправить\'+FileList.Strings[i], FileList.Strings[i], false);
  memo1.Lines.Add(FileList.Strings[i]);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_отправить\'+ FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('отправлено на фтп'+ DateTimeToStr(Now));
 IdFTP1.Disconnect;
 FileList.Free;
//------------------------------------------------------------

end;

procedure Tfrmftpwww.Button4Click(Sender: TObject);
begin
{  TimerStore.Interval := 1000*60*60 div timer_store;
  TimerStore.Enabled  := true;
  TimerClients.Interval := 1000*60*60 div timer_clients;
  TimerClients.Enabled  := true;   }

  Timer1.Interval := 1000*60*60 div timer_min;
  Timer1.Enabled  := true;
  btnexport.Enabled:=false;
  button1.Enabled:=false;
  button4.Enabled:=false;
  if Timer1.Enabled=true  then memo1.Lines.Add('ТАЙМЕР ЗАПУЩЕН');
end;

procedure Tfrmftpwww.FormClose(Sender: TObject; var Action: TCloseAction);
begin   {
if (TimerStore.Enabled=true) and (TimerClients.Enabled=true) then begin
   TimerStore.Enabled:=false;
   TimerClients.Enabled:=false;
end;      }
//if IdFTP1.Connected=true then  IdFTP1.disConnect;
end;

procedure Tfrmftpwww.FormCreate(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'server.ini';
    RegIni := TIniFile.Create(path);
    IdFTP1.Host     := RegIni.ReadString('FTP', 'host', '');
    IdFTP1.Username := RegIni.ReadString('FTP', 'login', '');
    IdFTP1.Password := RegIni.ReadString('FTP', 'pass', '');

    //timer_store   := RegIni.ReadInteger('TIME_STORE', 'value', 24);
    //timer_clients := RegIni.ReadInteger('TIME_CLIEMTS', 'value', 1);
    timer_min  := RegIni.ReadInteger('TIMER_MIN', 'value', 4);
    autoran       := RegIni.ReadBool('AUTORAN', 'value', false);

     // if autoran then btnStartTimer.Click;
  finally
    RegIni.Free;
  end;
end;

procedure Tfrmftpwww.FormShow(Sender: TObject);
begin
//Application.Icon.LoadFromFile('m1911.ico');
end;


procedure Tfrmftpwww.Timer1Timer(Sender: TObject);
var
    sr:TSearchRec;
    data:string;
    name:string;
    mon,i:integer;
    FileList : TStringList;
    k:NETRESOURCE;
begin
try
memo1.Lines.Clear;// шоб не переполнялось
// шаг1. сетевая папка - локальный
memo1.Lines.Add('1.Копирую с сетевого на лок');
SetCurrentDir('\\Max\g\отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar('\\Max\g\отправить\'+sr.Name), PChar(ExtractFilePath(Application.ExeName)+'copy_отправить\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('отправлено на лок');
//------------------------------------------------------------

// шаг2. локальный - фтп
 IdFTP1.Connect;  ///////////////////////////
 IdFTP1.ChangeDir('/');
 memo1.Lines.Add('2.Копирую с локального на фтп');

// ищу файлы
FileList:=tstringlist.Create;
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  //заполню стринглист:
  FileList.Add(sr.Name);
until (FindNext(sr) <> 0) ;

if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //кладу из стринглист на фтп:
  idFTP1.put(ExtractFilePath(Application.ExeName)+'copy_отправить\'+FileList.Strings[i], FileList.Strings[i], false);
  memo1.Lines.Add(FileList.Strings[i]);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_отправить\'+ FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('отправлено на фтп'+ DateTimeToStr(Now));
  FileList.Free;
 IdFTP1.Disconnect;  /////////////////
//------------------------------------------------------------
//------------------------------------------------------------

 // шаг3. фтп - локальный
 IdFTP1.Connect;  ////////////////
 IdFTP1.ChangeDir('/orders');
 memo1.Lines.Add('3.Копирую с фтп на локальный');

// ищу файлы

FileList:=tstringlist.Create;
try
IdFTP1.List(FileList,'*', False);
application.processmessages;
except
end;

if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //забираю с фтп:
  idFTP1.Get(FileList.Strings[i], ExtractFilePath(Application.ExeName)+'copy_скачать\'+FileList.Strings[i], True,false);
  memo1.Lines.Add(FileList.Strings[i]);
    if checkbox1.Checked =false then IdFTP1.Delete('/orders/'+FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('скачено на лок');
 FileList.Free;

 IdFTP1.Disconnect;  ///////////////////
//------------------------------------------------------------

// шаг4. локальный - сетевая папка
memo1.Lines.Add('4.Копирую с лок на сетевой');
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_скачать\');  //папка для поиска файлов

if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'copy_скачать\'+sr.Name),PChar('\\Max\g\скачать\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_скачать\'+ sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('скачено на диск'+ DateTimeToStr(Now));
//------------------------------------------------------------

except
end;
end;

procedure Tfrmftpwww.TimerClientsTimer(Sender: TObject);
{var
    sr:TSearchRec;
    data:string;
    name:string;
    mon,i:integer;
    FileList : TStringList;
    k:NETRESOURCE;        }
begin
{memo1.Lines.Clear;//т.к. сначала идет отправка
// шаг1. сетевая папка - локальный
memo1.Lines.Add('1.Копирую с сетевого на лок');
SetCurrentDir('\\Max\g\отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar('\\Max\g\отправить\'+sr.Name), PChar(ExtractFilePath(Application.ExeName)+'copy_отправить\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('отправлено на лок');
//------------------------------------------------------------

// шаг2. локальный - фтп
 IdFTP1.Connect;  ///////////////////////////
 IdFTP1.ChangeDir('/');
 memo1.Lines.Add('2.Копирую с локального на фтп');

// ищу файлы
FileList:=tstringlist.Create;
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_отправить\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
  //заполню стринглист:
  FileList.Add(sr.Name);
until (FindNext(sr) <> 0) ;

if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //кладу из стринглист на фтп:
  idFTP1.put(ExtractFilePath(Application.ExeName)+'copy_отправить\'+FileList.Strings[i], FileList.Strings[i], false);
  memo1.Lines.Add(FileList.Strings[i]);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_отправить\'+ FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('отправлено на фтп'+ DateTimeToStr(Now));
  FileList.Free;
 //IdFTP1.Disconnect;  /////////////////
//------------------------------------------------------------
           }
end;


procedure Tfrmftpwww.TimerStoreTimer(Sender: TObject);
{var
    sr:TSearchRec;
    data:string;
    name:string;
    mon,i:integer;
    FileList : TStringList;
    k:NETRESOURCE;}
begin
{// шаг1. фтп - локальный
 //IdFTP1.Connect;  ////////////////
 IdFTP1.ChangeDir('/orders');
 memo1.Lines.Add('1.Копирую с фтп на локальный');

// ищу файлы
FileList:=tstringlist.Create;
IdFTP1.List(FileList,'*', False);
if FileList.Count > 0 then
for I := 0 to FileList.Count - 1 do  begin
  //забираю с фтп:
  idFTP1.Get(FileList.Strings[i], ExtractFilePath(Application.ExeName)+'copy_скачать\'+FileList.Strings[i], True,false);
  memo1.Lines.Add(FileList.Strings[i]);
  application.processmessages;
end;
 memo1.Lines.Add('скачено на лок');
 IdFTP1.Disconnect;  ///////////////////
 FileList.Free;
//------------------------------------------------------------

// шаг2. локальный - сетевая папка
memo1.Lines.Add('2.Копирую с лок на сетевой');
SetCurrentDir(ExtractFilePath(Application.ExeName)+'copy_скачать\');  //папка для поиска файлов
if FindFirst('*', faAnyFile , sr)=0 then  //если найдено, то:
repeat
 if (sr.Name= '.') or (sr.Name='..') then continue;
 begin
  //копирую в сетевую папку:
  CopyFile(PChar(ExtractFilePath(Application.ExeName)+'copy_скачать\'+sr.Name),PChar('\\Max\g\скачать\'+sr.Name), false);
  memo1.Lines.Add(sr.Name);
  DeleteFile(ExtractFilePath(Application.ExeName)+'copy_скачать\'+ sr.Name);
  application.processmessages;
 end;
until (FindNext(sr) <> 0) ;
 findclose(sr);
 memo1.Lines.Add('скачено на диск'+ DateTimeToStr(Now));
//------------------------------------------------------------
          }
end;


end.
