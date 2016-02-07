unit otc_move;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, CRGrid, ComCtrls, Buttons,
  CheckLst, Menus, DB, VirtualTrees, StrUtils, DBGridEh, ImgList, DBCtrls,
  Ora, MemDS, DBAccess, DBGrid_extensions;
  
type
  Totc_moveForm = class(TForm)
    DBGridEh1: TDBGridEh;
    otc_Move: TOraQuery;
    otc_Move_DS: TOraDataSource;
    Panel4: TPanel;
    Label3: TLabel;
    Panel13: TPanel;
    Panel6: TPanel;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Doc_DateTimePicker1: TDateTimePicker;
    Doc_DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    otc_MoveN_ID: TFloatField;
    otc_MoveFULL_NAME: TStringField;
    otc_MoveCODE: TStringField;
    otc_MoveO_PRIHOD: TFloatField;
    otc_MoveO_SPISANIE: TFloatField;
    otc_MoveO_UTSENKA: TFloatField;
    otc_MoveO_PRODAJI: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  otc_moveForm: Totc_moveForm;

implementation
uses datam;

{$R *.dfm}


procedure Totc_moveForm.BitBtn2Click(Sender: TObject);
begin



if (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date)
then
begin
ShowMessage('Первая дата не может быть больше второй!');
end
else

begin

screen.cursor:=crhourglass;

otc_Move.Close;

otc_Move.ParamByName('DOC_DATE1').AsDate := Doc_DateTimePicker1.Date;
otc_Move.ParamByName('DOC_DATE2').AsDate := Doc_DateTimePicker2.Date;

otc_Move.Open;

screen.cursor:=crdefault;

end;




end;

procedure Totc_moveForm.FormCreate(Sender: TObject);
begin
Doc_DateTimePicker1.Date := IncMonth(Date,-1);
Doc_DateTimePicker2.Date := Date;
end;

end.
