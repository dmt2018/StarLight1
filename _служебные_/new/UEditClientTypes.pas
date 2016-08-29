unit UEditClientTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, ActnList, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  StdCtrls, Mask, DBCtrlsEh, cxButtons, Buttons, ExtCtrls;

type
  TfrmEditClientTypes = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    BitBtn4: TBitBtn;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    DBNumberEditEh1: TDBNumberEditEh;
    Znak_EditPercent: TComboBox;
    pnlCity: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    imcbRegion: TcxImageComboBox;
    Edit3: TEdit;
    ActionList1: TActionList;
    aCtrlEnter: TAction;
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmEditClientTypes: TfrmEditClientTypes;

implementation

{$R *.dfm}

uses UClientTypes;

function tfrmEditClientTypes.MainFormShow : boolean;
Begin
  Application.CreateForm(TfrmEditClientTypes, frmEditClientTypes);
  try
    with frmEditClientTypes do
    Begin
      if ShowModal <> mrOk then
      begin
        result := false;
        Exit;
      end;
      result := true;
    End;
  finally
    frmEditClientTypes.Free;
  end;
end;

end.
