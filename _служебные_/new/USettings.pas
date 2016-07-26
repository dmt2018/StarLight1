unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, ActnList, cxGraphics, Menus, cxLookAndFeelPainters,
  cxLabel, StdCtrls, cxButtons, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox,star_lib;

type
  TfrmSettings = class(TForm)
    pcSettings: TcxPageControl;
    tshMain: TcxTabSheet;
    alSettings: TActionList;
    cbOtdel: TcxImageComboBox;
    btnSave: TcxButton;
    btnClose: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    aEnter: TAction;
    aClose: TAction;
    cbFont: TcxComboBox;
    procedure aCloseExecute(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation
uses UDM;
{$R *.dfm}

procedure TfrmSettings.aCloseExecute(Sender: TObject);
begin
   Close;
end;

//пишу значени€ в ini и закр.форму 
procedure TfrmSettings.aEnterExecute(Sender: TObject);
begin
  intDefFont := cbFont.EditValue;
  intDefDept := cbOtdel.EditValue;
  DM.SaveIni;
  Close;
end;

procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.SaveFormState(frmSettings); //полож.окна
  frmSettings:=nil;
  Action := caFree;
end;

procedure TfrmSettings.FormShow(Sender: TObject);
begin
  FillImgComboCx(DM.cdsDeps, cbOtdel, '¬се...');
  cbFont.EditValue := intDefFont;
  cbOtdel.EditValue := intDefDept;
end;

end.
