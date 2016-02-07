unit banc_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, MemDS, DBAccess,
  Ora, Menus, cxLookAndFeelPainters, cxButtons;

type
  TBancEditForm = class(TForm)
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Panel2: TPanel;
    banc_DS: TOraDataSource;
    banc: TOraQuery;
    Label1: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    bancBANC_ID: TFloatField;
    bancCOMPANY_ID: TFloatField;
    bancBANC_NAME: TStringField;
    bancBANC_RS: TStringField;
    bancBANC_KS: TStringField;
    bancBANC_BIK: TStringField;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    procedure BitBtnFilterOnClick(Sender: TObject);

    procedure Initialize();  //инициализаци€ формы
    procedure Edit(id: integer); //инициализаци€ редактировани€ ID
    procedure View(id: integer); //инициализаци€ просмотра ID
    procedure New();  //инициализаци€ создани€ ID
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    company_id: integer;
    id:integer;
  end;

var
  BancEditForm: TBancEditForm;

implementation

uses dataM;

{$R *.dfm}


//  ѕоказ формы
procedure TBancEditForm.FormShow(Sender: TObject);
begin
  Initialize();
end;


//-----инициализаци€ формы---------------------
procedure TBancEditForm.Initialize();
begin
  if ( id <> 0 ) then
    Edit(id)
  else
    New();
end;


//-----инициализаци€ редактировани€ ID------------
procedure TBancEditForm.Edit(id: integer);
begin
  try
    banc.Close;
    banc.ParamByName('BANC_ID').AsInteger := id;
    banc.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'ќшибка при открытии данных!', MB_ICONERROR);
  End;
end;


//-----инициализаци€ просмотра ID------------
procedure TBancEditForm.View(id: integer);
begin
  try
    banc.Close;
    banc.ParamByName('BANC_ID').AsInteger := id;
    banc.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'ќшибка при открытии данных!', MB_ICONERROR);
  End;
end;


//-----инициализаци€ создани€ ID------------
procedure TBancEditForm.New();
begin
  try
    banc.Close;
    banc.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'ќшибка при открытии данных!', MB_ICONERROR);
  End;
end;


//-----проверка перед POST------------
procedure TBancEditForm.BitBtnFilterOnClick(Sender: TObject);
begin
  if not (
    (banc.FieldByName('BANC_NAME').AsString<>'')
    and (banc.FieldByName('BANC_RS').AsString<>'')
    and (banc.FieldByName('BANC_KS').AsString<>'')
    and (banc.FieldByName('BANC_BIK').AsString<>'')
  )
  then
    showmessage('¬ы заполнили не все об€зательные пол€!')
  else
  begin
    banc.Edit;
    banc.FieldByName('COMPANY_ID').AsInteger:=company_id;
    banc.Post;

    if ( id = 0) then
    begin
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('select BUH_BANC_SET_ID.CURRVAL as aaa from dual');
      DM.Q_SQL.Open;
      id :=  DM.Q_SQL.FieldByName('aaa').AsInteger;
      DM.Q_SQL.Close;
    end;

    close;
  end;

end;


end.
