unit obnul;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, cxLookAndFeelPainters,
  cxButtons;

type
  Tobnul_Form = class(TForm)
    Panel5: TPanel;
    Panel6: TPanel;
    Panel1: TPanel;
    BitBtn5: TcxButton;
    BitBtn6: TcxButton;
    BitBtn4: TcxButton;
    BitBtn3: TcxButton;
    BitBtn2: TcxButton;
    BitBtn1: TcxButton;
    btn_store_close: TcxButton;
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    procedure Exec_Proc(param_: String);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  obnul_Form: Tobnul_Form;

implementation

uses dataM, Ora, DBAccess;

{$R *.dfm}


//
//  Процедура обнуления
//
procedure Tobnul_Form.Exec_Proc(param_: String);
begin

  if MessageDlg('Вы уверены, что хотите обнулить номерацию?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    try
      screen.cursor:=crhourglass;
      with DM.Ora_SQL do
      Begin
        Close;
        SQL.Clear;
        SQL.Add('begin STORE_PKG.NUMBER_OBNUL(:av_seq); end;');
        ParamByName('av_seq').Value := param_;
        Execute;
      end;
      screen.cursor:=crdefault;
      ShowMessage('Обнуление прошло успешно!')
    except
      on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
        end;
    End;
  end;

end;


//
//  Обнуление продажи
//
procedure Tobnul_Form.BitBtn6Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_4');
   Exec_Proc('STORE_DOC_4_61');
   Exec_Proc('STORE_DOC_4_62');
end;

//
//  Обнуление списания
//
procedure Tobnul_Form.BitBtn5Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_2');
end;

//
//  Обнуление прихода
//
procedure Tobnul_Form.BitBtn4Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_1');
end;

//
//  Обнуление уценки
//
procedure Tobnul_Form.BitBtn3Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_3');
end;

//
//  Обнуление инвентаризауции
//
procedure Tobnul_Form.BitBtn2Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_5');
end;

//
//  Обнуление других документов
//
procedure Tobnul_Form.BitBtn1Click(Sender: TObject);
begin
   Exec_Proc('STORE_DOC_6');
end;

end.
