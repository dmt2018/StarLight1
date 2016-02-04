unit DataModule;

interface

uses
  SysUtils, Classes, DB, DBAccess, Ora, MemDS;

type
  TDM = class(TDataModule)
    SelectSession: TOraSession;
    SelStart: TOraQuery;
    OraQuery1: TOraQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
