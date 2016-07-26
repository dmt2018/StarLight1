unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AppEvnts, ActnList, StdActns, StdCtrls,  Buttons, ExtCtrls, ComCtrls,
  ToolWin, ImgList,IniFiles, ActnMan, ActnCtrls,UDM, DateUtils, DB, MemDS, DBAccess, Ora, cxGraphics,ShellAPI;

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
    actAbout: TAction;
    stbMain: TStatusBar;
    ActHelp: TAction;
    mmiaHelp: TMenuItem;
    WindowCascade: TAction;
    WindowTileHorizontal: TAction;
    WindowTileVertical: TAction;
    WindowMinimizeAll: TAction;
    WindowArrangeAll: TAction;
    procedure actAboutExecute(Sender: TObject);
    procedure mnNSI_CurrencyClick(Sender: TObject);
    procedure mmiSettingsClick(Sender: TObject);
    procedure mmiAdminToolsClick(Sender: TObject);
    procedure apevMainHint(Sender: TObject);
    procedure apevMainMessage(var Msg: tagMSG; var Handled: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure miExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActHelpExecute(Sender: TObject);
    procedure WindowCascadeExecute(Sender: TObject);
    procedure WindowMinimizeAllExecute(Sender: TObject);
    procedure WindowArrangeAllExecute(Sender: TObject);
    procedure WindowTileHorizontalExecute(Sender: TObject);
    procedure WindowTileVerticalExecute(Sender: TObject);
  private
    { Private declarations }
    porasessStarLight:POraSession;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
 uses info_f, UNSICurrency, USettings, UAdmin,Orient;
{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
// BOF - Работа со статусбаром + вход/выход
////////////////////////////////////////////////////////////////////////////////

// событие перед выходом
procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageBox(Application.Handle,'Вы действительно хотите выйти из программы ?',
                PChar(Format('%s',[Application.Title])),MB_ICONQUESTION + MB_YESNO + mb_DefButton2 ) = mrYES then
     CanClose := True
  else CanClose := False;
end;

// вывод юзера в 2_статусбар:
procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //porasessStarLight := @DM.OraSession;
  stbMain.Panels[0].Text := verApplication;
  stbMain.Panels[1].Text := ' Сервер: ['+strServerName+':'+IntToStr(intServerPort)+'] ';
  stbMain.Panels[2].Text := ' Пользователь: ['+strUserName+'] ';
  stbMain.Refresh;
  self.Caption := Application.Title;

end;


// вывод справки
procedure TfrmMain.ActHelpExecute(Sender: TObject);
begin
  Shellexecute(handle,'Open',PChar(strpath+'\DOC\123.docx'),nil,nil,sw_restore);
end;

procedure TfrmMain.apevMainHint(Sender: TObject);
begin
  stbMain.Panels[3].Text := GetLongHint(Application.Hint);
end;

// вывод запущеной проги в 1_статусбар:
procedure TfrmMain.apevMainMessage(var Msg: tagMSG; var Handled: Boolean);
begin
{
  if Assigned(ActiveMDIChild) AND (ActiveMDIChild.Active) then
    stbMain.Panels[1].Text := ' '+ActiveMDIChild.Caption
  else stbMain.Panels[1].Text := '';
}
end;

////////////////////////////////////////////////////////////////////////////////
// EOF - Работа со статусбаром + вход/выход
////////////////////////////////////////////////////////////////////////////////


//форма о программе
procedure TfrmMain.actAboutExecute(Sender: TObject);
begin
  frmAbout.ShowInfo;
end;


//кнопка выход mainmenu
procedure TfrmMain.miExitClick(Sender: TObject);
begin
  close;
end;

//форма Администрирование
procedure TfrmMain.mmiAdminToolsClick(Sender: TObject);
begin
  { if not Assigned(frmAdmin) then
  begin
    frmAdmin := TfrmAdmin.Create(Application);
    try
      frmAdmin.Show;
      dm.LoadFormState(frmAdmin); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmAdmin.WindowState = wsMinimized) then frmAdmin.WindowState := wsNormal;  }
   frmAdmin.ShowInfo;
end;




//форма Настройки
procedure TfrmMain.mmiSettingsClick(Sender: TObject);
begin
    if not Assigned(frmSettings) then
  begin
    frmSettings := TfrmSettings.Create(Application);
    try
      frmSettings.Show;
      dm.LoadFormState(frmSettings); //полож.окна
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
      dm.LoadFormState(frmNSICurreny); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmNSICurreny.WindowState = wsMinimized) then frmNSICurreny.WindowState := wsNormal;
end;

//разворачиваю окна
procedure TfrmMain.WindowArrangeAllExecute(Sender: TObject);
 var iCount: Integer;
begin
   for iCount:=0 to MDIChildCount-1 do 
   MDIChildren[iCount].WindowState:= wsNormal;
 //if Assigned(frmNSICurreny) and (frmNSICurreny.WindowState = wsMinimized) then frmNSICurreny.WindowState:= wsNormal;
 //if Assigned(frmAdmin) and (frmAdmin.WindowState = wsMinimized) then frmAdmin.WindowState:= wsNormal;
end;

//окна каскадом
procedure TfrmMain.WindowCascadeExecute(Sender: TObject);
 var iCount:integer;
     {FForms : TList;
     FRect: TRect;}
begin
      for iCount:=0 to MDIChildCount-1 do
      begin
        MDIChildren[iCount].Left := iCount * 20;
        MDIChildren[iCount].Top := iCount * 20;
      end;
  {FForms := TList.Create;
  FRect := Screen.WorkAreaRect;
  if Assigned(frmNSICurreny) then FForms.Add(frmNSICurreny);
  if Assigned(frmAdmin) then FForms.Add(frmAdmin);
  if FForms.Count = 0 then EXIT;
  for i := 0 to FForms.Count - 1 do begin
    TForm(FForms[i]).Left := FRect.Left + (i + 1) * 20;
    TForm(FForms[i]).Top := FRect.Top + (i + 1) * 20;
  end;
  FForms.Destroy;}
end;

//сворачиваю окна
procedure TfrmMain.WindowMinimizeAllExecute(Sender: TObject);
 var iCount: Integer;
begin
   for iCount:=MDIChildCount-1 downto 0 do 
   MDIChildren[iCount].WindowState:= wsMinimized;
end;

//выравнивание окон по гориз.
procedure TfrmMain.WindowTileHorizontalExecute(Sender: TObject);
begin
  TileMode:=tbHorizontal;
  Tile;
end;

// выравнивание окон по верт.
procedure TfrmMain.WindowTileVerticalExecute(Sender: TObject);
begin
   TileMode:=tbVertical;
   Tile;
end;

end.
