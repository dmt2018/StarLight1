unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, star_lib,
  Dialogs, Menus, AppEvnts, ActnList, StdActns, StdCtrls,  Buttons, ExtCtrls, ComCtrls,
  ToolWin, ImgList,IniFiles, ActnMan, ActnCtrls,UDM, DateUtils, DB, MemDS, DBAccess, Ora,
  cxGraphics, ShellAPI;

  type
  POraSession = ^TOraSession;

// ��������� ������������ ������
type
  TRecResult  = record
    intCodeErr   : Integer;    // ��� ������
    strMsgErr    : WideString; // ��������� �� ������
  end;

type
  TfrmMain = class(TForm)
    mmMain: TMainMenu;
    micom: TMenuItem;
    miEdit: TMenuItem;
    miByx: TMenuItem;
    miOtdels: TMenuItem;
    miZP: TMenuItem;
    mnNSI: TMenuItem;
    miTools: TMenuItem;
    miWindow: TMenuItem;
    miHelp: TMenuItem;
    miExit: TMenuItem;
    mmiStatis: TMenuItem;
    mmiSec: TMenuItem;
    mmiUndo: TMenuItem;
    mmiCut: TMenuItem;
    mmiCopy: TMenuItem;
    mmiPaste: TMenuItem;
    mmiKasses: TMenuItem;
    mmiKasSvod: TMenuItem;
    mmiZakaz: TMenuItem;
    mmiRazZakaz: TMenuItem;
    mmiInvoice: TMenuItem;
    mmiSklad: TMenuItem;
    mmiPrices: TMenuItem;
    mmiPrList: TMenuItem;
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
    mnNSI_Regions: TMenuItem;
    mnNSI_Cityes: TMenuItem;
    mnNSI_Adver: TMenuItem;
    mnNSI_ClientsType: TMenuItem;
    mnNSI_Dep: TMenuItem;
    mnNSI_Job: TMenuItem;
    mnNSI_Countries: TMenuItem;
    mnNSI_Supplier: TMenuItem;
    mnNSI_pcs: TMenuItem;
    miNomen: TMenuItem;
    miNomen_Nom: TMenuItem;
    miNomen_Name: TMenuItem;
    miNomen_SupName: TMenuItem;
    miNomen_TS: TMenuItem;
    miNomen_Colour: TMenuItem;
    miNomen_Spec: TMenuItem;
    miNomen_Fas: TMenuItem;
    miClient: TMenuItem;
    miClient_Reg: TMenuItem;
    miClient_Deb: TMenuItem;
    mmiFito: TMenuItem;
    mmiSpez: TMenuItem;
    mmiSales: TMenuItem;
    mmiTrans: TMenuItem;
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
    procedure mnNSI_RegionsClick(Sender: TObject);
    procedure mnNSI_CityesClick(Sender: TObject);
    procedure mnNSI_AdverClick(Sender: TObject);
    procedure mnNSI_ClientsTypeClick(Sender: TObject);
    procedure miClient_RegClick(Sender: TObject);
    procedure mnNSI_DepClick(Sender: TObject);
    procedure mnNSI_JobClick(Sender: TObject);
    procedure mnNSI_CountriesClick(Sender: TObject);
    procedure mnNSI_SupplierClick(Sender: TObject);
    procedure mnNSI_pcsClick(Sender: TObject);
    procedure mmiTransClick(Sender: TObject);
  private
    { Private declarations }
    porasessStarLight: POraSession;
  public
    { Public declarations }
    page:integer;
  end;

var
  frmMain: TfrmMain;

implementation

uses info_f, UNSICurrency, USettings, UAdmin,  URegistration, UTrans, Urefbooks;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
// BOF - ������ �� ����������� + ����/�����
////////////////////////////////////////////////////////////////////////////////

// ������� ����� �������
procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageBox(Application.Handle,'�� ������������� ������ ����� �� ��������� ?',
                PChar(Format('%s',[Application.Title])),MB_ICONQUESTION + MB_YESNO + mb_DefButton2 ) = mrYES then
     CanClose := True
  else CanClose := False;
end;

// ����� ����� � 2_���������:
procedure TfrmMain.FormCreate(Sender: TObject);
 //var  s1, s2, s3, s4: boolean;
begin
  //porasessStarLight := @DM.OraSession;
  stbMain.Panels[0].Text := verApplication;
  stbMain.Panels[1].Text := ' ������: ['+strServerName+':'+IntToStr(intServerPort)+'] ';
  stbMain.Panels[2].Text := ' ������������: ['+strUserName+'] ';
  stbMain.Refresh;
  self.Caption := Application.Title;

  // ��������� ����������� ������ � ���� ��� ������ �������� ����
  DM.cdsRules.first;
  DM.cdsRules.FilterSQL := 'c_start=1';
  DM.cdsRules.Filtered  := true;

  mmiAdminTools.Enabled   := DM.cdsRules.Locate('ID_PROGRAMS',1,[]);
  miNomen.Enabled         := DM.cdsRules.Locate('ID_PROGRAMS',2,[]);
  mnNSI.Enabled           := DM.cdsRules.Locate('ID_PROGRAMS',4,[]);
  mnNSI.Enabled           := DM.cdsRules.Locate('ID_PROGRAMS',4,[]);
  miClient_Reg.Enabled    := DM.cdsRules.Locate('ID_PROGRAMS',5,[]);
  miClient_Deb.Enabled    := DM.cdsRules.Locate('ID_PROGRAMS',17,[]);
  mmiSklad.Enabled        := DM.cdsRules.Locate('ID_PROGRAMS',15,[]);
  mmiInvoice.Enabled      := DM.cdsRules.Locate('ID_PROGRAMS',9,[]);
  mmiZakaz.Enabled        := DM.cdsRules.Locate('ID_PROGRAMS',8,[]);
  mmiRazZakaz.Enabled     := DM.cdsRules.Locate('ID_PROGRAMS',18,[]);
  mmiFito.Enabled         := DM.cdsRules.Locate('ID_PROGRAMS',21,[]);
  mmiKasses.Enabled       := DM.cdsRules.Locate('ID_PROGRAMS',11,[]);
  mmiKasSvod.Enabled      := DM.cdsRules.Locate('ID_PROGRAMS',12,[]);
  mmiByx.Enabled          := DM.cdsRules.Locate('ID_PROGRAMS',14,[]);
  mmiPretenz.Enabled      := DM.cdsRules.Locate('ID_PROGRAMS',10,[]);
  miZP.Enabled            := DM.cdsRules.Locate('ID_PROGRAMS',16,[]);
  mmiSales.Enabled        := DM.cdsRules.Locate('ID_PROGRAMS',20,[]);
  mnNSI_Currency.Enabled  := DM.cdsRules.Locate('ID_PROGRAMS',13,[]);
  mmiStatis.Enabled       := DM.cdsRules.Locate('ID_PROGRAMS',19,[]);
  mmiSec.Enabled          := DM.cdsRules.Locate('ID_PROGRAMS',10000204,[]);

  DM.cdsRules.FilterSQL := '';
  DM.cdsRules.Filtered  := false;
end;


// ����� �������
procedure TfrmMain.ActHelpExecute(Sender: TObject);
begin
  CheckShell(Handle, PChar(strpath + '\DOC\Strarlight CRM documentation.doc'));
end;

procedure TfrmMain.apevMainHint(Sender: TObject);
begin
  stbMain.Panels[3].Text := GetLongHint(Application.Hint);
end;

// ����� ��������� ����� � 1_���������:
procedure TfrmMain.apevMainMessage(var Msg: tagMSG; var Handled: Boolean);
begin
{
  if Assigned(ActiveMDIChild) AND (ActiveMDIChild.Active) then
    stbMain.Panels[1].Text := ' '+ActiveMDIChild.Caption
  else stbMain.Panels[1].Text := '';
}
end;

////////////////////////////////////////////////////////////////////////////////
// EOF - ������ �� ����������� + ����/�����
////////////////////////////////////////////////////////////////////////////////

//����� � ���������
procedure TfrmMain.actAboutExecute(Sender: TObject);
begin
  frmAbout.MainFormShow;
end;

//������ ����� mainmenu
procedure TfrmMain.miClient_RegClick(Sender: TObject);
begin
  frmRegistration.MainFormShow;
end;

  //������ ����� mainmenu
procedure TfrmMain.miExitClick(Sender: TObject);
begin
  close;
end;

//����� �����������������
procedure TfrmMain.mmiAdminToolsClick(Sender: TObject);
begin
  frmAdmin.MainFormShow;
end;

//����� ���������
procedure TfrmMain.mmiSettingsClick(Sender: TObject);
begin
  frmSettings.MainFormShow;
end;

//����� ��������������
procedure TfrmMain.mmiTransClick(Sender: TObject);
begin
  frmTrans.MainFormShow;
end;

//����� �������
procedure TfrmMain.mnNSI_AdverClick(Sender: TObject);
begin
  page:=2;
  //frmPromo.MainFormShow;
  frmrefbooks.MainFormShow;
end;

 //����� ������
procedure TfrmMain.mnNSI_CityesClick(Sender: TObject);
begin
 page:=1;
  //frmCity.MainFormShow;
 frmrefbooks.MainFormShow;
end;

 //����� ���� ��������
procedure TfrmMain.mnNSI_ClientsTypeClick(Sender: TObject);
begin
  page:=3;
  //frmClientTypes.MainFormShow;
  frmrefbooks.MainFormShow;
end;

//����� �����
procedure TfrmMain.mnNSI_CountriesClick(Sender: TObject);
begin
  page:=6;
  //frmCountries.MainFormShow;
  frmrefbooks.MainFormShow;
end;

//����� ����� �����
procedure TfrmMain.mnNSI_CurrencyClick(Sender: TObject);
begin
  frmNSICurreny.MainFormShow;
end;

//����� ������
procedure TfrmMain.mnNSI_DepClick(Sender: TObject);
begin
  page:=4;
  //frmDepartments.MainFormShow;
  frmrefbooks.MainFormShow;
end;

//����� ���������
procedure TfrmMain.mnNSI_JobClick(Sender: TObject);
begin
 page:=5;
 frmrefbooks.MainFormShow;
 //frmPositions.MainFormShow;
end;

//����� ��.�����.
procedure TfrmMain.mnNSI_pcsClick(Sender: TObject);
begin
  page:=8;
  frmrefbooks.MainFormShow;
  //frmUnits.MainFormShow;
end;

//����� �������
procedure TfrmMain.mnNSI_RegionsClick(Sender: TObject);
begin
 page:=0;
//  frmRegions.MainFormShow;
 frmrefbooks.MainFormShow;
end;

//����� ����������
procedure TfrmMain.mnNSI_SupplierClick(Sender: TObject);
begin
  page:=7;
  frmrefbooks.MainFormShow;
  //frmSuppliers.MainFormShow;
end;

//������������ ����
procedure TfrmMain.WindowArrangeAllExecute(Sender: TObject);
 var iCount: Integer;
begin
   for iCount := 0 to MDIChildCount - 1 do
   MDIChildren[iCount].WindowState := wsNormal;
 //if Assigned(frmNSICurreny) and (frmNSICurreny.WindowState = wsMinimized) then frmNSICurreny.WindowState:= wsNormal;
 //if Assigned(frmAdmin) and (frmAdmin.WindowState = wsMinimized) then frmAdmin.WindowState:= wsNormal;
end;

//���� ��������
procedure TfrmMain.WindowCascadeExecute(Sender: TObject);
 var iCount: integer;
     {FForms : TList;
     FRect: TRect;}
begin
      for iCount := 0 to MDIChildCount - 1 do
      begin
        MDIChildren[iCount].Left := iCount * 20;
        MDIChildren[iCount].Top  := iCount * 20;
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

//���������� ����
procedure TfrmMain.WindowMinimizeAllExecute(Sender: TObject);
 var iCount: Integer;
begin
   for iCount := MDIChildCount - 1 downto 0 do
   MDIChildren[iCount].WindowState := wsMinimized;
end;

//������������ ���� �� �����.
procedure TfrmMain.WindowTileHorizontalExecute(Sender: TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;

// ������������ ���� �� ����.
procedure TfrmMain.WindowTileVerticalExecute(Sender: TObject);
begin
   TileMode := tbVertical;
   Tile;
end;

end.
