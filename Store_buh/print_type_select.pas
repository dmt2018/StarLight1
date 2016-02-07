unit print_type_select;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, Mask, useful_functions,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Ora, MemDS, DBAccess, Menus,
  cxLookAndFeelPainters, ActnList, cxButtons, frxExportMail, frxExportText,
  frxExportCSV, frxExportRTF, frxExportXLS, frxExportPDF, frxClass,
  frxExportHTML, frxDBSet;

type
  TPrintTypeSelectForm = class(TForm)
    Panel6: TPanel;
    pnl_top: TPanel;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    gr_address: TcxGrid;
    gr_address_v: TcxGridDBTableView;
    gr_address_vADDRESS: TcxGridDBColumn;
    gr_address_vID: TcxGridDBColumn;
    gr_address_vID_CLIENTS: TcxGridDBColumn;
    gr_address_l: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    ActionList1: TActionList;
    aShowAll: TAction;
    Button1: TButton;
    pnl_print: TPanel;
    GroupBox1: TGroupBox;
    NaKladCB: TCheckBox;
    NaKlad1CB: TCheckBox;
    GroupBox3: TGroupBox;
    PrintNumberEdit: TLabeledEdit;
    UpDown1: TUpDown;
    ViewCB: TCheckBox;
    gbCargo: TGroupBox;
    chb_handcargo: TCheckBox;
    grCargo: TcxGrid;
    grCargo_v: TcxGridDBTableView;
    grCargo_vADDRESS: TcxGridDBColumn;
    grCargo_vID_CLIENTS: TcxGridDBColumn;
    grCargo_l: TcxGridLevel;
    grCargo_vFIO: TcxGridDBColumn;
    grCargo_vINN: TcxGridDBColumn;
    grCargo_vKPP: TcxGridDBColumn;
    grCargo_vNICK: TcxGridDBColumn;
    grCargo_vPHONE: TcxGridDBColumn;
    grCargo_vBANK: TcxGridDBColumn;
    grCargo_vTTYPE_NAME: TcxGridDBColumn;
    Label3: TLabel;
    procedure PrintNumberEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure aShowAllExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chb_handcargoClick(Sender: TObject);
    procedure NaKlad1CBClick(Sender: TObject);
    procedure NaKladCBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    documenttype_id  : integer;
    documenttype_name: string;
    id_client_       : integer;
  end;

var
  PrintTypeSelectForm: TPrintTypeSelectForm;

implementation

uses DataM, global, doc_view {, frx2xto30};
{$R *.dfm}


procedure TPrintTypeSelectForm.FormShow(Sender: TObject);
begin
  pnl_top.Caption := documenttype_name;

  if (documenttype_id = 3) then
    GroupBox1.Visible := true;
end;


procedure TPrintTypeSelectForm.NaKlad1CBClick(Sender: TObject);
begin
  NaKladCB.Checked := not NaKlad1CB.Checked;
end;

procedure TPrintTypeSelectForm.NaKladCBClick(Sender: TObject);
begin
  NaKlad1CB.Checked := not NaKladCB.Checked;
end;

procedure TPrintTypeSelectForm.aShowAllExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


procedure TPrintTypeSelectForm.PrintNumberEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  AllowOnlyNumber(Key);
end;


//
//  Êîíâåğòàöèÿ îò÷åòîâ èç 2-é âåğñèè â 4-ş
//
procedure TPrintTypeSelectForm.Button1Click(Sender: TObject);
begin
// frxReportDocs.LoadFromFile('raports\_reprice.frf');
// frxReportDocs.SaveToFile('raports\doc_reprice.fr3');
end;


procedure TPrintTypeSelectForm.chb_handcargoClick(Sender: TObject);
begin
  DM.cdsClients.ParamByName('group_id').AsInteger := grCargo.Tag;
  DM.cdsClients.Active := ((chb_handcargo.Checked) and (grCargo.Tag > 2));
end;

end.
