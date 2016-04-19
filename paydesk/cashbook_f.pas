unit cashbook_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ActnList, Grids, DBGrids,
  Mask, DBCtrls, DB, ShellAPI, DBTables, StrUtils, PI_library, Ora, cxGridDBTableView,
  ADODB, dxBar, ImgList, cxGraphics, cxClasses, dxBarExtItems, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxGrid,
  cxTextEdit, cxCurrencyEdit, cxContainer, cxImageComboBox, cxButtonEdit,
  cxBarEditItem, cxCalc, cxBlobEdit, cxMaskEdit, cxDropDownEdit, frxExportImage,
  frxExportXML, frxExportXLS, frxExportHTML, frxClass, frxExportPDF, frxDBSet,
  useful_functions, PI_Library_reg, Menus;

type
  Tcashbook = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aUppload: TAction;
    aPrint: TAction;
    aPrintAll: TAction;
    aFilterOff: TAction;
    aShowCHL: TAction;
    aShowNotCHL: TAction;
    load_invoice: TAction;
    bm_cashbook: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    bdc_cashbook: TdxBarDockControl;
    cxImageList1: TcxImageList;
    dxBarButton1: TdxBarButton;
    aRefresh: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    bdc_cashlegend: TdxBarDockControl;
    bm_cashbookBar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    sr_cashbook: TcxStyleRepository;
    st_green: TcxStyle;
    st_otdel: TcxStyle;
    st_kass: TcxStyle;
    gr_cashbook_l: TcxGridLevel;
    gr_cashbook: TcxGrid;
    gr_cashbook_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CASH_TMP: TcxGridDBBandedColumn;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    _gr_cashbook_vPAYDESK: TcxGridDBBandedColumn;
    gr_cashbook_vOPERATION: TcxGridDBBandedColumn;
    gr_cashbook_vINVOICE: TcxGridDBBandedColumn;
    gr_cashbook_vCORRECTOR: TcxGridDBBandedColumn;
    gr_cashbook_vSUMM: TcxGridDBBandedColumn;
    gr_cashbook_vIN_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_RUB: TcxGridDBBandedColumn;
    gr_cashbook_vIN_USD: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_USD: TcxGridDBBandedColumn;
    gr_cashbook_vIN_EU: TcxGridDBBandedColumn;
    gr_cashbook_vOUT_EU: TcxGridDBBandedColumn;
    gr_cashbook_vINFO: TcxGridDBBandedColumn;
    gr_cashbook_vT_SHORT: TcxGridDBBandedColumn;
    _gr_cashbook_vT_LONG: TcxGridDBBandedColumn;
    gr_cashbook_vNICK: TcxGridDBBandedColumn;
    gr_cashbook_vFIO: TcxGridDBBandedColumn;
    _gr_cashbook_vR_PAYDESK: TcxGridDBBandedColumn;
    _gr_cashbook_vR_DDATE: TcxGridDBBandedColumn;
    _gr_cashbook_vDDATE_DONE: TcxGridDBBandedColumn;
    gr_cashbook_vDDATE_IN: TcxGridDBBandedColumn;
    st_notprimary: TcxStyle;
    st_primary: TcxStyle;
    bb_close: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    bb_summoney: TdxBarButton;
    bb_endcash: TdxBarButton;
    bb_delcash: TdxBarButton;
    currEdit: TcxCurrencyEdit;
    st_term: TcxStyle;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarDockControl1: TdxBarDockControl;
    bm_cashbookBar2: TdxBar;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    Panel2: TPanel;
    bed_otdel: TcxImageComboBox;
    bed_nakl: TcxCurrencyEdit;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    Label4: TLabel;
    Label5: TLabel;
    dxBarLargeButton8: TdxBarLargeButton;
    frxReport_cash: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    bb_statistic: TdxBarButton;
    Panel3: TPanel;
    Label9: TLabel;
    imcb_kass: TcxImageComboBox;
    stSelect: TcxStyle;
    dxBarStatic9: TdxBarStatic;
    st_primary2: TcxStyle;
    stSelect2: TcxStyle;
    gr_cashbook_vDDATE_IN_: TcxGridDBBandedColumn;
    gr_cashbook_vGROUP_NAME: TcxGridDBBandedColumn;
    PopupMenu1: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    gr_cashbook_vCASH_SEQ: TcxGridDBBandedColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure aShowCHLExecute(Sender: TObject);
    procedure aShowNotCHLExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure load_invoiceExecute(Sender: TObject);
    procedure gr_cashbook_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aRefreshExecute(Sender: TObject);
    procedure bb_closeClick(Sender: TObject);
    procedure bb_summoneyClick(Sender: TObject);
    procedure bb_delcashClick(Sender: TObject);
    procedure gr_cashbook_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bed_naklKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bed_otdelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bed_otdelPropertiesChange(Sender: TObject);
    function frxReport_cashUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure bb_statisticClick(Sender: TObject);
    procedure cxImageComboBox3PropertiesChange(Sender: TObject);
    procedure gr_cashbook_vEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure aFilterOffExecute(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
    procedure gr_cashbook_vIN_RUBPropertiesEditValueChanged(Sender: TObject);
    procedure gr_cashbook_vColumnPosChanged(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure gr_cashbook_vFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
//    function Kopeika(Value: integer; Skp: string): string;
  private
    { Private declarations }
  public
    corrector   : string;
    cur_paydesk : integer;
    cur_date    : TDate;
    ST          : integer;
    { Public declarations }
  end;

var
  cashbook: Tcashbook;

implementation

uses DataM, choise, nakl_edit_f, stat_f, help_cash_f,
  statistic_f{, frx2xto30};

{$R *.dfm}


//
//  При создании формы список с отделами ставим в начало
//
procedure Tcashbook.FormShow(Sender: TObject);
begin
//  DBComboBoxEh1.ItemIndex := DBComboBoxEh1.KeyItems.IndexOf(inttostr(choises.chois));
  bed_nakl.Properties.ImmediatePost := true;
  gr_cashbook.SetFocus;
  aNew.Enabled       := dm.b_edit;
  aEdit.Enabled      := dm.b_edit;
  aDelete.Enabled    := false; //dm.b_delete;
  aUppload.Enabled   := dm.b_edit;
  aPrint.Enabled     := dm.b_print;
  aPrintAll.Enabled  := dm.b_print;
//  bb_endcash.Enabled := dm.b_edit;
//  bb_delcash.Enabled := dm.b_delete;
  gr_cashbook_v.OptionsData.Editing := dm.b_edit;

  if (cur_paydesk = 4) then
    gr_cashbook_vGROUP_NAME.Visible := true
  else
    gr_cashbook_vGROUP_NAME.Visible := false;

end;


//
//  Нажимаем ENTER и постим данные
//
procedure Tcashbook.gr_cashbook_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
    if DM.CASH_TMP_DS.State = dsEdit then DM.CASH_TMP.Post;
  end;
end;




procedure Tcashbook.gr_cashbook_vColumnPosChanged(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin

end;

//
//  Красим грид
//
procedure Tcashbook.gr_cashbook_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2,val3: variant;
begin
  if (not AViewInfo.Selected) and (gr_cashbook_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('DDATE_DONE').Index
                );

    // Красим операцию
    if (gr_cashbook_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'T_SHORT') and (val1 > 0) then
    begin
      val1  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('PAYDESK').Index
                );
      val2  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('R_PAYDESK').Index
                );
      val3  := gr_cashbook_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_cashbook_v.GetColumnByFieldName('CORRECTOR').Index
                );


      if (val1 = val2) then
         ACanvas.Brush.Color := st_green.Color;

      if (val1 <> val2) and (val2 > 0) then
      begin
            if val2 = cur_paydesk then
              ACanvas.Brush.Color := st_otdel.Color
            else
              ACanvas.Brush.Color := st_kass.Color;
      end;

       if val3='UEGATE' then  
       ACanvas.Brush.Color := st_term.Color;

    end;
  end;

end;


procedure Tcashbook.gr_cashbook_vEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
    if DM.CASH_TMP_DS.State = dsEdit then DM.CASH_TMP.Post;
  end;
end;

 //запрет редактирования для UEGATE
procedure Tcashbook.gr_cashbook_vFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
     if gr_cashbook_v.DataController.GetValue(
  gr_cashbook_v.DataController.GetFocusedRecordIndex, gr_cashbook_v.GetColumnByFieldName('CORRECTOR').Index
  )='UEGATE' then begin
    gr_cashbook_vIN_RUB.Options.Editing:=false ;
    gr_cashbook_vOUT_RUB.Options.Editing:=false ;

    gr_cashbook_vIN_USD.Options.Editing:=false ;
    gr_cashbook_vOUT_USD.Options.Editing:=false ;

    gr_cashbook_vIN_EU.Options.Editing:=false ;
    gr_cashbook_vOUT_EU.Options.Editing:=false ;

    gr_cashbook_vINFO.Options.Editing:=false ;
    end else
    begin
      gr_cashbook_vIN_RUB.Options.Editing:=true;
      gr_cashbook_vOUT_RUB.Options.Editing:=true;

      gr_cashbook_vIN_USD.Options.Editing:=true ;
      gr_cashbook_vOUT_USD.Options.Editing:=true ;

      gr_cashbook_vIN_EU.Options.Editing:=true ;
      gr_cashbook_vOUT_EU.Options.Editing:=true ;

      gr_cashbook_vINFO.Options.Editing:=true ;
     end;
end;

procedure Tcashbook.gr_cashbook_vIN_RUBPropertiesEditValueChanged(
  Sender: TObject);
begin

end;

//
//  Обновление данных
//
procedure Tcashbook.aRefreshExecute(Sender: TObject);
var idd: integer;
begin
  try
    idd := DM.CASH_TMPID_CASH_TMP.AsInteger;
    DM.CASH_TMP.Refresh;
    DM.CASH_TMP.Locate('ID_CASH_TMP',idd,[]);
    gr_cashbook.SetFocus;
  except
    on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
  End;
end;


//
//  Закрываем окно
//
procedure Tcashbook.bb_closeClick(Sender: TObject);
begin
  Close;
end;


//
//  Удаляем кассовый день
//
procedure Tcashbook.bb_delcashClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Вы действительно хотите удалить кассовый день?', 'Внимание', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDYES then
  begin
    try
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin cash_pkg.remove_cash(:paydesk_, :ddate_); end;');
      DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger := cur_paydesk;
      DM.Q_SQL.Params.ParamByName('ddate_').AsDate      := cur_date;
      DM.Q_SQL.Execute;
      DM.CASH_TMP.Refresh;
      gr_cashbook.SetFocus;
    except
      on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    End;
  end;
end;


//
//  Статистика по кассам
//
procedure Tcashbook.bb_statisticClick(Sender: TObject);
var i: integer;
    sum, sum_1, sum_2, sum_3, sum_4, sum_5, sum_6, sum_d: real;
begin
  statistic := Tstatistic.Create(Application);
  try
    with statistic.cdsItogo do
    begin
      Close;
      ParamByName('p_cash').AsInteger := 0;
      ParamByName('p_date_b').AsDate := DM.CASH_TMP.Params.ParamByName('ddate_').AsDate;
      ParamByName('p_date_e').AsDate := DM.CASH_TMP.Params.ParamByName('ddate_').AsDate;
      Open;
    end;


    sum := 0;
    sum_1 := 0;
    sum_2 := 0;
    sum_3 := 0;
    sum_4 := 0;
    sum_5 := 0;
    sum_6 := 0;

    statistic.StringGrid1.Cells[1,0] := 'Накладные';
    statistic.StringGrid1.Cells[2,0] := 'Приход, руб';
    statistic.StringGrid1.Cells[3,0] := 'Расход, руб';
    statistic.StringGrid1.Cells[4,0] := 'Приход, $';
    statistic.StringGrid1.Cells[5,0] := 'Расход, $';
    statistic.StringGrid1.Cells[6,0] := 'Приход, €';
    statistic.StringGrid1.Cells[7,0] := 'Расход, €';

    statistic.StringGrid1.Cells[0,1] := 'Касса №1';
    statistic.StringGrid1.Cells[0,2] := 'Касса №2';
    statistic.StringGrid1.Cells[0,3] := 'Касса №3';
    statistic.StringGrid1.Cells[0,4] := 'Главная';
    statistic.StringGrid1.Cells[0,5] := 'Итого';

    for i:=1 to 4 do
    begin
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('SELECT SUM(SUMM) as sum, SUM(IN_RUB) as sum1, SUM(OUT_RUB) as sum2, SUM(IN_USD) as sum3, SUM(OUT_USD) as sum4, SUM(IN_EU) as sum5, SUM(OUT_EU) as sum6 FROM CASH_TMP WHERE id_office = CONST_OFFICE and R_DDATE=:P1 AND R_PAYDESK='+ inttostr(i));
      DM.Q_SQL.Params.ParamByName('P1').AsDate := choises.kass_date.EditValue;
      DM.Q_SQL.Open;

      sum := sum + DM.Q_SQL.FieldByName('sum').AsCurrency;
      sum_1 := sum_1 + DM.Q_SQL.FieldByName('sum1').AsCurrency;
      sum_2 := sum_2 + DM.Q_SQL.FieldByName('sum2').AsCurrency;
      sum_3 := sum_3 + DM.Q_SQL.FieldByName('sum3').AsCurrency;
      sum_4 := sum_4 + DM.Q_SQL.FieldByName('sum4').AsCurrency;
      sum_5 := sum_5 + DM.Q_SQL.FieldByName('sum5').AsCurrency;
      sum_6 := sum_6 + DM.Q_SQL.FieldByName('sum6').AsCurrency;

      statistic.StringGrid1.Cells[1,i] := DM.Q_SQL.FieldByName('sum').AsString;
      statistic.StringGrid1.Cells[2,i] := DM.Q_SQL.FieldByName('sum1').AsString;
      statistic.StringGrid1.Cells[3,i] := DM.Q_SQL.FieldByName('sum2').AsString;
      statistic.StringGrid1.Cells[4,i] := DM.Q_SQL.FieldByName('sum3').AsString;
      statistic.StringGrid1.Cells[5,i] := DM.Q_SQL.FieldByName('sum4').AsString;
      statistic.StringGrid1.Cells[6,i] := DM.Q_SQL.FieldByName('sum5').AsString;
      statistic.StringGrid1.Cells[7,i] := DM.Q_SQL.FieldByName('sum6').AsString;




      if i=1 then
      begin
        statistic.label6.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' руб.';
        statistic.label7.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
        statistic.label8.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
      end;

      if i=2 then
      begin
        statistic.label9.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' руб.';
        statistic.label10.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
        statistic.label11.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
      end;

      if i=3 then
      begin
        statistic.label12.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' руб.';
        statistic.label13.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
        statistic.label14.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
      end;

      if i=4 then
      begin
        statistic.label19.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum1').AsCurrency - DM.Q_SQL.FieldByName('sum2').AsCurrency) + ' руб.';
        statistic.label20.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum3').AsCurrency - DM.Q_SQL.FieldByName('sum4').AsCurrency) + ' $ США';
        statistic.label21.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum5').AsCurrency - DM.Q_SQL.FieldByName('sum6').AsCurrency) + ' евро';
      end;


      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('SELECT SUM(SUMM) as sum FROM CASH_TMP WHERE (ID_OFFICE = :v_office or :v_office = 0) and R_DDATE=:P1 AND R_PAYDESK=0 and PAYDESK='+ inttostr(i));
      DM.Q_SQL.ParamByName('v_office').AsInteger := DM.id_office;
      DM.Q_SQL.ParamByName('P1').AsDate := cur_date;
      DM.Q_SQL.Open;

      if i=1 then
        statistic.label31.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

      if i=2 then
        statistic.label32.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

      if i=3 then
        statistic.label33.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

      if i=4 then
        statistic.label34.Caption := CurrToStr(DM.Q_SQL.FieldByName('sum').AsCurrency) + ' рублей';

      sum_d := sum_d + DM.Q_SQL.FieldByName('sum').AsCurrency;


    end;

    statistic.StringGrid1.Cells[1,5] := CurrToStr(sum);
    statistic.StringGrid1.Cells[2,5] := CurrToStr(sum_1);
    statistic.StringGrid1.Cells[3,5] := CurrToStr(sum_2);
    statistic.StringGrid1.Cells[4,5] := CurrToStr(sum_3);
    statistic.StringGrid1.Cells[5,5] := CurrToStr(sum_4);
    statistic.StringGrid1.Cells[6,5] := CurrToStr(sum_5);
    statistic.StringGrid1.Cells[7,5] := CurrToStr(sum_6);

    statistic.label15.Caption := CurrToStr(sum_1 - sum_2) + ' руб.';
    statistic.label16.Caption := CurrToStr(sum_3 - sum_4) + ' $ США';
    statistic.label17.Caption := CurrToStr(sum_5 - sum_6) + ' евро';
    statistic.label35.Caption := CurrToStr(sum_d) + ' рублей';

    statistic.pcStatistic.ActivePageIndex := 0;
    statistic.ShowModal;
    gr_cashbook.SetFocus;
  finally
    statistic.Free;
  end;
end;


//
//  Подсчет денег в кассе
//
procedure Tcashbook.bb_summoneyClick(Sender: TObject);
var summ, summ1, summ2, summ3, s_chl: real;
begin
  try
    summ := 0;
    summ1 := 0;
    summ2 := 0;
    summ3 := 0;
    s_chl := 0;

    gr_cashbook_v.DataController.DataSet.DisableControls;

    DM.CASH_TMP.First;
    while not DM.CASH_TMP.Eof do
    begin
      if (DM.CASH_TMPR_PAYDESK.AsInteger = cur_paydesk) then
      begin
        summ := summ + DM.CASH_TMP.FieldByName('SUMM').AsCurrency;
        if DM.CASH_TMPNICK.AsString = 'M CHL' then s_chl := s_chl + DM.CASH_TMP.FieldByName('IN_RUB').AsCurrency - DM.CASH_TMP.FieldByName('OUT_RUB').AsCurrency;
        summ1 := summ1 + DM.CASH_TMP.FieldByName('IN_RUB').AsCurrency - DM.CASH_TMP.FieldByName('OUT_RUB').AsCurrency;
        summ2 := summ2 + DM.CASH_TMP.FieldByName('IN_USD').AsCurrency - DM.CASH_TMP.FieldByName('OUT_USD').AsCurrency;
        summ3 := summ3 + DM.CASH_TMP.FieldByName('IN_EU').AsCurrency - DM.CASH_TMP.FieldByName('OUT_EU').AsCurrency;
      end;
      DM.CASH_TMP.Next;
    end;
    DM.CASH_TMP.First;

    gr_cashbook_v.DataController.DataSet.EnableControls;

    stat                 := Tstat.Create(Application);
    stat.Label2.Caption  := DateToStr(cur_date);
    stat.Label3.Caption  := 'Касса №' + IntToStr(cur_paydesk);

    stat.Label11.Caption := CurrToStr(summ);
    stat.Label12.Caption := CurrToStr(summ1);
    stat.Label13.Caption := CurrToStr(s_chl);
    stat.Label14.Caption := CurrToStr(summ1 - s_chl);
    stat.Label15.Caption := CurrToStr(summ2);
    stat.Label16.Caption := CurrToStr(summ3);
    stat.ShowModal;
    stat.Free;
    gr_cashbook.SetFocus;
  except
    on E: Exception do
    begin
      stat.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  End;
end;


//
// Подрузка накладных
//
procedure Tcashbook.BitBtn1Click(Sender: TObject);
var checked: integer;
    cl_str, tmp_str: string;
    client_, id_oper_: integer;
    fs : TFormatSettings;
begin
try
{ 2016-01-23 Теперь все работает без старой программы и данный блок не нужен
  GetLocaleFormatSettings(1251,fs);

  if choises.client_path <> '' then
  begin
    // Забираем данные из других отделов
    DM.Table1.Close;
    DM.Table1.TableName := choises.client_path;
    tmp_str             := datetostr(cur_date);

    // Теперь фильтруем по KOD для выборки именно того отдела, где касса
    DM.Table1.Filter := '(MARK<>2 OR MARK IS NULL) AND DAT=''' + tmp_str + ''''; // AND KOD=' + inttostr(choises.chois);
    DM.Table1.Filtered := true;

    DM.Session1.Active := true;
    DM.Table1.Open;
    cl_str := '';

    while not DM.Table1.Eof do
    begin
      checked := 0;

      // Проверяем данные, иначе ругаемся
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin cash_pkg.uppload_data(:nick_, :fio_, :oper_, :msg_); end;');
      DM.Q_SQL.Params.ParamByName('nick_').AsString := DM.table1.FieldByName('NICK').AsString;
      DM.Q_SQL.Params.ParamByName('fio_').AsString  := DM.table1.FieldByName('FIO').AsString;
      DM.Q_SQL.Params.ParamByName('oper_').AsString := DM.table1.FieldByName('KOD').AsString;
      DM.Q_SQL.Params.ParamByName('msg_').AsString  := '';
      DM.Q_SQL.Execute;
      if DM.Q_SQL.Params.ParamByName('msg_').AsString <> '' then
      begin
        checked := 0;
        cl_str  := cl_str + #10#13 + DM.Q_SQL.Params.ParamByName('msg_').AsString;
      end
      else
      begin
        client_  := DM.Q_SQL.Params.ParamByName('nick_').AsInteger;
        id_oper_ := DM.Q_SQL.Params.ParamByName('oper_').AsInteger;
        checked  := 1;
      end;

      // Если такого клиента нет, то вносим его в список плохих
      if checked = 0 then
      begin
         DM.Table1.Next;
      end
      else
      begin
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin cash_pkg.add_cash_record(:id_, :client_, :paydesk_, :id_operation_, :invoice_, :summ_, :in_rub_, :out_rub_, :in_usd_, :out_usd_, :in_eu_, :out_eu_, :info_, :corrector_, :ddate_, :ddate_done_, :r_desk_, :r_date_, :state_); end;');
        DM.Q_SQL.Params.ParamByName('id_').AsInteger            := 0;
        DM.Q_SQL.Params.ParamByName('client_').AsInteger        := client_;

        if DM.table1.FieldByName('KOD').AsString = 'ТРА' then
          DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := 1
        else
          DM.Q_SQL.ParamByName('paydesk_').AsInteger := DM.table1.FieldByName('KOD').AsInteger;

        DM.Q_SQL.Params.ParamByName('id_operation_').AsInteger  := id_oper_;

        if trim(DM.table1.FieldByName('NAKL').AsString) = '' then
          DM.Q_SQL.ParamByName('invoice_').Value := NULL
        else
          DM.Q_SQL.ParamByName('invoice_').AsInteger := DM.table1.FieldByName('NAKL').AsInteger;

        if trim(DM.table1.FieldByName('SNAK').AsString) = '' then DM.Q_SQL.ParamByName('summ_').Value := NULL
        else
        begin
          currEdit.EditValue := DM.table1.FieldByName('SNAK').AsString;
          DM.Q_SQL.ParamByName('summ_').AsCurrency := currEdit.EditValue;
        end;

        DM.Q_SQL.Params.ParamByName('in_rub_').AsFloat          := 0;
        DM.Q_SQL.Params.ParamByName('out_rub_').AsFloat         := 0;
        DM.Q_SQL.Params.ParamByName('in_usd_').AsFloat          := 0;
        DM.Q_SQL.Params.ParamByName('out_usd_').AsFloat         := 0;
        DM.Q_SQL.Params.ParamByName('in_eu_').AsFloat           := 0;
        DM.Q_SQL.Params.ParamByName('out_eu_').AsFloat          := 0;
        DM.Q_SQL.Params.ParamByName('info_').Value              := DM.table1.FieldByName('PRIM').AsString;
        DM.Q_SQL.Params.ParamByName('corrector_').AsString      := corrector;
        DM.Q_SQL.Params.ParamByName('ddate_').AsDateTime        := DM.table1.FieldByName('DAT').AsDateTime + Time();
        DM.Q_SQL.Params.ParamByName('ddate_done_').Value        := NULL;
        DM.Q_SQL.Params.ParamByName('r_desk_').AsInteger        := 0;
        DM.Q_SQL.Params.ParamByName('r_date_').AsDate           := cur_date;

        DM.Q_SQL.Params.ParamByName('state_').AsInteger        := 1;
        DM.Q_SQL.Execute;

        try
          DM.Table1.Edit;
          DM.Table1.FieldByName('MARK').AsInteger := 2;
          DM.Table1.Post;

        except
          on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка при редактировании записи БД Ковалева!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        End;
      end;
    end;  // while not DM.Table1.Eof do

    DM.Table1.Close;
    DM.Session1.Active := false;

    if cl_str <> '' then
       MessageBox(Handle, PChar(cl_str), 'Внимание!', MB_ICONERROR);
    // ---------------------------------------------------------------------------
  end;
}
  aRefresh.Execute;
  gr_cashbook_v.DataController.DataSet.First;
except
  on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
End;
end;



//
// Удаление накладной
//
procedure Tcashbook.BitBtn12Click(Sender: TObject);
var idd: integer;
begin
  if (gr_cashbook_v.DataController.DataSet.FieldByName('ID_CASH_TMP').AsInteger > 0) and (aDelete.Enabled = true) then
  begin
    If ((gr_cashbook_v.DataController.DataSet.FieldByName('DDATE_DONE').AsDateTime > 0)
        and (gr_cashbook_v.DataController.DataSet.FieldByName('CORRECTOR').AsString <> corrector)) then
      MessageBox(Handle, 'Данная операция проведена не вами!'+#10+#13+'Для удаления операции обращайтесь в главную кассу!', 'Внимание', MB_ICONWARNING)
    else
    begin
      if (gr_cashbook_v.DataController.DataSet.FieldByName('R_PAYDESK').AsInteger = 0) then
        MessageBox(Handle, 'Накладную из отдела удалять нельзя!', 'Внимание', MB_ICONWARNING)
      else
      begin
        if MessageDlg('Вы действительно хотите удалить накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
        begin
          try
            idd := DM.CASH_TMPID_CASH_TMP.AsInteger;

            DM.Q_SQL.SQL.Clear;
            DM.Q_SQL.SQL.Add('begin cash_pkg.remove_data(:id_, :fio_); end;');
            DM.Q_SQL.Params.ParamByName('id_').AsInteger  := idd;
            DM.Q_SQL.Params.ParamByName('fio_').AsString  := corrector;
            DM.Q_SQL.Execute;

            DM.CASH_TMP.Next;
            idd := DM.CASH_TMPID_CASH_TMP.AsInteger;
            aRefresh.Execute;
            DM.CASH_TMP.Locate('ID_CASH_TMP',idd,[]);

            gr_cashbook.SetFocus;
          except
            on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          End;
        end;
      end;
    end;
  end
  else MessageBox(Handle, 'Нет данных для удаления!', 'Внимание', MB_ICONWARNING)
end;


//
// Добавление накладной
//
procedure Tcashbook.BitBtn10Click(Sender: TObject);
begin
  nakl_edit := Tnakl_edit.Create(Application);
  try
    DM.Q_CLIENTS.Filter   := '';
    DM.Q_CLIENTS.Filtered := false;
    DM.Q_CLIENTS.Open;
    DM.OPERATIONS.Open;
    nakl_edit.state       := 1;
    nakl_edit.corrector   := corrector;
    nakl_edit.cur_paydesk := cur_paydesk;
    nakl_edit.cur_date    := cur_date;

    nakl_edit.showmodal;

    DM.Q_CLIENTS.Close;
    DM.OPERATIONS.Close;
    nakl_edit.Free;

    gr_cashbook.SetFocus;
  except
    on E: Exception do
    begin
      nakl_edit.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  End;
end;


//
// Редактирование накладной
//
procedure Tcashbook.BitBtn11Click(Sender: TObject);
begin
  if DM.CASH_TMPID_CASH_TMP.AsInteger > 0 then
  begin

    if (DM.CASH_TMPCORRECTOR.AsString <> '')
         and (cur_paydesk <> DM.CASH_TMPR_PAYDESK.AsInteger)
         and (DM.CASH_TMPR_PAYDESK.AsInteger <> 0) then
        MessageBox(Handle, 'Вы не проводили эту операцию! Изменения не допустимы!', 'Внимание', MB_ICONWARNING)
    else
    begin
      nakl_edit := Tnakl_edit.Create(Application);
      try
        DM.Q_CLIENTS.Filter   := '';
        DM.Q_CLIENTS.Filtered := false;
        DM.Q_CLIENTS.Open;
        DM.OPERATIONS.Open;
        nakl_edit.state       := 2;
        nakl_edit.imcb_operations.Tag := _gr_cashbook_vID_CASH_TMP.EditValue;

        nakl_edit.edit_serchnick.Enabled    := false;
        nakl_edit.edit_serchfio.Enabled     := false;
        DM.Q_CLIENTS.Locate('ID_CLIENTS',_gr_cashbook_vID_CLIENTS.EditValue,[]);
        nakl_edit.gr_clients.Enabled        := false;

        nakl_edit.imcb_operations.EditValue := gr_cashbook_vOPERATION.EditValue;
        nakl_edit.edit_invoice.EditValue    := gr_cashbook_vINVOICE.EditValue;
        nakl_edit.edit_invoice.Enabled      := false;

        nakl_edit.edit_summ.EditValue       := gr_cashbook_vSUMM.EditValue;
        nakl_edit.edit_summ.Enabled         := ((gr_cashbook_vOPERATION.EditValue <> 1) and (gr_cashbook_vOPERATION.EditValue <> 4) and (gr_cashbook_vOPERATION.EditValue <> 32));


        nakl_edit.edit_in_ru.EditValue      := gr_cashbook_vIN_RUB.EditValue;
        nakl_edit.edit_out_ru.EditValue     := gr_cashbook_vOUT_RUB.EditValue;
        nakl_edit.edit_in_dol.EditValue     := gr_cashbook_vIN_USD.EditValue;
        nakl_edit.edit_out_dol.EditValue    := gr_cashbook_vOUT_USD.EditValue;
        nakl_edit.edit_in_ev.EditValue      := gr_cashbook_vIN_EU.EditValue;
        nakl_edit.edit_out_ev.EditValue     := gr_cashbook_vOUT_EU.EditValue;
        nakl_edit.edit_info.EditValue       := gr_cashbook_vINFO.EditValue;

        nakl_edit.BitBtn2.Enabled      := false;
        nakl_edit.BitBtn3.Enabled      := false;
        nakl_edit.BitBtn4.Enabled      := false;
        nakl_edit.BitBtn5.Enabled      := false;

        nakl_edit.corrector   := corrector;
        nakl_edit.cur_paydesk := cur_paydesk;
        nakl_edit.cur_date    := cur_date;

        nakl_edit.showmodal;

        DM.Q_CLIENTS.Close;
        DM.OPERATIONS.Close;
        nakl_edit.Free;

        gr_cashbook.SetFocus;
      except
      on E: Exception do
        begin
          nakl_edit.Free;
          MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
        end;
      End;
    end;

  end // if DM.CASH_TMPID_CASH_TMP.AsInteger > 0 then
  else
  begin
    MessageBox(Handle, 'Нет данных для редактирования!', 'Внимание', MB_ICONWARNING);
    gr_cashbook.SetFocus;
  end;

end;


//
// Фильрация кассы, где будет видна только РОЗНИЧНАЯ касса    (F9)
//
procedure Tcashbook.aShowCHLExecute(Sender: TObject);
begin
	  gr_cashbook_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        'R %',
        'R %',
		    true
        );
	  gr_cashbook_v.DataController.Filter.Active := true;
end;

//
// Фильрация кассы, где будет видна только ОПТОВАЯ касса    (F10)
//
procedure Tcashbook.aShowNotCHLExecute(Sender: TObject);
begin
	  gr_cashbook_vNICK.DataBinding.AddToFilter(
      	nil,
        foNotLike,
        'R %',
        'R %',
		    true
        );
	  gr_cashbook_v.DataController.Filter.Active := true;
end;


//
// Очистить фильтр
//
procedure Tcashbook.aFilterOffExecute(Sender: TObject);
begin
	  gr_cashbook_v.DataController.Filter.Clear;
	  gr_cashbook_v.DataController.Filter.Active := false;
end;


//
//  Нажатие CTRL+F
//
procedure Tcashbook.load_invoiceExecute(Sender: TObject);
begin
  bed_otdel.SetFocus;
end;


//
// Нажатие ENTER на поле подгрузки накладной
//
procedure Tcashbook.bed_naklKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
    bed_nakl.PostEditValue;
    SpeedButton1Click(Sender);
  end;
end;

//
//  Переход по ЕНТЕР на поля ввода накладной
//
procedure Tcashbook.bed_otdelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) then
  begin
    //SpeedButton1Click(Sender);
    bed_nakl.SetFocus;
  end;
end;


procedure Tcashbook.bed_otdelPropertiesChange(Sender: TObject);
begin
    bed_nakl.SetFocus;
end;


//
// Подшрузка накладной из другого отдела
//
procedure Tcashbook.SpeedButton1Click(Sender: TObject);
begin
  bed_nakl.PostEditValue;

  if (bed_otdel.EditValue < 1) or (bed_nakl.EditValue = 0) or (bed_nakl.EditValue = NULL) then
    MessageBox(Handle, 'Нет данных для подгрузки!', 'Внимание', MB_ICONWARNING)
  else
  begin
    try
      DM.CASH_TMP.Close;
      DM.CASH_TMP.Params.ParamByName('ddate_').AsDate       := cur_date;
      DM.CASH_TMP.Params.ParamByName('paydesk_').AsInteger  := cur_paydesk;
      DM.CASH_TMP.Params.ParamByName('invoice_').AsInteger  := bed_nakl.EditValue;
      DM.CASH_TMP.Params.ParamByName('paydesk2_').AsInteger := bed_otdel.EditValue;
      DM.CASH_TMP.Open;

      if (DM.CASH_TMP.Locate('INVOICE;PAYDESK',VarArrayOf([bed_nakl.EditValue,bed_otdel.EditValue]),[])) then
      begin
        bed_nakl.EditValue := '';
        gr_cashbook.SetFocus;
      end
      else
        MessageBox(Handle, PChar('Не найдена накладная №' + VarToStr(bed_nakl.EditValue)), 'Внимание', MB_ICONWARNING)

    except
      on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    End;
  end;
end;


//
// Отмена подгруженной накладной
//
procedure Tcashbook.SpeedButton3Click(Sender: TObject);
begin
    try
      DM.CASH_TMP.Close;
      DM.CASH_TMP.Params.ParamByName('ddate_').AsDate       := cur_date;
      DM.CASH_TMP.Params.ParamByName('paydesk_').AsInteger  := cur_paydesk;
      DM.CASH_TMP.Params.ParamByName('invoice_').AsInteger  := 0;
      DM.CASH_TMP.Params.ParamByName('paydesk2_').AsInteger := 0;
      DM.CASH_TMP.Open;
      gr_cashbook.SetFocus;
    except
      on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    End;
end;


//
//  Показ формы с помощью
//
procedure Tcashbook.SpeedButton6Click(Sender: TObject);
begin
  help_cash := Thelp_cash.Create(Application);
  help_cash.showmodal;
  help_cash.Free;
end;



//
//  Расходник / Приходник
//
procedure Tcashbook.BitBtn2Click(Sender: TObject);
var  mOKUD, mOKPO: TfrxMemoView;
begin
  frxReport_cash.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
  frxReport_cash.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
  frxReport_cash.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');

  try
    if DM.CASH_TMPIN_RUB.AsInteger > 0 then
    begin
      frxReport_cash.LoadFromFile(choises.path+'raports\input.fr3');

      mOKUD   := frxReport_cash.FindObject('Memo4') as TfrxMemoView;
      mOKUD.Text := choises.def_OKUD;
      mOKPO   := frxReport_cash.FindObject('Memo5') as TfrxMemoView;
      mOKPO.Text := choises.def_OKPO;
    end;

    if DM.CASH_TMPOUT_RUB.AsInteger > 0 then
      frxReport_cash.LoadFromFile(choises.path+'raports\output.fr3');

    if (DM.CASH_TMPIN_RUB.AsInteger > 0) or (DM.CASH_TMPOUT_RUB.AsInteger > 0) then
    begin
      // Сформируем заголовок фирмы
      mOKPO   := frxReport_cash.FindObject('Memo1') as TfrxMemoView;
      mOKPO.Text := choises.def_title;
      // Сформируем ID бланка
{
      mOKPO   := frxReport_cash.FindObject('Memo10') as TfrxMemoView;
      if DM.id_office > 1 then
         mOKPO.Text := '[<frxDBDataset1."ID_CASH_TMP"> - '+IntToStr(DM.id_office)+'0000000]'
      else
         mOKPO.Text := '[<frxDBDataset1."ID_CASH_TMP">]';

      if frxReport_cash.FileName = choises.path+'raports\input.fr3' then
      begin
        mOKUD   := frxReport_cash.FindObject('Memo40') as TfrxMemoView;
        mOKUD.Text := mOKPO.Text;
      end;
}
      frxReport_cash.ShowReport;
    end;

    gr_cashbook.SetFocus;

  except
    on E: Exception do
    begin
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      gr_cashbook.SetFocus;
    end;
  End;

end;


//
//  Печать книги
//
procedure Tcashbook.BitBtn3Click(Sender: TObject);
begin
  try
    MakeSortForPrint(TOraQuery(gr_cashbook_v.DataController.DataSet),TcxGridDBTableView(gr_cashbook_v));
    gr_cashbook_v.DataController.DataSet.DisableControls;
    DM.CASH_TMP.Last;
    frxReport_cash.LoadFromFile(choises.path+'raports\itogo.fr3');
    frxReport_cash.ShowReport;

    gr_cashbook_v.DataController.DataSet.EnableControls;
    gr_cashbook.SetFocus;
  except
    on E: Exception do
    begin
      gr_cashbook_v.DataController.DataSet.EnableControls;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
      gr_cashbook.SetFocus;
    end;
  End;

end;


//
//  Функции для печати
//
function Tcashbook.frxReport_cashUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  try
    if (UpperCase(MethodName) = 'PROPIS') then
      Result := Propis( Trunc(Params[0]) );
    if (UpperCase(MethodName) = 'RUBLE') then
      Result := Ruble( Trunc(Params[0]), Params[1] );
    if (UpperCase(MethodName) = 'KOPEIKA') then
      Result := Kopeika( Trunc(Params[0]), Params[1] );
  except
  end;
end;


//
//  Конец кассового дня
//
procedure Tcashbook.BitBtn4Click(Sender: TObject);
var fs : TFormatSettings;
    goon: integer;
begin
  if fs.DecimalSeparator = ',' then ShowMessage('Переведите разделитель с ЗАПЯТОЙ на ТОЧКУ!')
  else
  begin

// Выполняем проверку, нет ли уже перебросанного дня
    goon := 0;

    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin cash_pkg.check_cash(:ddate_, :paydesk_, :count_); end;');
    DM.Q_SQL.Params.ParamByName('ddate_').AsDate      := cur_date;
    DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger := cur_paydesk;
    DM.Q_SQL.Params.ParamByName('count_').AsInteger   := 0;
    DM.Q_SQL.Execute;
    if DM.Q_SQL.ParamByName('count_').AsInteger > 0 then
    begin
       if MessageDlg('Такой кассовый день уже переброшен в свод!'+#10#13+'Вы уверены в своих действях?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
         goon := 1
       else
         goon := 0;
    end
    else goon := 1;
// ----------------------------------------------


    if goon = 1 then
    begin
      if MessageDlg('Данные буду перемещены в кассовый свод!'+#10#13+'Вы уверены в своих действях?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      try
        // Пытаемся выполнить SQL запрос по перебросу кассового дня
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin cash_pkg.move_cash(:ddate_, :paydesk_); end;');
        DM.Q_SQL.Params.ParamByName('ddate_').AsDate      := cur_date;
        DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger := cur_paydesk;
        DM.Q_SQL.Execute;

      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
          else MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          DM.CASH_TMP.EnableControls;
        end;
      End;

      DM.CASH_TMP.Refresh;

      MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
    end;
  end;
end;
end;


//
//  Просмотр отдельной кассы
//
procedure Tcashbook.cxImageComboBox3PropertiesChange(Sender: TObject);
begin
  try
    DM.CASH_TMP.Close;
    DM.CASH_TMP.Params.ParamByName('ddate_').AsDate       := cur_date;
    DM.CASH_TMP.Params.ParamByName('paydesk_').AsInteger  := imcb_kass.EditValue;
    DM.CASH_TMP.Params.ParamByName('invoice_').AsInteger  := 0;
    DM.CASH_TMP.Params.ParamByName('paydesk2_').AsInteger := 0;
    DM.CASH_TMP.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
  End;
end;


// Скопируем значение ячейкт в буфер
procedure Tcashbook.mnLoadCellClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure Tcashbook.mnLoadFooterClick(Sender: TObject);
begin
  PoolToClipbaord(gr_cashbook_v.DataController, 0);
end;

end.
