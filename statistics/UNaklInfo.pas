unit UNaklInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxGraphics, cxEdit, cxVGrid,
  cxDBVGrid, GridsEh, DBGridEh, cxControls, cxInplaceContainer, StdCtrls,
  cxButtons, ExtCtrls, cxTextEdit, Pi_library, IniFiles, DB, DBAccess, Ora,
  MemDS, DBGridEhGrouping;

type
  TfrmNaklInfo = class(TForm)
    Panel4: TPanel;
    BitBtn_Cancel: TcxButton;
    vg_doc: TcxDBVerticalGrid;
    gr_data: TDBGridEh;
    vg_docDOC_NUMBER: TcxDBEditorRow;
    vg_docOPERATOR_NAME: TcxDBEditorRow;
    vg_docDOC_DATE_REAL: TcxDBEditorRow;
    vg_docNICK: TcxDBEditorRow;
    vg_docFIO: TcxDBEditorRow;
    vg_docQUANTITY_ALL: TcxDBEditorRow;
    vg_docPRICE_ALL: TcxDBEditorRow;
    vg_docCOMMENTS: TcxDBEditorRow;
    doc: TOraQuery;
    docID_DOC: TFloatField;
    docDOC_NUMBER: TFloatField;
    docID_DOC_TYPE: TIntegerField;
    docID_DEPARTMENTS: TIntegerField;
    docDEPARTMENT_NAME: TStringField;
    docOPERATOR_NAME: TStringField;
    docDOC_DATE: TDateTimeField;
    docDOC_DATE_REAL: TDateTimeField;
    docID_CLIENT: TIntegerField;
    docNICK: TStringField;
    docFIO: TStringField;
    docQUANTITY_ALL: TFloatField;
    docPRICE_ALL: TFloatField;
    docSUM_PRICE_OLD: TFloatField;
    docSUM_PRICE_NEW: TFloatField;
    docSUM_PRICE_DIFFERENCE: TFloatField;
    docCOMMENTS: TStringField;
    docINV_ID: TFloatField;
    docORDER_ID: TFloatField;
    docSUPPLIER_DATE: TDateTimeField;
    docSUPPLIER_NUMBER: TStringField;
    docSUPLIER: TStringField;
    DOC_DS: TOraDataSource;
    doc_data_ds: TOraDataSource;
    doc_data: TOraQuery;
    doc_dataID_DOC: TFloatField;
    doc_dataN_ID: TFloatField;
    doc_dataCODE: TStringField;
    doc_dataH_CODE: TStringField;
    doc_dataF_TYPE: TStringField;
    doc_dataF_SUB_TYPE: TStringField;
    doc_dataFULL_NAME: TStringField;
    doc_dataQUANTITY: TIntegerField;
    doc_dataQUANTITY_NOW: TFloatField;
    doc_dataSTORE_TYPE_NAME: TStringField;
    doc_dataSTORE_TYPE: TIntegerField;
    doc_dataPRICE_LIST: TFloatField;
    doc_dataQUANTITY_PRICE: TFloatField;
    doc_dataPRICE_PERCENT: TFloatField;
    doc_dataPRICE: TFloatField;
    doc_dataGTD: TStringField;
    doc_dataSPESIFICATION: TStringField;
    doc_dataPRICE_PCC: TFloatField;
    doc_dataSUM_PRICE_PCC: TFloatField;
    procedure FormShow(Sender: TObject);
  private
    path: string;
    { Private declarations }
  public
    v_vid: integer;
    { Public declarations }
  end;

var
  frmNaklInfo: TfrmNaklInfo;

implementation


{$R *.dfm}

procedure TfrmNaklInfo.FormShow(Sender: TObject);
begin
  gr_data.SetFocus;
end;

end.
