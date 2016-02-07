unit UNamesChoise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, MemDS,
  DBAccess, Ora, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  cxContainer, cxLabel, cxButtons, ExtCtrls, PI_library;

type
  TfrmNamesChoise = class(TForm)
    pnl_bottom: TPanel;
    pnl_top: TPanel;
    btnClose: TcxButton;
    btnOk: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    lbl_code: TLabel;
    lbl_name: TLabel;
    lbl_remarks: TLabel;
    gr_fname: TcxGrid;
    gr_fname_View: TcxGridDBTableView;
    gr_fname_ViewFN_ID: TcxGridDBColumn;
    gr_fname_ViewF_NAME_RU: TcxGridDBColumn;
    gr_fname_ViewID_DEPARTMENTS: TcxGridDBColumn;
    gr_fname_Level: TcxGridLevel;
    FlowerNames: TOraQuery;
    FlowerNames_DS: TDataSource;
    FlowerNamesFN_ID: TFloatField;
    FlowerNamesF_NAME_RU: TStringField;
    FlowerNamesID_DEPARTMENTS: TFloatField;
    FlowerNamesF_NAME: TStringField;
    FlowerNamesNAME_CODE: TStringField;
    FlowerNamesREMARKS: TStringField;
    gr_fname_ViewF_NAME: TcxGridDBColumn;
    gr_fname_ViewNAME_CODE: TcxGridDBColumn;
    gr_fname_ViewREMARKS: TcxGridDBColumn;
    lb_error: TLabel;
    lbl_code_v: TLabel;
    lbl_name_v: TLabel;
    lbl_remarks_v: TLabel;
    procedure gr_fname_ViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gr_fname_ViewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNamesChoise: TfrmNamesChoise;

implementation

uses DataModule, Globals;

{$R *.dfm}

procedure TfrmNamesChoise.FormClose(Sender: TObject; var Action: TCloseAction);
var FNT_ID: integer;
begin
  if (ModalResult = mrOk) and (not FlowerNames.IsEmpty) then
  begin
    FNT_ID := EditTransName(DM.StorProc, FlowerNames, 0
          , lbl_name_v.Caption
          , CUR_DEPT_ID
          , FlowerNamesFN_ID.AsInteger
          , lbl_code_v.Caption
          , lbl_remarks_v.Caption
        );

    Action := caFree;
  end;

  if (ModalResult = mrOk) and (FlowerNames.IsEmpty) then
  begin
    MessageBox(Handle,'Не указано название!','Внимание', MB_ICONINFORMATION);
    Action := caNone;
  end;
end;

procedure TfrmNamesChoise.gr_fname_ViewDblClick(Sender: TObject);
begin
  if (not FlowerNames.IsEmpty) then ModalResult := mrOk;
end;

procedure TfrmNamesChoise.gr_fname_ViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (not FlowerNames.IsEmpty) then ModalResult := mrOk;
end;

end.
