unit UHelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ExtCtrls, cxPC, cxControls,
  cxButtons, cxContainer, cxEdit, cxLabel, frxpngimage, dxGDIPlusClasses;

type
  Tfrm_help = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    Panel1: TPanel;
    pg_help: TcxPageControl;
    tsh_edit_help: TcxTabSheet;
    Image3: TImage;
    Label4: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    tsh_main: TcxTabSheet;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    tsh_names: TcxTabSheet;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    tsh_country: TcxTabSheet;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    tsh_supliers: TcxTabSheet;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    tsh_types: TcxTabSheet;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    tsh_colour: TcxTabSheet;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel38: TcxLabel;
    tsh_spec: TcxTabSheet;
    cxLabel32: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    tsh_en_names: TcxTabSheet;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_help: Tfrm_help;

implementation

{$R *.dfm}

end.
