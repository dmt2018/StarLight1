unit ChooseOrderU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PI_Library, Buttons, Menus,
  cxLookAndFeelPainters, Mask, DBCtrlsEh, cxButtons, ExtCtrls;

type
  TChooseOrderF = class(TForm)
    Panel3: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    Panel1: TPanel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseOrderF: TChooseOrderF;

function GetOrder() : Variant;

implementation

uses DataModule, GlobalsU;

{$R *.dfm}

function GetOrder() : Variant;
var sql : string;
Begin
  Application.CreateForm(TChooseOrderF, ChooseOrderF);

  sql := 'begin creator.DISTRIBUTION_PKG.load_order(:id_dep_, :cursor_); end;';
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add(sql);
  DM.SelQ.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
  DM.SelQ.ParamByName('cursor_').AsCursor;
  DM.SelQ.Open;

  with ChooseOrderF do
    Begin
      try
        FillComboOlmer(DM.SelQ, DBComboBoxEh1, '');
        if ShowModal <> mrOk then Exit;
        Result := DBComboBoxEh1.Value;
      finally
        free;
      end;
    End;
End;

end.
