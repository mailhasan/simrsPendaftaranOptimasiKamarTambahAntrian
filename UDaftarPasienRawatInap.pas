unit UDaftarPasienRawatInap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, GridsEh, DBGridEh,
  ExtCtrls, cxControls, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFDaftarPasienRawatInap = class(TForm)
    pnlTegah: TPanel;
    pnlBawah: TPanel;
    lblNoRmNama: TLabel;
    edtNoRmNama: TEdit;
    btnBatalPasien: TcxButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdPasienRawatInap: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tempatLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglLahir: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jenisKelamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1provinsi: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglPulang: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namapetugasMedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1asalPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1rawatInap: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kelas: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noKamar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noBed: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tarifKmr: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDaftarPasienRawatInap: TFDaftarPasienRawatInap;

implementation

uses UDataSImrs;

{$R *.dfm}

procedure TFDaftarPasienRawatInap.FormShow(Sender: TObject);
begin
  with DataSimrs.qryvw_pasienrawatinap do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_pasienrawatinap WHERE tglPulang is NULL ';
    Open;
  end;
end;

procedure TFDaftarPasienRawatInap.edtNoRmNamaChange(Sender: TObject);
begin
if edtNoRmNama.Text = '' then
  begin
    with DataSimrs.qryvw_pasienrawatinap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM vw_pasienrawatinap WHERE  tglPulang is NULL ';
      Open;
    end;
  end
  else
  begin
    with DataSimrs.qryvw_pasienrawatinap do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT * FROM vw_pasienrawatinap WHERE (noRekamedis LIKE "%'+edtNoRmNama.Text+'%" OR nmPasien LIKE "%'+edtNoRmNama.Text+'%") and (tglPulang is NULL) ';
      Open;
    end;
  end;
end;

procedure TFDaftarPasienRawatInap.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
