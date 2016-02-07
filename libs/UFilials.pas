unit UFilials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, ExtCtrls, cxButtons;

type
  TfrmFilials = class(TForm)
    pnlTop: TPanel;
    pnlBottom: TPanel;
    btnCancel: TcxButton;
    rgMain: TRadioGroup;
    btnOk: TcxButton;
  private
    { Private declarations }
  public
    function OpenForSelect: integer;
    { Public declarations }
  end;

var
  frmFilials: TfrmFilials;

implementation

{$R *.dfm}

  function TfrmFilials.OpenForSelect: integer;
  var frm: TfrmFilials;
  begin
    frm := TfrmFilials.Create(Application);
    if (frm.ShowModal = mrOk) then Result := frm.rgMain.ItemIndex+2 else Result := - 1;
  end;


end.
