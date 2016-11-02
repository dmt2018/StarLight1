unit uExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, ComCtrls, DBAccess, Ora, MemDS, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, Grids, DBGrids, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxGridExportLink, IniFiles, OdacVcl;

type
  TfrmExport = class(TForm)
    btnStartTimer: TButton;
    TimerStore: TTimer;
    IdFTP1: TIdFTP;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    SelectSession: TOraSession;
    Memo1: TMemo;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1PRODUCT_ART: TcxGridDBColumn;
    cxGrid1DBTableView1BRAND_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEPART_ID: TcxGridDBColumn;
    cxGrid1DBTableView1CATEGORY: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_TITLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_DESC: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_PRICE: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_QTY: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUCT_RESERVE: TcxGridDBColumn;
    qClients: TOraQuery;
    qClientsNICK: TStringField;
    qClientsCCODE: TStringField;
    qClientsFIO: TStringField;
    qClientsEMAIL: TStringField;
    qClientsREGIONS_NAME: TStringField;
    qClientsADDRESS: TStringField;
    qClientsPHONE: TStringField;
    dsClients: TOraDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1NICK: TcxGridDBColumn;
    cxGridDBTableView1CCODE: TcxGridDBColumn;
    cxGridDBTableView1FIO: TcxGridDBColumn;
    cxGridDBTableView1EMAIL: TcxGridDBColumn;
    cxGridDBTableView1REGIONS_NAME: TcxGridDBColumn;
    cxGridDBTableView1ADDRESS: TcxGridDBColumn;
    cxGridDBTableView1PHONE: TcxGridDBColumn;
    cxGrid1DBTableView1CODENAME: TcxGridDBColumn;
    cxGrid1DBTableView1COUNTRY: TcxGridDBColumn;
    cxGrid1DBTableView1COLOUR: TcxGridDBColumn;
    cxGrid1DBTableView1SIZE: TcxGridDBColumn;
    cxGrid1DBTableView1PIECESINPACK: TcxGridDBColumn;
    cxGrid1DBTableView1NEW_FLAG: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_START: TcxGridDBColumn;
    cxGrid1DBTableView1SEASON_END: TcxGridDBColumn;
    TimerClients: TTimer;
    cdExport: TConnectDialog;
    btnExport: TButton;
    qClientsID_OFFICE: TIntegerField;
    qClientsMARK: TStringField;
    cxGridDBTableView1ID_OFFICE: TcxGridDBColumn;
    cxGridDBTableView1MARK: TcxGridDBColumn;
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
    cxGrid1DBTableView1DISCOUNT: TcxGridDBColumn;
    cxGrid1DBTableView1PROFIT: TcxGridDBColumn;
    cxGrid1DBTableView1BESTPRICE: TcxGridDBColumn;
    qClientsDDATE: TDateTimeField;
    qClientsCHART: TFloatField;
    cxGridDBTableView1DDATE: TcxGridDBColumn;
    cxGridDBTableView1CHART: TcxGridDBColumn;
    qClientsGROUP_NAME: TStringField;
    cxGridDBTableView1GROUP_NAME: TcxGridDBColumn;
    OraQuery1ONMARCH: TStringField;
    cxGrid1DBTableView1ONMARCH: TcxGridDBColumn;
    edQDays: TEdit;
    Label1: TLabel;
    procedure btnStartTimerClick(Sender: TObject);
    procedure TimerStoreTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerClientsTimer(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    timer_store, timer_clients: integer;
    autoran: boolean;
    { Public declarations }
  end;

var
  frmExport: TfrmExport;

implementation

{$R *.dfm}

procedure TfrmExport.btnExportClick(Sender: TObject);
var file_str, file_clients: string;
begin
    qClients.Open;
    file_clients := 'all_clients.csv';
    ExportGridToText( file_clients, cxGrid2, True, True, ';', '', '', 'csv');
    qClients.Close;

    IdFTP1.Connect;
    IdFTP1.ChangeDir('starlight.ru/exchange');
    IdFTP1.Put(file_clients,file_clients,false);
    IdFTP1.Disconnect;

    OraQuery1.ParamByName('QDAYS').AsInteger := StrToInt(edQDays.Text);
    OraQuery1.Open;
    file_str := 'all_store.csv';
    ExportGridToText( file_str, cxGrid1, True, True, ';', '', '', 'csv');
    OraQuery1.Close;

    IdFTP1.Connect;
    IdFTP1.ChangeDir('starlight.ru/exchange');
    IdFTP1.Put(file_str,file_str,false);
    IdFTP1.Disconnect;
end;


procedure TfrmExport.btnStartTimerClick(Sender: TObject);
begin
 // TimerStore.Interval := 1000*60*60*timer_store;  //потом вернуть и в компоненте интервал = 500
  TimerStore.Enabled  := true;
 // TimerClients.Interval := 1000*60*60*timer_clients;  //потом вернуть и в компоненте интервал = 500
  TimerClients.Enabled  := true;
end;


procedure TfrmExport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SelectSession.Disconnect;
end;


procedure TfrmExport.FormCreate(Sender: TObject);
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

    timer_store   := RegIni.ReadInteger('TIME_STORE', 'value', 24);
    timer_clients := RegIni.ReadInteger('TIME_CLIEMTS', 'value', 1);
    autoran       := RegIni.ReadBool('AUTORAN', 'value', false);

   // if cdExport.Execute then  //потом возможно вернуть
    begin
      SelectSession.Connect;
      if autoran then btnStartTimer.Click;
    end;
  finally
    RegIni.Free;
  end;
end;

procedure TfrmExport.TimerClientsTimer(Sender: TObject);
var file_clients: string;
begin
if abs(time - strtotime('00:00:00')) <    strtotime('00:00:02') then begin  //в 12 ночи   - потом убрать
    Memo1.Lines.Add('Start clients ' + DateTimeToStr(Now));

    qClients.Open;
    file_clients := 'all_clients.csv';
    ExportGridToText( file_clients, cxGrid2, True, True, ';', '', '', 'csv');
    qClients.Close;

    IdFTP1.Connect;
    IdFTP1.ChangeDir('starlight.ru/exchange');
    IdFTP1.Put(file_clients,file_clients,false);
    IdFTP1.Disconnect;
end;
end;

procedure TfrmExport.TimerStoreTimer(Sender: TObject);
var file_str: string;
begin
if abs(time - strtotime('00:05:00')) <    strtotime('00:00:02') then begin  //в 12:05 ночи   - потом убрать
    Memo1.Lines.Add('Start store ' + DateTimeToStr(Now));

    OraQuery1.Open;
    file_str := 'all_store.csv';
    ExportGridToText( file_str, cxGrid1, True, True, ';', '', '', 'csv');
    OraQuery1.Close;

    IdFTP1.Connect;
    IdFTP1.ChangeDir('starlight.ru/exchange');
    IdFTP1.Put(file_str,file_str,false);
    IdFTP1.Disconnect;
end;
end;

end.
