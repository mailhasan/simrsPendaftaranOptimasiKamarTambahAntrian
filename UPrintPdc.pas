unit UPrintPdc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFPrintPdc = class(TForm)
    qckrp1: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrlblNAMA: TQRLabel;
    qrlblALAMAT: TQRLabel;
    qrlbl1: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrintPdc: TFPrintPdc;

implementation

{$R *.dfm}

end.
