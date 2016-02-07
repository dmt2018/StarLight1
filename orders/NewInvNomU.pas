unit NewInvNomU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, StdCtrls, ComCtrls, Buttons, ExtCtrls,PI_Library,
  ActnList, Menus, cxLookAndFeelPainters, cxButtons, Mask,
  DBCtrlsEh, cxGraphics, DB, Ora, MemDS, DBAccess, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TNewInvNomF = class(TForm)
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    vbn_box: TCheckBox;
    Edit6: TEdit;
    Label1: TLabel;
    Edit7: TEdit;
    Panel9: TPanel;
    Label2: TLabel;
    Edit8: TEdit;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    CDS_FLOWERS: TOraQuery;
    CDS_FLOWERSFN_ID: TFloatField;
    CDS_FLOWERSF_NAME_RU: TStringField;
    CDS_TYPE: TOraQuery;
    CDS_TYPEFT_ID: TFloatField;
    CDS_TYPEF_TYPE: TStringField;
    CDS_TYPEFT_ID_: TFloatField;
    CDS_SUBTYPE: TOraQuery;
    CDS_SUBTYPEFST_ID: TFloatField;
    CDS_SUBTYPEF_SUB_TYPE: TStringField;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    CDS_COUNTRY: TOraQuery;
    CDS_COUNTRYC_ID: TIntegerField;
    CDS_COUNTRYCOUNTRY: TStringField;
    CDS_COLOR: TOraQuery;
    CDS_COLORCOL_ID: TFloatField;
    CDS_COLORCOLOUR: TStringField;
    DS_COLOR: TOraDataSource;
    DS_COUNTRY: TOraDataSource;
    DS_SUPPLIER: TOraDataSource;
    DS_SUBTYPE: TOraDataSource;
    DS_TYPE: TOraDataSource;
    DS_FLOWERS: TOraDataSource;
    lookcombo_name: TcxLookupComboBox;
    lookcombo_type: TcxLookupComboBox;
    lookcombo_subtype: TcxLookupComboBox;
    lookcombo_suplier: TcxLookupComboBox;
    lookcombo_country: TcxLookupComboBox;
    lookcombo_color: TcxLookupComboBox;
    ActionList1: TActionList;
    A_done: TAction;
    A_cancel: TAction;
    Label3: TLabel;
    Edit9: TEdit;
    lookcombo_htype: TcxLookupComboBox;
    CDS_HOL_TYPE: TOraQuery;
    DS_HOL_TYPE: TOraDataSource;
    CDS_HOL_TYPEHT_ID: TFloatField;
    CDS_HOL_TYPEHOL_TYPE: TStringField;
    procedure FlEditChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure A_doneExecute(Sender: TObject);
  private
    { Private declarations }
  public
    CUR_DEPT_ID, FN_ID, FT_ID, FST_ID, C_ID, S_ID, COL_ID, HT_ID: Integer;
    procedure SetCombos();
    { Public declarations }
  end;

var
  NewInvNomF: TNewInvNomF;

implementation

uses frm_DM;



{$R *.dfm}


procedure TNewInvNomF.FlEditChange(Sender: TObject);
begin
  CheckTEditContentFloat(Sender,clWindow,clRed);
end;


//
//  Заполняем справочники
//
procedure TNewInvNomF.SetCombos();
Begin
  CDS_FLOWERS.Close;
  CDS_FLOWERS.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_FLOWERS.Open;
  lookcombo_name.EditValue := FN_ID;

  CDS_TYPE.Close;
  CDS_TYPE.ParamByName('dep_').AsInteger := CUR_DEPT_ID;
  CDS_TYPE.Open;

  CDS_SUBTYPE.Open;
  lookcombo_type.EditValue := FT_ID;
  lookcombo_subtype.EditValue := FST_ID;

  CDS_SUPPLIER.Close;
  CDS_SUPPLIER.Open;
  lookcombo_suplier.EditValue := S_ID;

  CDS_COUNTRY.Close;
  CDS_COUNTRY.Open;
  lookcombo_country.EditValue := C_ID;

  CDS_COLOR.Close;
  CDS_COLOR.Open;
  lookcombo_color.EditValue := COL_ID;

  CDS_HOL_TYPE.Close;
  CDS_HOL_TYPE.Open;
  lookcombo_htype.EditValue := HT_ID;
End;



//
//  При открытии формы
//
procedure TNewInvNomF.FormShow(Sender: TObject);
begin
  SetCombos;  // Заполняем справочники
end;

procedure TNewInvNomF.A_doneExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
