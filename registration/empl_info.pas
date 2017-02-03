unit empl_info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, Grids, DBGrids,
  Menus, cxLookAndFeelPainters, cxButtons;

type
  Te_info = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label26: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    DBMemo2: TDBMemo;
    Label2: TLabel;
    DBMemo3: TDBMemo;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBMemo4: TDBMemo;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    DBGrid5: TDBGrid;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label17: TLabel;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label16: TLabel;
    DBText2: TDBText;
    Label22: TLabel;
    DBText1: TDBText;
    Label23: TLabel;
    DBText3: TDBText;
    Label24: TLabel;
    DBText4: TDBText;
    DBMemo5: TDBMemo;
    DBEdit10: TDBEdit;
    Label1: TLabel;
    DBMemo6: TDBMemo;
    BitBtn13: TcxButton;
    CheckBox3: TCheckBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  e_info: Te_info;

implementation

uses DataM;

{$R *.dfm}

procedure Te_info.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure Te_info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Q_EMPL_VIEW.Active = true then DM.Q_EMPL_VIEW.Close;
end;

end.
