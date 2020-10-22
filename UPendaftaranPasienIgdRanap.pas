unit UPendaftaranPasienIgdRanap;

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
  dxSkinsdxNavBar2Painter, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, ComCtrls, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  ExtCtrls, frxClass, frxDBSet, Menus, ActnList, frxDesgn;

type
  TFPendaftaranPasienRawatInap = class(TForm)
    actlstRanap: TActionList;
    actPasienLama: TAction;
    actPasienBaru: TAction;
    actSimpan: TAction;
    actTambah: TAction;
    actGelang: TAction;
    actLabel2x1: TAction;
    actKarcis: TAction;
    actKartuBerobat: TAction;
    actlstIgd: TActionList;
    actSimpanIgd: TAction;
    actTambahIgd: TAction;
    actKartuBerobatIgd: TAction;
    actGelangIgd: TAction;
    actLabel2x1Igd: TAction;
    actKarcisIgd: TAction;
    mmRawatInap: TMainMenu;
    SETTINGPRINTER1: TMenuItem;
    frxrprtLabel: TfrxReport;
    frxrprtKartuBerobat: TfrxReport;
    frxdbdtstPasien: TfrxDBDataset;
    frxrprtKarcis: TfrxReport;
    frxdbdtstKarcis: TfrxDBDataset;
    frxrprtGelang: TfrxReport;
    pgcRawatInapUGD: TPageControl;
    tsrawatinap: TTabSheet;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlKanan: TPanel;
    dxnvbrMenu: TdxNavBar;
    dxnvbrgrpMenuGroupMenu: TdxNavBarGroup;
    dxnvbrgrpMenuGroupLaporan: TdxNavBarGroup;
    dxnvbrgrpMenuGroupKeluar: TdxNavBarGroup;
    dxnvbrtmMenuItemRiwayatKunjungan: TdxNavBarItem;
    dxnvbrtmMenuItemEdit: TdxNavBarItem;
    dxnvbrtmMenuItemKoreksiKeluarga: TdxNavBarItem;
    dxnvbrtmMenuItemBataslPasien: TdxNavBarItem;
    dxnvbrtmMenuItemJadwalDokter: TdxNavBarItem;
    dxnvbrtmMenuItemLaporan: TdxNavBarItem;
    dxnvbrtmMenuItemDaftarHariIni: TdxNavBarItem;
    dxnvbrtmMenuItemKeluar: TdxNavBarItem;
    dxnvbrtmMenuItemAsesment: TdxNavBarItem;
    dxnvbrtmMenuItemEditPenjamin: TdxNavBarItem;
    dxnvbrtmMenuItemInfoTersediaKamar: TdxNavBarItem;
    dxnvbrtmMenuItemDaftarDataPasienRanap: TdxNavBarItem;
    pnlTegah: TPanel;
    pnlAtas1: TPanel;
    grpNoRm: TGroupBox;
    lblTanggal: TLabel;
    lblNoRekamedis: TLabel;
    dtpTanggal: TDateTimePicker;
    edtNoRekamedis: TEdit;
    btnPasienBaru: TButton;
    btnPasienLama: TButton;
    grpNoRegistrasi: TGroupBox;
    lblNoRegistrasi: TLabel;
    lblKunjungan: TLabel;
    edtNoRegistrasi: TEdit;
    edtKunjungan: TEdit;
    grpDataPasien: TGroupBox;
    lblNoIdentitas: TLabel;
    lblNama: TLabel;
    lblTempatTglLahir: TLabel;
    lblUmur: TLabel;
    lblJenisKelamin: TLabel;
    lblPendidikan: TLabel;
    lblAlamat: TLabel;
    lblPekerjaan: TLabel;
    lblKelurahanDesa: TLabel;
    lblKecamatan: TLabel;
    lblKabupaten: TLabel;
    lbl1: TLabel;
    lblProvinsi: TLabel;
    lblKodePos: TLabel;
    lblBahasa: TLabel;
    lblAgama: TLabel;
    lblNoTelpone: TLabel;
    edtNoIdentitas: TEdit;
    edtNmLengkap: TEdit;
    edtTempatLahir: TEdit;
    edtTglLahir: TEdit;
    edtTahun: TEdit;
    edtJenisKelamin: TEdit;
    edtPendidikan: TEdit;
    edtPekerjaan: TEdit;
    mmoAlamat: TMemo;
    edtKelurahanDesa: TEdit;
    edtKecamatan: TEdit;
    edtKabupaten: TEdit;
    edtProvinsi: TEdit;
    edtKodePos: TEdit;
    edtBahasa: TEdit;
    edtAgama: TEdit;
    edtLamaBaru: TEdit;
    edtNoTelepone: TEdit;
    grpKeteranganTombol: TGroupBox;
    lblCtrlP: TLabel;
    lblctrlB: TLabel;
    lblCTRLS: TLabel;
    lblCTRLT: TLabel;
    lblCTRLK: TLabel;
    lblGelang: TLabel;
    lblCTRLL: TLabel;
    lblCTRLR: TLabel;
    lblESC: TLabel;
    grpDataPendaftaran: TGroupBox;
    lblAsalPasien: TLabel;
    lblCaraBayar: TLabel;
    lblDokter: TLabel;
    lblJadwal: TLabel;
    lblPenjamin: TLabel;
    lblIsiAsalPasien: TLabel;
    cbbJadwalDokter: TComboBox;
    cbbAsalPasien: TcxLookupComboBox;
    cbbCaraBayar: TcxLookupComboBox;
    cbbPenjamin: TcxLookupComboBox;
    cbbDokter: TcxLookupComboBox;
    grpDetailKamar: TGroupBox;
    lblRawatInap: TLabel;
    lblKamar: TLabel;
    lblKelas: TLabel;
    lbl4: TLabel;
    lblStatusKamar: TLabel;
    edtRawatInap: TEdit;
    edtNoKamar: TEdit;
    edtKelas: TEdit;
    edtTarif: TEdit;
    edtKdRawatInap: TEdit;
    edtNoBed: TEdit;
    edtKdTarifKamar: TEdit;
    edtStatusKamar: TEdit;
    grpCariRawatInap: TGroupBox;
    cbbKamar: TcxLookupComboBox;
    btnCariKamarManual: TButton;
    grpKartuPenjamin: TGroupBox;
    lblNoKartu: TLabel;
    lblNoSEP: TLabel;
    lblAtasNama: TLabel;
    edtNoKartu: TEdit;
    edtNoSep: TEdit;
    edtAtasNama: TEdit;
    edtIsiAsalPasien: TEdit;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    btnTambah: TButton;
    btnKartuBerobat: TButton;
    btnLabel: TButton;
    btnLabel2x1: TButton;
    tsUgd: TTabSheet;
    pnlAtasUgd: TPanel;
    pnlkeluar1: TPanel;
    pnlBawahUgd: TPanel;
    btnSimpanUgd: TButton;
    btnTambahUgd: TButton;
    btnKartuBerobatUgd: TButton;
    btnLabelUgd: TButton;
    btnLabel2x1Ugd: TButton;
    btnKarcisUgd: TButton;
    pnlTegahUgd: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    lbl23: TLabel;
    edtNoIdentitiasKtpUgd: TEdit;
    edtNmLengkapUgd: TEdit;
    edtTempatLahirUgd: TEdit;
    edtTanggalLahirUgd: TEdit;
    edtTahunUgd: TEdit;
    edtJkUgd: TEdit;
    edtPendidikanUgd: TEdit;
    edtPekerjaanUgd: TEdit;
    mmoAlamatUgd: TMemo;
    edtKelurahanUgd: TEdit;
    edtKecamatanUgd: TEdit;
    edtKabupatenUgd: TEdit;
    edtProvinsiUgd: TEdit;
    edtKodePosUgd: TEdit;
    edtBahasaUgd: TEdit;
    edtAgamaUgd: TEdit;
    edtLamaBaruUgd: TEdit;
    edtNoTeleponeIgd: TEdit;
    grpDataDaftarUgd: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl24: TLabel;
    grp2: TGroupBox;
    lbl8: TLabel;
    lbl9: TLabel;
    edtKarcisUgd: TEdit;
    edtKonsultasiUgd: TEdit;
    cbbAsalPasienUgd: TcxLookupComboBox;
    cbbCaraBayarUgd: TcxLookupComboBox;
    cbbPenjaminUgd: TcxLookupComboBox;
    cbbDokterUgd: TcxLookupComboBox;
    edtIsiAsalRujukan: TEdit;
    grp5: TGroupBox;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    edtNoKartuUgd: TEdit;
    edtNoSepUgd: TEdit;
    edtAtasNamaUgd: TEdit;
    cbbJadwalDokterUgd: TComboBox;
    grp4: TGroupBox;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    pnlAtasIgd1: TPanel;
    grp1: TGroupBox;
    lbl10: TLabel;
    lbl11: TLabel;
    dtpTanggalUgd: TDateTimePicker;
    edtNoRekamedisUgd: TEdit;
    btnPasienLamaIgd: TButton;
    btnBaru: TButton;
    grp3: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    edtNoRegistrasiUgd: TEdit;
    edtKunjunganKeUgd: TEdit;
    pnlKananUgd: TPanel;
    dxnvbrUgd: TdxNavBar;
    dxnvbrgrpUgd: TdxNavBarGroup;
    dxnvbrgrpLaporanUgd: TdxNavBarGroup;
    dxnvbrgrpUgdGroupKeluar: TdxNavBarGroup;
    dxnvbrtmRiwayatKunjuganUgd: TdxNavBarItem;
    dxnvbrtmKorenksiBiodataUgd: TdxNavBarItem;
    dxnvbrtmBatalPasienUgd: TdxNavBarItem;
    dxnvbrtmKoreksiKeluargaUgd: TdxNavBarItem;
    dxnvbrtmJadwalDokterUgd: TdxNavBarItem;
    dxnvbrtmLaporanUgd: TdxNavBarItem;
    dxnvbrtmDaftarHariIniUgd: TdxNavBarItem;
    dxnvbrtmUgdItemKeluar: TdxNavBarItem;
    dxnvbrtmUgdItemAsesment: TdxNavBarItem;
    dxnvbrtmUgdPrintLabel: TdxNavBarItem;
    dxnvbrtmUgdDaftarPasienRanap: TdxNavBarItem;
    btnKelas: TButton;
    DESAINPRINT1: TMenuItem;
    label2x1IGD1: TMenuItem;
    frxdsgnr1: TfrxDesigner;
    procedure SETTINGPRINTER1Click(Sender: TObject);
    procedure btnPasienLamaIgdClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure edtNoRekamedisUgdDblClick(Sender: TObject);
    procedure edtNoRekamedisUgdKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dxnvbrtmUgdItemKeluarClick(Sender: TObject);
    procedure actSimpanIgdExecute(Sender: TObject);
    procedure actTambahIgdExecute(Sender: TObject);
    procedure actKartuBerobatIgdExecute(Sender: TObject);
    procedure actGelangIgdExecute(Sender: TObject);
    procedure actLabel2x1IgdExecute(Sender: TObject);
    procedure actKarcisIgdExecute(Sender: TObject);
    procedure dxnvbrtmRiwayatKunjuganUgdClick(Sender: TObject);
    procedure dxnvbrtmKorenksiBiodataUgdClick(Sender: TObject);
    procedure dxnvbrtmKoreksiKeluargaUgdClick(Sender: TObject);
    procedure dxnvbrtmBatalPasienUgdClick(Sender: TObject);
    procedure dxnvbrtmDaftarHariIniUgdClick(Sender: TObject);
    procedure dxnvbrtmUgdPrintLabelClick(Sender: TObject);
    procedure dxnvbrtmUgdDaftarPasienRanapClick(Sender: TObject);
    procedure cbbAsalPasienUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtIsiAsalRujukanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbCaraBayarUgdKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaUgdKeyPress(Sender: TObject; var Key: Char);
    procedure cbbDokterUgdKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJadwalDokterUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtKarcisUgdKeyPress(Sender: TObject; var Key: Char);
    procedure edtKonsultasiUgdKeyPress(Sender: TObject; var Key: Char);
    procedure btnPasienLamaClick(Sender: TObject);
    procedure dxnvbrtmMenuItemKeluarClick(Sender: TObject);
    procedure dxnvbrtmMenuItemEditClick(Sender: TObject);
    procedure dxnvbrtmMenuItemRiwayatKunjunganClick(Sender: TObject);
    procedure dxnvbrtmMenuItemKoreksiKeluargaClick(Sender: TObject);
    procedure dxnvbrtmMenuItemBataslPasienClick(Sender: TObject);
    procedure edtNoRekamedisClick(Sender: TObject);
    procedure edtNoRekamedisKeyPress(Sender: TObject; var Key: Char);
    procedure cbbAsalPasienKeyPress(Sender: TObject; var Key: Char);
    procedure edtIsiAsalPasienKeyPress(Sender: TObject; var Key: Char);
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariKamarManualClick(Sender: TObject);
    procedure actPasienLamaExecute(Sender: TObject);
    procedure cbbKamarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbDokterKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJadwalDokterKeyPress(Sender: TObject; var Key: Char);
    procedure actSimpanExecute(Sender: TObject);
    procedure actTambahExecute(Sender: TObject);
    procedure actKartuBerobatExecute(Sender: TObject);
    procedure actGelangExecute(Sender: TObject);
    procedure actLabel2x1Execute(Sender: TObject);
    procedure dxnvbrtmMenuItemDaftarHariIniClick(Sender: TObject);
    procedure dxnvbrtmMenuItemInfoTersediaKamarClick(Sender: TObject);
    procedure dxnvbrtmMenuItemDaftarDataPasienRanapClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure pnlkeluar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKelasClick(Sender: TObject);
    procedure dxnvbrtmMenuItemLaporanClick(Sender: TObject);
    procedure dxnvbrtmLaporanUgdClick(Sender: TObject);
    procedure label2x1IGD1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tambahRanap;
    procedure noRegistrasiRanap;
    procedure tambahUgd;
    procedure noRegistrasiUgd;
    procedure printLabel2x1;
    procedure koneksiPcRanap;
    procedure printKartuBerobat;
    procedure printGelang;
    procedure printKarcisPasien;
    procedure printLabel2x1Ranap;
    procedure printKartuBerobatRanap;
    procedure printGelangRanap;
  end;

var
  FPendaftaranPasienRawatInap: TFPendaftaranPasienRawatInap;

implementation

uses UDataSimrs, USettingPrinter, UDataPendaftaranPasien,
      UDataPasienBaruIgd,UPendaftaran, URiwayatKunjunganPasien,
  UDaftarBiodataPx, UDataDaftarPasienIgd, UDaftarPasienRawatInap,
  UDaftarDataPasienHariIniRanap,UCariKamarRawatInap, ADODB, DB,
  UInformasiKetersedianRawatInap,UKelas;

{$R *.dfm}
// Cek Nama Komputer
function GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  iLen := MAX_COMPUTERNAME_LENGTH + 1;
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
end;

/// tambah awal ranap
procedure TFPendaftaranPasienRawatInap.tambahRanap;
begin
   edtNoRekamedis.Clear;
   edtKunjungan.Clear;
   edtNoIdentitas.Clear;
   edtNmLengkap.Clear;
   edtTempatLahir.Clear;
   edtTglLahir.Clear;
   edtTahun.Clear; 
   edtJenisKelamin.Clear;
   edtPendidikan.Clear;
   edtPekerjaan.Clear;
   mmoAlamat.Clear;
   edtKelurahanDesa.Clear;
   edtKecamatan.Clear;
   edtKabupaten.Clear;
   edtBahasa.Clear;
   edtProvinsi.Clear;
   edtKodePos.Clear;
   edtAgama.Clear;
   edtNoTelepone.Clear;
   
   cbbAsalPasien.EditValue := '01';
   edtIsiAsalPasien.Text := '';

   cbbCaraBayar.Text := '';
   cbbPenjamin.Text := '';

   edtNoKartu.Text := '';
   edtNoSep.Text := '';
   edtAtasNama.Text := '';

   cbbKamar.Text := '';
   cbbDokter.EditValue := '0000';
   cbbJadwalDokter.Text := '';
   edtLamaBaru.Clear;
   dtpTanggal.DateTime := Now;
   edtRawatInap.Clear;
   edtKdRawatInap.Clear;
   edtKdTarifKamar.Clear;
   edtNoKamar.Clear;
   edtNoBed.Clear;
   edtKelas.Clear;
   edtTarif.Clear;
   edtStatusKamar.Clear;
end;

/// nomer registrasi ranap
procedure TFPendaftaranPasienRawatInap.noRegistrasiRanap;
begin
  with DataSimrs.qryt_registrasi do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noRekamedis from t_registrasi';
    Open;
  end;
  edtNoRegistrasi.Text :=FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasi.RecordCount+1);
end;

/// awal data IGD
procedure TFPendaftaranPasienRawatInap.tambahUgd;
begin
  //// clear data UGD
   edtNoRekamedisUgd.Clear;
   edtKunjunganKeUgd.Clear;
   edtNoIdentitiasKtpUgd.Clear;
   edtNmLengkapUgd.Clear;
   edtTempatLahirUgd.Clear;
   edtTanggalLahirUgd.Clear;
   edtTahunUgd.Clear;
   edtJkUgd.Clear;
   edtPendidikanUgd.Clear;
   edtPekerjaanUgd.Clear;
   mmoAlamatUgd.Clear;
   edtKelurahanUgd.Clear;
   edtKecamatanUgd.Clear;
   edtKabupatenUgd.Clear;
   edtBahasaUgd.Clear;
   edtProvinsiUgd.Clear;
   edtKodePosUgd.Clear;
   edtAgamaUgd.Clear;
   edtNoTeleponeIgd.Text := '';

   cbbAsalPasienUgd.EditValue := '01';
   cbbCaraBayarUgd.Text := '';
   cbbPenjaminUgd.Text := '';

   edtNoKartuUgd.Text := '';
   edtNoSepUgd.Text := '';
   edtAtasNamaUgd.Text := '';

   cbbDokterUgd.EditValue := '0000';
   cbbJadwalDokterUgd.Text := '';
   edtLamaBaruUgd.Clear;
   dtpTanggalUgd.DateTime := Now;
   
end;

procedure TFPendaftaranPasienRawatInap.noRegistrasiUgd;
begin
  with DataSimrs.qryt_registrasi do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noRekamedis from t_registrasi';
    Open;
  end;
  /// no ugd
  edtNoRegistrasiUgd.Text :=FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasi.RecordCount+1);
end;

///print label 2x1 UGD;
procedure TFPendaftaranPasienRawatInap.printLabel2x1;
var
  crBayar :String;
begin
if edtNoRekamedisUgd.Text = '' then
      MessageDlg('Data Tidak Boleh Kosong...!',mtInformation,[mbok],0)
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedisUgd.Text+'"';
      Open;

    frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1IGD.fr3');
    frxrprtLabel.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerLabel').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtLabel.PrepareReport;
    frxrprtLabel.ShowReport();
    end
end;
end;

//// setting tampil koneksi 
procedure TFPendaftaranPasienRawatInap.koneksiPcRanap;
begin
with DataSimrs.qryt_komputer do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
  Open;
end;

if DataSimrs.qryt_komputer.FieldByName('namaKomputer').AsString = GetComputerNameFromWindows then
  begin
   FPendaftaranPasienRawatInap.Show;
  end
  else
  begin
   Close;
   FSettingPrinter.Show;
  end;
end;

///print kartu berobat UGD;
procedure TFPendaftaranPasienRawatInap.printKartuBerobat;
begin
if  edtNoRekamedisUgd.Text = '' then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
    else
    begin
      with DataSimrs.qryVwPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedisUgd.Text+'"';
        Open;
        with DataSimrs.qryt_komputer do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
          Open;
        end;

        frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\kartuberobat.fr3');
        frxrprtKartuBerobat.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerKartu').AsString;
        //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
        frxrprtKartuBerobat.PrepareReport;
        frxrprtKartuBerobat.Print;
      end;
    end;
end;

///print gelang pasien UGD
procedure TFPendaftaranPasienRawatInap.printGelang;
begin
if (edtNoRekamedisUgd.Text = '') then
    MessageDlg('Data Masih Ada Yang Belum Di isi...!',mtInformation,[mbok],0)
  else
  begin
     with DataSimrs.qryVwPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedisUgd.Text+'"';
        Open;
      end;
      with DataSimrs.qryt_komputer do
      begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
          Open;
       end;

      frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\gelangIGD.fr3');
      frxrprtGelang.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerGelang').AsString;
      frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
      frxrprtGelang.PrepareReport;
      frxrprtGelang.Print;
  end;
end;

/// print karcis
procedure TFPendaftaranPasienRawatInap.printKarcisPasien;

begin
  if (edtNoRekamedisUgd.Text='') or (cbbAsalPasienUgd.Text='') or (cbbCaraBayarUgd.Text='') or
      (cbbPenjaminUgd.Text='')  then
        MessageDlg('Data Di Lengkapi...!',mtWarning,[mbok],0)
  else
  begin
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from vw_pasienrawatjalan where noDaftar="'+edtNoRegistrasiUgd.Text+'"';
        Open;
      end;

      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;

      frxrprtKarcis.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\karcisIGD.fr3');
      frxrprtKarcis.PrintOptions.Printer:= DataSimrs.qryt_komputer['printerKarcis'];
      frxrprtKarcis.PrintOptions.ShowDialog:=True;
      frxrprtKarcis.PrepareReport;
      frxrprtKarcis.ShowReport;
    end;
end;

///print label 2x1 ranap
procedure TFPendaftaranPasienRawatInap.printLabel2x1Ranap;
var
  crBayar1 :String;
begin
if edtNoRekamedis.Text = '' then
      MessageDlg('Data Masih Ada Yang Belum Di isi...!',mtInformation,[mbok],0)
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedis.Text+'"';
      Open;


    frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1IGD.fr3');
    frxrprtLabel.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerLabel').AsString;
    //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtLabel.PrepareReport;
    frxrprtLabel.ShowReport();
    end;
  end;
end;

//print kartu berobat Ranap;
procedure TFPendaftaranPasienRawatInap.printKartuBerobatRanap;
begin
if  edtNoRekamedis.Text = '' then
    MessageDlg('Data Masih Ada Yang Belum Di isi...!',mtInformation,[mbok],0)
    else
    begin
      with DataSimrs.qryVwPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedis.Text+'"';
        Open;
        
      end;
      with DataSimrs.qryt_komputer do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
          Open;
        end;

        frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\kartuberobatIGD.fr3');
        frxrprtKartuBerobat.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerKartu').AsString;
        //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
        frxrprtKartuBerobat.PrepareReport;
        frxrprtKartuBerobat.Print;
    end;
end;

/// print gelang pasien ranap
procedure TFPendaftaranPasienRawatInap.printGelangRanap;
begin
  if (edtNoRekamedis.Text = '') then
    MessageDlg('Data Harus Di Isi Lengkap...!',mtInformation,[mbok],0)
  else
  begin
      with DataSimrs.qryVwPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_pasien where noRekamedis="'+edtNoRekamedis.Text+'"';
        Open;

      end;
      with DataSimrs.qryt_komputer do
      begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
          Open;
       end;

        frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\gelang.fr3');
        frxrprtGelang.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerGelang').AsString;
        frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
        frxrprtGelang.PrepareReport;
        frxrprtGelang.Print;
  end;
end;




procedure TFPendaftaranPasienRawatInap.SETTINGPRINTER1Click(
  Sender: TObject);
begin
  FSettingPrinter.Show;
end;

procedure TFPendaftaranPasienRawatInap.btnPasienLamaIgdClick(
  Sender: TObject);
begin
  FDataPendaftaranPasien.btnDaftar.Caption := 'DAFTAR IGD';
  edtLamaBaru.Text := 'lama';
  // tampil data karcis pendaftaran dan jasa medis dokter
   with DataSimrs.qrywv_unitrajal do
   begin
    Close;
    SQL. Clear;
    SQL.Text := 'select * from vw_unitrajal where kdUnit="4001"';
    Open;
   end;
   edtKarcisUgd.Text := FloatToStr(0);
   edtKonsultasiUgd.Text := FloatToStr(DataSimrs.qrywv_unitrajal['jasaMedis']);
  FDataPendaftaranPasien.Show;
end;

procedure TFPendaftaranPasienRawatInap.btnBaruClick(Sender: TObject);
begin
  /// Daftar Data Pasien Baru IGD
   FDataPasienBaruIgd.Show;
   edtLamaBaruUgd.Text := 'baru';
   with DataSimrs.qrywv_unitrajal do
   begin
    Close;
    SQL. Clear;
    SQL.Text := 'select * from vw_unitrajal where kdUnit="4001"';
    Open;
   end;
   edtKarcisUgd.Text := FloatToStr(DataSimrs.qrywv_unitrajal['JasaRs']);
   edtKonsultasiUgd.Text := FloatToStr(DataSimrs.qrywv_unitrajal['jasaMedis']);
end;

procedure TFPendaftaranPasienRawatInap.edtNoRekamedisUgdDblClick(
  Sender: TObject);
begin
  tambahUgd; noRegistrasiUgd;
end;

procedure TFPendaftaranPasienRawatInap.edtNoRekamedisUgdKeyPress(
  Sender: TObject; var Key: Char);
var
  noRmIgd :String;
begin
if Key=#13 then
begin
    Key:=#0;
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis LIKE "%'+edtNoRekamedisUgd.Text+'%" limit 20';
      Open;
    end;

    if DataSimrs.qryVwPasien.RecordCount >= 1 then
    begin
      noRmIgd := DataSimrs.qryVwPasien.Fieldbyname('noRekamedis').AsString;
      
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noRekamedis,statusKeluar,unit from vw_pasienrawatjalan where (noRekamedis="'+noRmIgd+'") and (statusKeluar="Di Rawat IGD") limit 50';
        Open;
      end;

      /// pengujian pasien yang masih terdaftar di IGD
      if (DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRekamedis').AsString=noRmIgd) and (DataSimrs.qryvw_pasienrawatjalan.FieldByName('statusKeluar').AsString='Di Rawat IGD') then
      begin
          ShowMessage('Pasien Masih Terdaftar Di "'+DataSimrs.qryvw_pasienrawatjalan['unit']+'"');
          FDataPendaftaranPasien.isiPasienIgd;
      end
      else
      begin
        FDataPendaftaranPasien.isiPasienIgd;
        noRegistrasiUgd;
        with DataSimrs.qryVwPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_pasien limit 20';
          Open;
        end;
      end;

     with DataSimrs.qrywv_unitrajal do
     begin
      Close;
      SQL. Clear;
      SQL.Text := 'select * from vw_unitrajal where kdUnit="4001"';
      Open;
     end;
     edtKarcisUgd.Text := FloatToStr(0);
     edtKonsultasiUgd.Text := FloatToStr(DataSimrs.qrywv_unitrajal['jasaMedis']);

    end
end;
end;


procedure TFPendaftaranPasienRawatInap.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFPendaftaranPasienRawatInap.FormShow(Sender: TObject);
begin
  tambahRanap;
  noRegistrasiRanap;

  tambahUgd;
  noRegistrasiUgd;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmUgdItemKeluarClick(
  Sender: TObject);
begin
  Close;
end;

procedure TFPendaftaranPasienRawatInap.actSimpanIgdExecute(
  Sender: TObject);
var
  tgldaftarIgd,noRegIgd :String;
begin
/// Pengujian Jika Ada Data Yang Masih kosong
if (cbbAsalPasienUgd.Text = '') or (cbbCaraBayarUgd.Text='') or (cbbPenjaminUgd.Text='') or
   (cbbDokterUgd.Text='') or (cbbJadwalDokterUgd.Text='') then
        MessageDlg('Data Di Lengkapi...!',mtWarning,[mbok],0)
   else
   begin
     /// pengujian no Daftar sudah terdaftar
     if DataSimrs.qryt_registrasi.Locate('noDaftar',edtNoRegistrasiUgd.Text,[])  then
        MessageDlg('Data Sudah Ada, Klik Tombol Tambah Untuk Pasien Baru!!',mtWarning,[mbok],0)
     else
     begin

        tgldaftarIgd := FormatDateTime('yyyy-MM-dd HH:mm:ss',dtpTanggalUgd.DateTime);
       // insert ke tabel registrasi
        with DataSimrs.qryt_registrasi do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_registrasi (noDaftar,tglDaftar,noRekamedis,kdAsalPasien,'+
                      'kdCaraBayar,kdPenjamin,kdTenagaMedis,waktuPraktekDokter,kdInstalasi,'+
                      'kdStatusKeluar,pasienlamabaru,kdCaraKeluar,createDate,username,pengguna)'+
                      'values ("'+edtNoRegistrasiUgd.Text+'","'+tgldaftarIgd+'","'+edtNoRekamedisUgd.Text+'",'+
                      '"'+cbbAsalPasienUgd.EditValue+'","'+cbbCaraBayarUgd.EditValue+'","'+cbbPenjaminUgd.EditValue+'",'+
                      '"'+cbbDokterUgd.EditValue+'","'+cbbJadwalDokterUgd.Text+'","ki4","18","'+edtLamaBaruUgd.Text+'","8",'+
                      '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'")';
          ExecSQL;
          SQL.Text := 'select noDaftar from t_registrasi';
          Open;
        end;

        noRegIgd := 'IGD'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasirawatjalan.RecordCount+1);

        //insert ke tabel registrasi rawat jalan / UGD
        with DataSimrs.qryt_registrasirawatjalan do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_registrasirawatjalan (noRegistrasiRawatJalan,noDaftar,kdUnit,'+
                      'tglMasukRawatJalan,karciPendaftaran,konsulDokter)  '+
                      'values ("'+noRegIgd+'","'+edtNoRegistrasiUgd.Text+'","4001","'+tgldaftarIgd+'",'+
                      '"'+edtKarcisUgd.Text+'","'+edtKonsultasiUgd.Text+'")';
          ExecSQL;
          SQL.Text := 'select noRegistrasiRawatJalan from t_registrasirawatjalan';
          Open;
        end;

     end;
      MessageDlg('Pasien Berhasil Terdaftar....!',mtInformation,[mbok],0);
   end;
end;

procedure TFPendaftaranPasienRawatInap.actTambahIgdExecute(
  Sender: TObject);
begin
  tambahUgd;
  edtNoRekamedisUgd.SetFocus;
  noRegistrasiUgd;
end;

procedure TFPendaftaranPasienRawatInap.actKartuBerobatIgdExecute(
  Sender: TObject);
begin
   printKartuBerobat;
end;

procedure TFPendaftaranPasienRawatInap.actGelangIgdExecute(
  Sender: TObject);
begin
  printGelang;
end;

procedure TFPendaftaranPasienRawatInap.actLabel2x1IgdExecute(
  Sender: TObject);
begin
   printLabel2x1;
end;

procedure TFPendaftaranPasienRawatInap.actKarcisIgdExecute(
  Sender: TObject);
begin
    printKarcisPasien;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmRiwayatKunjuganUgdClick(
  Sender: TObject);
begin
 if edtNoRekamedisUgd.Text = '' then
    MessageDlg('No RM Pasien Masih Kosong, Silahkan Pilih Menu Pasien Lama....!',mtWarning,[mbok],0)
  else
  begin
    FRiwayatKunjunganPasien.edtNoRm.Text :=  edtNoRekamedisUgd.Text;
    FRiwayatKunjunganPasien.Show;
  end
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmKorenksiBiodataUgdClick(
  Sender: TObject);
begin
with FDaftarDataBiodataPasien do
begin
btnDaftar.Visible := True;
btnPrintLabel.Visible := True;
btnEditPenjamin.Visible := False;
btnKOREKSIPENANGGUNGJAWAB.Visible := False;
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmKoreksiKeluargaUgdClick(
  Sender: TObject);
begin
with FDaftarDataBiodataPasien do
begin
btnDaftar.Visible := False;
btnPrintLabel.Visible := False;
btnEditPenjamin.Visible := False;
btnKOREKSIPENANGGUNGJAWAB.Visible := True;
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmBatalPasienUgdClick(
  Sender: TObject);
begin
with FDataDaftarPasienIgd Do
begin
btnBatalPasien.Visible := True;
btnKartuBerobatUgd.Visible := False;
btnLabel2x1Ugd.Visible := False;
btnLabelUgd.Visible := False;
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmDaftarHariIniUgdClick(
  Sender: TObject);
begin
with FDataDaftarPasienIgd Do
begin
btnBatalPasien.Visible := False;
btnKartuBerobatUgd.Visible := True;
btnLabel2x1Ugd.Visible := True;
btnLabelUgd.Visible := True;
Show;
end
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmUgdPrintLabelClick(
  Sender: TObject);
begin
WITH FDaftarDataBiodataPasien do
begin
btnDaftar.Visible := False;
btnPrintLabel.Visible := True;
Show;
end
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmUgdDaftarPasienRanapClick(
  Sender: TObject);
begin
  FDaftarPasienRawatInap.Show;
end;

procedure TFPendaftaranPasienRawatInap.cbbAsalPasienUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    cbbCaraBayarUgd.SetFocus;
  end;
end;

procedure TFPendaftaranPasienRawatInap.edtIsiAsalRujukanKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
  key := #0;
  cbbCaraBayar.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbCaraBayarUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    if cbbCaraBayarUgd.Text = '' then
       ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryPenjamin do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_penjamin where kdCaraBayar="'+cbbCaraBayarUgd.EditValue+'"';
        Open;
      end;
      cbbPenjaminUgd.SetFocus;
    end
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbPenjaminUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtNoKartuUgd.SetFocus;
  end;
end;

procedure TFPendaftaranPasienRawatInap.edtNoKartuUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtNoSepUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtNoSepUgdKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtAtasNamaUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtAtasNamaUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    cbbDokterUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbDokterUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    cbbJadwalDokterUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbJadwalDokterUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtKarcisUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtKarcisUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtKonsultasiUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtKonsultasiUgdKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    btnSimpanUgd.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.btnPasienLamaClick(Sender: TObject);
begin
  FDataPendaftaranPasien.btnDaftar.Caption := 'DAFTAR RAWAT INAP';
  edtLamaBaru.Text := 'lama';
  FDataPendaftaranPasien.Show;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemKeluarClick(
  Sender: TObject);
begin
  Close;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemEditClick(
  Sender: TObject);
begin
with FDaftarDataBiodataPasien do
begin
btnDaftar.Visible := True;
btnPrintLabel.Visible := True;
btnEditPenjamin.Visible := False;
btnKOREKSIPENANGGUNGJAWAB.Visible := False;
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemRiwayatKunjunganClick(
  Sender: TObject);
begin
if edtNoRekamedis.Text = '' then
    MessageDlg('No RM Pasien Masih Kosong, Silahkan Pilih Menu Pasien Lama....!',mtWarning,[mbok],0)
  else
  begin
    FRiwayatKunjunganPasien.edtNoRm.Text :=  edtNoRekamedis.Text;
    FRiwayatKunjunganPasien.Show;
  end
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemKoreksiKeluargaClick(
  Sender: TObject);
begin
with FDaftarDataBiodataPasien do
begin
btnDaftar.Visible := False;
btnPrintLabel.Visible := False;
btnEditPenjamin.Visible := False;
btnKOREKSIPENANGGUNGJAWAB.Visible := True;
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemBataslPasienClick(
  Sender: TObject);
begin
with FDaftarDataPasienRanap do
begin
  btnKartuBerobat.Visible := False;
  btnGelang.Visible := False;
  btnLabel2x1.Visible := False;
  btnBatalPasien.Visible := True;
  Show;
end
end;

procedure TFPendaftaranPasienRawatInap.edtNoRekamedisClick(
  Sender: TObject);
begin
  tambahRanap; noRegistrasiRanap;
end;

procedure TFPendaftaranPasienRawatInap.edtNoRekamedisKeyPress(
  Sender: TObject; var Key: Char);
var
  noRmRanap :String;
begin
if Key=#13 then
begin
    Key:=#0;
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis LIKE "%'+edtNoRekamedis.Text+'%" limit 20 ';
      Open;
    end;

    if DataSimrs.qryVwPasien.RecordCount >= 1 then
    begin
      noRmRanap := DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
      //// tambah pengujian status pengujian pasien blm bisa
      
      with DataSimrs.qryvw_pasienrawatinap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noRekamedis,statusKeluar,rawatInap,tglDaftar from vw_pasienrawatinaphariini where noRekamedis="'+noRmRanap+'" and statusKeluar="Di Rawat Inap" limit 50';
        Open;
      end;
        if (DataSimrs.qryvw_pasienrawatinap.FieldByName('noRekamedis').AsString = noRmRanap) or
            (DataSimrs.qryvw_pasienrawatinap.FieldByName('statusKeluar').AsString = 'Di Rawat Inap') then
            ShowMessage('Pasien Masih Terdaftar Di Ruang/TGL "'+DataSimrs.qryvw_pasienrawatinap['rawatInap']+'"/"'+DataSimrs.qryvw_pasienrawatinap.Fieldbyname('tglDaftar').AsString+'"')
        else
        begin
        noRegistrasiRanap;
        FDataPendaftaranPasien.isiPasienRanap;
        with DataSimrs.qryVwPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_pasien limit 20';
          Open;
        end;
      end
    end
end;
end;

procedure TFPendaftaranPasienRawatInap.cbbAsalPasienKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
   key := #0;
   if cbbAsalPasien.Text = 'DATANG SENDIRI' then
      begin
       cbbCaraBayar.SetFocus;
      end
      else
      begin
        edtIsiAsalPasien.SetFocus;
      end;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtIsiAsalPasienKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
  key := #0;
  cbbCaraBayar.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbCaraBayarKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    if cbbCaraBayar.Text = '' then
       ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryPenjamin do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from vw_datapenjamin where kdCaraBayar="'+cbbCaraBayar.EditValue+'"';
        Open;
      end;
      cbbPenjamin.SetFocus;
    end
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbPenjaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
    begin
      key := #0;
      edtNoKartu.SetFocus;
    end
end;

procedure TFPendaftaranPasienRawatInap.edtNoKartuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtNoSep.SetFocus;
  end;
end;

procedure TFPendaftaranPasienRawatInap.edtNoSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    edtAtasNama.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.edtAtasNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    cbbKamar.SetFocus;
  end;
end;

procedure TFPendaftaranPasienRawatInap.btnCariKamarManualClick(
  Sender: TObject);
begin
  FCariKamarRawatInap.Show;
end;

procedure TFPendaftaranPasienRawatInap.actPasienLamaExecute(
  Sender: TObject);
begin
FDataPendaftaranPasien.btnDaftar.Caption := 'DAFTAR RAWAT INAP';
edtLamaBaru.Text := 'lama';
FDataPendaftaranPasien.Show;
end;

procedure TFPendaftaranPasienRawatInap.cbbKamarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    if cbbKamar.Text = '' then
      ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      ///tampil detail rawat inap
         with DataSimrs.qryvw_datarawatinap do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from vw_datarawatinap where kdTarifKelasKmr="'+cbbKamar.EditValue+'"';
          Open;
        end;

        ///ambil data rawat inap
        if DataSimrs.qryvw_datarawatinap['kdTarifKelasKmr'] = cbbKamar.EditValue then
        begin
         edtRawatInap.Text := DataSimrs.qryvw_datarawatinap['rawatInap'];
         edtKdRawatInap.Text := DataSimrs.qryvw_datarawatinap['kdRawatInap']; edtKdTarifKamar.Text := DataSimrs.qryvw_datarawatinap['kdTarifKelasKmr'];
         edtNoKamar.Text := DataSimrs.qryvw_datarawatinap['noKamar']; edtNoBed.Text := DataSimrs.qryvw_datarawatinap['noBed'];
         edtKelas.Text := DataSimrs.qryvw_datarawatinap['kelas']; edtTarif.Text := DataSimrs.qryvw_datarawatinap['tarifKmr'];
         edtStatusKamar.Text := DataSimrs.qryvw_datarawatinap['statusBed'];
         with DataSimrs.qryvw_datarawatinap do
         begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from vw_datarawatinap';
          Open;
         end;
         cbbDokter.SetFocus;
        end
        else
        ShowMessage('Data Tidak Di Temukan...!');

    end
  end;
end;

procedure TFPendaftaranPasienRawatInap.cbbDokterKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    cbbJadwalDokter.SetFocus;
  end
end;

procedure TFPendaftaranPasienRawatInap.cbbJadwalDokterKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key := #0;
    btnSimpan.SetFocus;
  end;
end;

procedure TFPendaftaranPasienRawatInap.actSimpanExecute(Sender: TObject);
var
  tgldaftarRanap, noRegRanap  : String;
begin
  /// pengujian tidak boleh kosong
if (cbbAsalPasien.Text = '') or (cbbCaraBayar.Text='') or (cbbPenjamin.Text='') or
   (cbbDokter.Text='') or (cbbJadwalDokter.Text='') then
        MessageDlg('Data Di Lengkapi...!',mtWarning,[mbok],0)
    /// pengujuan status bed
   else if (edtStatusKamar.Text = 'Dipesan Pasien') or (edtStatusKamar.Text='Rusak') or
            (edtStatusKamar.Text='Diperbaiki') or (edtStatusKamar.Text='Dibersihkan')
            or (edtStatusKamar.Text='Ditempati Pasien') then
            MessageDlg('Silahkan Pilih Status Kamar Yang Kosong...!',mtWarning,[mbok],0)

   else
   begin
     /// pengujian noDaftar sudah terdaftar
     if DataSimrs.qryt_registrasi.Locate('noDaftar',edtNoRegistrasi.Text,[])  then
        MessageDlg('Data Sudah Ada, Klik Tombol Tambah Untuk Pasien Baru!!',mtWarning,[mbok],0)
     else

     begin
         with DataSimrs.qryvw_datarawatinap do
         begin
           Close;
           SQL.Clear;
           SQL.Text := 'select * from vw_datarawatinap where kdTarifKelasKmr="'+edtKdTarifKamar.Text+'" AND statusBed="Ditempati Pasien" ';
           Open;
         end;

         /// pengujian status kamar pada saat proses simpan
         if (DataSimrs.qryvw_datarawatinap.FieldByName('kdTarifKelasKmr').AsString = edtKdTarifKamar.Text)
            and (DataSimrs.qryvw_datarawatinap.FieldByName('statusBed').AsString ='Ditempati Pasien') then
         begin
          MessageDlg('Kamar Sudah Lebih Dahulu Ditempati Pasien..!!',mtWarning,[mbok],0);
          with DataSimrs.qryvw_datarawatinap do
           begin
            Close;
            SQL.Clear;
            SQL.Text := 'select * from vw_datarawatinap';
            Open;
           end;
            cbbKamar.SetFocus;
         end
         else
         begin
          tgldaftarRanap := FormatDateTime('yyyy-MM-dd HH:mm:ss',dtpTanggal.DateTime);
         // insert ke tabel registrasi
          if MessageDlg('Apakah Sudah Benar dng NoPasien/Nama "'+edtNoRekamedis.Text+'"/"'+edtNmLengkap.Text+'" Masuk Rawat Inap Tgl/Jam/Rawat Inap/ : "'+tgldaftarRanap+'"/"'+edtRawatInap.Text+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
          begin
            /// pengujian pasien sudah di input hari ini
            with DataSimrs.qryvw_pasienrawatinap do
            begin
               Close;
               SQL.Clear;
               SQL.Text := 'select noRekamedis,tglMasukRawatInap,statusKeluar from vw_pasienrawatinap where noRekamedis="'+edtNoRekamedis.Text+'" and tglMasukRawatInap="'+tgldaftarRanap+'" and statusKeluar="Di Rawat Inap"';
               Open;
            end;
            if (DataSimrs.qryvw_pasienrawatinap['noRekamedis'] = edtNoRekamedis.Text) and
              (DataSimrs.qryvw_pasienrawatinap['tglMasukRawatInap']=tgldaftarRanap) or (DataSimrs.qryvw_pasienrawatinap['statusKeluar']='Di Rawat Inap') then
               MessageDlg('Pasien Sudah Terdaftar hari ini....!',mtInformation,[mbok],0)
            else
              begin
            
                with DataSimrs.qryt_registrasi do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Text := 'insert into t_registrasi (noDaftar,tglDaftar,noRekamedis,kdAsalPasien,kdCaraBayar,'+
                              'kdPenjamin,kdTenagaMedis,waktuPraktekDokter,kdInstalasi,pasienLamaBaru,kdStatusKeluar,'+
                              'kdCaraKeluar,isiAsalPasien,noKartuPenjamin,noSepPenjamin,atasNamaPenjamin,createDate,username,pengguna)'+
                              'values ("'+edtNoRegistrasi.Text+'","'+tgldaftarRanap+'","'+edtNoRekamedis.Text+'",'+
                              '"'+cbbAsalPasien.EditValue+'","'+cbbCaraBayar.EditValue+'","'+cbbPenjamin.EditValue+'",'+
                              '"'+cbbDokter.EditValue+'","'+cbbJadwalDokter.Text+'","ki2","'+edtLamaBaru.Text+'",'+
                              '"8","6","'+edtIsiAsalPasien.Text+'","'+edtNoKartu.Text+'","'+edtNoSep.Text+'","'+edtAtasNama.Text+'",'+
                              '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'")';
                  ExecSQL;
                  SQL.Text := 'select noDaftar from t_registrasi';
                  Open;
                end;

                noRegRanap := 'RI'+FormatDateTime('ddMMYYHHmmss',Now)+'-'+IntToStr(DataSimrs.qryt_registrasirawatinap.RecordCount+1);

                //insert ke tabel registrasi rawat Inap
                with DataSimrs.qryt_registrasirawatinap do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Text := 'insert into t_registrasirawatinap (noDaftarRawatInap,noDaftar,kdTarifKelasKmr,tglMasukRawatInap,'+
                              'asalUnit,kdRawatInap,rawatInap,noKamar,noBed,tarifKmr,kelas)  '+
                              'values ("'+noRegRanap+'","'+edtNoRegistrasi.Text+'","'+edtKdTarifKamar.Text+'","'+tgldaftarRanap+'",'+
                              '"loket pendaftaran","'+edtKdRawatInap.Text+'","'+edtRawatInap.Text+'","'+edtNoKamar.Text+'",'+
                              '"'+edtNoBed.Text+'","'+edtTarif.Text+'","'+edtKelas.Text+'")';
                  ExecSQL;
                  SQL.Text := 'select noDaftarRawatInap from t_registrasirawatinap';
                  Open;
                end;

                /// update tabel status rawat inap

                with DataSimrs.qryTarifRawatInap do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Text := 'update t_tarifkelaskamar set kdStatusBed="st5" where kdTarifKelasKmr="'+edtKdTarifKamar.Text+'" ';
                  ExecSQL;
                  SQL.Text := 'select * from t_tarifkelaskamar';
                  open;
                end;
                
                MessageDlg('Pasien Berhasil Terdaftar....!',mtInformation,[mbok],0);

              end;
          end
          else
          Abort;
         end
     end
   end;
end;

procedure TFPendaftaranPasienRawatInap.actTambahExecute(Sender: TObject);
begin
  noRegistrasiRanap;
  edtNoRekamedis.SetFocus;
  tambahRanap;
end;

procedure TFPendaftaranPasienRawatInap.actKartuBerobatExecute(
  Sender: TObject);
begin
  printKartuBerobatRanap;
end;

procedure TFPendaftaranPasienRawatInap.actGelangExecute(Sender: TObject);
begin
printGelangRanap;
end;

procedure TFPendaftaranPasienRawatInap.actLabel2x1Execute(Sender: TObject);
begin
  printLabel2x1Ranap;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemDaftarHariIniClick(
  Sender: TObject);
begin
with FDaftarDataPasienRanap do
begin
  btnKartuBerobat.Visible := True;
  btnGelang.Visible := True;
  btnLabel2x1.Visible := True;
  btnBatalPasien.Visible := False;
  Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemInfoTersediaKamarClick(
  Sender: TObject);
begin
  FInformasiKetersedianRawatInap.Show;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemDaftarDataPasienRanapClick(
  Sender: TObject);
begin
  FDaftarPasienRawatInap.Show;
end;

procedure TFPendaftaranPasienRawatInap.pnlKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPendaftaranPasienRawatInap.pnlkeluar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPendaftaranPasienRawatInap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFPendaftaranPasienRawatInap.btnKelasClick(Sender: TObject);
begin
with FKelas  do
begin
btnPilih.Caption := 'PILIH';
Show;
end;
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmMenuItemLaporanClick(
  Sender: TObject);
begin
  WinExec('laporan\PLaporan.exe',SW_SHOWNORMAL);
end;

procedure TFPendaftaranPasienRawatInap.dxnvbrtmLaporanUgdClick(
  Sender: TObject);
begin
  WinExec('laporan\PLaporan.exe',SW_SHOWNORMAL)
end;

procedure TFPendaftaranPasienRawatInap.label2x1IGD1Click(Sender: TObject);
begin
  frxrprtLabel.DesignReport;
end;

end.
