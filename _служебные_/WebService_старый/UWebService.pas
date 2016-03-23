unit UWebService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, HTTPApp, DB, DBClient, MConnect, SConnect, OleCtrls,
  SHDocVw, Sockets, xmldom, XMLIntf, IdCustomTCPServer, IdCustomHTTPServer,
  IdHTTPServer, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, msxmldom, XMLDoc, IdContext, DBAccess, Ora, MemDS, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdServerIOHandler,
  Math;

type
  TfrmMainWebService = class(TForm)
    btnStart: TButton;
    mmLog: TMemo;
    btnStop: TButton;
    StarServer: TIdHTTPServer;
    SelectSession: TOraSession;
    OraSQL: TOraQuery;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StarServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    creator, ora_db_path : string;
    procedure sendProverka(resp_text: string; err_code: string);
    procedure sendError(resp_text: string; err_code: string);
    procedure sendIndex(resp_text: string; id_code: string);
  end;

var
  frmMainWebService: TfrmMainWebService;
  f,f1: textfile;
{
  // AMOUNT,PAYID : integer;
  // DATE:string;
  AM,PA,PT: integer;
  DA,cod1,cod2,cod3,rece,ti: string;
  flag: integer;
}
implementation

{$R *.dfm}

procedure TfrmMainWebService.btnStartClick(Sender: TObject);
begin
  //TcpStarServer.Open;
  StarServer.Active := true;
  mmLog.Lines.Add(datetimetostr(now)+' :server started');
  btnStart.Enabled := not StarServer.Active;
  btnStop.Enabled := not btnStart.Enabled;
end;

procedure TfrmMainWebService.btnStopClick(Sender: TObject);
begin
  //TcpStarServer.close;
  StarServer.Active := false;
  mmLog.Lines.Add(datetimetostr(now)+' :server stopped');
  btnStart.Enabled := not StarServer.Active;
  btnStop.Enabled := not btnStart.Enabled;
end;

procedure TfrmMainWebService.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btnStopClick(Sender);
  action := caFree;
end;

procedure TfrmMainWebService.FormCreate(Sender: TObject);
VAR f : TextFile;
begin
{
  flag := 0; // проверка пока не пройдена
  AM   := 1;
  PA   := 2;
  DA   := 'YYYYMMDDHHMMSS';
}
  btnStart.Enabled := not StarServer.Active;
  btnStop.Enabled := not btnStart.Enabled;
  try
    {$I-}
    AssignFile(f,'connections/connections.txt');
    Reset(f);
    Readln(f,ora_db_path);
    Readln(f,creator);
    CloseFile(f);
    {$I+}
  except
    ShowMessage('Невозможно открыть файл "connections.txt" в папке "connections"!')
  End;
end;


procedure TfrmMainWebService.StarServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var p_login, p_pass, p_code, str_date, resp_text: string;
    p_type, p_paytype, p_payid: integer;
    p_amount: real;
    p_date: TDateTime;
    FS: TFormatSettings;
begin
  resp_text := '';
  mmLog.Text := ARequestInfo.Params.Text;

  // начальная проверка на оплату
  // http://127.0.0.1:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&PAYTYPE=1&CODE1=11152742&AMOUNT=16235&PAYID=123456789&DATE=20160208130000
  // начальная проверка на предоплату
  // http://127.0.0.1:8080?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&PAYTYPE=2&CODE1=S EVA&AMOUNT=16235&PAYID=123456789&DATE=20160208130000

  // оплата по накладной
  //http://127.0.0.1:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=2&PAYTYPE=1&CODE1=11152742&AMOUNT=16235&PAYID=123456789&DATE=20160208130000

  if (ARequestInfo.Params.Values['LOGIN'] = '') or (ARequestInfo.Params.Values['PASS'] = '') then
  begin
    AResponseInfo.ContentText := 'Ошибка. Ну казан логин или пароль';
    exit;
  end;

  if (StrToInt(ARequestInfo.Params.Values['PAYTYPE']) = 0) or (StrToInt(ARequestInfo.Params.Values['PAYTYPE']) > 2) then
  begin
    AResponseInfo.ContentText := 'Тип и назначения платежа не верны';
    exit;
  end;

  if (StrToInt(ARequestInfo.Params.Values['TYPE']) = 0) or (StrToInt(ARequestInfo.Params.Values['TYPE']) > 2) then
  begin
    AResponseInfo.ContentText := 'Тип запроса не указан';
    exit;
  end;

  if (StrToInt(ARequestInfo.Params.Values['AMOUNT']) = 0) then
  begin
    AResponseInfo.ContentText := 'Сумма должна быть больше нуля';
    exit;
  end;

  if (ARequestInfo.Params.Values['CODE1'] = '') then
  begin
    AResponseInfo.ContentText := 'Не указаны основные параметры';
    exit;
  end;

  DecimalSeparator := '.';
  p_login := ARequestInfo.Params.Values['LOGIN'];
  p_pass := ARequestInfo.Params.Values['PASS'];
  p_type := StrToInt(ARequestInfo.Params.Values['TYPE']);
  p_code := ARequestInfo.Params.Values['CODE1'];
  p_amount := StrToFloat(ARequestInfo.Params.Values['AMOUNT'])/100;
  p_paytype := StrToInt(ARequestInfo.Params.Values['PAYTYPE']);
  p_payid := StrToInt(ARequestInfo.Params.Values['PAYID']);
  //p_date := ARequestInfo.Params.Values['DATE']
  //ShortDateFormat := 'yyyymmdd';
  //ShortTimeFormat := 'hhmmss';
  str_date := ARequestInfo.Params.Values['DATE'];
  Insert('.', str_date, 5);
  Insert('.', str_date, 8);
  Insert(' ', str_date, 11);
  Insert(':', str_date, 14);
  Insert(':', str_date, 17);
  FS.DateSeparator := '.';
  FS.TimeSeparator := ':';
  FS.ShortDateFormat := 'yyyy.mm.dd';
  FS.ShortTimeFormat := 'hh24:mi:ss';
  p_date := StrToDateTime(str_date, FS);

  //p_date := strtodatetime(ARequestInfo.Params.Values['DATE']);

  try
    SelectSession.Username := p_login;
    SelectSession.Password := p_pass;
    SelectSession.Server   := ora_db_path;
    SelectSession.Connect;
  except
    AResponseInfo.ContentText := 'Ошибка в соединении';
  End;

  if not SelectSession.Connected then
  begin
    AResponseInfo.ContentText := 'Ошибка в соединении';
    exit;
  end;

  try
    OraSQL.Close;
    OraSQL.SQL.Clear;
    if p_type = 1 then
    begin
      // Проверка на платеж по ИД кассового дня
      if p_paytype = 1 then
        OraSQL.SQL.Add('SELECT count(*) as nn FROM CASH_TMP WHERE ID_CASH_TMP = '+p_code);
      // Проверка на предоплату по коду клиента
      if p_paytype = 2 then
        OraSQL.SQL.Add('SELECT count(*) as nn FROM clients WHERE nick = upper('''+p_code+''') and id_office=1');

      OraSQL.Open;
      if OraSQL.FieldByName('nn').AsInteger = 1 then
      begin
        resp_text := 'Проверка прошла успешно';
        sendProverka(resp_text, '0');
        mmLog.Lines.Add(resp_text);
        AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
        AResponseInfo.ResponseNo := 200;// все успешно
        //AResponseInfo.ContentText := resp_text;
        AResponseInfo.ContentStream := TFileStream.Create('htdocs/proverka.xml',fmShareDenyNone);
      end
      else
      begin
        resp_text := 'Данные о платеже или клиенте не найдены';
        sendProverka(resp_text, '100');
        mmLog.Lines.Add(resp_text);
        AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
        AResponseInfo.ResponseNo := 200;// все успешно
        //AResponseInfo.ContentText := resp_text;
        AResponseInfo.ContentStream := TFileStream.Create('htdocs/proverka.xml',fmShareDenyNone);
      end;
    end
    else
    begin
      // Платеж по ИД кассового дня
      if p_paytype = 1 then
        OraSQL.SQL.Add('UPDATE CASH_TMP SET in_rub='+ FloatToStr( RoundTo( p_amount,-2 ) ) +', info='''+IntToStr(p_payid)+''', corrector='''+p_login+''', ddate_done=sysdate, date_change=sysdate WHERE ID_CASH_TMP = '+p_code);
      // Предоплата по коду клиента
      if p_paytype = 2 then
        OraSQL.SQL.Add(' begin cash_pkg.add_cash_record_simple('''+p_code+''','+ FloatToStr( RoundTo( p_amount,-2 ) ) +','''+p_login+'''); end; ');
      OraSQL.Execute;
      SelectSession.Commit;

      resp_text := 'Платеж осуществлен успешно';
      sendIndex(resp_text, IntToStr(p_payid));
      mmLog.Lines.Add(resp_text);
      AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
      AResponseInfo.ResponseNo := 200;// все успешно
      AResponseInfo.ContentStream := TFileStream.Create('htdocs/index.xml',fmShareDenyNone);

    end;
    OraSQL.Close;
  except
    on E: Exception do
    begin
      sendIndex(E.Message, '200');
      mmLog.Lines.Add(E.Message);
      AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
      AResponseInfo.ResponseNo := 200;// все успешно
      AResponseInfo.ContentStream := TFileStream.Create('htdocs/error.xml',fmShareDenyNone);
      //ShowMessage(E.Message);
    end;
  end;

end;

procedure TfrmMainWebService.sendProverka(resp_text: string; err_code: string);
begin
        try
          {$I-}
          assignfile(f,'htdocs/proverka.xml');
          rewrite(f);
          writeln(f,'<?xml version="1.0" encoding="windows-1251" ?>');
          writeln(f,'<RESPONSE>');
          writeln(f,'<RESULTCODE>'+err_code+'</RESULTCODE>');
          writeln(f,'<RESULTMESSAGE>'+resp_text+'</RESULTMESSAGE>');
          writeln(f,'<DATE>'+FormatDateTime('YYYYMMDDHHMMSS',now)+'</DATE>');
          writeln(f,'<ADDINFO></ADDINFO>');
          writeln(f,'</RESPONSE>');
          closefile(f);
          {$I+}
        except
          mmLog.Lines.Add('Невозможно открыть файл proverka.xml');
        End;
end;

procedure TfrmMainWebService.sendIndex(resp_text: string; id_code: string);
begin
        try
          {$I-}
          assignfile(f,'htdocs/index.xml');
          rewrite(f);
          writeln(f,'<?xml version="1.0" encoding="windows-1251" ?>');
          writeln(f,'<RESPONSE>');
          writeln(f,'<RESULTCODE>0</RESULTCODE>');
          writeln(f,'<RESULTMESSAGE>'+resp_text+'</RESULTMESSAGE>');
          writeln(f,'<DATE>'+FormatDateTime('YYYYMMDDHHMMSS',now)+'</DATE>');
          writeln(f,'<PAYID>'+id_code+'</PAYID>');
          writeln(f,'</RESPONSE>');
          closefile(f);
          {$I+}
        except
          mmLog.Lines.Add('Невозможно открыть файл index.xml');
        End;
end;


procedure TfrmMainWebService.sendError(resp_text: string; err_code: string);
begin
        try
          {$I-}
          assignfile(f1,'htdocs/error.xml');
          rewrite(f1);
          writeln(f1,'<?xml version="1.0" encoding="windows-1251" ?>');
          writeln(f1,'<RESPONSE>');
          writeln(f1,'<RESULTCODE>'+err_code+'</RESULTCODE>');
          writeln(f1,'<RESULTMESSAGE>'+resp_text+'</RESULTMESSAGE>');
          writeln(f1,'<DATE>'+FormatDateTime('YYYYMMDDHHMMSS',now)+'</DATE>');
          writeln(f1,'</RESPONSE>');
          closefile(f1);
          {$I+}
        except
          mmLog.Lines.Add('Невозможно открыть файл error.xml');
        End;
end;


end.
