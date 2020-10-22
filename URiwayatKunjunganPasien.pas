unit URiwayatKunjunganPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ComCtrls, StdCtrls, GridsEh, DBGridEh,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,EhLibADO;

type
  TFRiwayatKunjunganPasien = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pgcRiwayatKunjungan: TPageControl;
    tsRajal: TTabSheet;
    tsRanap: TTabSheet;
    dbgrdhRiwayatRajal: TDBGridEh;
    dbgrdhRiwayatRanap: TDBGridEh;
    edtNoRm: TEdit;
    tsLab: TTabSheet;
    tsRadiologi: TTabSheet;
    tsRawatJalanLama: TTabSheet;
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilriwayatpasienrajal;
    procedure tampilriwayatpasienranap;
  end;

var
  FRiwayatKunjunganPasien: TFRiwayatKunjunganPasien;

implementation

{$R *.dfm}

uses UDataSImrs, ADODB;
///tampil riwayat pasien rawat jalan
procedure TFRiwayatKunjunganPasien.tampilriwayatpasienrajal;
begin
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_pasienrawatjalan where noRekamedis="'+edtNoRm.Text+'" ORDER BY tglDaftar ASC';
    Open;
  end;
end;

///tampil riwayat pasien rawat inap
procedure TFRiwayatKunjunganPasien.tampilriwayatpasienranap;
begin
  with DataSimrs.qryvw_pasienrawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_pasienrawatinap where noRekamedis="'+edtNoRm.Text+'" ORDER BY tglDaftar ASC';
    Open;
  end;
end;

procedure TFRiwayatKunjunganPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRiwayatKunjunganPasien.FormShow(Sender: TObject);
begin
  tampilriwayatpasienrajal;
  tampilriwayatpasienranap;
end;

procedure TFRiwayatKunjunganPasien.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFRiwayatKunjunganPasien.FormCreate(Sender: TObject);
begin
FRiwayatKunjunganPasien.KeyPreview:=True;
end;

end.
