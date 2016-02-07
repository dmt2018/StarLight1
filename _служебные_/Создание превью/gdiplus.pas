
{============================================================================

 - Delphi convertion done by Phill & Stéphane Martineau (smarth@mail.com)
 - Fall 2001 (version/revision 1.1)

 - Some comments, and btw sorry for my english.

 - This convertion was done pretty fast when time was available and has not
   been tested much. And since the size of this unit is large I expect
   quite a bit of errors and mistakes from the first version. If/when you
   find somes just let me know so I can correct them for everybody else.

 - The convertion was done to keep identifiers types/classes/consts as close
   as possible as the original. So if you get name conflict you can use
   the following aliases instead or define your own.

 - Gdip for records, TGdip for classes

     GdipColor                    = Color;

     GdipSizeF                    = SizeF;
     GdipSize                     = Size;
     GdipPointF                   = PointF;
     GdipPoint                    = Point;
     GdipRectF                    = RectF;
     GdipRect                     = Rect;

     TGdipMatrix                  = Matrix;
     TGdipRegion                  = Region;
     TGdipFontFamily              = FontFamily;
     TGdipFont                    = Font;
     TGdipFontCollection          = FontCollection;
     TGdipInstalledFontCollection = InstalledFontCollection;
     TGdipPrivateFontCollection   = PrivateFontCollection;
     TGdipImage                   = Image;
     TGdipBitmap                  = Bitmap;
     TGdipCustomLineCap           = CustomLineCap;
     TGdipCachedBitmap            = CachedBitmap;
     TGdipBrush                   = Brush;
     TGdipSolidBrush              = SolidBrush;
     TGdipTextureBrush            = TextureBrush;
     TGdipLinearGradientBrush     = LinearGradientBrush;
     TGdipHatchBrush              = HatchBrush;
     TGdipImageAttributes         = ImageAttributes;
     TGdipMetafile                = Metafile;
     TGdipPen                     = Pen;
     TGdipStringFormat            = StringFormat;
     TGdipGraphics                = Graphics;
     TGdipGraphicsPath            = GraphicsPath;
     TGdipGraphicsPathIterator    = GraphicsPathIterator;
     TGdipPathGradientBrush       = PathGradientBrush;
     TGdipAdjustableArrowCap      = AdjustableArrowCap;


  - Short ones for lazy peoples like me (Gp for records, G for classes)

     GpColor                  = Color;

     GpSizeF                  = SizeF;
     GpSize                   = Size;
     GpPointF                 = PointF;
     GpPoint                  = Point;
     GpRectF                  = RectF;
     GpRect                   = Rect;

     GMatrix                  = Matrix;
     GRegion                  = Region;
     GFontFamily              = FontFamily;
     GFont                    = Font;
     GFontCollection          = FontCollection;
     GInstalledFontCollection = InstalledFontCollection;
     GPrivateFontCollection   = PrivateFontCollection;
     GImage                   = Image;
     GBitmap                  = Bitmap;
     GCustomLineCap           = CustomLineCap;
     GCachedBitmap            = CachedBitmap;
     GBrush                   = Brush;
     GSolidBrush              = SolidBrush;
     GTextureBrush            = TextureBrush;
     GLinearGradientBrush     = LinearGradientBrush;
     GHatchBrush              = HatchBrush;
     GImageAttributes         = ImageAttributes;
     GMetafile                = Metafile;
     GPen                     = Pen;
     GStringFormat            = StringFormat;
     GGraphics                = Graphics;
     GGraphicsPath            = GraphicsPath;
     GGraphicsPathIterator    = GraphicsPathIterator;
     GPathGradientBrush       = PathGradientBrush;
     GAdjustableArrowCap      = AdjustableArrowCap;

============================================================================}

// {$define GDIPLUS_DYNAMIC_ALLOC}
// {$define GDIPLUS_GUARD}

unit GdiPlus;

interface

uses Windows,ActiveX,Math,SysUtils;

const
  GdiPlusLib = 'GdiPlus.dll';

type
  EBadGdiPlusStartup = class(Exception);
  ENoGdiPlusInit = class(Exception);
  EGdipAllocFail = class(Exception);


//============================================================================
// *** GdiPlusMem.h
//============================================================================

//----------------------------------------------------------------------------
// Memory Allocation APIs
//----------------------------------------------------------------------------
function GdipAlloc(size: Cardinal): Pointer; stdcall; external GdiPlusLib;
procedure GdipFree(ptr: Pointer); stdcall; external GdiPlusLib;


//============================================================================
// *** GdiPlusBase.h
//============================================================================

type
  GdiPlusBase = class
  public
{$ifdef GDIPLUS_GUARD}
    constructor Create; virtual;
{$endif}
{$ifdef GDIPLUS_DYNAMIC_ALLOC}
    class function NewInstance: TObject; override;
    procedure FreeInstance; override;
{$endif}
  end;


//============================================================================
// *** GdiPlusEnums.h
//============================================================================

//--------------------------------------------------------------------------
// Default bezier flattening tolerance in device pixels.
//--------------------------------------------------------------------------

const
  FlatnessDefault                           = 1.0 /4.0;

//--------------------------------------------------------------------------
// Graphics and Container State cookies
//--------------------------------------------------------------------------
type
  GraphicsState                             = UINT;
  GraphicsContainer                         = UINT;

//--------------------------------------------------------------------------
// Fill mode constants
//--------------------------------------------------------------------------

type
  FillMode = Integer;
const
  FillModeAlternate                         = 0;
  FillModeWinding                           = 1;


//--------------------------------------------------------------------------
// Quality mode constants
//--------------------------------------------------------------------------

type
  QualityMode = Integer;
const
  QualityModeInvalid                        = -1;
  QualityModeDefault                        = 0;
  QualityModeLow                            = 1; // Best performance
  QualityModeHigh                           = 2; // Best rendering quality


//--------------------------------------------------------------------------
// Alpha Compositing mode constants
//--------------------------------------------------------------------------

type
  CompositingMode = Integer;
const
  CompositingModeSourceOver                 = 0;
  CompositingModeSourceCopy                 = 1;

//--------------------------------------------------------------------------
// Alpha Compositing quality constants
//--------------------------------------------------------------------------

type
  CompositingQuality = Integer;
const
  CompositingQualityInvalid                 = QualityModeInvalid;
  CompositingQualityDefault                 = QualityModeDefault;
  CompositingQualityHighSpeed               = QualityModeLow;
  CompositingQualityHighQuality             = QualityModeHigh;
  CompositingQualityGammaCorrected          = 3;
  CompositingQualityAssumeLinear            = 4;

//--------------------------------------------------------------------------
// Unit constants
//--------------------------------------------------------------------------

type
  GdipUnit = Integer;
const
  UnitWorld                                 = 0; // -- World coordinate (non-physical unit)
  UnitDisplay                               = 1; // -- Variable -- for PageTransform only
  UnitPixel                                 = 2; // -- Each unit is one device pixel.
  UnitPoint                                 = 3; // -- Each unit is a printer's point, or 1/72 inch.
  UnitInch                                  = 4; // -- Each unit is 1 inch.
  UnitDocument                              = 5; // -- Each unit is 1/300 inch.
  UnitMillimeter                            = 6; // -- Each unit is 1 millimeter.

//--------------------------------------------------------------------------
// MetafileFrameUnit
//
// The frameRect for creating a metafile can be specified in any of these
// units.  There is an extra frame unit value (MetafileFrameUnitGdi) so
// that units can be supplied in the same units that GDI expects for
// frame rects -- these units are in .01 (1/100ths) millimeter units
// as defined by GDI.
//--------------------------------------------------------------------------

type
  MetafileFrameUnit = Integer;
const
  MetafileFrameUnitPixel                    = UnitPixel;
  MetafileFrameUnitPoint                    = UnitPoint;
  MetafileFrameUnitInch                     = UnitInch;
  MetafileFrameUnitDocument                 = UnitDocument;
  MetafileFrameUnitMillimeter               = UnitMillimeter;
  MetafileFrameUnitGdi                      = 7;       // GDI compatible .01 MM units

//--------------------------------------------------------------------------
// Coordinate space identifiers
//--------------------------------------------------------------------------

type
  CoordinateSpace = Integer;
const
  CoordinateSpaceWorld                      = 0;
  CoordinateSpacePage                       = 1;
  CoordinateSpaceDevice                     = 2;

//--------------------------------------------------------------------------
// Various wrap modes for brushes
//--------------------------------------------------------------------------

type
  WrapMode = Integer;
const
  WrapModeTile                              = 0;
  WrapModeTileFlipX                         = 1;
  WrapModeTileFlipY                         = 2;
  WrapModeTileFlipXY                        = 3;
  WrapModeClamp                             = 4;

//--------------------------------------------------------------------------
// Various hatch styles
//--------------------------------------------------------------------------

type
  HatchStyle = Integer;
const
  HatchStyleHorizontal                      = 0;
  HatchStyleVertical                        = 1;
  HatchStyleForwardDiagonal                 = 2;
  HatchStyleBackwardDiagonal                = 3;
  HatchStyleCross                           = 4;
  HatchStyleDiagonalCross                   = 5;
  HatchStyle05Percent                       = 6;
  HatchStyle10Percent                       = 7;
  HatchStyle20Percent                       = 8;
  HatchStyle25Percent                       = 9;
  HatchStyle30Percent                       = 10;
  HatchStyle40Percent                       = 11;
  HatchStyle50Percent                       = 12;
  HatchStyle60Percent                       = 13;
  HatchStyle70Percent                       = 14;
  HatchStyle75Percent                       = 15;
  HatchStyle80Percent                       = 16;
  HatchStyle90Percent                       = 17;
  HatchStyleLightDownwardDiagonal           = 18;
  HatchStyleLightUpwardDiagonal             = 19;
  HatchStyleDarkDownwardDiagonal            = 20;
  HatchStyleDarkUpwardDiagonal              = 21;
  HatchStyleWideDownwardDiagonal            = 22;
  HatchStyleWideUpwardDiagonal              = 23;
  HatchStyleLightVertical                   = 24;
  HatchStyleLightHorizontal                 = 25;
  HatchStyleNarrowVertical                  = 26;
  HatchStyleNarrowHorizontal                = 27;
  HatchStyleDarkVertical                    = 28;
  HatchStyleDarkHorizontal                  = 29;
  HatchStyleDashedDownwardDiagonal          = 30;
  HatchStyleDashedUpwardDiagonal            = 31;
  HatchStyleDashedHorizontal                = 32;
  HatchStyleDashedVertical                  = 33;
  HatchStyleSmallConfetti                   = 34;
  HatchStyleLargeConfetti                   = 35;
  HatchStyleZigZag                          = 36;
  HatchStyleWave                            = 37;
  HatchStyleDiagonalBrick                   = 38;
  HatchStyleHorizontalBrick                 = 39;
  HatchStyleWeave                           = 40;
  HatchStylePlaid                           = 41;
  HatchStyleDivot                           = 42;
  HatchStyleDottedGrid                      = 43;
  HatchStyleDottedDiamond                   = 44;
  HatchStyleShingle                         = 45;
  HatchStyleTrellis                         = 46;
  HatchStyleSphere                          = 47;
  HatchStyleSmallGrid                       = 48;
  HatchStyleSmallCheckerBoard               = 49;
  HatchStyleLargeCheckerBoard               = 50;
  HatchStyleOutlinedDiamond                 = 51;
  HatchStyleSolidDiamond                    = 52;

  HatchStyleTotal                           = 53;
  HatchStyleLargeGrid                       = HatchStyleCross;  // 4

  HatchStyleMin                             = HatchStyleHorizontal;
  HatchStyleMax                             = HatchStyleTotal -1;


//--------------------------------------------------------------------------
// Dash style constants
//--------------------------------------------------------------------------

type
  DashStyle = Integer;
const
  DashStyleSolid                            = 0;
  DashStyleDash                             = 1;
  DashStyleDot                              = 2;
  DashStyleDashDot                          = 3;
  DashStyleDashDotDot                       = 4;
  DashStyleCustom                           = 5;


//--------------------------------------------------------------------------
// Dash cap constants
//--------------------------------------------------------------------------

type
  DashCap = Integer;
const
  DashCapFlat                               = 0;
  DashCapRound                              = 2;
  DashCapTriangle                           = 3;

//--------------------------------------------------------------------------
// Line cap constants (only the lowest 8 bits are used).
//--------------------------------------------------------------------------

type
  LineCap = Integer;
const
  LineCapFlat                               = 0;
  LineCapSquare                             = 1;
  LineCapRound                              = 2;
  LineCapTriangle                           = 3;

  LineCapNoAnchor                           = $10; // corresponds to flat cap
  LineCapSquareAnchor                       = $11; // corresponds to square cap
  LineCapRoundAnchor                        = $12; // corresponds to round cap
  LineCapDiamondAnchor                      = $13; // corresponds to triangle cap
  LineCapArrowAnchor                        = $14; // no correspondence

  LineCapCustom                             = $ff; // custom cap

  LineCapAnchorMask                         = $f0;  // mask to check for anchor or not.

//--------------------------------------------------------------------------
// Custom Line cap type constants
//--------------------------------------------------------------------------

type
  CustomLineCapType = Integer;
const
  CustomLineCapTypeDefault                  = 0;
  CustomLineCapTypeAdjustableArrow          = 1;

//--------------------------------------------------------------------------
// Line join constants
//--------------------------------------------------------------------------

type
  LineJoin = Integer;
const
  LineJoinMiter                             = 0;
  LineJoinBevel                             = 1;
  LineJoinRound                             = 2;
  LineJoinMiterClipped                      = 3;

//--------------------------------------------------------------------------
// Path point types (only the lowest 8 bits are used.)
//  The lowest 3 bits are interpreted as point type
//  The higher 5 bits are reserved for flags.
//--------------------------------------------------------------------------

type
  PathPointType = Integer;
const
  PathPointTypeStart                        = 0;    // move
  PathPointTypeLine                         = 1;    // line
  PathPointTypeBezier                       = 3;    // default Bezier (= cubic Bezier)
  PathPointTypePathTypeMask                 = $07;  // type mask (lowest 3 bits).
  PathPointTypeDashMode                     = $10;  // currently in dash mode.
  PathPointTypePathMarker                   = $20;  // a marker for the path.
  PathPointTypeCloseSubpath                 = $80;  // closed flag

    // Path types used for advanced path.

  PathPointTypeBezier3                      = 3;         // cubic Bezier


//--------------------------------------------------------------------------
// WarpMode constants
//--------------------------------------------------------------------------

type
  WarpMode = Integer;
const
  WarpModePerspective                       = 0;
  WarpModeBilinear                          = 1;

//--------------------------------------------------------------------------
// LineGradient Mode
//--------------------------------------------------------------------------

type
  LinearGradientMode = Integer;
const
  LinearGradientModeHorizontal              = 0;
  LinearGradientModeVertical                = 1;
  LinearGradientModeForwardDiagonal         = 2;
  LinearGradientModeBackwardDiagonal        = 3;

//--------------------------------------------------------------------------
// Region Comine Modes
//--------------------------------------------------------------------------

type
  CombineMode = Integer;
const
  CombineModeReplace                        = 0;
  CombineModeIntersect                      = 1;
  CombineModeUnion                          = 2;
  CombineModeXor                            = 3;
  CombineModeExclude                        = 4;
  CombineModeComplement                     = 5; // (Exclude From)


//--------------------------------------------------------------------------
 // Image types
//--------------------------------------------------------------------------

type
  ImageType = Integer;
const
  ImageTypeUnknown                          = 0;
  ImageTypeBitmap                           = 1;
  ImageTypeMetafile                         = 2;


//--------------------------------------------------------------------------
// Interpolation modes
//--------------------------------------------------------------------------

type
  InterpolationMode = Integer;
const
  InterpolationModeInvalid                  = QualityModeInvalid;
  InterpolationModeDefault                  = QualityModeDefault;
  InterpolationModeLowQuality               = QualityModeLow;
  InterpolationModeHighQuality              = QualityModeHigh;
  InterpolationModeBilinear                 = 3;
  InterpolationModeBicubic                  = 4;
  InterpolationModeNearestNeighbor          = 5;
  InterpolationModeHighQualityBilinear      = 6;
  InterpolationModeHighQualityBicubic       = 7;

//--------------------------------------------------------------------------
// Pen types
//--------------------------------------------------------------------------

type
  PenAlignment = Integer;
const
  PenAlignmentCenter                        = 0;
  PenAlignmentInset                         = 1;

//--------------------------------------------------------------------------
// Brush types
//--------------------------------------------------------------------------

type
  BrushType = Integer;
const
  BrushTypeSolidColor                       = 0;
  BrushTypeHatchFill                        = 1;
  BrushTypeTextureFill                      = 2;
  BrushTypePathGradient                     = 3;
  BrushTypeLinearGradient                   = 4;


//--------------------------------------------------------------------------
// Pen's Fill types
//--------------------------------------------------------------------------

type
  PenType = Integer;
const
  PenTypeSolidColor                         = BrushTypeSolidColor;
  PenTypeHatchFill                          = BrushTypeHatchFill;
  PenTypeTextureFill                        = BrushTypeTextureFill;
  PenTypePathGradient                       = BrushTypePathGradient;
  PenTypeLinearGradient                     = BrushTypeLinearGradient;
  PenTypeUnknown                            = -1;

//--------------------------------------------------------------------------
// Matrix Order
//--------------------------------------------------------------------------

type
  MatrixOrder = Integer;
const
  MatrixOrderPrepend                        = 0;
  MatrixOrderAppend                         = 1;

//--------------------------------------------------------------------------
// Generic font families
//--------------------------------------------------------------------------

type
  GenericFontFamily = Integer;
const
  GenericFontFamilySerif                    = 0;
  GenericFontFamilySansSerif                = 1;
  GenericFontFamilyMonospace                = 2;

//--------------------------------------------------------------------------
// FontStyle: face types and common styles
//--------------------------------------------------------------------------

type
  FontStyle = Integer;
const
  FontStyleRegular                          = 0;
  FontStyleBold                             = 1;
  FontStyleItalic                           = 2;
  FontStyleBoldItalic                       = 3;
  FontStyleUnderline                        = 4;
  FontStyleStrikeout                        = 8;

//---------------------------------------------------------------------------
// Smoothing Mode
//---------------------------------------------------------------------------

type
  SmoothingMode = Integer;
const
  SmoothingModeInvalid                      = QualityModeInvalid;
  SmoothingModeDefault                      = QualityModeDefault;
  SmoothingModeHighSpeed                    = QualityModeLow;
  SmoothingModeHighQuality                  = QualityModeHigh;
  SmoothingModeNone                         = 3;
  SmoothingModeAntiAlias                    = 4;

//---------------------------------------------------------------------------
// Pixel Format Mode
//---------------------------------------------------------------------------

type
  PixelOffsetMode = Integer;
const
  PixelOffsetModeInvalid                    = QualityModeInvalid;
  PixelOffsetModeDefault                    = QualityModeDefault;
  PixelOffsetModeHighSpeed                  = QualityModeLow;
  PixelOffsetModeHighQuality                = QualityModeHigh;
  PixelOffsetModeNone                       = 3; // No pixel offset
  PixelOffsetModeHalf                       = 4; // Offset by -0.5, -0.5 for fast anti-alias perf

//---------------------------------------------------------------------------
// Text Rendering Hint
//---------------------------------------------------------------------------

type
  TextRenderingHint = Integer;
const
  TextRenderingHintSystemDefault            = 0; // Glyph with system default rendering hint
  TextRenderingHintSingleBitPerPixelGridFit = 1; // Glyph bitmap with hinting
  TextRenderingHintSingleBitPerPixel        = 2; // Glyph bitmap without hinting
  TextRenderingHintAntiAliasGridFit         = 3; // Glyph anti-alias bitmap with hinting
  TextRenderingHintAntiAlias                = 4; // Glyph anti-alias bitmap without hinting
  TextRenderingHintClearTypeGridFit         = 5; // Glyph CT bitmap with hinting

//---------------------------------------------------------------------------
// Metafile Types
//---------------------------------------------------------------------------

type
  MetafileType = Integer;
const
  MetafileTypeInvalid                       = 0; // Invalid metafile
  MetafileTypeWmf                           = 1; // Standard WMF
  MetafileTypeWmfPlaceable                  = 2; // Placeable WMF
  MetafileTypeEmf                           = 3; // EMF (not EMF+)
  MetafileTypeEmfPlusOnly                   = 4; // EMF+ without dual, down-level records
  MetafileTypeEmfPlusDual                   = 5; // EMF+ with dual, down-level records

//---------------------------------------------------------------------------
// Specifies the type of EMF to record
//---------------------------------------------------------------------------

type
  EmfType = Integer;
const
  EmfTypeEmfOnly                            = MetafileTypeEmf;          // no EMF+, only EMF
  EmfTypeEmfPlusOnly                        = MetafileTypeEmfPlusOnly;  // no EMF, only EMF+
  EmfTypeEmfPlusDual                        = MetafileTypeEmfPlusDual;   // both EMF+ and EMF

//---------------------------------------------------------------------------
// EMF+ Persistent object types
//---------------------------------------------------------------------------

type
  ObjectType = Integer;
const
  ObjectTypeInvalid                         = 0;
  ObjectTypeBrush                           = 1;
  ObjectTypePen                             = 2;
  ObjectTypePath                            = 3;
  ObjectTypeRegion                          = 4;
  ObjectTypeImage                           = 5;
  ObjectTypeFont                            = 6;
  ObjectTypeStringFormat                    = 7;
  ObjectTypeImageAttributes                 = 8;
  ObjectTypeCustomLineCap                   = 9;

  ObjectTypeMax                             = ObjectTypeCustomLineCap;
  ObjectTypeMin                             = ObjectTypeBrush;

function ObjectTypeIsValid(ObjType: ObjectType): BOOL;

//---------------------------------------------------------------------------
// EMF+ Records
//---------------------------------------------------------------------------

// We have to change the WMF record numbers so that they don't conflict with
// the EMF and EMF+ record numbers.

type
  EmfPlusRecordType = Integer;
const
  GDIP_EMFPLUS_RECORD_BASE                  = $00004000;
  GDIP_WMF_RECORD_BASE                      = $00010000;

function GDIP_WMF_RECORD_TO_EMFPLUS(n: Integer): EmfPlusRecordType;
function GDIP_EMFPLUS_RECORD_TO_WMF(n: EmfPlusRecordType): Integer;
function GDIP_IS_WMF_RECORDTYPE(n: Integer): Boolean;

const
   // Since we have to enumerate GDI records right along with GDI+ records,
   // We list all the GDI records here so that they can be part of the
   // same enumeration type which is used in the enumeration callback.

  WmfRecordTypeSetBkColor                   = (META_SETBKCOLOR or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetBkMode                    = (META_SETBKMODE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetMapMode                   = (META_SETMAPMODE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetROP2                      = (META_SETROP2 or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetRelAbs                    = (META_SETRELABS or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetPolyFillMode              = (META_SETPOLYFILLMODE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetStretchBltMode            = (META_SETSTRETCHBLTMODE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetTextCharExtra             = (META_SETTEXTCHAREXTRA or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetTextColor                 = (META_SETTEXTCOLOR or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetTextJustification         = (META_SETTEXTJUSTIFICATION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetWindowOrg                 = (META_SETWINDOWORG or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetWindowExt                 = (META_SETWINDOWEXT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetViewportOrg               = (META_SETVIEWPORTORG or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetViewportExt               = (META_SETVIEWPORTEXT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeOffsetWindowOrg              = (META_OFFSETWINDOWORG or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeScaleWindowExt               = (META_SCALEWINDOWEXT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeOffsetViewportOrg            = (META_OFFSETVIEWPORTORG or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeScaleViewportExt             = (META_SCALEVIEWPORTEXT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeLineTo                       = (META_LINETO or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeMoveTo                       = (META_MOVETO or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeExcludeClipRect              = (META_EXCLUDECLIPRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeIntersectClipRect            = (META_INTERSECTCLIPRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeArc                          = (META_ARC or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeEllipse                      = (META_ELLIPSE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeFloodFill                    = (META_FLOODFILL or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePie                          = (META_PIE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeRectangle                    = (META_RECTANGLE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeRoundRect                    = (META_ROUNDRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePatBlt                       = (META_PATBLT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSaveDC                       = (META_SAVEDC or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetPixel                     = (META_SETPIXEL or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeOffsetClipRgn                = (META_OFFSETCLIPRGN or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeTextOut                      = (META_TEXTOUT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeBitBlt                       = (META_BITBLT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeStretchBlt                   = (META_STRETCHBLT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePolygon                      = (META_POLYGON or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePolyline                     = (META_POLYLINE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeEscape                       = (META_ESCAPE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeRestoreDC                    = (META_RESTOREDC or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeFillRegion                   = (META_FILLREGION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeFrameRegion                  = (META_FRAMEREGION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeInvertRegion                 = (META_INVERTREGION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePaintRegion                  = (META_PAINTREGION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSelectClipRegion             = (META_SELECTCLIPREGION or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSelectObject                 = (META_SELECTOBJECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetTextAlign                 = (META_SETTEXTALIGN or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeDrawText                     = ($062F or GDIP_WMF_RECORD_BASE);  // META_DRAWTEXT
  WmfRecordTypeChord                        = (META_CHORD or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetMapperFlags               = (META_SETMAPPERFLAGS or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeExtTextOut                   = (META_EXTTEXTOUT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetDIBToDev                  = (META_SETDIBTODEV or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSelectPalette                = (META_SELECTPALETTE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeRealizePalette               = (META_REALIZEPALETTE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeAnimatePalette               = (META_ANIMATEPALETTE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetPalEntries                = (META_SETPALENTRIES or GDIP_WMF_RECORD_BASE);
  WmfRecordTypePolyPolygon                  = (META_POLYPOLYGON or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeResizePalette                = (META_RESIZEPALETTE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeDIBBitBlt                    = (META_DIBBITBLT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeDIBStretchBlt                = (META_DIBSTRETCHBLT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeDIBCreatePatternBrush        = (META_DIBCREATEPATTERNBRUSH or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeStretchDIB                   = (META_STRETCHDIB or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeExtFloodFill                 = (META_EXTFLOODFILL or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeSetLayout                    = ($0149 or GDIP_WMF_RECORD_BASE);  // META_SETLAYOUT
  WmfRecordTypeResetDC                      = ($014C or GDIP_WMF_RECORD_BASE);  // META_RESETDC
  WmfRecordTypeStartDoc                     = ($014D or GDIP_WMF_RECORD_BASE);  // META_STARTDOC
  WmfRecordTypeStartPage                    = ($004F or GDIP_WMF_RECORD_BASE);  // META_STARTPAGE
  WmfRecordTypeEndPage                      = ($0050 or GDIP_WMF_RECORD_BASE);  // META_ENDPAGE
  WmfRecordTypeAbortDoc                     = ($0052 or GDIP_WMF_RECORD_BASE);  // META_ABORTDOC
  WmfRecordTypeEndDoc                       = ($005E or GDIP_WMF_RECORD_BASE);  // META_ENDDOC
  WmfRecordTypeDeleteObject                 = (META_DELETEOBJECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreatePalette                = (META_CREATEPALETTE or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreateBrush                  = ($00F8 or GDIP_WMF_RECORD_BASE);  // META_CREATEBRUSH
  WmfRecordTypeCreatePatternBrush           = (META_CREATEPATTERNBRUSH or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreatePenIndirect            = (META_CREATEPENINDIRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreateFontIndirect           = (META_CREATEFONTINDIRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreateBrushIndirect          = (META_CREATEBRUSHINDIRECT or GDIP_WMF_RECORD_BASE);
  WmfRecordTypeCreateBitmapIndirect         = ($02FD or GDIP_WMF_RECORD_BASE);  // META_CREATEBITMAPINDIRECT
  WmfRecordTypeCreateBitmap                 = ($06FE or GDIP_WMF_RECORD_BASE);  // META_CREATEBITMAP
  WmfRecordTypeCreateRegion                 = (META_CREATEREGION or GDIP_WMF_RECORD_BASE);

  EmfRecordTypeHeader                       = EMR_HEADER;
  EmfRecordTypePolyBezier                   = EMR_POLYBEZIER;
  EmfRecordTypePolygon                      = EMR_POLYGON;
  EmfRecordTypePolyline                     = EMR_POLYLINE;
  EmfRecordTypePolyBezierTo                 = EMR_POLYBEZIERTO;
  EmfRecordTypePolyLineTo                   = EMR_POLYLINETO;
  EmfRecordTypePolyPolyline                 = EMR_POLYPOLYLINE;
  EmfRecordTypePolyPolygon                  = EMR_POLYPOLYGON;
  EmfRecordTypeSetWindowExtEx               = EMR_SETWINDOWEXTEX;
  EmfRecordTypeSetWindowOrgEx               = EMR_SETWINDOWORGEX;
  EmfRecordTypeSetViewportExtEx             = EMR_SETVIEWPORTEXTEX;
  EmfRecordTypeSetViewportOrgEx             = EMR_SETVIEWPORTORGEX;
  EmfRecordTypeSetBrushOrgEx                = EMR_SETBRUSHORGEX;
  EmfRecordTypeEOF                          = EMR_EOF;
  EmfRecordTypeSetPixelV                    = EMR_SETPIXELV;
  EmfRecordTypeSetMapperFlags               = EMR_SETMAPPERFLAGS;
  EmfRecordTypeSetMapMode                   = EMR_SETMAPMODE;
  EmfRecordTypeSetBkMode                    = EMR_SETBKMODE;
  EmfRecordTypeSetPolyFillMode              = EMR_SETPOLYFILLMODE;
  EmfRecordTypeSetROP2                      = EMR_SETROP2;
  EmfRecordTypeSetStretchBltMode            = EMR_SETSTRETCHBLTMODE;
  EmfRecordTypeSetTextAlign                 = EMR_SETTEXTALIGN;
  EmfRecordTypeSetColorAdjustment           = EMR_SETCOLORADJUSTMENT;
  EmfRecordTypeSetTextColor                 = EMR_SETTEXTCOLOR;
  EmfRecordTypeSetBkColor                   = EMR_SETBKCOLOR;
  EmfRecordTypeOffsetClipRgn                = EMR_OFFSETCLIPRGN;
  EmfRecordTypeMoveToEx                     = EMR_MOVETOEX;
  EmfRecordTypeSetMetaRgn                   = EMR_SETMETARGN;
  EmfRecordTypeExcludeClipRect              = EMR_EXCLUDECLIPRECT;
  EmfRecordTypeIntersectClipRect            = EMR_INTERSECTCLIPRECT;
  EmfRecordTypeScaleViewportExtEx           = EMR_SCALEVIEWPORTEXTEX;
  EmfRecordTypeScaleWindowExtEx             = EMR_SCALEWINDOWEXTEX;
  EmfRecordTypeSaveDC                       = EMR_SAVEDC;
  EmfRecordTypeRestoreDC                    = EMR_RESTOREDC;
  EmfRecordTypeSetWorldTransform            = EMR_SETWORLDTRANSFORM;
  EmfRecordTypeModifyWorldTransform         = EMR_MODIFYWORLDTRANSFORM;
  EmfRecordTypeSelectObject                 = EMR_SELECTOBJECT;
  EmfRecordTypeCreatePen                    = EMR_CREATEPEN;
  EmfRecordTypeCreateBrushIndirect          = EMR_CREATEBRUSHINDIRECT;
  EmfRecordTypeDeleteObject                 = EMR_DELETEOBJECT;
  EmfRecordTypeAngleArc                     = EMR_ANGLEARC;
  EmfRecordTypeEllipse                      = EMR_ELLIPSE;
  EmfRecordTypeRectangle                    = EMR_RECTANGLE;
  EmfRecordTypeRoundRect                    = EMR_ROUNDRECT;
  EmfRecordTypeArc                          = EMR_ARC;
  EmfRecordTypeChord                        = EMR_CHORD;
  EmfRecordTypePie                          = EMR_PIE;
  EmfRecordTypeSelectPalette                = EMR_SELECTPALETTE;
  EmfRecordTypeCreatePalette                = EMR_CREATEPALETTE;
  EmfRecordTypeSetPaletteEntries            = EMR_SETPALETTEENTRIES;
  EmfRecordTypeResizePalette                = EMR_RESIZEPALETTE;
  EmfRecordTypeRealizePalette               = EMR_REALIZEPALETTE;
  EmfRecordTypeExtFloodFill                 = EMR_EXTFLOODFILL;
  EmfRecordTypeLineTo                       = EMR_LINETO;
  EmfRecordTypeArcTo                        = EMR_ARCTO;
  EmfRecordTypePolyDraw                     = EMR_POLYDRAW;
  EmfRecordTypeSetArcDirection              = EMR_SETARCDIRECTION;
  EmfRecordTypeSetMiterLimit                = EMR_SETMITERLIMIT;
  EmfRecordTypeBeginPath                    = EMR_BEGINPATH;
  EmfRecordTypeEndPath                      = EMR_ENDPATH;
  EmfRecordTypeCloseFigure                  = EMR_CLOSEFIGURE;
  EmfRecordTypeFillPath                     = EMR_FILLPATH;
  EmfRecordTypeStrokeAndFillPath            = EMR_STROKEANDFILLPATH;
  EmfRecordTypeStrokePath                   = EMR_STROKEPATH;
  EmfRecordTypeFlattenPath                  = EMR_FLATTENPATH;
  EmfRecordTypeWidenPath                    = EMR_WIDENPATH;
  EmfRecordTypeSelectClipPath               = EMR_SELECTCLIPPATH;
  EmfRecordTypeAbortPath                    = EMR_ABORTPATH;
  EmfRecordTypeReserved_069                 = 69;  // Not Used
  EmfRecordTypeGdiComment                   = EMR_GDICOMMENT;
  EmfRecordTypeFillRgn                      = EMR_FILLRGN;
  EmfRecordTypeFrameRgn                     = EMR_FRAMERGN;
  EmfRecordTypeInvertRgn                    = EMR_INVERTRGN;
  EmfRecordTypePaintRgn                     = EMR_PAINTRGN;
  EmfRecordTypeExtSelectClipRgn             = EMR_EXTSELECTCLIPRGN;
  EmfRecordTypeBitBlt                       = EMR_BITBLT;
  EmfRecordTypeStretchBlt                   = EMR_STRETCHBLT;
  EmfRecordTypeMaskBlt                      = EMR_MASKBLT;
  EmfRecordTypePlgBlt                       = EMR_PLGBLT;
  EmfRecordTypeSetDIBitsToDevice            = EMR_SETDIBITSTODEVICE;
  EmfRecordTypeStretchDIBits                = EMR_STRETCHDIBITS;
  EmfRecordTypeExtCreateFontIndirect        = EMR_EXTCREATEFONTINDIRECTW;
  EmfRecordTypeExtTextOutA                  = EMR_EXTTEXTOUTA;
  EmfRecordTypeExtTextOutW                  = EMR_EXTTEXTOUTW;
  EmfRecordTypePolyBezier16                 = EMR_POLYBEZIER16;
  EmfRecordTypePolygon16                    = EMR_POLYGON16;
  EmfRecordTypePolyline16                   = EMR_POLYLINE16;
  EmfRecordTypePolyBezierTo16               = EMR_POLYBEZIERTO16;
  EmfRecordTypePolylineTo16                 = EMR_POLYLINETO16;
  EmfRecordTypePolyPolyline16               = EMR_POLYPOLYLINE16;
  EmfRecordTypePolyPolygon16                = EMR_POLYPOLYGON16;
  EmfRecordTypePolyDraw16                   = EMR_POLYDRAW16;
  EmfRecordTypeCreateMonoBrush              = EMR_CREATEMONOBRUSH;
  EmfRecordTypeCreateDIBPatternBrushPt      = EMR_CREATEDIBPATTERNBRUSHPT;
  EmfRecordTypeExtCreatePen                 = EMR_EXTCREATEPEN;
  EmfRecordTypePolyTextOutA                 = EMR_POLYTEXTOUTA;
  EmfRecordTypePolyTextOutW                 = EMR_POLYTEXTOUTW;
  EmfRecordTypeSetICMMode                   = 98;  // EMR_SETICMMODE,
  EmfRecordTypeCreateColorSpace             = 99;  // EMR_CREATECOLORSPACE,
  EmfRecordTypeSetColorSpace                = 100; // EMR_SETCOLORSPACE,
  EmfRecordTypeDeleteColorSpace             = 101; // EMR_DELETECOLORSPACE,
  EmfRecordTypeGLSRecord                    = 102; // EMR_GLSRECORD,
  EmfRecordTypeGLSBoundedRecord             = 103; // EMR_GLSBOUNDEDRECORD,
  EmfRecordTypePixelFormat                  = 104; // EMR_PIXELFORMAT,
  EmfRecordTypeDrawEscape                   = 105; // EMR_RESERVED_105,
  EmfRecordTypeExtEscape                    = 106; // EMR_RESERVED_106,
  EmfRecordTypeStartDoc                     = 107; // EMR_RESERVED_107,
  EmfRecordTypeSmallTextOut                 = 108; // EMR_RESERVED_108,
  EmfRecordTypeForceUFIMapping              = 109; // EMR_RESERVED_109,
  EmfRecordTypeNamedEscape                  = 110; // EMR_RESERVED_110,
  EmfRecordTypeColorCorrectPalette          = 111; // EMR_COLORCORRECTPALETTE,
  EmfRecordTypeSetICMProfileA               = 112; // EMR_SETICMPROFILEA,
  EmfRecordTypeSetICMProfileW               = 113; // EMR_SETICMPROFILEW,
  EmfRecordTypeAlphaBlend                   = 114; // EMR_ALPHABLEND,
  EmfRecordTypeSetLayout                    = 115; // EMR_SETLAYOUT,
  EmfRecordTypeTransparentBlt               = 116; // EMR_TRANSPARENTBLT,
  EmfRecordTypeReserved_117                 = 117; // Not Used
  EmfRecordTypeGradientFill                 = 118; // EMR_GRADIENTFILL,
  EmfRecordTypeSetLinkedUFIs                = 119; // EMR_RESERVED_119,
  EmfRecordTypeSetTextJustification         = 120; // EMR_RESERVED_120,
  EmfRecordTypeColorMatchToTargetW          = 121; // EMR_COLORMATCHTOTARGETW,
  EmfRecordTypeCreateColorSpaceW            = 122; // EMR_CREATECOLORSPACEW,
  EmfRecordTypeMax                          = 122;
  EmfRecordTypeMin                          = 1;

    // That is the END of the GDI EMF records.

    // Now we start the list of EMF+ records.  We leave quite
    // a bit of room here for the addition of any new GDI
    // records that may be added later.

  EmfPlusRecordTypeInvalid                  = GDIP_EMFPLUS_RECORD_BASE;
  EmfPlusRecordTypeHeader                   = GDIP_EMFPLUS_RECORD_BASE +1;
  EmfPlusRecordTypeEndOfFile                = GDIP_EMFPLUS_RECORD_BASE +2;

  EmfPlusRecordTypeComment                  = GDIP_EMFPLUS_RECORD_BASE +3;

  EmfPlusRecordTypeGetDC                    = GDIP_EMFPLUS_RECORD_BASE +4;

  EmfPlusRecordTypeMultiFormatStart         = GDIP_EMFPLUS_RECORD_BASE +5;
  EmfPlusRecordTypeMultiFormatSection       = GDIP_EMFPLUS_RECORD_BASE +6;
  EmfPlusRecordTypeMultiFormatEnd           = GDIP_EMFPLUS_RECORD_BASE +7;

    // For all persistent objects

  EmfPlusRecordTypeObject                   = GDIP_EMFPLUS_RECORD_BASE +8;

    // Drawing Records

  EmfPlusRecordTypeClear                    = GDIP_EMFPLUS_RECORD_BASE +9;
  EmfPlusRecordTypeFillRects                = GDIP_EMFPLUS_RECORD_BASE +10;
  EmfPlusRecordTypeDrawRects                = GDIP_EMFPLUS_RECORD_BASE +11;
  EmfPlusRecordTypeFillPolygon              = GDIP_EMFPLUS_RECORD_BASE +12;
  EmfPlusRecordTypeDrawLines                = GDIP_EMFPLUS_RECORD_BASE +13;
  EmfPlusRecordTypeFillEllipse              = GDIP_EMFPLUS_RECORD_BASE +14;
  EmfPlusRecordTypeDrawEllipse              = GDIP_EMFPLUS_RECORD_BASE +15;
  EmfPlusRecordTypeFillPie                  = GDIP_EMFPLUS_RECORD_BASE +16;
  EmfPlusRecordTypeDrawPie                  = GDIP_EMFPLUS_RECORD_BASE +17;
  EmfPlusRecordTypeDrawArc                  = GDIP_EMFPLUS_RECORD_BASE +18;
  EmfPlusRecordTypeFillRegion               = GDIP_EMFPLUS_RECORD_BASE +19;
  EmfPlusRecordTypeFillPath                 = GDIP_EMFPLUS_RECORD_BASE +20;
  EmfPlusRecordTypeDrawPath                 = GDIP_EMFPLUS_RECORD_BASE +21;
  EmfPlusRecordTypeFillClosedCurve          = GDIP_EMFPLUS_RECORD_BASE +22;
  EmfPlusRecordTypeDrawClosedCurve          = GDIP_EMFPLUS_RECORD_BASE +23;
  EmfPlusRecordTypeDrawCurve                = GDIP_EMFPLUS_RECORD_BASE +24;
  EmfPlusRecordTypeDrawBeziers              = GDIP_EMFPLUS_RECORD_BASE +25;
  EmfPlusRecordTypeDrawImage                = GDIP_EMFPLUS_RECORD_BASE +26;
  EmfPlusRecordTypeDrawImagePoints          = GDIP_EMFPLUS_RECORD_BASE +27;
  EmfPlusRecordTypeDrawString               = GDIP_EMFPLUS_RECORD_BASE +28;

    // Graphics State Records

  EmfPlusRecordTypeSetRenderingOrigin       = GDIP_EMFPLUS_RECORD_BASE +29;
  EmfPlusRecordTypeSetAntiAliasMode         = GDIP_EMFPLUS_RECORD_BASE +30;
  EmfPlusRecordTypeSetTextRenderingHint     = GDIP_EMFPLUS_RECORD_BASE +31;
  EmfPlusRecordTypeSetTextContrast          = GDIP_EMFPLUS_RECORD_BASE +32;
  EmfPlusRecordTypeSetInterpolationMode     = GDIP_EMFPLUS_RECORD_BASE +33;
  EmfPlusRecordTypeSetPixelOffsetMode       = GDIP_EMFPLUS_RECORD_BASE +34;
  EmfPlusRecordTypeSetCompositingMode       = GDIP_EMFPLUS_RECORD_BASE +35;
  EmfPlusRecordTypeSetCompositingQuality    = GDIP_EMFPLUS_RECORD_BASE +36;
  EmfPlusRecordTypeSave                     = GDIP_EMFPLUS_RECORD_BASE +37;
  EmfPlusRecordTypeRestore                  = GDIP_EMFPLUS_RECORD_BASE +38;
  EmfPlusRecordTypeBeginContainer           = GDIP_EMFPLUS_RECORD_BASE +39;
  EmfPlusRecordTypeBeginContainerNoParams   = GDIP_EMFPLUS_RECORD_BASE +40;
  EmfPlusRecordTypeEndContainer             = GDIP_EMFPLUS_RECORD_BASE +41;
  EmfPlusRecordTypeSetWorldTransform        = GDIP_EMFPLUS_RECORD_BASE +42;
  EmfPlusRecordTypeResetWorldTransform      = GDIP_EMFPLUS_RECORD_BASE +43;
  EmfPlusRecordTypeMultiplyWorldTransform   = GDIP_EMFPLUS_RECORD_BASE +44;
  EmfPlusRecordTypeTranslateWorldTransform  = GDIP_EMFPLUS_RECORD_BASE +45;
  EmfPlusRecordTypeScaleWorldTransform      = GDIP_EMFPLUS_RECORD_BASE +46;
  EmfPlusRecordTypeRotateWorldTransform     = GDIP_EMFPLUS_RECORD_BASE +47;
  EmfPlusRecordTypeSetPageTransform         = GDIP_EMFPLUS_RECORD_BASE +48;
  EmfPlusRecordTypeResetClip                = GDIP_EMFPLUS_RECORD_BASE +49;
  EmfPlusRecordTypeSetClipRect              = GDIP_EMFPLUS_RECORD_BASE +50;
  EmfPlusRecordTypeSetClipPath              = GDIP_EMFPLUS_RECORD_BASE +51;
  EmfPlusRecordTypeSetClipRegion            = GDIP_EMFPLUS_RECORD_BASE +52;
  EmfPlusRecordTypeOffsetClip               = GDIP_EMFPLUS_RECORD_BASE +53;

  EmfPlusRecordTypeDrawDriverString         = GDIP_EMFPLUS_RECORD_BASE +54;

  EmfPlusRecordTotal                        = GDIP_EMFPLUS_RECORD_BASE +55;

  EmfPlusRecordTypeMax                      = EmfPlusRecordTotal -1;
  EmfPlusRecordTypeMin                      = EmfPlusRecordTypeHeader;

//---------------------------------------------------------------------------
// StringFormatFlags
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// String format flags
//
//  DirectionRightToLeft          - For horizontal text, the reading order is
//                                  right to left. This value is called
//                                  the base embedding level by the Unicode
//                                  bidirectional engine.
//                                  For vertical text, columns are read from
//                                  right to left.
//                                  By default, horizontal or vertical text is
//                                  read from left to right.
//
//  DirectionVertical             - Individual lines of text are vertical. In
//                                  each line, characters progress from top to
//                                  bottom.
//                                  By default, lines of text are horizontal,
//                                  each new line below the previous line.
//
//  NoFitBlackBox                 - Allows parts of glyphs to overhang the
//                                  bounding rectangle.
//                                  By default glyphs are first aligned
//                                  inside the margines, then any glyphs which
//                                  still overhang the bounding box are
//                                  repositioned to avoid any overhang.
//                                  For example when an italic
//                                  lower case letter f in a font such as
//                                  Garamond is aligned at the far left of a
//                                  rectangle, the lower part of the f will
//                                  reach slightly further left than the left
//                                  edge of the rectangle. Setting this flag
//                                  will ensure the character aligns visually
//                                  with the lines above and below, but may
//                                  cause some pixels outside the formatting
//                                  rectangle to be clipped or painted.
//
//  DisplayFormatControl          - Causes control characters such as the
//                                  left-to-right mark to be shown in the
//                                  output with a representative glyph.
//
//  NoFontFallback                - Disables fallback to alternate fonts for
//                                  characters not supported in the requested
//                                  font. Any missing characters will be
//                                  be displayed with the fonts missing glyph,
//                                  usually an open square.
//
//  NoWrap                        - Disables wrapping of text between lines
//                                  when formatting within a rectangle.
//                                  NoWrap is implied when a point is passed
//                                  instead of a rectangle, or when the
//                                  specified rectangle has a zero line length.
//
//  NoClip                        - By default text is clipped to the
//                                  formatting rectangle. Setting NoClip
//                                  allows overhanging pixels to affect the
//                                  device outside the formatting rectangle.
//                                  Pixels at the end of the line may be
//                                  affected if the glyphs overhang their
//                                  cells, and either the NoFitBlackBox flag
//                                  has been set, or the glyph extends to far
//                                  to be fitted.
//                                  Pixels above/before the first line or
//                                  below/after the last line may be affected
//                                  if the glyphs extend beyond their cell
//                                  ascent / descent. This can occur rarely
//                                  with unusual diacritic mark combinations.

//---------------------------------------------------------------------------

type
  StringFormatFlags = Integer;
const
  StringFormatFlagsDirectionRightToLeft     = $00000001;
  StringFormatFlagsDirectionVertical        = $00000002;
  StringFormatFlagsNoFitBlackBox            = $00000004;
  StringFormatFlagsDisplayFormatControl     = $00000020;
  StringFormatFlagsNoFontFallback           = $00000400;
  StringFormatFlagsMeasureTrailingSpaces    = $00000800;
  StringFormatFlagsNoWrap                   = $00001000;
  StringFormatFlagsLineLimit                = $00002000;

  StringFormatFlagsNoClip                   = $00004000;

//---------------------------------------------------------------------------
// StringTrimming
//---------------------------------------------------------------------------

type
  StringTrimming = Integer;
const
  StringTrimmingNone                        = 0;
  StringTrimmingCharacter                   = 1;
  StringTrimmingWord                        = 2;
  StringTrimmingEllipsisCharacter           = 3;
  StringTrimmingEllipsisWord                = 4;
  StringTrimmingEllipsisPath                = 5;

//---------------------------------------------------------------------------
// National language digit substitution
//---------------------------------------------------------------------------

type
  StringDigitSubstitute = Integer;
const
  StringDigitSubstituteUser                 = 0;  // As NLS setting
  StringDigitSubstituteNone                 = 1;
  StringDigitSubstituteNational             = 2;
  StringDigitSubstituteTraditional          = 3;

//---------------------------------------------------------------------------
// Hotkey prefix interpretation
//---------------------------------------------------------------------------

type
  HotkeyPrefix = Integer;
const
  HotkeyPrefixNone                          = 0;
  HotkeyPrefixShow                          = 1;
  HotkeyPrefixHide                          = 2;

//---------------------------------------------------------------------------
// String alignment flags
//---------------------------------------------------------------------------

type
  StringAlignment = Integer;
const
  // Left edge for left-to-right text,
  // right for right-to-left text,
  // and top for vertical
  StringAlignmentNear                       = 0;
  StringAlignmentCenter                     = 1;
  StringAlignmentFar                        = 2;

//---------------------------------------------------------------------------
// DriverStringOptions
//---------------------------------------------------------------------------

type
  DriverStringOptions = Integer;
const
  DriverStringOptionsCmapLookup             = 1;
  DriverStringOptionsVertical               = 2;
  DriverStringOptionsRealizedAdvance        = 4;
  DriverStringOptionsLimitSubpixel          = 8;

//---------------------------------------------------------------------------
// Flush Intention flags
//---------------------------------------------------------------------------

type
  FlushIntention = Integer;
const
  FlushIntentionFlush                       = 0;        // Flush all batched rendering operations
  FlushIntentionSync                        = 1;        // Flush all batched rendering operations
                                                        // and wait for them to complete
//---------------------------------------------------------------------------
// Image encoder parameter related types
//---------------------------------------------------------------------------

type
  EncoderParameterValueType = Integer;
const
  EncoderParameterValueTypeByte             = 1;    // 8-bit unsigned int
  EncoderParameterValueTypeASCII            = 2;    // 8-bit byte containing one 7-bit ASCII
                                                    // code. NULL terminated.
  EncoderParameterValueTypeShort            = 3;    // 16-bit unsigned int
  EncoderParameterValueTypeLong             = 4;    // 32-bit unsigned int
  EncoderParameterValueTypeRational         = 5;    // Two Longs. The first Long is the
                                                    // numerator, the second Long expresses the
                                                    // denomintor.
  EncoderParameterValueTypeLongRange        = 6;    // Two longs which specify a range of
                                                    // integer values. The first Long specifies
                                                    // the lower end and the second one
                                                    // specifies the higher end. All values
                                                    // are inclusive at both ends
  EncoderParameterValueTypeUndefined        = 7;    // 8-bit byte that can take any value
                                                    // depending on field definition
  EncoderParameterValueTypeRationalRange    = 8;     // Two Rationals. The first Rational
                                                    // specifies the lower end and the second
                                                    // specifies the higher end. All values
                                                    // are inclusive at both ends

//---------------------------------------------------------------------------
// Image encoder value types
//---------------------------------------------------------------------------

type
  EncoderValue = Integer;
const
  EncoderValueColorTypeCMYK                 = 0;
  EncoderValueColorTypeYCCK                 = 1;
  EncoderValueCompressionLZW                = 2;
  EncoderValueCompressionCCITT3             = 3;
  EncoderValueCompressionCCITT4             = 4;
  EncoderValueCompressionRle                = 5;
  EncoderValueCompressionNone               = 6;
  EncoderValueScanMethodInterlaced          = 7;
  EncoderValueScanMethodNonInterlaced       = 8;
  EncoderValueVersionGif87                  = 9;
  EncoderValueVersionGif89                  = 10;
  EncoderValueRenderProgressive             = 11;
  EncoderValueRenderNonProgressive          = 12;
  EncoderValueTransformRotate90             = 13;
  EncoderValueTransformRotate180            = 14;
  EncoderValueTransformRotate270            = 15;
  EncoderValueTransformFlipHorizontal       = 16;
  EncoderValueTransformFlipVertical         = 17;
  EncoderValueMultiFrame                    = 18;
  EncoderValueLastFrame                     = 19;
  EncoderValueFlush                         = 20;
  EncoderValueFrameDimensionTime            = 21;
  EncoderValueFrameDimensionResolution      = 22;
  EncoderValueFrameDimensionPag             = 23;

//---------------------------------------------------------------------------
// Conversion of Emf To WMF Bits flags
//---------------------------------------------------------------------------

type
  EmfToWmfBitsFlags = Integer;
const
  EmfToWmfBitsFlagsDefault                  = $00000000;
  EmfToWmfBitsFlagsEmbedEmf                 = $00000001;
  EmfToWmfBitsFlagsIncludePlaceable         = $00000002;
  EmfToWmfBitsFlagsNoXORClip                = $00000004;


//============================================================================
// *** GdiPlusTypes.h
//============================================================================

//--------------------------------------------------------------------------
// Callback functions
//--------------------------------------------------------------------------

type
  ImageAbort = function :BOOL; cdecl;
  DrawImageAbort = ImageAbort;
  GetThumbnailImageAbort = ImageAbort;

// Callback for EnumerateMetafile methods.  The parameters are:

//      recordType      WMF, EMF, or EMF+ record type
//      flags           (always 0 for WMF/EMF records)
//      dataSize        size of the record data (in bytes), or 0 if no data
//      data            pointer to the record data, or NULL if no data
//      callbackData    pointer to callbackData, if any

// This method can then call Metafile::PlayRecord to play the
// record that was just enumerated.  If this method  returns
// FALSE, the enumeration process is aborted.  Otherwise, it continues.

type
  EnumerateMetaFileProc = function (recordType :EmfPlusRecordType; flags,datasize :UINT; data :PBYTE; callbackdata :pointer) :BOOL; cdecl;

//--------------------------------------------------------------------------
// Primitive data types
//
// NOTE:
//  Types already defined in standard header files:
//      INT8
//      UINT8
//      INT16
//      UINT16
//      INT32
//      UINT32
//      INT64
//      UINT64
//
//  Avoid using the following types:
//      LONG - use INT
//      ULONG - use UINT
//      DWORD - use UINT32
//--------------------------------------------------------------------------

type
  UINT32 = cardinal;
  UINT16 = word;
  INT16  = smallint;
{
typedef float single;

#define REAL_MAX            FLT_MAX
#define REAL_MIN            FLT_MIN
#define REAL_TOLERANCE     (FLT_MIN * 100)
}
const
  REAL_EPSILON = 1.192092896e-07;


//--------------------------------------------------------------------------
// Forward declarations of various internal classes
//--------------------------------------------------------------------------
{
class Size;
class SizeF;
class Point;
class PointF;
class Rect;
class RectF;
class CharacterRange;
}
//--------------------------------------------------------------------------
// Return values from any GDI+ API
//--------------------------------------------------------------------------

type
  Status = integer;
const
  Ok = 0;                         // Should they be prefixed with Status ?
  GenericError = 1;
  InvalidParameter = 2;
  OutOfMemory = 3;
  ObjectBusy = 4;
  InsufficientBuffer = 5;
  NotImplemented = 6;
  Win32Error = 7;
  WrongState = 8;
  Aborted = 9;
  FileNotFound = 10;
  ValueOverflow = 11;
  AccessDenied = 12;
  UnknownImageFormat = 13;
  FontFamilyNotFound = 14;
  FontStyleNotFound = 15;
  NotTrueTypeFont = 16;
  UnsupportedGdiplusVersion = 17;
  GdiplusNotInitialized = 18;
  PropertyNotFound = 19;
  PropertyNotSupported = 20;


//--------------------------------------------------------------------------
// Represents a dimension in a 2D coordinate system (floating-point coordinates)
//--------------------------------------------------------------------------

type
  PSizeF = ^SizeF;
  SizeF = object
    Width,Height :single;
    procedure New; overload;
    procedure New (const size :SizeF); overload;
    procedure New (w,h :single); overload;
    function  Add (const size :SizeF) :SizeF; overload;
    procedure Add (const s1,s2 :SizeF); overload;                   // addon
    function  Sub (const size :SizeF) :SizeF; overload;
    procedure Sub (const s1,s2 :SizeF); overload;                   // addon
    function  Equals (const size :SizeF) :BOOL;
    function  Empty :BOOL;
  end;

//--------------------------------------------------------------------------
// Represents a dimension in a 2D coordinate system (integer coordinates)
//--------------------------------------------------------------------------

type
  PSize = ^Size;
  Size = object
    Width,Height :integer;
    procedure New; overload;
    procedure New (const size :Size); overload;
    procedure New (w,h :integer); overload;
    function  Add (const size :Size) :Size; overload;
    procedure Add (const s1,s2 :Size); overload;
    function  Sub (const size :Size) :Size; overload;
    procedure Sub (const s1,s2 :Size); overload;
    function  Equals (const size :Size) :BOOL;
    function  Empty :BOOL;
  end;

//--------------------------------------------------------------------------
// Represents a location in a 2D coordinate system
//  (floating-point coordinates)
//--------------------------------------------------------------------------

type
  PPointF = ^PointF;  // Could be useful
  PointF = object
    X,Y :single;
    procedure New; overload;
    procedure New (const point :PointF); overload;
    procedure New (const size :SizeF); overload;
    procedure New (sx,sy :single); overload;
    function  Add (const point :PointF) :PointF; overload;
    procedure Add (const p1,p2 :PointF); overload;
    function  Sub (const point :PointF) :PointF; overload;
    procedure Sub (const p1,p2 :PointF); overload;
    function  Equals (const point :PointF) :BOOL;
  end;


//--------------------------------------------------------------------------
// Represents a location in a 2D coordinate system
//  (integer coordinates)
//--------------------------------------------------------------------------

type
  PPoint = ^Point;
  Point = object
    X,Y :integer;
    procedure New; overload;
    procedure New (const point :Point); overload;
    procedure New (const size :Size); overload;
    procedure New (sx,sy :integer); overload;
    function  Add (const point :Point) :Point; overload;
    procedure Add (const p1,p2 :Point); overload;
    function  Sub (const point :Point) :Point; overload;
    procedure Sub (const p1,p2 :Point); overload;
    function  Equals (const point :Point) :BOOL;
  end;


//--------------------------------------------------------------------------
// Represents a rectangle in a 2D coordinate system
//  (floating-point coordinates)
//--------------------------------------------------------------------------

type
  PRectF = ^RectF;
  RectF = object
    X,Y,Width,Height :single;
    procedure New; overload;
    procedure New (sx,sy,sw,sh :single); overload;
    procedure New (const location :PointF; const size :SizeF); overload;
    function  Clone :PRectF;
    procedure GetLocation (var point :PointF);
    procedure GetSize (var size :SizeF);
    procedure GetBounds (var rect :RectF);
    property  GetLeft :single read X;
    property  GetTop :single read Y;
    function  GetRight :single;
    function  GetBottom :single;
    function  IsEmptyArea :BOOL;
    function  Equals (const rect :RectF) :BOOL;
    function  Contains (sx,sy :single) :BOOL; overload;
    function  Contains (const pt :PointF) :BOOL; overload;
    function  Contains (const rect :RectF) :BOOL; overload;
    procedure Inflate (dx,dy :single); overload;
    procedure Inflate (const point :PointF); overload;
    function  Intersect (const rect :RectF) :BOOL; overload;
    function  Intersect (var c :RectF; const a,b :RectF) :BOOL; overload;
    function  IntersectsWith (const rect :RectF) :BOOL;
    function  Union (var c :RectF; const a,b :RectF) :BOOL;
    procedure Offset (const point :PointF); overload;
    procedure Offset (dx,dy :single); overload;
  end;

//--------------------------------------------------------------------------
// Represents a rectangle in a 2D coordinate system
//  (integer coordinates)
//--------------------------------------------------------------------------

type
  PRect = ^Rect;
  Rect = object
    X,Y,Width,Height :integer;
    procedure New; overload;
    procedure New (sx,sy,sw,sh :integer); overload;
    procedure New (const location :Point; const size :Size); overload;
    function  Clone :PRect;
    procedure GetLocation (var point :Point);
    procedure GetSize (var size :Size);
    procedure GetBounds (var rect :Rect);
    property  GetLeft :integer read X;
    property  GetTop :integer read Y;
    function  GetRight :integer;
    function  GetBottom :integer;
    function  IsEmptyArea :BOOL;
    function  Equals (const rect :Rect) :BOOL;
    function  Contains (sx,sy :integer) :BOOL; overload;
    function  Contains (const pt :Point) :BOOL; overload;
    function  Contains (const rect :Rect) :BOOL; overload;
    procedure Inflate (dx,dy :integer); overload;
    procedure Inflate (const point :Point); overload;
    function  Intersect (const rect :Rect) :BOOL; overload;
    function  Intersect (var c :Rect; const a,b :Rect) :BOOL; overload;
    function  IntersectsWith (const rect :Rect) :BOOL;
    function  Union (var c :Rect; const a,b :Rect) :BOOL;
    procedure Offset (const point :Point); overload;
    procedure Offset (dx,dy :integer); overload;
  end;

//----------------------------------------
// A user must mange memory for PathData.
//----------------------------------------

type
  PPathData = ^PathData;
  PathData = object
    Count  :integer;
    Points :PPointF;
    Types  :pbyte;
    procedure New;
    procedure Free;                     // Must be called manually :(
  end;

//-----------------------------
// text character range
//-----------------------------

type
  PCharacterRange = ^CharacterRange;
  CharacterRange = object
    First,Length :integer;
    procedure New; overload;
    procedure New (f,l :integer); overload;
  end;


//============================================================================
// *** GdiPlusInit.h
//============================================================================

type
  DebugEventLevel = Integer;
const
  DebugEventLevelFatal                      = 0;
  DebugEventLevelWarning                    = 1;


// Callback function that GDI+ can call, on debug builds, for assertions
// and warnings.

type
  DebugEventProc = procedure(level: DebugEventLevel; Msg: Pointer); stdcall;

// Notification functions which the user must call appropriately if
// "SuppressBackgroundThread" (below) is set.

  NotificationHookProc = function(out token: DWORD): Status; stdcall;
  NotificationUnhookProc = procedure(token: DWORD); stdcall;

// Input structure for GdiplusStartup()

  GdiplusStartupInput = packed record
    GdiplusVersion: UINT;                  // Must be 1
    DebugEventCallback: DebugEventProc;    // Ignored on free builds
    SuppressBackgroundThread: BOOL;         // FALSE unless you're prepared to call
                                           // the hook/unhook functions properly
    SuppressExternalCodecs: BOOL;           // FALSE unless you want GDI+ only to use
                                           // its internal image codecs.
  end;

const
  DefStartup: GdiplusStartupInput = (GdiplusVersion: 1;
                                     DebugEventCallback: nil; SuppressBackgroundThread: False;
                                     SuppressExternalCodecs: False);

// Output structure for GdiplusStartup()
type
  PGdiplusStartupOutput = ^GdiplusStartupOutput;
  GdiplusStartupOutput = packed record
    // The following 2 fields are NULL if SuppressBackgroundThread is FALSE.
    // Otherwise, they are functions which must be called appropriately to
    // replace the background thread.
    //
    // These should be called on the application's main message loop - i.e.
    // a message loop which is active for the lifetime of GDI+.
    // "NotificationHook" should be called before starting the loop,
    // and "NotificationUnhook" should be called after the loop ends.

    NotificationHook: NotificationHookProc;
    NotificationUnhook: NotificationUnhookProc;
  end;

// GDI+ initialization. Must not be called from DllMain - can cause deadlock.
//
// Must be called before GDI+ API's or constructors are used.
//
// token  - may not be NULL - accepts a token to be passed in the corresponding
//          GdiplusShutdown call.
// input  - may not be NULL
// output - may be NULL only if input->SuppressBackgroundThread is FALSE.

function GdiplusStartup(out token: DWORD; const input: GdiplusStartupInput;
                        output: PGdiplusStartupOutput): Status; stdcall; external GdiPlusLib;

// GDI+ termination. Must be called before GDI+ is unloaded.
// Must not be called from DllMain - can cause deadlock.
//
// GDI+ API's may not be called after GdiplusShutdown. Pay careful attention
// to GDI+ object destructors.

procedure GdiplusShutdown(token: DWORD); stdcall; external GdiPlusLib;

procedure InitGdiPlus;  // addon
procedure EndGdiPlus;  // addon


//============================================================================
// *** GdiPlusPixelFormats.h
//============================================================================

type
  ARGB = DWORD;
  ARGB64 = Int64;

const
  ALPHA_SHIFT                               = 24;
  RED_SHIFT                                 = 16;
  GREEN_SHIFT                               = 8;
  BLUE_SHIFT                                = 0;
  ALPHA_MASK                                = ARGB($ff shl ALPHA_SHIFT);

// In-memory pixel data formats:
// bits 0-7 = format index
// bits 8-15 = pixel size (in bits)
// bits 16-23 = flags
// bits 24-31 = reserved

type
  PixelFormat = Integer;
const
  PixelFormatIndexed                        = $00010000; // Indexes into a palette
  PixelFormatGDI                            = $00020000; // Is a GDI-supported format
  PixelFormatAlpha                          = $00040000; // Has an alpha component
  PixelFormatPAlpha                         = $00080000; // Pre-multiplied alpha
  PixelFormatExtended                       = $00100000; // Extended color 16 bits/channel
  PixelFormatCanonical                      = $00200000;

  PixelFormatUndefined                      = 0;
  PixelFormatDontCare                       = 0;

  PixelFormat1bppIndexed                    = (1 or ( 1 shl 8) or PixelFormatIndexed or PixelFormatGDI);
  PixelFormat4bppIndexed                    = (2 or ( 4 shl 8) or PixelFormatIndexed or PixelFormatGDI);
  PixelFormat8bppIndexed                    = (3 or ( 8 shl 8) or PixelFormatIndexed or PixelFormatGDI);
  PixelFormat16bppGrayScale                 = (4 or (16 shl 8) or PixelFormatExtended);
  PixelFormat16bppRGB555                    = (5 or (16 shl 8) or PixelFormatGDI);
  PixelFormat16bppRGB565                    = (6 or (16 shl 8) or PixelFormatGDI);
  PixelFormat16bppARGB1555                  = (7 or (16 shl 8) or PixelFormatAlpha or PixelFormatGDI);
  PixelFormat24bppRGB                       = (8 or (24 shl 8) or PixelFormatGDI);
  PixelFormat32bppRGB                       = (9 or (32 shl 8) or PixelFormatGDI);
  PixelFormat32bppARGB                      = (10 or (32 shl 8) or PixelFormatAlpha or PixelFormatGDI or PixelFormatCanonical);
  PixelFormat32bppPARGB                     = (11 or (32 shl 8) or PixelFormatAlpha or PixelFormatPAlpha or PixelFormatGDI);
  PixelFormat48bppRGB                       = (12 or (48 shl 8) or PixelFormatExtended);
  PixelFormat64bppARGB                      = (13 or (64 shl 8) or PixelFormatAlpha  or PixelFormatCanonical or PixelFormatExtended);
  PixelFormat64bppPARGB                     = (14 or (64 shl 8) or PixelFormatAlpha  or PixelFormatPAlpha or PixelFormatExtended);
  PixelFormatMax                            = 15;

function GetPixelFormatSize(pixfmt: PixelFormat): UINT;
function IsIndexedPixelFormat(pixfmt: PixelFormat): Boolean;
function IsAlphaPixelFormat(pixfmt: PixelFormat): Boolean;
function IsExtendedPixelFormat(pixfmt: PixelFormat): Boolean;

//--------------------------------------------------------------------------
// Determine if the Pixel Format is Canonical format:
//   PixelFormat32bppARGB
//   PixelFormat32bppPARGB
//   PixelFormat64bppARGB
//   PixelFormat64bppPARGB
//--------------------------------------------------------------------------

function IsCanonicalPixelFormat(pixfmt: PixelFormat): Boolean;

type
  PaletteFlags = Integer;
const
  PaletteFlagsHasAlpha    = $0001;
  PaletteFlagsGrayScale   = $0002;
  PaletteFlagsHalftone    = $0004;

type
  ColorPalette = packed record
    Flags: UINT;                        // Palette flags
    Count: UINT;                        // Number of color entries
    ARGPEntries: packed array of ARGB;  // Palette color entries     // ???
  end;


//============================================================================
// *** GdiPlusImaging.h
//============================================================================

//---------------------------------------------------------------------------
// Image file format identifiers
//---------------------------------------------------------------------------
const
  ImageFormatUndefined     :TGUID = '{b96b3ca9-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatMemoryBMP     :TGUID = '{b96b3caa-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatBMP           :TGUID = '{b96b3cab-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatEMF           :TGUID = '{b96b3cac-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatWMF           :TGUID = '{b96b3cad-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatJPEG          :TGUID = '{b96b3cae-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatPNG           :TGUID = '{b96b3caf-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatGIF           :TGUID = '{b96b3cb0-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatTIFF          :TGUID = '{b96b3cb1-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatEXIF          :TGUID = '{b96b3cb2-0728-11d3-9d7b-0000f81ef32e}';
{$ifndef DCR_USE_NEW_140855}
  ImageFormatPhotoCD       :TGUID = '{b96b3cb3-0728-11d3-9d7b-0000f81ef32e}';
  ImageFormatFlashPIX      :TGUID = '{b96b3cb4-0728-11d3-9d7b-0000f81ef32e}';
{$endif}
  ImageFormatIcon          :TGUID = '{b96b3cb5-0728-11d3-9d7b-0000f81ef32e}';

//---------------------------------------------------------------------------
// Predefined multi-frame dimension IDs
//---------------------------------------------------------------------------

  FrameDimensionTime       :TGUID = '{6aedbd6d-3fb5-418a-83a6-7f45229dc872}';
  FrameDimensionResolution :TGUID = '{84236f7b-3bd3-428f-8dab-4ea1439ca315}';
  FrameDimensionPage       :TGUID = '{7462dc86-6180-4c7e-8e3f-ee7333a7a483}';

//---------------------------------------------------------------------------
// Property sets
//---------------------------------------------------------------------------

  FormatIDImageInformation :TGUID = '{e5836cbe-5eef-4f1d-acde-ae4c43b608ce}';
  FormatIDJpegAppHeaders   :TGUID = '{1c4afdcd-6177-43cf-abc7-5f51af39ee85}';

{$ifndef DCR_USE_NEW_140855}
//---------------------------------------------------------------------------
// Decoder parameter sets
//---------------------------------------------------------------------------
  DecoderTransColor        :TGUID = '{b7a98c8f-dce7-457d-bfa5-cea71bd14dd6}';
  DecoderTransRange        :TGUID = '{abeed189-d988-4d03-b425-571055c76ad1}';
  DecoderOutputChannel     :TGUID = '{2ff8f51e-724d-45fe-86ce-1777a056da60}';
  DecoderIconRes           :TGUID = '{5c656eec-e94f-45ba-a6f6-1062e85f4a7f}';
{$endif}

//---------------------------------------------------------------------------
// Encoder parameter sets
//---------------------------------------------------------------------------

  EncoderCompression       :TGUID = '{e09d739d-ccd4-44ee-8eba-3fbf8be4fc58}';
  EncoderColorDepth        :TGUID = '{66087055-ad66-4c7c-9a18-38a2310b8337}';
  EncoderScanMethod        :TGUID = '{3a4e2661-3109-4e56-8536-42c156e7dcfa}';
  EncoderVersion           :TGUID = '{24d18c76-814a-41a4-bf53-1c219cccf797}';
  EncoderRenderMethod      :TGUID = '{6d42c53a-229a-4825-8bb7-5c99e2b9a8b8}';
  EncoderQuality           :TGUID = '{1d5be4b5-fa4a-452d-9cdd-5db35105e7eb}';
  EncoderTransformation    :TGUID = '{8d0eb2d1-a58e-4ea8-aa14-108074b7b6f9}';
  EncoderLuminanceTable    :TGUID = '{edb33bce-0266-4a77-b904-27216099e717}';
  EncoderChrominanceTable  :TGUID = '{f2e455dc-09b3-4316-8260-676ada32481c}';
  EncoderSaveFlag          :TGUID = '{292266fc-ac40-47bf-8cfc-a85b89a655de}';

  CodecIImageBytes         :TGUID = '{025d1823-6c7d-447b-bbdb-a3cbc3dfa2fc}';

type
  IImageBytes = interface (IUnknown)
    ['{025D1823-6C7D-447B-BBDB-A3CBC3DFA2FC}']
    // Return total number of bytes in the IStream
    procedure CountBytes (out pcb :UINT); stdcall;
    // Locks "cb" bytes, starting from "ulOffset" in the stream, and returns the
    // pointer to the beginning of the locked memory chunk in "ppvBytes"
    procedure LockBytes (cb :UINT; ulOffset :ULONG; out ppvBytes :pointer); stdcall;
    // Unlocks "cb" bytes, pointed by "pvBytes", starting from "ulOffset" in the
    // stream
    procedure UnlockBytes (ppvBytes :pointer; cb :UINT; ulOffset :ULONG); stdcall;
  end;

//--------------------------------------------------------------------------
// ImageCodecInfo structure
//--------------------------------------------------------------------------
type
  ImageCodecInfo = packed record
    Clsid :TCLSID;
    FormatID :TGUID;
    CodecName :pwidechar;
    DllName :pwidechar;
    FormatDescription :pwidechar;
    FilenameExtension :pwidechar;
    MimeType :pwidechar;
    Flags :DWORD;
    Version :DWORD;
    SigCount :DWORD;
    SigSize :DWORD;
    SigPattern :pbyte;
    SigMask :pbyte;
  end;

//--------------------------------------------------------------------------
// Information flags about image codecs
//--------------------------------------------------------------------------
type
  ImageCodecFlags = integer;
const
  ImageCodecFlagsEncoder            = $00000001;
  ImageCodecFlagsDecoder            = $00000002;
  ImageCodecFlagsSupportBitmap      = $00000004;
  ImageCodecFlagsSupportVector      = $00000008;
  ImageCodecFlagsSeekableEncode     = $00000010;
  ImageCodecFlagsBlockingDecode     = $00000020;

  ImageCodecFlagsBuiltin            = $00010000;
  ImageCodecFlagsSystem             = $00020000;
  ImageCodecFlagsUser               = $00040000;


//---------------------------------------------------------------------------
// Access modes used when calling Image::LockBits
//---------------------------------------------------------------------------
type
  ImageLockMode = integer;
const
  ImageLockModeRead         = $0001;
  ImageLockModeWrite        = $0002;
  ImageLockModeUserInputBuf = $0004;


//---------------------------------------------------------------------------
// Information about image pixel data
//---------------------------------------------------------------------------
type
  BitmapData = packed record
    Width  :UINT;
    Height :UINT;
    Stride :integer;
    PixelFormat :PixelFormat;
    Scan0 :pointer;
    Reserved :pinteger;
  end;

//---------------------------------------------------------------------------
// Image flags
//---------------------------------------------------------------------------
type
  ImageFlags = integer;
const
  ImageFlagsNone                = 0;

  // Low-word: shared with SINKFLAG_x

  ImageFlagsScalable            = $0001;
  ImageFlagsHasAlpha            = $0002;
  ImageFlagsHasTranslucent      = $0004;
  ImageFlagsPartiallyScalable   = $0008;

  // Low-word: color space definition

  ImageFlagsColorSpaceRGB       = $0010;
  ImageFlagsColorSpaceCMYK      = $0020;
  ImageFlagsColorSpaceGRAY      = $0040;
  ImageFlagsColorSpaceYCBCR     = $0080;
  ImageFlagsColorSpaceYCCK      = $0100;

  // Low-word: image size info

  ImageFlagsHasRealDPI          = $1000;
  ImageFlagsHasRealPixelSize    = $2000;

  // High-word

  ImageFlagsReadOnly            = $00010000;
  ImageFlagsCaching             = $00020000;

type
  RotateFlipType = integer;
const
  RotateNoneFlipNone = 0;
  Rotate90FlipNone   = 1;
  Rotate180FlipNone  = 2;
  Rotate270FlipNone  = 3;

  RotateNoneFlipX    = 4;
  Rotate90FlipX      = 5;
  Rotate180FlipX     = 6;
  Rotate270FlipX     = 7;

  RotateNoneFlipY    = Rotate180FlipX;
  Rotate90FlipY      = Rotate270FlipX;
  Rotate180FlipY     = RotateNoneFlipX;
  Rotate270FlipY     = Rotate90FlipX;

  RotateNoneFlipXY   = Rotate180FlipNone;
  Rotate90FlipXY     = Rotate270FlipNone;
  Rotate180FlipXY    = RotateNoneFlipNone;
  Rotate270FlipXY    = Rotate90FlipNone;


//---------------------------------------------------------------------------
// Encoder Parameter structure
//---------------------------------------------------------------------------
type
  PEncoderParameter = ^EncoderParameter;
  EncoderParameter = packed record
    Guid :TGUID;            // GUID of the parameter
    NumberOfValues :ULONG;  // Number of the parameter values
    Type_ :ULONG;           // Value type, like ValueTypeLONG  etc.
    Value :pointer;         // A pointer to the parameter values
  end;

//---------------------------------------------------------------------------
// Encoder Parameters structure
//---------------------------------------------------------------------------
type
  PEncoderParameters = ^EncoderParameters;
  EncoderParameters = packed record
    Count :UINT;                // Number of parameters in this structure
    Parameter :array [0..0] of EncoderParameter;  // Parameter values
  end;

//---------------------------------------------------------------------------
// Property Item
//---------------------------------------------------------------------------
type
  PropertyItem = packed record
    id     :PROPID;   // ID of this property
    length :ULONG;    // Length of the property value, in bytes
    type_  :WORD;     // Type of the value, as one of TAG_TYPE_XXX defined above
    value  :pointer;  // property value
  end;

//---------------------------------------------------------------------------
// Image property types
//---------------------------------------------------------------------------
const
  PropertyTagTypeByte       = 1;
  PropertyTagTypeASCII      = 2;
  PropertyTagTypeShort      = 3;
  PropertyTagTypeLong       = 4;
  PropertyTagTypeRational   = 5;
  PropertyTagTypeUndefined  = 7;
  PropertyTagTypeSLONG      = 9;
  PropertyTagTypeSRational  = 10;

//---------------------------------------------------------------------------
// Image property ID tags
//---------------------------------------------------------------------------
const
  PropertyTagExifIFD                        = $8769;
  PropertyTagGpsIFD                         = $8825;

  PropertyTagNewSubfileType                 = $00FE;
  PropertyTagSubfileType                    = $00FF;
  PropertyTagImageWidth                     = $0100;
  PropertyTagImageHeight                    = $0101;
  PropertyTagBitsPerSample                  = $0102;
  PropertyTagCompression                    = $0103;
  PropertyTagPhotometricInterp              = $0106;
  PropertyTagThreshHolding                  = $0107;
  PropertyTagCellWidth                      = $0108;
  PropertyTagCellHeight                     = $0109;
  PropertyTagFillOrder                      = $010A;
  PropertyTagDocumentName                   = $010D;
  PropertyTagImageDescription               = $010E;
  PropertyTagEquipMake                      = $010F;
  PropertyTagEquipModel                     = $0110;
  PropertyTagStripOffsets                   = $0111;
  PropertyTagOrientation                    = $0112;
  PropertyTagSamplesPerPixel                = $0115;
  PropertyTagRowsPerStrip                   = $0116;
  PropertyTagStripBytesCount                = $0117;
  PropertyTagMinSampleValue                 = $0118;
  PropertyTagMaxSampleValue                 = $0119;
  PropertyTagXResolution                    = $011A;  // Image resolution in width direction
  PropertyTagYResolution                    = $011B;  // Image resolution in height direction
  PropertyTagPlanarConfig                   = $011C;  // Image data arrangement
  PropertyTagPageName                       = $011D;
  PropertyTagXPosition                      = $011E;
  PropertyTagYPosition                      = $011F;
  PropertyTagFreeOffset                     = $0120;
  PropertyTagFreeByteCounts                 = $0121;
  PropertyTagGrayResponseUnit               = $0122;
  PropertyTagGrayResponseCurve              = $0123;
  PropertyTagT4Option                       = $0124;
  PropertyTagT6Option                       = $0125;
  PropertyTagResolutionUnit                 = $0128;  // Unit of X and Y resolution
  PropertyTagPageNumber                     = $0129;
  PropertyTagTransferFuncition              = $012D;
  PropertyTagSoftwareUsed                   = $0131;
  PropertyTagDateTime                       = $0132;
  PropertyTagArtist                         = $013B;
  PropertyTagHostComputer                   = $013C;
  PropertyTagPredictor                      = $013D;
  PropertyTagWhitePoint                     = $013E;
  PropertyTagPrimaryChromaticities          = $013F;
  PropertyTagColorMap                       = $0140;
  PropertyTagHalftoneHints                  = $0141;
  PropertyTagTileWidth                      = $0142;
  PropertyTagTileLength                     = $0143;
  PropertyTagTileOffset                     = $0144;
  PropertyTagTileByteCounts                 = $0145;
  PropertyTagInkSet                         = $014C;
  PropertyTagInkNames                       = $014D;
  PropertyTagNumberOfInks                   = $014E;
  PropertyTagDotRange                       = $0150;
  PropertyTagTargetPrinter                  = $0151;
  PropertyTagExtraSamples                   = $0152;
  PropertyTagSampleFormat                   = $0153;
  PropertyTagSMinSampleValue                = $0154;
  PropertyTagSMaxSampleValue                = $0155;
  PropertyTagTransferRange                  = $0156;

  PropertyTagJPEGProc                       = $0200;
  PropertyTagJPEGInterFormat                = $0201;
  PropertyTagJPEGInterLength                = $0202;
  PropertyTagJPEGRestartInterval            = $0203;
  PropertyTagJPEGLosslessPredictors         = $0205;
  PropertyTagJPEGPointTransforms            = $0206;
  PropertyTagJPEGQTables                    = $0207;
  PropertyTagJPEGDCTables                   = $0208;
  PropertyTagJPEGACTables                   = $0209;

  PropertyTagYCbCrCoefficients              = $0211;
  PropertyTagYCbCrSubsampling               = $0212;
  PropertyTagYCbCrPositioning               = $0213;
  PropertyTagREFBlackWhite                  = $0214;

  PropertyTagICCProfile                     = $8773;  // This TAG is defined by ICC
                                                      // for embedded ICC in TIFF
  PropertyTagGamma                          = $0301;
  PropertyTagICCProfileDescriptor           = $0302;
  PropertyTagSRGBRenderingIntent            = $0303;

  PropertyTagImageTitle                     = $0320;
  PropertyTagCopyright                      = $8298;

// Extra TAGs (Like Adobe Image Information tags etc.)

  PropertyTagResolutionXUnit                = $5001;
  PropertyTagResolutionYUnit                = $5002;
  PropertyTagResolutionXLengthUnit          = $5003;
  PropertyTagResolutionYLengthUnit          = $5004;
  PropertyTagPrintFlags                     = $5005;
  PropertyTagPrintFlagsVersion              = $5006;
  PropertyTagPrintFlagsCrop                 = $5007;
  PropertyTagPrintFlagsBleedWidth           = $5008;
  PropertyTagPrintFlagsBleedWidthScale      = $5009;
  PropertyTagHalftoneLPI                    = $500A;
  PropertyTagHalftoneLPIUnit                = $500B;
  PropertyTagHalftoneDegree                 = $500C;
  PropertyTagHalftoneShape                  = $500D;
  PropertyTagHalftoneMisc                   = $500E;
  PropertyTagHalftoneScreen                 = $500F;
  PropertyTagJPEGQuality                    = $5010;
  PropertyTagGridSize                       = $5011;
  PropertyTagThumbnailFormat                = $5012;  // 1 = JPEG, 0 = RAW RGB
  PropertyTagThumbnailWidth                 = $5013;
  PropertyTagThumbnailHeight                = $5014;
  PropertyTagThumbnailColorDepth            = $5015;
  PropertyTagThumbnailPlanes                = $5016;
  PropertyTagThumbnailRawBytes              = $5017;
  PropertyTagThumbnailSize                  = $5018;
  PropertyTagThumbnailCompressedSize        = $5019;
  PropertyTagColorTransferFunction          = $501A;
  PropertyTagThumbnailData                  = $501B;  // RAW thumbnail bits in
                                                      // JPEG format or RGB format
                                                      // depends on
                                                      // PropertyTagThumbnailFormat

// Thumbnail related TAGs

  PropertyTagThumbnailImageWidth            = $5020;  // Thumbnail width
  PropertyTagThumbnailImageHeight           = $5021;  // Thumbnail height
  PropertyTagThumbnailBitsPerSample         = $5022;  // Number of bits per
                                                      // component
  PropertyTagThumbnailCompression           = $5023;  // Compression Scheme
  PropertyTagThumbnailPhotometricInterp     = $5024;  // Pixel composition
  PropertyTagThumbnailImageDescription      = $5025;  // Image Tile
  PropertyTagThumbnailEquipMake             = $5026;  // Manufacturer of Image
                                                      // Input equipment
  PropertyTagThumbnailEquipModel            = $5027;  // Model of Image input
                                                      // equipment
  PropertyTagThumbnailStripOffsets          = $5028;  // Image data location
  PropertyTagThumbnailOrientation           = $5029;  // Orientation of image
  PropertyTagThumbnailSamplesPerPixel       = $502A;  // Number of components
  PropertyTagThumbnailRowsPerStrip          = $502B;  // Number of rows per strip
  PropertyTagThumbnailStripBytesCount       = $502C;  // Bytes per compressed
                                                      // strip
  PropertyTagThumbnailResolutionX           = $502D;  // Resolution in width
                                                      // direction
  PropertyTagThumbnailResolutionY           = $502E;  // Resolution in height
                                                      // direction
  PropertyTagThumbnailPlanarConfig          = $502F;  // Image data arrangement
  PropertyTagThumbnailResolutionUnit        = $5030;  // Unit of X and Y
                                                      // Resolution
  PropertyTagThumbnailTransferFunction      = $5031;  // Transfer function
  PropertyTagThumbnailSoftwareUsed          = $5032;  // Software used
  PropertyTagThumbnailDateTime              = $5033;  // File change date and
                                                      // time
  PropertyTagThumbnailArtist                = $5034;  // Person who created the
                                                      // image
  PropertyTagThumbnailWhitePoint            = $5035;  // White point chromaticity
  PropertyTagThumbnailPrimaryChromaticities = $5036;
                                                      // Chromaticities of
                                                      // primaries
  PropertyTagThumbnailYCbCrCoefficients     = $5037;  // Color space transforma-
                                                      // tion coefficients
  PropertyTagThumbnailYCbCrSubsampling      = $5038;  // Subsampling ratio of Y
                                                      // to C
  PropertyTagThumbnailYCbCrPositioning      = $5039;  // Y and C position
  PropertyTagThumbnailRefBlackWhite         = $503A;  // Pair of black and white
                                                      // reference values
  PropertyTagThumbnailCopyRight             = $503B;  // CopyRight holder

  PropertyTagLuminanceTable                 = $5090;
  PropertyTagChrominanceTable               = $5091;

  PropertyTagFrameDelay                     = $5100;
  PropertyTagLoopCount                      = $5101;

  PropertyTagPixelUnit                      = $5110;  // Unit specifier for pixel/unit
  PropertyTagPixelPerUnitX                  = $5111;  // Pixels per unit in X
  PropertyTagPixelPerUnitY                  = $5112;  // Pixels per unit in Y
  PropertyTagPaletteHistogram               = $5113;  // Palette histogram

// EXIF specific tag

  PropertyTagExifExposureTime               = $829A;
  PropertyTagExifFNumber                    = $829D;

  PropertyTagExifExposureProg               = $8822;
  PropertyTagExifSpectralSense              = $8824;
  PropertyTagExifISOSpeed                   = $8827;
  PropertyTagExifOECF                       = $8828;

  PropertyTagExifVer                        = $9000;
  PropertyTagExifDTOrig                     = $9003;  // Date & time of original
  PropertyTagExifDTDigitized                = $9004;  // Date & time of digital data generation

  PropertyTagExifCompConfig                 = $9101;
  PropertyTagExifCompBPP                    = $9102;

  PropertyTagExifShutterSpeed               = $9201;
  PropertyTagExifAperture                   = $9202;
  PropertyTagExifBrightness                 = $9203;
  PropertyTagExifExposureBias               = $9204;
  PropertyTagExifMaxAperture                = $9205;
  PropertyTagExifSubjectDist                = $9206;
  PropertyTagExifMeteringMode               = $9207;
  PropertyTagExifLightSource                = $9208;
  PropertyTagExifFlash                      = $9209;
  PropertyTagExifFocalLength                = $920A;
  PropertyTagExifMakerNote                  = $927C;
  PropertyTagExifUserComment                = $9286;
  PropertyTagExifDTSubsec                   = $9290;  // Date & Time subseconds
  PropertyTagExifDTOrigSS                   = $9291;  // Date & Time original subseconds
  PropertyTagExifDTDigSS                    = $9292;  // Date & TIme digitized subseconds

  PropertyTagExifFPXVer                     = $A000;
  PropertyTagExifColorSpace                 = $A001;
  PropertyTagExifPixXDim                    = $A002;
  PropertyTagExifPixYDim                    = $A003;
  PropertyTagExifRelatedWav                 = $A004;  // related sound file
  PropertyTagExifInterop                    = $A005;
  PropertyTagExifFlashEnergy                = $A20B;
  PropertyTagExifSpatialFR                  = $A20C;  // Spatial Frequency Response
  PropertyTagExifFocalXRes                  = $A20E;  // Focal Plane X Resolution
  PropertyTagExifFocalYRes                  = $A20F;  // Focal Plane Y Resolution
  PropertyTagExifFocalResUnit               = $A210;  // Focal Plane Resolution Unit
  PropertyTagExifSubjectLoc                 = $A214;
  PropertyTagExifExposureIndex              = $A215;
  PropertyTagExifSensingMethod              = $A217;
  PropertyTagExifFileSource                 = $A300;
  PropertyTagExifSceneType                  = $A301;
  PropertyTagExifCfaPattern                 = $A302;

  PropertyTagGpsVer                         = $0000;
  PropertyTagGpsLatitudeRef                 = $0001;
  PropertyTagGpsLatitude                    = $0002;
  PropertyTagGpsLongitudeRef                = $0003;
  PropertyTagGpsLongitude                   = $0004;
  PropertyTagGpsAltitudeRef                 = $0005;
  PropertyTagGpsAltitude                    = $0006;
  PropertyTagGpsGpsTime                     = $0007;
  PropertyTagGpsGpsSatellites               = $0008;
  PropertyTagGpsGpsStatus                   = $0009;
  PropertyTagGpsGpsMeasureMode              = $000A;
  PropertyTagGpsGpsDop                      = $000B;  // Measurement precision
  PropertyTagGpsSpeedRef                    = $000C;
  PropertyTagGpsSpeed                       = $000D;
  PropertyTagGpsTrackRef                    = $000E;
  PropertyTagGpsTrack                       = $000F;
  PropertyTagGpsImgDirRef                   = $0010;
  PropertyTagGpsImgDir                      = $0011;
  PropertyTagGpsMapDatum                    = $0012;
  PropertyTagGpsDestLatRef                  = $0013;
  PropertyTagGpsDestLat                     = $0014;
  PropertyTagGpsDestLongRef                 = $0015;
  PropertyTagGpsDestLong                    = $0016;
  PropertyTagGpsDestBearRef                 = $0017;
  PropertyTagGpsDestBear                    = $0018;
  PropertyTagGpsDestDistRef                 = $0019;
  PropertyTagGpsDestDist                    = $001A;


//============================================================================
// *** GdiPlusColor.h
//============================================================================

//----------------------------------------------------------------------------
// Color mode
//----------------------------------------------------------------------------

type
  ColorMode = integer;
const
  ColorModeARGB32 = 0;
  ColorModeARGB64 = 1;

//----------------------------------------------------------------------------
// Color Channel flags
//----------------------------------------------------------------------------

type
  ColorChannelFlags = integer;
const
  ColorChannelFlagsC    = 0;
  ColorChannelFlagsM    = 1;
  ColorChannelFlagsY    = 2;
  ColorChannelFlagsK    = 3;
  ColorChannelFlagsLast = 4;

//----------------------------------------------------------------------------
// Color
//----------------------------------------------------------------------------

const
  ColorAliceBlue            = $FFF0F8FF;
  ColorAntiqueWhite         = $FFFAEBD7;
  ColorAqua                 = $FF00FFFF;
  ColorAquamarine           = $FF7FFFD4;
  ColorAzure                = $FFF0FFFF;
  ColorBeige                = $FFF5F5DC;
  ColorBisque               = $FFFFE4C4;
  ColorBlack                = $FF000000;
  ColorBlanchedAlmond       = $FFFFEBCD;
  ColorBlue                 = $FF0000FF;
  ColorBlueViolet           = $FF8A2BE2;
  ColorBrown                = $FFA52A2A;
  ColorBurlyWood            = $FFDEB887;
  ColorCadetBlue            = $FF5F9EA0;
  ColorChartreuse           = $FF7FFF00;
  ColorChocolate            = $FFD2691E;
  ColorCoral                = $FFFF7F50;
  ColorCornflowerBlue       = $FF6495ED;
  ColorCornsilk             = $FFFFF8DC;
  ColorCrimson              = $FFDC143C;
  ColorCyan                 = $FF00FFFF;
  ColorDarkBlue             = $FF00008B;
  ColorDarkCyan             = $FF008B8B;
  ColorDarkGoldenrod        = $FFB8860B;
  ColorDarkGray             = $FFA9A9A9;
  ColorDarkGreen            = $FF006400;
  ColorDarkKhaki            = $FFBDB76B;
  ColorDarkMagenta          = $FF8B008B;
  ColorDarkOliveGreen       = $FF556B2F;
  ColorDarkOrange           = $FFFF8C00;
  ColorDarkOrchid           = $FF9932CC;
  ColorDarkRed              = $FF8B0000;
  ColorDarkSalmon           = $FFE9967A;
  ColorDarkSeaGreen         = $FF8FBC8B;
  ColorDarkSlateBlue        = $FF483D8B;
  ColorDarkSlateGray        = $FF2F4F4F;
  ColorDarkTurquoise        = $FF00CED1;
  ColorDarkViolet           = $FF9400D3;
  ColorDeepPink             = $FFFF1493;
  ColorDeepSkyBlue          = $FF00BFFF;
  ColorDimGray              = $FF696969;
  ColorDodgerBlue           = $FF1E90FF;
  ColorFirebrick            = $FFB22222;
  ColorFloralWhite          = $FFFFFAF0;
  ColorForestGreen          = $FF228B22;
  ColorFuchsia              = $FFFF00FF;
  ColorGainsboro            = $FFDCDCDC;
  ColorGhostWhite           = $FFF8F8FF;
  ColorGold                 = $FFFFD700;
  ColorGoldenrod            = $FFDAA520;
  ColorGray                 = $FF808080;
  ColorGreen                = $FF008000;
  ColorGreenYellow          = $FFADFF2F;
  ColorHoneydew             = $FFF0FFF0;
  ColorHotPink              = $FFFF69B4;
  ColorIndianRed            = $FFCD5C5C;
  ColorIndigo               = $FF4B0082;
  ColorIvory                = $FFFFFFF0;
  ColorKhaki                = $FFF0E68C;
  ColorLavender             = $FFE6E6FA;
  ColorLavenderBlush        = $FFFFF0F5;
  ColorLawnGreen            = $FF7CFC00;
  ColorLemonChiffon         = $FFFFFACD;
  ColorLightBlue            = $FFADD8E6;
  ColorLightCoral           = $FFF08080;
  ColorLightCyan            = $FFE0FFFF;
  ColorLightGoldenrodYellow = $FFFAFAD2;
  ColorLightGray            = $FFD3D3D3;
  ColorLightGreen           = $FF90EE90;
  ColorLightPink            = $FFFFB6C1;
  ColorLightSalmon          = $FFFFA07A;
  ColorLightSeaGreen        = $FF20B2AA;
  ColorLightSkyBlue         = $FF87CEFA;
  ColorLightSlateGray       = $FF778899;
  ColorLightSteelBlue       = $FFB0C4DE;
  ColorLightYellow          = $FFFFFFE0;
  ColorLime                 = $FF00FF00;
  ColorLimeGreen            = $FF32CD32;
  ColorLinen                = $FFFAF0E6;
  ColorMagenta              = $FFFF00FF;
  ColorMaroon               = $FF800000;
  ColorMediumAquamarine     = $FF66CDAA;
  ColorMediumBlue           = $FF0000CD;
  ColorMediumOrchid         = $FFBA55D3;
  ColorMediumPurple         = $FF9370DB;
  ColorMediumSeaGreen       = $FF3CB371;
  ColorMediumSlateBlue      = $FF7B68EE;
  ColorMediumSpringGreen    = $FF00FA9A;
  ColorMediumTurquoise      = $FF48D1CC;
  ColorMediumVioletRed      = $FFC71585;
  ColorMidnightBlue         = $FF191970;
  ColorMintCream            = $FFF5FFFA;
  ColorMistyRose            = $FFFFE4E1;
  ColorMoccasin             = $FFFFE4B5;
  ColorNavajoWhite          = $FFFFDEAD;
  ColorNavy                 = $FF000080;
  ColorOldLace              = $FFFDF5E6;
  ColorOlive                = $FF808000;
  ColorOliveDrab            = $FF6B8E23;
  ColorOrange               = $FFFFA500;
  ColorOrangeRed            = $FFFF4500;
  ColorOrchid               = $FFDA70D6;
  ColorPaleGoldenrod        = $FFEEE8AA;
  ColorPaleGreen            = $FF98FB98;
  ColorPaleTurquoise        = $FFAFEEEE;
  ColorPaleVioletRed        = $FFDB7093;
  ColorPapayaWhip           = $FFFFEFD5;
  ColorPeachPuff            = $FFFFDAB9;
  ColorPeru                 = $FFCD853F;
  ColorPink                 = $FFFFC0CB;
  ColorPlum                 = $FFDDA0DD;
  ColorPowderBlue           = $FFB0E0E6;
  ColorPurple               = $FF800080;
  ColorRed                  = $FFFF0000;
  ColorRosyBrown            = $FFBC8F8F;
  ColorRoyalBlue            = $FF4169E1;
  ColorSaddleBrown          = $FF8B4513;
  ColorSalmon               = $FFFA8072;
  ColorSandyBrown           = $FFF4A460;
  ColorSeaGreen             = $FF2E8B57;
  ColorSeaShell             = $FFFFF5EE;
  ColorSienna               = $FFA0522D;
  ColorSilver               = $FFC0C0C0;
  ColorSkyBlue              = $FF87CEEB;
  ColorSlateBlue            = $FF6A5ACD;
  ColorSlateGray            = $FF708090;
  ColorSnow                 = $FFFFFAFA;
  ColorSpringGreen          = $FF00FF7F;
  ColorSteelBlue            = $FF4682B4;
  ColorTan                  = $FFD2B48C;
  ColorTeal                 = $FF008080;
  ColorThistle              = $FFD8BFD8;
  ColorTomato               = $FFFF6347;
  ColorTransparent          = $00FFFFFF;
  ColorTurquoise            = $FF40E0D0;
  ColorViolet               = $FFEE82EE;
  ColorWheat                = $FFF5DEB3;
  ColorWhite                = $FFFFFFFF;
  ColorWhiteSmoke           = $FFF5F5F5;
  ColorYellow               = $FFFFFF00;
  ColorYellowGreen          = $FF9ACD32;

const  // Shift count and bit mask for A, R, G, B components
  AlphaShift  = 24;
  RedShift    = 16;
  GreenShift  = 8;
  BlueShift   = 0;

const
  AlphaMask   = $ff000000;
  RedMask     = $00ff0000;
  GreenMask   = $0000ff00;
  BlueMask    = $000000ff;

type
  PColor = ^Color;
  Color = object
    public //protected
      Argb :ARGB;
    public
      procedure New; overload;
      procedure New (r,g,b :byte); overload;
      procedure New (a,r,g,b :byte); overload;
      procedure New (Aargb :ARGB); overload;
      function  GetAlpha :byte;
      property  GetA :byte  read GetAlpha;
      function  GetRed :byte;
      property  GetR :byte  read GetRed;
      function  GetGreen :byte;
      property  GetG :byte  read GetGreen;
      function  GetBlue :byte;
      property  GetB :byte  read GetBlue;
      property  GetValue :ARGB  read Argb;
      property  SetValue :ARGB  write Argb;
      procedure SetFromCOLORREF (rgb :COLORREF);
      function  ToCOLORREF :COLORREF;
      class function MakeARGB (a,r,g,b :byte) :ARGB;
  end;


//============================================================================
// *** GdiPlusColorMatrix.h
//============================================================================

//----------------------------------------------------------------------------
// Color matrix
//----------------------------------------------------------------------------

type
  PColorMatrix = ^ColorMatrix;
  ColorMatrix = packed record
    m :array [0..4,0..4] of single;
  end;

//----------------------------------------------------------------------------
// Color Matrix flags
//----------------------------------------------------------------------------

type
  ColorMatrixFlags = integer;
const
  ColorMatrixFlagsDefault   = 0;
  ColorMatrixFlagsSkipGrays = 1;
  ColorMatrixFlagsAltGray   = 2;


//----------------------------------------------------------------------------
// Color Adjust Type
//----------------------------------------------------------------------------

type
  ColorAdjustType = integer;
const
  ColorAdjustTypeDefault = 0;
  ColorAdjustTypeBitmap  = 1;
  ColorAdjustTypeBrush   = 2;
  ColorAdjustTypePen     = 3;
  ColorAdjustTypeText    = 4;
  ColorAdjustTypeCount   = 5;
  ColorAdjustTypeAny     = 6;  // Reserved

//----------------------------------------------------------------------------
// Color Map
//----------------------------------------------------------------------------

type
  PColorMap = ^ColorMap;
  ColorMap = packed record
    oldColor,newColor :Color;
  end;


//============================================================================
// *** GdiPlusMetaHeader.h
//============================================================================

type
  PENHMETAHEADER3 = ^ENHMETAHEADER3;
  ENHMETAHEADER3 = packed record
    iType          :DWORD;        // Record type EMR_HEADER
    nSize          :DWORD;        // Record size in bytes.  This may be greater
                                  // than the sizeof(ENHMETAHEADER).
    rclBounds      :RECT;         // Inclusive-inclusive bounds in device units
    rclFrame       :RECT;         // Inclusive-inclusive Picture Frame of metafile in .01 mm units
    dSignature     :DWORD;        // Signature.  Must be ENHMETA_SIGNATURE.
    nVersion       :DWORD;        // Version number
    nBytes         :DWORD;        // Size of the metafile in bytes
    nRecords       :DWORD;        // Number of records in the metafile
    nHandles       :WORD;         // Number of handles in the handle table
                                  // Handle index zero is reserved.
    sReserved      :WORD;         // Reserved.  Must be zero.
    nDescription   :DWORD;        // Number of chars in the unicode description string
                                  // This is 0 if there is no description string
    offDescription :DWORD;        // Offset to the metafile description record.
                                  // This is 0 if there is no description string
    nPalEntries    :DWORD;        // Number of entries in the metafile palette.
    szlDevice      :TSIZE;        // Size of the reference device in pels
    szlMillimeters :TSIZE;        // Size of the reference device in millimeters
  end;

// Placeable WMFs

// Placeable Metafiles were created as a non-standard way of specifying how
// a metafile is mapped and scaled on an output device.
// Placeable metafiles are quite wide-spread, but not directly supported by
// the Windows API. To playback a placeable metafile using the Windows API,
// you will first need to strip the placeable metafile header from the file.
// This is typically performed by copying the metafile to a temporary file
// starting at file offset 22 (0x16). The contents of the temporary file may
// then be used as input to the Windows GetMetaFile(), PlayMetaFile(),
// CopyMetaFile(), etc. GDI functions.

// Each placeable metafile begins with a 22-byte header,
//  followed by a standard metafile:

//#include <pshpack2.h>   // set structure packing to 2

type
  PWMFRect16 = packed record
    Left,Top,Right,Bottom :INT16;
  end;

type
  WmfPlaceableFileHeader = packed record
    Key         :UINT32;          // GDIP_WMF_ALDUSKEY
    Hmf         :INT16;           // Metafile HANDLE number (always 0)
    BoundingBox :PWMFRect16;      // Coordinates in metafile units
    Inch        :INT16;           // Number of metafile units per inch
    Reserved    :UINT32;          // Reserved (always 0)
    Checksum    :INT16;           // Checksum value for previous 10 WORDs
  end;

//#include <poppack.h>

// Key contains a special identification value that indicates the presence
// of a placeable metafile header and is always 0x9AC6CDD7.

// Handle is used to stored the handle of the metafile in memory. When written
// to disk, this field is not used and will always contains the value 0.

// Left, Top, Right, and Bottom contain the coordinates of the upper-left
// and lower-right corners of the image on the output device. These are
// measured in twips.

// A twip (meaning "twentieth of a point") is the logical unit of measurement
// used in Windows Metafiles. A twip is equal to 1/1440 of an inch. Thus 720
// twips equal 1/2 inch, while 32,768 twips is 22.75 inches.

// Inch contains the number of twips per inch used to represent the image.
// Normally, there are 1440 twips per inch; however, this number may be
// changed to scale the image. A value of 720 indicates that the image is
// double its normal size, or scaled to a factor of 2:1. A value of 360
// indicates a scale of 4:1, while a value of 2880 indicates that the image
// is scaled down in size by a factor of two. A value of 1440 indicates
// a 1:1 scale ratio.

// Reserved is not used and is always set to 0.

// Checksum contains a checksum value for the previous 10 WORDs in the header.
// This value can be used in an attempt to detect if the metafile has become
// corrupted. The checksum is calculated by XORing each WORD value to an
// initial value of 0.

// If the metafile was recorded with a reference Hdc that was a display.
const
  GDIP_EMFPLUSFLAGS_DISPLAY = $00000001;

type
  MetaFileHeader = object
    Type_        :MetafileType;
    Size         :UINT;                // Size of the metafile (in bytes)
    Version      :UINT;                // EMF+, EMF, or WMF version
    EmfPlusFlags :UINT;
    DpiX         :single;
    DpiY         :single;
    X            :integer;             // Bounds in device units
    Y            :integer;
    Width        :integer;
    Height       :integer;
    H :packed record                   // Only way to make a union inside an object ???????
    case integer of
      0: (WmfHeader :METAHEADER);
      1: (EmfHeader :ENHMETAHEADER3);
    end;
    EmfPlusHeaderSize :integer;        // size of the EMF+ header in file
    LogicalDpiX       :integer;        // Logical Dpi of reference Hdc
    LogicalDpiY       :integer;        // usually valid only for EMF+ files}
    property GetType :MetafileType  read Type_;
    property GetMetafileSize :UINT  read Size;
    property GetVersion :UINT  read Version;
    property GetEmfPlusFlags :UINT  read EmfPlusFlags;
    property GetDpiX :single read DpiX;
    property GetDpiY :single read DpiY;
    procedure GetBounds (var rect :Rect);
    function IsWmf :BOOL;
    function IsWmfAldus :BOOL;
    function IsEmf :BOOL;
    function IsEmfOrEmfPlus :BOOL;
    function IsEmfPlus :BOOL;
    function IsEmfPlusDual :BOOL;
    function IsEmfPlusOnly :BOOL;
    function IsDisplay :BOOL;
    function GetWmfHeader :PMETAHEADER;
    function GetEmfHeader :PENHMETAHEADER3;
  end;


//============================================================================
// *** GdiPlusGpStubs.h
//============================================================================

//---------------------------------------------------------------------------
// GDI+ classes for forward reference
//---------------------------------------------------------------------------

type

  Graphics = class;
  Pen = class;
  Brush = class;
  Matrix = class;
  Bitmap = class;
  Metafile = class;
  GraphicsPath = class;
//  PathIterator = class;  ???
  Region = class;
  Image = class;
  TextureBrush = class;
  HatchBrush = class;
  SolidBrush = class;
  LinearGradientBrush = class;
  PathGradientBrush = class;
  Font = class;
  FontFamily = class;
  FontCollection = class;
  InstalledFontCollection = class;
  PrivateFontCollection = class;
  ImageAttributes = class;
  CachedBitmap = class;

//---------------------------------------------------------------------------
// Internal GDI+ classes for internal type checking
//---------------------------------------------------------------------------

  GpGraphics = class end;

  GpBrush = class end;
  GpTexture = class (GpBrush) end;
  GpSolidFill = class (GpBrush) end;
  GpLineGradient = class (GpBrush) end;
  GpPathGradient = class (GpBrush) end;
  GpHatch = class (GpBrush) end;

  GpPen = class end;
  GpCustomLineCap = class end;
  GpAdjustableArrowCap = class (GpCustomLineCap) end;

  GpImage = class end;
  GpBitmap = class (GpImage) end;
  GpMetafile = class (GpImage) end;
  GpImageAttributes = class end;

  GpPath = class end;
  GpRegion = class end;
  GpPathIterator = class end;

  GpFontFamily = class end;
  GpFont = class end;
  GpStringFormat = class end;
  GpFontCollection = class end;
  GpInstalledFontCollection = class (GpFontCollection) end;
  GpPrivateFontCollection = class (GpFontCollection) end;

  GpCachedBitmap = class end;

  GpStatus = Status;
  GpFillMode = FillMode;
  GpWrapMode = WrapMode;
  GpUnit = GdipUnit;
  GpCoordinateSpace = CoordinateSpace;
  GpPointF = PointF;                             // rec
  GpPoint = Point;                               // rec
  GpRectF = RectF;                               // rec
  GpRect = Rect;                                 // rec
  GpSizeF = SizeF;                               // rec (Where's GpSize = Size ?)
  GpSize = Size;                                 // Addon (since it wasn't there)
  GpColor = Color;                               // Addon
  GpHatchStyle = HatchStyle;
  GpDashStyle = DashStyle;
  GpLineCap = LineCap;
  GpDashCap = DashCap;


  GpPenAlignment = PenAlignment;

  GpLineJoin = LineJoin;
  GpPenType = PenType;

  GpMatrix = Matrix;                             // class
  GpBrushType = BrushType;
  GpMatrixOrder = MatrixOrder;
  GpFlushIntention = FlushIntention;
  GpPathData = PathData;                         // rec


//============================================================================
// *** GdiPlusMatrix.h
//============================================================================

Matrix = class(GdiplusBase)
  protected
    nativeMatrix: GpMatrix;
    lastResult: Status;
    constructor CreateNative (ANativeMatrix: GpMatrix);
    procedure SetNativeMatrix(ANativeMatrix: GpMatrix);
    function SetStatus(AStatus: Status): Status;
  public
    // Default constructor is set to identity matrix.
    constructor Create; reintroduce; overload;
    constructor Create (m11, m12, m21, m22, dx, dy: single); reintroduce; overload;
    constructor Create(var ARect: RectF; var dstplg: PointF); reintroduce; overload;
    constructor Create(var ARect: Rect; var dstplg: Point); reintroduce; overload;
    destructor Destroy; override;
    function Clone: Matrix;
    function GetElements(m: array of single): Status;
    function SetElements(m11, m12, m21, m22, dx, dy: single): Status;
    function OffsetX: single;
    function OffsetY: single;
    function Reset: Status;
    function Multiply(AMatrix: Matrix; order: MatrixOrder = MatrixOrderPrepend): Status;
    function Translate(offsetX, offsetY: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function Scale(scaleX, scaleY: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function Rotate(angle: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function RotateAt(angle: single; var center: pointF; order: MatrixOrder = MatrixOrderPrepend): Status;
    function Shear(shearX, shearY: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function Invert: Status;
    // float version
    function TransformPoints(pts: array of PointF; count: Integer = 1): Status; overload;
    function TransformPoints(pts: array of Point; count: Integer = 1): Status; overload;
    function TransformVectors(pts: array of PointF; count: Integer = 1): Status; overload;
    function TransformVectors(pts: array of Point; count: Integer = 1): Status; overload;
    function IsInvertible: Boolean;
    function IsIdentity: Boolean;
    function Equals(AMatrix: Matrix): Boolean;
    function GetLastStatus: Status;
  end;


//============================================================================
// *** GdiPlusHeaders.h
//============================================================================

Region = class(GdiPlusBase)
  protected
    nativeRegion: GpRegion;
    lastResult: Status;

    function SetStatus(AStatus: Status): Status;
    constructor CreateNative(nativeRegion: GpRegion);
    procedure SetNativeRegion(ANativeRegion: GpRegion);
  public
    constructor Create; reintroduce; overload;
    constructor Create (var ARect: RectF); reintroduce; overload;
    constructor Create (var ARect: Rect); reintroduce; overload;
    constructor Create (var path: GraphicsPath); reintroduce; overload;
    constructor Create (regionData: Pointer; size: Integer); reintroduce; overload;
    constructor Create (AhRgn: HRGN); reintroduce; overload;

    class function FromHRGN(AhRgn: HRGN): Region;

    destructor Destroy; override;
    function Clone: Region;

    function MakeInfinite: Status;
    function MakeEmpty: Status;

    function GetDataSize: Cardinal;

    // buffer     - where to put the data
    // bufferSize - how big the buffer is (should be at least as big as GetDataSize())
    // sizeFilled - if not NULL, this is an OUT param that says how many bytes
    //              of data were written to the buffer.

    function GetData(out buffer; bufferSize: Integer; out sizeFilled: Cardinal): Status;

    function Intersect(var ARect: Rect): Status; overload;
    function Intersect(var ARect: RectF): Status; overload;
    function Intersect(var path: GraphicsPath): Status; overload;
    function Intersect(ARegion: Region): Status; overload;

    function Union(var ARect: Rect): Status; overload;
    function Union(var ARect: RectF): Status; overload;
    function Union(path: GraphicsPath): Status; overload;
    function Union(ARegion: Region): Status; overload;

    function ExclusiveOr(var ARect: Rect): Status; overload;
    function ExclusiveOr(var ARect: RectF): Status; overload;
    function ExclusiveOr(path: GraphicsPath): Status; overload;
    function ExclusiveOr(ARegion: Region): Status; overload;

    function Exclude(var ARect: Rect): Status; overload;
    function Exclude(var ARect: RectF): Status; overload;
    function Exclude(path: GraphicsPath): Status; overload;
    function Exclude(ARegion: Region): Status; overload;

    function Complement(var ARect: Rect): Status; overload;
    function Complement(var ARect: RectF): Status; overload;
    function Complement(path: GraphicsPath): Status; overload;
    function Complement(ARegion: Region): Status; overload;

    function Translate(dx, dy: single): Status; overload;
    function Translate(dx, dy: Integer): Status; overload;

    function Transform(AMatrix: Matrix): Status;

    function GetBounds(out ARect: Rect; g: Graphics): Status; overload;
    function GetBounds(out ARect: RectF; g: Graphics): Status; overload;

    function GetHRGN(g: Graphics): HRGN;

    function IsEmpty(g: Graphics): Boolean;
    function IsInfinite(g: Graphics): Boolean;

    function IsVisible(x, y: Integer; g: Graphics = nil): Boolean; overload;
    function IsVisible(var APoint: Point; g: Graphics = nil): Boolean; overload;
    function IsVisible(x, y: single; g: Graphics = nil): Boolean; overload;
    function IsVisible(var APoint: PointF; g: Graphics = nil): Boolean; overload;
    function IsVisible(x, y, width, height: Integer; g: Graphics = nil): Boolean; overload;
    function IsVisible(var ARect: Rect; g: Graphics = nil): Boolean; overload;
    function IsVisible(x, y, width, height: single; g: Graphics = nil): Boolean; overload;
    function IsVisible(var ARect: RectF; g: Graphics = nil): Boolean; overload;

    function Equals(ARegion: Region; g: Graphics): Bool;

    function GetRegionScansCount(AMatrix: Matrix): Cardinal;

    function GetRegionScans(AMatrix: Matrix; out rects: array of Rect;
                            var count: Integer): Status; overload;
    function GetRegionScans(AMatrix: Matrix; out rects: array of RectF;
                            var count: Integer): Status; overload;

    function GetLastStatus: Status;
  end;


//--------------------------------------------------------------------------
// FontFamily
//--------------------------------------------------------------------------

FontFamily = class (GdiplusBase)
  protected
    nativeFamily :GpFontFamily;
    lastResult :Status;
    function SetStatus(status :Status) :Status;
    constructor Create(nativeOrig :GpFontFamily; status :Status); reintroduce; overload;
  public
    constructor Create(
        const name :widestring;
        fontCollection :FontCollection = nil); reintroduce; overload;
    destructor Destroy; override;
    class function GenericSansSerif :FontFamily;
    class function GenericSerif :FontFamily;
    class function GenericMonospace :FontFamily;
    function GetFamilyName(
        out name :widestring; language :LANGID = 0) :Status;
    function Clone :FontFamily;
    function IsAvailable :BOOL;
    function IsStyleAvailable(style :integer) :BOOL;
    function GetEmHeight     (style :integer) :UINT16;
    function GetCellAscent   (style :integer) :UINT16;
    function GetCellDescent  (style :integer) :UINT16;
    function GetLineSpacing  (style :integer) :UINT16;
    function GetLastStatus :Status;
end;


//--------------------------------------------------------------------------
// Font
//--------------------------------------------------------------------------

Font = class (GdiplusBase)
  protected
    nativeFont :GpFont;
    lastResult :Status;
    constructor Create (font :GpFont; status :Status); reintroduce; overload;
    procedure SetNativeFont (font :GpFont);
    function SetStatus(status :Status) :Status;
  public
    constructor Create (hdc :HDC); reintroduce; overload;
    constructor Create (hdc :HDC; logfont :PLOGFONTA); reintroduce; overload;
    constructor Create (hdc :HDC; logfont :PLOGFONTW); reintroduce; overload;
    constructor Create (hdc :HDC; const hfont :HFONT); reintroduce; overload;
    constructor Create (
        const family :FontFamily;
        emSize :single;
        style  :integer = FontStyleRegular;
        unit_  :GpUnit = UnitPoint); reintroduce; overload;
    constructor Create(
        const familyName :widestring;
        emSize :single;
        style  :integer = FontStyleRegular;
        unit_  :GpUnit = UnitPoint;
        const fontCollection :FontCollection = nil
    ); reintroduce; overload;
    function GetLogFontA(const g :Graphics;
                       out  logfontA :LOGFONTA) :Status;
    function GetLogFontW(const g :Graphics;
                       out logfontW :LOGFONTW) :Status;
    function Clone :Font;
    destructor Destroy; override;
    function IsAvailable :BOOL;
    function GetStyle :integer;
    function GetSize :single;
    function GetUnit :GpUnit;
    function GetLastStatus :Status;
    function GetHeight(const g :Graphics) :single; overload;
    function GetHeight(dpi :single) :single; overload;
    function GetFamily(out family :FontFamily) :Status;
end;

//--------------------------------------------------------------------------
// Font Collection
//--------------------------------------------------------------------------

FontCollection = class (GdiplusBase)
  protected
    nativeFontCollection :GpFontCollection;
    lastResult :Status;
    function SetStatus (status :Status) :Status;
  public
    function GetFamilyCount :integer;
    function GetFamilies(
        numSought :integer;
        out gpfamilies :FontFamily;
        out numFound :integer
    ) :Status;
    function GetLastStatus :Status;
end;


InstalledFontCollection = class (FontCollection)
{  protected
    function SetStatus(status :Status) :Status;}
  public
    constructor Create; reintroduce;
end;


PrivateFontCollection = class (FontCollection)
  public
    constructor Create; reintroduce;
    destructor Destroy; override;
    function AddFontFile(const filename :widestring) :Status;
    function AddMemoryFont(var memory;
                         length :integer) :Status;
end;


//--------------------------------------------------------------------------
// Abstract base class for Image and Metafile
//--------------------------------------------------------------------------

Image = class (GdiplusBase)
  protected
    nativeImage :GpImage;
    lastResult :Status;
    loadStatus :Status;
    constructor Create (nativeImage :GpImage; status :Status); reintroduce; overload;
    procedure SetNativeImage(nativeImage :GpImage);
    function SetStatus(status :Status) :Status;
  public
    constructor Create(
        const filename :widestring;
        useEmbeddedColorManagement :BOOL = FALSE
    ); reintroduce; overload;
    constructor Create(
        stream :IStream;
        useEmbeddedColorManagement :BOOL = FALSE
    ); reintroduce; overload;
    function FromFile(
        const filename :widestring;
        useEmbeddedColorManagement :BOOL = FALSE
    ) :Image;
    function FromStream(
        stream :IStream;
        useEmbeddedColorManagement :BOOL = FALSE
    ) :Image;
    destructor Destroy; override;
    function Clone :Image; virtual;
    function Save(const filename :widestring;
                const clsidEncoder :TCLSID;
                encoderParams :PEncoderParameters = nil) :Status; overload;
    function Save(stream :IStream;
                const clsidEncoder :TCLSID;
                encoderParams :PEncoderParameters = nil) :Status; overload;
    function SaveAdd(const encoderParams :EncoderParameters) :Status; overload;
    function SaveAdd(newImage :Image;
                   const encoderParams :EncoderParameters) :Status; overload;
    function GetType :ImageType;
    function GetPhysicalDimension(out size :SizeF) :Status;
    function GetBounds(out srcRect :RectF;
                     out srcUnit :GdipUnit) :Status;
    function GetWidth :UINT;
    function GetHeight :UINT;
    function GetHorizontalResolution :single;
    function GetVerticalResolution :single;
    function GetFlags :UINT;
    function GetRawFormat(out format :TGUID) :Status;
    function GetPixelFormat :PixelFormat;
    function GetPaletteSize :integer;
    function GetPalette(out palette :ColorPalette;
                      size :integer) :Status;
    function SetPalette(var palette :ColorPalette) :Status;
    function GetThumbnailImage(thumbWidth,
                             thumbHeight :UINT;
                             callback :GetThumbnailImageAbort = nil;
                             callbackData :pointer = nil) :Image;
    function GetFrameDimensionsCount :UINT;
    function GetFrameDimensionsList(out dimensionIDs :TGUID;
                                  count :UINT) :Status;
    function GetFrameCount(const dimensionID :TGUID) :UINT;
    function SelectActiveFrame(const dimensionID :TGUID;
                             frameIndex :UINT) :Status;
    function RotateFlip(rotateFlipType :RotateFlipType) :Status;
    function GetPropertyCount :UINT;
    function GetPropertyIdList(numOfProperty :UINT;
                             out list :PROPID) :Status;
    function GetPropertyItemSize(propId :PROPID) :UINT;
    function GetPropertyItem(propId :PROPID;
                           propSize :UINT;
                           out buffer :PropertyItem) :Status;
    function GetPropertySize(out totalBufferSize,
                           numProperties :UINT) :Status;
    function GetAllPropertyItems(totalBufferSize,
                               numProperties :UINT;
                               out allItems :PropertyItem) :Status;
    function RemovePropertyItem(propId :PROPID) :Status;
    function SetPropertyItem(const item :PropertyItem) :Status;
    function GetEncoderParameterListSize(const clsidEncoder :TCLSID) :UINT;
    function GetEncoderParameterList(const clsidEncoder :TCLSID;
                                   size :UINT;
                                   out buffer :EncoderParameters) :Status;
    function GetLastStatus :Status;
end;

Bitmap = class (Image)
  protected
    constructor create (nativeBitmap :GpBitmap); reintroduce; overload;
  public
    constructor Create(
        const filename :widestring;
        useEmbeddedColorManagement :BOOL = FALSE
    ); reintroduce; overload;
    constructor Create(
        stream :IStream;
        useEmbeddedColorManagement :BOOL = FALSE
    ); reintroduce; overload;
    function FromFile(
        const filename :widestring;
        useEmbeddedColorManagement :BOOL = FALSE
    ) :Bitmap;
    function FromStream(
        stream :IStream;
        useEmbeddedColorManagement :BOOL = FALSE
    ) :Bitmap;
    constructor Create(width,
           height,
           stride :integer; format :PixelFormat;
           scan0 :pbyte); reintroduce; overload;
    constructor Create (width,
           height :integer;
           format :PixelFormat = PixelFormat32bppARGB); reintroduce; overload;
    constructor Create(width,
           height :integer;
           target :Graphics); reintroduce; overload;
    function Clone(const rect :Rect;
                  format :PixelFormat) :Bitmap; reintroduce; overload;
    function Clone(x,
                  y,
                  width,
                  height :integer;
                  format :PixelFormat) :Bitmap; reintroduce; overload;
    function Clone(const rect :RectF;
                  format :PixelFormat) :Bitmap; reintroduce; overload;
    function Clone(x,
                  y,
                  width,
                  height :single;
                  format :PixelFormat) :Bitmap; reintroduce; overload;
    function LockBits(const rect :Rect;
                    flags :UINT;
                    format :PixelFormat;
                    out lockedBitmapData :BitmapData) :Status;
    function UnlockBits(lockedBitmapData :BitmapData) :Status;
    function GetPixel(x,y :integer;
                    out color :Color) :Status;
    function SetPixel(x,y :integer;
                    const color :Color) :Status;
    function SetResolution(xdpi,
                         ydpi :single) :Status;
//    constructor Create (surface :IDirectDrawSurface7); reintroduce; overload;
    constructor Create (const gdiBitmapInfo :BITMAPINFO;
           gdiBitmapData :pointer); reintroduce; overload;
    constructor Create (hbm :HBITMAP;
           hpal :HPALETTE); reintroduce; overload;
    constructor Create (hicon :HICON); reintroduce; overload;
    constructor Create (hInstance :THandle;
           const bitmapName :widestring); reintroduce; overload;
//    class function FromDirectDrawSurface7(surface :IDirectDrawSurface7) :Bitmap;
    class function FromBITMAPINFO(const gdiBitmapInfo :BITMAPINFO;
                                  gdiBitmapData :pointer) :Bitmap;
    class function FromHBITMAP(hbm :HBITMAP;
                               hpal :HPALETTE) :Bitmap;
    class function FromHICON(hicon :HICON) :Bitmap;
    class function FromResource(hInstance :THandle;
                                const bitmapName :widestring) :Bitmap;
    function GetHBITMAP(const colorBackground :Color;
                      out hbmReturn :HBITMAP) :Status;
    function GetHICON(out hiconReturn :HICON) :Status;
end;


CustomLineCap = class (GdiplusBase)
  protected
    nativeCap :GpCustomLineCap;
    lastResult :Status;
    constructor Create (nativeCap :GpCustomLineCap; status :Status); reintroduce; overload;
    procedure SetNativeCap (nativeCap :GpCustomLineCap);
    function SetStatus (status :Status) :Status;
  public
    constructor Create; reintroduce; overload;
    constructor Create (const fillPath,strokePath :GraphicsPath;  baseCap :LineCap = LineCapFlat;  baseInset :single = 0); reintroduce; overload;
    destructor Destroy; override;
    function Clone :CustomLineCap;
    // This changes both the start and end cap.
    function SetStrokeCap (strokeCap :LineCap) :Status;
    function SetStrokeCaps (startCap,endCap :LineCap) :Status;
    function GetStrokeCaps (out startCap,endCap :LineCap) :Status;
    function SetStrokeJoin (lineJoin :LineJoin) :Status;
    function GetStrokeJoin :LineJoin;
    function SetBaseCap (baseCap :LineCap) :Status;
    function GetBaseCap :LineCap;
    function SetBaseInset (inset :single) :Status;
    function GetBaseInset :single;
    function SetWidthScale (widthScale :single) :Status;
    function GetWidthScale :single;
    function GetLastStatus :Status;
end;


CachedBitmap = class (GdiplusBase)
  protected
    nativeCachedBitmap :GpCachedBitmap;
    lastResult :Status;
  public
    constructor Create(bitmap :Bitmap; graphics :Graphics); reintroduce;
    destructor Destroy; override;
    function GetLastStatus :Status;
end;


//============================================================================
// *** GdiPlusBrush.h
//============================================================================

Brush = class(GdiplusBase)
  protected
    nativeBrush: GpBrush;
    lastResult: Status;
    constructor CreateNative (nativeBrush: GpBrush; AStatus: Status);
    procedure SetNativeBrush(ANativeBrush: GpBrush);
    function SetStatus(AStatus: Status): Status;
  public
    constructor Create; reintroduce;
    destructor Destroy; override;
    function Clone: Brush; virtual;
    function GetType: BrushType;
    function GetLastStatus: Status;
  end;

SolidBrush = class(Brush)
  public
    constructor Create(var AColor: Color); reintroduce; overload;
    function CetColor: Color; overload;  //addon
    function GetColor(out AColor: Color): Status; overload;
    function SetColor (var AColor: Color): Status;
  end;

TextureBrush = class(Brush)
  public//    constructor Create(AImage: Image; AWrapMode: WrapMode = WrapModeTile); overload;
    // When creating a texture brush from a metafile image, the dstRect
    // is used to specify the size that the metafile image should be
    // rendered at in the device units of the destination graphics.
    // It is NOT used to crop the metafile image, so only the width
    // and height values matter for metafiles.
    constructor Create(AImage: Image; AWrapMode: WrapMode; var dstRect: RectF); reintroduce; overload;
    constructor Create(AImage: Image; var dstRect: RectF; AImageAttributes: ImageAttributes = nil); reintroduce; overload;
    constructor Create(AImage: Image; var dstRect: Rect; AImageAttributes: ImageAttributes = nil); reintroduce; overload;
    constructor Create(AImage: Image; AWrapMode: WrapMode; var dstRect: Rect); reintroduce; overload;
    constructor Create(AImage: Image; AWrapMode: WrapMode; dstX, dstY, dstWidth, dstHeight: single); reintroduce; overload;
    constructor Create(AImage: Image; AWrapMode: WrapMode; dstX, dstY, dstWidth, dstHeight: Integer); reintroduce; overload;
    function SetTransform(AMatrix: Matrix): Status;
    //Amatrix receives the info, functions as a dest param
    function GetTransform(AMatrix: Matrix): Status; overload;
    function GetTransform: Matrix; overload;//addon
    function ResetTransform: Status;
    function MultiplyTransform(AMatrix: Matrix; order: MatrixOrder = MatrixOrderPrepend): Status;
    function TranslateTransform(dx, dy: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function ScaleTransform(sx, sy: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function RotateTransform(angle: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function SetWrapMode(AWrapMode: WrapMode): Status;
    function GetWrapMode: WrapMode;
    function GetImage: Image;
  end;

TArrayOfSingle = array of single;
TArrayOfColor  = array of Color;

LinearGradientBrush = class(Brush)
  public
    constructor Create(var point1, point2: PointF; var color1, color2: Color); reintroduce; overload;
    constructor Create(var point1, point2: Point; var color1, color2: Color); reintroduce; overload;
    constructor Create(ARect: RectF; var color1, color2: Color; mode: LinearGradientMode); reintroduce; overload;
    constructor Create(ARect: Rect; var color1, color2: Color; mode: LinearGradientMode); reintroduce; overload;
    constructor Create(ARect: RectF; angle: single; var color1, color2: Color; isAngleScalable: Boolean = False); reintroduce; overload;
    constructor Create(ARect: Rect; angle: single; var color1, color2: Color; isAngleScalable: Boolean = False); reintroduce; overload;
    function SetLinearColors(var color1, color2: Color): Status; overload;
    function GetLinearColors(var colors: array of Color): Status;
    function GetRectangleF: RectF; //addon
    function GetRectangle(var ARect: RectF): Status; overload;
    function GetRectangleI: Rect; //addon
    function GetRectangle(var ARect: Rect): Status; overload;
    function SetGammaCorrection(useGammaCorrection: Boolean): Status;
    function GetGammaCorrection: Boolean;
    function GetBlendCount: Integer;
    function SetBlend(var blendFactors,blendPositions: TArrayOfSingle): Status;
    function GetBlend(var blendFactors,blendPositions: TArrayOfSingle; count: Integer): Status;
    function GetInterpolationColorCount: Integer;
    function SetInterpolationColors(var presetColors: array of Color; var blendPositions: array of single): Status;
    function GetInterpolationColors(var presetColors: TArrayOfColor; var blendPositions: TArrayOfSingle; var count: Integer): Status;
    function SetBlendBellShape(focus: single; scale: single = 1.0): Status;
    function SetBlendTriangularShape(focus: single; scale: single = 1.0): Status;
    function SetTransform(AMatrix: Matrix): Status;
    function GetTransform: Matrix; overload;//addon
    //matrix must be pre-allocated and functions as a dest param
    function GetTransform(AMatrix: Matrix): Status; overload;
    function ResetTransform: Status;
    function MultiplyTransform(AMatrix: Matrix; order: MatrixOrder = MatrixOrderPrepend): Status;
    function TranslateTransform(dx, dy: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function ScaleTransform(sx, sy: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function RotateTransform(angle: single; order: MatrixOrder = MatrixOrderPrepend): Status;
    function SetWrapMode(AWrapMode: WrapMode): Status;
    function GetWrapMode: WrapMode;
  end;

HatchBrush = class(Brush)
  public
    constructor Create(AHatchStyle: HatchStyle); reintroduce; overload; //addon
    constructor Create(AHatchStyle: HatchStyle; var foreColor: Color); reintroduce; overload; //addon
    constructor Create(AHatchStyle: HatchStyle; var foreColor, backColor: Color); reintroduce; overload;
    function GetHatchStyle: HatchStyle;
    function GetForegroundColor: Color; overload; //addon
    function GetForegroundColor(out AColor: Color): Status; overload;
    function GetBackgroundColor: Color; overload;
    function GetBackgroundColor(out AColor: Color): Status; overload;
  end;


//============================================================================
// *** GdiPlusImageAttributes.h
//============================================================================

ImageAttributes = class (GdiplusBase)
  protected
    nativeImageAttr :GpImageAttributes;
    lastResult :Status;
    constructor Create (imageAttr :GpImageAttributes; status :Status); reintroduce; overload;
    procedure SetNativeImageAttr (nativeImageAttr :GpImageAttributes);
    function SetStatus(status :Status) :Status;
  public
    constructor Create; reintroduce; overload;
    destructor Destroy; override;
    function Clone :ImageAttributes;
    function SetToIdentity( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function Reset( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetColorMatrix( const colorMatrix :ColorMatrix; mode :ColorMatrixFlags = ColorMatrixFlagsDefault; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearColorMatrix( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetColorMatrices( const colorMatrix,grayMatrix :ColorMatrix; mode :ColorMatrixFlags = ColorMatrixFlagsDefault; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearColorMatrices( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetThreshold( threshold :single; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearThreshold( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetGamma( gamma :single; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearGamma( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetNoOp( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearNoOp( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetColorKey( colorLow,colorHigh :Color; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearColorKey( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetOutputChannel( channelFlags :ColorChannelFlags; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearOutputChannel( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetOutputChannelColorProfile( colorProfileFilename :widestring; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearOutputChannelColorProfile( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetRemapTable( mapSize :UINT; const map :ColorMap; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function ClearRemapTable( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
    function SetBrushRemapTable(mapSize :UINT; const map :ColorMap) :Status;
    function ClearBrushRemapTable :Status;
    function SetWrapMode(wrap :WrapMode; const color :Color; clamp :BOOL = FALSE) :Status;
    function GetAdjustedPalette(out colorPalette :ColorPalette; colorAdjustType :ColorAdjustType) :Status;
    function GetLastStatus :Status;
end;


//============================================================================
// *** GdiPlusMetafile.h
//============================================================================

Metafile = class (Image)
  public
    constructor Create; reintroduce; overload;
    constructor Create (hWmf :HMETAFILE; const wmfPlaceableFileHeader :WmfPlaceableFileHeader; deleteWmf :BOOL = FALSE); overload;
    constructor Create (hEmf :HENHMETAFILE; deleteEmf :BOOL = FALSE); overload;
    constructor Create (const filename :widestring); overload;
    constructor Create (const filename :widestring; const wmfPlaceableFileHeader :WmfPlaceableFileHeader); overload;
    constructor Create (stream :IStream); overload;
    constructor Create (referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (referenceHdc :HDC; const frameRect :RectF; frameunit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (const fileName :widestring; referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (const fileName :widestring; referenceHdc :HDC; const frameRect :RectF; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (const fileName :widestring; referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (stream :IStream; referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (stream :IStream; referenceHdc :HDC; const frameRect :RectF; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    constructor Create (stream :IStream; referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = ''); overload;
    class function GetMetafileHeader (hWmf :HMETAFILE; const wmfPlaceableFileHeader :WmfPlaceableFileHeader; out header :MetafileHeader) :Status; overload;
    class function GetMetafileHeader (hEmf :HENHMETAFILE; out header :MetafileHeader) :Status; overload;
    class function GetMetafileHeader (const filename :widestring; out header :MetafileHeader) :Status; overload;
    class function GetMetafileHeader (stream :IStream; out header :MetafileHeader) :Status; overload;
    function GetMetafileHeader (out header :MetafileHeader) :status; overload;
    function GetHENHMETAFILE :HENHMETAFILE;
    function PlayRecord (recordType :EmfPlusRecordType; flags, dataSize :UINT; var data) :Status;
    function SetDownLevelRasterizationLimit (metafileRasterizationLimitDpi :UINT) :Status;
    function GetDownLevelRasterizationLimit :UINT;
    class function EmfToWmfBits (hEmf :HENHMETAFILE; cbData16 :UINT; pData16 :pointer; iMapMode :integer = MM_ANISOTROPIC; eFlags :EmfToWmfBitsFlags = EmfToWmfBitsFlagsDefault) :UINT;
end;


//============================================================================
// *** GdiPlusPen.h
//============================================================================

Pen = class (GdiPlusBase)
  protected
    nativePen :GpPen;
    lastResult :Status;
    constructor Create (nativePen :GpPen; status :Status); reintroduce; overload;
    procedure SetNativePen(nativePen :GpPen);
    function SetStatus(status :Status) :Status;
  public
    constructor Create (const acolor :Color; width :single = 1.0); reintroduce; overload;
    constructor Create (const abrush :Brush; width :single = 1.0); reintroduce; overload;
    destructor Destroy; override;
    function Clone :Pen;
    function SetWidth(width :single) :Status;
    function GetWidth :single;
    function SetLineCap(startCap,endCap :LineCap; dashCap :DashCap) :Status;
    function SetStartCap(startCap :LineCap) :Status;
    function SetEndCap(endCap :LineCap) :Status;
    function SetDashCap(dashCap :DashCap) :Status;
    function GetStartCap :LineCap;
    function GetEndCap :LineCap;
    function GetDashCap :DashCap;
    function SetLineJoin(lineJoin :LineJoin) :Status;
    function GetLineJoin :LineJoin;
    function SetCustomStartCap(const customCap :CustomLineCap) :Status;
    function GetCustomStartCap(customCap :CustomLineCap) :Status;
    function SetCustomEndCap(customCap :CustomLineCap) :Status;
    function GetCustomEndCap(out customCap :CustomLineCap) :Status;
    function SetMiterLimit(miterLimit :single) :Status;
    function GetMiterLimit :single;
    function SetAlignment(penAlignment :PenAlignment) :Status;
    function GetAlignment :PenAlignment;
    function SetTransform(const Matrix :Matrix) :Status;
    function GetTransform(out matrix :Matrix) :Status;
    function ResetTransform :Status;
    function MultiplyTransform(const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function TranslateTransform(dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function ScaleTransform(sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function RotateTransform(angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function GetPenType :PenType;
    function SetColor(const color :Color) :Status;
    function SetBrush(const brush :Brush) :Status;
    function GetColor(out color :Color) :Status;
    function GetBrush :Brush;
    function GetDashStyle :DashStyle;
    function SetDashStyle(dashStyle :DashStyle) :Status;
    function GetDashOffset :single;
    function SetDashOffset(dashOffset :single) :Status;
    function SetDashPattern(var dashArray :single; count :integer) :Status;
    function GetDashPatternCount :integer;
    function GetDashPattern(out dashArray :single; count :integer):Status;
    function SetCompoundArray(var compoundArray :single; count :integer) :Status;
    function GetCompoundArrayCount :integer;
    function GetCompoundArray(var compoundArray :single; count :integer) :Status;
    function GetLastStatus :Status;
end;


//============================================================================
// *** GdiPlusStringFormat.h
//============================================================================

StringFormat = class (GdiPlusBase)
  protected
    nativeFormat :GpStringFormat;
    lastError :Status;
    function SetStatus (newStatus :GpStatus) :Status;
    procedure Assign (const source :StringFormat);
    constructor Create (clonedStringFormat :GpStringFormat; status :Status); reintroduce; overload;
  public
    constructor Create ( formatFlags :integer = 0; language :LANGID = LANG_NEUTRAL); reintroduce; overload;
    class function GenericDefault :StringFormat;
    class function GenericTypographic :StringFormat;
    constructor Create(const format :StringFormat); reintroduce; overload;
    function Clone :StringFormat;
    destructor StringFormat;
    function SetFormatFlags (flags :integer) :Status;
    function GetFormatFlags :integer;
    function SetAlignment(align :StringAlignment) :Status;
    function GetAlignment :StringAlignment;
    function SetLineAlignment (align :StringAlignment) :Status;
    function GetLineAlignment :StringAlignment;
    function SetHotkeyPrefix(hotkeyPrefix :hotkeyPrefix) :Status;
    function GetHotkeyPrefix :HotkeyPrefix;
    function SetTabStops( firstTabOffset :single; count :integer; var tabStops :single) :Status;
    function GetTabStopCount :integer;
    function GetTabStops( count :integer; out firstTabOffset, tabStops :single) :Status;
    function SetDigitSubstitution( language :LANGID; substitute :StringDigitSubstitute) :Status;
    function GetDigitSubstitutionLanguage :LANGID;
    function GetDigitSubstitutionMethod :StringDigitSubstitute;
    function SetTrimming (trimming :StringTrimming) :Status;
    function GetTrimming :StringTrimming;
    function SetMeasurableCharacterRanges( rangeCount :integer; var ranges :CharacterRange) :Status;
    function GetMeasurableCharacterRangeCount :integer;
    function GetLastStatus :Status;
end;


//============================================================================
// *** GdiPlusGraphics.h
//============================================================================

Graphics = class (GdiPlusBase)
  protected
    nativeGraphics :GpGraphics;
    lastResult :Status;
    constructor Create (graphics :GpGraphics); reintroduce; overload;
    procedure SetNativeGraphics (graphics :GpGraphics);
    function SetStatus (status :Status) :Status;
    function GetNativeGraphics :GpGraphics;
    function GetNativePen (const pen :Pen) :GpPen;
  public
    class function FromHDC (hdc :HDC) :Graphics; overload;
    class function FromHDC (hdc :HDC; hdevice :THandle) :Graphics; overload;
    class function FromHWND (hwnd :HWND; icm :BOOL = FALSE) :Graphics;
    class function FromImage (image :Image) :Graphics;
    constructor Create (hdc :HDC); reintroduce; overload;
    constructor Create (hdc :HDC; hdevice :THandle); reintroduce; overload;
    constructor create (hwnd :HWND; icm :BOOL{ = FALSE}); reintroduce; overload;
    constructor Create (image :Image); reintroduce; overload;
    destructor Destroy; override;
    procedure Flush (intention :FlushIntention = FlushIntentionFlush);
    function GetHDC :HDC;
    procedure ReleaseHDC (hdc :HDC);
    function SetRenderingOrigin (x,y :integer) :Status;
    function GetRenderingOrigin (out x,y :integer) :Status;
    function SetCompositingMode (compositingMode :CompositingMode) :Status;
    function GetCompositingMode :CompositingMode;
    function SetCompositingQuality (compositingQuality :CompositingQuality) :Status;
    function GetCompositingQuality :CompositingQuality;
    function SetTextRenderingHint (newMode :TextRenderingHint) :Status;
    function GetTextRenderingHint :TextRenderingHint;
    function SetTextContrast (contrast :UINT) :Status;
    function GetTextContrast :UINT;
{
    function SetTextGammaValue (gammaValue :UINT) :Status;
    function GetTextGammaValue :UINT;
}
    function GetInterpolationMode :InterpolationMode;
    function SetInterpolationMode(interpolationMode :InterpolationMode) :Status;
    function GetSmoothingMode :InterpolationMode;
    function SetSmoothingMode (smoothingMode :SmoothingMode) :Status;
    function GetPixelOffsetMode :PixelOffsetMode;
    function SetPixelOffsetMode (pixelOffsetMode :PixelOffsetMode) :Status;
    function SetTransform (const matrix :Matrix) :Status;
    function ResetTransform :Status;
    function MultiplyTransform (const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function TranslateTransform (dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function ScaleTransform (sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function RotateTransform (angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function GetTransform (matrix :Matrix) :Status;
    function SetPageUnit (u :GpUnit) :Status;
    function SetPageScale (scale :single) :Status;
    function GetPageUnit :GpUnit;
    function GetPageScale :single;
    function GetDpiX :single;
    function GetDpiY :single;
    function TransformPoints (destSpace,srcSpace :CoordinateSpace; out pts :PointF; count :integer) :Status; overload;
    function TransformPoints (destSpace,srcSpace :CoordinateSpace; out pts :Point; count :integer) :Status; overload;
    function GetNearestColor (out color :Color) :Status;
    function DrawLine (const pen :Pen; x1,y1,x2,y2 :single) :Status; overload;
    function DrawLine (const pen :Pen; const pt1,pt2 :PointF) :Status; overload;
    function DrawLines (const pen :Pen; const points :PointF; count :integer) :Status; overload;
    function DrawLine (const pen :Pen; x1,y1,x2,y2 :integer) :Status; overload;
    function DrawLine (const pen :Pen; const pt1,pt2 :Point) :Status; overload;
    function DrawLines (const pen :Pen; const points :Point; count :integer) :Status; overload;
    function DrawArc (const pen :Pen; x,y,width,height,startangle,sweepangle :single) :Status; overload;
    function DrawArc (const pen :Pen; const rect :RectF; startangle,sweepangle :single) :Status; overload;
    function DrawArc (const pen :Pen; x,y,width,height :integer; startangle,sweepangle :single) :Status; overload;
    function DrawArc (const pen :Pen; const rect :Rect; startangle,sweepangle :single) :Status; overload;
    function DrawBezier (const pen :Pen; x1,y1,x2,y2,x3,y3,x4,y4 :single) :Status; overload;
    function DrawBezier (const pen :Pen; const pt1,pt2,pt3,pt4 :PointF) :Status; overload;
    function DrawBeziers (const pen :Pen; const points :PointF; count :integer) :Status; overload;
    function DrawBezier (const pen :Pen; x1,y1,x2,y2,x3,y3,x4,y4 :integer) :Status; overload;
    function DrawBezier (const pen :Pen; const pt1,pt2,pt3,pt4 :Point) :Status; overload;
    function DrawBeziers (const pen :Pen; const points :Point; count :integer) :Status; overload;
    function DrawRectangle (const pen :Pen; const rect :RectF) :Status; overload;
    function DrawRectangle (const pen :Pen; x,y,width,height :single) :Status; overload;
    function DrawRectangles (const pen :Pen; const rects :RectF; count :integer) :Status; overload;
    function DrawRectangle (const pen :Pen; const rect :Rect) :Status; overload;
    function DrawRectangle (const pen :Pen; x,y,width,height :integer) :Status; overload;
    function DrawRectangles (const pen :Pen; const rects :Rect; count :integer) :Status; overload;
    function DrawEllipse (const pen :Pen; const rect :RectF) :Status; overload;
    function DrawEllipse (const pen :Pen; x,y,width,height :single) :Status; overload;
    function DrawEllipse (const pen :Pen; const rect :Rect) :Status; overload;
    function DrawEllipse (const pen :Pen; x,y,width,height :integer) :Status; overload;
    function DrawPie (const pen :Pen; const rect :RectF; startangle,sweepangle :single) :Status; overload;
    function DrawPie (const pen :Pen; x,y,width,height,startangle,sweepangle :single) :Status; overload;
    function DrawPie (const pen :Pen; const rect :Rect; startangle,sweepangle :single) :Status; overload;
    function DrawPie (const pen :Pen; x,y,width,height :integer; startangle,sweepangle :single) :Status; overload;
    function DrawPolygon (const pen :Pen; const points :PointF; count :integer) :Status; overload;
    function DrawPolygon (const pen :Pen; const points :Point; count :integer) :Status; overload;
    function DrawPath (const pen :Pen; const path :GraphicsPath) :Status;
    function DrawCurve (const pen :Pen; points :PointF; count :integer) :Status; overload;
    function DrawCurve (const pen :Pen; const points :PointF; count :integer; tension :single) :Status; overload;
    function DrawCurve (const pen :Pen; const points :PointF; count,offset,numberOfSegments :integer; tension :single = 0.5) :Status; overload;
    function DrawCurve (const pen :Pen; points :Point; count :integer) :Status; overload;
    function DrawCurve (const pen :Pen; const points :Point; count :integer; tension :single) :Status; overload;
    function DrawCurve (const pen :Pen; const points :Point; count,offset,numberOfSegments :integer; tension :single = 0.5) :Status; overload;
    function DrawClosedCurve (const pen :Pen; const points :PointF; count :integer) :Status; overload;
    function DrawClosedCurve (const pen :Pen; const points :PointF; count :integer; tension :single) :Status; overload;
    function DrawClosedCurve (const pen :Pen; const points :Point; count :integer) :Status; overload;
    function DrawClosedCurve (const pen :Pen; const points :Point; count :integer; tension :single) :Status; overload;
    function Clear (const color :Color) :Status;
    function FillRectangle (const Brush :Brush; const rect :RectF) :Status; overload;
    function FillRectangle (const brush :Brush; x,y,width,height :single) :Status; overload;
    function FillRectangles (const brush :Brush; const rects :RectF; count :integer) :Status; overload;
    function FillRectangle (const Brush :Brush; const rect :Rect) :Status; overload;
    function FillRectangle (const brush :Brush; x,y,width,height :integer) :Status; overload;
    function FillRectangles (const brush :Brush; const rects :Rect; count :integer) :Status; overload;
    function FillPolygon (const brush :Brush; const points :PointF; count :integer) :Status; overload;
    function FillPolygon (const brush :Brush; points :PointF; count :integer; fillMode :FillMode) :Status; overload;
    function FillPolygon (const brush :Brush; const points :Point; count :integer) :Status; overload;
    function FillPolygon (const brush :Brush; points :Point; count :integer; fillMode :FillMode) :Status; overload;
    function FillEllipse (const brush :Brush; const rect :RectF) :Status; overload;
    function FillEllipse (const brush :Brush; x,y,width,height :single) :Status; overload;
    function FillEllipse (const brush :Brush; const rect :Rect) :Status; overload;
    function FillEllipse (const brush :Brush; x,y,width,height :integer) :Status; overload;
    function FillPie (const brush :Brush; const rect :RectF; startAngle,sweepAngle :single) :Status; overload;
    function FillPie (const brush :Brush; x,y,width,height, startAngle,sweepAngle :single) :Status; overload;
    function FillPie (const brush :Brush; const rect :Rect; startAngle,sweepAngle :single) :Status; overload;
    function FillPie (const brush :Brush; x,y,width,height :integer; startAngle,sweepAngle :single) :Status; overload;
    function FillPath (const brush :Brush; const path :GraphicsPath) :Status;
    function FillClosedCurve (const brush :Brush; const points :PointF; count :integer) :Status; overload;
    function FillClosedCurve (const brush :Brush; const points :PointF; count :integer; fillMode :FillMode; tension :single = 0.5) :Status; overload;
    function FillClosedCurve (const brush :Brush; const points :Point; count :integer) :Status; overload;
    function FillClosedCurve (const brush :Brush; const points :Point; count :integer; fillMode :FillMode; tension :single = 0.5) :Status; overload;
    function FillRegion (const brush :Brush; const region :Region) :Status;
    function DrawString (const str :widestring; length :integer; const font :Font;
                           const layoutRect :RectF; const stringFormat :StringFormat;
                           const brush :Brush) :Status; overload;
    function DrawString (const str :widestring; length :integer; const font :Font;
                           const origin :PointF; const brush :Brush) :Status; overload;
    function DrawString (const str :widestring; length :integer; const font :Font;
                           const origin :PointF; const stringFormat :StringFormat;
                           const brush :Brush) :Status; overload;
    function MeasureString (const str :widestring; length :integer; const font :Font; const layoutRect :RectF;
                              const stringFormat :StringFormat;
                              out boundingBox :RectF; out codepointsFitted,linesFilled :integer) :Status; overload;
    function MeasureString (const str :widestring; length :integer; const font :Font; const layoutRectSize :SizeF;
                              const stringFormat :StringFormat;
                              out size :SizeF; out codepointsFitted,linesFilled :integer) :Status; overload;
    function MeasureString (const str :widestring; length :integer; const font :Font; const origin :PointF;
                              const stringFormat :StringFormat; out boundingBox :RectF) :Status; overload;
    function MeasureString (const str :widestring; length :integer; const font :Font;
                              const layoutRect :RectF; out boundingBox :RectF) :Status; overload;
    function MeasureString (const str :widestring; length :integer; const font :Font;
                              const origin :PointF; out boundingBox :RectF) :Status; overload;
    function MeasureCharacterRanges (const str :widestring; length :integer; const font :Font;
                                       const layoutRect :RectF; const stringFormat :stringFormat;
                                       regionCount :integer; out regions :Region) :Status;
{
    function MeasureStringRegion (const str :widestring; length :integer; const font :Font;
                                    const layoutRect :RectF; const stringFormat :StringFormat;
                                    firstCharacterIndex,characterCount :integer;
                                    out region :Region) :Status;
}
    function DrawDriverString (const text :widestring; length :integer; const font :Font;
                                 const brush :Brush; const positions :PointF; flags :integer;
                                 const matrix :Matrix) :Status;
    function MeasureDriverString (const text :widestring; length :integer; const font :Font;
                                    const positions :PointF; flags :integer; const matrix :Matrix;
                                    out boundingBox :RectF) :Status;
{
    function DriverStringPointToCodepoint (const text :widestring; length :integer; const font :Font;
                                             const positions :PointF; flags :integer; const matrix :Matrix; const hit :PointF;
                                             out index :integer; out rightEdge :BOOL; out distance :single) :Status;
}
    function DrawCachedBitmap (cb :CachedBitmap; x,y :integer) :Status;
    function DrawImage (image :Image; const point :PointF) :Status; overload;
    function DrawImage (image :Image; x,y :single) :Status; overload;
    function DrawImage (image :Image; const rect :RectF) :Status; overload;
    function DrawImage (image :Image; x,y,width,height :single) :Status; overload;
    function DrawImage (image :Image; const point :Point) :Status; overload;
    function DrawImage (image :Image; x,y :integer) :Status; overload;
    function DrawImage (image :Image; const rect :Rect) :Status; overload;
    function DrawImage (image :Image; x,y,width,height :integer) :Status; overload;
    function DrawImage (image :Image; const destPoints :PointF; count :integer) :Status; overload;
    function DrawImage (image :Image; const destPoints :Point; count :integer) :Status; overload;
    function DrawImage (image :Image; x,y,srcx,srcy,srcwidth,srcheight :single; srcUnit :GpUnit) :Status; overload;
    function DrawImage (image :Image; const destRect :RectF; srcx,srcy,srcwidth,srcheight :single;
                          srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                          callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status; overload;
    function DrawImage (image :Image; destPoints :PointF; count :integer; srcx,srcy,srcwidth,srcheight :single;
                          srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                          callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status; overload;
    function DrawImage (image :Image; x,y,srcx,srcy,srcwidth,srcheight :integer; srcUnit :GpUnit) :Status; overload;
    function DrawImage (image :Image; const destRect :Rect; srcx,srcy,srcwidth,srcheight :integer;
                          srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                          callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status; overload;
    function DrawImage (image :Image; destPoints :Point; count :integer; srcx,srcy,srcwidth,srcheight :integer;
                          srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                          callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoint :PointF;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoint :Point;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destRect :RectF;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destRect :Rect;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoints :PointF; count :integer;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoints :Point; count :integer;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoint :PointF;
                                  const srcRect :RectF; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoint :Point;
                                  const srcRect :Rect; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destRect,srcRect :RectF; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destRect,srcRect :Rect; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoints :PointF; count :integer;
                                  const srcRect :RectF; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function EnumerateMetafile (const metafile :Metafile; const destPoints :Point; count :integer;
                                  const srcRect :Rect; srcUnit :GpUnit;
                                  callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                  imageAttributes :ImageAttributes = nil) :Status; overload;
    function SetClip (const g :Graphics; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function SetClip (const rect :RectF; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function SetClip (const rect :Rect; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function SetClip (const path :GraphicsPath; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function SetClip (const region :Region; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function SetClip (hRgn :HRGN; combineMode :CombineMode = CombineModeReplace) :Status; overload;
    function IntersectClip (const rect :RectF) :Status; overload;
    function IntersectClip (const rect :Rect) :Status; overload;
    function IntersectClip (const region :Region) :Status; overload;
    function ExcludeClip(const rect :RectF) :Status; overload;
    function ExcludeClip (const rect :Rect) :Status; overload;
    function ExcludeClip (const region :Region) :Status; overload;
    function ResetClip :Status;
    function TranslateClip (dx,dy :single) :Status; overload;
    function TranslateClip (dx,dy :integer) :Status; overload;
    function GetClip (out region :Region) :Status;
    function GetClipBounds (out rect :RectF) :Status; overload;
    function GetClipBounds (out rect :Rect) :Status; overload;
    function IsClipEmpty :BOOL;
    function GetVisibleClipBounds (out rect :RectF) :Status; overload;
    function GetVisibleClipBounds (out rect :Rect) :Status; overload;
    function IsVisibleClipEmpty :BOOL;
    function IsVisible (x,y :integer) :BOOL; overload;
    function IsVisible (const point :Point) :BOOL; overload;
    function IsVisible (x,y,width,height :integer) :BOOL; overload;
    function IsVisible (const rect :Rect) :BOOL; overload;
    function IsVisible (x,y :single) :BOOL; overload;
    function IsVisible (const point :PointF) :BOOL; overload;
    function IsVisible (x,y,width,height :single) :BOOL; overload;
    function IsVisible (const rect :RectF) :BOOL; overload;
    function Save :GraphicsState;
    function Restore (gstate :GraphicsState) :Status;
    function BeginContainer (const dstrect,srcrect :RectF; u :GpUnit) :GraphicsContainer; overload;
    function BeginContainer (const dstrect,srcrect :Rect; u :GpUnit) :GraphicsContainer; overload;
    function BeginContainer :GraphicsContainer; overload;
    function EndContainer (state :GraphicsContainer) :Status;
    function AddMetafileComment (var data :BYTE; sizeData :UINT) :Status;
{
    function GetLayout :GraphicsLayout;
    function SetLayout (const layout :GraphicsLayout) :Status;
}
    class function GetHalftonePalette :HPALETTE;
    function GetLastStatus :Status;
end;


//============================================================================
// *** GdiPlusPath.h
//============================================================================

GraphicsPath = class (GdiplusBase)
  protected
    nativePath :GpPath;
    lastResult :Status;
    constructor Create (const path :GraphicsPath); reintroduce; overload;
    constructor Create (nativePath :GpPath); reintroduce; overload;
    procedure SetNativePath (nativePath :GpPath);
    function SetStatus (status :Status) :Status;
  public
    constructor Create (fillMode :FillMode = FillModeAlternate); reintroduce; overload;
    constructor Create (const points :PointF; const types :pointer; count :integer;
                        fillMode :FillMode = FillModeAlternate); reintroduce; overload;
    constructor Create (const points :Point; const types :pointer; count :integer;
                        fillMode :FillMode = FillModeAlternate); reintroduce; overload;
    destructor Destroy; override;
    function Clone :GraphicsPath;
    function Reset :Status;
    function GetFillMode :FillMode;
    function SetFillMode (fillmode :FillMode) :Status;
    function GetPathData (out pathData :PathData) :Status;
    function StartFigure :Status;
    function CloseFigure :Status;
    function CloseAllFigures :Status;
    function SetMarker :Status;
    function ClearMarkers :Status;
    function Reverse :Status;
    function GetLastPoint (out lastPoint :PointF) :Status;
    function AddLine (const pt1,pt2 :PointF) :Status; overload;
    function AddLine(x1,y1,x2,y2 :single) :Status; overload;
    function AddLines(const points :PointF; count :integer) :Status; overload;
    function AddLine(const pt1,pt2 :Point) :Status; overload;
    function AddLine(x1,y1,x2,y2 :integer) :Status; overload;
    function AddLines(const points :Point; count :integer) :Status; overload;
    function AddArc(const rect :RectF; startAngle,sweepAngle :single):Status; overload;
    function AddArc(x :single; y :single; width :single; height :single; startAngle :single; sweepAngle :single) :Status; overload;
    function AddArc(const rect :Rect; startAngle, sweepAngle :single) :Status; overload;
    function AddArc(x, y, width, height :integer; startAngle, sweepAngle :single) :Status; overload;
    function AddBezier(const pt1,pt2,pt3,pt4 :PointF) :Status; overload;
    function AddBezier(x1, y1, x2, y2, x3, y3, x4, y4 :single) :Status; overload;
    function AddBeziers(const points :PointF; count :integer) :Status; overload;
    function AddBezier(const pt1,pt2,pt3,pt4 :Point) :Status; overload;
    function AddBezier(x1, y1, x2, y2, x3, y3, x4, y4 :integer) :Status; overload;
    function AddBeziers(const points :Point; count :integer) :Status; overload;
    function AddCurve(const points :PointF; count :integer) :Status; overload;
    function AddCurve(const points :PointF; count :integer; tension :single) :Status; overload;
    function AddCurve(const points :PointF; count, offset, numberOfSegments :integer; tension :single) :Status; overload;
    function AddCurve(const points :Point; count :integer) :Status; overload;
    function AddCurve(const points :Point; count :integer; tension :single) :Status; overload;
    function AddCurve(const points :Point; count, offset, numberOfSegments :integer; tension :single) :Status; overload;
    function AddClosedCurve(const points :PointF; count :integer) :Status; overload;
    function AddClosedCurve(const points :PointF; count :integer; tension :single) :Status; overload;
    function AddClosedCurve(const points :Point; count :integer) :Status; overload;
    function AddClosedCurve(const points :Point; count :integer; tension :single) :Status; overload;
    function AddRectangle(const rect :RectF) :Status; overload;
    function AddRectangles(const rects :RectF; count :integer) :Status; overload;
    function AddRectangle(const rect :Rect) :Status; overload;
    function AddRectangles(const rects :Rect; count :integer) :Status; overload;
    function AddEllipse(const rect :RectF) :Status; overload;
    function AddEllipse(x, y, width, height :single) :Status; overload;
    function AddEllipse(const rect :Rect) :Status; overload;
    function AddEllipse(x, y, width, height :integer) :Status; overload;
    function AddPie(const rect :RectF; startAngle, sweepAngle :single) :Status; overload;
    function AddPie(x, y, width, height, startAngle, sweepAngle :single) :Status; overload;
    function AddPie(const rect :Rect; startAngle, sweepAngle :single) :Status; overload;
    function AddPie(x, y, width, height :integer; startAngle, sweepAngle :single) :Status; overload;
    function AddPolygon(const points :PointF; count :integer) :Status; overload;
    function AddPolygon(const points :Point; count :integer) :Status; overload;
    function AddPath(const addingPath :GraphicsPath; connect :BOOL) :Status;
    function AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const origin :PointF; const format :StringFormat) :Status; overload;
    function AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const layoutRect :RectF; const format :StringFormat) :Status; overload;
    function AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const origin :Point; const format :StringFormat) :Status; overload;
    function AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const layoutRect :Rect; const format :StringFormat) :Status; overload;
    // This is not always the tightest bounds.
    function GetBounds (out bounds :RectF; matrix :Matrix = nil; pen :Pen = nil) :Status; overload;
    function GetBounds (out bounds :Rect; matrix :Matrix = nil; pen :Pen = nil) :Status; overload;
    function Transform(matrix :Matrix) :Status;
    function Flatten(matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
    function Widen( const pen :Pen; matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
    function Outline( matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
    function Warp(const destPoints :PointF; count :integer; const srcRect :RectF; matrix :Matrix = nil; warpMode :WarpMode = WarpModePerspective; flatness :single = FlatnessDefault) :Status;
    function GetPointCount :integer;
    function GetPathTypes (out types; count :integer) :Status;
    function GetPathPoints (out points :PointF; count :integer) :Status; overload;
    function GetPathPoints (out points :Point; count :integer) :Status; overload;
    function GetLastStatus :Status;
    function IsVisible (const point :PointF; g :Graphics = nil) :BOOL; overload;
    function IsVisible (x,y :single; g :Graphics = nil) :BOOL; overload;
    function IsVisible (const point :Point; g :Graphics = nil) :BOOL; overload;
    function IsVisible (x,y :integer; g :Graphics = nil) :BOOL; overload;
    function IsOutlineVisible (const point :PointF; const pen :Pen; g :Graphics = nil) :BOOL; overload;
    function IsOutlineVisible (x,y :single; const pen :Pen; g :Graphics = nil) :BOOL; overload;
    function IsOutlineVisible (const point :Point; pen :Pen; g :Graphics = nil) :BOOL; overload;
    function IsOutlineVisible (x,y :integer; pen :Pen; g :Graphics = nil) :BOOL; overload;
end;

GraphicsPathIterator = class (GdiplusBase)
  protected
    nativeIterator :GpPathIterator;
    lastResult :Status;
    procedure SetNativeIterator (nativeIterator :GpPathIterator);
    function SetStatus (status :Status) :Status;
  public
    constructor Create (const path :GraphicsPath); reintroduce;
    destructor Destroy; override;
    function NextSubpath(out startIndex,endIndex :integer; out isClosed :BOOL) :integer; overload;
    function NextSubpath(out path :GraphicsPath; out isClosed :BOOL) :integer; overload;
    function NextPathType(out pathtype :byte; out startIndex,endIndex :integer) :integer;
    function NextMarker(out startIndex,endIndex :integer) :integer; overload;
    function NextMarker(out path :GraphicsPath) :integer; overload;
    function GetCount :integer;
    function GetSubpathCount :integer;
    function HasCurve :BOOL;
    procedure Rewind;
    function Enumerate(out points :PointF; out types; count :integer) :integer;
    function CopyData(out points :PointF; out types; startIndex, endIndex :integer) :integer;
    function GetLastStatus :Status;
end;

PathGradientBrush = class (Brush)
  public
    constructor Create (const points :PointF; count :integer; wrapMode :WrapMode = WrapModeClamp); reintroduce; overload;
    constructor Create (const points :Point; count :integer; wrapMode :WrapMode = WrapModeClamp); reintroduce; overload;
    constructor Create (const path :GraphicsPath); reintroduce; overload;
    function GetCenterColor(out color :Color) :Status;
    function SetCenterColor(const color :Color) :Status;
    function GetPointCount :integer;
    function GetSurroundColorCount :integer;
    function GetSurroundColors(out colors :Color; out count :integer) :Status;
    function SetSurroundColors(const colors :Color; out count :integer) :Status;
    function GetGraphicsPath(out path :GraphicsPath) :Status;
    function SetGraphicsPath(const path :GraphicsPath) :Status;
    function GetCenterPoint(out point :PointF) :Status; overload;
    function GetCenterPoint(out point :Point) :Status; overload;
    function SetCenterPoint(const point :PointF) :Status; overload;
    function SetCenterPoint(const point :Point) :Status; overload;
    function GetRectangle(out rect :RectF) :Status; overload;
    function GetRectangle(out rect :Rect) :Status; overload;
    function SetGammaCorrection(useGammaCorrection :BOOL) :Status;
    function GetGammaCorrection :BOOL;
    function GetBlendCount :integer;
    function GetBlend(out blendFactors,blendPositions :single; count :integer) :Status;
    function SetBlend(var blendFactors,blendPositions :single; count :integer) :Status;
    function GetInterpolationColorCount :integer;
    function SetInterpolationColors(var presetColors :Color; var blendPositions :single; count :integer) :Status;
    function GetInterpolationColors(var presetColors :Color; out blendPositions :single; count :integer) :Status;
    function SetBlendBellShape(focus :single; scale :single = 1.0) :Status;
    function SetBlendTriangularShape( focus :single; scale :single = 1.0) :Status;
    function GetTransform(out matrix :Matrix) :Status;
    function SetTransform (const matrix :Matrix) :Status;
    function ResetTransform :Status;
    function MultiplyTransform(const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function TranslateTransform(dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function ScaleTransform(sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function RotateTransform(angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
    function GetFocusScales(out xScale,yScale :single) :Status;
    function SetFocusScales(xScale,yScale :single) :Status;
    function GetWrapMode :WrapMode;
    function SetWrapMode (wrapMode :WrapMode) :Status;
end;


//============================================================================
// *** GdiPlusLineCaps.h
//============================================================================

AdjustableArrowCap = class (CustomLineCap)
  public
    constructor Create(
        height,
        width :single;
        isFilled :BOOL = TRUE);
    function SetHeight (height :single) :Status;
    function GetHeight :single;
    function SetWidth(width :single) :Status;
    function GetWidth :single;
    function SetMiddleInset(middleInset :single) :Status;
    function GetMiddleInset :single;
    function SetFillState(isFilled :BOOL) :Status;
    function IsFilled :BOOL;
end;


//============================================================================
// *** GdiPlusImageCodec.h
//============================================================================

//--------------------------------------------------------------------------
// Codec Management APIs
//--------------------------------------------------------------------------

function GetImageDecodersSize (out numDecoders,size :UINT) :Status;
function GetImageDecoders (numDecoders,size :UINT; out decoders :ImageCodecInfo) :Status;
function GetImageEncodersSize (out numEncoders,size :UINT) :Status;
function GetImageEncoders (numEncoders,size :UINT; out encoders :ImageCodecInfo) :Status;


//============================================================================
// *** GdiPlusFlat.h
//============================================================================

//----------------------------------------------------------------------------
// GraphicsPath methods
//----------------------------------------------------------------------------

function GdipCreatePath (brushmode :GpFillMode; var path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreatePath2 (const p :GpPointF; const b :pointer; i :integer; brushmode :GpFillMode; var path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreatePath2I (const p :GpPoint; const b :pointer; i :integer; brudhmode :GpFillMode; var path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipClonePath (path :GpPath; var clonePath :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeletePath (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetPath (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPointCount (path :GpPath; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathTypes (path :GpPath; out types; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathPoints (path :GpPath; var points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathPointsI (path :GpPath; var points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathFillMode (path :GpPath; var fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathFillMode (path :GpPath; fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathData (path :GpPath; var pathData :GpPathData) :GpStatus; stdcall; external GdiPlusLib;
function GdipStartPathFigure (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipClosePathFigure (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipClosePathFigures (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathMarker (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipClearPathMarkers (path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipReversePath(path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathLastPoint (path :GpPath; var lastpoint :GpPointF) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathLine (path :GpPath; x1,y1,s2,y2 :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathLine2 (path :GpPath; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathArc (path :GpPath; x,y,width,height,startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathBezier (path :GpPath; x1,y1,x2,y2,x3,y3,x4,y4 :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathBeziers (path :GpPath; const points :GpPointF; const count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurve (path :GpPath; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurve2 (path :GpPath; const points :GpPointF; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurve3 (path :GpPath; const points :GpPointF; count :integer; offset,numberOfSegments :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathClosedCurve (path :GpPath; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathClosedCurve2 (path :GpPath; const points :GpPointF; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathRectangle (path :GpPath; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathRectangles (path :GpPath; const rectf :GpRectF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathEllipse (path :GpPath; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathPie (path :GpPath; x,y,width,height,startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathPolygon (path :GpPath; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathPath (path :GpPath; const addingPath :GpPath; connect :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathString (path :GpPath; const str :pwidechar; length :integer; const family :GpFontFamily; style :integer; emSize :single; const layoutrect :RectF; const format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathStringI (path :GpPath; const str :pwidechar; length :integer; const family :GpFontFamily; style :integer; emSize :single; const layoutrect :Rect; const format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathLineI (path :GpPath; x1,y1,x2,y2 :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathLine2I (path :GpPath; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathArcI (path :GpPath; x,y,width,height,startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathBezierI (path :GpPath; x1,y1,x2,y2,x3,y3,x4,y4 :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathBeziersI (path :GpPath; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurveI (path :GpPath; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurve2I (path :GpPath; const points :GpPoint; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathCurve3I (path :GpPath; const points :GpPoint; count,offset,numberOfSegments :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathClosedCurveI (path :GpPath; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathClosedCurve2I (path :GpPath; const points :GpPoint; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathRectangleI (path :GpPath; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathRectanglesI (path :GpPath; const rects :GpRect; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathEllipseI (path :GpPath; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathPieI (path :GpPath; x,y,width,height :integer; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipAddPathPolygonI (path :GpPath; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFlattenPath (path :GpPath; matrix :GpMatrix; flatness :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipWindingModeOutline (path :GpPath; matrix :GpMatrix; flatness :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipWidenPath (nativePath :GpPath; pen :GpPen; matrix :GpMatrix; flatness :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipWarpPath (path :GpPath; matrix :GpMatrix; const points :GpPointF; count :integer; srcx,srcy,srcwidth,srcheight :single; warpmode :WarpMode; flatness :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformPath (path :GpPath; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathWorldBounds (path :GpPath; var bounds :GpRectF; const matrix :GpMatrix; const pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathWorldBoundsI (path :GpPath; var bounds :GpRect; const matrix :GpMatrix; const pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisiblePathPoint (path :GpPath; x,y :single; grphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisiblePathPointI (path :GpPath; x,y :integer; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsOutlineVisiblePathPoint (path :GpPath; x,y :single; pen :GpPen; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsOutlineVisiblePathPointI (path :GpPath; x,y :integer; pen :GpPen; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Path Enumeration methods
//----------------------------------------------------------------------------

function GdipCreatePathIter (var iterator :GpPathIterator; path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeletePathIter (iterator :GpPathIterator) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterNextSubpath (iterator :GpPathIterator; var resultCount,startIndex,endIndex :integer; var isClosed :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterNextSubpathPath (iterator :GpPathIterator; var resultCount :integer; path :GpPath; var isClosed :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterNextPathType (iterator :GpPathIterator; var resultCount :integer; var pathType :BYTE; var startIndex,endIndex :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterNextMarker (iterator :GpPathIterator; var resultCount,startIndex,endIndex :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterNextMarkerPath (iterator :GpPathIterator; var resultCount :integer; path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterGetCount (iterator :GpPathIterator; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterGetSubpathCount (iterator :GpPathIterator; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterIsValid (iterator :GpPathIterator; var valid :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterHasCurve (iterator :GpPathIterator; var hasCurve :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterRewind (iterator :GpPathIterator) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterEnumerate (iterator :GpPathIterator; var resultCount :integer; var points :GpPointF; out types; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipPathIterCopyData (iterator :GpPathIterator; var resultCount :integer; var points :GpPointF; out types; startIndex,endIndex :integer) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Matrix methods
//----------------------------------------------------------------------------

function GdipCreateMatrix (var matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMatrix2 (m11,m12,m21,m22,dx,dy :single; var matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMatrix3 (const rect :GpRectF; const dstplg :GpPointF; var matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMatrix3I (const rect :GpRect; const dstplg :GpPoint; var matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneMatrix (matrix :GpMatrix; var cloneMatrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteMatrix (matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetMatrixElements (matrix :GpMatrix; m11,m12,m21,m22,dx,dy :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyMatrix (matrix,matrix2 :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateMatrix (matrix :GpMatrix; offsetX,offsetY :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScaleMatrix (matrix :GpMatrix; scaleX,scaleY :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotateMatrix (matrix :GpMatrix; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipShearMatrix (matrix :GpMatrix; shearX,shearY :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipInvertMatrix (matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformMatrixPoints (matrix :GpMatrix; var pts :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformMatrixPointsI (matrix :GpMatrix; var pts :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipVectorTransformMatrixPoints (matrix :GpMatrix; var ptr :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipVectorTransformMatrixPointsI (matrix :GpMatrix; var pts :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMatrixElements (const matrix :GpMatrix; var matrixOut :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsMatrixInvertible (const matrix :GpMatrix; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsMatrixIdentity (const matrix :GpMatrix; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsMatrixEqual (const matrix,matrix2 :GpMatrix; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Region methods
//----------------------------------------------------------------------------

function GdipCreateRegion (var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateRegionRect (const rect :GpRectF; var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateRegionRectI (const rect :GpRect; var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateRegionPath (path :GpPath; var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateRegionRgnData (regiondata :pointer; size :integer; var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateRegionHrgn (AhRgn :HRGN; var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneRegion (region :GpRegion; var region2 :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteRegion (region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetInfinite (region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetEmpty (region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipCombineRegionRect (region :GpRegion; const rect :GpRectF; cm :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipCombineRegionRectI (region :GpRegion; const rect :GpRect; cm :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipCombineRegionPath (region :GpRegion; path :GpPath; cm :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipCombineRegionRegion (region,region2 :GpRegion; cm :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateRegion (region :GpRegion; dx,dy :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateRegionI (region :GpRegion; dx,dy :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformRegion (region :GpRegion; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionBounds (region :GpRegion; graphics :GpGraphics; var rect :GpRectF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionBoundsI(region :GpRegion; graphics :GpGraphics; var rect :GpRect) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionHRgn (region :GpRegion; graphics :GpGraphics; var hRgn :HRGN) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsEmptyRegion (region :GpRegion; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsInfiniteRegion (region :GpRegion; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsEqualRegion (region,region2 :GpRegion; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionDataSize (region :GpRegion; var buffersize :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionData (region :GpRegion; var buffer; bufferSize :UINT; var sizeFilled :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRegionPoint (region :GpRegion; x,y :single; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRegionPointI (region :GpRegion; x,y :integer; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRegionRect (region :GpRegion; x,y,width,height :single; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRegionRectI (region :GpRegion; x,y,width,height :integer; graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionScansCount (region :GpRegion; var count :UINT; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionScans (region :GpRegion; var rects :GpRectF; var count :integer; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRegionScansI (region :GpRegion; var rects :GpRect; var count :integer; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Brush methods
//----------------------------------------------------------------------------

function GdipCloneBrush (brush :GpBrush; var clonebrush :GpBrush) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteBrush (brush :GpBrush) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetBrushType (brush :GpBrush; var bt :GpBrushType) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Hatch Brush methods
//----------------------------------------------------------------------------

function GdipCreateHatchBrush (hatchstyle :GpHatchStyle; forecol,backcol :ARGB; var brush :GpHatch) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetHatchStyle (brush :GpHatch; var hatchstyle :GpHatchStyle) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetHatchForegroundColor (brush :GpHatch; var forecol :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetHatchBackgroundColor (brush :GpHatch; var backcol :ARGB) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Texture Brush methods
//----------------------------------------------------------------------------

function GdipCreateTexture (image :GpImage; wrapmode :GpWrapMode; var texture :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateTexture2 (image :GpImage; wrapmode :GpWrapMode; x,y,width,height :single; var texture :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateTextureIA (image :GpImage; const imageAttributes :GpImageAttributes; x,y,width,height :single; var texture :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateTexture2I (image :GpImage; wrapmode :GpWrapMode; x,y,width,height :integer; var texture :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateTextureIAI (image :GpImage; const imageAttributes :GpImageAttributes; x,y,width,height :integer; var texture :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextureTransform (brush :GpTexture; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetTextureTransform (brush :GpTexture; const matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetTextureTransform (brush :GpTexture) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyTextureTransform (brush :GpTexture; const matrix :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateTextureTransform (brush :GpTexture; dx,dy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScaleTextureTransform (brush :GpTexture; sx,sy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotateTextureTransform (brush :GpTexture; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetTextureWrapMode (brush :GpTexture; wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextureWrapMode (brush :GpTexture; var wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextureImage (brush :GpTexture; var image :GpImage) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Solid Brush methods
//----------------------------------------------------------------------------

function GdipCreateSolidFill (color :ARGB; var brush :GpSolidFill) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetSolidFillColor (brush :GpSolidFill; color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetSolidFillColor (brush :GpSolidFill; var color :ARGB) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// LineBrush methods
//----------------------------------------------------------------------------

function GdipCreateLineBrush (const point1,point2 :GpPointF; color1,color2 :ARGB; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateLineBrushI (const point1,point2 :GpPoint; color1,color2 :ARGB; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateLineBrushFromRect (const rect :GpRectF; color1,color2 :ARGB; mode :LinearGradientMode; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateLineBrushFromRectI (const rect :GpRect; color1,color2 :ARGB; mode :LinearGradientMode; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateLineBrushFromRectWithAngle (const rect :GpRectF; color1,color2 :ARGB; angle :single; isAngleScalable :BOOL; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateLineBrushFromRectWithAngleI (const rect :GpRect; color1,color2 :ARGB; angle :single; isAngleScalable :BOOL; wrapmode :GpWrapMode; var lineGradient :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineColors (brush :GpLineGradient; color1,color2 :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineColors (brush :GpLineGradient; var colors :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineRect (brush :GpLineGradient; var rect :GpRectF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineRectI (brush :GpLineGradient; var rect :GpRect) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineGammaCorrection (brush :GpLineGradient; useGammaCorrection :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineGammaCorrection (brush :GpLineGradient; var useGammaCorrection :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineBlendCount (brush :GpLineGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineBlend (brush :GpLineGradient; var blend,positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineBlend (brush :GpLineGradient; var blend,positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLinePresetBlendCount (brush :GpLineGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLinePresetBlend (brush :GpLineGradient; var blend :ARGB; var positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLinePresetBlend (brush :GpLineGradient; var blend :ARGB; var positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineSigmaBlend (brush :GpLineGradient; focus,scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineLinearBlend (brush :GpLineGradient; focus,scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineWrapMode (brush :GpLineGradient; wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineWrapMode (brush :GpLineGradient; wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineTransform (brush :GpLineGradient; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLineTransform (brush :GpLineGradient; const matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetLineTransform (brush :GpLineGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyLineTransform (brush :GpLineGradient; const matrix :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateLineTransform (brush :GpLineGradient; dx,dy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScaleLineTransform (brush :GpLineGradient; sx,sy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotateLineTransform (brush :GpLineGradient; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipSetLinePoints (brush :GpLineGradient; const point1,point2 :GpPointF) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetLinePointsI (brush :GpLineGradient; const point1,point2 :GpPoint) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLinePoints (brush :GpLineGradient; var points :GpPointF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLinePointsI (brush :GpLineGradient; var points :GpPoint) :GpStatus; stdcall; external GdiPlusLib;
}
//----------------------------------------------------------------------------
// PathGradient Brush
//----------------------------------------------------------------------------

function GdipCreatePathGradient (const points :GpPointF; count :integer; wrapmode :GpWrapMode; var polyGradient :GpPathGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreatePathGradientI (const points :GpPoint; count :integer; wrapmode :GpWrapMode; var polyGradient :GpPathGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreatePathGradientFromPath (const path :GpPath; var polyGradient :GpPathGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientCenterColor (brush :GpPathGradient; var colors :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientCenterColor (brush :GpPathGradient; colors :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientSurroundColorsWithCount (brush :GpPathGradient; var color :ARGB; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientSurroundColorsWithCount (brush :GpPathGradient; const color :ARGB; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientPath (brush :GpPathGradient; path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientPath (brush :GpPathGradient; const path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientCenterPoint (brush :GpPathGradient; var points :GpPointF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientCenterPointI (brush :GpPathGradient; var points :GpPoint) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientCenterPoint (brush :GpPathGradient; const points :GpPointF) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientCenterPointI (brush :GpPathGradient; const points :GpPoint) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientRect (brush :GpPathGradient; var rect :GpRectF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientRectI (brush :GpPathGradient; var rect :GpRect) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientPointCount (brush :GpPathGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientSurroundColorCount (brush :GpPathGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientGammaCorrection (brush :GpPathGradient; useGammaCorrection :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientGammaCorrection (brush :GpPathGradient; var useGammaCorrection :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientBlendCount (brush :GpPathGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientBlend (brush :GpPathGradient; var blend,positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientBlend (brush :GpPathGradient; var blend,positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientPresetBlendCount (brush :GpPathGradient; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientPresetBlend (brush :GpPathGradient; var blend :ARGB; var positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientPresetBlend (brush :GpPathGradient; var blend :ARGB; var positions :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientSigmaBlend (brush :GpPathGradient; focus,scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientLinearBlend (brush :GpPathGradient; focus,scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientWrapMode (brush :GpPathGradient; var wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientWrapMode (brush :GpPathGradient; wrapmode :GpWrapMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientTransform (brush :GpPathGradient; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientTransform (brush :GpPathGradient; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetPathGradientTransform (brush :GpPathGradient) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyPathGradientTransform (brush :GpPathGradient; const matrix :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslatePathGradientTransform (brush :GpPathGradient; dx,dy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScalePathGradientTransform (brush :GpPathGradient; sx,sy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotatePathGradientTransform (brush :GpPathGradient; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPathGradientFocusScales (brush :GpPathGradient; var xScale,yScale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPathGradientFocusScales (brush :GpPathGradient; xScale,yScale :single) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Pen methods
//----------------------------------------------------------------------------

function GdipCreatePen1 (color :ARGB; width :single; u :GpUnit; var pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreatePen2 (brush :GpBrush; width :single; u :GpUnit; var pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipClonePen (pen :GpPen; var clonepen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeletePen (pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenWidth (pen :GpPen; width :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenWidth (pen :GpPen; var width :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenUnit (pen :GpPen; u :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenUnit (pen :GpPen; u :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenLineCap197819 (pen :GpPen; startCap, endCap :GpLineCap; dashCap :GpDashCap) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipSetPenLineCap (pen :GpPen; startCap,endCap :GpLineCap; dashCap :GpDashCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenDashCap (pen :GpPen; dashCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashCap (pen :GpPen; var dashCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
}
function GdipSetPenStartCap (pen :GpPen; startCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenEndCap (pen :GpPen; endCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenDashCap197819 (pen :GpPen; dashCap :GpDashCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenStartCap (pen :GpPen; var startCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenEndCap (pen :GpPen; var endCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashCap197819 (pen :GpPen; var dashCap :GpDashCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenLineJoin (pen :GpPen; lineJoin :GpLineJoin) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenLineJoin (pen :GpPen; var lineJoin :GpLineJoin) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenCustomStartCap (pen :GpPen; customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenCustomStartCap (pen :GpPen; var customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenCustomEndCap (pen :GpPen; customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenCustomEndCap (pen :GpPen; var customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenMiterLimit (pen :GpPen; miterLimit :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenMiterLimit (pen :GpPen; var miterLimit :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenMode (pen :GpPen; penMode :GpPenAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenMode (pen :GpPen; var penMode :GpPenAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenTransform (pen :GpPen; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenTransform (pen :GpPen; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetPenTransform (pen :GpPen) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyPenTransform (pen :GpPen; const matrix :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslatePenTransform (pen :GpPen; dx,dy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScalePenTransform (pen :GpPen; sx,sy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotatePenTransform (pen :GpPen; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenColor (pen :GpPen; color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenColor (pen :GpPen; var color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenBrushFill (pen :GpPen; brush :GpBrush) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenBrushFill (pen :GpPen; var brush :GpBrush) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenFillType (pen :GpPen; var penType :GpPenType) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashStyle (pen :GpPen; var dashStyle :GpDashStyle) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenDashStyle (pen :GpPen; dashStyle :GpDashStyle) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashOffset (pen :GpPen; var offset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenDashOffset (pen :GpPen; offset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashCount (pen :GpPen; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenDashArray (pen :GpPen; var dash :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenDashArray (pen :GpPen; var dash :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenCompoundCount (pen :GpPen; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPenCompoundArray (pen :GpPen; var dash :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPenCompoundArray (pen :GpPen; var dash :single; count :integer) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// CustomLineCap methods
//----------------------------------------------------------------------------

function GdipCreateCustomLineCap (fillPath,strockePath :GpPath; baseCap :GpLineCap; baseInset :single; var customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteCustomLineCap (customCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneCustomLineCap (customCap :GpCustomLineCap; var cloneCap :GpCustomLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapType (customCap :GpCustomLineCap; var capType :CustomLineCapType) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCustomLineCapStrokeCaps (customCap :GpCustomLineCap; startCap,endCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapStrokeCaps (customCap :GpCustomLineCap; var startCap,endCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCustomLineCapStrokeJoin (customCap :GpCustomLineCap; lineJoin :GpLineJoin) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapStrokeJoin (customCap :GpCustomLineCap; var lineJoin :GpLineJoin) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCustomLineCapBaseCap (customCap :GpCustomLineCap; baseCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapBaseCap (customCap :GpCustomLineCap; var baseCap :GpLineCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCustomLineCapBaseInset (customCap :GpCustomLineCap; inset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapBaseInset (customCap :GpCustomLineCap; var inset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCustomLineCapWidthScale (customCap :GpCustomLineCap; widthScale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCustomLineCapWidthScale (customCap :GpCustomLineCap; var widthScale :single) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// AdjustableArrowCap methods
//----------------------------------------------------------------------------

function GdipCreateAdjustableArrowCap (height,width :single; isFilled :BOOL; var cap :GpAdjustableArrowCap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetAdjustableArrowCapHeight (cap :GpAdjustableArrowCap; height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetAdjustableArrowCapHeight (cap :GpAdjustableArrowCap; var height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetAdjustableArrowCapWidth (cap :GpAdjustableArrowCap; width :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetAdjustableArrowCapWidth (cap :GpAdjustableArrowCap; var width :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetAdjustableArrowCapMiddleInset (cap :GpAdjustableArrowCap; middleInset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetAdjustableArrowCapMiddleInset (cap :GpAdjustableArrowCap; var middleInset :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetAdjustableArrowCapFillState (cap :GpAdjustableArrowCap; fillState :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetAdjustableArrowCapFillState (cap :GpAdjustableArrowCap; var fillState :BOOL) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Image methods
//----------------------------------------------------------------------------

function GdipLoadImageFromStream (stream :IStream; var image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipLoadImageFromFile (const filename :pwidechar; var image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipLoadImageFromStreamICM (stream :IStream; var image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipLoadImageFromFileICM (const filename :pwidechar; var image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneImage (image :GpImage; var cloneImage :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipDisposeImage (image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
function GdipSaveImageToFile (image :GpImage; const filename :pwidechar; const clsidEncoder :TCLSID; const encoderParams :EncoderParameters) :GpStatus; stdcall; external GdiPlusLib;
function GdipSaveImageToStream (image :GpImage; stream :IStream; const clsidEncoder :TCLSID; const encoderParams :EncoderParameters) :GpStatus; stdcall; external GdiPlusLib;
function GdipSaveAdd (image :GpImage; const encoderParams :EncoderParameters) :GpStatus; stdcall; external GdiPlusLib;
function GdipSaveAddImage (image,newImage :GpImage; const encoderParams :EncoderParameters) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageGraphicsContext (image :GpImage; var graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageBounds (image :GpImage; var srcRect :GpRectF; var srcUnit :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageDimension (image :GpImage; var width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageType (image :GpImage; imageType :ImageType) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageWidth (image :GpImage; var width :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageHeight (image :GpImage; var height :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageHorizontalResolution (image :GpImage; var resolution :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageVerticalResolution (image :GpImage; var resolution :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageFlags (image :GpImage; var flags :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageRawFormat (image :GpImage; var format :TGUID) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImagePixelFormat (image :GpImage; var format :PixelFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageThumbnail (image :GpImage; thumbWidth,thumbHeight :UINT; var thumbImage :GpImage; callback :GetThumbnailImageAbort; var callbackData) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetEncoderParameterListSize (image :GpImage; const clsidEncoder :TCLSID; var size :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetEncoderParameterList (image :GpImage; const clsidEncoder :TCLSID; size :UINT; var buffer :EncoderParameters) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageGetFrameDimensionsCount (image :GpImage; var count :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageGetFrameDimensionsList (image :GpImage; var dimensionIDs :TGUID; count :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageGetFrameCount (image :GpImage; const dimensionID :TGUID; var count :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageSelectActiveFrame (image :GpImage; const dimensionID :TGUID; frameIndex :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageRotateFlip (image :GpImage; rfType :RotateFlipType) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImagePalette (image :GpImage; var palette :ColorPalette; size :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImagePalette (image :GpImage; var palette :ColorPalette) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImagePaletteSize (image :GpImage; var size :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPropertyCount (image :GpImage; var numOfProperty :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPropertyIdList (image :GpImage; numOfProperty :UINT; var list :TPROPID) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPropertyItemSize (image :GpImage; propid :TPROPID; var size :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPropertyItem (image :GpImage; propId :TPROPID; propSize :UINT; var buffer :PropertyItem) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPropertySize (image :GpImage; var totalBufferSize,numProperties :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetAllPropertyItems (image :GpImage; totalBufferSize,numProperties :UINT; var allItems :PropertyItem) :GpStatus; stdcall; external GdiPlusLib;
function GdipRemovePropertyItem (image :GpImage; propId :TPROPID) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPropertyItem (image :GpImage; const item :PropertyItem) :GpStatus; stdcall; external GdiPlusLib;
function GdipImageForceValidation (image :GpImage) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipGetImageLayout (image :GpImage; var layout :ImageLayout) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageLayout (image :GpImage; var layout :ImageLayout) :GpStatus; stdcall; external GdiPlusLib;
}
//----------------------------------------------------------------------------
// Bitmap methods
//----------------------------------------------------------------------------

function GdipCreateBitmapFromStream (stream :IStream; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromFile (const filename :pwidechar; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromStreamICM (stream :IStream; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromFileICM (const filename :pwidechar; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromScan0 (width,height,stride :integer; format :PixelFormat; var scan0 :BYTE; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromGraphics (width,height :integer; target :GpGraphics; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;

// Uncomment if a DirectDraw unit is available
//function GdipCreateBitmapFromDirectDrawSurface (surface :IDirectDrawSurface7; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;

function GdipCreateBitmapFromGdiDib (const gdiBitmapInfo :TBITMAPINFO; var gdiBitmapData; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromHBITMAP (hbm :HBITMAP; hpal :HPALETTE; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateHBITMAPFromBitmap (bitmap :GpBitmap; var hbmReturn :HBITMAP; background :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromHICON (icon :HICON; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateHICONFromBitmap (bitmap :GpBitmap; var hbmReturn :HICON) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateBitmapFromResource (hInst :THandle; const lpBitmapName :pwidechar; var bitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneBitmapArea (x,y,width,height :single; format :PixelFormat; srcBitmap :GpBitmap; var dstBitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneBitmapAreaI (x,y,width,height :integer; format :PixelFormat; srcBitmap :GpBitmap; var dstBitmap :GpBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipBitmapLockBits (bitmap :GpBitmap; const rect :GpRect; flags :UINT; format :PixelFormat; var lockedBitmapData :BitmapData) :GpStatus; stdcall; external GdiPlusLib;
function GdipBitmapUnlockBits (bitmap :GpBitmap; var lockedBitmapData :BitmapData) :GpStatus; stdcall; external GdiPlusLib;
function GdipBitmapGetPixel (bitmap :GpBitmap; x,y :integer; var color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipBitmapSetPixel (bitmap :GpBitmap; x,y :integer; color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipBitmapSetResolution (bitmap :GpBitmap; xdpi,ydpi :single) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// ImageAttributes methods
//----------------------------------------------------------------------------

function GdipCreateImageAttributes (var imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneImageAttributes (imageAttr :GpImageAttributes; var cloneImageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;
function GdipDisposeImageAttributes (imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesToIdentity (imageAttr :GpImageAttributes; colorType :ColorAdjustType) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetImageAttributes (imageAttr :GpImageAttributes; colorType :ColorAdjustType) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesColorMatrix (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; colorMatrix,grayMatrix :PColorMatrix; flags :ColorMatrixFlags) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesThreshold (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; threshold :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesGamma (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; gamma :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesNoOp (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesColorKeys (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; colorlow,colorhigh :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesOutputChannel (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; channelFlags :ColorChannelFlags) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesOutputChannelColorProfile(imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; const colorProfileFilename :pwidechar) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesRemapTable (imageAttr :GpImageAttributes; colorType :ColorAdjustType; enableFlag :BOOL; mapSize :UINT; map :PColorMap) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesWrapMode (imageAttr :GpImageAttributes; wrapmode :GpWrapMode; color :ARGB; clamp :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetImageAttributesICMMode (imageAttr :GpImageAttributes; enableFlag :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageAttributesAdjustedPalette (imageAttr :GpImageAttributes; var colorPalette :ColorPalette; colorType :ColorAdjustType) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Graphics methods
//----------------------------------------------------------------------------

function GdipFlush (graphics :GpGraphics; intention :GpFlushIntention) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFromHDC (hdc :HDC; var graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFromHDC2 (hdc :HDC; hDevice :THandle; var graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFromHWND (hwnd :HWND; var graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFromHWNDICM (hwnd :HWND; var graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteGraphics (graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetDC (graphics :GpGraphics; var hdc :HDC) :GpStatus; stdcall; external GdiPlusLib;
function GdipReleaseDC (graphics :GpGraphics; hdc :HDC) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCompositingMode (graphics :GpGraphics; cmode :CompositingMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCompositingMode (graphics :GpGraphics; var cmode :CompositingMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetRenderingOrigin (graphics :GpGraphics; x,y :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetRenderingOrigin (graphics :GpGraphics; var x,y :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetCompositingQuality (graphics :GpGraphics; cq :CompositingQuality) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCompositingQuality (graphics :GpGraphics; var cq :CompositingQuality) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetSmoothingMode (graphics :GpGraphics; sm :SmoothingMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetSmoothingMode (graphics :GpGraphics; var sm :SmoothingMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPixelOffsetMode (graphics :GpGraphics; pom :PixelOffsetMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPixelOffsetMode (graphics :GpGraphics; var pom :PixelOffsetMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetTextRenderingHint (graphics :GpGraphics; mode :TextRenderingHint) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextRenderingHint (graphics :GpGraphics; var mode :TextRenderingHint) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetTextContrast (graphics :GpGraphics; contrast :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextContrast (graphics :GpGraphics; var contrast :UINT) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipSetTextGammaValue (graphics :GpGraphics; gammaValue :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetTextGammaValue (graphics :GpGraphics; var gammaValue :UINT) :GpStatus; stdcall; external GdiPlusLib;
}
function GdipSetInterpolationMode (graphics :GpGraphics; imode :InterpolationMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetInterpolationMode (graphics :GpGraphics; var imode :InterpolationMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetWorldTransform (graphics :GpGraphics; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetWorldTransform (graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipMultiplyWorldTransform (graphics :GpGraphics; const matrix :GpMatrix; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateWorldTransform (graphics :GpGraphics; dx,dy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipScaleWorldTransform (graphics :GpGraphics; sx,sy :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipRotateWorldTransform (graphics :GpGraphics; angle :single; order :GpMatrixOrder) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetWorldTransform (graphics :GpGraphics; matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetPageTransform (graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPageUnit (graphics :GpGraphics; u :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetPageScale (graphics :GpGraphics; var scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPageUnit (graphics :GpGraphics; u :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetPageScale (graphics :GpGraphics; scale :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetDpiX (graphics :GpGraphics; var dpi :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetDpiY (graphics :GpGraphics; var dpi :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformPoints (graphics :GpGraphics; destSpace,srcSpace :GpCoordinateSpace; var points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipTransformPointsI (graphics :GpGraphics; destSpace,srcSpace :GpCoordinateSpace; var points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetNearestColor (graphics :GpGraphics; var color :ARGB) :GpStatus; stdcall; external GdiPlusLib;

// Create the Win9x Halftone Palette (even on NT) with correct Desktop colors
function GdipCreateHalftonePalette :HPALETTE; stdcall; external GdiPlusLib;

function GdipDrawLine (graphics :GpGraphics; pen :GpPen; x1,y1,x2,y2 :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawLineI (graphics :GpGraphics; pen :GpPen; x1,y1,x2,y2 :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawLines (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawLinesI (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawArc (graphics :GpGraphics; pen :GpPen; x,y,width,height :single; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawArcI (graphics :GpGraphics; pen :GpPen; x,y,width,height :integer; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawBezier (graphics :GpGraphics; pen :GpPen; x1,y1,x2,y2,x3,y3,x4,y4 :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawBezierI (graphics :GpGraphics; pen :GpPen; x1,y1,x2,y2,x3,y3,x4,y4 :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawBeziers (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawBeziersI (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawRectangle (graphics :GpGraphics; pen :GpPen; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawRectangleI (graphics :GpGraphics; pen :GpPen; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawRectangles (graphics :GpGraphics; pen :GpPen; const rects :GpRectF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawRectanglesI (graphics :GpGraphics; pen :GpPen; const rects :GpRect; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawEllipse (graphics :GpGraphics; pen :GpPen; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawEllipseI (graphics :GpGraphics; pen :GpPen; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawPie (graphics :GpGraphics; pen :GpPen; x,y,width,height :single; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawPieI (graphics :GpGraphics; pen :GpPen; x,y,width,height :integer; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawPolygon (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawPolygonI (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawPath (graphics :GpGraphics; pen :GpPen; path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurve (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurveI (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurve2 (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurve2I (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurve3 (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count,offset,numberOfSegments :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCurve3I (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count,offset,numberOfSegments :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawClosedCurve (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawClosedCurveI (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawClosedCurve2 (graphics :GpGraphics; pen :GpPen; const points :GpPointF; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawClosedCurve2I (graphics :GpGraphics; pen :GpPen; const points :GpPoint; count :integer; tension :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGraphicsClear (graphics :GpGraphics; color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillRectangle (graphics :GpGraphics; brush :GpBrush; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillRectangleI (graphics :GpGraphics; brush :GpBrush; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillRectangles (graphics :GpGraphics; brush :GpBrush; const rects :GpRectF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillRectanglesI (graphics :GpGraphics; brush :GpBrush; const rects :GpRect; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPolygon (graphics :GpGraphics; brush :GpBrush; const points :GpPointF; count :integer; fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPolygonI (graphics :GpGraphics; brush :GpBrush; const points :GpPoint; count :integer; fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPolygon2 (graphics :GpGraphics; brush :GpBrush; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPolygon2I (graphics :GpGraphics; brush :GpBrush; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillEllipse (graphics :GpGraphics; brush :GpBrush; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillEllipseI (graphics :GpGraphics; brush :GpBrush; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPie (graphics :GpGraphics; brush :GpBrush; x,y,width,height :single; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPieI (graphics :GpGraphics; brush :GpBrush; x,y,width,height :integer; startAngle,sweepAngle :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillPath (graphics :GpGraphics; brush :GpBrush; path :GpPath) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillClosedCurve (graphics :GpGraphics; brush :GpBrush; const points :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillClosedCurveI (graphics :GpGraphics; brush :GpBrush; const points :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillClosedCurve2 (graphics :GpGraphics; brush :GpBrush; const points :GpPointF; count :integer; tension :single; fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillClosedCurve2I (graphics :GpGraphics; brush :GpBrush; const points :GpPoint; count :integer; tension :single; fillmode :GpFillMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipFillRegion (graphics :GpGraphics; brush :GpBrush; region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImage (graphics :GpGraphics; image :GpImage; x,y :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImageI (graphics :GpGraphics; image :GpImage; x,y :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImageRect (graphics :GpGraphics; image :GpImage; x,y,width,height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImageRectI (graphics :GpGraphics; image :GpImage; x,y,width,height :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePoints (graphics :GpGraphics; image :GpImage; const dstpoints :GpPointF; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePointsI (graphics :GpGraphics; image :GpImage; const dstpoints :GpPoint; count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePointRect (graphics :GpGraphics; image :GpImage; x,y,srcx,srcy,srcwidth,srcheight :single; srcUnit :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePointRectI (graphics :GpGraphics; image :GpImage; x,y,srcx,srcy,srcwidth,srcheight :integer; srcUnit :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImageRectRect (graphics :GpGraphics; image :GpImage; dstx,dsty,dstwidth,dstheight,srcx,srcy,srcwidth,srcheight :single; srcUnit :GpUnit; const imageAttr :GpImageAttributes; callback :DrawImageAbort; var callbackData) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImageRectRectI (graphics :GpGraphics; image :GpImage; dstx,dsty,dstwidth,dstheight,srcx,srcy,srcwidth,srcheight :integer; srcUnit :GpUnit; const imageAttr :GpImageAttributes; callback :DrawImageAbort; var callbackData) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePointsRect (graphics :GpGraphics; image :GpImage; const points :GpPointF; count :integer; srcx,srcy,srcwidth,srcheight :single; srcUnit :GpUnit; const imageAttr :GpImageAttributes; callback :DrawImageAbort; var callbackData) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawImagePointsRectI (graphics :GpGraphics; image :GpImage; const points :GpPoint; count :integer; srcx,srcy,srcwidth,srcheight :integer; srcUnit :GpUnit; const imageAttr :GpImageAttributes; callback :DrawImageAbort; var callbackData) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestPoint(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoint :PointF;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestPointI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoint :Point;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestRect(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destRect :RectF;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestRectI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destRect :Rect;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestPoints(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoints :PointF;
    count :integer;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileDestPointsI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoints :Point;
    count :integer;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestPoint(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoint :PointF;
    const srcRect :RectF;
    srcUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestPointI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoint :Point;
    const scrRect :Rect;
    scrUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestRect(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destRect :RectF;
    const srcRect :RectF;
    scrUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestRectI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destRect :Rect;
    const srcRect :Rect;
    srcUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestPoints(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoints :PointF;
    count :integer;
    const srcRect :RectF;
    scrUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipEnumerateMetafileSrcRectDestPointsI(
    graphics :GpGraphics;
    const metafile :GpMetafile;
    const destPoints :Point;
    count :integer;
    const srcRect :Rect;
    srcUnit :GpUnit;
    callback :EnumerateMetafileProc;
    var callbackData;
    const imageAttr :GpImageAttributes) :GpStatus; stdcall; external GdiPlusLib;

function GdipPlayMetafileRecord(
    const metafile :GpMetafile;
    recordtype :EmfPlusRecordType;
    flags,datasize :UINT;
    var data) :GpStatus; stdcall; external GdiPlusLib;

function GdipSetClipGraphics (graphics :GpGraphics; srcgraphics :GpGraphics; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetClipRect (graphics :GpGraphics; x,y,width,height :single; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetClipRectI (graphics :GpGraphics; x,y,width,height :integer; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetClipPath (graphics :GpGraphics; path :GpPath; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetClipRegion (graphics :GpGraphics; region :GpRegion; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetClipHrgn (graphics :GpGraphics; hRgn :HRGN; cmode :CombineMode) :GpStatus; stdcall; external GdiPlusLib;
function GdipResetClip (graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateClip (graphics :GpGraphics; dx,dy :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipTranslateClipI (graphics :GpGraphics; dx,dy :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetClip (graphics :GpGraphics; region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetClipBounds (graphics :GpGraphics; var rect :GpRectF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetClipBoundsI (graphics :GpGraphics; var rect :GpRect) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsClipEmpty (graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetVisibleClipBounds (graphics :GpGraphics; var rect :GpRectF) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetVisibleClipBoundsI (graphics :GpGraphics; var rect :GpRect) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleClipEmpty (graphics :GpGraphics; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisiblePoint (graphics :GpGraphics; x,y :single; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisiblePointI (graphics :GpGraphics; x,y :integer; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRect (graphics :GpGraphics; x,y,width,height :single; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsVisibleRectI (graphics :GpGraphics; x,y,width,height :integer; var result :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipSaveGraphics (graphics :GpGraphics; var state :GraphicsState) :GpStatus; stdcall; external GdiPlusLib;
function GdipRestoreGraphics (graphics :GpGraphics; state :GraphicsState) :GpStatus; stdcall; external GdiPlusLib;
function GdipBeginContainer (graphics :GpGraphics; const dstrect,srcrect :GpRectF; u :GpUnit; var state :GraphicsContainer) :GpStatus; stdcall; external GdiPlusLib;
function GdipBeginContainerI (graphics :GpGraphics; const dstrect,srcrest :GpRect; u :GpUnit; var state :GraphicsContainer) :GpStatus; stdcall; external GdiPlusLib;
function GdipBeginContainer2 (graphics :GpGraphics; var state :GraphicsContainer) :GpStatus; stdcall; external GdiPlusLib;
function GdipEndContainer (graphics :GpGraphics; state :GraphicsContainer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileHeaderFromWmf (hWmf :HMETAFILE; const apmFileHeader :WmfPlaceableFileHeader; var header :MetafileHeader) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileHeaderFromEmf (hEmf :HENHMETAFILE; var header :MetafileHeader) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileHeaderFromFile (const filename :pwidechar; var header :MetafileHeader) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileHeaderFromStream (stream :IStream; var header :MetafileHeader) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileHeaderFromMetafile (metafile :GpMetafile; var header :MetafileHeader) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetHemfFromMetafile (metafile :GpMetafile; var hEmf :HENHMETAFILE) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateStreamOnFile (const filename :pwidechar; access :UINT; var stream :IStream) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMetafileFromWmf (hWmf :HMETAFILE; deleteWmf :BOOL; const apmFileHeader :WmfPlaceableFileHeader; var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMetafileFromEmf (hEmf :HENHMETAFILE; deleteEmf :BOOL; var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMetafileFromFile (const filename :pwidechar; var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMetafileFromWmfFile (const filename :pwidechar; const apmFileHeader :WmfPlaceableFileHeader; var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateMetafileFromStream (stream :IStream; var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafile(
    refHdc :HDC;
    et :EmfType;
    framerect :PRectF;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafileI(
    refHdc :HDC;
    et :EmfType;
    framerect :PRect;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafileFileName(
    const filename :pwidechar;
    refHdc :HDC;
    et :EmfType;
    framerect :PRectF;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafileFileNameI(
    const filename :pwidechar;
    refHdc :HDC;
    et :EmfType;
    framerect :PRect;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafileStream(
    stream :IStream;
    refHdc :HDC;
    et :EmfType;
    framerect :PRectF;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipRecordMetafileStreamI(
    stream :IStream;
    refHdc :HDC;
    et :EmfType;
    framerect :PRect;
    frameunit :MetafileFrameUnit;
    const description :pwidechar;
    var metafile :GpMetafile) :GpStatus; stdcall; external GdiPlusLib;

function GdipSetMetafileDownLevelRasterizationLimit (metafile :GpMetafile; metafileRasterizationLimitDpi :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetMetafileDownLevelRasterizationLimit (const metafile :GpMetafile; var metafileRasterizationLimitDpi :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageDecodersSize (var numDecoders,size :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageDecoders (numDecoders,size :UINT; var decoders :ImageCodecInfo) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageEncodersSize (var numEncoders,size :UINT) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetImageEncoders (numEncoders,size :UINT; var encoders :ImageCodecInfo) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipAddImageCodec (const codec :ImageCodecInfo) :GpStatus; stdcall; external GdiPlusLib;
function GdipRemoveImageCodec (const codec :ImageCodecInfo) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetGraphicsPixel (graphics :GpGraphics; x,y :single; var color :ARGB) :GpStatus; stdcall; external GdiPlusLib;
}
function GdipComment (graphics :GpGraphics; sizeData :UINT; var data :BYTE) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipGetGraphicsLayout (graphics :GpGraphics; var layout :GraphicsLayout) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetGraphicsLayout (graphics :GpGraphics; layout :GraphicsLayout) :GpStatus; stdcall; external GdiPlusLib;
}
//----------------------------------------------------------------------------
// FontFamily
//----------------------------------------------------------------------------

function GdipCreateFontFamilyFromName (const name :pwidechar; fontcollection :GpFontCollection; var fontFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteFontFamily (fontFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneFontFamily (fontFamily :GpFontFamily; var cloneFontFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetGenericFontFamilySansSerif (var nativeFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetGenericFontFamilySerif (var nativeFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetGenericFontFamilyMonospace (var nativeFamily :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFamilyName (const family :GpFontFamily; name :pwidechar; language :LANGID) :GpStatus; stdcall; external GdiPlusLib;
function GdipIsStyleAvailable (const family :GpFontFamily; style :integer; var IsStyleAvailable :BOOL) :GpStatus; stdcall; external GdiPlusLib;
function GdipFontCollectionEnumerable (fontCollection :GpFontCollection; graphics :GpGraphics; var numFound :integer) :GpStatus; stdcall; external GdiPlusLib;

function GdipFontCollectionEnumerate(
    fontCollection :GpFontCollection;
    numSought :integer;
    var gpfamilies :GpFontFamily;
    var numFound :integer;
    graphics :GpGraphics) :GpStatus; stdcall; external GdiPlusLib;

function GdipGetEmHeight (const family :GpFontFamily; style :integer; var EmHeight :UINT16) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCellAscent (const family :GpFontFamily; style :integer; var CellAscent :UINT16) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetCellDescent (const family :GpFontFamily; style :integer; var CellDescent :UINT16) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLineSpacing (const family :GpFontFamily; style :integer; var LineSpacing :UINT16) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Font
//----------------------------------------------------------------------------

function GdipCreateFontFromDC (hdc :HDC; var font :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFontFromLogfontA (hdc :HDC; const logfont :LOGFONTA; var font :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFontFromLogfontW (hdc :HDC; const logfont :LOGFONTW; var font :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipCreateFont (const fontFamily :GpFontFamily; emSize :single; style :integer; u :GpUnit; var font :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneFont (font :GpFont; var cloneFont :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteFont (font :GpFont) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFamily (font :GpFont; var family :GpFontFamily) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontStyle (font :GpFont; var style :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontSize (font :GpFont; var size :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontUnit (font :GpFont; var u :GpUnit) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontHeight (const font :GpFont; const graphics :GpGraphics; var height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontHeightGivenDPI (const font :GpFont; dpi :single; var height :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLogFontA (font :GpFont; graphics :GpGraphics; var logfont :LOGFONTA) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetLogFontW (font :GpFont; graphics :GpGraphics; var logfont :LOGFONTW) :GpStatus; stdcall; external GdiPlusLib;
function GdipNewInstalledFontCollection (var fontCollection :GpFontCollection) :GpStatus; stdcall; external GdiPlusLib;
function GdipNewPrivateFontCollection (var fontCollection :GpFontCollection) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeletePrivateFontCollection (var  fontCollection :GpFontCollection) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontCollectionFamilyCount (fontCollection :GpFontCollection; var numFound :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetFontCollectionFamilyList (fontcollection :GpFontCollection; numSought :integer; var gpFamilies :GpFontFamily; var numFound :integer) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipInstallFontFile (fontcollection :GpFontCollection; const filename :pwidechar) :GpStatus; stdcall; external GdiPlusLib;
function GdipUninstallFontFile (fontCollection :GpFontCollection; const filename :pwidechar) :GpStatus; stdcall; external GdiPlusLib;
}
function GdipPrivateAddFontFile (fontCollection :GpFontCollection; const filename :pwidechar) :GpStatus; stdcall; external GdiPlusLib;
function GdipPrivateAddMemoryFont (fontCollection :GpFontCollection; var memory; length :integer) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Text
//----------------------------------------------------------------------------

function GdipDrawString(
    graphics :GpGraphics;
    const str :pwidechar; length :integer;
    const font :GpFont;
    const layoutrect :RectF;
    const strformat :GpStringFormat;
    const brush :GpBrush) :GpStatus; stdcall; external GdiPlusLib;

function GdipMeasureString(
    graphics :GpGraphics;
    const str :pwidechar; length :integer;
    const font :GpFont;
    const layoutrect :RectF;
    const strFormat :GpStringFormat;
    var boundingBox :RectF;
    codepointsFitted,linesFilled :pinteger) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipMeasureStringRegion(
    graphics :GpGraphics;
    const str :pwidechar; length :integer;
    const font :GpFont;
    const layoutRect :RectF;
    const strFormat :GpStringFormat;
    firstCharacterIndex,characterCount :integer;
    region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;
}

function GdipMeasureCharacterRanges(
    graphics :GpGraphics;
    const str :pwidechar; length :integer;
    const font :GpFont;
    const layoutRect :RectF;
    const strFormat :GpStringFormat;
    regionCount :integer;
    var region :GpRegion) :GpStatus; stdcall; external GdiPlusLib;

function GdipDrawDriverString(
    graphics :GpGraphics;
    const text :pwidechar;
    length :integer;
    const font :GpFont;
    const brush :GpBrush;
    const positions :PointF;
    flags :integer;
    const matrix :GpMatrix) :GpStatus; stdcall; external GdiPlusLib;

function GdipMeasureDriverString(
    graphics :GpGraphics;
    const text :pwidechar;
    length :integer;
    const font :GpFont;
    const positions :PointF;
    flags :integer;
    const matrix :GpMatrix;
    var boundingBox :RectF) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipDriverStringPointToCodepoint(
    graphics :GpGraphics;
    const text :pwidechar;
    length :integer;
    const font :GpFont;
    const positions :PointF;
    flags :integer;
    matrix :GpMatrix;
    const hits :PointF;
    var index :integer;
    var rightEdge :BOOL;
    var distance :single) :GpStatus; stdcall; external GdiPlusLib;
}
//----------------------------------------------------------------------------
// String format APIs
//----------------------------------------------------------------------------

function GdipCreateStringFormat (formatAttributes :integer; language :LANGID; var format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipStringFormatGetGenericDefault (var format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipStringFormatGetGenericTypographic (var format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteStringFormat (format :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipCloneStringFormat (const format :GpStringFormat; var newFormat :GpStringFormat) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatFlags (format :GpStringFormat; flags :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatFlags (const format :GpStringFormat; var flags :integer) :GpStatus; stdcall; external GdiPlusLib;
{
function GdipSetStringFormatLineSpacing (format :GpStringFormat; amount :single; method :LineSpacing) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatLineSpacingAmount (const format :GpStringFormat; var amount :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatLineSpacingMethod (const format :GpStringFormat; var method :LineSpacing) :GpStatus; stdcall; external GdiPlusLib;
}
function GdipSetStringFormatAlign (format :GpStringFormat; align :StringAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatAlign (const format :GpStringFormat; var align :StringAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatLineAlign (format :GpStringFormat; align :StringAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatLineAlign (const format :GpStringFormat; var align :StringAlignment) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatTrimming (format :GpStringFormat; trimming :StringTrimming) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatTrimming (const format :GpStringFormat; var trimming :StringTrimming) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatHotkeyPrefix (format :GpStringFormat; hotkeyPrefix :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatHotkeyPrefix (const format :GpStringFormat; var hotkeyPrefix :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatTabStops (format :GpStringFormat; firstTabOffset :single; count :integer; var tabStops :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatTabStops (const format :GpStringFormat; count :integer; var firstTabOffset,tabStops :single) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatTabStopCount (const format :GpStringFormat; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatDigitSubstitution (format :GpStringFormat; language :LANGID; substitute :StringDigitSubstitute) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatDigitSubstitution (const format :GpStringFormat; var language :LANGID; var substitute :StringDigitSubstitute) :GpStatus; stdcall; external GdiPlusLib;
function GdipGetStringFormatMeasurableCharacterRangeCount (const format :GpStringFormat; var count :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipSetStringFormatMeasurableCharacterRanges (format :GpStringFormat; rangeCount :integer; var ranges :CharacterRange) :GpStatus; stdcall; external GdiPlusLib;

//----------------------------------------------------------------------------
// Cached Bitmap APIs
//----------------------------------------------------------------------------

function GdipCreateCachedBitmap (bitmap :GpBitmap; graphics :GpGraphics; var cachedBitmap :GpCachedBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipDeleteCachedBitmap (cachedBitmap :GpCachedBitmap) :GpStatus; stdcall; external GdiPlusLib;
function GdipDrawCachedBitmap (graphics :GpGraphics; cachedBitmap :GpCachedBitmap; x,y :integer) :GpStatus; stdcall; external GdiPlusLib;
function GdipEmfToWmfBits (hemf :HENHMETAFILE; cbData16 :UINT; pData16 :pointer; iMapMode,eFlags :integer) :UINT; stdcall; external GdiPlusLib;


//============================================================================
// Aliased types to reduce conflicts.
//============================================================================

type

  // Records Aliases

  GdipColor   = Color;

  GdipSizeF   = SizeF;
  GdipSize    = Size;
  GdipPointF  = PointF;
  GdipPoint   = Point;
  GdipRectF   = RectF;
  GdipRect    = Rect;

  PGdipSizeF  = ^GdipSizeF;
  PGdipSize   = ^GdipSize;
  PGdipPointF = ^GdipPointF;
  PGdipPoint  = ^GdipPoint;
  PGdipRectF  = ^GdipRectF;
  PGdipRect   = ^GdipRect;

  // Classes Aliases

  TGdipMatrix                  = Matrix;
  TGdipRegion                  = Region;
  TGdipFontFamily              = FontFamily;
  TGdipFont                    = Font;
  TGdipFontCollection          = FontCollection;
  TGdipInstalledFontCollection = InstalledFontCollection;
  TGdipPrivateFontCollection   = PrivateFontCollection;
  TGdipImage                   = Image;
  TGdipBitmap                  = Bitmap;
  TGdipCustomLineCap           = CustomLineCap;
  TGdipCachedBitmap            = CachedBitmap;
  TGdipBrush                   = Brush;
  TGdipSolidBrush              = SolidBrush;
  TGdipTextureBrush            = TextureBrush;
  TGdipLinearGradientBrush     = LinearGradientBrush;
  TGdipHatchBrush              = HatchBrush;
  TGdipImageAttributes         = ImageAttributes;
  TGdipMetafile                = Metafile;
  TGdipPen                     = Pen;
  TGdipStringFormat            = StringFormat;
  TGdipGraphics                = Graphics;
  TGdipGraphicsPath            = GraphicsPath;
  TGdipGraphicsPathIterator    = GraphicsPathIterator;
  TGdipPathGradientBrush       = PathGradientBrush;
  TGdipAdjustableArrowCap      = AdjustableArrowCap;

  // Short ones (use Gp version for record)

  GMatrix                  = Matrix;
  GRegion                  = Region;
  GFontFamily              = FontFamily;
  GFont                    = Font;
  GFontCollection          = FontCollection;
  GInstalledFontCollection = InstalledFontCollection;
  GPrivateFontCollection   = PrivateFontCollection;
  GImage                   = Image;
  GBitmap                  = Bitmap;
  GCustomLineCap           = CustomLineCap;
  GCachedBitmap            = CachedBitmap;
  GBrush                   = Brush;
  GSolidBrush              = SolidBrush;
  GTextureBrush            = TextureBrush;
  GLinearGradientBrush     = LinearGradientBrush;
  GHatchBrush              = HatchBrush;
  GImageAttributes         = ImageAttributes;
  GMetafile                = Metafile;
  GPen                     = Pen;
  GStringFormat            = StringFormat;
  GGraphics                = Graphics;
  GGraphicsPath            = GraphicsPath;
  GGraphicsPathIterator    = GraphicsPathIterator;
  GPathGradientBrush       = PathGradientBrush;
  GAdjustableArrowCap      = AdjustableArrowCap;


//============================================================================
// Guard extentions
//============================================================================

{$ifdef GDIPLUS_GUARD}

type
  IGuardGDIPlus = interface
    procedure Lock;
    procedure Unlock;
    procedure FreeObjects;
  end;

function GuardGDIPlus :IGuardGDIPlus;

{$endif} // GDIPLUS_GUARD


//============================================================================
//============================================================================

implementation

//============================================================================
// Guard extentions
//============================================================================

{$ifdef GDIPLUS_GUARD}

const
  kMinGuardGDIPlusObjects    = 32;
  kGrowByGuardGDIPlusObjects = 64;

type
  EMaxGuardGDIPlusLock = class (Exception);
  ENoGuardGDIPlusLock = class (Exception);

type
  TGuardGDIPlus = class (TInterfacedObject, IGuardGDIPlus)
  private
    FObjects :array of GDiPlusBase;
    FObjectsCount :integer;
    FLocks :integer;
    FPreviousGuard :TGuardGDIPlus;
  public
    constructor Create (MinGuardObjects :integer = kMinGuardGDIPlusObjects);
    destructor Destroy; override;
    procedure AddObject (GdiPlusObject :GdiPlusBase); virtual;
    procedure FreeObjects; virtual;
    procedure Lock; virtual;
    procedure Unlock; virtual;
  end;

var
  GuardGDIPlusInstance :TGuardGDIPlus;

function GuardGDIPlus :IGuardGDIPlus;
begin
  Result := TGuardGDIPlus.Create;
end;

constructor TGuardGDIPlus.Create (MinGuardObjects :integer = kMinGuardGDIPlusObjects);
begin
  FPreviousGuard := GuardGDIPlusInstance;
  GuardGDIPlusInstance := Self;
  inherited Create;
  setlength (FObjects,MinGuardObjects);
end;

destructor TGuardGDIPlus.Destroy;
begin
  GuardGDIPlusInstance := FPreviousGuard;
  FreeObjects;
  inherited Destroy;
end;

procedure TGuardGDIPlus.FreeObjects;
var
  i :integer;
begin
  for i := FObjectsCount-1 downto 0 do  FObjects[i].Free;
  FObjectsCount := 0;
end;

procedure TGuardGDIPlus.AddObject (GdiPlusObject :GdiPlusBase);
var
  Max :integer;
begin
  if (FLocks = 0) then
  begin
    Max := length (FObjects);
    if (FObjectsCount = Max) then
       setlength (FObjects,Max+kGrowByGuardGDIPlusObjects);
    FObjects [FObjectsCount] := GdiPlusObject;
    inc (FObjectsCount);
  end;
end;

procedure TGuardGDIPlus.Lock;
begin
  if (FLocks < maxint) then  inc (FLocks)
  else
    raise EMaxGuardGDIPlusLock.Create ('');
end;

procedure TGuardGDIPlus.Unlock;
begin
   if (FLocks > 0) then  dec (FLocks)
   else
     raise ENoGuardGDIPlusLock.Create ('');
end;

{$endif} // GDIPLUS_GUARD


//============================================================================
// *** GdiPlusBase.h
//============================================================================

{$ifdef GDIPLUS_GUARD}

constructor GdiPlusBase.Create;
begin
  inherited Create;
  if (GuardGdiPlusInstance <> nil) then  GuardGdiPlusInstance.AddObject (Self);
end;

{$endif}

{$ifdef GDIPLUS_DYNAMIC_ALLOC}

const
  MsgEGdipAllocFail = 'Failure of GDI+ memory allocation for a %s';

class function GdiPlusBase.NewInstance :TObject;
begin
  Result := GdipAlloc (InstanceSize);
  if (Result = nil) then  raise EGdipAllocFail.CreateFmt (MsgEGdipAllocFail,[ClassName]);
  Result := InitInstance (Result);
end;

procedure GdiPlusBase.FreeInstance;
begin
  CleanupInstance;
  GdipFree (Self);
end;

{$endif}

//============================================================================
// *** GdiPlusEnums.h
//============================================================================

function ObjectTypeIsValid(ObjType: ObjectType): BOOL;
begin
  Result := (ObjType >= ObjectTypeMin) and (ObjType <= ObjectTypeMax);
end;

function GDIP_WMF_RECORD_TO_EMFPLUS(n: Integer): EmfPlusRecordType;
begin
  Result := EmfPlusRecordType((n) or GDIP_WMF_RECORD_BASE);
end;

function GDIP_EMFPLUS_RECORD_TO_WMF(n: EmfPlusRecordType): Integer;
begin
  Result := Integer(n and not GDIP_WMF_RECORD_BASE);
end;

function GDIP_IS_WMF_RECORDTYPE(n: Integer): Boolean;
begin
  Result := (n and GDIP_WMF_RECORD_BASE) <> 0;
end;


//============================================================================
// *** GdiPlusTypes.h
//============================================================================

//-------------------------------------------------------------------
// SizeF
//-------------------------------------------------------------------

procedure SizeF.New;
begin
     Width  := 0;
     Height := 0;
end;

procedure SizeF.New (const size :SizeF);
begin
     Width  := size.Width;
     Height := size.Height;
end;

procedure SizeF.New (w,h :single);
begin
     Width  := w;
     Height := h;
end;

function SizeF.Add (const size :SizeF) :SizeF;
begin
     Result.Width  := Width  + size.Width;
     Result.Height := Height + size.Height;
end;

procedure SizeF.Add (const s1,s2 :SizeF);
begin
     Width  := s1.Width  + s2.Width;
     Height := s1.Height + s2.Height;
end;

function SizeF.Sub (const size :SizeF) :SizeF;
begin
     Result.Width  := Width  - size.Width;
     Result.Height := Height - size.Height;
end;

procedure SizeF.Sub (const s1,s2 :SizeF);
begin
     Width  := s1.Width  - s2.Width;
     Height := s1.Height - s2.Height;
end;

function SizeF.Equals (const size :SizeF) :BOOL;
begin
     Result := (Width = size.Width) and (Height = size.Height);
end;

function SizeF.Empty :BOOL;
begin
     Result := (Width = 0) and (Height = 0);
end;

//-------------------------------------------------------------------
// Size
//-------------------------------------------------------------------

procedure Size.New;
begin
     Width  := 0;
     Height := 0;
end;

procedure Size.New (const size :Size);
begin
     Width  := size.Width;
     Height := size.Height;
end;

procedure Size.New (w,h :integer);
begin
     Width  := w;
     Height := h;
end;

function Size.Add (const size :Size) :Size;
begin
     Result.Width  := Width  + size.Width;
     Result.Height := Height + size.Height;
end;

procedure Size.Add (const s1,s2 :Size);
begin
     Width  := s1.Width  + s2.Width;
     Height := s1.Height + s2.Height;
end;

function Size.Sub (const size :Size) :Size;
begin
     Result.Width  := Width  - size.Width;
     Result.Height := Height - size.Height;
end;

procedure Size.Sub (const s1,s2 :Size);
begin
     Width  := s1.Width  - s2.Width;
     Height := s1.Height - s2.Height;
end;

function Size.Equals (const size :Size) :BOOL;
begin
     Result := (Width = size.Width) and (Height = size.Height);
end;

function Size.Empty :BOOL;
begin
     Result := (Width = 0) and (Height = 0);
end;

//-------------------------------------------------------------------
// PointF
//-------------------------------------------------------------------

procedure PointF.New;
begin
     X := 0;
     Y := 0;
end;

procedure PointF.New (const point :PointF);
begin
     X := point.X;
     Y := point.Y;
end;

procedure PointF.New (const size :SizeF);
begin
     X := size.Width;
     Y := size.Height;
end;

procedure PointF.New (sx,sy :single);
begin
     X := sx;
     Y := sy;
end;

function PointF.Add (const point :PointF) :PointF;
begin
     Result.X := X + point.X;
     Result.Y := Y + point.Y;
end;

procedure PointF.Add (const p1,p2 :PointF);
begin
     X := p1.X + p2.X;
     Y := p1.Y + p2.Y;
end;

function PointF.Sub (const point :PointF) :PointF;
begin
     Result.X := X - point.X;
     Result.Y := Y - point.Y;
end;

procedure PointF.Sub (const p1,p2 :PointF);
begin
     X := p1.X + p2.X;
     Y := p1.Y + p2.Y;
end;

function PointF.Equals (const point :PointF) :BOOL;
begin
     Result := (X = point.X) and (Y = point.Y);
end;

//-------------------------------------------------------------------
// Point
//-------------------------------------------------------------------

procedure Point.New;
begin
     X := 0;
     Y := 0;
end;

procedure Point.New (const point :Point);
begin
     X := point.X;
     Y := point.Y;
end;

procedure Point.New (const size :Size);
begin
     X := size.Width;
     Y := size.Height;
end;

procedure Point.New (sx,sy :integer);
begin
     X := sx;
     Y := sy;
end;

function Point.Add (const point :Point) :Point;
begin
     Result.X := X + point.X;
     Result.Y := Y + point.Y;
end;

procedure Point.Add (const p1,p2 :Point);
begin
     X := p1.X + p2.X;
     Y := p1.Y + p2.Y;
end;

function Point.Sub (const point :Point) :Point;
begin
     Result.X := X - point.X;
     Result.Y := Y - point.Y;
end;

procedure Point.Sub (const p1,p2 :Point);
begin
     X := p1.X + p2.X;
     Y := p1.Y + p2.Y;
end;

function Point.Equals (const point :Point) :BOOL;
begin
     Result := (X = point.X) and (Y = point.Y);
end;

//-------------------------------------------------------------------
// RectF
//-------------------------------------------------------------------

procedure RectF.New;
begin
     X := 0;  Y := 0;  Width  := 0;  Height := 0;
end;

procedure RectF.New (sx,sy,sw,sh :single);
begin
     X := sx;  Y := sy;  Width := sw;  Height := sw;
end;

procedure RectF.New (const location :PointF; const size :SizeF);
begin
     X := location.X;
     Y := location.Y;
     Width  := size.Width;
     Height := size.Height;
end;

function RectF.Clone :PRectF;
begin
     GetMem (Result,sizeof(RectF));
end;

procedure RectF.GetLocation (var point :PointF);
begin
     point.X := X;
     point.Y := Y;
end;

procedure RectF.GetSize (var size :SizeF);
begin
     size.Width  := Width;
     size.Height := Height;
end;

procedure RectF.GetBounds (var rect :RectF);
begin
     rect := self;
end;

function RectF.GetRight :single;
begin
     Result := X + Width;
end;

function RectF.GetBottom :single;
begin
     Result := Y + Height;
end;

function RectF.IsEmptyArea :BOOL;
begin
     Result := (Width <= REAL_EPSILON) and (Height <= REAL_EPSILON);
end;

function RectF.Equals (const rect :RectF) :BOOL;
begin
     Result := (X = rect.X) and (Y = rect.Y) and
               (Width = rect.Width) and (Height = rect.Height);
end;

function RectF.Contains (sx,sy :single) :BOOL;
begin
     Result := (sx >= X) and (sx < X+Width) and
               (sy >= Y) and (sy < Y+Height);
end;

function RectF.Contains (const pt :PointF) :BOOL;
begin
     Result := Contains (pt.X,pt.Y);
end;

function RectF.Contains (const rect :RectF) :BOOL;
begin
     Result := (X <= rect.X) and (rect.GetRight <= GetRight) and
               (Y <= rect.Y) and (rect.GetBottom <= GetBottom);
end;

procedure RectF.Inflate (dx,dy :single);
begin
     X := X - dx;
     Y := Y - dy;
     Width  := Width  + (2*dx);
     Height := Height + (2*dy);
end;

procedure RectF.Inflate (const point :PointF);
begin
     Inflate (point.X,point.Y);
end;

function RectF.Intersect (const rect :RectF) :BOOL;
begin
     Result := Intersect (Self,Self,rect);
end;

function RectF.Intersect (var c :RectF; const a,b :RectF) :BOOL;
var
     right,bottom,left,top :single;
begin
     right  := min (a.GetRight,  b.GetRight);
     bottom := min (a.GetBottom, b.GetBottom);
     left   := max (a.GetLeft,   b.GetLeft);
     top    := max (a.GetTop,    b.GetTop);

     c.X := left;
     c.Y := top;
     c.Width  := right - left;
     c.Height := bottom - top;

     Result := not c.IsEmptyArea;
end;

function RectF.IntersectsWith (const rect :RectF) :BOOL;
begin
     Result := (GetLeft < rect.GetRight) and (GetTop < rect.GetTop) and
               (GetRight > rect.GetLeft) and (GetBottom > rect.GetTop);
end;

function RectF.Union (var c :RectF; const a,b :RectF) :BOOL;
var
     right,bottom,left,top :single;
begin
     right  := max (a.GetRight,  b.GetRight);
     bottom := max (a.GetBottom, b.GetBottom);
     left   := min (a.GetLeft,   b.GetLeft);
     top    := min (a.GetTop,    b.GetTop);

     c.X := left;
     c.Y := top;
     c.Width  := right - left;
     c.Height := bottom - top;

     Result := not c.IsEmptyArea;
end;

procedure RectF.Offset (const point :PointF);
begin
     Offset (point.X,point.Y);
end;

procedure RectF.Offset (dx,dy :single);
begin
     X := X + dx;
     Y := Y + dy;
end;

//-------------------------------------------------------------------
// Rect
//-------------------------------------------------------------------

procedure Rect.New;
begin
     X := 0;  Y := 0;  Width  := 0;  Height := 0;
end;

procedure Rect.New (sx,sy,sw,sh :integer);
begin
     X := sx;  Y := sy;  Width := sw;  Height := sw;
end;

procedure Rect.New (const location :Point; const size :Size);
begin
     X := location.X;
     Y := location.Y;
     Width  := size.Width;
     Height := size.Height;
end;

function Rect.Clone :PRect;
begin
     GetMem (Result,sizeof(Rect));
end;

procedure Rect.GetLocation (var point :Point);
begin
     point.X := X;
     point.Y := Y;
end;

procedure Rect.GetSize (var size :Size);
begin
     size.Width  := Width;
     size.Height := Height;
end;

procedure Rect.GetBounds (var rect :Rect);
begin
     rect := self;
end;

function Rect.GetRight :integer;
begin
     Result := X + Width;
end;

function Rect.GetBottom :integer;
begin
     Result := Y + Height;
end;

function Rect.IsEmptyArea :BOOL;
begin
     Result := (Width <= 0) and (Height <= 0);
end;

function Rect.Equals (const rect :Rect) :BOOL;
begin
     Result := (X = rect.X) and (Y = rect.Y) and
               (Width = rect.Width) and (Height = rect.Height);
end;

function Rect.Contains (sx,sy :integer) :BOOL;
begin
     Result := (sx >= X) and (sx < X+Width) and
               (sy >= Y) and (sy < Y+Height);
end;

function Rect.Contains (const pt :Point) :BOOL;
begin
     Result := Contains (pt.X,pt.Y);
end;

function Rect.Contains (const rect :Rect) :BOOL;
begin
     Result := (X <= rect.X) and (rect.GetRight <= GetRight) and
               (Y <= rect.Y) and (rect.GetBottom <= GetBottom);
end;

procedure Rect.Inflate (dx,dy :integer);
begin
     X := X - dx;
     Y := Y - dy;
     Width  := Width  + (2*dx);
     Height := Height + (2*dy);
end;

procedure Rect.Inflate (const point :Point);
begin
     Inflate (point.X,point.Y);
end;

function Rect.Intersect (const rect :Rect) :BOOL;
begin
     Result := Intersect (Self,Self,rect);
end;

function Rect.Intersect (var c :Rect; const a,b :Rect) :BOOL;
var
     right,bottom,left,top :integer;
begin
     right  := min (a.GetRight,  b.GetRight);
     bottom := min (a.GetBottom, b.GetBottom);
     left   := max (a.GetLeft,   b.GetLeft);
     top    := max (a.GetTop,    b.GetTop);

     c.X := left;
     c.Y := top;
     c.Width  := right - left;
     c.Height := bottom - top;

     Result := not c.IsEmptyArea;
end;

function Rect.IntersectsWith (const rect :Rect) :BOOL;
begin
     Result := (GetLeft < rect.GetRight) and (GetTop < rect.GetTop) and
               (GetRight > rect.GetLeft) and (GetBottom > rect.GetTop);
end;

function Rect.Union (var c :Rect; const a,b :Rect) :BOOL;
var
     right,bottom,left,top :integer;
begin
     right  := max (a.GetRight,  b.GetRight);
     bottom := max (a.GetBottom, b.GetBottom);
     left   := min (a.GetLeft,   b.GetLeft);
     top    := min (a.GetTop,    b.GetTop);

     c.X := left;
     c.Y := top;
     c.Width  := right - left;
     c.Height := bottom - top;

     Result := not c.IsEmptyArea;
end;

procedure Rect.Offset (const point :Point);
begin
     Offset (point.X,point.Y);
end;

procedure Rect.Offset (dx,dy :integer);
begin
     X := X + dx;
     Y := Y + dy;
end;

//-------------------------------------------------------------------
// PathData
//-------------------------------------------------------------------

procedure PathData.New;
begin
     Count := 0;
     Points := nil;
     Types := nil;
end;

procedure PathData.Free;
begin
     if (Points <> nil) then
     begin
          freemem (Points,Count*sizeof(PointF));
          Points := nil;
     end;

     if (Types <> nil) then
     begin
          freemem (Types,Count*sizeof(byte));
          Types := nil;
     end;

     Count := 0;
end;

//-------------------------------------------------------------------
// CharacterRange
//-------------------------------------------------------------------

procedure CharacterRange.New;
begin
     First  := 0;
     Length := 0;
end;

procedure CharacterRange.New (f,l :integer);
begin
     First  := f;
     Length := l;
end;


//============================================================================
// *** GdiPlusInit.h
//============================================================================

var
  token: DWORD;

procedure InitGdiPlus;
var
  Ret: Status;
begin
  Ret := GdiPlusStartup (token, DefStartup, nil);

  if Ret <> OK then
  raise EBadGdiPlusStartup.Create (Format ('IitGdiPlus: GdiPlusStartup failed and returned %d.', [Ret]));
end;

procedure EndGdiPlus;
begin
  GdiPlusShutdown (token);
end;


//============================================================================
// *** GdiPlusPixelFormats.h
//============================================================================

function GetPixelFormatSize(pixfmt: PixelFormat): UINT;
begin
  Result := (pixfmt shr 8) and $ff;
end;

function IsIndexedPixelFormat(pixfmt: PixelFormat): Boolean;
begin
  Result := (pixfmt and PixelFormatIndexed) <> 0;
end;

function IsAlphaPixelFormat(pixfmt: PixelFormat): Boolean;
begin
  Result := (pixfmt and PixelFormatAlpha) <> 0;
end;

function IsExtendedPixelFormat(pixfmt: PixelFormat): Boolean;
begin
  Result := (pixfmt and PixelFormatExtended) <> 0;
end;

function IsCanonicalPixelFormat(pixfmt: PixelFormat): Boolean;
begin
  Result := (pixfmt and PixelFormatCanonical) <> 0;
end;


//============================================================================
// *** GdiPlusColor.h
//============================================================================

procedure Color.New;
begin
     Argb := ColorBlack;
end;

procedure Color.New (r,g,b :byte);
begin
     Argb := MakeARGB (255,r,g,b);
end;

procedure Color.New (a,r,g,b :byte);
begin
     Argb := MakeARGB (a,r,g,b);
end;

procedure Color.New (Aargb :ARGB);  // It's better to use the SetValue property
begin
     Argb := Aargb;
end;

function Color.GetAlpha :byte;
begin
     Result := Argb shr AlphaShift;
end;

function Color.GetRed :byte;
begin
     Result := Argb shr RedShift;
end;

function Color.GetGreen :byte;
begin
     Result := Argb shr GreenShift;
end;

function Color.GetBlue :byte;
begin
     Result := Argb shr BlueShift;
end;

procedure Color.SetFromCOLORREF (rgb :COLORREF);
begin
     Argb := MakeARGB (255, GetRValue (rgb), GetGValue (rgb), GetBValue (rgb));
end;

function Color.ToCOLORREF :COLORREF;
begin
     Result := RGB (GetRed,GetGreen,GetBlue);
end;

class function Color.MakeARGB (a,r,g,b :byte) :ARGB;
begin
     Result := ((DWORD (b) shl BlueShift) or
                (DWORD (g) shl GreenShift) or
                (DWORD (r) shl RedShift) or
                (DWORD (a) shl AlphaShift));
end;


//============================================================================
// *** GdiPlusMetaHeader.h
//============================================================================

procedure MetafileHeader.GetBounds (var rect :Rect);
begin
     rect.X := X;
     rect.Y := Y;
     rect.Width  := Width;
     rect.Height := Height;
end;

function MetafileHeader.IsWmf :BOOL;
begin
     Result := (Type_ = MetafileTypeWmf) or (Type_ = MetafileTypeWmfPlaceable);
end;

function MetafileHeader.IsWmfAldus :BOOL;
begin
     Result := (Type_ = MetafileTypeWmf);
end;

function MetafileHeader.IsEmf :BOOL;
begin
     Result := (Type_ = MetafileTypeEmf);
end;

function MetafileHeader.IsEmfOrEmfPlus :BOOL;
begin
     Result := (Type_ >= MetafileTypeEmf);
end;

function MetafileHeader.IsEmfPlus :BOOL;
begin
     Result := (Type_ >= MetafileTypeEmfPlusOnly);
end;

function MetafileHeader.IsEmfPlusDual :BOOL;
begin
     Result := (Type_ = MetafileTypeEmfPlusDual);
end;

function MetafileHeader.IsEmfPlusOnly :BOOL;
begin
     Result := (Type_ = MetafileTypeEmfPlusOnly);
end;

function MetafileHeader.IsDisplay :BOOL;
begin
     Result := (IsEmfPlus and ((EmfPlusFlags and GDIP_EMFPLUSFLAGS_DISPLAY) <> 0));
end;

function MetafileHeader.GetWmfHeader :PMETAHEADER;
begin
     if (IsWmf) then  Result := @H.WmfHeader  else  Result := nil;
end;

function MetafileHeader.GetEmfHeader :PENHMETAHEADER3;
begin
     if (IsEmfOrEmfPlus) then  Result := @H.EmfHeader  else  Result := nil;
end;


//============================================================================
// *** GdiPlusMatrix.h
//============================================================================

function Matrix.Clone: Matrix;
var
  gpM: GpMatrix;
begin
  gpM := nil;

  SetStatus (GdipCloneMatrix (nativeMatrix, gpM));

  if lastResult <> Ok then
  Result := nil else
  Result := Matrix.CreateNative (gpM);
end;

constructor Matrix.Create(m11, m12, m21, m22, dx, dy: single);
var
  gpM: GpMatrix;
begin
  inherited Create;

  gpM := nil;
  lastResult := GdipCreateMatrix2 (m11, m12, m21, m22, dx, dy, gpM);
  SetNativeMatrix(gpM);
end;

constructor Matrix.Create;
var
  gpM: GpMatrix;
begin
  inherited Create;

  gpM := nil;
  lastResult := GdipCreateMatrix(gpM);
  SetNativeMatrix(gpM);
end;

constructor Matrix.Create(var ARect: RectF; var dstplg: PointF);
var
  gpM: GpMatrix;
begin
  inherited Create;

  gpM := nil;
  lastResult := GdipCreateMatrix3(ARect, dstplg, gpM);
  SetNativeMatrix(gpM);
end;

constructor Matrix.Create(var ARect: Rect; var dstplg: Point);
var
  gpM: GpMatrix;
begin
  inherited Create;

  gpM := nil;
  lastResult := GdipCreateMatrix3I(ARect, dstplg, gpM);
  SetNativeMatrix(gpM);
end;

constructor Matrix.CreateNative(ANativeMatrix: GpMatrix);
begin
  inherited Create;

  lastResult := Ok;
  SetNativeMatrix(ANativeMatrix);
end;

destructor Matrix.Destroy;
begin
  GdipDeleteMatrix (nativeMatrix);

  inherited Destroy;
end;

function Matrix.Equals(AMatrix: Matrix): Boolean;
var
  Res: BOOL;
begin
  Res := False;
  SetStatus (GdipIsMatrixEqual (nativeMatrix,AMatrix.nativeMatrix, Res));
  Result := Res;
end;

function Matrix.GetElements(m: array of single): Status;
begin
  Result := SetStatus (GdipGetMatrixElements (nativeMatrix, m[0]));
end;

function Matrix.GetLastStatus: Status;
begin
  Result := lastResult;
  lastResult := Ok;
end;

function Matrix.Invert: Status;
begin
  Result := SetStatus (GdipInvertMatrix (nativeMatrix));
end;

function Matrix.IsIdentity: Boolean;
var
  Res: BOOL;
begin
  Res := False;
  SetStatus (GdipIsMatrixInvertible (nativeMatrix, Res));
  Result := Res;
end;

function Matrix.IsInvertible: Boolean;
var
  Res: BOOL;
begin
  Res := False;
  SetStatus (GdipIsMatrixInvertible (nativeMatrix, Res));
  Result := Res;
end;

function Matrix.Multiply(AMatrix: Matrix; order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipMultiplyMatrix (nativeMatrix, AMatrix.nativeMatrix, order));
end;

function Matrix.OffsetX: single;
var
  Elem: array[0..5] of single;
begin
  if GetElements(Elem) = Ok then
  Result := Elem[4] else
  Result := 0.0;
end;

function Matrix.OffsetY: single;
var
  Elem: array[0..5] of single;
begin
  if GetElements(Elem) = Ok then
  Result := Elem[5] else
  Result := 0.0;
end;

function Matrix.Reset: Status;
begin
  Result := SetStatus (GdipSetMatrixElements (nativeMatrix, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0));
end;

function Matrix.Rotate(angle: single; order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipRotateMatrix (nativeMatrix, angle, order));
end;

function Matrix.RotateAt(angle: single; var center: pointF;
  order: MatrixOrder): Status;
begin
  if order = MatrixOrderPrepend then
  begin
    SetStatus (GdipTranslateMatrix (nativeMatrix, center.X, center.Y, order));
    SetStatus (GdipRotateMatrix (nativeMatrix, angle, order));
    Result := SetStatus (GdipTranslateMatrix (nativeMatrix, -center.X, -center.Y, order));
  end else
  begin
    SetStatus (GdipTranslateMatrix (nativeMatrix, -center.X, -center.Y, order));
    SetStatus (GdipRotateMatrix (nativeMatrix, angle, order));
    Result := SetStatus (GdipTranslateMatrix(nativeMatrix, center.X, center.Y, order));
  end;
end;

function Matrix.Scale(scaleX, scaleY: single; order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipScaleMatrix (nativeMatrix, scaleX, scaleY, order));
end;

function Matrix.SetElements(m11, m12, m21, m22, dx, dy: single): Status;
begin
  Result := SetStatus (GdipSetMatrixElements (nativeMatrix, m11, m12, m21, m22, dx, dy));
end;

procedure Matrix.SetNativeMatrix(ANativeMatrix: GpMatrix);
begin
  nativeMatrix := ANativeMatrix;
end;

function Matrix.SetStatus(AStatus: Status): Status;
begin
  Result := AStatus;

  if (AStatus <> Ok) and (lastResult <> AStatus) then
  Result := GenericError;
end;

function Matrix.Shear(shearX, shearY: single; order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipShearMatrix (nativeMatrix, shearX, shearY, order));
end;

function Matrix.TransformPoints(pts: array of PointF; count: Integer): Status;
begin
  Result := SetStatus (GdipTransformMatrixPoints (nativeMatrix, pts[0], count));
end;

function Matrix.TransformPoints(pts: array of Point; count: Integer): Status;
begin
  Result := SetStatus (GdipTransformMatrixPointsI (nativeMatrix, pts[0], count));
end;

function Matrix.TransformVectors(pts: array of Point; count: Integer): Status;
begin
  Result := SetStatus (GdipVectorTransformMatrixPointsI (nativeMatrix, pts[0], count));
end;

function Matrix.TransformVectors(pts: array of PointF; count: Integer): Status;
begin
  Result := SetStatus (GdipVectorTransformMatrixPoints (nativeMatrix, pts[0], count));
end;

function Matrix.Translate(offsetX, offsetY: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipTranslateMatrix (nativeMatrix, offsetX, offsetY, order));
end;


//============================================================================
// *** GdiPlusHeaders.h
//============================================================================
// The region methods are in GdiPlusRegion.h section

//--------------------------------------------------------------------------
// FontFamily
//--------------------------------------------------------------------------

function FontFamily.IsAvailable :BOOL;
begin
     result := (nativeFamily <> nil);
end;


//--------------------------------------------------------------------------
// CustomLineCap
//--------------------------------------------------------------------------

function CustomLineCap.SetStrokeCap (strokeCap :LineCap) :Status;
begin
     Result := SetStrokeCaps (strokeCap,strokeCap);
end;

constructor CustomLineCap.Create (nativeCap :GpCustomLineCap; status :Status);
begin
     inherited Create;
     lastResult := status;
     SetNativeCap (nativeCap);
end;

procedure CustomLineCap.SetNativeCap (nativeCap :GpCustomLineCap);
begin
     Self.nativeCap := nativeCap;
end;

function CustomLineCap.SetStatus (status :Status) :Status;
begin
     if (status <> Ok) then
        Result := integer (lastResult = status)
     else
        Result := status;
end;


//============================================================================
// *** GdiPlusFontFamily.h
//============================================================================

var

GenericSansSerifFontFamily :FontFamily;
GenericSerifFontFamily     :FontFamily;
GenericMonospaceFontFamily :FontFamily;

constructor FontFamily.Create (const name :widestring;  fontCollection :FontCollection);
var
     nativeFontCollection :GpFontCollection;
begin
     inherited Create;

     if (fontCollection = nil) then
        nativeFontCollection := nil
     else
        nativeFontCollection := fontCollection.nativeFontCollection;

     lastResult := GdipCreateFontFamilyFromName(
        pwidechar(name),
        nativeFontCollection,
        nativeFamily
     );
end;

constructor FontFamily.Create(
    nativeOrig :GpFontFamily;
    status :Status);
begin
    inherited Create;
    lastResult   := status;
    nativeFamily := nativeOrig;
end;

class function FontFamily.GenericSansSerif :FontFamily;
begin
    if (GenericSansSerifFontFamily = nil) then
    begin
         GenericSansSerifFontFamily := FontFamily.Create;

         GenericSansSerifFontFamily.lastResult :=
           GdipGetGenericFontFamilySansSerif(
              GenericSansSerifFontFamily.nativeFamily);
    end;

    Result := GenericSansSerifFontFamily;
end;

class function FontFamily.GenericSerif :FontFamily;
begin
    if (GenericSerifFontFamily = nil) then
    begin
         GenericSerifFontFamily := FontFamily.Create;

         GenericSerifFontFamily.lastResult :=
           GdipGetGenericFontFamilySerif(
              GenericSerifFontFamily.nativeFamily);
    end;

    Result := GenericSerifFontFamily;
end;

class function FontFamily.GenericMonospace :FontFamily;
begin
    if (GenericMonospaceFontFamily = nil) then
    begin
         GenericMonospaceFontFamily := FontFamily.Create;

         GenericMonospaceFontFamily.lastResult :=
           GdipGetGenericFontFamilyMonospace(
              GenericMonospaceFontFamily.nativeFamily);
    end;

    Result := GenericMonospaceFontFamily;
end;

destructor FontFamily.Destroy;
begin
    GdipDeleteFontFamily (nativeFamily);
    inherited Destroy;
end;

function FontFamily.Clone :FontFamily;
var
    clonedFamily :GpFontFamily;
begin
    clonedFamily := nil;
    SetStatus(GdipCloneFontFamily (nativeFamily, clonedFamily));
    result := FontFamily.Create (clonedFamily, lastResult);
end;

function FontFamily.GetFamilyName(
    out name :widestring;
    language :LANGID
) :Status;
var
    facename :array[0..LF_FACESIZE] of widechar;
begin
    result := SetStatus(GdipGetFamilyName(nativeFamily,
                                                   @facename,
                                                   language));
    if (Result = Ok) then
       name := facename
    else
       name := '';
end;

function FontFamily.IsStyleAvailable(style :integer) :BOOL;
begin
    if (SetStatus(GdipIsStyleAvailable(nativeFamily, style, Result)) <> Ok) then
        Result := FALSE;
end;


function FontFamily.GetEmHeight(style :integer) :UINT16;
begin
    SetStatus(GdipGetEmHeight(nativeFamily, style, Result));
end;

function FontFamily.GetCellAscent(style :integer) :UINT16;
begin
    SetStatus(GdipGetCellAscent(nativeFamily, style, Result));
end;

function FontFamily.GetCellDescent(style :integer) :UINT16;
begin
    SetStatus(GdipGetCellDescent(nativeFamily, style, Result));
end;

function FontFamily.GetLineSpacing(style :integer) :UINT16;
begin
    SetStatus(GdipGetLineSpacing(nativeFamily, style, Result));
end;

function FontFamily.GetLastStatus :Status;
begin
    Result := lastResult;
    lastResult := Ok;
end;

function FontFamily.SetStatus(status :Status) :Status;
begin
    if (status <> Ok) then
        result := integer (lastResult = status)
    else
        result := status;
end;


//============================================================================
// *** GdiPlusFont.h
//============================================================================

constructor Font.Create(hdc :HDC);
var
    font :GpFont;
begin
    inherited Create;

    font := nil;
    lastResult := GdipCreateFontFromDC(hdc, font);

    SetNativeFont(font);
end;

constructor Font.Create(hdc :HDC;
           const hfont :HFONT);
var
    font :GpFont;
    lf :LOGFONTA;
begin
    inherited Create;
    font := nil;

    if (hfont <> 0) then
    begin
        if(GetObjectA(hfont, sizeof(LOGFONTA), @lf) <> 0) then
            lastResult := GdipCreateFontFromLogfontA(hdc, lf, font)
        else
            lastResult := GdipCreateFontFromDC(hdc, font);
    end
    else
        lastResult := GdipCreateFontFromDC(hdc, font);

    SetNativeFont(font);
end;

constructor Font.Create (hdc :HDC;
           logfont :PLOGFONTW);
var
    font :GpFont;
begin
    inherited Create;
    font := nil;
    if (logfont <> nil) then
        lastResult := GdipCreateFontFromLogfontW(hdc, logfont^, font)
    else
        lastResult := GdipCreateFontFromDC(hdc, font);

    SetNativeFont(font);
end;

constructor Font.Create (hdc :HDC;
           logfont :PLOGFONTA);
var
    font :GpFont;
begin
    inherited Create;
    font := nil;
    if (logfont <> nil) then
        lastResult := GdipCreateFontFromLogfontA(hdc, logfont^, font)
    else
        lastResult := GdipCreateFontFromDC(hdc, font);

    SetNativeFont(font);
end;


constructor Font.Create(
     const family :FontFamily;
     emSize :single;
     style :integer;
     unit_ :GpUnit);
var
    font :GpFont;
begin
    inherited Create;
    font := nil;

    lastResult := GdipCreateFont(family.nativeFamily,
                    emSize,
                    style,
                    unit_,
                    font);

    SetNativeFont(font);
end;

constructor Font.Create(
     const familyName :widestring;
     emSize :single;
     style :integer;
     unit_ :GpUnit;
     const fontCollection :FontCollection);
var
     family :FontFamily;
begin
    inherited Create;
    family := nil;

    try
    family := FontFamily.Create (familyName, fontCollection);
    lastResult := family.GetLastStatus;

    if (lastResult <> Ok) then
    begin
        Family.nativeFamily := FontFamily.GenericSansSerif.nativeFamily;
        lastResult := FontFamily.GenericSansSerif.lastResult;
        if (lastResult <> Ok) then  exit;
    end;

    lastResult := GdipCreateFont(Family.nativeFamily,
                            emSize,
                            style,
                            unit_,
                            nativeFont);

    if (lastResult <> Ok) then
    begin
        Family.nativeFamily := FontFamily.GenericSansSerif.nativeFamily;
        lastResult := FontFamily.GenericSansSerif.lastResult;
        if (lastResult <> Ok) then  exit;

        lastResult := GdipCreateFont(
            Family.nativeFamily,
            emSize,
            style,
            unit_,
            nativeFont);
    end;

    finally
      Family.Free;
    end;
end;

function Font.GetLogFontA(const g :Graphics;
                  out logfontA :LOGFONTA) :Status;
begin
    result := SetStatus(GdipGetLogFontA(nativeFont, g.nativeGraphics, logfontA));
end;

function Font.GetLogFontW(const g :Graphics;
                  out logfontW :LOGFONTW) :Status;
begin
    result := SetStatus(GdipGetLogFontW(nativeFont, g.nativeGraphics, logfontW));
end;

function Font.Clone :Font;
var
    cloneFont :GpFont;
begin
    cloneFont := nil;
    SetStatus(GdipCloneFont(nativeFont, cloneFont));
    result := Font.Create (cloneFont, lastResult);
end;

destructor Font.Destroy;
begin
    GdipDeleteFont(nativeFont);
    inherited Destroy;
end;

// Operations

function Font.IsAvailable :BOOL;
begin
    result := (nativeFont <> nil);
end;

function Font.GetFamily (out family :FontFamily) :Status;
var
    s :Status;
begin
    s := GdipGetFamily(nativeFont, family.nativeFamily);
    family.SetStatus(s);

    Result := SetStatus(s);
end;

function Font.GetStyle :integer;
begin
    SetStatus(GdipGetFontStyle(nativeFont, result));
end;

function Font.GetSize :single;
begin
    SetStatus(GdipGetFontSize(nativeFont, result));
end;

function Font.GetUnit :GpUnit;
begin
    SetStatus(GdipGetFontUnit(nativeFont, result));
end;

function Font.GetHeight(const g :Graphics) :single;
begin
    SetStatus(GdipGetFontHeight(
        nativeFont,
        g.nativeGraphics,
        result
    ));
end;

function Font.GetHeight(dpi :single) :single;
begin
    SetStatus(GdipGetFontHeightGivenDPI(nativeFont, dpi, result));
end;

constructor Font.Create(font :GpFont;
           status :Status);
begin
  inherited Create;
  lastResult := status;
  SetNativeFont(font);
end;

procedure Font.SetNativeFont(font :GpFont);
begin
  nativeFont := Font;
end;

function Font.GetLastStatus :Status;
begin
    result := lastResult;
end;

function Font.SetStatus(status :Status) :Status;
begin
    if (status <> Ok) then
        result := integer (lastResult = status)
    else
        result := status;
end;

//============================================================================
// *** GdiPlusFontCollection.h
//============================================================================

function FontCollection.GetFamilyCount :integer;
begin
     Result := 0;
     lastResult := GdipGetFontCollectionFamilyCount(
                             nativeFontCollection, Result);
end;

function FontCollection.GetFamilies(
    numSought :integer;
    out gpfamilies :FontFamily;
    out numFound :integer
) :Status;
var
    nativeFamilyList :array of GpFontFamily;
    i :integer;
    gpf :^FontFamily;
begin
    if (numSought <= 0) then // and gpfamilies = nil and numFound = nil)
    begin
        Result := SetStatus(InvalidParameter);
        exit;
    end;
    numFound := 0;
    setlength (nativeFamilyList,numSought);

{    if (nativeFamilyList = nil) then
    begin
        Result := SetStatus(OutOfMemory);
        exit;
    end;
}
    Result := SetStatus(GdipGetFontCollectionFamilyList(
        nativeFontCollection,
        numSought,
        nativeFamilyList[0],
        numFound
    ));

    if (Result = Ok) then
    begin
        gpf := @gpFamilies;

        for i := 0 to (numFound-1) do
        begin
            GdipCloneFontFamily(nativeFamilyList[i],
                                            gpf.nativeFamily);
            gpf := pointer (integer (gpf) + sizeof(pointer));
        end;
    end;
end;

function FontCollection.GetLastStatus :Status;
begin
    Result := lastResult;
end;

function FontCollection.SetStatus(status :Status) :Status;
begin
    lastResult := status;
    Result := lastResult;
end;


constructor InstalledFontCollection.Create;
begin
  inherited Create;
  lastResult := GdipNewInstalledFontCollection(nativeFontCollection);
end;

constructor PrivateFontCollection.Create;
begin
  inherited Create;
  lastResult := GdipNewPrivateFontCollection(nativeFontCollection);
end;

destructor PrivateFontCollection.Destroy;
begin
    GdipDeletePrivateFontCollection(nativeFontCollection);
    inherited Destroy;
end;

function PrivateFontCollection.AddFontFile(const filename :widestring) :Status;
begin
    Result := SetStatus(GdipPrivateAddFontFile(nativeFontCollection, pwidechar (filename)));
end;

function PrivateFontCollection.AddMemoryFont(var memory;
                                     length :integer) :Status;
begin
    Result := SetStatus(GdipPrivateAddMemoryFont(
        nativeFontCollection,
        memory,
        length));
end;

//============================================================================
// *** GdiPlusRegion.h
//============================================================================
// A few of those methods are actually supposed to be in GdiPlusHeaders.h

function Region.Clone: Region;
var
  gpR: GpRegion;
begin
  gpR := nil;
  SetStatus (GdipCloneRegion (nativeRegion, gpR));

  Result := Region.CreateNative (gpR);
end;

function Region.Complement(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipCombineRegionRectI (nativeRegion, ARect, CombineModeComplement));
end;

function Region.Complement(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipCombineRegionRect (nativeRegion, ARect, CombineModeComplement));
end;

function Region.Complement(ARegion: Region): Status;
begin
  Result := SetStatus (GdipCombineRegionRegion (nativeRegion, ARegion.nativeRegion, CombineModeComplement));
end;

function Region.Complement(path: GraphicsPath): Status;
begin
  Result := SetStatus (GdipCombineRegionPath (nativeRegion, path.nativePath, CombineModeComplement));
end;

constructor Region.Create;
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegion (gpR);
  SetNativeRegion (gpR);
end;

constructor Region.CreateNative(nativeRegion: GpRegion);
begin
  inherited Create;

  SetNativeRegion (nativeRegion);
end;

constructor Region.Create(var ARect: RectF);
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegionRect (ARect, gpR);
  SetNativeRegion (gpR);
end;

constructor Region.Create(regionData: Pointer; size: Integer);
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegionRgnData (regionData, size, gpR);
  SetNativeRegion (gpR);
end;

constructor Region.Create(AhRgn: HRGN);
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegionHRGN (AhRgn, gpR);
  SetNativeRegion (gpR);
end;

constructor Region.Create(var ARect: Rect);
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegionRectI (ARect, gpR);
  SetNativeRegion (gpR);
end;

constructor Region.Create(var path: GraphicsPath);
var
  gpR: GpRegion;
begin
  inherited Create;

  gpR := nil;
  lastResult := GdipCreateRegionPath(path.nativePath, gpR);
  SetNativeRegion (gpR);
end;

destructor Region.Destroy;
begin
  GdipDeleteRegion (nativeRegion);
  inherited Destroy;
end;

function Region.Equals(ARegion: Region; g: Graphics): Bool;
var
  booln: BOOL;
begin
  booln := FALSE;

  SetStatus (GdipIsEqualRegion(nativeRegion, aregion.nativeRegion, g.nativeGraphics, booln));

  Result := booln;
end;

function Region.Exclude(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipCombineRegionRectI (nativeRegion, ARect, CombineModeExclude));
end;

function Region.Exclude(ARegion: Region): Status;
begin
  Result := SetStatus (GdipCombineRegionRegion (nativeRegion, ARegion.nativeRegion, CombineModeExclude));
end;

function Region.Exclude(path: GraphicsPath): Status;
begin
  Result := SetStatus (GdipCombineRegionPath (nativeRegion, path.nativePath, CombineModeExclude));
end;

function Region.Exclude(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipCombineRegionRect (nativeRegion, ARect, CombineModeExclude));
end;

function Region.ExclusiveOr(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipCombineRegionRectI (nativeRegion, ARect, CombineModeXor));
end;

function Region.ExclusiveOr(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipCombineRegionRect (nativeRegion, ARect, CombineModeXor));
end;

function Region.ExclusiveOr(ARegion: Region): Status;
begin
  Result := SetStatus (GdipCombineRegionRegion (nativeRegion, ARegion.nativeRegion, CombineModeXor));
end;

function Region.ExclusiveOr(path: GraphicsPath): Status;
begin
  Result := SetStatus (GdipCombineRegionPath (nativeRegion, path.nativePath, CombineModeXor));
end;

class function Region.FromHRGN(AhRgn: HRGN): Region;
var
  gpR: GpRegion;
begin
  gpR := nil;
  Result := nil;

  if GdipCreateRegionHrgn(AhRgn, gpR) = Ok then
  try
    Result := Region.CreateNative (gpR);
  except
    GdipDeleteRegion(gpR);
  end;
end;

function Region.GetBounds(out ARect: RectF; g: Graphics): Status;
begin
  Result := SetStatus (GdipGetRegionBounds (nativeRegion, g.nativeGraphics,ARect));
end;

function Region.GetBounds(out ARect: Rect; g: Graphics): Status;
begin
  Result := SetStatus (GdipGetRegionBoundsI (nativeRegion, g.nativeGraphics,ARect));
end;

function Region.GetData(out buffer; bufferSize: Integer;
  out sizeFilled: Cardinal): Status;
begin
  Result := SetStatus (GdipGetRegionData (nativeRegion, buffer, bufferSize, sizeFilled));
end;

function Region.GetDataSize: Cardinal;
begin
  SetStatus (GdipGetRegionDataSize (nativeRegion, Result));
end;

function Region.GetHRGN(g: Graphics): HRGN;
begin
  SetStatus (GdipGetRegionHRgn (nativeRegion, g.nativeGraphics, Result));
end;

function Region.GetLastStatus: Status;
begin
  Result := lastResult;
  lastResult := Ok;
end;

function Region.GetRegionScans(AMatrix: Matrix; out rects: array of RectF;
                            var count: Integer): Status;
begin
  Result := SetStatus (GdipGetRegionScans (nativeRegion, rects[0], count, AMatrix.nativeMatrix));
end;

function Region.GetRegionScans(AMatrix: Matrix; out rects: array of Rect;
  var count: Integer): Status;
begin
  Result := SetStatus (GdipGetRegionScansI (nativeRegion, rects[0], count, AMatrix.nativeMatrix));
end;

function Region.GetRegionScansCount(AMatrix: Matrix): Cardinal;
begin
  SetStatus (GdipGetRegionScansCount (nativeRegion, Result, AMatrix.nativeMatrix));
end;

function Region.Intersect(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipCombineRegionRect (nativeRegion, ARect, CombineModeIntersect));
end;

function Region.Intersect(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipCombineRegionRectI (nativeRegion, ARect, CombineModeIntersect));
end;

function Region.Intersect(ARegion: Region): Status;
begin
  Result := SetStatus (GdipCombineRegionRegion (nativeRegion, ARegion.nativeRegion ,CombineModeIntersect));
end;

function Region.Intersect(var path: GraphicsPath): Status;
begin
  Result := SetStatus (GdipCombineRegionPath (nativeRegion, path.nativePath, CombineModeIntersect));
end;

function Region.IsEmpty(g: Graphics): Boolean;
var
  booln: BOOl;
begin
  booln := FALSE;

  SetStatus (GdipIsEmptyRegion (nativeRegion, g.nativeGraphics, booln));

  Result := booln;
end;

function Region.IsInfinite(g: Graphics): Boolean;
var
  booln: BOOl;
begin
  booln := FALSE;

  SetStatus (GdipIsInfiniteRegion (nativeRegion, g.nativeGraphics, booln));

  Result := booln;
end;

function Region.IsVisible(var ARect: Rect; g: Graphics): Boolean;
var
  booln: BOOL;
  tg: GpGraphics;
begin
  booln := FALSE;
  if Assigned (g) then
  tg := g.nativeGraphics else
  tg := nil;

  SetStatus (GdipIsVisibleRegionRectI (nativeRegion, ARect.X, ARect.Y, ARect.Width, ARect.Height, tg, booln));

  Result := booln;
end;

function Region.IsVisible(x, y, width, height: Integer;
  g: Graphics): Boolean;
var
  rc: Rect;
begin
  rc.New (x, y, width, height);
  Result := IsVisible (rc, g);
end;

function Region.IsVisible(var ARect: RectF; g: Graphics): Boolean;
var
  booln: BOOL;
  tg: GpGraphics;
begin
  booln := FALSE;
  if Assigned (g) then
  tg := g.nativeGraphics else
  tg := nil;

  SetStatus (GdipIsVisibleRegionRect (nativeRegion, ARect.X, ARect.Y, ARect.Width, ARect.Height, tg, booln));

  Result := booln;
end;

function Region.IsVisible(x, y, width, height: single; g: Graphics): Boolean;
var
  rc: RectF;
begin
  rc.New (x, y, width, height);
  Result := IsVisible (rc, g);
end;

function Region.IsVisible(x, y: Integer; g: Graphics): Boolean;
var
  pt: Point;
begin
  pt.New (x, y);
  Result := IsVisible (pt, g);
end;

function Region.IsVisible(var APoint: Point; g: Graphics): Boolean;
var
  booln: BOOL;
  tg: GpGraphics;
begin
  booln := FALSE;
  if Assigned (g) then
  tg := g.nativeGraphics else
  tg := nil;

  SetStatus (GdipIsVisibleRegionPointI (nativeRegion, apoint.X, apoint.Y, tg,booln));

  Result := booln;
end;

function Region.IsVisible(var APoint: PointF; g: Graphics): Boolean;
var
  booln: BOOL;
  tg: GpGraphics;
begin
  booln := FALSE;
  if Assigned (g) then
  tg := g.nativeGraphics else
  tg := nil;

  SetStatus (GdipIsVisibleRegionPoint (nativeRegion, apoint.X, apoint.Y, tg,booln));

  Result := booln;
end;

function Region.IsVisible(x, y: single; g: Graphics): Boolean;
var
  pt: PointF;
begin
  pt.New (x, y);
  Result := IsVisible (pt, g);
end;

function Region.MakeEmpty: Status;
begin
  Result := SetStatus (GdipSetEmpty (nativeRegion));
end;

function Region.MakeInfinite: Status;
begin
  Result := SetStatus (GdipSetInfinite (nativeRegion));
end;

procedure Region.SetNativeRegion(ANativeRegion: GpRegion);
begin
  nativeRegion := ANativeRegion;
end;

function Region.SetStatus(AStatus: Status): Status;
begin
  Result := AStatus;

  if (AStatus <> Ok) and (lastResult <> AStatus) then
  Result := GenericError;
end;

function Region.Transform(AMatrix: Matrix): Status;
begin
  Result := SetStatus (GdipTransformRegion (nativeRegion, AMatrix.nativeMatrix));
end;

function Region.Translate(dx, dy: single): Status;
begin
  Result := SetStatus (GdipTranslateRegion (nativeRegion, dx, dy));
end;

function Region.Translate(dx, dy: Integer): Status;
begin
  Result := SetStatus (GdipTranslateRegionI (nativeRegion, dx, dy));
end;

function Region.Union(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipCombineRegionRect (nativeRegion, ARect, CombineModeUnion));
end;

function Region.Union(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipCombineRegionRectI (nativeRegion, ARect, CombineModeUnion));
end;

function Region.Union(path: GraphicsPath): Status;
begin
  Result := SetStatus (GdipCombineRegionPath(nativeRegion, path.nativePath, CombineModeUnion));
end;

function Region.Union(ARegion: Region): Status;
begin
 Result := SetStatus (GdipCombineRegionRegion (nativeRegion, ARegion.nativeRegion, CombineModeUnion));
end;


//============================================================================
// *** GdiPlusBrush.h
//============================================================================

function Brush.Clone: Brush;
var
  gpB: GpBrush;
begin
  gpB := nil;
  Result := nil;

  SetStatus (GdipCloneBrush (nativeBrush, gpB));
  try
    Result := Brush.CreateNative (gpB, lastResult);
  except
    GdipDeleteBrush (gpB);
  end;
end;

constructor Brush.Create;
begin
  inherited Create;

  SetStatus (NotImplemented);
  nativeBrush := nil;
end;

constructor Brush.CreateNative(nativeBrush: GpBrush; AStatus: Status);
begin
  inherited Create;
  lastResult := AStatus;
  SetNativeBrush (nativeBrush);
end;

destructor Brush.Destroy;
begin
  GdipDeleteBrush (nativeBrush);
  inherited Destroy;
end;

function Brush.GetLastStatus: Status;
begin
  Result := lastResult;
  lastResult := Ok;
end;

function Brush.GetType: BrushType;
begin
  Result := -1;

  SetStatus (GdipGetBrushType (nativeBrush, Result));
end;

procedure Brush.SetNativeBrush(ANativeBrush: GpBrush);
begin
  nativeBrush := ANativeBrush;
end;

function Brush.SetStatus(AStatus: Status): Status;
begin
  Result := AStatus;

  if (AStatus <> Ok) and (lastResult <> AStatus) then
  Result := GenericError;
end;

{ SolidBrush }

function SolidBrush.CetColor: Color;
begin
  GetColor (Result);
end;

constructor SolidBrush.Create(var AColor: Color);
var
  gpF: GpSolidFill;
begin
  inherited Create;

  gpF := nil;

  lastResult := GdipCreateSolidFill (AColor.Argb, gpF);
  SetNativeBrush(gpF);
end;

function SolidBrush.GetColor(out AColor: Color): Status;
var
  ColorValue: ARGB;
begin
  Result := SetStatus  (GdipGetSolidFillColor (GpSolidFill(nativeBrush), ColorValue));

  AColor.Argb := ColorValue;
end;

function SolidBrush.SetColor(var AColor: Color): Status;
begin
  Result := SetStatus (GdipSetSolidFillColor (GpSolidFill(nativeBrush), AColor.Argb));
end;

{ TextureBrush }

constructor TextureBrush.Create(AImage: Image; var dstRect: RectF;
  AImageAttributes: ImageAttributes);
var
  gpT: GpBrush;
  gpI: GpImageAttributes;
begin
  inherited Create;
  gpT := nil;

  if Assigned (AImageAttributes) then
  gpI := AImageAttributes.nativeImageAttr else
  gpI := nil;

  lastResult := GdipCreateTextureIA(AImage.nativeImage,  gpI, dstRect.X, dstRect.Y, dstRect.Width, dstRect.Height, GpTexture (gpT));

  SetNativeBrush (gpT);
end;

constructor TextureBrush.Create(AImage: Image; var dstRect: Rect;
  AImageAttributes: ImageAttributes);
var
  gpT: GpBrush;
  gpI: GpImageAttributes;
begin
  inherited Create;
  gpT := nil;

  if Assigned (AImageAttributes) then
  gpI := AImageAttributes.nativeImageAttr else
  gpI := nil;

  lastResult := GdipCreateTextureIAI(AImage.nativeImage,  gpI, dstRect.X, dstRect.Y, dstRect.Width, dstRect.Height, GpTexture (gpT));

  SetNativeBrush (gpT);
end;

{constructor TextureBrush.Create(AImage: Image; AWrapMode: WrapMode);
var
  gpT: GpTexture;
begin
  inherited Create;

  gpT := nil;

  lastResult := GdipCreateTexture (AImage.nativeImage, AWrapMode, gpT);

  SetNativeBrush (gpT);
end;}

constructor TextureBrush.Create(AImage: Image; AWrapMode: WrapMode;
  var dstRect: RectF);
var
  gpT: GpTexture;
begin
  inherited Create;

  gpT := nil;

  lastResult := GdipCreateTexture2 (AImage.nativeImage, AWrapMode, dstRect.X, dstRect.Y, dstRect.Width, dstRect.Height, gpT);

  SetNativeBrush (gpT);
end;

constructor TextureBrush.Create(AImage: Image; AWrapMode: WrapMode; dstX,
  dstY, dstWidth, dstHeight: Integer);
var
  gpT: GpTexture;
begin
  inherited Create;

  gpT := nil;

  lastResult := GdipCreateTexture2I (AImage.nativeImage, AWrapMode, dstX, dstY, dstWidth, dstHeight, gpT);

  SetNativeBrush (gpT);
end;

constructor TextureBrush.Create(AImage: Image; AWrapMode: WrapMode; dstX,
  dstY, dstWidth, dstHeight: single);
var
  gpT: GpTexture;
begin
  inherited Create;
  gpT := nil;

  lastResult := GdipCreateTexture2 (AImage.nativeImage, AWrapMode, dstX, dstY, dstWidth, dstHeight, gpT);

  SetNativeBrush (gpT);
end;

constructor TextureBrush.Create(AImage: Image; AWrapMode: WrapMode;
  var dstRect: Rect);
var
  gpT: GpTexture;
begin
  inherited Create;
  gpT := nil;

  lastResult := GdipCreateTexture2I (AImage.nativeImage, AWrapMode, dstRect.X, dstRect.Y, dstRect.Width, dstRect.Height, gpT);

  SetNativeBrush (gpT);
end;

function TextureBrush.GetImage: Image;
var
  gpI: GpImage;
begin
  gpI := nil;
  Result := nil;

  SetStatus (GdipGetTextureImage (GpTexture(nativeBrush), gpI));
  try
    Result := Image.Create{Native} (gpI, lastResult);
  except
    GdipDisposeImage (gpI);
  end;
end;

function TextureBrush.GetTransform(AMatrix: Matrix): Status;
begin
  if AMatrix = nil then
  begin
    Result := SetStatus (InvalidParameter);
    Exit;
  end;

  Result := SetStatus (GdipGetTextureTransform (GpTexture(nativeBrush), AMatrix.nativeMatrix));
end;

function TextureBrush.GetTransform: Matrix;
begin
  Result := Matrix.Create;
  GetTransform (Result);
end;

function TextureBrush.GetWrapMode: WrapMode;
begin
  SetStatus(GdipGetTextureWrapMode (GpTexture(nativeBrush), Result));
end;

function TextureBrush.MultiplyTransform(AMatrix: Matrix;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipMultiplyTextureTransform (GpTexture(nativeBrush), AMatrix.nativeMatrix, order));
end;

function TextureBrush.ResetTransform: Status;
begin
  Result := SetStatus (GdipResetTextureTransform (GpTexture(nativeBrush)));
end;

function TextureBrush.RotateTransform(angle: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipRotateTextureTransform (GpTexture(nativeBrush), angle, order));
end;

function TextureBrush.ScaleTransform(sx, sy: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipScaleTextureTransform (GpTexture(nativeBrush), sx, sy, order));
end;

function TextureBrush.SetTransform(AMatrix: Matrix): Status;
begin
  Result := SetStatus (GdipSetTextureTransform (GpTexture(nativeBrush), AMatrix.nativeMatrix));
end;

function TextureBrush.SetWrapMode(AWrapMode: WrapMode): Status;
begin
  Result := SetStatus (GdipSetTextureWrapMode (GpTexture(nativeBrush), AWrapMode));
end;

function TextureBrush.TranslateTransform(dx, dy: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipTranslateTextureTransform (GpTexture(nativeBrush), dx, dy, order));
end;

{ LinearGradientBrush }

constructor LinearGradientBrush.Create(ARect: Rect; var color1,
  color2: Color; mode: LinearGradientMode);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrushFromRectI (ARect, color1.Argb, color2.Argb, mode, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

constructor LinearGradientBrush.Create(ARect: RectF; angle: single;
  var color1, color2: Color; isAngleScalable: Boolean);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrushFromRectWithAngle (ARect, color1.Argb, color2.Argb, angle, isAngleScalable, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

constructor LinearGradientBrush.Create(ARect: RectF; var color1,
  color2: Color; mode: LinearGradientMode);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrushFromRect (ARect, color1.Argb, color2.Argb, mode, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

constructor LinearGradientBrush.Create(var point1, point2: PointF;
  var color1, color2: Color);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrush (point1, point2, color1.Argb, color2.Argb, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

constructor LinearGradientBrush.Create(var point1, point2: Point;
  var color1, color2: Color);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrushI (point1, point2, color1.Argb, color2.Argb, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

constructor LinearGradientBrush.Create(ARect: Rect; angle: single; var color1,
  color2: Color; isAngleScalable: Boolean);
var
  gpL: GpLineGradient;
begin
  inherited Create;
  gpL := nil;

  lastResult := GdipCreateLineBrushFromRectWithAngleI (ARect, color1.Argb, color2.Argb, angle, isAngleScalable, WrapModeTile, gpL);

  SetNativeBrush(gpL);
end;

function LinearGradientBrush.GetBlend(var blendFactors,
  blendPositions: TArrayOfSingle; count: Integer): Status;
begin
  if count = -1 then
  count := GetBlendCount;

  SetLength (blendFactors, count);
  SetLength (blendPositions, count);

  if count <= 0 then
  begin
    Result := SetStatus (InvalidParameter);
    Exit;
  end;  

  Result := SetStatus (GdipGetLineBlend (GpLineGradient(nativeBrush), blendFactors[0], blendPositions[0], count));
end;

function LinearGradientBrush.GetBlendCount: Integer;
begin
  SetStatus (GdipGetLineBlendCount(GpLineGradient(nativeBrush), Result));
end;

function LinearGradientBrush.GetGammaCorrection: Boolean;
var
  bRet: BOOL;
begin
  bRet := False;
  SetStatus (GdipGetLineGammaCorrection (GpLineGradient(nativeBrush), bRet));
  Result := bRet;
end;

function LinearGradientBrush.GetInterpolationColorCount: Integer;
begin
  SetStatus (GdipGetLinePresetBlendCount (GpLineGradient(nativeBrush), Result));
end;

function LinearGradientBrush.GetInterpolationColors(
  var presetColors: TArrayofColor; var blendPositions: TArrayOfSingle;
  var count: Integer): Status;
var
  ColorVal: array of Argb;
  I: Integer;
begin
  if count = -1 then
  count := GetInterpolationColorCount;

  if count <= 0 then
  begin
    Result := SetStatus (InvalidParameter);
    Exit;
  end;

  SetLength (ColorVal, count);
  SetLength (presetColors, count);
  SetLength (blendPositions, count);

  Result := SetStatus (GdipGetLinePresetBlend (GpLineGradient(nativeBrush), ColorVal[0], blendPositions[0], count));
  if Result = Ok then

  for I := 0 to count -1 do
  presetColors[I].Argb := ColorVal[I];
end;

function LinearGradientBrush.GetLinearColors(
  var colors: array of Color): Status;
var
  ColorVal: array[0..1] of ARGB;
begin
  Result := SetStatus (GdipGetLineColors (GpLineGradient(nativeBrush), ColorVal[0]));

  if lastResult <> Ok then
  begin
    Result := lastResult;
    Exit;
  end;

  Colors[0].ARGB := ColorVal[0];
  Colors[1].Argb := ColorVal[1];
end;

function LinearGradientBrush.GetRectangleF: RectF;
begin
  GetRectangle (Result);
end;

function LinearGradientBrush.GetRectangleI: Rect;
begin
  GetRectangle (Result);
end;

function LinearGradientBrush.GetRectangle(var ARect: RectF): Status;
begin
  Result := SetStatus (GdipGetLineRect (GpLineGradient(nativeBrush), ARect));
end;

function LinearGradientBrush.GetRectangle(var ARect: Rect): Status;
begin
  Result := SetStatus (GdipGetLineRectI (GpLineGradient(nativeBrush), ARect));
end;

function LinearGradientBrush.GetTransform: Matrix;
begin
  Result := Matrix.Create;
  GetTransform (Result);
end;

function LinearGradientBrush.GetTransform(AMatrix: Matrix): Status;
begin
  if AMatrix = nil then
  begin
    Result := SetStatus (InvalidParameter);
    Exit;
  end;

  Result := SetStatus (GdipGetLineTransform (GpLineGradient(nativeBrush), AMatrix.nativeMatrix));
end;

function LinearGradientBrush.GetWrapMode: WrapMode;
begin
  Result := 0;
  SetStatus (GdipGetLineWrapMode(GpLineGradient(nativeBrush), Result));
end;

function LinearGradientBrush.MultiplyTransform(AMatrix: Matrix;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipMultiplyLineTransform(GpLineGradient(nativeBrush), AMatrix.nativeMatrix, order));
end;

function LinearGradientBrush.ResetTransform: Status;
begin
  Result := SetStatus (GdipResetLineTransform (GpLineGradient(nativeBrush)));
end;

function LinearGradientBrush.RotateTransform(angle: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipRotateLineTransform (GpLineGradient(nativeBrush), angle, order));
end;

function LinearGradientBrush.ScaleTransform(sx, sy: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipScaleLineTransform (GpLineGradient(nativeBrush), sx, sy, order));
end;

function LinearGradientBrush.SetBlend(var blendFactors,
  blendPositions: TArrayOfSingle): Status;
var
  count: Integer;
begin
  count := Length (blendFactors);
  Result := SetStatus (GdipSetLineBlend (GpLineGradient(nativeBrush), blendFactors[0], blendPositions[0], count));
end;

function LinearGradientBrush.SetBlendBellShape(focus, scale: single): Status;
begin
  Result := SetStatus (GdipSetLineSigmaBlend (GpLineGradient(nativeBrush), focus, scale));
end;

function LinearGradientBrush.SetBlendTriangularShape(focus,
  scale: single): Status;
begin
  Result := SetStatus (GdipSetLineLinearBlend (GpLineGradient(nativeBrush), focus, scale));
end;

function LinearGradientBrush.SetGammaCorrection(
  useGammaCorrection: Boolean): Status;
begin
  Result := SetStatus (GdipSetLineGammaCorrection (GpLineGradient(nativeBrush), BOOL(useGammaCorrection)));
end;

function LinearGradientBrush.SetInterpolationColors(
  var presetColors: array of Color; var blendPositions: array of single): Status;
var
  ColorVal: array of ARGB;
  Count, I: Integer;
begin
  Count := Length (presetColors);
  if (Count <= 0) or (Length (blendPositions) < Count) then
  begin
    Result := SetStatus (InvalidParameter);
    Exit;
  end;  

  SetLength (ColorVal, Length (presetColors));

  for I := 0 to Count -1 do
  ColorVal[I] := presetColors[I].Argb;

  Result := SetStatus (GdipSetLinePresetBlend (GpLineGradient(nativeBrush), ColorVal[0], blendPositions[0], count));
end;

function LinearGradientBrush.SetLinearColors(var color1,
  color2: Color): Status;
begin
  Result := SetStatus (GdipSetLineColors (GpLineGradient(nativeBrush), color1.Argb, color2.Argb));
end;

function LinearGradientBrush.SetTransform(AMatrix: Matrix): Status;
begin
  Result := SetStatus (GdipSetLineTransform (GpLineGradient(nativeBrush), AMatrix.nativeMatrix));
end;

function LinearGradientBrush.SetWrapMode(AWrapMode: WrapMode): Status;
begin
  Result := SetStatus (GdipSetLineWrapMode (GpLineGradient(nativeBrush), AWrapMode));
end;

function LinearGradientBrush.TranslateTransform(dx, dy: single;
  order: MatrixOrder): Status;
begin
  Result := SetStatus (GdipTranslateLineTransform (GpLineGradient(nativeBrush), dx, dy, order));
end;

{ HatchBrush }

constructor HatchBrush.Create(AHatchStyle: HatchStyle;
  var foreColor: Color);
var
  gpH: GpHatch;
begin
  inherited Create;
  gpH := nil;

  lastResult := GdipCreateHatchBrush (AHatchStyle, foreColor.Argb, ColorBlack, gpH);

  SetNativeBrush(gpH);
end;

constructor HatchBrush.Create(AHatchStyle: HatchStyle);
var
  gpH: GpHatch;
begin
  inherited Create;
  gpH := nil;

  lastResult := GdipCreateHatchBrush (AHatchStyle, ColorBlack, ColorBlack, gpH);

  SetNativeBrush(gpH);
end;

constructor HatchBrush.Create(AHatchStyle: HatchStyle; var foreColor,
  backColor: Color);
var
  gpH: GpHatch;
begin
  inherited Create;
  gpH := nil;

  lastResult := GdipCreateHatchBrush (AHatchStyle, foreColor.Argb, backColor.Argb, gpH);

  SetNativeBrush(gpH);
end;

function HatchBrush.GetBackgroundColor(out AColor: Color): Status;
var
  ArgbVal: Argb;
begin
  Result := SetStatus (GdipGetHatchBackgroundColor (GpHatch(nativeBrush), ArgbVal));
  AColor.Argb := ArgbVal;
end;

function HatchBrush.GetBackgroundColor: Color;
begin
  GetBackgroundColor (Result);
end;

function HatchBrush.GetForegroundColor: Color;
begin
  GetForegroundColor (Result);
end;

function HatchBrush.GetForegroundColor(out AColor: Color): Status;
var
  ArgbVal: Argb;
begin
  Result := SetStatus (GdipGetHatchForegroundColor (GpHatch(nativeBrush), ArgbVal));
  AColor.Argb := ArgbVal;
end;

function HatchBrush.GetHatchStyle: HatchStyle;
begin
  SetStatus (GdipGetHatchStyle (GpHatch(nativeBrush), Result));
end;


//============================================================================
// *** GdiPlusImageAttributes.h
//============================================================================

constructor ImageAttributes.Create;
begin
     inherited Create;
     nativeImageAttr := nil;
     lastResult := GdipCreateImageAttributes(nativeImageAttr);
end;

destructor ImageAttributes.Destroy;
begin
     GdipDisposeImageAttributes(nativeImageAttr);
     inherited Destroy;
end;

function ImageAttributes.Clone :ImageAttributes;
var
     clone :GpImageAttributes;
begin
     SetStatus(GdipCloneImageAttributes( nativeImageAttr, clone));
     result := ImageAttributes.Create (clone,lastResult);
end;

function ImageAttributes.SetToIdentity( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesToIdentity( nativeImageAttr, catype));
end;

function ImageAttributes.Reset( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipResetImageAttributes( nativeImageAttr, catype));
end;

function ImageAttributes.SetColorMatrix( const colorMatrix :ColorMatrix; mode :ColorMatrixFlags = ColorMatrixFlagsDefault; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorMatrix( nativeImageAttr, catype, TRUE, @colorMatrix, nil, mode));
end;

function ImageAttributes.ClearColorMatrix( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorMatrix( nativeImageAttr, catype, FALSE, nil, nil, ColorMatrixFlagsDefault));
end;

function ImageAttributes.SetColorMatrices( const colorMatrix,grayMatrix :ColorMatrix; mode :ColorMatrixFlags = ColorMatrixFlagsDefault; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorMatrix( nativeImageAttr, catype, TRUE, @colorMatrix, @grayMatrix, mode));
end;

function ImageAttributes.ClearColorMatrices( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorMatrix( nativeImageAttr, catype, FALSE, nil, nil, ColorMatrixFlagsDefault));
end;

function ImageAttributes.SetThreshold( threshold :single; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesThreshold( nativeImageAttr, catype, TRUE, threshold));
end;

function ImageAttributes.ClearThreshold( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesThreshold( nativeImageAttr, catype, FALSE, 0.0));
end;

function ImageAttributes.SetGamma( gamma :single; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesGamma( nativeImageAttr, catype, TRUE, gamma));
end;

function ImageAttributes.ClearGamma( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesGamma( nativeImageAttr, catype, FALSE, 0.0));
end;

function ImageAttributes.SetNoOp( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesNoOp( nativeImageAttr, catype, TRUE));
end;

function ImageAttributes.ClearNoOp( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesNoOp( nativeImageAttr, catype, FALSE));
end;

function ImageAttributes.SetColorKey( colorLow,colorHigh :Color; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorKeys( nativeImageAttr, catype, TRUE, colorLow.GetValue, colorHigh.GetValue));
end;

function ImageAttributes.ClearColorKey( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesColorKeys( nativeImageAttr, catype, FALSE, 0,0));
end;

function ImageAttributes.SetOutputChannel( channelFlags :ColorChannelFlags; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesOutputChannel( nativeImageAttr, catype, TRUE, channelFlags));
end;

function ImageAttributes.ClearOutputChannel( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesOutputChannel( nativeImageAttr, catype, FALSE, ColorChannelFlagsLast));
end;

function ImageAttributes.SetOutputChannelColorProfile( colorProfileFilename :widestring; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesOutputChannelColorProfile( nativeImageAttr, catype, TRUE, pwidechar (colorProfileFilename)));
end;

function ImageAttributes.ClearOutputChannelColorProfile( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesOutputChannelColorProfile( nativeImageAttr, catype, FALSE, nil));
end;

function ImageAttributes.SetRemapTable( mapSize :UINT; const map :ColorMap; catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesRemapTable( nativeImageAttr, catype, TRUE, mapSize, @map));
end;

function ImageAttributes.ClearRemapTable( catype :ColorAdjustType = ColorAdjustTypeDefault) :Status;
begin
     result := SetStatus(GdipSetImageAttributesRemapTable( nativeImageAttr, catype, FALSE, 0, nil));
end;

function ImageAttributes.SetBrushRemapTable(mapSize :UINT; const map :ColorMap) :Status;
begin
     result := self.SetRemapTable(mapSize, map, ColorAdjustTypeBrush);
end;

function ImageAttributes.ClearBrushRemapTable :Status;
begin
     result := self.ClearRemapTable(ColorAdjustTypeBrush);
end;

function ImageAttributes.SetWrapMode(wrap :WrapMode; const color :Color; clamp :BOOL = FALSE) :Status;
var
     aargb :ARGB;
begin
     aargb := color.GetValue;
     result := SetStatus(GdipSetImageAttributesWrapMode( nativeImageAttr, wrap, aargb, clamp));
end;

// The flags of the palette are ignored.

function ImageAttributes.GetAdjustedPalette(out colorPalette :ColorPalette; colorAdjustType :ColorAdjustType) :Status;
begin
     result := SetStatus(GdipGetImageAttributesAdjustedPalette( nativeImageAttr, colorPalette, colorAdjustType));
end;

function ImageAttributes.GetLastStatus :Status;
begin
     Result := lastResult;
     lastResult := Ok;
end;

constructor ImageAttributes.Create (imageAttr :GpImageAttributes; status :Status);
begin
     inherited Create;
     SetNativeImageAttr(imageAttr);
     lastResult := status;
end;

procedure ImageAttributes.SetNativeImageAttr (nativeImageAttr :GpImageAttributes);
begin
     self.nativeImageAttr := nativeImageAttr;
end;

function ImageAttributes.SetStatus(status :Status) :Status;
begin
     if (status <> Ok) then
         result := integer (lastResult = status)
     else
         result := status;
end;


//============================================================================
// *** GdiPlusMetafile.h
//============================================================================

    // Playback a metafile from a HMETAFILE
    // If deleteWmf is TRUE, then when the metafile is deleted,
    // the hWmf will also be deleted.  Otherwise, it won't be.

constructor Metafile.Create (hWmf :HMETAFILE; const wmfPlaceableFileHeader :WmfPlaceableFileHeader; deleteWmf :BOOL = FALSE);
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipCreateMetafileFromWmf(hWmf, deleteWmf, wmfPlaceableFileHeader, metafile);
     SetNativeImage(metafile);
end;

    // Playback a metafile from a HENHMETAFILE
    // If deleteEmf is TRUE, then when the metafile is deleted,
    // the hEmf will also be deleted.  Otherwise, it won't be.

constructor Metafile.Create (hEmf :HENHMETAFILE; deleteEmf :BOOL = FALSE);
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipCreateMetafileFromEmf(hEmf, deleteEmf, metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create (const filename :widestring);
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipCreateMetafileFromFile(pwidechar(filename), metafile);
     SetNativeImage(metafile);
end;

    // Playback a WMF metafile from a file.

constructor Metafile.Create (const filename :widestring; const wmfPlaceableFileHeader :WmfPlaceableFileHeader);
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipCreateMetafileFromWmfFile(pwidechar(filename), wmfPlaceableFileHeader, metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create (stream :IStream);
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipCreateMetafileFromStream(stream, metafile);
     SetNativeImage(metafile);
end;

    // Record a metafile to memory.

constructor Metafile.Create ( referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafile( referenceHdc, etype, nil, MetafileFrameUnitGdi, pwidechar(description), metafile);
     SetNativeImage(metafile);
end;

    // Record a metafile to memory.

constructor Metafile.Create ( referenceHdc :HDC; const frameRect :RectF; frameunit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafile( referenceHdc, etype, @frameRect, frameUnit, pwidechar(description), metafile);
     SetNativeImage(metafile);
end;

    // Record a metafile to memory.

constructor Metafile.Create ( referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileI( referenceHdc, etype, @frameRect, frameUnit, pwidechar(description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( const fileName :widestring; referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileFileName(pwidechar(fileName), referenceHdc, etype, nil, MetafileFrameUnitGdi, pwidechar(description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( const fileName :widestring; referenceHdc :HDC; const frameRect :RectF; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileFileName(pwidechar (fileName), referenceHdc, etype, @frameRect, frameUnit, pwidechar (description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( const fileName :widestring; referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileFileNameI(pwidechar (fileName), referenceHdc, etype, @frameRect, frameUnit, pwidechar (description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( stream :IStream; referenceHdc :HDC; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileStream(stream, referenceHdc, etype, nil, MetafileFrameUnitGdi, pwidechar (description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( stream :IStream; referenceHdc :HDC; const frameRect :RectF; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileStream(stream, referenceHdc, etype, @frameRect, frameUnit, pwidechar (description), metafile);
     SetNativeImage(metafile);
end;

constructor Metafile.Create ( stream :IStream; referenceHdc :HDC; const frameRect :Rect; frameUnit :MetafileFrameUnit = MetafileFrameUnitGdi; etype :EmfType = EmfTypeEmfPlusDual; const description :widestring = '');
var
     metafile :GpMetafile;
begin
     inherited Create;
     metafile := nil;
     lastResult := GdipRecordMetafileStreamI(stream, referenceHdc, etype, @frameRect, frameUnit, pwidechar (description), metafile);
     SetNativeImage(metafile);
end;

class function Metafile.GetMetafileHeader ( hWmf :HMETAFILE; const wmfPlaceableFileHeader :WmfPlaceableFileHeader; out header :MetafileHeader) :Status;
begin
     result := GdipGetMetafileHeaderFromWmf(hWmf, wmfPlaceableFileHeader, header);
end;

class function Metafile.GetMetafileHeader( hEmf :HENHMETAFILE; out header :MetafileHeader) :Status;
begin
     result := GdipGetMetafileHeaderFromEmf(hEmf, header);
end;

class function Metafile.GetMetafileHeader( const filename :widestring; out header :MetafileHeader) :Status;
begin
     result := GdipGetMetafileHeaderFromFile(pwidechar (filename), header);
end;

class function Metafile.GetMetafileHeader( stream :IStream; out header :MetafileHeader) :Status;
begin
     result := GdipGetMetafileHeaderFromStream(stream, header);
end;

function Metafile.GetMetafileHeader( out header :MetafileHeader) :status;
begin
     result := SetStatus(GdipGetMetafileHeaderFromMetafile( GpMetafile (nativeImage), header));
end;

    // Once this method is called, the Metafile object is in an invalid state
    // and can no longer be used.  It is the responsiblity of the caller to
    // invoke DeleteEnhMetaFile to delete this hEmf.

function Metafile.GetHENHMETAFILE :HENHMETAFILE;
begin
     SetStatus(GdipGetHemfFromMetafile( GpMetafile (nativeImage), Result));
end;

    // Used in conjuction with Graphics::EnumerateMetafile to play an EMF+
    // The data must be DWORD aligned if it's an EMF or EMF+.  It must be
    // WORD aligned if it's a WMF.

function Metafile.PlayRecord( recordType :EmfPlusRecordType; flags, dataSize :UINT; var data) :Status;
begin
     result := SetStatus(GdipPlayMetafileRecord( GpMetafile (nativeImage), recordType, flags, dataSize, data));
end;

    // If you're using a printer HDC for the metafile, but you want the
    // metafile rasterized at screen resolution, then use this API to set
    // the rasterization dpi of the metafile to the screen resolution,
    // e.g. 96 dpi or 120 dpi.

function Metafile.SetDownLevelRasterizationLimit( metafileRasterizationLimitDpi :UINT) :Status;
begin
     result := SetStatus( GdipSetMetafileDownLevelRasterizationLimit( GpMetafile (nativeImage), metafileRasterizationLimitDpi));
end;

function Metafile.GetDownLevelRasterizationLimit :UINT;
begin
     Result := 0;
     SetStatus(GdipGetMetafileDownLevelRasterizationLimit( GpMetafile (nativeImage), result));
end;

class function Metafile.EmfToWmfBits( hEmf :HENHMETAFILE; cbData16 :UINT; pData16 :pointer; iMapMode :integer = MM_ANISOTROPIC; eFlags :EmfToWmfBitsFlags = EmfToWmfBitsFlagsDefault) :UINT;
begin
     result := GdipEmfToWmfBits( hemf, cbData16, pData16, iMapMode, eFlags);
end;

constructor Metafile.Create;
begin
     inherited Create;
     SetNativeImage(nil);
     lastResult := Ok;
end;


//============================================================================
// *** GdiPlusPen.h
//============================================================================

constructor Pen.Create (const acolor :Color; width :single = 1.0);
var
     u :GpUnit;
begin
     inherited Create;
        u := UnitWorld;
//     nativePen := nil;
     lastResult := GdipCreatePen1(acolor.GetValue, width, u, nativePen);
end;

constructor Pen.Create (const abrush :Brush; width :single = 1.0);
var
     u :GpUnit;
begin
     inherited Create;
     u := UnitWorld;
//     nativePen := nil;
     lastResult := GdipCreatePen2(abrush.nativeBrush, width, u, nativePen);
end;

destructor Pen.Destroy;
begin
     GdipDeletePen(nativePen);
     inherited Destroy;
end;

function Pen.Clone :Pen;
var
     clonePen :GpPen;
begin
     clonePen := nil;
     lastResult := GdipClonePen(nativePen, clonePen);
     result := Pen.Create(clonePen, lastResult);
end;

function Pen.SetWidth(width :single) :Status;
begin
     result := SetStatus(GdipSetPenWidth(nativePen, width));
end;

function Pen.GetWidth :single;
begin
     SetStatus(GdipGetPenWidth(nativePen, result));
end;

    // Set/get line caps: start, end, and dash

    // Line cap and join APIs by using LineCap and LineJoin enums.

function Pen.SetLineCap(startCap,endCap :LineCap; dashCap :DashCap) :Status;
begin
     result := SetStatus(GdipSetPenLineCap197819(nativePen, startCap, endCap, dashCap));
end;

function Pen.SetStartCap(startCap :LineCap) :Status;
begin
     result := SetStatus(GdipSetPenStartCap(nativePen, startCap));
end;

function Pen.SetEndCap(endCap :LineCap) :Status;
begin
     result := SetStatus(GdipSetPenEndCap(nativePen, endCap));
end;

function Pen.SetDashCap(dashCap :DashCap) :Status;
begin
     result := SetStatus(GdipSetPenDashCap197819(nativePen, dashCap));
end;

function Pen.GetStartCap :LineCap;
begin
     SetStatus(GdipGetPenStartCap(nativePen, result));
end;

function Pen.GetEndCap :LineCap;
begin
     SetStatus(GdipGetPenEndCap(nativePen, result));
end;

function Pen.GetDashCap :DashCap;
begin
     SetStatus(GdipGetPenDashCap197819(nativePen, result));
end;

function Pen.SetLineJoin(lineJoin :LineJoin) :Status;
begin
     result := SetStatus(GdipSetPenLineJoin(nativePen, lineJoin));
end;

function Pen.GetLineJoin :LineJoin;
begin
     SetStatus(GdipGetPenLineJoin(nativePen, result));
end;

function Pen.SetCustomStartCap(const customCap :CustomLineCap) :Status;
var
     nativeCap :GpCustomLineCap;
begin
     if (customCap <> nil) then
         nativeCap := customCap.nativeCap
     else
         nativeCap := nil;

     result := SetStatus(GdipSetPenCustomStartCap(nativePen, nativeCap));
end;

function Pen.GetCustomStartCap(customCap :CustomLineCap) :Status;
begin
     if (customCap = nil) then
     begin
         result := SetStatus(InvalidParameter);
         exit;
     end;

     result := SetStatus(GdipGetPenCustomStartCap(nativePen, customCap.nativeCap));
end;

function Pen.SetCustomEndCap(customCap :CustomLineCap) :Status;
var
     nativeCap :GpCustomLineCap;
begin
     if (customCap <> nil) then
         nativeCap := customCap.nativeCap
     else
         nativeCap := nil;

     result := SetStatus(GdipSetPenCustomEndCap(nativePen, nativeCap));
end;

function Pen.GetCustomEndCap(out customCap :CustomLineCap) :Status;
begin
     if (customCap = nil) then
     begin
         result := SetStatus(InvalidParameter);
         exit;
     end;

     result := SetStatus(GdipGetPenCustomEndCap(nativePen, customCap.nativeCap));
end;

function Pen.SetMiterLimit(miterLimit :single) :Status;
begin
     result := SetStatus(GdipSetPenMiterLimit(nativePen, miterLimit));
end;

function Pen.GetMiterLimit :single;
begin
     SetStatus(GdipGetPenMiterLimit(nativePen, result));
end;

function Pen.SetAlignment(penAlignment :PenAlignment) :Status;
begin
     result := SetStatus(GdipSetPenMode(nativePen, penAlignment));
end;

function Pen.GetAlignment :PenAlignment;
begin
     SetStatus(GdipGetPenMode(nativePen, result));
end;

function Pen.SetTransform(const Matrix :Matrix) :Status;
begin
     result := SetStatus(GdipSetPenTransform(nativePen, matrix.nativeMatrix));
end;

function Pen.GetTransform(out matrix :Matrix) :Status;
begin
     result := SetStatus(GdipGetPenTransform(nativePen, matrix.nativeMatrix));
end;

function Pen.ResetTransform :Status;
begin
     result := SetStatus(GdipResetPenTransform(nativePen));
end;

function Pen.MultiplyTransform(const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     result := SetStatus(GdipMultiplyPenTransform(nativePen, matrix.nativeMatrix, order));
end;

function Pen.TranslateTransform(dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     result := SetStatus(GdipTranslatePenTransform(nativePen, dx, dy, order));
end;

function Pen.ScaleTransform(sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     result := SetStatus(GdipScalePenTransform(nativePen, sx, sy, order));
end;

function Pen.RotateTransform(angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     result := SetStatus(GdipRotatePenTransform(nativePen, angle, order));
end;

function Pen.GetPenType :PenType;
begin
       SetStatus(GdipGetPenFillType(nativePen, Result));
end;

function Pen.SetColor(const color :Color) :Status;
begin
     result := SetStatus(GdipSetPenColor(nativePen, color.GetValue));
end;

function Pen.SetBrush(const brush :Brush) :Status;
begin
     result := SetStatus(GdipSetPenBrushFill(nativePen, brush.nativeBrush));
end;

function Pen.GetColor(out color :Color) :Status;
var
     ptype :PenType;
     aargb :ARGB;
begin
{     if (color = nil) then
     begin
          result := SetStatus(InvalidParameter);
          exit;
     end;}

     ptype := GetPenType;

     if (ptype <> PenTypeSolidColor) then
     begin
          result := WrongState;
          exit;
     end;

     Result := SetStatus(GdipGetPenColor(nativePen,aargb));
     if (Result = Ok) then  color.SetValue := aargb;
end;

function Pen.GetBrush :Brush;
var
     nativeBrush :GpBrush;
begin
     Result := nil;

     case (GetPenType) of
       PenTypeSolidColor:     result := SolidBrush.Create;
       PenTypeHatchFill:      result := HatchBrush.Create;
       PenTypeTextureFill:    result := TextureBrush.Create;
       PenTypePathGradient:   result := Brush.Create;
       PenTypeLinearGradient: result := LinearGradientBrush.Create;
     end;

     if (result <> nil) then
     begin
         SetStatus(GdipGetPenBrushFill(nativePen,nativeBrush));
         result.SetNativeBrush(nativeBrush);
     end;
end;

function Pen.GetDashStyle :DashStyle;
begin
     SetStatus(GdipGetPenDashStyle(nativePen, result));
end;

function Pen.SetDashStyle(dashStyle :DashStyle) :Status;
begin
     result := SetStatus(GdipSetPenDashStyle(nativePen, dashStyle));
end;

function Pen.GetDashOffset :single;
begin
     SetStatus(GdipGetPenDashOffset(nativePen, result));
end;

function Pen.SetDashOffset(dashOffset :single) :Status;
begin
     result := SetStatus(GdipSetPenDashOffset(nativePen, dashOffset));
end;

function Pen.SetDashPattern(var dashArray :single; count :integer) :Status;
begin
     result := SetStatus(GdipSetPenDashArray(nativePen, dashArray, count));
end;

function Pen.GetDashPatternCount :integer;
begin
     result := 0;
     SetStatus(GdipGetPenDashCount(nativePen, result));
end;

function Pen.GetDashPattern(out dashArray :single; count :integer):Status;
begin
     if {(dashArray = nil) or} (count <= 0) then
     begin
          result := SetStatus(InvalidParameter);
          exit;
     end;

     result := SetStatus(GdipGetPenDashArray(nativePen, dashArray, count));
end;

function Pen.SetCompoundArray(var compoundArray :single; count :integer) :Status;
begin
     result := SetStatus(GdipSetPenCompoundArray(nativePen, compoundArray, count));
end;

function Pen.GetCompoundArrayCount :integer;
begin
     Result := 0;
     SetStatus(GdipGetPenCompoundCount(nativePen, result));
end;

function Pen.GetCompoundArray(var compoundArray :single; count :integer) :Status;
begin
     if {(compoundArray = nil) or} (count <= 0) then
     begin
          result := SetStatus(InvalidParameter);
          exit;
     end;

     result := SetStatus(GdipGetPenCompoundArray(nativePen, compoundArray, count));
end;

function Pen.GetLastStatus :Status;
begin
     Result := lastResult;
     lastResult := Ok;
end;

constructor Pen.Create (nativePen :GpPen; status :Status);
begin
     inherited Create;
     lastResult := status;
     SetNativePen(nativePen);
end;

procedure Pen.SetNativePen(nativePen :GpPen);
begin
     self.nativePen := nativePen;
end;

function Pen.SetStatus(status :Status) :Status;
begin
     if (status <> Ok) then
         result := integer (lastResult = status)
     else
         result := status;
end;


//============================================================================
// *** GdiPlusStringFormat.h
//============================================================================

type
StringFormat_ = StringFormat;  // To solve somekind of conflict in delphi ?

constructor StringFormat.Create ( formatFlags :integer = 0; language :LANGID = LANG_NEUTRAL);
begin
     inherited Create;
     //nativeFormat := nil;
     lastError := GdipCreateStringFormat( formatFlags, language, nativeFormat);
end;

constructor StringFormat.Create( const format :StringFormat);
begin
     inherited Create;
     nativeFormat := nil;
     lastError := GdipCloneStringFormat( format.nativeFormat, nativeFormat);
end;

function StringFormat.Clone :StringFormat;
var
     clonedStringFormat :GpStringFormat;
begin
     clonedStringFormat := nil;

     lastError := GdipCloneStringFormat( nativeFormat, clonedStringFormat);

     if (lastError = Ok) then
         Result := StringFormat_.Create (clonedStringFormat, lastError)
     else
         Result := nil;
end;

destructor StringFormat.StringFormat;
begin
     GdipDeleteStringFormat(nativeFormat);
     inherited Destroy;
end;

function StringFormat.SetFormatFlags (flags :integer) :Status;
begin
     Result := SetStatus(GdipSetStringFormatFlags( nativeFormat, flags));
end;

function StringFormat.GetFormatFlags :integer;
begin
     SetStatus(GdipGetStringFormatFlags(nativeFormat, Result));
end;

function StringFormat.SetAlignment(align :StringAlignment) :Status;
begin
     Result := SetStatus(GdipSetStringFormatAlign( nativeFormat, align));
end;

function StringFormat.GetAlignment :StringAlignment;
begin
     SetStatus(GdipGetStringFormatAlign( nativeFormat, Result));
end;

function StringFormat.SetLineAlignment (align :StringAlignment) :Status;
begin
     Result := SetStatus(GdipSetStringFormatLineAlign( nativeFormat, align));
end;

function StringFormat.GetLineAlignment :StringAlignment;
begin
     SetStatus(GdipGetStringFormatLineAlign( nativeFormat, Result));
end;

function StringFormat.SetHotkeyPrefix(hotkeyPrefix :hotkeyPrefix) :Status;
begin
     Result := SetStatus(GdipSetStringFormatHotkeyPrefix( nativeFormat, hotkeyPrefix));
end;

function StringFormat.GetHotkeyPrefix :HotkeyPrefix;
begin
     SetStatus(GdipGetStringFormatHotkeyPrefix( nativeFormat, Result));
end;

function StringFormat.SetTabStops( firstTabOffset :single; count :integer; var tabStops :single) :Status;
begin
     Result := SetStatus(GdipSetStringFormatTabStops( nativeFormat, firstTabOffset, count, tabStops));
end;

function StringFormat.GetTabStopCount :integer;
begin
     SetStatus(GdipGetStringFormatTabStopCount(nativeFormat, result));
end;

function StringFormat.GetTabStops( count :integer; out firstTabOffset, tabStops :single) :Status;
begin
     Result := SetStatus(GdipGetStringFormatTabStops( nativeFormat, count, firstTabOffset, tabStops));
end;

function StringFormat.SetDigitSubstitution( language :LANGID; substitute :StringDigitSubstitute) :Status;
begin
     Result := SetStatus(GdipSetStringFormatDigitSubstitution( nativeFormat, language, substitute));
end;

function StringFormat.GetDigitSubstitutionLanguage :LANGID;
var
     substitute :StringDigitSubstitute;
begin
     SetStatus(GdipGetStringFormatDigitSubstitution( nativeFormat, Result, substitute));
end;

function StringFormat.GetDigitSubstitutionMethod :StringDigitSubstitute;
var
     language :LANGID;
begin
     SetStatus(GdipGetStringFormatDigitSubstitution( nativeFormat, language, Result));
end;

function StringFormat.SetTrimming (trimming :StringTrimming) :Status;
begin
     Result := SetStatus(GdipSetStringFormatTrimming( nativeFormat, trimming));
end;

function StringFormat.GetTrimming :StringTrimming;
begin
     SetStatus(GdipGetStringFormatTrimming( nativeFormat, Result));
end;

function StringFormat.SetMeasurableCharacterRanges( rangeCount :integer; var ranges :CharacterRange) :Status;
begin
     Result := SetStatus(GdipSetStringFormatMeasurableCharacterRanges( nativeFormat, rangeCount, ranges));
end;

function StringFormat.GetMeasurableCharacterRangeCount :integer;
begin
     SetStatus(GdipGetStringFormatMeasurableCharacterRangeCount( nativeFormat, Result));
end;

function StringFormat.GetLastStatus :Status;
begin
     Result := lastError;
     lastError := Ok;
end;

function StringFormat.SetStatus (newStatus :GpStatus) :Status;
begin
     if (newStatus = Ok) then
         Result := Ok
     else
         Result := integer (lastError = newStatus);
end;

procedure StringFormat.Assign (const source :StringFormat);
begin
     GdipDeleteStringFormat(nativeFormat);
     lastError := GdipCloneStringFormat( source.nativeFormat, nativeFormat);
end;

constructor StringFormat.Create (clonedStringFormat :GpStringFormat; status :Status);
begin
     inherited Create;
     lastError := status;
     nativeFormat := clonedStringFormat;
end;

class function StringFormat.GenericDefault :StringFormat;
begin
     Result := StringFormat_.Create;
     Result.lastError := GdipStringFormatGetGenericDefault( Result.nativeFormat);
end;

class function StringFormat.GenericTypographic :StringFormat;
begin
     Result := StringFormat_.Create;
     Result.lastError := GdipStringFormatGetGenericTypographic( Result.nativeFormat);
end;


//============================================================================
// *** GdiPlusGraphics.h
//============================================================================

class function Graphics.FromHDC (hdc :HDC) :Graphics;
begin
     Result := Graphics.Create (hdc);
end;

class function Graphics.FromHDC (hdc :HDC; hdevice :THandle) :Graphics;
begin
     Result := Graphics.Create (hdc,hdevice);
end;

class function Graphics.FromHWND (hwnd :HWND; icm :BOOL = FALSE) :Graphics;
begin
     Result := Graphics.Create (hwnd, icm);
end;

class function Graphics.FromImage (image :Image) :Graphics;
begin
     Result := Graphics.Create (image);
end;

constructor Graphics.Create (hdc :HDC);
var
     graphics :GpGraphics;
begin
     inherited Create;
     graphics := nil;
     lastResult := GdipCreateFromHDC (hdc,graphics);
     SetNativeGraphics (graphics);
end;

constructor Graphics.Create (hdc :HDC; hdevice :THandle);
var
     graphics :GpGraphics;
begin
     inherited Create;
     graphics := nil;
     lastResult := GdipCreateFromHDC2 (hdc,hdevice,graphics);
     SetNativeGraphics (graphics);
end;

constructor Graphics.create (hwnd :HWND; icm :BOOL{ = FALSE});
var
     graphics :GpGraphics;
begin
     inherited Create;
     graphics := nil;
     if (icm) then
        lastResult := GdipCreateFromHWNDICM (hwnd,graphics)
     else
        lastResult := GdipCreateFromHWND (hwnd,graphics);
     SetNativeGraphics(graphics);
end;

constructor Graphics.Create (image :Image);
var
     graphics :GpGraphics;
begin
     inherited Create;
     graphics := nil;
     if (image <> nil) then  lastResult := GdipGetImageGraphicsContext (image.nativeImage,graphics);
     SetNativeGraphics (graphics);
end;

destructor Graphics.Destroy;
begin
     GdipDeleteGraphics (nativeGraphics);
     inherited Destroy;
end;

procedure Graphics.Flush (intention :FlushIntention = FlushIntentionFlush);
begin
     GdipFlush (nativeGraphics,intention);
end;

    //------------------------------------------------------------------------
    // Interop methods
    //------------------------------------------------------------------------

    // Locks the graphics until ReleaseDC is called

function Graphics.GetHDC :HDC;
begin
     Result := 0;
     SetStatus (GdipGetDC (nativeGraphics,Result));
end;

procedure Graphics.ReleaseHDC (hdc :HDC);
begin
     SetStatus (GdipReleaseDC (nativeGraphics,hdc));
end;

    //------------------------------------------------------------------------
    // Rendering modes
    //------------------------------------------------------------------------

function Graphics.SetRenderingOrigin (x,y :integer) :Status;
begin
     Result := SetStatus (GdipSetRenderingOrigin (nativeGraphics, x,y));
end;

function Graphics.GetRenderingOrigin (out x,y :integer) :Status;
begin
     Result := SetStatus (GdipGetRenderingOrigin (nativeGraphics, x,y));
end;

function Graphics.SetCompositingMode (compositingMode :CompositingMode) :Status;
begin
     Result := SetStatus (GdipSetCompositingMode (nativeGraphics,compositingMode));
end;

function Graphics.GetCompositingMode :CompositingMode;
begin
     SetStatus (GdipGetCompositingMode (nativeGraphics,Result));
end;

function Graphics.SetCompositingQuality (compositingQuality :CompositingQuality) :Status;
begin
     Result := SetStatus (GdipSetCompositingQuality (nativeGraphics,compositingQuality));
end;

function Graphics.GetCompositingQuality :CompositingQuality;
begin
     SetStatus (GdipGetCompositingQuality (nativeGraphics,Result));
end;

function Graphics.SetTextRenderingHint (newMode :TextRenderingHint) :Status;
begin
     Result := SetStatus (GdipSetTextRenderingHint (nativeGraphics,newMode));
end;

function Graphics.GetTextRenderingHint :TextRenderingHint;
begin
     SetStatus (GdipGetTextRenderingHint (nativeGraphics,Result));
end;

function Graphics.SetTextContrast (contrast :UINT) :Status;
begin
     Result := SetStatus (GdipSetTextContrast (nativeGraphics,contrast));
end;

function Graphics.GetTextContrast :UINT;
begin
     SetStatus (GdipGetTextContrast(nativeGraphics,Result));
end;
{
function Graphics.SetTextGammaValue (gammaValue :UINT) :Status;
begin
     Result := SetStatus (GdipSetTextGammaValue (nativeGraphics,gammaValue));
end;

function Graphics.GetTextGammaValue :UINT;
begin
     SetStatus (GdipGetTextGammaValue (nativeGraphics,Result));
end;
}
function Graphics.GetInterpolationMode :InterpolationMode;
begin
     Result := InterpolationModeInvalid;
     SetStatus (GdipGetInterpolationMode (nativeGraphics,Result));
end;

function Graphics.SetInterpolationMode(interpolationMode :InterpolationMode) :Status;
begin
     Result := SetStatus (GdipSetInterpolationMode (nativeGraphics,interpolationMode));
end;

function Graphics.GetSmoothingMode :InterpolationMode;
begin
     Result := SmoothingModeInvalid;
     SetStatus (GdipGetSmoothingMode (nativeGraphics,Result));
end;

function Graphics.SetSmoothingMode (smoothingMode :SmoothingMode) :Status;
begin
     Result := SetStatus (GdipSetSmoothingMode (nativeGraphics,smoothingMode));
end;

function Graphics.GetPixelOffsetMode :PixelOffsetMode;
begin
     Result := PixelOffsetModeInvalid;
     SetStatus (GdipGetPixelOffsetMode (nativeGraphics,Result));
end;

function Graphics.SetPixelOffsetMode (pixelOffsetMode :PixelOffsetMode) :Status;
begin
     Result := SetStatus (GdipSetPixelOffsetMode (nativeGraphics,pixelOffsetMode));
end;

    //------------------------------------------------------------------------
    // Manipulate the current world transform
    //------------------------------------------------------------------------

function Graphics.SetTransform (const matrix :Matrix) :Status;
begin
     Result := SetStatus (GdipSetWorldTransform (nativeGraphics,matrix.nativeMatrix));
end;

function Graphics.ResetTransform :Status;
begin
     Result := SetStatus (GdipResetWorldTransform (nativeGraphics));
end;

function Graphics.MultiplyTransform (const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus (GdipMultiplyWorldTransform (nativeGraphics,matrix.nativeMatrix,order));
end;

function Graphics.TranslateTransform (dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus (GdipTranslateWorldTransform (nativeGraphics,dx,dy,order));
end;

function Graphics.ScaleTransform (sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus (GdipScaleWorldTransform (nativeGraphics,sx,sy,order));
end;

function Graphics.RotateTransform (angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus (GdipRotateWorldTransform (nativeGraphics,angle,order));
end;

function Graphics.GetTransform (matrix :Matrix) :Status;
begin
     Result := SetStatus (GdipGetWorldTransform (nativeGraphics,matrix.nativeMatrix));
end;

function Graphics.SetPageUnit (u :GpUnit) :Status;
begin
     Result := SetStatus (GdipSetPageUnit (nativeGraphics,u));
end;

function Graphics.SetPageScale (scale :single) :Status;
begin
     Result := SetStatus (GdipSetPageScale (nativeGraphics,scale));
end;

function Graphics.GetPageUnit :GpUnit;
begin
     Result := 0; // compiler warning if not there
     SetStatus (GdipGetPageUnit (nativeGraphics,Result));
end;

function Graphics.GetPageScale :single;
begin
     SetStatus (GdipGetPageScale (nativeGraphics,Result));
end;

function Graphics.GetDpiX :single;
begin
     SetStatus (GdipGetDpiX (nativeGraphics,Result));
end;

function Graphics.GetDpiY :single;
begin
     SetStatus (GdipGetDpiY (nativeGraphics,Result));
end;

function Graphics.TransformPoints (destSpace,srcSpace :CoordinateSpace; out pts :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipTransformPoints (nativeGraphics,destSpace,srcSpace,pts,count));
end;

function Graphics.TransformPoints (destSpace,srcSpace :CoordinateSpace; out pts :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipTransformPointsI (nativeGraphics,destSpace,srcSpace,pts,count));
end;

    //------------------------------------------------------------------------
    // GetNearestColor (for <= 8bpp surfaces).  Note: Alpha is ignored.
    //------------------------------------------------------------------------

function Graphics.GetNearestColor (out color :Color) :Status;
begin
{     if (color = nil) then
     begin
         Result := SetStatus (InvalidParameter);
         exit;
     end;}

     Result :=SetStatus (GdipGetNearestColor (nativeGraphics,color.argb));
end;

function Graphics.DrawLine (const pen :Pen; x1,y1,x2,y2 :single) :Status;
begin
     Result := SetStatus (GdipDrawLine (nativeGraphics,pen.nativePen, x1,y1,x2,y2));
end;

function Graphics.DrawLine (const pen :Pen; const pt1,pt2 :PointF) :Status;
begin
     Result := DrawLine (pen,pt1.X,pt1.Y,pt2.X,pt2.Y);
end;

function Graphics.DrawLines (const pen :Pen; const points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawLines (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawLine (const pen :Pen; x1,y1,x2,y2 :integer) :Status;
begin
     Result := SetStatus (GdipDrawLineI (nativeGraphics,pen.nativePen, x1,y1,x2,y2));
end;

function Graphics.DrawLine (const pen :Pen; const pt1,pt2 :Point) :Status;
begin
     Result := DrawLine (pen,pt1.X,pt1.Y,pt2.X,pt2.Y);
end;

function Graphics.DrawLines (const pen :Pen; const points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawLinesI (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawArc (const pen :Pen; x,y,width,height,startangle,sweepangle :single) :Status;
begin
     Result := SetStatus (GdipDrawArc (nativeGraphics,pen.nativePen,x,y,width,height,startangle,sweepangle));
end;

function Graphics.DrawArc (const pen :Pen; const rect :RectF; startangle,sweepangle :single) :Status;
begin
     Result := DrawArc (pen, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.DrawArc (const pen :Pen; x,y,width,height :integer; startangle,sweepangle :single) :Status;
begin
     Result := SetStatus (GdipDrawArcI (nativeGraphics,pen.nativePen,x,y,width,height,startangle,sweepangle));
end;

function Graphics.DrawArc (const pen :Pen; const rect :Rect; startangle,sweepangle :single) :Status;
begin
     Result := DrawArc (pen, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.DrawBezier (const pen :Pen; x1,y1,x2,y2,x3,y3,x4,y4 :single) :Status;
begin
     Result := SetStatus (GdipDrawBezier (nativeGraphics, pen.nativePen, x1,y1,x2,y2,x3,y3,x4,y4));
end;

function Graphics.DrawBezier (const pen :Pen; const pt1,pt2,pt3,pt4 :PointF) :Status;
begin
     Result := DrawBezier (pen, pt1.X,pt1.Y, pt2.X,pt2.Y, pt3.X,pt3.Y, pt4.X,pt4.Y);
end;

function Graphics.DrawBeziers (const pen :Pen; const points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawBeziers (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawBezier (const pen :Pen; x1,y1,x2,y2,x3,y3,x4,y4 :integer) :Status;
begin
     Result := SetStatus (GdipDrawBezierI (nativeGraphics, pen.nativePen, x1,y1,x2,y2,x3,y3,x4,y4));
end;

function Graphics.DrawBezier (const pen :Pen; const pt1,pt2,pt3,pt4 :Point) :Status;
begin
     Result := DrawBezier (pen, pt1.X,pt1.Y, pt2.X,pt2.Y, pt3.X,pt3.Y, pt4.X,pt4.Y);
end;

function Graphics.DrawBeziers (const pen :Pen; const points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawBeziersI (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawRectangle (const pen :Pen; const rect :RectF) :Status;
begin
     Result := DrawRectangle (pen, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawRectangle (const pen :Pen; x,y,width,height :single) :Status;
begin
     Result := SetStatus (GdipDrawRectangle (nativeGraphics,pen.nativePen, x,y, width,height));
end;

function Graphics.DrawRectangles (const pen :Pen; const rects :RectF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawRectangles (nativeGraphics,pen.nativePen,rects,count));
end;

function Graphics.DrawRectangle (const pen :Pen; const rect :Rect) :Status;
begin
     Result := DrawRectangle (pen, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawRectangle (const pen :Pen; x,y,width,height :integer) :Status;
begin
     Result := SetStatus (GdipDrawRectangleI (nativeGraphics,pen.nativePen, x,y, width,height));
end;

function Graphics.DrawRectangles (const pen :Pen; const rects :Rect; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawRectanglesI (nativeGraphics,pen.nativePen,rects,count));
end;

function Graphics.DrawEllipse (const pen :Pen; const rect :RectF) :Status;
begin
     Result := DrawEllipse (pen, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawEllipse (const pen :Pen; x,y,width,height :single) :Status;
begin
     Result := SetStatus (GdipDrawEllipse (nativeGraphics,pen.nativePen, x,y, width,height));
end;

function Graphics.DrawEllipse (const pen :Pen; const rect :Rect) :Status;
begin
     Result := DrawEllipse (pen, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawEllipse (const pen :Pen; x,y,width,height :integer) :Status;
begin
     Result := SetStatus (GdipDrawEllipseI (nativeGraphics,pen.nativePen, x,y, width,height));
end;

function Graphics.DrawPie (const pen :Pen; const rect :RectF; startangle,sweepangle :single) :Status;
begin
     Result := DrawPie (pen, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.DrawPie (const pen :Pen; x,y,width,height,startangle,sweepangle :single) :Status;
begin
     Result := SetStatus (GdipDrawPie (nativeGraphics,pen.nativePen, x,y, width,height, startangle,sweepangle));
end;

function Graphics.DrawPie (const pen :Pen; const rect :Rect; startangle,sweepangle :single) :Status;
begin
     Result := DrawPie (pen, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.DrawPie (const pen :Pen; x,y,width,height :integer; startangle,sweepangle :single) :Status;
begin
     Result := SetStatus (GdipDrawPieI (nativeGraphics,pen.nativePen, x,y, width,height, startangle,sweepangle));
end;

function Graphics.DrawPolygon (const pen :Pen; const points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawPolygon (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawPolygon (const pen :Pen; const points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawPolygonI (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawPath (const pen :Pen; const path :GraphicsPath) :Status;
begin
     Result := SetStatus (GdipDrawPath (nativeGraphics,pen.nativePen,path.nativePath));
end;

function Graphics.DrawCurve (const pen :Pen; points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawCurve (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawCurve (const pen :Pen; const points :PointF; count :integer; tension :single) :Status;
begin
     Result := SetStatus (GdipDrawCurve2 (nativeGraphics,pen.nativePen,points,count,tension));
end;

function Graphics.DrawCurve (const pen :Pen; const points :PointF; count,offset,numberOfSegments :integer; tension :single = 0.5) :Status;
begin
     Result := SetStatus (GdipDrawCurve3 (nativeGraphics,pen.nativePen,points,count,offset,numberOfSegments,tension));
end;

function Graphics.DrawCurve (const pen :Pen; points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawCurveI (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawCurve (const pen :Pen; const points :Point; count :integer; tension :single) :Status;
begin
     Result := SetStatus (GdipDrawCurve2I (nativeGraphics,pen.nativePen,points,count,tension));
end;

function Graphics.DrawCurve (const pen :Pen; const points :Point; count,offset,numberOfSegments :integer; tension :single = 0.5) :Status;
begin
     Result := SetStatus (GdipDrawCurve3I (nativeGraphics,pen.nativePen,points,count,offset,numberOfSegments,tension));
end;

function Graphics.DrawClosedCurve (const pen :Pen; const points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawClosedCurve (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawClosedCurve (const pen :Pen; const points :PointF; count :integer; tension :single) :Status;
begin
     Result := SetStatus (GdipDrawClosedCurve2 (nativeGraphics,pen.nativePen,points,count,tension));
end;

function Graphics.DrawClosedCurve (const pen :Pen; const points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipDrawClosedCurveI (nativeGraphics,pen.nativePen,points,count));
end;

function Graphics.DrawClosedCurve (const pen :Pen; const points :Point; count :integer; tension :single) :Status;
begin
     Result := SetStatus (GdipDrawClosedCurve2I (nativeGraphics,pen.nativePen,points,count,tension));
end;

function Graphics.Clear (const color :Color) :Status;
begin
     Result := SetStatus (GdipGraphicsClear (nativeGraphics,color.GetValue));
end;

function Graphics.FillRectangle (const Brush :Brush; const rect :RectF) :Status;
begin
     Result := FillRectangle (brush, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.FillRectangle (const brush :Brush; x,y,width,height :single) :Status;
begin
     Result := SetStatus (GdipFillRectangle (nativeGraphics,brush.nativeBrush, x,y, width,height));
end;

function Graphics.FillRectangles (const brush :Brush; const rects :RectF; count :integer) :Status;
begin
     Result := SetStatus (GdipFillRectangles (nativeGraphics,brush.nativeBrush,rects,count));
end;

function Graphics.FillRectangle (const Brush :Brush; const rect :Rect) :Status;
begin
     Result := FillRectangle (brush, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.FillRectangle (const brush :Brush; x,y,width,height :integer) :Status;
begin
     Result := SetStatus (GdipFillRectangleI (nativeGraphics,brush.nativeBrush, x,y, width,height));
end;

function Graphics.FillRectangles (const brush :Brush; const rects :Rect; count :integer) :Status;
begin
     Result := SetStatus (GdipFillRectanglesI (nativeGraphics,brush.nativeBrush,rects,count));
end;

function Graphics.FillPolygon (const brush :Brush; const points :PointF; count :integer) :Status;
begin
     Result := FillPolygon (brush, points, count, FillModeAlternate);
end;

function Graphics.FillPolygon (const brush :Brush; points :PointF; count :integer; fillMode :FillMode) :Status;
begin
     Result := SetStatus (GdipFillPolygon (nativeGraphics,brush.nativeBrush,points,count,fillMode));
end;

function Graphics.FillPolygon (const brush :Brush; const points :Point; count :integer) :Status;
begin
     Result := FillPolygon (brush, points, count, FillModeAlternate);
end;

function Graphics.FillPolygon (const brush :Brush; points :Point; count :integer; fillMode :FillMode) :Status;
begin
     Result := SetStatus (GdipFillPolygonI (nativeGraphics,brush.nativeBrush,points,count,fillMode));
end;

function Graphics.FillEllipse (const brush :Brush; const rect :RectF) :Status;
begin
     Result := FillEllipse (brush, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.FillEllipse (const brush :Brush; x,y,width,height :single) :Status;
begin
     Result := SetStatus (GdipFillEllipse (nativeGraphics,brush.nativeBrush, x,y, width,height));
end;

function Graphics.FillEllipse (const brush :Brush; const rect :Rect) :Status;
begin
     Result := FillEllipse (brush, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.FillEllipse (const brush :Brush; x,y,width,height :integer) :Status;
begin
     Result := SetStatus (GdipFillEllipseI (nativeGraphics,brush.nativeBrush, x,y, width,height));
end;

function Graphics.FillPie (const brush :Brush; const rect :RectF; startAngle,sweepAngle :single) :Status;
begin
     Result := FillPie (brush, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.FillPie (const brush :Brush; x,y,width,height, startAngle,sweepAngle :single) :Status;
begin
     Result := SetStatus (GdipFillPie (nativeGraphics,brush.nativeBrush, x,y, width,height, startAngle,sweepAngle));
end;

function Graphics.FillPie (const brush :Brush; const rect :Rect; startAngle,sweepAngle :single) :Status;
begin
     Result := FillPie (brush, rect.X,rect.Y, rect.Width,rect.Height, startAngle,sweepAngle);
end;

function Graphics.FillPie (const brush :Brush; x,y,width,height :integer; startAngle,sweepAngle :single) :Status;
begin
     Result := SetStatus (GdipFillPieI (nativeGraphics,brush.nativeBrush, x,y, width,height, startAngle,sweepAngle));
end;

function Graphics.FillPath (const brush :Brush; const path :GraphicsPath) :Status;
begin
     Result := SetStatus (GdipFillPath (nativeGraphics,brush.nativeBrush,path.nativePath));
end;

function Graphics.FillClosedCurve (const brush :Brush; const points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipFillClosedCurve (nativeGraphics,brush.nativeBrush,points,count));
end;

function Graphics.FillClosedCurve (const brush :Brush; const points :PointF; count :integer; fillMode :FillMode; tension :single = 0.5) :Status;
begin
     Result := SetStatus (GdipFillClosedCurve2 (nativeGraphics,brush.nativeBrush,points,count,tension,fillmode));
end;

function Graphics.FillClosedCurve (const brush :Brush; const points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipFillClosedCurveI (nativeGraphics,brush.nativeBrush,points,count));
end;

function Graphics.FillClosedCurve (const brush :Brush; const points :Point; count :integer; fillMode :FillMode; tension :single = 0.5) :Status;
begin
     Result := SetStatus (GdipFillClosedCurve2I (nativeGraphics,brush.nativeBrush,points,count,tension,fillmode));
end;

function Graphics.FillRegion (const brush :Brush; const region :Region) :Status;
begin
     Result := SetStatus (GdipFillRegion (nativeGraphics,brush.nativeBrush,region.nativeRegion));
end;

function Graphics.DrawString (const str :widestring; length :integer; const font :Font;
                              const layoutRect :RectF; const stringFormat :StringFormat;
                              const brush :Brush) :Status;
begin
     Result := SetStatus (GdipDrawString (nativeGraphics,pwidechar(str),length,font.nativeFont,layoutRect,
                          stringFormat.nativeFormat,brush.nativeBrush));
end;

function Graphics.DrawString (const str :widestring; length :integer; const font :Font;
                              const origin :PointF; const brush :Brush) :Status;
var
     rect :RectF;
begin
     rect.New (origin.X,origin.Y,0.0,0.0);
     Result := SetStatus (GdipDrawString (nativeGraphics,pwidechar(str),length,font.nativeFont,rect,nil,brush.nativeBrush));
end;

function Graphics.DrawString (const str :widestring; length :integer; const font :Font;
                              const origin :PointF; const stringFormat :StringFormat;
                              const brush :Brush) :Status;
var
     rect :RectF;
begin
     rect.New (origin.X,origin.Y,0.0,0.0);
     Result := SetStatus (GdipDrawString (nativeGraphics,pwidechar(str),length,font.nativeFont,rect,stringFormat.nativeFormat,brush.nativeBrush));
end;

function Graphics.MeasureString (const str :widestring; length :integer; const font :Font; const layoutRect :RectF;
                                 const stringFormat :StringFormat;
                                 out boundingBox :RectF; out codepointsFitted,linesFilled :integer) :Status;
begin
     Result := SetStatus (GdipMeasureString (
            nativeGraphics,
            pwidechar(str),length,
            font.nativeFont,
            layoutRect,
            stringFormat.nativeFormat,
            boundingBox,
            @codepointsFitted,
            @linesFilled));
end;

function Graphics.MeasureString (const str :widestring; length :integer; const font :Font; const layoutRectSize :SizeF;
                                 const stringFormat :StringFormat;
                                 out size :SizeF; out codepointsFitted,linesFilled :integer) :Status;
var
     layoutRect,boundingBox :RectF;
begin
     layoutRect.New (0,0, layoutRectSize.Width,layoutRectSize.Height);

{        if (size = nil)
        begin
             Result := SetStatus (InvalidParameter);
             exit;
        end;}

     Result := SetStatus (GdipMeasureString (
            nativeGraphics,
            pwidechar (str),length,
            font.nativeFont,
            layoutRect,
            stringFormat.nativeFormat,
            boundingBox,
            @codepointsFitted,
            @linesFilled
        ));

     if (Result = Ok) then
     begin
          size.Width  := boundingBox.Width;
          size.Height := boundingBox.Height;
     end;
end;

function Graphics.MeasureString (const str :widestring; length :integer; const font :Font; const origin :PointF;
                                 const stringFormat :StringFormat; out boundingBox :RectF) :Status;
var
     rect :RectF;
begin
     rect.New (origin.X,origin.Y, 0.0,0.0);

     Result := SetStatus (GdipMeasureString (
            nativeGraphics,
            pwidechar (str),
            length,
            font.nativeFont,
            rect,
            stringFormat.nativeFormat,
            boundingBox,
            nil,nil));
end;

function Graphics.MeasureString (const str :widestring; length :integer; const font :Font;
                                 const layoutRect :RectF; out boundingBox :RectF) :Status;
begin
     Result := SetStatus (GdipMeasureString (
            nativeGraphics,
            pwidechar (str),
            length,
            font.nativeFont,
            layoutRect,
            nil,
            boundingBox,
            nil,
            nil
        ));
end;

function Graphics.MeasureString (const str :widestring; length :integer; const font :Font;
                                 const origin :PointF; out boundingBox :RectF) :Status;
var
     rect :RectF;
begin
     rect.new (origin.X,origin.Y, 0.0,0.0);

     Result := SetStatus (GdipMeasureString (
            nativeGraphics,
            pwidechar (str),
            length,
            font.nativeFont,
            rect,
            nil,
            boundingBox,
            nil,nil));
end;

function Graphics.MeasureCharacterRanges (const str :widestring; length :integer; const font :Font;
                                          const layoutRect :RectF; const stringFormat :stringFormat;
                                          regionCount :integer; out regions :Region) :Status;
var
     nativeRegions :array of GpRegion;
     i :integer;
     rgs :^Region;
begin
     raise Exception.Create ('This need to be tested');
     rgs := @regions; // first region

     if (regionCount <= 0) then
     begin
          Result := InvalidParameter;
          exit;
     end;

     setlength (nativeRegions,regionCount);

     for i := 0 to regionCount-1 do
     begin
          nativeRegions[i] := rgs.nativeRegion;
          rgs := pointer (integer(rgs) + sizeof (Region));  // next region
     end;

     Result := SetStatus (GdipMeasureCharacterRanges (
            nativeGraphics,
            pwidechar (str),
            length,
            font.nativeFont,
            layoutRect,
            stringFormat.nativeFormat,
            regionCount,
            nativeRegions[0]
        ));
end;
{
function Graphics.MeasureStringRegion (const str :widestring; length :integer; const font :Font;
                                       const layoutRect :RectF; const stringFormat :StringFormat;
                                       firstCharacterIndex,characterCount :integer;
                                       out region :Region) :Status;
begin
     if (region = nil) then
     begin
          Result := SetStatus (InvalidParameter);
          exit;
     end;

     Result := (SetStatus (GdipMeasureStringRegion (
            nativeGraphics,
            pwidechar (str),
            length,
            font.nativeFont,
            layoutRect,
            stringFormat.nativeFormat,
            firstCharacterIndex,
            characterCount,
            region.nativeRegion)));
end;
}
function Graphics.DrawDriverString (const text :widestring; length :integer; const font :Font;
                                    const brush :Brush; const positions :PointF; flags :integer;
                                    const matrix :Matrix) :Status;
begin
     Result := SetStatus (GdipDrawDriverString (
            nativeGraphics,
            pwidechar (text),
            length,
            font.nativeFont,
            brush.nativeBrush,
            positions,
            flags,
            matrix.nativeMatrix));
end;

function Graphics.MeasureDriverString (const text :widestring; length :integer; const font :Font;
                                       const positions :PointF; flags :integer; const matrix :Matrix;
                                       out boundingBox :RectF) :Status;
begin
     Result := SetStatus (GdipMeasureDriverString (
            nativeGraphics,
            pwidechar (text),
            length,
            font.nativeFont,
            positions,
            flags,
            matrix.nativeMatrix,
            boundingBox
        ));
end;
{
function Graphics.DriverStringPointToCodepoint (const text :widestring; length :integer; const font :Font;
                                                const positions :PointF; flags :integer; const matrix :Matrix; const hit :PointF;
                                                out index :integer; out rightEdge :BOOL; out distance :single) :Status;
begin
     Result := SetStatus (GdipDriverStringPointToCodepoint (
            nativeGraphics,
            pwidechar (text),
            length,
            font.nativeFont,
            positions,
            flags,
            matrix.nativeMatrix,
            hit,
            index,
            rightEdge,
            distance));
end;
}
    // Draw a cached bitmap on this graphics destination offset by
    // x, y. Note this will fail with WrongState if the CachedBitmap
    // native format differs from this Graphics.

function Graphics.DrawCachedBitmap (cb :CachedBitmap; x,y :integer) :Status;
begin
     Result := SetStatus (GdipDrawCachedBitmap (nativeGraphics,cb.nativeCachedBitmap,x,y));
end;

function Graphics.DrawImage (image :Image; const point :PointF) :Status;
begin
     Result := DrawImage (image, point.X,point.Y);
end;

function Graphics.DrawImage (image :Image; x,y :single) :Status;
begin
     Result := SetStatus (GdipDrawImage (nativeGraphics,image.nativeImage,x,y));
end;

function Graphics.DrawImage (image :Image; const rect :RectF) :Status;
begin
     Result := DrawImage (image, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawImage (image :Image; x,y,width,height :single) :Status;
begin
     Result := SetStatus (GdipDrawImageRect (nativeGraphics,image.nativeImage,x,y,width,height));
end;

function Graphics.DrawImage (image :Image; const point :Point) :Status;
begin
     Result := DrawImage (image, point.X,point.Y);
end;

function Graphics.DrawImage (image :Image; x,y :integer) :Status;
begin
     Result := SetStatus (GdipDrawImageI (nativeGraphics,image.nativeImage,x,y));
end;

function Graphics.DrawImage (image :Image; const rect :Rect) :Status;
begin
     Result := DrawImage (image, rect.X,rect.Y, rect.Width,rect.Height);
end;

function Graphics.DrawImage (image :Image; x,y,width,height :integer) :Status;
begin
     Result := SetStatus (GdipDrawImageRectI (nativeGraphics,image.nativeImage,x,y,width,height));
end;

    // Affine Draw Image
    // destPoints.length = 3: rect => parallelogram
    //     destPoints[0] <=> top-left corner of the source rectangle
    //     destPoints[1] <=> top-right corner
    //     destPoints[2] <=> bottom-left corner
    // destPoints.length = 4: rect => quad
    //     destPoints[3] <=> bottom-right corner
    
function Graphics.DrawImage (image :Image; const destPoints :PointF; count :integer) :Status;
begin
     if (count <> 3) and (count <> 4) then
     begin
          Result := SetStatus (InvalidParameter);
          exit;
     end;

     Result := SetStatus (GdipDrawImagePoints (nativeGraphics,image.nativeImage,destPoints,count));
end;

function Graphics.DrawImage (image :Image; const destPoints :Point; count :integer) :Status;
begin
     if (count <> 3) and (count <> 4) then
     begin
         Result := SetStatus (InvalidParameter);
         exit;
     end;

     Result := SetStatus (GdipDrawImagePointsI (nativeGraphics,image.nativeImage,destPoints,count));
end;

function Graphics.DrawImage (image :Image; x,y,srcx,srcy,srcwidth,srcheight :single; srcUnit :GpUnit) :Status;
begin
     Result := SetStatus (GdipDrawImagePointRect (nativeGraphics,image.nativeImage,x,y,srcx,srcy,srcwidth,srcheight,srcUnit));
end;

function Graphics.DrawImage (image :Image; const destRect :RectF; srcx,srcy,srcwidth,srcheight :single;
                             srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                             callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status;
var
     imageAttr :GpImageAttributes;
begin
     if (imageAttributes = nil) then  imageAttr := nil  else  imageAttr := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipDrawImageRectRect (nativeGraphics,image.nativeImage,destRect.X,destRect.Y,destRect.Width,destRect.Height,
                                                 srcx,srcy,srcwidth,srcheight,srcUnit,
                                                 imageAttr,callback,callbackData));
end;

function Graphics.DrawImage (image :Image; destPoints :PointF; count :integer; srcx,srcy,srcwidth,srcheight :single;
                             srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                             callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status;
var
     imageAttr :GpImageAttributes;
begin
     if (imageAttributes = nil) then  imageAttr := nil  else  imageAttr := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipDrawImagePointsRect (nativeGraphics,image.nativeImage,destPoints,count,
                                                   srcx,srcy,srcwidth,srcheight,srcUnit,
                                                   imageAttr,callback,callbackData));
end;

function Graphics.DrawImage (image :Image; x,y,srcx,srcy,srcwidth,srcheight :integer; srcUnit :GpUnit) :Status;
begin
     Result := SetStatus (GdipDrawImagePointRectI (nativeGraphics,image.nativeImage,x,y,srcx,srcy,srcwidth,srcheight,srcUnit));
end;

function Graphics.DrawImage (image :Image; const destRect :Rect; srcx,srcy,srcwidth,srcheight :integer;
                             srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                             callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status;
var
     imageAttr :GpImageAttributes;
begin
     if (imageAttributes = nil) then  imageAttr := nil  else  imageAttr := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipDrawImageRectRectI (nativeGraphics,image.nativeImage,destRect.X,destRect.Y,destRect.Width,destRect.Height,
                                                  srcx,srcy,srcwidth,srcheight,srcUnit,
                                                  imageAttr,callback,callbackData));
end;

function Graphics.DrawImage (image :Image; destPoints :Point; count :integer; srcx,srcy,srcwidth,srcheight :integer;
                             srcUnit :GpUnit; const imageAttributes :ImageAttributes = nil;
                             callback :DrawImageAbort = nil; callbackData :pointer = nil) :Status;
var
     imageAttr :GpImageAttributes;
begin
     if (imageAttributes = nil) then  imageAttr := nil  else  imageAttr := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipDrawImagePointsRectI (nativeGraphics,image.nativeImage,destPoints,count,
                                                    srcx,srcy,srcwidth,srcheight,srcUnit,
                                                    imageAttr,callback,callbackData));
end;

    // The following methods are for playing an EMF+ to a graphics
    // via the enumeration interface.  Each record of the EMF+ is
    // sent to the callback (along with the callbackData).  Then
    // the callback can invoke the Metafile::PlayRecord method
    // to play the particular record.

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoint :PointF;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestPoint (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoint,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoint :Point;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestPointI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoint,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destRect :RectF;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestRect (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destRect,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destRect :Rect;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestRectI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destRect,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoints :PointF; count :integer;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestPoints (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoints,
                    count,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoints :Point; count :integer;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileDestPointsI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoints,
                    count,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoint :PointF;
                                     const srcRect :RectF; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestPoint (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoint,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoint :Point;
                                     const srcRect :Rect; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestPointI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoint,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destRect,srcRect :RectF; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestRect (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destRect,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destRect,srcRect :Rect; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestRectI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destRect,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoints :PointF; count :integer;
                                     const srcRect :RectF; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestPoints (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoints,
                    count,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.EnumerateMetafile (const metafile :Metafile; const destPoints :Point; count :integer;
                                     const srcRect :Rect; srcUnit :GpUnit;
                                     callback :EnumerateMetafileProc; callbackdata :pointer = nil;
                                     imageAttributes :ImageAttributes = nil) :Status;
var
     ia :GpImageAttributes;
begin
     if (imageAttributes = nil) then  ia := nil  else  ia := imageAttributes.nativeImageAttr;

     Result := SetStatus (GdipEnumerateMetafileSrcRectDestPointsI (
                    nativeGraphics,
                    GpMetafile (metafile.nativeImage),
                    destPoints,
                    count,
                    srcRect,
                    srcUnit,
                    callback,
                    callbackData,
                    ia));
end;

function Graphics.SetClip (const g :Graphics; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipGraphics (nativeGraphics,g.nativeGraphics,combineMode));
end;

function Graphics.SetClip (const rect :RectF; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipRect (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, combineMode));
end;

function Graphics.SetClip (const rect :Rect; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipRectI (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, combineMode));
end;

function Graphics.SetClip (const path :GraphicsPath; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipPath (nativeGraphics,path.nativePath,combineMode));
end;

function Graphics.SetClip (const region :Region; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipRegion (nativeGraphics,region.nativeRegion,combineMode));
end;

    // This is different than the other SetClip methods because it assumes
    // that the HRGN is already in device units, so it doesn't transform
    // the coordinates in the HRGN.

function Graphics.SetClip (hRgn :HRGN; combineMode :CombineMode = CombineModeReplace) :Status;
begin
     Result := SetStatus (GdipSetClipHrgn (nativeGraphics,hRgn,combineMode));
end;

function Graphics.IntersectClip (const rect :RectF) :Status;
begin
     Result := SetStatus (GdipSetClipRect (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, CombineModeIntersect));
end;

function Graphics.IntersectClip (const rect :Rect) :Status;
begin
     Result := SetStatus (GdipSetClipRectI (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, CombineModeIntersect));
end;

function Graphics.IntersectClip (const region :Region) :Status;
begin
     Result := SetStatus (GdipSetClipRegion (nativeGraphics, region.nativeRegion, CombineModeIntersect));
end;

function Graphics.ExcludeClip(const rect :RectF) :Status;
begin
     Result := SetStatus (GdipSetClipRect (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, CombineModeExclude));
end;

function Graphics.ExcludeClip (const rect :Rect) :Status;
begin
     Result := SetStatus (GdipSetClipRectI (nativeGraphics, rect.X,rect.Y, rect.Width,rect.Height, CombineModeExclude));
end;

function Graphics.ExcludeClip (const region :Region) :Status;
begin
     Result := SetStatus (GdipSetClipRegion (nativeGraphics,region.nativeRegion,CombineModeExclude));
end;

function Graphics.ResetClip :Status;
begin
     Result := SetStatus (GdipResetClip (nativeGraphics));
end;

function Graphics.TranslateClip (dx,dy :single) :Status;
begin
     Result := SetStatus (GdipTranslateClip (nativeGraphics, dx,dy));
end;

function Graphics.TranslateClip (dx,dy :integer) :Status;
begin
     Result := SetStatus (GdipTranslateClipI (nativeGraphics, dx,dy));
end;

function Graphics.GetClip (out region :Region) :Status;
begin
     Result := SetStatus (GdipGetClip (nativeGraphics,region.nativeRegion));
end;

function Graphics.GetClipBounds (out rect :RectF) :Status;
begin
     Result := SetStatus (GdipGetClipBounds (nativeGraphics, rect));
end;

function Graphics.GetClipBounds (out rect :Rect) :Status;
begin
     Result := SetStatus (GdipGetClipBoundsI (nativeGraphics, rect));
end;

function Graphics.IsClipEmpty :BOOL;
begin
     Result := FALSE;
     SetStatus (GdipIsClipEmpty (nativeGraphics,Result));
end;

function Graphics.GetVisibleClipBounds (out rect :RectF) :Status;
begin
     Result := SetStatus (GdipGetVisibleClipBounds (nativeGraphics,rect));
end;

function Graphics.GetVisibleClipBounds (out rect :Rect) :Status;
begin
     Result := SetStatus (GdipGetVisibleClipBoundsI (nativeGraphics,rect));
end;

function Graphics.IsVisibleClipEmpty :BOOL;
begin
     Result := FALSE;
     SetStatus (GdipIsVisibleClipEmpty(nativeGraphics,Result));
end;

function Graphics.IsVisible (x,y :integer) :BOOL;
var
     p :Point;
begin
     p.New (x,y);
     Result := IsVisible (p);
end;

function Graphics.IsVisible (const point :Point) :BOOL;
begin
     Result := FALSE;
     SetStatus (GdipIsVisiblePointI (nativeGraphics,point.X,point.Y,Result));
end;

function Graphics.IsVisible (x,y,width,height :integer) :BOOL;
var
     r :Rect;
begin
     r.New (x,y,width,height);
     Result := IsVisible (r);
end;

function Graphics.IsVisible (const rect :Rect) :BOOL;
begin
     Result := TRUE;
     SetStatus (GdipIsVisibleRectI (nativeGraphics,rect.X,rect.Y,rect.Width,rect.Height,Result));
end;

function Graphics.IsVisible (x,y :single) :BOOL;
var
     p :PointF;
begin
     p.New (x,y);
     Result := IsVisible (p);
end;

function Graphics.IsVisible (const point :PointF) :BOOL;
begin
     Result := FALSE;
     SetStatus (GdipIsVisiblePoint(nativeGraphics,point.X,point.Y,Result));
end;

function Graphics.IsVisible (x,y,width,height :single) :BOOL;
var
     r :RectF;
begin
     r.New (x,y,width,height);
     Result := IsVisible (r);
end;

function Graphics.IsVisible (const rect :RectF) :BOOL;
begin
     Result := TRUE;
     SetStatus (GdipIsVisibleRect (nativeGraphics,rect.X,rect.Y,rect.Width,rect.Height,Result));
end;

function Graphics.Save :GraphicsState;
begin
     SetStatus (GdipSaveGraphics (nativeGraphics,Result));
end;

function Graphics.Restore (gstate :GraphicsState) :Status;
begin
     Result := SetStatus (GdipRestoreGraphics (nativeGraphics,gstate));
end;

function Graphics.BeginContainer (const dstrect,srcrect :RectF; u :GpUnit) :GraphicsContainer;
begin
     SetStatus (GdipBeginContainer (nativeGraphics,dstrect,srcrect,u,Result));
end;

function Graphics.BeginContainer (const dstrect,srcrect :Rect; u :GpUnit) :GraphicsContainer;
begin
     SetStatus (GdipBeginContainerI (nativeGraphics,dstrect,srcrect,u,Result));
end;

function Graphics.BeginContainer :GraphicsContainer;
begin
     SetStatus (GdipBeginContainer2 (nativeGraphics,Result));
end;

function Graphics.EndContainer (state :GraphicsContainer) :Status;
begin
     Result := SetStatus (GdipEndContainer (nativeGraphics,state));
end;

    // Only valid when recording metafiles.

function Graphics.AddMetafileComment (var data :BYTE; sizeData :UINT) :Status;
begin
     Result := SetStatus (GdipComment (nativeGraphics, sizeData, data));
end;
{
function Graphics.GetLayout :GraphicsLayout;
begin
     SetStatus (GdipGetGraphicsLayout (nativeGraphics,Result));
end;

function Graphics.SetLayout (const layout :GraphicsLayout) :Status;
begin
     Result := SetStatus (GdipSetGraphicsLayout (nativeGraphics,layout));
end;
}
class function Graphics.GetHalftonePalette :HPALETTE;
begin
     Result := GdipCreateHalftonePalette;
end;

function Graphics.GetLastStatus :Status;
begin
     Result := lastResult;
     lastResult := Ok;
end;

constructor Graphics.Create (graphics :GpGraphics);
begin
     inherited Create;
     lastResult := Ok;
     SetNativeGraphics (graphics);
end;

procedure Graphics.SetNativeGraphics (graphics :GpGraphics);
begin
     nativeGraphics := graphics;
end;

function Graphics.SetStatus (status :Status) :Status;
begin
     if (status <> Ok) then
     Result := integer (lastResult = status)
     else
     Result := status;
end;

function Graphics.GetNativeGraphics :GpGraphics;
begin
     Result := nativeGraphics;
end;

function Graphics.GetNativePen (const pen :Pen) :GpPen;
begin
     Result := pen.nativePen;
end;


//----------------------------------------------------------------------------
// Implementation of GraphicsPath methods that use Graphics
//----------------------------------------------------------------------------

// The GetBounds rectangle may not be the tightest bounds.

function GraphicsPath.GetBounds (out bounds :RectF; matrix :Matrix = nil; pen :Pen = nil) :Status;
var
     nativeMatrix :GpMatrix;
     nativePen :GpPen;
begin
    if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
    else
        nativeMatrix := nil;

    if (pen <> nil) then
        nativePen := pen.nativePen
    else
        nativePen := nil;

    Result := SetStatus (GdipGetPathWorldBounds(nativePath, bounds,
                                                   nativeMatrix, nativePen));
end;

function GraphicsPath.GetBounds (out bounds :Rect; matrix :Matrix = nil; pen :Pen = nil) :Status;
var
     nativeMatrix :GpMatrix;
     nativePen :GpPen;
begin
    if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
    else
        nativeMatrix := nil;

    if (pen <> nil) then
        nativePen := pen.nativePen
    else
        nativePen := nil;

    Result := SetStatus (GdipGetPathWorldBoundsI(nativePath, bounds,
                                                    nativeMatrix, nativePen));
end;

function GraphicsPath.IsVisible (x,y :single; g :Graphics = nil) :BOOL;
var
     nativeGraphics :GpGraphics;
begin
     Result := False;
     if (g <> nil) then  nativeGraphics := g.nativeGraphics  else  nativeGraphics := nil;
     SetStatus (GdipIsVisiblePathPoint (nativePath, x,y, nativeGraphics, Result));
end;

function GraphicsPath.IsVisible (x,y :integer; g :Graphics = nil) :BOOL;
var
     nativeGraphics :GpGraphics;
begin
     Result := False;
     if (g <> nil) then  nativeGraphics := g.nativeGraphics  else  nativeGraphics := nil;
     SetStatus (GdipIsVisiblePathPointI (nativePath, x,y, nativeGraphics, Result));
end;

function GraphicsPath.IsOutlineVisible (x,y :single; const pen :Pen; g :Graphics = nil) :BOOL;
var
     nativeGraphics :GpGraphics;
     nativePen :GpPen;
begin
     Result := False;

     if (g <> nil) then
         nativeGraphics := g.nativeGraphics
     else
         nativeGraphics := nil;

     if(pen <> nil) then
         nativePen := pen.nativePen
     else
         nativePen := nil;

     SetStatus (GdipIsOutlineVisiblePathPoint (nativePath, x,y, nativePen,nativeGraphics, Result));
end;

function GraphicsPath.IsOutlineVisible (x,y :integer; pen :Pen; g :Graphics = nil) :BOOL;
var
     nativeGraphics :GpGraphics;
     nativePen :GpPen;
begin
     Result := False;

     if (g <> nil) then
         nativeGraphics := g.nativeGraphics
     else
         nativeGraphics := nil;

     if(pen <> nil) then
         nativePen := pen.nativePen
     else
         nativePen := nil;

     SetStatus (GdipIsOutlineVisiblePathPointI (nativePath, x,y, nativePen,nativeGraphics, Result));
end;


//============================================================================
// *** GdiPlusPath.h
//============================================================================

constructor GraphicsPath.Create (fillMode :FillMode = FillModeAlternate);
begin
     inherited Create;
     nativePath := nil;
     lastResult := GdipCreatePath (fillMode,nativePath);
end;

constructor GraphicsPath.Create (const points :PointF; const types :pointer; count :integer;
                                 fillMode :FillMode = FillModeAlternate);
begin
     inherited Create;
     nativePath := nil;
     lastResult := GdipCreatePath2 (points,types,count,fillMode,nativePath);
end;

constructor GraphicsPath.Create (const points :Point; const types :pointer; count :integer;
                                 fillMode :FillMode = FillModeAlternate);
begin
     inherited Create;
     nativePath := nil;
     lastResult := GdipCreatePath2I (points,types,count,fillMode,nativePath);
end;

destructor GraphicsPath.Destroy;
begin
     GdipDeletePath (nativePath);
     inherited Destroy;
end;

function GraphicsPath.Clone :GraphicsPath;
var
     clonepath :GpPath;
begin
     clonepath := nil;
     SetStatus (GdipClonePath (nativePath,clonepath));
     Result := GraphicsPath.Create (clonepath);
end;

    // Reset the path object to empty (and fill mode to FillModeAlternate)

function GraphicsPath.Reset :Status;
begin
     Result := SetStatus (GdipResetPath (nativePath));
end;

function GraphicsPath.GetFillMode :FillMode;
begin
     Result := FillModeAlternate;
     SetStatus (GdipGetPathFillMode (nativePath,Result));
end;

function GraphicsPath.SetFillMode (fillmode :FillMode) :Status;
begin
     Result := SetStatus (GdipSetPathFillMode (nativePath,fillmode));
end;

function GraphicsPath.GetPathData (out pathData :PathData) :Status;
var
     count :integer;
begin
{     if (pathData = nil) then
     begin
          Result := SetStatus (InvalidParameter);
     end;
}
     // Shouldn't it be better to do the allocation in PathData ?

     count := GetPointCount;

     if (count <= 0) or ((pathData.Count > 0) and (pathData.Count < count)) then
     begin
          pathData.Free;

          if (count <= 0) then
          begin
               Result := lastResult;
               exit;
          end;
     end;

     if (pathData.Count = 0) then
     begin
          pathData.Count := count;
          try
             getmem (pathData.Points,sizeof(PointF)*count);
             getmem (pathData.Types,sizeof(byte)*count);
          except
             pathData.Free;
             raise;
          end;
     end;

     Result := SetStatus (GdipGetPathData (nativePath,pathData));
end;

function GraphicsPath.StartFigure :Status;
begin
     Result := SetStatus(GdipStartPathFigure(nativePath));
end;

function GraphicsPath.CloseFigure :Status;
begin
     Result := SetStatus(GdipClosePathFigure(nativePath));
end;

function GraphicsPath.CloseAllFigures :Status;
begin
     Result := SetStatus(GdipClosePathFigures(nativePath));
end;

function GraphicsPath.SetMarker :Status;
begin
     Result := SetStatus(GdipSetPathMarker(nativePath));
end;

function GraphicsPath.ClearMarkers :Status;
begin
     Result := SetStatus(GdipClearPathMarkers(nativePath));
end;

function GraphicsPath.Reverse :Status;
begin
     Result := SetStatus(GdipReversePath(nativePath));
end;

function GraphicsPath.GetLastPoint (out lastPoint :PointF) :Status;
begin
     Result := SetStatus (GdipGetPathLastPoint (nativePath,lastPoint));
end;

function GraphicsPath.AddLine (const pt1,pt2 :PointF) :Status;
begin
     Result := AddLine(pt1.X, pt1.Y, pt2.X, pt2.Y);
end;

function GraphicsPath.AddLine(x1 :single; y1 :single; x2 :single; y2 :single) :Status;
begin
     Result := SetStatus(GdipAddPathLine(nativePath, x1, y1, x2, y2));
end;

function GraphicsPath.AddLines(const points :PointF; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathLine2(nativePath, points, count));
end;

function GraphicsPath.AddLine(const pt1,pt2 :Point) :Status;
begin
     Result := AddLine(pt1.X, pt1.Y, pt2.X, pt2.Y);
end;

function GraphicsPath.AddLine(x1, y1, x2, y2 :integer) :Status;
begin
     Result := SetStatus(GdipAddPathLineI(nativePath, x1, y1, x2, y2));
end;

function GraphicsPath.AddLines(const points :Point; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathLine2I(nativePath, points, count));
end;

function GraphicsPath.AddArc(const rect :RectF; startAngle :single; sweepAngle :single) :Status;
begin
     Result := AddArc(rect.X, rect.Y, rect.Width, rect.Height, startAngle, sweepAngle);
end;

function GraphicsPath.AddArc(x :single; y :single; width :single; height :single; startAngle :single; sweepAngle :single) :Status;
begin
     Result := SetStatus(GdipAddPathArc(nativePath, x, y, width, height, startAngle, sweepAngle));
end;

function GraphicsPath.AddArc(const rect :Rect; startAngle, sweepAngle :single) :Status;
begin
     Result := AddArc(rect.X, rect.Y, rect.Width, rect.Height, startAngle, sweepAngle);
end;

function GraphicsPath.AddArc(x, y, width, height :integer; startAngle, sweepAngle :single) :Status;
begin
     Result := SetStatus(GdipAddPathArcI(nativePath, x, y, width, height, startAngle, sweepAngle));
end;

function GraphicsPath.AddBezier(const pt1,pt2,pt3,pt4 :PointF) :Status;
begin
     Result := AddBezier(pt1.X, pt1.Y, pt2.X, pt2.Y, pt3.X, pt3.Y, pt4.X, pt4.Y);
end;

function GraphicsPath.AddBezier(x1, y1, x2, y2, x3, y3, x4, y4 :single) :Status;
begin
     Result := SetStatus(GdipAddPathBezier(nativePath, x1, y1, x2, y2, x3, y3, x4, y4));
end;

function GraphicsPath.AddBeziers(const points :PointF; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathBeziers(nativePath, points, count));
end;

function GraphicsPath.AddBezier(const pt1,pt2,pt3,pt4 :Point) :Status;
begin
     Result := AddBezier(pt1.X, pt1.Y, pt2.X, pt2.Y, pt3.X, pt3.Y, pt4.X, pt4.Y);
end;

function GraphicsPath.AddBezier(x1, y1, x2, y2, x3, y3, x4, y4 :integer) :Status;
begin
     Result := SetStatus(GdipAddPathBezierI(nativePath, x1, y1, x2, y2, x3, y3, x4, y4));
end;

function GraphicsPath.AddBeziers(const points :Point; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathBeziersI(nativePath, points, count));
end;

function GraphicsPath.AddCurve(const points :PointF;
                    count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathCurve(nativePath, points, count));
end;

function GraphicsPath.AddCurve(const points :PointF; count :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathCurve2(nativePath, points, count, tension));
end;

function GraphicsPath.AddCurve(const points :PointF; count, offset, numberOfSegments :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathCurve3(nativePath, points, count, offset, numberOfSegments, tension));
end;

function GraphicsPath.AddCurve(const points :Point; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathCurveI(nativePath, points, count));
end;

function GraphicsPath.AddCurve(const points :Point; count :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathCurve2I(nativePath, points, count, tension));
end;

function GraphicsPath.AddCurve(const points :Point; count, offset, numberOfSegments :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathCurve3I(nativePath, points, count, offset, numberOfSegments, tension));
end;

function GraphicsPath.AddClosedCurve(const points :PointF; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathClosedCurve(nativePath, points, count));
end;

function GraphicsPath.AddClosedCurve(const points :PointF; count :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathClosedCurve2(nativePath, points, count, tension));
end;

function GraphicsPath.AddClosedCurve(const points :Point; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathClosedCurveI(nativePath, points, count));
end;


function GraphicsPath.AddClosedCurve(const points :Point; count :integer; tension :single) :Status;
begin
     Result := SetStatus(GdipAddPathClosedCurve2I(nativePath, points, count, tension));
end;

function GraphicsPath.AddRectangle(const rect :RectF) :Status;
begin
     Result := SetStatus(GdipAddPathRectangle(nativePath, rect.X, rect.Y, rect.Width, rect.Height));
end;

function GraphicsPath.AddRectangles(const rects :RectF; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathRectangles(nativePath, rects, count));
end;

function GraphicsPath.AddRectangle(const rect :Rect) :Status;
begin
     Result := SetStatus(GdipAddPathRectangleI(nativePath, rect.X, rect.Y, rect.Width, rect.Height));
end;

function GraphicsPath.AddRectangles(const rects :Rect; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathRectanglesI(nativePath, rects, count));
end;

function GraphicsPath.AddEllipse(const rect :RectF) :Status;
begin
     Result := AddEllipse(rect.X, rect.Y, rect.Width, rect.Height);
end;

function GraphicsPath.AddEllipse(x, y, width, height :single) :Status;
begin
     Result := SetStatus(GdipAddPathEllipse(nativePath, x, y, width, height));
end;

function GraphicsPath.AddEllipse(const rect :Rect) :Status;
begin
     Result := AddEllipse(rect.X, rect.Y, rect.Width, rect.Height);
end;

function GraphicsPath.AddEllipse(x, y, width, height :integer) :Status;
begin
     Result := SetStatus(GdipAddPathEllipseI(nativePath, x, y, width, height));
end;

function GraphicsPath.AddPie(const rect :RectF; startAngle, sweepAngle :single) :Status;
begin
     Result := AddPie(rect.X, rect.Y, rect.Width, rect.Height, startAngle, sweepAngle);
end;

function GraphicsPath.AddPie(x, y, width, height, startAngle, sweepAngle :single) :Status;
begin
     Result := SetStatus(GdipAddPathPie(nativePath, x, y, width, height, startAngle, sweepAngle));
end;

function GraphicsPath.AddPie(const rect :Rect; startAngle, sweepAngle :single) :Status;
begin
     Result := AddPie(rect.X, rect.Y, rect.Width, rect.Height, startAngle, sweepAngle);
end;

function GraphicsPath.AddPie(x, y, width, height :integer; startAngle, sweepAngle :single) :Status;
begin
     Result := SetStatus(GdipAddPathPieI(nativePath, x, y, width, height, startAngle, sweepAngle));
end;

function GraphicsPath.AddPolygon(const points :PointF; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathPolygon(nativePath, points, count));
end;

function GraphicsPath.AddPolygon(const points :Point; count :integer) :Status;
begin
     Result := SetStatus(GdipAddPathPolygonI(nativePath, points, count));
end;

function GraphicsPath.AddPath(const addingPath :GraphicsPath;
                   connect :BOOL) :Status;
var
     nativePath2 :GpPath;
begin
     if (addingPath <> nil) then
        nativePath2 := addingPath.nativePath
     else
        nativePath2 := nil;

     Result := SetStatus(GdipAddPathPath(nativePath,nativePath2,connect));
end;

function GraphicsPath.AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const origin :PointF; const format :StringFormat) :Status;
var
     rect :RectF;
begin
     rect.new (origin.X, origin.Y, 0.0, 0.0);
     Result := SetStatus(GdipAddPathString( nativePath, pwidechar (str), length, family.nativeFamily, style, emSize, rect, format.nativeFormat));
end;

function GraphicsPath.AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const layoutRect :RectF; const format :StringFormat) :Status;
begin
     Result := SetStatus(GdipAddPathString( nativePath, pwidechar (str), length, family.nativeFamily, style, emSize, layoutRect, format.nativeFormat));
end;

function GraphicsPath.AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const origin :Point; const format :StringFormat) :Status;
var
     r :Rect;
begin
     r.new(origin.X, origin.Y, 0, 0);
     Result := SetStatus(GdipAddPathStringI( nativePath, pwidechar (str), length, family.nativeFamily, style, emSize, r, format.nativeFormat));
end;

function GraphicsPath.AddString(const str :widestring; length :integer; const family :FontFamily; style :integer; emSize :single; const layoutRect :Rect; const format :StringFormat) :Status;
begin
     Result := SetStatus(GdipAddPathStringI( nativePath, pwidechar (str), length, family.nativeFamily, style, emSize, layoutRect, format.nativeFormat));
end;

function GraphicsPath.Transform(matrix :Matrix) :Status;
begin
        if(matrix <> nil) then
         Result := SetStatus(GdipTransformPath(nativePath,
                                                      matrix.nativeMatrix))
        else
         Result := Ok;
end;

    // Once flattened, the resultant path is made of line segments and
    // the original path information is lost.  When matrix is NULL the
    // identity matrix is assumed.

function GraphicsPath.Flatten(matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
var
     nativeMatrix :GpMatrix;
begin
     if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
     else
        nativeMatrix := nil;

     Result := SetStatus(GdipFlattenPath( nativePath, nativeMatrix, flatness));
end;

function GraphicsPath.Widen( const pen :Pen; matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
var
     nativeMatrix :GpMatrix;
begin
     if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
     else
        nativeMatrix := nil;

     Result := SetStatus(GdipWidenPath( nativePath, pen.nativePen, nativeMatrix, flatness));
end;

function GraphicsPath.Outline( matrix :Matrix = nil; flatness :single = FlatnessDefault) :Status;
var
     nativeMatrix :GpMatrix;
begin
     if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
     else
        nativeMatrix := nil;

     Result := SetStatus(GdipWindingModeOutline( nativePath, nativeMatrix, flatness
        ));
end;

    // Once this is called, the resultant path is made of line segments and
    // the original path information is lost.  When matrix is NULL, the
    // identity matrix is assumed.

function GraphicsPath.Warp(const destPoints :PointF; count :integer; const srcRect :RectF; matrix :Matrix = nil; warpMode :WarpMode = WarpModePerspective; flatness :single = FlatnessDefault) :Status;
var
     nativeMatrix :GpMatrix;
begin
     if (matrix <> nil) then
        nativeMatrix := matrix.nativeMatrix
     else
        nativeMatrix := nil;

     Result := SetStatus(GdipWarpPath( nativePath, nativeMatrix, destPoints, count, srcRect.X, srcRect.Y, srcRect.Width, srcRect.Height, warpMode, flatness));
end;

function GraphicsPath.GetPointCount :integer;
begin
     Result := 0;
     SetStatus (GdipGetPointCount (nativePath,Result));
end;

function GraphicsPath.GetPathTypes (out types; count :integer) :Status;
begin
     Result := SetStatus (GdipGetPathTypes (nativePath,types,count));
end;

function GraphicsPath.GetPathPoints (out points :PointF; count :integer) :Status;
begin
     Result := SetStatus (GdipGetPathPoints (nativePath,points,count));
end;

function GraphicsPath.GetPathPoints (out points :Point; count :integer) :Status;
begin
     Result := SetStatus (GdipGetPathPointsI (nativePath,points,count));
end;

function GraphicsPath.GetLastStatus :Status;
begin
     Result := lastResult;
     lastResult := Ok;
end;

function GraphicsPath.IsVisible (const point :PointF; g :Graphics = nil) :BOOL;
begin
     Result := IsVisible (point.X,point.Y, g);
end;

function GraphicsPath.IsVisible (const point :Point; g :Graphics = nil) :BOOL;
begin
     Result := IsVisible (point.X,point.Y, g);
end;

function GraphicsPath.IsOutlineVisible (const point :PointF; const pen :Pen; g :Graphics = nil) :BOOL;
begin
     Result := IsOutlineVisible (point.X,point.Y, pen,g);
end;

function GraphicsPath.IsOutlineVisible (const point :Point; pen :Pen; g :Graphics = nil) :BOOL;
begin
     Result := IsOutlineVisible (point.X,point.Y, pen,g);
end;

constructor GraphicsPath.Create (const path :GraphicsPath);
var
     clonePath :GpPath;
begin
     inherited Create;
     clonePath := nil;
     SetStatus (GdipClonePath (path.nativePath,clonepath));
     SetNativePath (clonepath);
end;

constructor GraphicsPath.Create (nativePath :GpPath);
begin
     inherited Create;
     lastResult := Ok;
     SetNativePath (nativePath);
end;

procedure GraphicsPath.SetNativePath (nativePath :GpPath);
begin
     Self.nativePath := nativePath;
end;

function GraphicsPath.SetStatus (status :Status) :Status;
begin
     if (status <> Ok) then
        Result := integer (lastResult = status)
     else
        Result := status;
end;


//--------------------------------------------------------------------------
// GraphisPathIterator class
//--------------------------------------------------------------------------

constructor GraphicsPathIterator.Create (const path :GraphicsPath);
var
     nativePath :GpPath;
     iter :GpPathIterator;
begin
     inherited Create;
     if (path <> nil) then
        nativePath := path.nativePath
     else
        nativePath := nil;

     iter := nil;
     lastResult := GdipCreatePathIter (iter, nativePath);
     SetNativeIterator (iter);
end;

destructor GraphicsPathIterator.Destroy;
begin
     GdipDeletePathIter (nativeIterator);
     inherited Destroy;
end;

function GraphicsPathIterator.NextSubpath(out startIndex,endIndex :integer; out isClosed :BOOL) :integer;
begin
        SetStatus(GdipPathIterNextSubpath(nativeIterator, result, startIndex, endIndex, isClosed));
end;


function GraphicsPathIterator.NextSubpath(out path :GraphicsPath; out isClosed :BOOL) :integer;
begin
        SetStatus(GdipPathIterNextSubpathPath(nativeIterator, result, path.nativePath, isClosed));
end;

function GraphicsPathIterator.NextPathType(out pathtype :byte; out startIndex,endIndex :integer) :integer;
begin
        SetStatus(GdipPathIterNextPathType(nativeIterator, result, pathType, startIndex, endIndex));
end;

function GraphicsPathIterator.NextMarker(out startIndex,endIndex :integer) :integer;
begin
        SetStatus(GdipPathIterNextMarker(nativeIterator, result, startIndex, endIndex));
end;


function GraphicsPathIterator.NextMarker(out path :GraphicsPath) :integer;
begin
        SetStatus(GdipPathIterNextMarkerPath(nativeIterator, result, path.nativePath));
end;

function GraphicsPathIterator.GetCount :integer;
begin
        SetStatus(GdipPathIterGetCount(nativeIterator, Result));
end;

function GraphicsPathIterator.GetSubpathCount :integer;
begin
        SetStatus(GdipPathIterGetSubpathCount(nativeIterator, Result));
end;

function GraphicsPathIterator.HasCurve :BOOL;
begin
        SetStatus(GdipPathIterHasCurve(nativeIterator, Result));
end;

procedure GraphicsPathIterator.Rewind;
begin
        SetStatus(GdipPathIterRewind(nativeIterator));
end;

function GraphicsPathIterator.Enumerate(out points :PointF; out types; count :integer) :integer;
begin
        SetStatus(GdipPathIterEnumerate(nativeIterator, Result, points, types, count));
end;

function GraphicsPathIterator.CopyData(out points :PointF; out types; startIndex, endIndex :integer) :integer;
begin
       SetStatus(GdipPathIterCopyData(nativeIterator, Result, points, types, startIndex, endIndex));
end;

function GraphicsPathIterator.GetLastStatus :Status;
begin
     Result := lastResult;
     lastResult := Ok;
end;

procedure GraphicsPathIterator.SetNativeIterator (nativeIterator :GpPathIterator);
begin
     Self.nativeIterator := nativeIterator;
end;

function GraphicsPathIterator.SetStatus (status :Status) :Status;
begin
     if (status <> Ok) then
        Result := integer (lastResult = status)
     else
        Result := status;
end;


//--------------------------------------------------------------------------
// Path Gradient Brush
//--------------------------------------------------------------------------

constructor PathGradientBrush.Create (const points :PointF; count :integer; wrapMode :WrapMode = WrapModeClamp);
var
     brush :GpPathGradient;
begin
     inherited Create;

        brush := nil;

        lastResult := GdipCreatePathGradient(
                                        points, count,
                                        wrapMode, brush);
        SetNativeBrush(brush);
end;

constructor PathGradientBrush.Create(const points :Point; count :integer; wrapMode :WrapMode = WrapModeClamp);
var
     brush :GpPathGradient;
begin
     inherited Create;
     brush := nil;

        lastResult := GdipCreatePathGradientI(
                                        points, count,
                                        wrapMode, brush);

        SetNativeBrush(brush);
end;

constructor PathGradientBrush.Create( const path :GraphicsPath);
var
     brush :GpPathGradient;
begin
     inherited Create;
     brush := nil;

        lastResult := GdipCreatePathGradientFromPath(
                                        path.nativePath, brush);
        SetNativeBrush(brush);
end;

function PathGradientBrush.GetCenterColor(out color :Color) :Status;
var
     argb_ :ARGB;
begin
{     if (color = nil) then
     begin
          Result := SetStatus(InvalidParameter);
          exit;
     end;
}
     Result := SetStatus(GdipGetPathGradientCenterColor(
                       GpPathGradient (nativeBrush), argb_));

     color.SetValue := argb_;
end;

function PathGradientBrush.SetCenterColor(const color :Color) :Status;
begin
     Result := SetStatus(GdipSetPathGradientCenterColor(
                       GpPathGradient (nativeBrush),
                       color.GetValue));
end;

function PathGradientBrush.GetPointCount :integer;
begin
     SetStatus(GdipGetPathGradientPointCount(
                       GpPathGradient (nativeBrush), result));
end;

function PathGradientBrush.GetSurroundColorCount :integer;
begin
     Result := SetStatus(GdipGetPathGradientSurroundColorCount(
                       GpPathGradient (nativeBrush), result));
end;

function PathGradientBrush.GetSurroundColors(out colors :Color; out count :integer) :Status;
var
     i,count1 :integer;
     argbs :array of ARGB;
     cols :PColor;
begin
        raise Exception.Create ('This need to be tested');
        cols := @colors;

        if (cols = nil) {or (count = nil)} then
        begin
          Result := SetStatus (InvalidParameter);
          exit;
        end;

        SetStatus(GdipGetPathGradientSurroundColorCount(
                        GpPathGradient (nativeBrush), count1));

        if (lastResult <> Ok) then
        begin
         Result := lastResult;
         exit;
        end;

        if ((count < count1) or (count1 <= 0)) then
        begin
         Result := SetStatus(InsufficientBuffer);
         exit;
        end;

        setlength (argbs,count1);
{
        if (argbs = nil) then  // will not happen because of exception, should I trap it ?
        begin
         Result := SetStatus(OutOfMemory);
         exit;
        end;
}
        Result := SetStatus(GdipGetPathGradientSurroundColorsWithCount(
                    GpPathGradient (nativeBrush), argbs[0], count1));

        if (Result = Ok) then
        begin
            for i := 0 to count1-1 do
            begin
                 cols.SetValue := argbs[i];
                 cols := pointer (integer(cols)+sizeof(Color));
            end;
            count := count1;
        end;
end;

function PathGradientBrush.SetSurroundColors(const colors :Color; out count :integer) :Status;
var
     i,count1 :integer;
     argbs :array of ARGB;
     cols :PColor;
begin
        raise Exception.Create ('This need to be tested');
        cols := @colors;

        if (cols = nil) {or (count = nil)} then
        begin
         Result := SetStatus(InvalidParameter);
         exit;
        end;

        count1 := GetPointCount;

        if (count > count1) or (count1 <= 0) then
        begin
         Result := SetStatus(InvalidParameter);
         exit;
        end;

        count1 := count;
        setlength (argbs,count1);
{
        if (argbs = nil) then  // will not happen because of exception, should I trap it ?
        begin
         Result := SetStatus(OutOfMemory);
         exit;
        end;
}
        for i := 0 to count1-1 do
        begin
            argbs[i] := colors.GetValue;
            cols := pointer (integer(cols) + sizeof(Color));
        end;

        Result := SetStatus(GdipSetPathGradientSurroundColorsWithCount(
                    GpPathGradient (nativeBrush), argbs[0], count1));

        if(Result = Ok) then  count := count1;  // this seem to be useless
end;

function PathGradientBrush.GetGraphicsPath(out path :GraphicsPath) :Status;
begin
     Result := SetStatus(GdipGetPathGradientPath(
                    GpPathGradient (nativeBrush), path.nativePath));
end;

function PathGradientBrush.SetGraphicsPath(const path :GraphicsPath) :Status;
begin
     Result := SetStatus (GdipSetPathGradientPath(
                    GpPathGradient (nativeBrush), path.nativePath));
end;

function PathGradientBrush.GetCenterPoint(out point :PointF) :Status;
begin
     Result := SetStatus(GdipGetPathGradientCenterPoint(
                                GpPathGradient (nativeBrush),
                                point));
end;

function PathGradientBrush.GetCenterPoint(out point :Point) :Status;
begin
     Result := SetStatus(GdipGetPathGradientCenterPointI(
                                GpPathGradient (nativeBrush),
                                point));
end;

function PathGradientBrush.SetCenterPoint(const point :PointF) :Status;
begin
     Result := SetStatus(GdipSetPathGradientCenterPoint(
                                GpPathGradient (nativeBrush),
                                point));
end;

function PathGradientBrush.SetCenterPoint(const point :Point) :Status;
begin
     Result := SetStatus(GdipSetPathGradientCenterPointI(
                                GpPathGradient (nativeBrush),
                                point));
end;

function PathGradientBrush.GetRectangle(out rect :RectF) :Status;
begin
     Result := SetStatus(GdipGetPathGradientRect(
                            GpPathGradient (nativeBrush), rect));
end;

function PathGradientBrush.GetRectangle(out rect :Rect) :Status;
begin
     Result := SetStatus(GdipGetPathGradientRectI(
                            GpPathGradient (nativeBrush), rect));
end;

function PathGradientBrush.SetGammaCorrection(useGammaCorrection :BOOL) :Status;
begin
     Result := SetStatus(GdipSetPathGradientGammaCorrection(
            GpPathGradient (nativeBrush), useGammaCorrection));
end;

function PathGradientBrush.GetGammaCorrection :BOOL;
begin
        SetStatus(GdipGetPathGradientGammaCorrection(
            GpPathGradient (nativeBrush), Result));
end;

function PathGradientBrush.GetBlendCount :integer;
begin
     Result := 0;
       SetStatus(GdipGetPathGradientBlendCount(
                           GpPathGradient (nativeBrush), Result));
end;

function PathGradientBrush.GetBlend(out blendFactors,blendPositions :single; count :integer) :Status;
begin
     Result := SetStatus(GdipGetPathGradientBlend(
                            GpPathGradient (nativeBrush),
                            blendFactors, blendPositions, count));
end;

function PathGradientBrush.SetBlend(var blendFactors,blendPositions :single; count :integer) :Status;
begin
     Result := SetStatus(GdipSetPathGradientBlend(
                            GpPathGradient (nativeBrush),
                            blendFactors, blendPositions, count));
end;

function PathGradientBrush.GetInterpolationColorCount :integer;
begin
       SetStatus(GdipGetPathGradientPresetBlendCount(
                        GpPathGradient (nativeBrush), result));
end;

function PathGradientBrush.SetInterpolationColors(var presetColors :Color; var blendPositions :single; count :integer) :Status;
var
     i :integer;
     argbs :array of ARGB;
     cols :PColor;
begin
        raise Exception.Create ('This need to be tested');
        cols := @presetColors;

        if (count <= 0) or (cols = nil) then
        begin
         Result := SetStatus(InvalidParameter);
         exit;
        end;

        setlength (argbs,count);
{
        if (argbs = nil) then
        begin
         Result := SetStatus(OutOfMemory);
         exit;
        end;
}
        for i := 0 to count-1 do
        begin
             argbs[i] := cols.GetValue;
             cols := pointer(integer(cols)+sizeof(Color));
        end;

        Result := SetStatus(GdipSetPathGradientPresetBlend(
                                    GpPathGradient (nativeBrush),
                                    argbs[0],
                                    blendPositions,
                                    count));
end;

function PathGradientBrush.GetInterpolationColors(var presetColors :Color; out blendPositions :single; count :integer) :Status;
var
     i :integer;
     argbs :array of ARGB;
     cols :PColor;
begin
        raise Exception.Create ('This need to be tested');
        cols := @presetColors;

        if (count <= 0) or (cols = nil) then
        begin
         Result := SetStatus(InvalidParameter);
         exit;
        end;

        setlength (argbs,count);
{
        if (argbs = nil) then
        begin
         Result := SetStatus(OutOfMemory);
         exit;
        end;
}
        Result := SetStatus(GdipGetPathGradientPresetBlend(
                                GpPathGradient (nativeBrush),
                                argbs[0],
                                blendPositions,
                                count));

        for i := 0 to count-1 do
        begin
             cols.new (argbs[i]);
             cols := pointer (integer(cols)+sizeof(Color));
        end;
end;

function PathGradientBrush.SetBlendBellShape(focus :single; scale :single = 1.0) :Status;
begin
     Result := SetStatus(GdipSetPathGradientSigmaBlend(
                            GpPathGradient (nativeBrush), focus, scale));
end;

function PathGradientBrush.SetBlendTriangularShape( focus :single; scale :single = 1.0) :Status;
begin
     Result := SetStatus(GdipSetPathGradientLinearBlend(
                            GpPathGradient (nativeBrush), focus, scale));
end;

function PathGradientBrush.GetTransform(out matrix :Matrix) :Status;
begin
     Result := SetStatus(GdipGetPathGradientTransform(
                            GpPathGradient (nativeBrush),
                            matrix.nativeMatrix));
end;

function PathGradientBrush.SetTransform (const matrix :Matrix) :Status;
begin
     Result := SetStatus(GdipSetPathGradientTransform(
                            GpPathGradient (nativeBrush),
                            matrix.nativeMatrix));
end;

function PathGradientBrush.ResetTransform :Status;
begin
     Result := SetStatus(GdipResetPathGradientTransform(
                            GpPathGradient (nativeBrush)));
end;

function PathGradientBrush.MultiplyTransform(const matrix :Matrix; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus(GdipMultiplyPathGradientTransform(
                            GpPathGradient (nativeBrush),
                            matrix.nativeMatrix,
                            order));
end;

function PathGradientBrush.TranslateTransform(dx,dy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus(GdipTranslatePathGradientTransform(
                            GpPathGradient (nativeBrush),
                            dx, dy, order));
end;

function PathGradientBrush.ScaleTransform(sx,sy :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus(GdipScalePathGradientTransform(
                            GpPathGradient (nativeBrush),
                            sx, sy, order));
end;

function PathGradientBrush.RotateTransform(angle :single; order :MatrixOrder = MatrixOrderPrepend) :Status;
begin
     Result := SetStatus(GdipRotatePathGradientTransform(
                            GpPathGradient (nativeBrush),
                            angle, order));
end;

function PathGradientBrush.GetFocusScales(out xScale,yScale :single) :Status;
begin
     Result := SetStatus(GdipGetPathGradientFocusScales(
                            GpPathGradient (nativeBrush), xScale, yScale));
end;

function PathGradientBrush.SetFocusScales(xScale,yScale :single) :Status;
begin
     Result := SetStatus(GdipSetPathGradientFocusScales(
                            GpPathGradient (nativeBrush), xScale, yScale));
end;

function PathGradientBrush.GetWrapMode :WrapMode;
begin
        SetStatus(GdipGetPathGradientWrapMode(
                     GpPathGradient (nativeBrush), result));
end;

function PathGradientBrush.SetWrapMode (wrapMode :WrapMode) :Status;
begin
     Result := SetStatus(GdipSetPathGradientWrapMode(
                            GpPathGradient (nativeBrush), wrapMode));
end;


//============================================================================
// *** GdiPlusLineCaps.h
//============================================================================

constructor CustomLineCap.Create (
    const fillPath,strokePath :GraphicsPath;
    baseCap :LineCap;
    baseInset :single);
var
    nativeFillPath,nativeStrokePath :GpPath;
begin
    inherited Create;
    //nativeCap := nil;
    nativeFillPath := nil;
    nativeStrokePath := nil;

    if (fillPath <> nil) then
        nativeFillPath := fillPath.nativePath;
    if (strokePath <> nil) then
        nativeStrokePath := strokePath.nativePath;

    lastResult := GdipCreateCustomLineCap(
                    nativeFillPath, nativeStrokePath,
                    baseCap, baseInset, nativeCap);
end;

constructor CustomLineCap.Create;
begin
    inherited Create;
    nativeCap := nil;
    lastResult := Ok;
end;

destructor CustomLineCap.Destroy;
begin
    GdipDeleteCustomLineCap(nativeCap);
    inherited Destroy;
end;

function CustomLineCap.SetStrokeCaps(
    startCap,endCap :LineCap) :Status;
begin
    result := SetStatus(GdipSetCustomLineCapStrokeCaps(nativeCap,
                startCap, endCap));
end;

function CustomLineCap.GetStrokeCaps(
    out startCap,endCap :LineCap) :Status;
begin
    result := SetStatus(GdipGetCustomLineCapStrokeCaps(nativeCap,
                 startCap, endCap));
end;

function CustomLineCap.SetStrokeJoin(
    lineJoin :LineJoin) :Status;
begin
    result := SetStatus(GdipSetCustomLineCapStrokeJoin(nativeCap,
                                                                lineJoin));
end;

function CustomLineCap.GetStrokeJoin :LineJoin;
begin
    SetStatus(GdipGetCustomLineCapStrokeJoin(nativeCap,Result));
end;

function CustomLineCap.SetBaseCap(baseCap :LineCap) :Status;
begin
    result := SetStatus(GdipSetCustomLineCapBaseCap(nativeCap,
                                                             baseCap));
end;

function CustomLineCap.GetBaseCap :LineCap;
begin
    SetStatus(GdipGetCustomLineCapBaseCap(nativeCap, Result));
end;

function CustomLineCap.SetBaseInset(inset :single) :Status;
begin
    result := SetStatus(GdipSetCustomLineCapBaseInset(nativeCap,
                                                               inset));
end;

function CustomLineCap.GetBaseInset :single;
begin
    SetStatus(GdipGetCustomLineCapBaseInset(nativeCap, result));
end;


function CustomLineCap.SetWidthScale(widthScale :single) :Status;
begin
    result := SetStatus(GdipSetCustomLineCapWidthScale(nativeCap,
                                                                widthScale));
end;

function CustomLineCap.GetWidthScale :single;
begin
    SetStatus(GdipGetCustomLineCapWidthScale(nativeCap,
                                                         Result));
end;

function CustomLineCap.Clone :CustomLineCap;
var
    newNativeLineCap :GpCustomLineCap;
begin
    newNativeLineCap := nil;
    Result := nil;

    SetStatus(GdipCloneCustomLineCap(nativeCap,
                                                 newNativeLineCap));

    if (lastResult = Ok) then
    begin
        Result := CustomLineCap.Create (newNativeLineCap,
                                                      lastResult);
        if (Result = nil) then
        begin
            SetStatus(GdipDeleteCustomLineCap(newNativeLineCap));
        end;
    end;
end;

function CustomLineCap.GetLastStatus :Status;
begin
    result := lastResult;
    lastResult := Ok;
end;


    constructor AdjustableArrowCap.Create(
        height,
        width :single;
        isFilled :BOOL = TRUE);
    var
        cap :GpAdjustableArrowCap;
    begin
        inherited Create;
        cap := nil;

        lastResult := GdipCreateAdjustableArrowCap(
                        height, width, isFilled, cap);
        SetNativeCap(cap);
    end;

    function AdjustableArrowCap.SetHeight (height :single) :Status;
    begin
        result := SetStatus(GdipSetAdjustableArrowCapHeight(
                            GpAdjustableArrowCap (nativeCap), height));
    end;

    function AdjustableArrowCap.GetHeight :single;
    begin
        SetStatus(GdipGetAdjustableArrowCapHeight(
                            GpAdjustableArrowCap (nativeCap), result));
    end;

    function AdjustableArrowCap.SetWidth(width :single) :Status;
    begin
        result := SetStatus(GdipSetAdjustableArrowCapWidth(
                            GpAdjustableArrowCap (nativeCap), width));
    end;

    function AdjustableArrowCap.GetWidth :single;
    begin
        SetStatus(GdipGetAdjustableArrowCapWidth(
                            GpAdjustableArrowCap (nativeCap), result));
    end;

    function AdjustableArrowCap.SetMiddleInset(middleInset :single) :Status;
    begin
        result := SetStatus(GdipSetAdjustableArrowCapMiddleInset(
                            GpAdjustableArrowCap (nativeCap), middleInset));
    end;

    function AdjustableArrowCap.GetMiddleInset :single;
    begin
        SetStatus(GdipGetAdjustableArrowCapMiddleInset(
                            GpAdjustableArrowCap (nativeCap), result));
    end;

    function AdjustableArrowCap.SetFillState(isFilled :BOOL) :Status;
    begin
        result := SetStatus(GdipSetAdjustableArrowCapFillState(
                            GpAdjustableArrowCap (nativeCap), isFilled));
    end;

    function AdjustableArrowCap.IsFilled :BOOL;
    begin
        SetStatus(GdipGetAdjustableArrowCapFillState(
                            GpAdjustableArrowCap (nativeCap), result));
    end;


//============================================================================
// *** GdiPlusImageCodec.h
//============================================================================

function GetImageDecodersSize (out numDecoders,size :UINT) :Status;
begin
     Result := GdipGetImageDecodersSize (numDecoders,size);
end;

function GetImageDecoders (numDecoders,size :UINT; out decoders :ImageCodecInfo) :Status;
begin
     Result := GdipGetImageDecoders (numDecoders,size, decoders);
end;

function GetImageEncodersSize (out numEncoders,size :UINT) :Status;
begin
     Result := GdipGetImageEncodersSize (numEncoders,size);
end;

function GetImageEncoders (numEncoders,size :UINT; out encoders :ImageCodecInfo) :Status;
begin
     Result := GdipGetImageEncoders (numEncoders,size,encoders);
end;


//============================================================================
// *** GdiPlusBitmap.h
//============================================================================

function Image.SetStatus (status :Status) :Status;
begin
    if (status <> Ok) then
       result := integer (lastResult = status)
    else
       result := status;
end;

constructor Image.Create(
    const filename :widestring;
    useEmbeddedColorManagement :BOOL);
begin
    inherited Create;

    if (useEmbeddedColorManagement) then
    begin
        lastResult := GdipLoadImageFromFileICM(
            pwidechar (filename),
            nativeImage
        );
    end
    else
    begin
        lastResult := GdipLoadImageFromFile(
            pwidechar (filename),
            nativeImage
        );
    end;
end;

constructor Image.Create(
    stream :IStream;
    useEmbeddedColorManagement :BOOL);
begin
    inherited Create;

    if (useEmbeddedColorManagement) then
    begin
        lastResult := GdipLoadImageFromStreamICM(
            stream,
            nativeImage
        );
    end
    else
    begin
        lastResult := GdipLoadImageFromStream(
            stream,
            nativeImage
        );
    end;
end;

function Image.FromFile(
    const filename :widestring;
    useEmbeddedColorManagement :BOOL
    ) :Image;
begin
    result := Image.Create(
        pwidechar (filename),
        useEmbeddedColorManagement
    );
end;

function Image.FromStream(
    stream :IStream;
    useEmbeddedColorManagement :BOOL
    ) :Image;
begin
    result := Image.Create(
        stream,
        useEmbeddedColorManagement
    );
end;

destructor Image.Destroy;
begin
    GdipDisposeImage(nativeImage);
    inherited Destroy;
end;

function Image.Clone :Image;
var
    cloneImage :GpImage;
begin
    cloneImage := nil;
    SetStatus(GdipCloneImage(nativeImage, cloneimage));
    result := Image.Create (cloneimage, lastResult);
end;

function Image.GetEncoderParameterListSize(
    const clsidEncoder :TCLSID
    ) :UINT;
begin
    result := 0;
    SetStatus(GdipGetEncoderParameterListSize(nativeImage,
                                                          clsidEncoder,
                                                          result));
end;

function Image.GetEncoderParameterList(
    const clsidEncoder :TCLSID;
    size :UINT;
    out buffer :EncoderParameters
    ) :Status;
begin
    result := SetStatus(GdipGetEncoderParameterList(nativeImage,
                                                             clsidEncoder,
                                                             size,
                                                             buffer));
end;

function Image.Save(
    const filename :widestring;
    const clsidEncoder :TCLSID;
    encoderParams :PEncoderParameters
    ) :Status;
begin
    result := SetStatus(GdipSaveImageToFile(nativeImage,
                                                     pwidechar (filename),
                                                     clsidEncoder,
                                                     encoderParams^));
end;

function Image.Save(
    stream :IStream;
    const clsidEncoder :TCLSID;
    encoderParams :PEncoderParameters
    ) :Status;
begin
    result := SetStatus(GdipSaveImageToStream(nativeImage,
                                                       stream,
                                                       clsidEncoder,
                                                       encoderParams^));
end;

function Image.SaveAdd(
    const encoderParams :EncoderParameters
    ) :Status;
begin
    result := SetStatus(GdipSaveAdd(nativeImage,
                                             encoderParams));
end;

function Image.SaveAdd(
    newImage :Image;
    const encoderParams :EncoderParameters
    ) :Status;
begin
    if ( newImage = nil ) then
    begin
        result := SetStatus(InvalidParameter);
        exit;
    end;

    result := SetStatus(GdipSaveAddImage(nativeImage,
                                                  newImage.nativeImage,
                                                  encoderParams));
end;

function Image.GetType :ImageType;
begin
    result := ImageTypeUnknown;
    SetStatus(GdipGetImageType(nativeImage, result));
end;

function Image.GetPhysicalDimension(
    out size :SizeF
    ) :Status;
var
    width,height :single;
begin
{    if (size = nil) then
    begin
        result := SetStatus(InvalidParameter);
        exit;
    end;
}
    result := SetStatus(GdipGetImageDimension(nativeImage,
                                                         width, height));
    size.Width  := width;
    size.Height := height;
end;

function Image.GetBounds(
    out srcRect :RectF;
    out srcUnit :GpUnit
    ) :Status;
begin
    result := SetStatus(GdipGetImageBounds(nativeImage,
                                                    srcRect, srcUnit));
end;

function Image.GetWidth :UINT;
begin
    result := 0;
    SetStatus(GdipGetImageWidth(nativeImage, result));
end;

function Image.GetHeight :UINT;
begin
    result := 0;
    SetStatus(GdipGetImageHeight(nativeImage, result));
end;

function Image.GetHorizontalResolution :single;
begin
    result := 0;
    SetStatus(GdipGetImageHorizontalResolution(nativeImage, result));
end;

function Image.GetVerticalResolution :single;
begin
    result := 0;
    SetStatus(GdipGetImageVerticalResolution(nativeImage, result));
end;

function Image.GetFlags :UINT;
begin
    result := 0;
    SetStatus(GdipGetImageFlags(nativeImage, result));
end;

function Image.GetRawFormat(out format :TGUID) :Status;
begin
    result := SetStatus(GdipGetImageRawFormat(nativeImage, format));
end;

function Image.GetPixelFormat :PixelFormat;
begin
    SetStatus(GdipGetImagePixelFormat(nativeImage, result));
end;

function Image.GetPaletteSize :integer;
begin
    result := 0;
    SetStatus(GdipGetImagePaletteSize(nativeImage, result));
end;

function Image.GetPalette(
    out palette :ColorPalette;
    size :integer
) :Status;
begin
    result := SetStatus(GdipGetImagePalette(nativeImage, palette, size));
end;

function Image.SetPalette(
    var palette :ColorPalette
    ) :Status;
begin
    result := SetStatus(GdipSetImagePalette(nativeImage, palette));
end;

function Image.GetThumbnailImage(
    thumbWidth, thumbHeight :UINT;
    callback :GetThumbnailImageAbort;
    callbackData :pointer
    ) :Image;
var
    thumbimage :GpImage;
begin
    thumbimage := nil;
    SetStatus(GdipGetImageThumbnail(nativeImage,
                                                thumbWidth, thumbHeight,
                                                thumbimage,
                                                callback, callbackData));
    result := Image.Create(thumbimage, lastResult);

    if (result = nil) then
        GdipDisposeImage(thumbimage);
end;

function Image.GetFrameDimensionsCount :UINT;
begin
    result := 0;
    SetStatus(GdipImageGetFrameDimensionsCount(nativeImage,
                                                                  result));
end;

function Image.GetFrameDimensionsList(
    out dimensionIDs :TGUID;
    count :UINT
    ) :Status;
begin
    result := SetStatus(GdipImageGetFrameDimensionsList(nativeImage,
                                                                 dimensionIDs,
                                                                 count));
end;

function Image.GetFrameCount(
    const dimensionID :TGUID
    ) :UINT;
begin
    result := 0;
    SetStatus(GdipImageGetFrameCount(nativeImage,dimensionID,result));
end;

function Image.SelectActiveFrame(
    const dimensionID :TGUID;
    frameIndex :UINT
    ) :Status;
begin
    result := SetStatus(GdipImageSelectActiveFrame(nativeImage,
                                                            dimensionID,
                                                            frameIndex));
end;

function Image.RotateFlip(
    rotateFlipType :RotateFlipType
    ) :Status;
begin
    result := SetStatus(GdipImageRotateFlip(nativeImage,
                                                     rotateFlipType));
end;

function Image.GetPropertyCount :UINT;
begin
    result := 0;
    SetStatus(GdipGetPropertyCount(nativeImage,
                                               result));
end;

function Image.GetPropertyIdList(
    numOfProperty :UINT;
    out list :PROPID
    ) :Status;
begin
    result := SetStatus(GdipGetPropertyIdList(nativeImage,
                                                       numOfProperty, list));
end;

function Image.GetPropertyItemSize(
    propId :PROPID
    ) :UINT;
begin
    result := 0;
    SetStatus(GdipGetPropertyItemSize(nativeImage,
                                                  propId, result));
end;

function Image.GetPropertyItem(
    propId :PROPID;
    propSize :UINT;
    out buffer :PropertyItem
    ) :Status;
begin
    result := SetStatus(GdipGetPropertyItem(nativeImage,
                                                     propId, propSize, buffer));
end;

function Image.GetPropertySize(
    out totalBufferSize :UINT;
    out numProperties :UINT
    ) :Status;
begin
    result := SetStatus(GdipGetPropertySize(nativeImage,
                                                     totalBufferSize,
                                                     numProperties));
end;

function Image.GetAllPropertyItems(
    totalBufferSize :UINT;
    numProperties :UINT;
    out allItems :PropertyItem
    ) :Status;
begin
{    if (allItems = nil) then
    begin
        result := SetStatus(InvalidParameter);
        exit;
    end;}
    result := SetStatus(GdipGetAllPropertyItems(nativeImage,
                                                         totalBufferSize,
                                                         numProperties,
                                                         allItems));
end;

function Image.RemovePropertyItem(
    propId :PROPID
    ) :Status;
begin
    result := SetStatus(GdipRemovePropertyItem(nativeImage, propId));
end;

function Image.SetPropertyItem(
    const item :PropertyItem
    ) :Status;
begin
    result := SetStatus(GdipSetPropertyItem(nativeImage, item));
end;

function Image.GetLastStatus :Status;
begin
    result := lastResult;
    lastResult := Ok;
end;

constructor Image.Create (nativeImage :GpImage; status :Status);
begin
    inherited Create;
    SetNativeImage(nativeImage);
    lastResult := status;
end;

procedure Image.SetNativeImage(nativeImage :GpImage);
begin
    self.nativeImage := nativeImage;
end;

constructor Bitmap.Create(
    const filename :widestring;
    useEmbeddedColorManagement :BOOL
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;

    if(useEmbeddedColorManagement) then
        lastResult := GdipCreateBitmapFromFileICM(pwidechar (filename), bitmap)
    else
        lastResult := GdipCreateBitmapFromFile(pwidechar (filename), bitmap);

    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    stream :IStream;
    useEmbeddedColorManagement :BOOL
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;

    if(useEmbeddedColorManagement) then
        lastResult := GdipCreateBitmapFromStreamICM(stream, bitmap)
    else
        lastResult := GdipCreateBitmapFromStream(stream, bitmap);

    SetNativeImage(bitmap);
end;


constructor Bitmap.Create(
    width,height,stride :integer;
    format :PixelFormat;
    scan0 :pbyte
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromScan0(width,
                                                       height,
                                                       stride,
                                                       format,
                                                       scan0^,
                                                       bitmap);
    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    width,height :integer;
    format :PixelFormat
    );
var
    bitmap :GpBitmap;
    scan0 :pbyte;
begin
    inherited Create;
    scan0 := nil;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromScan0(width,
                                                       height,
                                                       0,
                                                       format,
                                                       scan0^,
                                                       bitmap);
    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    width,height :integer;
    target :Graphics);
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromGraphics(width,
                                                          height,
                                                          target.nativeGraphics,
                                                          bitmap);
    SetNativeImage(bitmap);
end;

{constructor Bitmap.Create(
    surface :IDirectDrawSurface7
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromDirectDrawSurface(surface,
                                                       bitmap);
    SetNativeImage(bitmap);
end;
}
constructor Bitmap.Create(
    const gdiBitmapInfo :BITMAPINFO;
    gdiBitmapData :pointer
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromGdiDib(gdiBitmapInfo,
                                                        gdiBitmapData,
                                                        bitmap);
    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    hbm :HBITMAP;
    hpal :HPALETTE
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromHBITMAP(hbm, hpal, bitmap);
    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    hicon :HICON
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromHICON(hicon, bitmap);
    SetNativeImage(bitmap);
end;

constructor Bitmap.Create(
    hInstance :THandle;
    const bitmapName :widestring
    );
var
    bitmap :GpBitmap;
begin
    inherited Create;
    bitmap := nil;
    lastResult := GdipCreateBitmapFromResource(hInstance,
                                                          pwidechar (bitmapName),
                                                          bitmap);
    SetNativeImage(bitmap);
end;

function Bitmap.FromFile(
    const filename :widestring;
    useEmbeddedColorManagement :BOOL
    ) :Bitmap;
begin
    result := Bitmap.Create(
        pwidechar (filename),
        useEmbeddedColorManagement
    );
end;

function Bitmap.FromStream(
    stream :IStream;
    useEmbeddedColorManagement :BOOL
    ) :Bitmap;
begin
    result := Bitmap.Create(
        stream,
        useEmbeddedColorManagement
    );
end;

{class function Bitmap.FromDirectDrawSurface7(
    surface :IDirectDrawSurface7
    ) :Bitmap;
begin
    result := Bitmap.Create(surface);
end;
}
class function Bitmap.FromBITMAPINFO(
    const gdiBitmapInfo :BITMAPINFO;
    gdiBitmapData :pointer) :Bitmap;
begin
    result := Bitmap.Create (gdiBitmapInfo, gdiBitmapData);
end;

class function Bitmap.FromHBITMAP(
    hbm :HBITMAP;
    hpal :HPALETTE
    ) :Bitmap;
begin
    result := Bitmap.Create (hbm, hpal);
end;

class function Bitmap.FromHICON(
    hicon :HICON
    ) :Bitmap;
begin
    result := Bitmap.Create (hicon);
end;

class function Bitmap.FromResource(
    hInstance :THandle;
    const bitmapName :widestring) :Bitmap;
begin
    result := Bitmap.Create (hInstance, pwidechar (bitmapName));
end;

function Bitmap.GetHBITMAP(
    const colorBackground :Color;
    out hbmReturn :HBITMAP
    ) :Status;
begin
    result := SetStatus(GdipCreateHBITMAPFromBitmap(
                                        GpBitmap (nativeImage),
                                        hbmReturn,
                                        colorBackground.GetValue));
end;

function Bitmap.GetHICON(
    out hiconReturn :HICON
    ) :Status;
begin
    result := SetStatus(GdipCreateHICONFromBitmap(
                                        GPBitmap (nativeImage),
                                        hiconReturn));
end;

function Bitmap.Clone(
    const rect :Rect;
    format :PixelFormat
    ) :Bitmap;
begin
    result := Clone(rect.X, rect.Y, rect.Width, rect.Height, format);
end;

function Bitmap.Clone(
    x,y,
    width,
    height :integer;
    format :PixelFormat
    ) :Bitmap;
var
   gpdstBitmap :GpBitmap;
begin
   gpdstBitmap := nil;

   lastResult := GdipCloneBitmapAreaI(
                               x,
                               y,
                               width,
                               height,
                               format,
                               GpBitmap (nativeImage),
                               gpdstBitmap);

   if (lastResult = Ok) then
   begin
       result := Bitmap.Create (gpdstBitmap);

       if (result = nil) then
       begin
           GdipDisposeImage(gpdstBitmap);
       end;
   end
   else
       result := nil;
end;

function Bitmap.Clone(
    const rect :RectF;
    format :PixelFormat
    ) :Bitmap;
begin
    result := Clone(rect.X, rect.Y, rect.Width, rect.Height, format);
end;

function Bitmap.Clone(
    x,y,
    width,
    height :single;
    format :PixelFormat
    ) :Bitmap;
var
   gpdstBitmap :GpBitmap;
begin
   gpdstBitmap := nil;

   SetStatus(GdipCloneBitmapArea(
                               x,
                               y,
                               width,
                               height,
                               format,
                               GpBitmap (nativeImage),
                               gpdstBitmap));

   if (lastResult = Ok) then
   begin
       result := Bitmap.Create (gpdstBitmap);

       if (result = nil) then
           GdipDisposeImage(gpdstBitmap);
   end
   else
       result := nil;
end;

constructor Bitmap.Create(nativeBitmap :GpBitmap);
begin
    inherited Create;
    lastResult := Ok;
    SetNativeImage(nativeBitmap);
end;

function Bitmap.LockBits(
    const rect :Rect;
    flags :UINT;
    format :PixelFormat;
    out lockedBitmapData :BitmapData
) :Status;
begin
    result := SetStatus(GdipBitmapLockBits(
                                    GpBitmap (nativeImage),
                                    rect,
                                    flags,
                                    format,
                                    lockedBitmapData));
end;

function Bitmap.UnlockBits(
    lockedBitmapData :BitmapData
    ) :Status;
begin
    result := SetStatus(GdipBitmapUnlockBits(
                                    GpBitmap (nativeImage),
                                    lockedBitmapData));
end;

function Bitmap.GetPixel(
    x,y :integer;
    out color :Color) :Status;
var
    argb_ :ARGB;
begin
    result := SetStatus(GdipBitmapGetPixel(
        GpBitmap (nativeImage),
        x,y,
        argb_));

    if (result = Ok) then
        color.SetValue := argb_;
end;

function Bitmap.SetPixel(
    x,y :integer;
    const color :Color) :Status;
begin
    result := SetStatus(GdipBitmapSetPixel(
        GpBitmap (nativeImage),
        x, y,
        color.GetValue));
end;

function Bitmap.SetResolution(
    xdpi,ydpi :single) :Status;
begin
    result := SetStatus(GdipBitmapSetResolution(
        GpBitmap (nativeImage),
        xdpi, ydpi));
end;


//============================================================================
// *** GdiPlusCachedBitmap.h
//============================================================================
//   GDI+ CachedBitmap is a representation of an accelerated drawing
//   that has restrictions on what operations are allowed in order
//   to accelerate the drawing to the destination.
//============================================================================

constructor CachedBitmap.Create(
    bitmap :Bitmap;
    graphics :Graphics);
begin
    inherited Create;
    nativeCachedBitmap := nil;

    lastResult := GdipCreateCachedBitmap(
        GpBitmap (bitmap.nativeImage),
        graphics.nativeGraphics,
        nativeCachedBitmap
    );
end;

destructor CachedBitmap.Destroy;
begin
    GdipDeleteCachedBitmap(nativeCachedBitmap);
    inherited Destroy;
end;

function CachedBitmap.GetLastStatus :Status;
begin
    Result := lastResult;
    lastResult := Ok;
end;


//============================================================================
//============================================================================

initialization
  InitGdiPlus;

finalization

  GenericSansSerifFontFamily.Free;
  GenericSerifFontFamily.Free;
  GenericMonospaceFontFamily.Free;

  EndGdiPlus;

end.




