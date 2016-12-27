unit UEditPercent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ComCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls, DB, MemDS, DBAccess,
  Ora;

type
  TfrmEditPercent = class(TForm)
    pnlTop: TPanel;
    gbInfoProg: TcxGroupBox;
    Edit6: TEdit;
    btnOK: TcxButton;
    OraQuery1: TOraQuery;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditPercent: TfrmEditPercent;

implementation

{$R *.dfm}

uses Globals;

procedure TfrmEditPercent.btnOKClick(Sender: TObject);
begin
 oraquery1.Close;
 oraquery1.SQL.clear;
 oraquery1.sql.add('update sale_percenet set proc = '+edit6.Text+' where id_departments ='+inttostr(CUR_DEPT_ID));
 oraquery1.execute;
 close;
end;

procedure TfrmEditPercent.FormShow(Sender: TObject);
begin
 oraquery1.Close;
 oraquery1.SQL.clear;
 oraquery1.sql.add('select * from sale_percenet where id_departments ='+inttostr(CUR_DEPT_ID));
 oraquery1.open;
 edit6.Text := oraquery1.fieldbyname('proc').asstring;
 oraquery1.Close;
end;

end.
