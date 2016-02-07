unit statistic_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxGridExportLink, ShellApi, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxPC,
  DBAccess, Ora, MemDS, PI_Library_reg;

type
  Tstatistic = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    btnClose: TcxButton;
    cdsItogo: TOraQuery;
    cdsItogoPAYDESK: TIntegerField;
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
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    dsItogo: TOraDataSource;
    pcStatistic: TcxPageControl;
    tshMain: TcxTabSheet;
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
    tshItogo: TcxTabSheet;
    grItogo: TcxGrid;
    grItogoV: TcxGridDBTableView;
    grItogoVPAYDESK: TcxGridDBColumn;
    grItogoVOSTATOK: TcxGridDBColumn;
    grItogoVOSTATOK_D: TcxGridDBColumn;
    grItogoVOSTATOK_E: TcxGridDBColumn;
    grItogoVSUMM_IN: TcxGridDBColumn;
    grItogoVSUMM_IN_D: TcxGridDBColumn;
    grItogoVSUMM_IN_E: TcxGridDBColumn;
    grItogoVSUMM_OUT: TcxGridDBColumn;
    grItogoVSUMM_OUT_D: TcxGridDBColumn;
    grItogoVSUMM_OUT_E: TcxGridDBColumn;
    grItogoVTOTAL_SUMM: TcxGridDBColumn;
    grItogoVTOTAL_SUMM_D: TcxGridDBColumn;
    grItogoVTOTAL_SUMM_E: TcxGridDBColumn;
    grItogoL: TcxGridLevel;
    pmMenu: TPopupMenu;
    N4: TMenuItem;
    N1: TMenuItem;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
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

// —копируем значение €чейкт в буфер
procedure Tstatistic.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(grItogoV.DataController, 1);
end;

// —копируем значение футера в буфер
procedure Tstatistic.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(grItogoV.DataController, 0);
end;

procedure Tstatistic.N4Click(Sender: TObject);
begin
  try
    if DM.SaveDialog.Execute then
    begin
       ExportGridToExcel(DM.SaveDialog.FileName, grItogo, True, True, True, 'xls');
       ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
    end;
    grItogo.SetFocus;
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

end.
