unit UShowText;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmShowText = class(TForm)
    pnlBottom: TPanel;
    btnClose: TcxButton;
    pnlMain: TPanel;
    memoMain: TMemo;
    lblMain: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function OpenForShowModal(pLabel, pText : string): integer;

var
  frmShowText: TfrmShowText;

implementation

{$R *.dfm}

  function OpenForShowModal(pLabel, pText : string): integer;
  begin
    Application.CreateForm(TfrmShowText, frmShowText);
    try
      frmShowText.lblMain.Caption := pLabel;
      frmShowText.memoMain.Lines.Text := pText;
      Result := frmShowText.ShowModal;
    finally
      frmShowText.Free;
    end;
  end;

end.
