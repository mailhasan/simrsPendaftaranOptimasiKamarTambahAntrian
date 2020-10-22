unit UJawalKontrolPasienPerjanjian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
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
  cxGridDBTableView, cxGrid, Menus, StdCtrls, cxButtons, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFJadwalKontrolPasienPerjanjian = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1alamat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglJadwalKontrolPasienRajal: TcxGridDBColumn;
    dtpTgl: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure dtpTglPropertiesChange(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilPx;
    procedure tgl;
  end;

var
  FJadwalKontrolPasienPerjanjian: TFJadwalKontrolPasienPerjanjian;
  tglMulai,tglSelesai:String;
implementation

{$R *.dfm}
uses UDataSimrs,DateUtils, ADODB;

procedure TFJadwalKontrolPasienPerjanjian.tgl;
begin
  tglMulai := FormatDateTime('yyyy-mm-dd',dtpTgl.Date);
  tglSelesai := FormatDateTime('yyyy-mm-dd',IncDay(dtpTgl.Date,1));
end;

procedure TFJadwalKontrolPasienPerjanjian.tampilPx;
begin
  tgl;

  with DataSimrs.qryJadwalKontrolPasien do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT `t_jadwalkontrolpasienrajal`.`IDJadwalKontrolPasienRajal`'+
                ', `t_jadwalkontrolpasienrajal`.`noRekamedis`'+
                ', `t_pasien`.`nmPasien`'+
                ', `t_pasien`.`tempatLahir`'+
                ', `t_pasien`.`tglLahir`'+
                ', `t_pasien`.`alamat`'+
                ', `t_jadwalkontrolpasienrajal`.`unit`'+
                ', `t_jadwalkontrolpasienrajal`.`namapetugasMedis`'+
                ', `t_jadwalkontrolpasienrajal`.`tglJadwalKontrolPasienRajal`'+
                ', statusKontrol FROM `t_pasien` INNER JOIN `t_jadwalkontrolpasienrajal` ON (`t_pasien`.`noRekamedis` = `t_jadwalkontrolpasienrajal`.`noRekamedis`) '+
                'WHERE (`t_jadwalkontrolpasienrajal`.`tglJadwalKontrolPasienRajal` BETWEEN "'+tglMulai+'" and "'+tglSelesai+'")';
    Open;
  end;
  
end;

procedure TFJadwalKontrolPasienPerjanjian.FormShow(Sender: TObject);
begin
  tampilPx;
end;

procedure TFJadwalKontrolPasienPerjanjian.dtpTglPropertiesChange(
  Sender: TObject);
begin
  tampilPx;
end;

procedure TFJadwalKontrolPasienPerjanjian.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
