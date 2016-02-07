unit form_operations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, cxGraphics, Menus,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtons, cxDropDownEdit,
  cxImageComboBox, cxContainer, cxMaskEdit, cxCalendar, PI_Library, cxLabel,
  jpeg, cxImage, PI_Library_reg;

type
  Tfrm_operations = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    Panel2: TPanel;
    de_begin: TcxDateEdit;
    de_end: TcxDateEdit;
    imcb_cash_opers: TcxImageComboBox;
    btnClose: TcxButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    imcb_deps_opers: TcxImageComboBox;
    btn_search: TcxButton;
    gr_debetors: TcxGrid;
    gr_debetors_v: TcxGridDBTableView;
    gr_debetors_l: TcxGridLevel;
    _gr_debetors_vNN: TcxGridDBColumn;
    _gr_debetors_vID_CLIENT_DEBT: TcxGridDBColumn;
    _gr_debetors_vID_DEBETORS: TcxGridDBColumn;
    _gr_debetors_vDEBET: TcxGridDBColumn;
    gr_debetors_vRATE: TcxGridDBColumn;
    gr_debetors_vD_DATE: TcxGridDBColumn;
    gr_debetors_vR_DDATE: TcxGridDBColumn;
    _gr_debetors_vOPERATION: TcxGridDBColumn;
    gr_debetors_vINVOICE: TcxGridDBColumn;
    gr_debetors_vSUMM: TcxGridDBColumn;
    gr_debetors_vINFO: TcxGridDBColumn;
    gr_debetors_vIN_RUB: TcxGridDBColumn;
    gr_debetors_vT_SHORT: TcxGridDBColumn;
    _gr_debetors_vT_LONG: TcxGridDBColumn;
    gr_debetors_vNICK: TcxGridDBColumn;
    _gr_debetors_vACTIVE: TcxGridDBColumn;
    gr_debetors_vBRIEF: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btn_searchClick(Sender: TObject);
    procedure imcb_cash_opersPropertiesChange(Sender: TObject);
    procedure imcb_deps_opersPropertiesChange(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    pnl_msg: TPanel;
    { Private declarations }
  public
    fontsize: integer;
    { Public declarations }
  end;

var
  frm_operations: Tfrm_operations;

implementation

uses DataM;

{$R *.dfm}



procedure Tfrm_operations.btn_searchClick(Sender: TObject);
begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel4,300,100,'»дет обработка запроса'));
    pnl_msg.Repaint;

    DM.Q_OPER_SEARCH.Close;
    DM.Q_OPER_SEARCH.ParamByName('P1').AsDate := de_begin.EditValue;
    DM.Q_OPER_SEARCH.ParamByName('P2').AsDate := de_end.EditValue;
    DM.Q_OPER_SEARCH.ParamByName('P3').Value  := 0;
//    if ( imcb_cash_opers.ItemIndex > -1 ) then
    if ( imcb_cash_opers.EditValue > 0 ) then
      DM.Q_OPER_SEARCH.ParamByName('P3').Value  := imcb_cash_opers.EditValue;
//    if ( imcb_deps_opers.ItemIndex > -1 ) then
    if ( imcb_deps_opers.EditValue > 0 ) then
      DM.Q_OPER_SEARCH.ParamByName('P3').Value  := imcb_deps_opers.EditValue;
    DM.Q_OPER_SEARCH.Open;

    pnl_msg.Free;

    gr_debetors.SetFocus;
  except
    on E: Exception do
    begin
       pnl_msg.Free;
       MessageBox(Handle, PChar(E.Message), 'ќшибка!', MB_ICONERROR);
    end;
    end;
end;


procedure Tfrm_operations.FormShow(Sender: TObject);
begin
  de_begin.EditValue := Now;
  de_end.EditValue := Now;
  gr_debetors.Font.Size := fontsize;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT id_operations, t_short || '' - '' || t_long FROM OPERATIONS where t_type=0 ORDER BY t_type , T_LONG');
  DM.Q_SQL.Open;
  FillImgComboCx(DM.Q_SQL, imcb_cash_opers, '');

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('SELECT id_operations, t_short || '' - '' || t_long FROM OPERATIONS where t_type=1 ORDER BY t_type , T_LONG');
  DM.Q_SQL.Open;
  FillImgComboCx(DM.Q_SQL, imcb_deps_opers, '');
end;

procedure Tfrm_operations.imcb_cash_opersPropertiesChange(Sender: TObject);
begin
  if (imcb_cash_opers.EditValue > 0) then
    imcb_deps_opers.EditValue := 0;
end;

procedure Tfrm_operations.imcb_deps_opersPropertiesChange(Sender: TObject);
begin
  if (imcb_deps_opers.EditValue > 0) then
    imcb_cash_opers.EditValue := 0;
end;

// —копируем значение €чейкт в буфер
procedure Tfrm_operations.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debetors_v.DataController, 1);
end;

// —копируем значение футера в буфер
procedure Tfrm_operations.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_debetors_v.DataController, 0);
end;

end.
