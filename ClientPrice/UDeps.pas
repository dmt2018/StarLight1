unit UDeps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PI_library, Menus, cxLookAndFeelPainters, cxGraphics, cxLabel, DB,
  MemDS, DBAccess, Ora, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmDeps = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    imcbGroups: TcxImageComboBox;
    SelQ: TOraQuery;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeps: TfrmDeps;

implementation

uses UClientOrder;

{$R *.dfm}

procedure TfrmDeps.FormShow(Sender: TObject);
begin
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT a.ID_DEPARTMENTS, a.NAME FROM BOOKS_DEPARTMENTS a where a.state = 1 order by a.NAME');
    SelQ.Open;
    FillImgComboCx(SelQ, imcbGroups, '');
    imcbGroups.Properties.DropDownRows := SelQ.RecordCount+1;
    imcbGroups.EditValue := 62;
    SelQ.Close;
end;

end.
