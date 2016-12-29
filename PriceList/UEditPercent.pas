unit UEditPercent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ComCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls, DB, MemDS, DBAccess,
  Ora, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Buttons;

type
  TfrmEditPercent = class(TForm)
    pnlMain: TPanel;
    Lbl2: TLabel;
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnClose: TcxButton;
    OraQuery1: TOraQuery;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
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

procedure TfrmEditPercent.btnCloseClick(Sender: TObject);
begin
 close;
end;

procedure TfrmEditPercent.btnSaveClick(Sender: TObject);
begin
 oraquery1.Close;
  oraquery1.SQL.clear;
   oraquery1.sql.add('update sale_percenet set proc = '+edit1.Text+' where id_departments ='+inttostr(CUR_DEPT_ID));
  oraquery1.execute;
 close;
end;

procedure TfrmEditPercent.FormShow(Sender: TObject);
begin
 oraquery1.Close;
  oraquery1.SQL.clear;
   oraquery1.sql.add('select * from sale_percenet where id_departments ='+inttostr(CUR_DEPT_ID));
   oraquery1.open;
  edit1.Text := oraquery1.fieldbyname('proc').asstring;
 oraquery1.Close;
end;

end.
