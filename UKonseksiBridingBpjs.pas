unit UKonseksiBridingBpjs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFKonseksiBridingBpjs = class(TForm)
    mmoNoRujukan: TMemo;
    edtlinkurl: TEdit;
    mmopoli: TMemo;
    mmodoktermelayani: TMemo;
    mmoPpkRujukan: TMemo;
    mmodpjpsuratkontrol: TMemo;
    mmodiagnosa: TMemo;
    mmoResponeInsertSep: TMemo;
    mmocarisep: TMemo;
    mmoPencarianSep: TMemo;
    mmoProvinsi: TMemo;
    mmoKOTAKABUPATEN: TMemo;
    mmokecamatan: TMemo;
    mmoStatusPulang: TMemo;
    mmoInsertRujukan: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKonseksiBridingBpjs: TFKonseksiBridingBpjs;

implementation

{$R *.dfm}

end.
