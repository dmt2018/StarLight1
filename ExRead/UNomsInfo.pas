unit UNomsInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxLabel,
  MemDS, DBAccess, Ora, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmNomsForName = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    pnl_top: TPanel;
    lbl_code: TLabel;
    lbl_name: TLabel;
    lbl_remarks: TLabel;
    lbl_code_v: TLabel;
    lbl_name_v: TLabel;
    lbl_remarks_v: TLabel;
    cxLabel2: TcxLabel;
    grid_nn: TcxGrid;
    grid_nnView1: TcxGridDBTableView;
    nnCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grid_nnView1H_NAME: TcxGridDBColumn;
    nn_REMARKS: TcxGridDBColumn;
    nnTYPE_SUBTYPE: TcxGridDBColumn;
    nnF_NAME: TcxGridDBColumn;
    nnH_CODE: TcxGridDBColumn;
    grid_nnView1IS_PHOTO: TcxGridDBColumn;
    nnCOLOUR: TcxGridDBColumn;
    nnLEN: TcxGridDBColumn;
    nnPACK: TcxGridDBColumn;
    nnS_NAME_RU: TcxGridDBColumn;
    nnCOUNTRY: TcxGridDBColumn;
    nnCODE: TcxGridDBColumn;
    grid_nnView1COMPILED_NAME: TcxGridDBColumn;
    grid_nnView1F_SUB_TYPE: TcxGridDBColumn;
    grid_nnView1F_TYPE: TcxGridDBColumn;
    grid_nnView1N_ID: TcxGridDBColumn;
    grid_nnView1FN_ID: TcxGridDBColumn;
    grid_nnView1FT_ID: TcxGridDBColumn;
    grid_nnView1FST_ID: TcxGridDBColumn;
    grid_nnView1S_ID: TcxGridDBColumn;
    grid_nnView1C_ID: TcxGridDBColumn;
    grid_nnView1COL_ID: TcxGridDBColumn;
    grid_nnView1BAR_CODE: TcxGridDBColumn;
    grid_nnView1WEIGHT: TcxGridDBColumn;
    grid_nnView1DIAMETER: TcxGridDBColumn;
    grid_nnView1HT_ID: TcxGridDBColumn;
    grid_nnView1PHOTO: TcxGridDBColumn;
    grid_nn_Level1: TcxGridLevel;
    cdsNomenclature: TOraQuery;
    dsNomenclature: TDataSource;
    cdsNomenclatureCOMPILED_NAME: TStringField;
    cdsNomenclatureFULL_NAME: TStringField;
    cdsNomenclatureF_NAME: TStringField;
    cdsNomenclatureF_NAME_RU: TStringField;
    cdsNomenclatureF_SUB_TYPE: TStringField;
    cdsNomenclatureF_TYPE: TStringField;
    cdsNomenclatureID_DEPARTMENTS: TFloatField;
    cdsNomenclatureDEPT: TStringField;
    cdsNomenclatureFT_ID: TFloatField;
    cdsNomenclatureHOL_SUB_TYPE: TStringField;
    cdsNomenclatureSUB_WEIGHT: TFloatField;
    cdsNomenclatureHT_ID: TFloatField;
    cdsNomenclatureN_ID: TFloatField;
    cdsNomenclatureFN_ID: TFloatField;
    cdsNomenclatureFST_ID: TFloatField;
    cdsNomenclatureS_ID: TFloatField;
    cdsNomenclatureC_ID: TFloatField;
    cdsNomenclatureCOL_ID: TFloatField;
    cdsNomenclatureH_CODE: TStringField;
    cdsNomenclatureH_NAME: TStringField;
    cdsNomenclatureCODE: TFloatField;
    cdsNomenclatureLEN: TIntegerField;
    cdsNomenclaturePACK: TIntegerField;
    cdsNomenclatureDIAMETER: TFloatField;
    cdsNomenclatureVBN: TIntegerField;
    cdsNomenclatureHOL_TYPE: TStringField;
    cdsNomenclatureWEIGHT: TFloatField;
    cdsNomenclatureREMARKS: TStringField;
    cdsNomenclatureS_NAME_RU: TStringField;
    cdsNomenclatureBAR_CODE: TStringField;
    cdsNomenclatureCUST_COEF: TFloatField;
    cdsNomenclaturePHOTO: TStringField;
    cdsNomenclatureIS_PHOTO: TFloatField;
    cdsNomenclatureCOLOUR: TStringField;
    cdsNomenclatureCOUNTRY: TStringField;
    cdsNomenclatureTYPE_SUBTYPE: TStringField;
    cdsNomenclatureHOL_MARKS: TStringField;
    cdsNomenclatureRUS_MARKS: TStringField;
    cdsNomenclatureGREAT_NAME: TStringField;
    cdsNomenclatureGREAT_NAME_F: TStringField;
    cdsNomenclatureNAME_CODE: TStringField;
    cdsNomenclatureCOMPILED_NAME_OTDEL: TStringField;
    cdsNomenclatureID_OFFICE: TIntegerField;
    cdsNomenclatureDATE_CHANGE: TDateTimeField;
    cdsNomenclatureNOPRINT: TIntegerField;
    cdsNomenclatureNOTUSE: TIntegerField;
    cdsNomenclatureNAMECODE: TStringField;
    cdsNomenclatureTNVED: TStringField;
    cdsNomenclatureWEIGHTDRY: TFloatField;
    SelQ: TOraQuery;
    SelQFN_ID: TFloatField;
    SelQF_NAME_RU: TStringField;
    SelQID_DEPARTMENTS: TFloatField;
    SelQNAME_CODE: TStringField;
    SelQFITO_NAME: TStringField;
    SelQID_OFFICE: TIntegerField;
    SelQDATE_CHANGE: TDateTimeField;
    procedure grid_nnView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function NomenclaturesOnShow(vFNid: integer): integer;

var
  frmNomsForName: TfrmNomsForName;

implementation

uses DataModule, UFullInfo, Globals;

{$R *.dfm}

function NomenclaturesOnShow(vFNid: integer): integer;
begin
  Application.CreateForm(TfrmNomsForName, frmNomsForName);
  try
    with frmNomsForName do
    begin
      SelQ.Close;
      SelQ.ParamByName('p0').AsInteger := vFNid;
      SelQ.Open;
      lbl_code_v.Caption := SelQ.FieldByName('name_code').AsString;
      lbl_name_v.Caption := SelQ.FieldByName('f_name_ru').AsString;

      cdsNomenclature.Close;
      cdsNomenclature.ParamByName('p1').AsInteger := vFNid;
      cdsNomenclature.Open;
      Result := ShowModal;
    end;
  finally
    frmNomsForName.Free;
  end;
end;


procedure TfrmNomsForName.grid_nnView1DblClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_nnView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
end;

end.
