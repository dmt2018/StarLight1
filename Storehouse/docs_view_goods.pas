unit docs_view_goods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, CRGrid, ComCtrls, Buttons,
  CheckLst, Menus, DB, VirtualTrees, StrUtils, DBGridEh, ImgList, DBCtrls;

type
  Tdocsviewsgoods = class(TForm)
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    DBText1: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    PopupMenu1: TPopupMenu;
    ppmCopy: TMenuItem;
    ppmSelectAll: TMenuItem;
    N1: TMenuItem;
    ppmSaveSelection: TMenuItem;
    Label8: TLabel;
    DBText7: TDBText;
    Label9: TLabel;
    DBText8: TDBText;
    Panel4: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure ppmCopyClick(Sender: TObject);
    procedure ppmSelectAllClick(Sender: TObject);
    procedure ppmSaveSelectionClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  docsviewsgoods: Tdocsviewsgoods;

implementation

uses DataM, global;
{$R *.dfm}

procedure Tdocsviewsgoods.BitBtn2Click(Sender: TObject);
begin
close;
end;






procedure Tdocsviewsgoods.ppmCopyClick(Sender: TObject);
begin
pppmCopyClick(Sender);
end;

procedure Tdocsviewsgoods.ppmSelectAllClick(Sender: TObject);
begin
pppmSelectAllClick(Sender);
end;

procedure Tdocsviewsgoods.ppmSaveSelectionClick(Sender: TObject);
begin
pppmSaveSelectionClick(Sender);
end;




procedure Tdocsviewsgoods.FormPaint(Sender: TObject);
begin

//Если документ уценки, то делаем видимыми поля новая_цена и процент_уценки




DBGridEh2.SetFocus;
end;

end.
