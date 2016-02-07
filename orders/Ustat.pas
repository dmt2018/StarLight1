unit Ustat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxEdit, cxVGrid, cxControls,
  cxInplaceContainer, StdCtrls, Buttons, ExtCtrls, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, Ora, MemDS, DBAccess, Menus,
  cxLookAndFeelPainters, DBGridEhGrouping, GridsEh, DBGridEh, cxPC, cxButtons,
  cxCurrencyEdit, Grids;

type
  Tfrm_stat = class(TForm)
    Panel2: TPanel;
    CDS_STAT: TOraQuery;
    DS_STAT: TOraDataSource;
    CDS_STATHH: TStringField;
    CDS_STATNBUTTON: TFloatField;
    CDS_STATH_CATEGORY: TStringField;
    CDS_STATWEIGHT: TFloatField;
    CDS_STATQUANT: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsStatReg: TOraQuery;
    dsStatReg: TOraDataSource;
    cdsStatRegHH: TStringField;
    cdsStatRegNBUTTON: TFloatField;
    cdsStatRegQUANT: TFloatField;
    cdsStatRegNN: TFloatField;
    CDS_STATQQ: TFloatField;
    CDS_STATWEIGHT_P: TFloatField;
    CDS_STATQUANT_P: TFloatField;
    CDS_STATQQ_P: TFloatField;
    btnClose: TcxButton;
    pc_stat_order: TcxPageControl;
    tsh_info_by_group: TcxTabSheet;
    tsh_info_by_stems: TcxTabSheet;
    gr_total: TcxGrid;
    gr_total_view: TcxGridDBTableView;
    gr_total_viewHH: TcxGridDBColumn;
    gr_total_viewNBUTTON: TcxGridDBColumn;
    gr_total_viewH_CATEGORY: TcxGridDBColumn;
    gr_total_viewQUANT: TcxGridDBColumn;
    gr_total_viewWEIGHT: TcxGridDBColumn;
    gr_total_viewQQ: TcxGridDBColumn;
    gr_total_viewQUANT_P: TcxGridDBColumn;
    gr_total_viewWEIGHT_P: TcxGridDBColumn;
    gr_total_viewQQ_P: TcxGridDBColumn;
    gr_total_level: TcxGridLevel;
    Panel1: TPanel;
    grReg: TcxGrid;
    grRegV: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    grRegL: TcxGridLevel;
    DBGridEh3: TDBGridEh;
    cdsStatRegPRICE: TFloatField;
    grRegVPRICE: TcxGridDBColumn;
    tshInfoByTruck: TcxTabSheet;
    StringGrid1: TStringGrid;
    procedure gr_total_viewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    show_truck_stat: boolean;
    { Public declarations }
  end;

var
  frm_stat: Tfrm_stat;

implementation

uses frm_DM;

{$R *.dfm}

procedure Tfrm_stat.FormShow(Sender: TObject);
var i, kol, kol2: integer;
    sum, sum2: real;
begin
  if not show_truck_stat then exit;

  i := 1;
  sum := 0;
  kol := 0;

  StringGrid1.RowCount := 2;
  StringGrid1.Cells[0,0] := 'Машина';
  StringGrid1.Cells[1,0] := 'Объем';
  StringGrid1.Cells[2,0] := 'Стеблей';
  StringGrid1.Cells[3,0] := 'Объем упак.';
  StringGrid1.Cells[4,0] := 'Стеблей упак.';

  while not DM.Q_SQL.Eof do
  begin
    if DM.Q_SQL.FieldByName('TRUCK').IsNull = true then StringGrid1.Cells[0,i] := 'не определено'
    else
    begin
      StringGrid1.Cells[0,i] := DM.Q_SQL.FieldByName('TRUCK').AsString;
      sum := sum + DM.Q_SQL.FieldValues['SS'];
      kol := kol + DM.Q_SQL.FieldValues['quant'];
      sum2 := sum2 + DM.Q_SQL.FieldValues['sum_pack'];
      kol2 := kol2 + DM.Q_SQL.FieldValues['quant_pack'];
    end;
    StringGrid1.Cells[1,i] := DM.Q_SQL.FieldValues['SS'];
    StringGrid1.Cells[2,i] := DM.Q_SQL.FieldValues['quant'];
    StringGrid1.Cells[3,i] := DM.Q_SQL.FieldValues['sum_pack'];
    StringGrid1.Cells[4,i] := DM.Q_SQL.FieldValues['quant_pack'];
    StringGrid1.RowCount := StringGrid1.RowCount + 1;
    DM.Q_SQL.Next;
    i := i + 1;
  end;

  StringGrid1.Cells[0,i] := 'Всего';
  StringGrid1.Cells[1,i] := floattostr(sum);
  StringGrid1.Cells[2,i] := inttostr(kol);
  StringGrid1.Cells[3,i] := floattostr(sum2);
  StringGrid1.Cells[4,i] := inttostr(kol2);
end;

procedure Tfrm_stat.gr_total_viewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var param: Variant;
begin
    begin
      param := gr_total_view.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_total_view.GetColumnByFieldName('hh').Index
                );
      if (VarToStr(param) = '2 :: всего') then
      begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := clRed;
      end
      else
      begin
        ACanvas.Font.Style := [];
        ACanvas.Font.Color := clDefault;
      end;
    end;
end;

procedure Tfrm_stat.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if (StringGrid1.Cells[0,ARow] = 'Всего') then
  begin
    StringGrid1.canvas.brush.Color := clMedGray;
    StringGrid1.canvas.fillRect(Rect);
    if ACol = 0 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[0,ARow]);
    if ACol = 1 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[1,ARow]);
    if ACol = 2 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[2,ARow]);
    if ACol = 3 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[3,ARow]);
    if ACol = 4 then StringGrid1.canvas.TextOut(Rect.Left+2,Rect.Top+2,StringGrid1.Cells[4,ARow]);
  end;
end;

end.
