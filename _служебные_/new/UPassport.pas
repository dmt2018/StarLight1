unit UPassport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls;

type
  TfrmPassport = class(TForm)
    pnlTop: TPanel;
    gbInfoProg: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    btnOK: TcxButton;
    Edit2: TEdit;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPassport: TfrmPassport;

implementation

 uses UDM;

{$R *.dfm}


procedure TfrmPassport.btnOKClick(Sender: TObject);
begin
 close;
end;

end.
