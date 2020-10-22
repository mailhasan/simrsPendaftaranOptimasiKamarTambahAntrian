unit ULaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxNavBar2Painter, dxNavBarCollns, cxClasses, dxNavBarBase,
  dxNavBar, ActnList, frxClass, frxDBSet, ExtCtrls, TeEngine, TeeFunci,
  Series, TeeProcs, Chart, DbChart, StdCtrls, DB, ADODB;

type
  TFLAPORAN = class(TForm)
    dxnvbrLaporan: TdxNavBar;
    dxnvbrgrpLaporanGroupPendaftaran: TdxNavBarGroup;
    dxnvbrtmLaporanItem1: TdxNavBarItem;
    dxnvbrtmLaporanItem2: TdxNavBarItem;
    actlstLAPORAN: TActionList;
    actKUNJUNGANRAWATJALAN: TAction;
    pnlTengah: TPanel;
    grpLpKunjunganRajalIgd: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLAPORAN: TFLAPORAN;

implementation

{$R *.dfm}

uses UDataSimrs;

end.
