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
    procedure sendProverka(resp_text: string; inf:string; err_code: string);
    procedure sendError(resp_text: string; err_code: string);
    procedure sendIndex(resp_text: string; id_code: string);
  end;

var
  frmMainWebService: TfrmMainWebService;
  f,f1: textfile;

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
  label l1;
var p_login, p_pass, p_code1, str_date, resp_text, inf: string;
    p_type: integer;
    p_payid:real;
    p_amount: real;      raznica:real;  zpt:integer;
    p_date: TDateTime;
    FS: TFormatSettings;
    i,flag:integer;      dengi:string;
begin
  resp_text := ''; inf:='';
  mmLog.Text := ARequestInfo.Params.Text;



      //старое:
   {  // начальная проверка на оплату
http://212.100.132.182:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&CODE1=11162156&AMOUNT=16235&PAYID=123456789&DATE=20160208130000
  // начальная проверка на предоплату
 http://212.100.132.182:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&CODE1=D BNM&AMOUNT=16235&PAYID=123456789&DATE=20160208130000

  // оплата по накладной
  http://212.100.132.182:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=2&CODE1=11162156&AMOUNT=16235&PAYID=123456789&DATE=20160208130000

  //Внесение предоплаты
http://212.100.132.182:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=2&CODE1=D BNM&AMOUNT=16235&PAYID=123456789&DATE=20160208130000

   }


  {// начальная проверка на оплату
  http://192.168.1.23:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&CODE1=11162159&CODE2=500&AMOUNT=50000&PAYID=635932219909769260&DATE=20160322180000
  // начальная проверка на предоплату
  http://192.168.1.23:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=1&CODE1=D BNM&CODE2=500&AMOUNT=50000&PAYID=635932219909769260&DATE=20160322180000

  // оплата по накладной
  http://192.168.1.23:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=2&CODE1=11162159&CODE2=500&AMOUNT=50000&PAYID=635932219909769260&DATE=20160322180000
  //Внесение предоплаты
  http://192.168.1.23:8080/?LOGIN=UEGATE&PASS=star_UEGATE&TYPE=2&CODE1=D BNM&CODE2=500&AMOUNT=50000&PAYID=635932219909769260&DATE=20160322180000
    }

  if (ARequestInfo.Params.Values['LOGIN'] = '') or (ARequestInfo.Params.Values['PASS'] = '') then
  begin
    AResponseInfo.ContentText := 'Ошибка. Не казан логин или пароль';
    exit;
  end;

 { if (StrToInt(ARequestInfo.Params.Values['PAYTYPE']) = 0) or (StrToInt(ARequestInfo.Params.Values['PAYTYPE']) > 2) then
  begin
    AResponseInfo.ContentText := 'Тип и назначения платежа не верны';
    exit;
  end;    }

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

  // не введено обязат поле cod1
  //*************************************************************************************************
 { if (ARequestInfo.Params.Values['CODE1'] = '') and (ARequestInfo.Params.Values['CODE2'] = '') then
  begin
    AResponseInfo.ContentText := 'Не указаны основные параметры С1';
    exit;
  end;
  if (ARequestInfo.Params.Values['CODE1'] = '') and (ARequestInfo.Params.Values['CODE2'] <> '') then
  begin                                        
    AResponseInfo.ContentText := 'Не указаны основные параметры C1';
    exit;
  end;    }
  //***************************************************************************************************
  if (ARequestInfo.Params.Values['CODE1'] = '') then
  begin
    AResponseInfo.ContentText := 'Не указаны основные параметры 1';
    exit;
  end;

  {if (ARequestInfo.Params.Values['CODE2'] = '') then
  begin
    AResponseInfo.ContentText := 'Не указаны основные параметры 2';
    exit;
  end;      }


  DecimalSeparator := '.';
  p_login := ARequestInfo.Params.Values['LOGIN'];
  p_pass := ARequestInfo.Params.Values['PASS'];
  p_type := StrToInt(ARequestInfo.Params.Values['TYPE']);
  p_code1 := ARequestInfo.Params.Values['CODE1'];
  //p_code2 := ARequestInfo.Params.Values['CODE2'];
  p_amount := StrToFloat(ARequestInfo.Params.Values['AMOUNT'])/100;
  //p_paytype := StrToInt(ARequestInfo.Params.Values['PAYTYPE']);
  p_payid := StrTofloat(ARequestInfo.Params.Values['PAYID']);
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
  //inf:= ARequestInfo.Params.Values['ADDINFO'];

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
        flag:=0;//не было проверки суммы

      // Проверка на платеж по ИД кассового дня
        if TryStrToInt(p_code1,i) then begin
        OraSQL.SQL.Add('SELECT count(*) as nn, SUMM as xx FROM CASH_TMP WHERE ID_CASH_TMP = '+p_code1+' GROUP BY SUMM');
        OraSQL.Open;
        //убираю запятую в введенной кнопками сумме и меняю на точку:
       // if pos(',',p_code2)<>0 then begin zpt:=pos(',',p_code2); delete(p_code2,zpt,1); insert('.',p_code2,zpt); end;
       // if (OraSQL.FieldByName('xx').asfloat <= (RoundTo( strtofloat(p_code2),-2 ))) then
       flag:=1;  //ок
       
          dengi:= floattostr(OraSQL.FieldByName('xx').asfloat*100);
          inf := dengi;
        end;

      // Проверка на предоплату по коду клиента  (R CHL не может вносить предоплату, а платит только по № накладной)
        if (not TryStrToInt(p_code1,i)) {and (AnsiUpperCase(p_code1)<>'R CHL')} then begin
         
        OraSQL.SQL.Add('SELECT count(*) as nn FROM clients WHERE nick = upper('''+p_code1+''') and id_office=1');
        OraSQL.Open;
       // SELECT count(id_clients) as nn, SUMM as xx FROM CASH_TMP WHERE id_clients = (SELECT id_clients FROM clients WHERE nick = upper('r chl') and id_office=1)  GROUP BY summ;
       //убираю запятую в введенной кнопками сумме и меняю на точку:
       // if pos(',',p_code2)<>0 then begin zpt:=pos(',',p_code2); delete(p_code2,zpt,1); insert('.',p_code2,zpt);end;
        if AnsiUpperCase(p_code1)<>'R CHL' then flag:=1; //ок

         inf := '';
        end;

      //OraSQL.Open;
      if (OraSQL.FieldByName('nn').AsInteger = 1) and (flag=1) then
      //if (OraSQL.FieldByName('xx').AsInteger <= (RoundTo( strtofloat(p_code2),-2 ))) then
      begin
        flag:=0; //сбросил проверку
        resp_text := 'Проверка прошла успешно';
        sendProverka(resp_text,inf, '0');
        mmLog.Lines.Add(resp_text);
        mmLog.Lines.Add(inf);
        AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
        AResponseInfo.ResponseNo := 200;// все успешно
        //AResponseInfo.ContentText := resp_text;
        AResponseInfo.ContentStream := TFileStream.Create('htdocs/proverka.xml',fmShareDenyNone);
      end
      else
      begin
        flag:=0; //сбросил проверку
        resp_text := 'Данные о клиенте не найдены';
        inf:='';
        sendProverka(resp_text,inf,'100');
        mmLog.Lines.Add(resp_text);
        mmLog.Lines.Add(inf);
        AResponseInfo.ContentType := 'Content-type: text/xml; charset=windows-1251';
        AResponseInfo.ResponseNo := 200;// все успешно
        //AResponseInfo.ContentText := resp_text;
        AResponseInfo.ContentStream := TFileStream.Create('htdocs/proverka.xml',fmShareDenyNone);
      end;
    end    // <-   на этом шаге первый http-запрос "проверка" выполнен
    else
    begin  //нажатие "оплата":
      //  l1:
       //теперь вносятся живые деньги и формируется 2й http-запрос "оплата":

      // Платеж по ИД кассового дня
       if TryStrToInt(p_code1,i) then begin
        OraSQL.SQL.Add('SELECT SUMM as bb FROM CASH_TMP WHERE ID_CASH_TMP = '+p_code1);
        OraSQL.Open;
        if OraSQL.FieldByName('bb').Asfloat <= (RoundTo( p_amount,-2 ))  then begin // было asinteger и работало
           raznica:=   RoundTo( p_amount,-2 )-OraSQL.FieldByName('bb').AsInteger; // пока не знаю куда девать raznica
           OraSQL.Close;  OraSQL.SQL.Clear;
          // OraSQL.SQL.Add('UPDATE CASH_TMP SET in_rub='+ FloatToStr( RoundTo( p_amount,-2 ) ) +', info='''+floatToStr(p_payid)+''', corrector='''+p_login+''', ddate_done=sysdate, date_change=sysdate WHERE ID_CASH_TMP = '+p_code1);
           OraSQL.SQL.Add('UPDATE CASH_TMP SET in_rub='+ FloatToStr( RoundTo( p_amount,-2 ) ) +',out_rub='+ FloatToStr( RoundTo( p_amount,-2 ) ) + ', info='''+floatToStr(p_payid)+''', corrector='''+p_login+''', ddate_done=sysdate, date_change=sysdate WHERE ID_CASH_TMP = '+p_code1);
        end;// else goto l1; 
        end;

      // Предоплата по коду клиента (для предоплаты проверка денег не нужна)
      if not TryStrToInt(p_code1,i) then begin
      //OraSQL.SQL.Add('SELECT b.SUMM as bb FROM clients a, CASH_TMP b WHERE a.nick = upper('''+p_code1+''') and a.id_office=1 and a.id_clients=b.id_clients');
      //OraSQL.Open;
      //if OraSQL.FieldByName('bb').AsInteger <= (RoundTo( p_amount,-2 ))  then begin
      //OraSQL.Close;  OraSQL.SQL.Clear;
      OraSQL.SQL.Add(' begin cash_pkg.add_cash_record_simple('''+p_code1+''','+ FloatToStr( RoundTo( p_amount,-2 ) ) +','''+p_login+'''); end; ');
      //end else goto l1;
      end;

      OraSQL.Execute;
      SelectSession.Commit;

      flag:=0;//сбросил проверку
      resp_text := 'Платеж осуществлен успешно';
      sendIndex(resp_text, floatToStr(p_payid));
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

procedure TfrmMainWebService.sendProverka(resp_text: string; inf:string; err_code: string);
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
          writeln(f,'<ADDINFO>'+inf+'</ADDINFO>');
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
