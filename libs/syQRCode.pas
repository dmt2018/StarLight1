unit syQRcode;

interface

uses classes, graphics, frxClass, frxDsgnIntf, QuricolCode, variants;

type
  TQRcodeParams = class(TPersistent)
  private
    FPixelSize: integer;
    FMargin: integer;
    constructor Create(AOwner: TComponent);
  published
    property Margin: integer read FMargin write FMargin;
    property PixelSize: integer read FPixelSize write FPixelSize;
  end;

  TfrxQRcode = class(TfrxView)
  private
    FText: string;
    FParams: TQRcodeParams;

  published

  public
    class function GetDescription: string; override;
    procedure Draw(Canvas: TCanvas; ScaleX: Extended; ScaleY: Extended; OffsetX: Extended;
      OffsetY: Extended); override;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure GetData; override;
  published
    property Text: string read FText write FText;
    property CodeParams: TQRcodeParams read FParams write FParams;
    property DataField;
    property DataSet;

  end;

implementation

{ TfrxQRcode }

constructor TfrxQRcode.Create(AOwner: TComponent);
begin
  inherited;
  Text := 'http://yushinin.ru';
  FParams := TQRcodeParams.Create(self);
  Description := GetDescription;
end;

destructor TfrxQRcode.Destroy;
begin
  FParams.Free;
  inherited;
end;

procedure TfrxQRcode.Draw(Canvas: TCanvas; ScaleX, ScaleY, OffsetX, OffsetY: Extended);
var
  bmp: tbitmap;
begin
  inherited;
  BeginDraw(Canvas, ScaleX, ScaleY, OffsetX, OffsetY);
  if Text <> '' then
  begin
    bmp := TQRCode.GetBitmapImage(Text, FParams.FMargin, FParams.FPixelSize);
    Width := bmp.Width;
    Height := bmp.Height;
    Canvas.Draw(Fx, fy, bmp);
  end;
end;

procedure TfrxQRcode.GetData;
begin
  inherited;
  if IsDataField then
    FText := VarToStr(DataSet.Value[DataField])
end;

class function TfrxQRcode.GetDescription: string;
begin
  Result := 'QR code';
end;

{ TQRcodeParams }

constructor TQRcodeParams.Create(AOwner: TComponent);
begin
  FMargin := 4;
  FPixelSize := 3;
end;

initialization

frxObjects.RegisterObject1(TfrxQRcode, nil, '', '', 0, 23);

finalization

frxObjects.Unregister(TfrxQRcode);

end.