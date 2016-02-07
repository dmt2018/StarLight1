unit graphic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, TeeProcs, Chart, StdCtrls, Buttons, ExtCtrls;

type
  Tstatistic = class(TForm)
    Panel2: TPanel;
    BitBtn6: TBitBtn;
    Chart1: TChart;
    Series1: TBarSeries;
    Panel1: TPanel;
    BitBtn13: TBitBtn;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  statistic: Tstatistic;

implementation

uses main_form;

{$R *.dfm}

procedure Tstatistic.BitBtn13Click(Sender: TObject);
begin
  close;
end;

procedure Tstatistic.BitBtn6Click(Sender: TObject);
begin
  try
    Chart1.Align := alTop;
    Chart1.Height := trunc(Chart1.Width / 1.43);
    Chart1.SaveToMetafile(main.path+'FILES\tmp.wmf');
    // 2013-04-08 Переход на новый комп без рейврепорта. Заминить выгрузку на стандартные компоненты в последующем
    //RvProject1.ExecuteReport('Report3');
    Chart1.Align := alClient;
  except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
  End;
end;

end.
