unit UStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, DB,
  Ora, MemDS, DBAccess, cxStyles, cxGraphics, cxEdit, cxCurrencyEdit,
  ImgList, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer, cxCalendar,
  cxLabel, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tfrm_stat = class(TForm)
    Panel3: TPanel;
    cxButton2: TcxButton;
    Panel1: TPanel;
    CDS_STAT: TOraQuery;
    DS_STAT: TOraDataSource;
    CDS_STATHOL_PAY: TFloatField;
    CDS_STATRUB_SUM: TFloatField;
    CDS_STATTOTAL_SUM: TFloatField;
    CDS_STATPROFIT: TFloatField;
    CDS_STATPCC_SUM: TFloatField;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    stat_HOL_PAY: TcxDBEditorRow;
    stat_RUB_SUM: TcxDBEditorRow;
    stat_TOTAL_SUM: TcxDBEditorRow;
    stat_PROFIT: TcxDBEditorRow;
    stat_PCC_SUM: TcxDBEditorRow;
    ImageList1: TImageList;
    stat_Category1: TcxCategoryRow;
    stat_spisanie: TcxDBEditorRow;
    CDS_STATSPIS_SIM: TFloatField;
    CDS_STATUC_SUM: TFloatField;
    stat_ucen: TcxDBEditorRow;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxButton1: TcxButton;
    CDS_STATREPRICE_PROFIT: TFloatField;
    stat_reprice_profit: TcxDBEditorRow;
    CDS_STATINV_PROFIT: TFloatField;
    stat_INV_PROFIT: TcxDBEditorRow;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_stat: Tfrm_stat;

implementation

uses DataModule, Globals;

{$R *.dfm}

procedure Tfrm_stat.cxButton1Click(Sender: TObject);
begin
  cxDateEdit1.PostEditValue;
  cxDateEdit2.PostEditValue;
  CDS_STAT.Close;
  CDS_STAT.ParamByName('id_').AsInteger      := DM.PPL_Index.FieldByName('PPLI_ID').Value;
  CDS_STAT.ParamByName('id_dep_').AsInteger  := CUR_DEPT_ID;
  CDS_STAT.ParamByName('date1_').AsDate      := cxDateEdit1.EditValue;
  CDS_STAT.ParamByName('date2_').AsDate      := cxDateEdit2.EditValue;
  CDS_STAT.ParamByName('v_office').AsInteger := dm.id_office;
  CDS_STAT.Open;
end;

end.
