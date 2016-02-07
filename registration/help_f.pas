unit help_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGrids, Buttons, ComCtrls, StdCtrls, ExtCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, Grids;

type
  Thelp = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    Label10: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox3: TCheckBox;
    Edit3: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    Label17: TLabel;
    BitBtn21: TBitBtn;
    Label18: TLabel;
    DBGrid6: TDBGrid;
    DBGrid5: TDBGrid;
    Label19: TLabel;
    BitBtn7: TBitBtn;
    Label20: TLabel;
    Label21: TLabel;
    BitBtn13: TcxButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  help: Thelp;

implementation

{$R *.dfm}

procedure Thelp.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
