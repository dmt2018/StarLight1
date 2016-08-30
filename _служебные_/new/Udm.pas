unit Udm;

interface

uses
  Windows, Forms, Dialogs, sysUtils, Classes, star_lib, DBAccess, Ora, Messages,
  MemDS, IniFiles, DB, ImgList, Controls, cxGraphics;


type
  Tdm = class(TDataModule)
    OraSession: TOraSession;
    cdsOffices: TOraQuery;
    cdsDeps: TOraQuery;
    cdsSQL: TOraQuery;
    cdsSettings: TOraQuery;
    cxImglst: TcxImageList;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure OraSessionAfterConnect(Sender: TObject);
    //procedure SaveIni;
  private
    { Private declarations }
    //procedure LoadIni;
  public
    { Public declarations }
    //это пока не использую:
    id_office: integer;
    CUR_DEPT_ID: integer;
    CUR_DEPT_NAME: string;

    //r_edit, r_delete, r_print : boolean;
  end;

var
  dm: Tdm;
  verApplication :String;          // Версия программы
  strAppIniName  :String;          // Полный путь к файлу *.ini
  strConnString  :String;          // Строка коннекта
  strServerName  :String;          // Имя/IP-адрес сервера
  intServerPort  :Integer;         // Порт сервера
  strDataBaseName:String;          // Имя базы данных
  strUserName    :String;          // Текущий пользователь
  strPassword    :String;          // Пароль пользователя
  blShowFormLogin:Boolean;         // Признак отображения формы логина

  strPath     :String;          // Полный путь к файлу приложения
  intDefFont  :Integer;         // Шрифт по умолчанию
  intDefDept  :Integer;         // Отдел по умолчанию
  intDefOffice:Integer;         // Офис по умолчанию


implementation

uses uLogin;

{$R *.dfm}


procedure Tdm.DataModuleCreate(Sender: TObject);
var recFileInfo :TFixedFileInfo;
    i           :integer;
    strMsgError :String;
begin
  strMsgError := '';
  strPath     := ExtractFilePath(Application.ExeName); // путь к ехе

  // получение версии файла
  recFileInfo    :=  FileInfo(Application.ExeName);
  verApplication := 'Версия ' + IntToStr(recFileInfo.wFileVersionLS) + '.' + IntToStr(recFileInfo.wFileVersionMS) + '.' +
                                IntToStr(recFileInfo.wProductVersionLS) + '.' + IntToStr(recFileInfo.wProductVersionMS);
   // caption главной формы:
  Application.Title := Application.Title;
  
  // загрузка формы Login
  // проверяем есть ли командная строка или показываем окно логона
  blShowFormLogin := CreateLoginForm;
  try
    i := 0;
    while (blShowFormLogin = True) do
    begin
      i := i + 1;
        try
          OraSession.Connected := True;
          Break;
        except on E: Exception do
          begin
            strMsgError := E.Message;
            if Pos('ORA-01005',E.Message) <>0 then
               strMsgError:='Указан пустой пароль. Вход в систему запрещен.';
            if Pos('ORA-01017',E.Message) <>0 then
               strMsgError:='Неверное имя пользователя или пароль.';
            if (Pos('ORA-12154',E.Message) <>0) OR (Pos('ORA-12500',E.Message) <>0 ) then
               strMsgError := 'Не удаётся установить соединение с сервером БД.';

            if i < 4 then
            begin
               Application.MessageBox(PChar(Format('Ошибка подключения к БД: %s',[strMsgError])),
                          'Подключение', MB_ICONERROR);

               blShowFormLogin := CreateLoginForm;
            end
            else
            begin
               Application.MessageBox(PChar(Format('Ошибка подключения к БД: %s '+#13#10+'Обратитесь к администратору.', [strMsgError])),
                          'Подключение', MB_ICONERROR);

               Exit;
            end;// if i<4
          end;// on E.Exception
        end;//try
    end;//while (blShowFormLogin = True)
  finally
  end;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
 OraSession.Close;
end;


procedure Tdm.OraSessionAfterConnect(Sender: TObject);
begin
    intDefOffice := GetOfficeID;//по умолч.Старлайт (Москва)

   {cdsOffices.Open;
    cdsDeps.ParamByName('login_').Value := UpperCase(OraSession.Username);
    cdsDeps.ParamByName('cursor_').AsCursor;
    cdsDeps.Open; }

   // все настройки сохраняю в переменные и не закрываю cdssettings
   cdssettings.ParamByName('cursor_').AsCursor;
   cdssettings.Open;
   cdssettings.First;
   while not cdssettings.Eof do
    begin
      if (orasession.Username = cdssettings.FieldByName('DB_USER').value) then begin
        if (cdssettings.FieldByName('STG_KEY').value = 'FontSize')   then intDefFont  := cdssettings.FieldByName('STG_VALUE').Asinteger;
        if (cdssettings.FieldByName('STG_KEY').value = 'Department') then intDefDept  := cdssettings.FieldByName('STG_VALUE').Asinteger;
      end;
    cdssettings.Next;
    end;

end;

  {
procedure TDM.LoadIni;
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := strPath+'ini\'+OraSession.Username+'.ini';
    RegIni := TIniFile.Create(path);

    intDefFont := RegIni.ReadInteger('FontSize',   'Value', 9);
    intDefDept := RegIni.ReadInteger('Department', 'Value', 0);
  finally
    RegIni.Free;
  end;
end;

procedure TDM.SaveIni;
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := strPath+'ini\'+OraSession.Username+'.ini';
    RegIni := TIniFile.Create(path);

    RegIni.WriteInteger('FontSize',   'Value', intDefFont);
    RegIni.WriteInteger('Department', 'Value', intDefDept);
  finally
    RegIni.Free;
  end;
end;
      }

end.
