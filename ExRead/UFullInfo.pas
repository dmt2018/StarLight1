unit UFullInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxGraphics, cxEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxControls, cxContainer, cxImage, cxCheckBox, jpeg, DB, DBAccess, Ora, MemDS,
  cxLabel, GridsEh, DBGridEh, cxPC, DBGridEhGrouping, cxTextEdit;

type
  Tfrm_full_info = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    stPrimary: TcxStyle;
    stSecondary: TcxStyle;
    SelNom: TOraQuery;
    SelNom_DS: TOraDataSource;
    btn_del: TcxButton;
    pcMain: TcxPageControl;
    tshNom: TcxTabSheet;
    tshStore: TcxTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1H_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1F_NAME_RU: TcxDBEditorRow;
    cxDBVerticalGrid1F_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1H_CODE: TcxDBEditorRow;
    cxDBVerticalGrid1TYPE_SUBTYPE: TcxDBEditorRow;
    cxDBVerticalGrid1HOL_TYPE: TcxDBEditorRow;
    cxDBVerticalGrid1COLOUR: TcxDBEditorRow;
    cxDBVerticalGrid1LEN: TcxDBEditorRow;
    cxDBVerticalGrid1PACK: TcxDBEditorRow;
    cxDBVerticalGrid1DIAMETER: TcxDBEditorRow;
    cxDBVerticalGrid1COUNTRY: TcxDBEditorRow;
    cxDBVerticalGrid1S_NAME_RU: TcxDBEditorRow;
    cxDBVerticalGrid1CODE: TcxDBEditorRow;
    cxDBVerticalGrid1BAR_CODE: TcxDBEditorRow;
    cxDBVerticalGrid1VBN: TcxDBEditorRow;
    cxDBVerticalGrid1WEIGHT: TcxDBEditorRow;
    cxDBVerticalGrid1CUST_COEF: TcxDBEditorRow;
    cxDBVerticalGrid1REMARKS: TcxDBEditorRow;
    cxDBVerticalGrid1RUS_MARKS: TcxDBEditorRow;
    cxDBVerticalGrid1PHOTO: TcxDBEditorRow;
    Panel4: TPanel;
    Image1: TImage;
    gtd: TOraQuery;
    gtdID_GTD: TFloatField;
    gtdDDATE: TDateTimeField;
    gtdN_ID: TFloatField;
    gtdINPUT: TFloatField;
    gtdOUTPUT_STORE: TFloatField;
    gtdGTD: TStringField;
    gtd_ds: TOraDataSource;
    DBGridEh: TDBGridEh;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    lbStore: TcxLabel;
    lbLastIn: TcxLabel;
    lbFirstIn: TcxLabel;
    lbTotal: TcxLabel;
    cxDBVerticalGrid1WEIGHTDRY: TcxDBEditorRow;
    SelNomCOMPILED_NAME: TStringField;
    SelNomFULL_NAME: TStringField;
    SelNomF_NAME: TStringField;
    SelNomF_NAME_RU: TStringField;
    SelNomF_SUB_TYPE: TStringField;
    SelNomF_TYPE: TStringField;
    SelNomID_DEPARTMENTS: TFloatField;
    SelNomDEPT: TStringField;
    SelNomFT_ID: TFloatField;
    SelNomHOL_SUB_TYPE: TStringField;
    SelNomSUB_WEIGHT: TFloatField;
    SelNomHT_ID: TFloatField;
    SelNomN_ID: TFloatField;
    SelNomFN_ID: TFloatField;
    SelNomFST_ID: TFloatField;
    SelNomS_ID: TFloatField;
    SelNomC_ID: TFloatField;
    SelNomCOL_ID: TFloatField;
    SelNomH_CODE: TStringField;
    SelNomH_NAME: TStringField;
    SelNomCODE: TFloatField;
    SelNomLEN: TIntegerField;
    SelNomPACK: TIntegerField;
    SelNomDIAMETER: TFloatField;
    SelNomHOL_TYPE: TStringField;
    SelNomWEIGHT: TFloatField;
    SelNomREMARKS: TStringField;
    SelNomS_NAME_RU: TStringField;
    SelNomBAR_CODE: TStringField;
    SelNomCUST_COEF: TFloatField;
    SelNomPHOTO: TStringField;
    SelNomIS_PHOTO: TFloatField;
    SelNomCOLOUR: TStringField;
    SelNomCOUNTRY: TStringField;
    SelNomTYPE_SUBTYPE: TStringField;
    SelNomHOL_MARKS: TStringField;
    SelNomRUS_MARKS: TStringField;
    SelNomGREAT_NAME: TStringField;
    SelNomGREAT_NAME_F: TStringField;
    SelNomNAME_CODE: TStringField;
    SelNomCOMPILED_NAME_OTDEL: TStringField;
    SelNomID_OFFICE: TIntegerField;
    SelNomDATE_CHANGE: TDateTimeField;
    SelNomNOPRINT: TIntegerField;
    SelNomNOTUSE: TIntegerField;
    SelNomNAMECODE: TStringField;
    SelNomTNVED: TStringField;
    SelNomWEIGHTDRY: TFloatField;
    cxDBVerticalGrid1N_ID: TcxDBEditorRow;
    SelNomVBN: TIntegerField;
    SelNomNOM_NEW: TIntegerField;
    SelNomNOM_START: TIntegerField;
    SelNomNOM_END: TIntegerField;
    SelNomHOL_COLOR: TStringField;
    SelNomNSI_NAME: TStringField;
    SelNomHOL_PACK: TIntegerField;
    cxDBVerticalGrid1HOL_PACK: TcxDBEditorRow;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_delClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_full_info: Tfrm_full_info;

implementation

uses DataModule;

{$R *.dfm}

procedure Tfrm_full_info.btn_delClick(Sender: TObject);
VAR N_ID : integer;
    OutText : Variant;
begin
  if MessageDlg('Вы действительно хотите удалить номенклатуру?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
      N_ID := SelNom.FieldByName('N_ID').Value;
      with DM.StorProc do
      Begin
        StoredProcName := 'NOMENCLATURE_PKG.DELETE_SPEC';
        Prepare;
        ParamByName('N_ID_').Value := N_ID;
        ExecProc;
        OutText := ParamByName('OUT_TEXT').Value;
        if (OutText <> '') then
           MessageBox(Handle, PChar(VarToStr(OutText)), 'Ошибка', MB_ICONERROR)
        else
        begin
           MessageBox(Handle, 'Номенклатура удалена', 'Результат', MB_ICONInformation );
           close;
        end;
      End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;

end;

procedure Tfrm_full_info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  gtd.Close;
  SelNom.Close;
end;

procedure Tfrm_full_info.FormShow(Sender: TObject);
var tq: TOraQuery;
begin
  pcMain.ActivePageIndex := 0;
  
  tq := TOraQuery.Create(Self);
  try
    tq.SQL.Add('select a.*, (select sum(c.quantity) from store_main c where c.n_id = '+VarToStr(SelNom.FieldByName('N_ID').Value)+') storeQ '+
      'from ( '+
      'select min(doc_date) as minIn, max(doc_date) as maxIn, count(1) as countIn '+
      'from store_doc a '+
      'where a.id_doc_type = 1 and a.id_office = const_office '+
      'and exists (select 1 from store_doc_data b where b.id_doc = a.id_doc and b.n_id = '+VarToStr(SelNom.FieldByName('N_ID').Value)+') '+
      ') a');
    tq.Open;
    if not tq.IsEmpty then
    begin
      lbStore.Caption   := tq.FieldByName('storeQ').AsString;
      lbLastIn.Caption  := tq.FieldByName('maxIn').AsString;
      lbFirstIn.Caption := tq.FieldByName('minIn').AsString;
      lbTotal.Caption   := tq.FieldByName('countIn').AsString;
    end;
    tq.Close;

    gtd.Close;
    gtd.ParamByName('p_n_id').AsInteger := SelNom.FieldByName('N_ID').Value;
    gtd.Open;
  finally
    tq.Free;
  end;
end;

end.
