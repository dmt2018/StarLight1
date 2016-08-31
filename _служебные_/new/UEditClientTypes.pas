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
    btnClos: TcxButton;
    btnClear: TcxButton;
    btnSav: TcxButton;
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
    CheckBox2: TCheckBox;
    procedure btnClosClick(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
    //function MainFormShow : boolean;
  end;

var
  frmEditClientTypes: TfrmEditClientTypes;

implementation

{$R *.dfm}

uses UClientTypes;
   {
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
end;      }

// «апись
procedure TfrmEditClientTypes.aCtrlEnterExecute(Sender: TObject);
var ind, flag, price_part: integer;
begin
  if (trim(Edit1.Text) = '') then ShowMessage('¬ы не заполнили об€зательные пол€!')
  else
  begin
    // ѕытаемс€ выполнить SQL запрос
    try

    frmClientTypes.selq.Close;
    frmClientTypes.selq.SQL.Clear;

    // может убрать этот ttype - этош просто флаг что идет добав, или редак.. хот€ наверно это не простотак
    if ((ttype = 5) or (ttype = 6)) then
    begin
      frmClientTypes.selq.SQL.Add('begin BOOKS.save_CLIENT_TYPES(:name_, :info_, :id_, :TTYPE_, :price_part_, :is_contractor_); end;');
      frmClientTypes.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmClientTypes.selq.ParamByName('info_').AsString := Memo1.Text;
      frmClientTypes.selq.ParamByName('id_').AsInteger  := Edit1.Tag;

      if checkBox1.Checked = true then frmClientTypes.selq.ParamByName('TTYPE_').Value := 1
      else frmClientTypes.selq.ParamByName('TTYPE_').Value := 0;

      if checkBox2.Checked = true then frmClientTypes.selq.ParamByName('is_contractor_').AsInteger := 1
      else frmClientTypes.selq.ParamByName('is_contractor_').AsInteger := 0;

      if DBNumberEditEh1.Value = NULL then price_part := 0
      else
      begin
        if (Znak_EditPercent.Text='-') then
          price_part:= StrToInt('-'+DBNumberEditEh1.Text)
        else
          price_part:= StrToInt(DBNumberEditEh1.Text);
      end;
      frmClientTypes.selq.ParamByName('price_part_').AsInteger := price_part;

      frmClientTypes.selq.Execute;
      Edit1.Tag := frmClientTypes.selq.ParamByName('id_').AsInteger;
      frmClientTypes.selq.Close;
    end;

    Close;

    except
      on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Ќе удалось выполнить операцию!', MB_ICONERROR);
    End;

  end;
end;

// очистка
procedure TfrmEditClientTypes.btnClearClick(Sender: TObject);
begin
   if ttype = 5 then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 6) then
  begin
    Edit1.Text := frmClientTypes.Q_CT.FieldByName('NAME').AsString;
    MEMO1.Text := frmClientTypes.Q_CT.FieldByName('INFO').AsString;

      if (frmClientTypes.Q_CT.FieldByName('T_TYPE').AsInteger = 1) then checkbox1.checked := true else checkbox1.checked := false;
      if (frmClientTypes.Q_CT.FieldByName('DISCOUNT').AsInteger>0) then Znak_EditPercent.ItemIndex:=1;
      if (frmClientTypes.Q_CT.FieldByName('DISCOUNT').AsInteger<0) then Znak_EditPercent.ItemIndex:=0;
      DBNumberEditEh1.Text:=inttostr(ABS(frmClientTypes.Q_CT.FieldByName('DISCOUNT').AsInteger));
  end;

end;

//закрытие
procedure TfrmEditClientTypes.btnClosClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmEditClientTypes.FormShow(Sender: TObject);
begin
 Edit1.SetFocus;
end;

end.
