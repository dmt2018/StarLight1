unit UFullInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxGraphics, cxEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxControls, cxContainer, cxImage, cxCheckBox, jpeg, DB, DBAccess, Ora, MemDS,
  cxLabel, GridsEh, DBGridEh, cxPC, cxTextEdit, DBGridEhGrouping;

type
  Tfrm_full_info = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    stPrimary: TcxStyle;
    stSecondary: TcxStyle;
    SelNom: TOraQuery;
    SelNom_DS: TOraDataSource;
    pcMain: TcxPageControl;
    tshNom: TcxTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1F_NAME_RU: TcxDBEditorRow;
    cxDBVerticalGrid1H_CODE: TcxDBEditorRow;
    cxDBVerticalGrid1COLOUR: TcxDBEditorRow;
    cxDBVerticalGrid1LEN: TcxDBEditorRow;
    cxDBVerticalGrid1PACK: TcxDBEditorRow;
    cxDBVerticalGrid1DIAMETER: TcxDBEditorRow;
    cxDBVerticalGrid1CODE: TcxDBEditorRow;
    cxDBVerticalGrid1RUS_MARKS: TcxDBEditorRow;
    Panel4: TPanel;
    Image1: TImage;
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
    SelNomVBN: TIntegerField;
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
    cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    SelNomNOM_NEW: TIntegerField;
    SelNomNOM_START: TIntegerField;
    SelNomNOM_END: TIntegerField;
    SelNomHOL_COLOR: TStringField;
    SelNomNSI_NAME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_full_info: Tfrm_full_info;

implementation

uses UClientOrder;

{$R *.dfm}

procedure Tfrm_full_info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SelNom.Close;
end;



end.
