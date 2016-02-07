unit UStatistic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxLabel, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  cxButtons, ExtCtrls, cxStyles, cxGraphics, cxVGrid, cxInplaceContainer,
  cxCurrencyEdit, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, DBAccess, Ora, MemDS,
  cxCheckBox, ActnList, Clipbrd;

type
  Tfrm_statistic = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btn_close: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    btn_search: TcxButton;
    stat_query: TOraQuery;
    stat_query_ds: TOraDataSource;
    gr_stat_v: TcxGridDBTableView;
    gr_stat_l: TcxGridLevel;
    gr_stat: TcxGrid;
    gr_stat_vSUMM: TcxGridDBColumn;
    gr_stat_vIN_RUB: TcxGridDBColumn;
    gr_stat_vT_LONG: TcxGridDBColumn;
    cxCheckBox1: TcxCheckBox;
    Label1: TLabel;
    ActionList1: TActionList;
    aEnter: TAction;
    gr_stat_vitog_discount: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    f1: TMenuItem;
    gr_stat_rate: TcxGrid;
    gr_stat_rate_v: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    gr_stat_rate_l: TcxGridLevel;
    gr_stat_rate_vColumn1: TcxGridDBColumn;
    procedure btn_searchClick(Sender: TObject);
    procedure cxDateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDateEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure f1Click(Sender: TObject);
  private
    { Private declarations }
  public
    stat_type: integer;
    { Public declarations }
  end;

var
  frm_statistic: Tfrm_statistic;

implementation

uses DataM;

{$R *.dfm}

procedure Tfrm_statistic.btn_searchClick(Sender: TObject);
begin
  btn_search.SetFocus;

  stat_query.Close;
  stat_query.SQL.Clear;
  stat_query.Params.Clear;
  if (stat_type = 1) then
  begin
    stat_query.SQL.Add('begin CASH_PKG.show_statistic(:ID_DEBETORS_, :ID_GROUP_, :DATE_BEGIN_, :DATE_END_, :V_OFFICE, :CURSOR_); end;');
    gr_stat_v.DataController.DataSource := stat_query_ds;
    gr_stat_rate_v.DataController.DataSource := nil;
  end
  else
  begin
    stat_query.SQL.Add('begin CASH_PKG.show_statistic_rate(:ID_DEBETORS_, :ID_GROUP_, :DATE_BEGIN_, :DATE_END_, :V_OFFICE, :CURSOR_); end;');
    gr_stat_v.DataController.DataSource := nil;
    gr_stat_rate_v.DataController.DataSource := stat_query_ds;
  end;

//  stat_query.Prepare;
  stat_query.ParamByName('id_debetors_').AsInteger  := gr_stat.Tag;

  if (cxCheckBox1.Checked = true) then
    stat_query.ParamByName('id_group_').AsInteger     := cxCheckBox1.Tag
  else
    stat_query.ParamByName('id_group_').AsInteger     := 0;

  stat_query.ParamByName('date_begin_').AsDate      := cxDateEdit1.EditValue;
  stat_query.ParamByName('date_end_').AsDate        := cxDateEdit2.EditValue;
  stat_query.ParamByName('V_OFFICE').AsInteger      := DM.ID_OFFICE;
  stat_query.ParamByName('CURSOR_').AsCursor;
  stat_query.Open;
end;

procedure Tfrm_statistic.cxDateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    btn_searchClick(Sender);
end;

procedure Tfrm_statistic.cxDateEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    btn_searchClick(Sender);
end;

procedure Tfrm_statistic.f1Click(Sender: TObject);
var i: integer;
    str : string;
begin
  for i:=0 to (gr_stat_v.DataController.Summary.FooterSummaryItems.Count-1) do
  begin
    str := str + VarToStr(gr_stat_v.DataController.Summary.FooterSummaryValues[i]) + '  ';
  end;
  clipboard.SetTextBuf(PChar(str));
end;

end.
