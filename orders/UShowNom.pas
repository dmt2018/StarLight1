unit UShowNom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Ora, MemDS, DBAccess, GridsEh, DBGridEh, StdCtrls, Buttons,
  ExtCtrls, DBGridEhGrouping;

type
  Tfrm_show_nom = class(TForm)
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    CDS_NOM: TOraQuery;
    DS_CDS_NOM: TOraDataSource;
    CDS_NOMN_ID: TFloatField;
    CDS_NOMTRUCK: TIntegerField;
    CDS_NOMWEIGHT: TFloatField;
    CDS_NOMQUANTITY: TIntegerField;
    CDS_NOMID_ORDERS: TFloatField;
    CDS_NOMVBN: TIntegerField;
    CDS_NOMLEN: TIntegerField;
    CDS_NOMPACK: TIntegerField;
    CDS_NOMHOL_TYPE: TStringField;
    CDS_NOMH_NAME: TStringField;
    CDS_NOMF_SUB_TYPE: TStringField;
    CDS_NOMF_TYPE: TStringField;
    CDS_NOMHOL_SUB_TYPE: TStringField;
    CDS_NOMFST_ID: TFloatField;
    CDS_NOMNICK: TStringField;
    CDS_NOMID_ORDERS_CLIENTS: TFloatField;
    CDS_NOMALPHA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_nom: Tfrm_show_nom;

implementation

uses frm_DM, frm_first_dialog;

{$R *.dfm}

procedure Tfrm_show_nom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frm_show_nom.DBGridEh1.SumList.Active := false;
end;

procedure Tfrm_show_nom.FormShow(Sender: TObject);
begin
  DBGridEh1.Font.Size := first_dialog_frm.uFont;
end;

end.
