unit statistic_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, DBAccess, Ora, MemDS, cxPC,
  cxGridExportLink, ShellApi, PI_Library_reg;

type
  Tstatistic = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    btnClose: TcxButton;
    pcStatistic: TcxPageControl;
    tshMain: TcxTabSheet;
    tshItogo: TcxTabSheet;
    tshPerDay: TcxTabSheet;
    Panel10: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Panel2: TPanel;
    StringGrid1: TStringGrid;
    Panel3: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Panel6: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Panel7: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Panel8: TPanel;
    Label5: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label35: TLabel;
    Label40: TLabel;
    Panel9: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label34: TLabel;
    Label39: TLabel;
    cdsItogo: TOraQuery;
    dsItogo: TOraDataSource;
    grItogoV: TcxGridDBTableView;
    grItogoL: TcxGridLevel;
    grItogo: TcxGrid;
    grItogoVPAYDESK: TcxGridDBColumn;
    grItogoVSUMM_IN: TcxGridDBColumn;
    grItogoVSUMM_OUT: TcxGridDBColumn;
    grItogoVTOTAL_SUMM: TcxGridDBColumn;
    grItogoVOSTATOK: TcxGridDBColumn;
    cdsItogoDD: TOraQuery;
    dsItogoDD: TOraDataSource;
    grItogoVSUMM_IN_D: TcxGridDBColumn;
    grItogoVSUMM_OUT_D: TcxGridDBColumn;
    grItogoVTOTAL_SUMM_D: TcxGridDBColumn;
    grItogoVOSTATOK_D: TcxGridDBColumn;
    grItogoVSUMM_IN_E: TcxGridDBColumn;
    grItogoVSUMM_OUT_E: TcxGridDBColumn;
    grItogoVTOTAL_SUMM_E: TcxGridDBColumn;
    grItogoVOSTATOK_E: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    grItogoDD: TcxGrid;
    grItogoDDV: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    grItogoDDL: TcxGridLevel;
    grItogoDDVR_DDATE: TcxGridDBColumn;
    pmMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    cdsItogoPAYDESK: TFloatField;
    cdsItogoSUMM_IN: TFloatField;
    cdsItogoSUMM_OUT: TFloatField;
    cdsItogoTOTAL_SUMM: TFloatField;
    cdsItogoOSTATOK: TFloatField;
    cdsItogoSUMM_IN_D: TFloatField;
    cdsItogoSUMM_OUT_D: TFloatField;
    cdsItogoTOTAL_SUMM_D: TFloatField;
    cdsItogoOSTATOK_D: TFloatField;
    cdsItogoSUMM_IN_E: TFloatField;
    cdsItogoSUMM_OUT_E: TFloatField;
    cdsItogoTOTAL_SUMM_E: TFloatField;
    cdsItogoOSTATOK_E: TFloatField;
    cdsItogoDDR_DDATE: TDateTimeField;
    cdsItogoDDPAYDESK: TFloatField;
    cdsItogoDDSUMM_IN: TFloatField;
    cdsItogoDDSUMM_OUT: TFloatField;
    cdsItogoDDTOTAL_SUMM: TFloatField;
    cdsItogoDDOSTATOK: TFloatField;
    cdsItogoDDSUMM_IN_D: TFloatField;
    cdsItogoDDSUMM_OUT_D: TFloatField;
    cdsItogoDDTOTAL_SUMM_D: TFloatField;
    cdsItogoDDOSTATOK_D: TFloatField;
    cdsItogoDDSUMM_IN_E: TFloatField;
    cdsItogoDDSUMM_OUT_E: TFloatField;
    cdsItogoDDTOTAL_SUMM_E: TFloatField;
    cdsItogoDDOSTATOK_E: TFloatField;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  statistic: Tstatistic;

implementation

uses DataM;

{$R *.dfm}


procedure Tstatistic.N1Click(Sender: TObject);
begin
  if pcStatistic.ActivePageIndex = 2 then
     grItogoDDV.ViewData.Collapse(true);
end;

procedure Tstatistic.N2Click(Sender: TObject);
begin
  if pcStatistic.ActivePageIndex = 2 then
     grItogoDDV.ViewData.Expand(true);
end;

procedure Tstatistic.N4Click(Sender: TObject);
var grid: TcxGrid;
begin
  if pcStatistic.ActivePageIndex = 1 then grid := grItogo;
  if pcStatistic.ActivePageIndex = 2 then grid := grItogoDD;
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, grid, True, True, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    grid.SetFocus;
  except
    NULL;
  end;
end;

procedure Tstatistic.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if (StringGrid1.Cells[0,ARow] = '»того') then
  begin
    StringGrid1.canvas.brush.Color := clMoneyGreen;
    StringGrid1.canvas.fillRect(Rect);
    StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[ACol,ARow]);
  end;
end;

// —копируем значение футера в буфер
procedure Tstatistic.mnLoadFooterClick(Sender: TObject);
begin
  if pcStatistic.ActivePageIndex = 1 then PoolToClipbaord(grItogoV.DataController, 0);
  if pcStatistic.ActivePageIndex = 2 then PoolToClipbaord(grItogoDDV.DataController, 0);
end;
// —копируем значение €чейкт в буфер
procedure Tstatistic.mnLoadCellClick(Sender: TObject);
begin
  if pcStatistic.ActivePageIndex = 1 then PoolToClipbaord(grItogoV.DataController, 1);
  if pcStatistic.ActivePageIndex = 2 then PoolToClipbaord(grItogoDDV.DataController, 1);
end;


end.
