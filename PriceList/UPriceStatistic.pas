unit UPriceStatistic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar,
  cxCurrencyEdit, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, DBAccess, Ora, MemDS, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmPriceStatisitic = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    grid_stat: TcxGrid;
    grid_statView: TcxGridDBTableView;
    grid_stat_Level: TcxGridLevel;
    qPriceHistory: TOraQuery;
    qPriceHistoryN_ID: TFloatField;
    qPriceHistoryPRICE_DATE: TDateTimeField;
    qPriceHistoryPRICE: TFloatField;
    qPriceHistorySPEC_PRICE: TIntegerField;
    qPriceHistoryBEST_PRICE: TIntegerField;
    qPriceHistoryDISCOUNT: TFloatField;
    cdsPriceHistory: TOraDataSource;
    grid_statViewN_ID: TcxGridDBColumn;
    grid_statViewPRICE_DATE: TcxGridDBColumn;
    grid_statViewPRICE: TcxGridDBColumn;
    grid_statViewSPEC_PRICE: TcxGridDBColumn;
    grid_statViewBEST_PRICE: TcxGridDBColumn;
    grid_statViewDISCOUNT: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPriceStatisitic: TfrmPriceStatisitic;

implementation

uses DataModule;

{$R *.dfm}

end.
