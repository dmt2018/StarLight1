unit ShowNomU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Ora, StdCtrls, DBCtrls, Mask, Buttons,
  cxStyles, cxGraphics, cxEdit, cxVGrid, cxDBVGrid, cxControls,
  cxInplaceContainer, cxLabel, cxCheckBox, Menus, cxLookAndFeelPainters,
  cxButtons, ExtCtrls;

type
  TShowNomF = class(TForm)
    SelNom: TOraQuery;
    SelNom_DS: TOraDataSource;
    nomFViewer: TcxDBVerticalGrid;
    nomFViewerCOMPILED_NAME: TcxDBEditorRow;
    vnFULL_NAME: TcxDBEditorRow;
    nomFViewerF_NAME: TcxDBEditorRow;
    nomFViewerF_NAME_RU: TcxDBEditorRow;
    vnF_SUB_TYPE: TcxDBEditorRow;
    vnF_TYPE: TcxDBEditorRow;
    nomFViewerID_DEPARTMENTS: TcxDBEditorRow;
    vnDEPT: TcxDBEditorRow;
    nomFViewerN_ID: TcxDBEditorRow;
    nomFViewerFN_ID: TcxDBEditorRow;
    nomFViewerFT_ID: TcxDBEditorRow;
    nomFViewerFST_ID: TcxDBEditorRow;
    nomFViewerS_ID: TcxDBEditorRow;
    nomFViewerC_ID: TcxDBEditorRow;
    nomFViewerCOL_ID: TcxDBEditorRow;
    vnH_CODE: TcxDBEditorRow;
    vnH_NAME: TcxDBEditorRow;
    vnCODE: TcxDBEditorRow;
    vnLEN: TcxDBEditorRow;
    vnPACK: TcxDBEditorRow;
    vnDIAMETER: TcxDBEditorRow;
    vnVBN: TcxDBEditorRow;
    vnHOL_TYPE: TcxDBEditorRow;
    vnWEIGHT: TcxDBEditorRow;
    vnS_NAME_RU: TcxDBEditorRow;
    vnCOLOUR: TcxDBEditorRow;
    vnCOUNTRY: TcxDBEditorRow;
    nomFViewerTYPE_SUBTYPE: TcxDBEditorRow;
    vnHOL_MARKS: TcxDBEditorRow;
    vnRUS_MARKS: TcxDBEditorRow;
    vnBAR_CODE: TcxDBEditorRow;
    vnCUST_COEF: TcxDBEditorRow;
    nomFViewerGREAT_NAME: TcxDBEditorRow;
    Panel3: TPanel;
    Panel4: TPanel;
    cxButton1: TcxButton;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowNomF: TShowNomF;

procedure ShowNomenclature(OraSes : TOraSession; N_ID : Variant);

implementation

uses Globals;

{$R *.dfm}
procedure ShowNomenclature(OraSes : TOraSession; N_ID : Variant);
Begin
  Application.CreateForm(TShowNomF, ShowNomF);
  With ShowNomF do
    Begin
      SelNom.Session := OraSes;
      SelNom.ParamByName('N_ID').Value := N_ID;
      SelNom.Open;
      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
End;
end.
