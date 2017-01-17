unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP, ExtCtrls, StdCtrls, IniFiles, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, DBAccess,
  OdacVcl, Ora, MemDS, cxGridExportLink;

type
  Tfrmftpwww = class(TForm)
    OraQuery1: TOraQuery;
    OraQuery1PRODUCT_ART: TFloatField;
    OraQuery1CODENAME: TStringField;
    OraQuery1DEPART_ID: TFloatField;
    OraQuery1BRAND_TITLE: TStringField;
    OraQuery1COUNTRY: TStringField;
    OraQuery1CATEGORY: TStringField;
    OraQuery1PRODUCT_TITLE: TStringField;
    OraQuery1COLOUR: TStringField;
    OraQuery1SIZE: TFloatField;
    OraQuery1PIECESINPACK: TFloatField;
    OraQuery1PRODUCT_DESC: TStringField;
    OraQuery1PRODUCT_PRICE: TFloatField;
    OraQuery1PRODUCT_QTY: TFloatField;
    OraQuery1PRODUCT_RESERVE: TFloatField;
    OraQuery1NEW_FLAG: TFloatField;
    OraQuery1DISCOUNT: TFloatField;
    OraQuery1PROFIT: TFloatField;
    OraQuery1BESTPRICE: TFloatField;
    OraQuery1SEASON_START: TFloatField;
    OraQuery1SEASON_END: TFloatField;
    OraQuery1ONMARCH: TStringField;
    OraQuery1NO_ORDER: TFloatField;
    qClients: TOraQuery;
    qClientsNICK: TStringField;
    qClientsCCODE: TStringField;
    qClientsFIO: TStringField;
    qClientsEMAIL: TStringField;
    qClientsREGIONS_NAME: TStringField;
    qClientsADDRESS: TStringField;
    qClientsPHONE: TStringField;
    qClientsID_OFFICE: TIntegerField;
    qClientsMARK: TStringField;
    qClientsDDATE: TDateTimeField;
    qClientsCHART: TFloatField;
    qClientsGROUP_NAME: TStringField;
    dsClients: TOraDataSource;
    OraDataSource1: TOraDataSource;
    SelectSession: TOraSession;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1NICK: TcxGridDBColumn;
    cxGridDBTableView1CCODE: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1REGIONS_NAME: TcxGridDBColumn;
    cxGridDBTableView1ADDRESS: TcxGridDBColumn;
    cxGridDBTableView1PHONE: TcxGridDBColumn;
    cxGridDBTableView1ID_OFFICE: TcxGridDBColumn;
    cxGridDBTableView1MARK: TcxGridDBColumn;
    cxGridDBTableView1DDATE: TcxGridDBColumn;
    cxGridDBTableView1CHART: TcxGridDBColumn;
    cxGridDBTableView1GROUP_NAME: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PRODUCT_ART: TcxGridDBColumn;
    cxGrid1DBTableView1CODENAME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPART_ID: TcxGridDBColumn;
    cxGrid1DBTableView1BRAND_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTRY: TcxGridDBColumn;
    cxGrid1DBTableView1CATEGORY: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1COLOUR: TcxGridDBColumn;
    cxGrid1DBTableView1SIZE: TcxGridDBColumn;
    cxGrid1DBTableView1PIECESINPACK: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_DESC: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_RESERVE: TcxGridDBColumn;
    cxGrid1DBTableView1NEW_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PROFIT: TcxGridDBColumn;
    cxGrid1DBTableView1BESTPRICE: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_START: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_END: TcxGridDBColumn;
    cxGrid1DBTableView1ONMARCH: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Memo1: TMemo;
    button2: TButton;
    Button4: TButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    IdFTP1: TIdFTP;
    Timer1: TTimer;
    Edqdays: TEdit;
    btnExport: TButton;
    IdFTP2: TIdFTP;
    Label1: TLabel;
    Timer2: TTimer;
    Memo2: TMemo;
    procedure button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure timerstoreTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnStartTimerClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    timer_min : integer;
    timer_old : integer;
    autoran: boolean;
    procedure clientExport;
    procedure strExport;
  end;

var
  frmftpwww: Tfrmftpwww;

implementation

{$R *.dfm}

procedure Tfrmftpwww.clientExport;
var file_clients: string;
begin
try
    SetCurrentDir(ExtractFilePath(Application.ExeName));
    Memo2.Lines.Add('5.Копирую клиентов на ФТП');

    qClients.Open;
    file_clients := 'all_clients.csv';
    ExportGridToText( file_clients, cxGrid2, True, True, ';', '', '', 'csv');
    qClients.Close;

    IdFTP2.Connect;
    IdFTP2.ChangeDir('starlight.ru/exchange');
    IdFTP2.Put(file_clients,file_clients,false);
    IdFTP2.Disconnect;
    Memo2.Lines.Add('Клиенты скопированы на фтп ' + DateTimeToStr(Now));
except
end;
end;

procedure Tfrmftpwww.strExport;
var file_str: string;
begin
try
    SetCurrentDir(ExtractFilePath(Application.ExeName));
    Memo2.Lines.Add('6.Копирую продажи на ФТП');

    OraQuery1.ParamByName('QDAYS').AsInteger := StrToInt(edQDays.Text);
    OraQuery1.Open;
    file_str := 'all_store.csv';
    ExportGridToText( file_str, cxGrid1, True, True, ';', '', '', 'csv');
    OraQuery1.Close;

    IdFTP2.Connect;
    IdFTP2.ChangeDir('starlight.ru/exchange');
    IdFTP2.Put(file_str,file_str,false);
    IdFTP2.Disconnect;
    Memo2.Lines.Add('Продажи скопированы на фтп ' + DateTimeToStr(Now));
except
end;
end;


//ftp-dir   ручник
procedure Tfrmftpwww.button2Click(Sender: TObject);
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
 memo1.Lines.Add('скачено на диск '+ DateTimeToStr(Now));
//------------------------------------------------------------


end;


//  ручник клиенты продажи
procedure Tfrmftpwww.btnExportClick(Sender: TObject);
var file_str, file_clients: string;
begin

    SetCurrentDir(ExtractFilePath(Application.ExeName));

    qClients.Open;
    file_clients := 'all_clients.csv';
    ExportGridToText( file_clients, cxGrid2, True, True, ';', '', '', 'csv');
    qClients.Close;

  {  IdFTP2.Connect;
    IdFTP2.ChangeDir('starlight.ru/exchange');
    IdFTP2.Put(file_clients,file_clients,false);
    IdFTP2.Disconnect;
  }
    OraQuery1.ParamByName('QDAYS').AsInteger := StrToInt(edQDays.Text);
    //OraQuery1.ParamByName('cursor_').AsCursor;
    OraQuery1.Open;
    file_str := 'all_store.csv';
    ExportGridToText( file_str, cxGrid1, True, True, ';', '', '', 'csv');
    OraQuery1.Close;

   { IdFTP2.Connect;
    IdFTP2.ChangeDir('starlight.ru/exchange');
    IdFTP2.Put(file_str,file_str,false);
    IdFTP2.Disconnect;
    }
end;


procedure Tfrmftpwww.btnStartTimerClick(Sender: TObject);
begin

end;

//dir - ftp    ручник
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
 memo1.Lines.Add('отправлено на фтп '+ DateTimeToStr(Now));
 IdFTP1.Disconnect;
 FileList.Free;
//------------------------------------------------------------

end;


procedure Tfrmftpwww.Button4Click(Sender: TObject);
begin
  Timer1.Interval := 1000*60*60 div timer_min;
  Timer1.Enabled  := true;
  Timer2.Enabled  := true;
  btnexport.Enabled :=false;
  button1.Enabled   :=false;
  button4.Enabled   :=false;
  button2.Enabled :=false;
  Edqdays.Enabled :=false;
  label1.Enabled  :=false;
  Memo1.Lines.Add('ТАЙМЕР ЗАПУЩЕН '+ DateTimeToStr(Now));
end;

procedure Tfrmftpwww.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SelectSession.Disconnect;
 {
if (TimerStore.Enabled=true) and (TimerClients.Enabled=true) then begin
   TimerStore.Enabled:=false;
   TimerClients.Enabled:=false;
end;      }
//if IdFTP1.Connected=true then  IdFTP1.disConnect;
end;


//перенести create с той проги
procedure Tfrmftpwww.FormCreate(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'server.ini';
    RegIni := TIniFile.Create(path);
    IdFTP1.Host     := RegIni.ReadString('FTP1', 'host', '');
    IdFTP1.Username := RegIni.ReadString('FTP1', 'login', '');
    IdFTP1.Password := RegIni.ReadString('FTP1', 'pass', '');

    IdFTP2.Host     := RegIni.ReadString('FTP2', 'host', '');
    IdFTP2.Username := RegIni.ReadString('FTP2', 'login', '');
    IdFTP2.Password := RegIni.ReadString('FTP2', 'pass', '');

    //timer_store   := RegIni.ReadInteger('TIME_STORE', 'value', 24);
    //timer_clients := RegIni.ReadInteger('TIME_CLIEMTS', 'value', 1);
    timer_min  := RegIni.ReadInteger('TIMER_MIN', 'value', 4);
    autoran    := RegIni.ReadBool('AUTORAN', 'value', false);

    SelectSession.Connect;
    // if autoran then button4.Click;
  finally
    RegIni.Free;
  end;
end;

procedure Tfrmftpwww.FormShow(Sender: TObject);
begin
//Application.Icon.LoadFromFile('m1911.ico');
end;


procedure Tfrmftpwww.timerstoreTimer(Sender: TObject);var file_str: string;
begin

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
 memo1.Lines.Add('отправлено на фтп '+ DateTimeToStr(Now));
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
 memo1.Lines.Add('скачено на диск '+ DateTimeToStr(Now));
//------------------------------------------------------------

//clientExport; //шаг 5
//strExport;    //шаг 6

except
end;
end;

procedure Tfrmftpwww.Timer2Timer(Sender: TObject);
begin
if abs(time - strtotime('00:05:00')) <    strtotime('00:00:02') then begin
 Memo2.Clear;
 Memo2.Lines.Add('Часть 2.');
 clientExport;
 strExport;
end;
end;

end.
