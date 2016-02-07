unit UChoiseType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxTextEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Ora, MemDS, DBAccess, ActnList;

type
  Tfrm_choise_type = class(TForm)
    Panel2: TPanel;
    Panel9: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    Q_FLOWER_TYPE: TOraQuery;
    Q_FLOWER_TYPE_DS: TOraDataSource;
    Q_FLOWER_TYPEF_TYPE: TStringField;
    Q_FLOWER_TYPEFT_ID: TFloatField;
    grid_uc: TcxGrid;
    grid_ucView: TcxGridDBTableView;
    grid_uc_Level: TcxGridLevel;
    grid_ucViewF_TYPE: TcxGridDBColumn;
    grid_ucViewFT_ID: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ActionList1: TActionList;
    aEnter: TAction;
    pnlPrint: TPanel;
    chbAllTypes: TCheckBox;
    aCheckAll: TAction;
    btnPrint1: TcxButton;
    btnPrint2: TcxButton;
    aPrint1: TAction;
    aPrint2: TAction;
    Label1: TLabel;
    procedure aEnterExecute(Sender: TObject);
    procedure grid_ucViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ucViewDblClick(Sender: TObject);
    procedure aCheckAllExecute(Sender: TObject);
    procedure aPrint1Execute(Sender: TObject);
    procedure aPrint2Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_choise_type: Tfrm_choise_type;

implementation

{$R *.dfm}

procedure Tfrm_choise_type.aCheckAllExecute(Sender: TObject);
begin
  if pnlPrint.Visible then
    chbAllTypes.Checked := not chbAllTypes.Checked;
end;

procedure Tfrm_choise_type.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure Tfrm_choise_type.aPrint1Execute(Sender: TObject);
begin
  if pnlPrint.Visible then
  begin
    pnlPrint.Tag := 1;
    ModalResult := mrOk;
  end;
end;

procedure Tfrm_choise_type.aPrint2Execute(Sender: TObject);
begin
  if pnlPrint.Visible then
  begin
    pnlPrint.Tag := 2;
    ModalResult := mrOk;
  end;
end;

procedure Tfrm_choise_type.grid_ucViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     ModalResult := mrOk;
end;

procedure Tfrm_choise_type.grid_ucViewDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
