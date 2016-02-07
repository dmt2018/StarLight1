unit info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxMemo, Ora,
  MemDS, DBAccess, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  Tu_info = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label24: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit11: TDBEdit;
    Label8: TLabel;
    Label45: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    Label52: TLabel;
    DBMemo4: TDBMemo;
    Label33: TLabel;
    DBEdit16: TDBEdit;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Label35: TLabel;
    DBEdit14: TDBEdit;
    Label37: TLabel;
    DBEdit15: TDBEdit;
    Label31: TLabel;
    DBMemo3: TDBMemo;
    Label40: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label29: TLabel;
    DBMemo2: TDBMemo;
    DBMemo6: TDBMemo;
    Label25: TLabel;
    DBMemo5: TDBMemo;
    Label51: TLabel;
    Label44: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    DBMemo7: TDBMemo;
    Label5: TLabel;
    DBText5: TDBText;
    BitBtn13: TcxButton;
    DBCheckBox1: TDBCheckBox;
    TabSheet3: TTabSheet;
    gr_address: TcxGrid;
    gr_address_v: TcxGridDBTableView;
    gr_address_vADDRESS: TcxGridDBColumn;
    gr_address_vID: TcxGridDBColumn;
    gr_address_vID_CLIENTS: TcxGridDBColumn;
    gr_address_l: TcxGridLevel;
    Q_ADDRESS: TOraQuery;
    Q_ADDRESSID: TIntegerField;
    Q_ADDRESSADDRESS: TStringField;
    Q_ADDRESSID_CLIENTS: TIntegerField;
    Q_Q_ADDRESS_DS: TOraDataSource;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label13: TLabel;
    tshInfoInet: TTabSheet;
    chbRuleSite: TCheckBox;
    chbRulePics: TCheckBox;
    chbRulePrice: TCheckBox;
    chbRuleOrder: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  u_info: Tu_info;

implementation

uses DataM;

{$R *.dfm}

procedure Tu_info.BitBtn3Click(Sender: TObject);
begin
  close;
end;

end.
