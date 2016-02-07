unit UCash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCurrencyEdit, DBAccess, Ora, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmCash = class(TForm)
    Panel1: TPanel;
    Close_BitBtn: TcxButton;
    Panel2: TPanel;
    gr_cashbook: TcxGrid;
    gr_cashbook_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CASH_TMP: TcxGridDBBandedColumn;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    _gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vOPERATION: TcxGridDBBandedColumn;
    gr_cashbook_vNICK: TcxGridDBBandedColumn;
    gr_cashbook_vFIO: TcxGridDBBandedColumn;
    gr_cashbook_vGROUP_NAME: TcxGridDBBandedColumn;
    gr_cashbook_vT_SHORT: TcxGridDBBandedColumn;
    gr_cashbook_vINVOICE: TcxGridDBBandedColumn;
    gr_cashbook_vSUMM: TcxGridDBBandedColumn;
    gr_cashbook_vIN_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vIN_USD: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_USD: TcxGridDBBandedColumn;
    gr_cashbook_vIN_EU: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_EU: TcxGridDBBandedColumn;
    gr_cashbook_vINFO: TcxGridDBBandedColumn;
    gr_cashbook_vDDATE_IN: TcxGridDBBandedColumn;
    _gr_cashbook_vT_LONG: TcxGridDBBandedColumn;
    _gr_cashbook_vR_PAYDESK: TcxGridDBBandedColumn;
    _gr_cashbook_vR_DDATE: TcxGridDBBandedColumn;
    _gr_cashbook_vDDATE_DONE: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR: TcxGridDBBandedColumn;
    gr_cashbook_vDDATE_IN_: TcxGridDBBandedColumn;
    gr_cashbook_l: TcxGridLevel;
    CASH_TMP: TOraQuery;
    CASH_TMPID_CASH_TMP: TFloatField;
    CASH_TMPID_CLIENTS: TIntegerField;
    CASH_TMPPAYDESK: TIntegerField;
    CASH_TMPOPERATION: TIntegerField;
    CASH_TMPINVOICE: TFloatField;
    CASH_TMPCORRECTOR: TStringField;
    CASH_TMPR_PAYDESK: TIntegerField;
    CASH_TMPR_DDATE: TDateTimeField;
    CASH_TMPDDATE_DONE: TDateTimeField;
    CASH_TMPDDATE_IN: TStringField;
    CASH_TMPSUMM: TFloatField;
    CASH_TMPIN_RUB: TFloatField;
    CASH_TMPOUT_RUB: TFloatField;
    CASH_TMPIN_USD: TFloatField;
    CASH_TMPOUT_USD: TFloatField;
    CASH_TMPIN_EU: TFloatField;
    CASH_TMPOUT_EU: TFloatField;
    CASH_TMPINFO: TStringField;
    CASH_TMPT_SHORT: TStringField;
    CASH_TMPT_LONG: TStringField;
    CASH_TMPNICK: TStringField;
    CASH_TMPFIO: TStringField;
    CASH_TMPDDATE_IN_: TDateTimeField;
    CASH_TMPGROUP_NAME: TStringField;
    CASH_TMP_DS: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCash: TfrmCash;

implementation

{$R *.dfm}

end.
