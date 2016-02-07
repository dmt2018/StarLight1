unit UStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, cxProgressBar, cxMemo,
  cxButtons, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, MemData,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, StdCtrls, Buttons, ExtCtrls, Ora;

type
  Tfrm_stat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    cxSpinEdit1: TcxSpinEdit;
    cxSpinEdit2: TcxSpinEdit;
    cxButton1: TcxButton;
    cxMemo1: TcxMemo;
    cxProgressBar1: TcxProgressBar;
    Label4: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    d_set: TOraQuery;
    { Public declarations }
  end;

var
  frm_stat: Tfrm_stat;

implementation

uses DataM;

{$R *.dfm}

procedure Tfrm_stat.FormCreate(Sender: TObject);
begin
  cxMemo1.Clear;
  cxSpinEdit1.Value := 0;
  cxSpinEdit2.Value := 0;
  cxProgressBar1.Visible := false;
  Label4.Visible := false;
end;

procedure Tfrm_stat.cxButton1Click(Sender: TObject);
var i,j, raz, el1, el2, ind1: integer;
a: array of integer;
str: string;
begin

  if (cxSpinEdit1.Value > cxSpinEdit2.Value) then
    ShowMessage('Номер максимальный должен быть больше номера минимального!')
  else
  begin
    if (cxSpinEdit1.Value = 0) or (cxSpinEdit2.Value = 0) then
      ShowMessage('Номера должны быть больше 0')
    else
    begin
      Label4.Visible := false;
      d_set.First;
      cxMemo1.Lines.Clear;
      cxProgressBar1.Properties.Min := cxSpinEdit1.Value;
      cxProgressBar1.Properties.Max := cxSpinEdit2.Value;
      cxProgressBar1.Visible := true;
      cxProgressBar1.Repaint;
      j   := 0;
      str := '';

//      raz := cxSpinEdit2.Value - cxSpinEdit1.Value;
//      setlength(a,1);
      for i := cxSpinEdit1.Value to cxSpinEdit2.Value do
      begin
         if (d_set.Locate('invoice;T_SHORT', VarArrayOf([i, cxImageComboBox1.editValue]), []) = false) then
         begin
            j := j + 1;
            cxMemo1.Lines.Add( IntToStr(j) + ' - ' + IntToStr(i) );
         end
         else
         begin
            if ( d_set.LocateEx('invoice;T_SHORT', VarArrayOf([i, cxImageComboBox1.editValue]), [lxNext]) ) then
               str := str + #10 + IntToStr(i);

//            a[length(a)-1] := i;
//            setlength(a,length(a)+1);
         end;
         cxProgressBar1.Position := i;
         cxProgressBar1.Repaint;
      end;
      ShowMessage('Разбор закончен');
      cxProgressBar1.Visible := false;

      if (j > 0) then
      begin
        Label4.Caption := 'Не найдено накладных: ' + IntToStr(j);
        Label4.Visible := true;
      end;
{
    for i:=0 to raz do
    begin
      el1:=a[i];
      ind1:=i;
      for j:=1+i to raz do
        if el1=a[j] then
        begin
          str := str + #10 + IntToStr(a[j]);
        end;
      end;
    end;
}    
      if (str <> '') then
        MessageBox(Handle, PChar('Найдены одинаковые номера накладных!'#10#13 + str), 'Внимание', MB_ICONWARNING);
    end;

  end;

end;

end.
