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
    CDS_DEPS: TOraQuery;
    DS_DEPS: TOraDataSource;
    CDS_DEPSNICK: TStringField;
    CDS_DEPSFIO: TStringField;
    CDS_DEPSDOSTAVKA: TIntegerField;
    CDS_DEPSID_DEBETORS: TFloatField;
    CDS_DEPSID_CLIENTS: TIntegerField;
    CDS_DEPSLAST_DDATE: TDateTimeField;
    CDS_DEPSSTATE: TIntegerField;
    CDS_DEPSBEZNAL: TIntegerField;
    CDS_DEPSMARK: TIntegerField;
    CDS_DEPSDEBET: TFloatField;
    CDS_DEPSCREDIT_DAYS: TIntegerField;
    CDS_DEPSINFO: TStringField;
    CDS_DEPSDDATE: TDateTimeField;
    CDS_DEPSRUBL: TIntegerField;
    CDS_DEPSCHART: TFloatField;
    CDS_DEPSBLOCK1: TIntegerField;
    CDS_DEPSPHONE: TStringField;
    CDS_DEPSREGION: TIntegerField;
    CDS_DEPSGROUP_NAME: TStringField;
    CDS_DEPSID_CLIENTS_GROUPS: TIntegerField;
    CDS_DEPSKKK: TStringField;
    CDS_DEPSMARK_KOL: TFloatField;
    CDS_DEPSMAX_DATE: TDateTimeField;
    CDS_DEPSCHART2: TFloatField;
    CDS_DEPSIS_LOCK: TIntegerField;
    CDS_DEPSLOCK_FOR: TIntegerField;
    CDS_DEPSLOCK_CLIENT: TStringField;
    CDS_DEPSSALES: TFloatField;
    CDS_DEPSWW: TStringField;
    cxDBVerticalGrid1NICK: TcxDBEditorRow;
    cxDBVerticalGrid1FIO: TcxDBEditorRow;
    cxDBVerticalGrid1DOSTAVKA: TcxDBEditorRow;
    cxDBVerticalGrid1STATE: TcxDBEditorRow;
    cxDBVerticalGrid1BEZNAL: TcxDBEditorRow;
    cxDBVerticalGrid1CREDIT_DAYS: TcxDBEditorRow;
    cxDBVerticalGrid1INFO: TcxDBEditorRow;
    cxDBVerticalGrid1DDATE: TcxDBEditorRow;
    cxDBVerticalGrid1RUBL: TcxDBEditorRow;
    cxDBVerticalGrid1CHART: TcxDBEditorRow;
    cxDBVerticalGrid1BLOCK1: TcxDBEditorRow;
    cxDBVerticalGrid1PHONE: TcxDBEditorRow;
    cxDBVerticalGrid1GROUP_NAME: TcxDBEditorRow;
    cxDBVerticalGrid1MAX_DATE: TcxDBEditorRow;
    cxDBVerticalGrid1CHART2: TcxDBEditorRow;
    cxDBVerticalGrid1IS_LOCK: TcxDBEditorRow;
    cxDBVerticalGrid1LOCK_CLIENT: TcxDBEditorRow;
    cxDBVerticalGrid1SALES: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    CDS_DEPSBLOCK2: TIntegerField;
    CDS_DEPSCHART_GROUP: TFloatField;
    CDS_DEPSCHART_FOR_GROUP: TFloatField;
    CDS_DEPSID_OFFICE: TIntegerField;
    CDS_DEPSBRIEF: TStringField;
    cxDBVerticalGrid1BRIEF: TcxDBEditorRow;
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
