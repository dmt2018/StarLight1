unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AppEvnts, ActnList, StdActns, StdCtrls,  Buttons, ExtCtrls, ComCtrls,
  ToolWin, ImgList,IniFiles, ActnMan, ActnCtrls,UDM, DateUtils, DB, MemDS, DBAccess, Ora, cxGraphics;

  type
  POraSession = ^TOraSession;

// структура возвращаемой записи
type
  TRecResult  = record
    intCodeErr   : Integer;    // Код ошибки
    strMsgErr    : WideString; // Сообщение об ошибке
  end;

// структура передаваемых данных вызова плагинов/модулей
type TRecParams = record
     intADD     :Integer;  // Добавление
     intEDIT    :Integer;  // Редактирование
     intDELETE  :Integer;  // Удаление
     intPRINT   :Integer;  // Печать
     intPARAM1  :Integer;  // Доп. параметр 1
     intPARAM2  :Integer;  // Доп. параметр 2
     intPARAM3  :Integer;  // Доп. параметр 3
end;

//Инициализация функций для создания/удаления плагинов/модулей
type
  TCreateChildForm  = function(DllHandle:THandle;
                               AppHandle:TApplication;
                               AppScreen:TScreen;
                               AppHintWindowClass:THintWindowClass;
                               FormHandle:THandle;
                               OraSessConnString:AnsiString;
                               recParams:TRecParams):TRecResult;stdcall;
type
  TDestroyChildForm = function():TRecResult;stdcall;

type
  TfrmMain = class(TForm)
    mmMain: TMainMenu;
    miASOUP: TMenuItem;
    miEdit: TMenuItem;
    miByx: TMenuItem;
    miOtdels: TMenuItem;
    miDirector: TMenuItem;
    mnNSI: TMenuItem;
    miTools: TMenuItem;
    miWindow: TMenuItem;
    miHelp: TMenuItem;
    miExit: TMenuItem;
    mmiSpravNomen: TMenuItem;
    mmiSprav: TMenuItem;
    mmiPrihodUhod: TMenuItem;
    mmiCurrEx: TMenuItem;
    mmiUndo: TMenuItem;
    mmiCut: TMenuItem;
    mmiCopy: TMenuItem;
    mmiPaste: TMenuItem;
    mmiRegClients: TMenuItem;
    mmiKasses: TMenuItem;
    mmiBrigIncomings: TMenuItem;
    mmiZakaz: TMenuItem;
    mmiRazZakaz: TMenuItem;
    mmiInvoice: TMenuItem;
    mmiSklad: TMenuItem;
    mmiPrices: TMenuItem;
    mmiStats: TMenuItem;
    mnNSI_Currency: TMenuItem;
    mmiAdminTools: TMenuItem;
    mmiSettings: TMenuItem;
    mmiWindowCascade: TMenuItem;
    mmiWindowTileHor: TMenuItem;
    mmiWindowTileVer: TMenuItem;
    mmiWindowMinimize: TMenuItem;
    mmiWindowArrange: TMenuItem;
    mmiAbout: TMenuItem;
    apevMain: TApplicationEvents;
    actlstMain: TActionList;
    mmiDebitors: TMenuItem;
    mmiPretenz: TMenuItem;
    mmiByx: TMenuItem;
    EditUndo: TEditUndo;
    EditCut: TEditCut;
    EditCopy: TEditCopy;
    EditPaste: TEditPaste;
    WindowCascade: TWindowCascade;
    WindowTileHorizontal: TWindowTileHorizontal;
    WindowTileVertical: TWindowTileVertical;
    WindowMinimizeAll: TWindowMinimizeAll;
    WindowArrangeAll: TWindowArrange;
    actAbout: TAction;
    stbMain: TStatusBar;
    ActHelp: TAction;
    Action11: TMenuItem;
    procedure actAboutExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure mnNSI_CurrencyClick(Sender: TObject);
    procedure mmiSettingsClick(Sender: TObject);
    procedure mmiAdminToolsClick(Sender: TObject);
    procedure apevMainHint(Sender: TObject);
    procedure apevMainMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
    porasessStarLight:POraSession;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
 uses info_f, UNSICurrency, USettings, UAdmin;
{$R *.dfm}

//форма о программе
procedure TfrmMain.actAboutExecute(Sender: TObject);
begin
 if not Assigned(about) then
  begin
    about := Tabout.Create(Application);
    try
      about.Show;

    finally
      null;
    end;
  end
  else
    if (about.WindowState = wsMinimized) then about.WindowState := wsNormal;
end;

// форма справка
procedure TfrmMain.actHelpExecute(Sender: TObject);
begin
showmessage('');   // нада выяснить почему неактивна
end;


procedure TfrmMain.Action1Execute(Sender: TObject);
begin
    showmessage('');
end;

// вывод справки в 0_статусбар:
procedure TfrmMain.apevMainHint(Sender: TObject);
begin
  stbMain.Panels[0].Text:= GetLongHint(Application.Hint);
end;

// вывод запущеной проги в 1_статусбар:
procedure TfrmMain.apevMainMessage(var Msg: tagMSG; var Handled: Boolean);
begin
  if Assigned(ActiveMDIChild) AND (ActiveMDIChild.Active) then
    stbMain.Panels[1].Text:=' '+ActiveMDIChild.Caption
  else stbMain.Panels[1].Text:='';
end;

// событие перед выходом
procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageBox(Application.Handle,'Вы действительно хотите выйти из программы ?',
                PChar(Format('%s',[Application.Title])),MB_ICONQUESTION  or MB_YESNO )=mrYES then
     CanClose:=True
  else CanClose:=False;
end;

// вывод юзера в 2_статусбар:
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  porasessStarLight:=@DM.OraSession;
  stbMain.Panels[2].Text:=' Сервер: ['+strServerName+':'+IntToStr(intServerPort)+'] - Пользователь: ['+strUserName+']';
  stbMain.Panels[3].Text:= verApplication;
  stbMain.Refresh;
  self.Caption := Application.Title;
end;

//кнопка выход mainmenu
procedure TfrmMain.miExitClick(Sender: TObject);
begin
 close;
end;

//форма Администрирование
procedure TfrmMain.mmiAdminToolsClick(Sender: TObject);
begin
   if not Assigned(frmAdmin) then
  begin
    frmAdmin := TfrmAdmin.Create(Application);
    try
      frmAdmin.Show;
    finally
      null;
    end;
  end
  else
    if (frmSettings.WindowState = wsMinimized) then frmSettings.WindowState := wsNormal;
end;

//форма Настройки
procedure TfrmMain.mmiSettingsClick(Sender: TObject);
begin
    if not Assigned(frmSettings) then
  begin
    frmSettings := TfrmSettings.Create(Application);
    try
      frmSettings.Show;
    finally
      null;
    end;
  end
  else
    if (frmSettings.WindowState = wsMinimized) then frmSettings.WindowState := wsNormal;
end;

//форма курсы валют
procedure TfrmMain.mnNSI_CurrencyClick(Sender: TObject);
begin
     if not Assigned(frmNSICurreny) then
  begin
    frmNSICurreny := TfrmNSICurreny.Create(Application);
    try
      frmNSICurreny.Show;
    finally
      null;
    end;
  end
  else
    if (frmNSICurreny.WindowState = wsMinimized) then frmNSICurreny.WindowState := wsNormal;
end;

end.
