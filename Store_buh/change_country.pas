unit change_country;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGridEh, DB,
  MemDS, DBAccess, Ora, GridsEh, DBGridEhGrouping;

type
  TChangeCountryForm = class(TForm)
    Label2: TLabel;
    ChangeAll_RB: TRadioButton;
    ChangeSel_RB: TRadioButton;
    Panel2: TPanel;
    BitBtnFilterOn: TBitBtn;
    BitBtn3: TBitBtn;
    dbgList: TDBGridEh;
    Image1: TImage;
    country_ds: TOraDataSource;
    country: TOraQuery;
    countryC_ID: TIntegerField;
    countryCOUNTRY: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangeCountryForm: TChangeCountryForm;

implementation

{$R *.dfm}
uses dataM;

procedure TChangeCountryForm.FormCreate(Sender: TObject);
begin
country.Close;
country.Filter:='';
try
country.Open;
except
ShowMessage('Не могу Открыть список стран!');
End;
end;

end.
