unit UFullInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxGraphics, cxEdit, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxControls, cxContainer, cxImage, cxCheckBox, jpeg, DB, DBAccess, Ora, MemDS,
  cxMemo;

type
  Tfrm_full_info = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    Panel3: TPanel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxStyleRepository1: TcxStyleRepository;
    stPrimary: TcxStyle;
    stSecondary: TcxStyle;
    SelNom: TOraQuery;
    SelNom_DS: TOraDataSource;
    cxDBVerticalGrid1FIO: TcxDBEditorRow;
    cxDBVerticalGrid1NICK: TcxDBEditorRow;
    cxDBVerticalGrid1CCODE: TcxDBEditorRow;
    cxDBVerticalGrid1ADDRESS: TcxDBEditorRow;
    cxDBVerticalGrid1U_ADDRESS: TcxDBEditorRow;
    cxDBVerticalGrid1PHONE: TcxDBEditorRow;
    cxDBVerticalGrid1PASSPORT: TcxDBEditorRow;
    cxDBVerticalGrid1CONTACT: TcxDBEditorRow;
    cxDBVerticalGrid1CONT_PHONE: TcxDBEditorRow;
    cxDBVerticalGrid1EMAIL: TcxDBEditorRow;
    cxDBVerticalGrid1WWW: TcxDBEditorRow;
    cxDBVerticalGrid1INN: TcxDBEditorRow;
    cxDBVerticalGrid1REG_SVID: TcxDBEditorRow;
    cxDBVerticalGrid1KPP: TcxDBEditorRow;
    cxDBVerticalGrid1OKATO: TcxDBEditorRow;
    cxDBVerticalGrid1BANK: TcxDBEditorRow;
    cxDBVerticalGrid1AGREEMENT: TcxDBEditorRow;
    cxDBVerticalGrid1DDATE: TcxDBEditorRow;
    cxDBVerticalGrid1BLOCK1: TcxDBEditorRow;
    cxDBVerticalGrid1BLOCK2: TcxDBEditorRow;
    cxDBVerticalGrid1FLOWERS: TcxDBEditorRow;
    cxDBVerticalGrid1PLANTS: TcxDBEditorRow;
    cxDBVerticalGrid1MARK: TcxDBEditorRow;
    cxDBVerticalGrid1CORRECTOR: TcxDBEditorRow;
    cxDBVerticalGrid1DATE_COR: TcxDBEditorRow;
    cxDBVerticalGrid1CORRECTOR_COR: TcxDBEditorRow;
    cxDBVerticalGrid1INSURANCE: TcxDBEditorRow;
    cxDBVerticalGrid1INFO: TcxDBEditorRow;
    cxDBVerticalGrid1DOSTAVKA: TcxDBEditorRow;
    cxDBVerticalGrid1REG_TYPE_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1GROUP_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1TTYPE_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1REGION_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1ADVERT: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1Office: TcxDBEditorRow;
    SelNomID_CLIENTS: TIntegerField;
    SelNomFIO: TStringField;
    SelNomNICK: TStringField;
    SelNomCCODE: TStringField;
    SelNomREGION: TIntegerField;
    SelNomADDRESS: TStringField;
    SelNomU_ADDRESS: TStringField;
    SelNomPHONE: TStringField;
    SelNomPASSPORT: TStringField;
    SelNomCONTACT: TStringField;
    SelNomCONT_PHONE: TStringField;
    SelNomEMAIL: TStringField;
    SelNomWWW: TStringField;
    SelNomINN: TStringField;
    SelNomREG_SVID: TStringField;
    SelNomKPP: TStringField;
    SelNomOKATO: TStringField;
    SelNomBANK: TStringField;
    SelNomAGREEMENT: TStringField;
    SelNomADVERTISMENT: TIntegerField;
    SelNomDDATE: TDateTimeField;
    SelNomBLOCK1: TIntegerField;
    SelNomBLOCK2: TIntegerField;
    SelNomFLOWERS: TIntegerField;
    SelNomPLANTS: TIntegerField;
    SelNomMARK: TStringField;
    SelNomTTYPE: TIntegerField;
    SelNomID_CLIENTS_GROUPS: TIntegerField;
    SelNomCORRECTOR: TStringField;
    SelNomDATE_COR: TDateTimeField;
    SelNomCORRECTOR_COR: TStringField;
    SelNomDUTIES: TStringField;
    SelNomINSURANCE: TStringField;
    SelNomDATE_IN: TDateTimeField;
    SelNomDATE_OUT: TDateTimeField;
    SelNomL_SERVICE: TStringField;
    SelNomSTAFF: TIntegerField;
    SelNomACTIVE: TIntegerField;
    SelNomLOGIN: TStringField;
    SelNomINFO: TStringField;
    SelNomREG_TYPE: TIntegerField;
    SelNomCOUNT: TIntegerField;
    SelNomDOSTAVKA: TIntegerField;
    SelNomREG_TYPE_NAME: TStringField;
    SelNomGROUP_NAME: TStringField;
    SelNomTTYPE_NAME: TStringField;
    SelNomREGION_NAME: TStringField;
    SelNomADVERT: TStringField;
    SelNomDEPART: TStringField;
    SelNomJOB_TITLES: TStringField;
    SelNomBRIEF: TStringField;
    SelNomCITY: TStringField;
    SelNomID_CITY: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_full_info: Tfrm_full_info;

implementation

uses DataM;

{$R *.dfm}

end.
