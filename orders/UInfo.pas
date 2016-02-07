unit UInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmDataInfo = class(TForm)
    btnClose: TButton;
    bvlMain: TBevel;
    memoMain: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDataInfo: TfrmDataInfo;

  function OpenFormForShow(txt: string): variant;

implementation

{$R *.dfm}

function OpenFormForShow(txt: string): variant;
begin
  Application.CreateForm(TfrmDataInfo, frmDataInfo);
  try
    frmDataInfo.memoMain.Clear;
    frmDataInfo.memoMain.Text := txt;
    result := frmDataInfo.ShowModal;
  finally
    frmDataInfo.Free;
  end;
end;

end.
