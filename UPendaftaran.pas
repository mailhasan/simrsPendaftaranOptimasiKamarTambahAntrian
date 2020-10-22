unit UPendaftaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxNavBar2Painter, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, ComCtrls, dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar,
  ExtCtrls, frxClass, frxDBSet, ActnList, Menus, frxDesgn;

type
  TFPendaftaran = class(TForm)
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    btnTambah: TButton;
    btnKartuBerobat: TButton;
    btnLabel: TButton;
    btnLabel2x1: TButton;
    btnKarcis: TButton;
    pnlKanan: TPanel;
    dxnvbrMenu: TdxNavBar;
    dxnvbrgrpMenuGroupMenu: TdxNavBarGroup;
    dxnvbrgrpMenuGroupLaporan: TdxNavBarGroup;
    dxnvbrgrpMenuGroupKeluar: TdxNavBarGroup;
    dxnvbrtmMenuItemRiwayatKunjungan: TdxNavBarItem;
    dxnvbrtmMenuItemBiodataPasien: TdxNavBarItem;
    dxnvbrtmMenuItemBataslPasien: TdxNavBarItem;
    dxnvbrtmMenuItemJadwalDokter: TdxNavBarItem;
    dxnvbrtmMenuItemPenanggungJawab: TdxNavBarItem;
    dxnvbrtmMenuItemPenjamin: TdxNavBarItem;
    dxnvbrtmMenuItemDaftarHariIni: TdxNavBarItem;
    dxnvbrtmMenuItemAsesment: TdxNavBarItem;
    dxnvbrtmMenuItemLaporan: TdxNavBarItem;
    dxnvbrtmMenuItemKeluar: TdxNavBarItem;
    pnlTegah: TPanel;
    pnlAtas1: TPanel;
    grpNoRm: TGroupBox;
    lblTanggal: TLabel;
    lblNoRekamedis: TLabel;
    dtpTanggal: TDateTimePicker;
    edtNoRekamedis: TEdit;
    btnPasienLama: TButton;
    btnPasienBaru: TButton;
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
    lbl3: TLabel;
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
    grpDataPendaftaran: TGroupBox;
    lblAsalPasien: TLabel;
    lblCaraBayar: TLabel;
    lblUnitPelayanan: TLabel;
    lblDokter: TLabel;
    lblPenjamin: TLabel;
    lbl2: TLabel;
    grpKarci: TGroupBox;
    lblKarciPendaftaran: TLabel;
    lblKonsulTasiDokter: TLabel;
    edtKarcisPendaftaran: TEdit;
    edtKonsulDokter: TEdit;
    cbbAsalPasien: TcxLookupComboBox;
    cbbCaraBayar: TcxLookupComboBox;
    cbbPenjamin: TcxLookupComboBox;
    cbbDokter: TcxLookupComboBox;
    cbbUnitPelayanan: TcxLookupComboBox;
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
    grpKartuPenjamin: TGroupBox;
    lblNoKartu: TLabel;
    lblNoSEP: TLabel;
    lblAtasNama: TLabel;
    edtNoKartu: TEdit;
    edtNoSep: TEdit;
    edtAtasNama: TEdit;
    edtIsiAsalPasien: TEdit;
    actlstShoutcut: TActionList;
    actPasienLama: TAction;
    actPasienBaru: TAction;
    actSIMPAN: TAction;
    actTAMBAH: TAction;
    actKartu: TAction;
    actLabel2x1: TAction;
    actKarcis: TAction;
    frxdbdtstKarcis: TfrxDBDataset;
    frxdbdtstPasien: TfrxDBDataset;
    frxrprtGelang: TfrxReport;
    frxrprtKarcis: TfrxReport;
    frxrprtKartuBerobat: TfrxReport;
    frxrprtLabel: TfrxReport;
    frxrprtLabelVersiPdc: TfrxReport;
    statSimrs: TStatusBar;
    mm1: TMainMenu;
    SETINGPRINTER1: TMenuItem;
    DESAINPRINT1: TMenuItem;
    DAFTARRAWATINAP1: TMenuItem;
    Label2x11: TMenuItem;
    frxdsgnr1: TfrxDesigner;
    Gelang1: TMenuItem;
    Kartu1: TMenuItem;
    LABELVERSIPDC1: TMenuItem;
    btnLabelPdc: TButton;
    dxnvbrtmMenuItemJadwalKontrol: TdxNavBarItem;
    lblKodeJadwalPasien: TLabel;
    dxnvbrtmBpjs: TdxNavBarItem;
    procedure btnPasienLamaClick(Sender: TObject);
    procedure btnPasienBaruClick(Sender: TObject);
    procedure edtNoRekamedisClick(Sender: TObject);
    procedure edtNoRekamedisKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure dxnvbrtmMenuItemKeluarClick(Sender: TObject);
    procedure btnKartuBerobatClick(Sender: TObject);
    procedure btnLabelClick(Sender: TObject);
    procedure btnLabel2x1Click(Sender: TObject);
    procedure btnKarcisClick(Sender: TObject);
    procedure cbbAsalPasienKeyPress(Sender: TObject; var Key: Char);
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure cbbUnitPelayananDblClick(Sender: TObject);
    procedure cbbUnitPelayananKeyPress(Sender: TObject; var Key: Char);
    procedure pnlKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbDokterKeyPress(Sender: TObject; var Key: Char);
    procedure dxnvbrtmMenuItemBiodataPasienClick(Sender: TObject);
    procedure edtKarcisPendaftaranKeyPress(Sender: TObject; var Key: Char);
    procedure edtKonsulDokterKeyPress(Sender: TObject; var Key: Char);
    procedure edtIsiAsalPasienKeyPress(Sender: TObject; var Key: Char);
    procedure dxnvbrtmMenuItemBataslPasienClick(Sender: TObject);
    procedure dxnvbrtmMenuItemDaftarHariIniClick(Sender: TObject);
    procedure dxnvbrtmMenuItemPenjaminClick(Sender: TObject);
    procedure SETINGPRINTER1Click(Sender: TObject);
    procedure dxnvbrtmMenuItemRiwayatKunjunganClick(Sender: TObject);
    procedure DAFTARRAWATINAP1Click(Sender: TObject);
    procedure dxnvbrtmMenuItemLaporanClick(Sender: TObject);
    procedure Label2x11Click(Sender: TObject);
    procedure Gelang1Click(Sender: TObject);
    procedure Kartu1Click(Sender: TObject);
    procedure LABELVERSIPDC1Click(Sender: TObject);
    procedure btnLabelPdcClick(Sender: TObject);
    procedure dxnvbrtmMenuItemJadwalKontrolClick(Sender: TObject);
    procedure dxnvbrtmBpjsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilAsalPasien;
    procedure tampilCaraBayar;
    procedure tampilPenjamin;
    procedure tambah;
    procedure noRegistrasi;
    procedure daftarDataPasienLama;
    procedure pasienBaru;
    procedure simpanDaftar;
    procedure printKartuBerobat;
    procedure printGelang;
    procedure printLabel2x1;
    procedure printKarcisPasien;
    procedure tampilUnit;
    procedure koneksiPc;
    procedure printLabelPdc;
  end;

var
  FPendaftaran: TFPendaftaran;
  iThn, iBln, iHari: Word;

implementation

{$R *.dfm}
uses
  UDataSimrs, DateUtils, UDataPendaftaranPasien, UDataPasienBaru,
  UDaftarBiodataPx, UDaftarPasienRawatJalanHariIni, USettingPrinter, ULoginSimrs,
  URiwayatKunjunganPasien, UPendaftaranPasienIgdRanap, ULaporan, ADODB, DB,
  UJawalKontrolPasienPerjanjian,UBpjs;

/// untuk menampilkan umur(tahun,bulan,hari)
procedure umur(ThnLama, ThnBaru: TDate);
begin
  iThn := YearsBetween(ThnBaru, ThnLama);
  if (DayOf(ThnBaru) = DayOf(ThnLama)) and (MonthOf(ThnBaru) = MonthOf(ThnLama)) and (YearOf(ThnLama) <> YearOf(ThnBaru)) then
    inc(iThn);
  ThnLama := IncYear(ThnLama, iThn);
  iBln := MonthsBetween(ThnBaru, ThnLama);
  ThnLama := IncMonth(ThnLama, iBln);
  iHari := DaysBetween(ThnBaru, ThnLama);
end;

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

// no registrasi rawat jalan otomatis
procedure TFPendaftaran.noRegistrasi;
begin
  with DataSimrs.qryt_registrasi do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select noRekamedis,noDaftar from t_registrasi';
    Open;
  end;
  edtNoRegistrasi.Text := FormatDateTime('ddMMYYHHmmss', Now) + '-' + IntToStr(DataSimrs.qryt_registrasi.RecordCount + 1);
end;

procedure TFPendaftaran.tampilAsalPasien;
begin
  with DataSimrs.qryVw_AsalPasien do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_asalpasien';
    Open;
  end;
end;

procedure TFPendaftaran.tampilCaraBayar;
begin
  with DataSimrs.qryCaraBayar do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_carabayar';
    Open;
  end;
end;

procedure TFPendaftaran.tampilPenjamin;
begin
  with DataSimrs.qryPenjamin do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_penjamin';
    Open;
  end;
end;

/// untuk kembali ke awal
procedure TFPendaftaran.tambah;
begin
  edtNoRekamedis.Clear;
  edtNoRekamedis.SetFocus;
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
  cbbCaraBayar.EditText := '';
  cbbPenjamin.Text := '';

  edtNoKartu.Text := '';
  edtNoSep.Text := '';
  edtAtasNama.Text := '';

  cbbUnitPelayanan.Text := '';
  cbbDokter.EditValue := '0000';
  edtKarcisPendaftaran.Clear;
  edtKonsulDokter.Clear;
  edtLamaBaru.Clear;
  dtpTanggal.DateTime := Now;

   {with DataSimrs.qryPasien do
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT noRekamedis,nmPasien,tempatLahir,tglLahir,alamat FROM t_pasien ';
    Open;
   end;}
  tampilAsalPasien; tampilCaraBayar; tampilPenjamin;
  tampilUnit;
end;

/// button tambah daftar lama pasien
procedure TFPendaftaran.daftarDataPasienLama;
begin
  FDataPendaftaranPasien.btnDaftar.Caption := 'DAFTAR RAWAT JALAN';
  edtLamaBaru.Text := 'lama';
  FDataPendaftaranPasien.Show;
end;

/// print kartu berobat
procedure TFPendaftaran.printKartuBerobat;
begin
  if edtNoRekamedis.Text = '' then
    MessageDlg('No Rekamedis Masih Kosong...!', mtWarning, [mbok], 0)
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="' + edtNoRekamedis.Text + '"';
      Open;

      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
        Open;
      end;

      frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\kartuberobat.fr3');
      frxrprtKartuBerobat.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerKartu').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
      frxrprtKartuBerobat.PrepareReport;
      frxrprtKartuBerobat.Print;
    end;
  end;
end;

///print gelang pasien
procedure TFPendaftaran.printGelang;
begin
  with DataSimrs.qryVwPasien do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pasien where noRekamedis="' + edtNoRekamedis.Text + '"';
    Open;

    with DataSimrs.qryt_komputer do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
      Open;
    end;

    frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\gelang.fr3');
    frxrprtGelang.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerGelang').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtGelang.PrepareReport;
    frxrprtGelang.Print;
  end;
end;

///print label 2x1;
procedure TFPendaftaran.printLabel2x1;
var
  crBayar: string;
begin
  if edtNoRekamedis.Text = '' then
    MessageDlg('No Rekamedis Masih Kosong...!', mtWarning, [mbok], 0)
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="' + edtNoRekamedis.Text + '"';
      Open;
    end;

    with DataSimrs.qryt_komputer do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
      Open;
    end;

    frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\label2x1.fr3');
    //frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1VersiPdc.fr3');
    frxrprtLabel.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerLabel').AsString;
    frxrprtLabel.PrintOptions.ShowDialog := True;
    frxrprtLabel.PrepareReport;
    frxrprtLabel.ShowReport();
  end;

end;
//end;

///print label 2x1;

procedure TFPendaftaran.printLabelPdc;
var
  crBayar: string;
begin
  if edtNoRekamedis.Text = '' then
    MessageDlg('No Rekamedis Masih Kosong...!', mtWarning, [mbok], 0)
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="' + edtNoRekamedis.Text + '"';
      Open;
    end;

    with DataSimrs.qryt_komputer do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
      Open;
    end;

    //frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1.fr3');
    frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\label2x1VersiPdc.fr3');
    frxrprtLabel.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerLabel').AsString;
    frxrprtLabel.PrintOptions.ShowDialog := True;
    frxrprtLabel.PrepareReport;
    frxrprtLabel.ShowReport();
  end;

end;


/// print karcis
procedure TFPendaftaran.printKarcisPasien;
var
  karciDokter, konsul, terbilang: string;
begin
  if (edtNoRekamedis.Text = '') or (cbbAsalPasien.Text = '') or (cbbCaraBayar.Text = '') or (cbbPenjamin.Text = '') or (cbbUnitPelayanan.Text = '') then
    MessageDlg('Data Di Lengkapi...!', mtWarning, [mbok], 0)
  else
  begin
    with DataSimrs.qryvw_pasienrawatjalan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from vw_pasienrawatjalan where noDaftar="' + edtNoRegistrasi.Text + '"';
      Open;
    end;

    with DataSimrs.qryt_komputer do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
      Open;
    end;

    frxrprtKarcis.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\karcisrajal.fr3');
    frxrprtKarcis.PrintOptions.Printer := DataSimrs.qryt_komputer['printerKarcis'];
    frxrprtKarcis.PrintOptions.ShowDialog := True;
    frxrprtKarcis.PrepareReport;
    frxrprtKarcis.ShowReport;
  end;
end;

procedure TFPendaftaran.simpanDaftar;
var
  tgldaftar, noRegRajal, asalPx, crBy, pjm,jam: string;
  nominalKarci, nomiNalKonsul: Double;
begin
  if (cbbAsalPasien.Text = '') or (cbbCaraBayar.Text = '') or (cbbPenjamin.Text = '') or (cbbUnitPelayanan.Text = '') or (cbbDokter.Text = '') or (edtNoRekamedis.Text = '') then
    MessageDlg('Data Di Lengkapi...!', mtWarning, [mbok], 0)
  else
  begin
    if DataSimrs.qryt_registrasi.Locate('noDaftar', edtNoRegistrasi.Text, []) then
      MessageDlg('Data Sudah Ada, Klik Tombol Tambah Untuk Pasien Baru!!', mtWarning, [mbok], 0)
    else
    begin

         ///isi asal pasien
      if cbbAsalPasien.EditValue <> DataSimrs.qryVw_AsalPasien['kdAsalPasien'] then
      begin
        with DataSimrs.qryVw_AsalPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from Vw_AsalPasien where asalPasien="' + cbbAsalPasien.Text + '"';
          Open;
        end;
        asalPx := DataSimrs.qryVw_AsalPasien['kdAsalPasien']
      end
      else
        asalPx := cbbAsalPasien.EditValue;

         
         ///isi cara bayar
      if cbbCaraBayar.EditValue <> DataSimrs.qryCaraBayar['kdCaraBayar'] then
      begin
        with DataSimrs.qryCaraBayar do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_carabayar where carabayar="' + cbbCaraBayar.Text + '"';
          Open;
        end;
        crBy := DataSimrs.qryCaraBayar['kdCaraBayar'];
      end
      else
         crBy := cbbCaraBayar.EditValue;

          ///isi penjamin
      if cbbPenjamin.EditValue <> DataSimrs.qryPenjamin['kdPenjamin'] then
      begin
        with DataSimrs.qryPenjamin do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_penjamin where penjamin="' + cbbPenjamin.Text + '"';
          Open;
        end;
        pjm := DataSimrs.qryPenjamin['kdPenjamin'];
      end
      else
        pjm := cbbPenjamin.EditValue;


      if edtLamaBaru.Text = 'Lama' then
      begin
        nominalKarci := 0;
        nomiNalKonsul := StrToFloat(edtKonsulDokter.Text);
      end
      else
      begin
        nominalKarci := StrToFloat(edtKarcisPendaftaran.Text);
        nomiNalKonsul := StrToFloat(edtKonsulDokter.Text);
      end;
      tgldaftar := FormatDateTime('yyyy-MM-dd HH:mm:ss', dtpTanggal.DateTime);
        // insert ke tabel registrasi
      with DataSimrs.qryt_registrasi do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_registrasi (noDaftar,tglDaftar,noRekamedis,kdAsalPasien,kdCaraBayar,kdPenjamin,kdTenagaMedis,' + 'waktuPraktekDokter,kdInstalasi,kdStatusKeluar,pasienlamabaru,noKartuPenjamin,noSepPenjamin,atasNamaPenjamin,kdCaraKeluar,' + 'createDate,username,pengguna)' + 'values ("' + edtNoRegistrasi.Text + '","' + tgldaftar + '","' + edtNoRekamedis.Text + '","' + asalPx + '","' + crBy + '","' + pjm + '",' + '"' + cbbDokter.EditValue + '","PAGI","ki1","15","' + edtLamaBaru.Text + '","' + edtNoKartu.Text + '","' + edtNoSep.Text + '","' + edtAtasNama.Text + '","7",' + '"' + FormatDateTime('yyyy-mm-dd hh:mm:ss', Now) + '","' + statSimrs.Panels[0].Text + '","' + statSimrs.Panels[3].Text + '")';
        ExecSQL;
        SQL.Text := 'select noDaftar from t_registrasi';
        Open;
      end;

      noRegRajal := 'RJ' + FormatDateTime('ddMMYYHHmmss', Now) + '-' + IntToStr(DataSimrs.qryt_registrasirawatjalan.RecordCount + 1);

          //insert ke tabel registrasi rawat jalan
      with DataSimrs.qryt_registrasirawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_registrasirawatjalan (noRegistrasiRawatJalan,noDaftar,kdUnit,tglMasukRawatJalan,karciPendaftaran,' + 'konsulDokter,statusPembayaran,ketMasukPasien,statusPasien)  ' + 'values ("' + noRegRajal + '","' + edtNoRegistrasi.Text + '","' + cbbUnitPelayanan.EditValue + '","' + tgldaftar + '",' + '"' + FloatToStr(nominalKarci) + '","' + FloatToStr(nomiNalKonsul) + '","BELUM LUNAS","loket pendaftaran","loketDaftar")';
        ExecSQL;
        SQL.Text := 'select noRegistrasiRawatJalan from t_registrasirawatjalan';
        Open;
      end;

          {///update data pasien penjamin, atas nama, no kartu penjamin, no sep, atas nama
          with DataSimrs.qryPasien do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update t_pasien set caraBayar="'+cbbCaraBayar.Text+'",penjamin="'+cbbPenjamin.Text+'",noKartuPenjamin="'+edtNoKartu.Text+'",' +
                        'noSepPenjamin="'+edtNoSep.Text+'",atasNamaPenjamin="'+edtAtasNama.Text+'" where noRekamedis="'+edtNoRekamedis.Text+'"';
            ExecSQL;
            SQL.Text := 'select * from t_pasien';
            Open;
          end;

          // tampil data karcis pendaftaran dan jasa medis dokter
          with DataSimrs.qryvw_datainstalasiunit do
          begin
            Close;
            SQL. Clear;
            SQL.Text := 'select * from vw_datainstalasiunit where kdUnit="'+cbbUnitPelayanan.EditValue+'"';
            Open;        s
            edtKarcisPendaftaran.Text := FloatToStr(DataSimrs.qryvw_datainstalasiunit['JasaRs']);
            edtKonsulDokter.Text := FloatToStr(DataSimrs.qryvw_datainstalasiunit['jasaMedis']);
          end;}
      /// update pasien perjanjian
      with DataSimrs.qryJadwalKontrolPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'update `t_jadwalkontrolpasienrajal` set statusKontrol="hadir",'+
                    'modifdate="'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'",modifUser="'+statSimrs.Panels[3].Text+'" where `IDJadwalKontrolPasienRajal`="'+FPendaftaran.lblKodeJadwalPasien.Caption+'"';
        ExecSQL;
        SQL.Text := 'select * from `t_jadwalkontrolpasienrajal`';
        Open;
      end;

      /// proses input ke antrian
      jam := FormatDateTime('hh:mm:ss',dtpTanggal.DateTime);
      with DataSimrs.qryt_antrianpoli do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'insert into t_antrianpoli (noDaftar,tglDaftar,jamDaftar,unitPoli,noRekamedis,nmPasien,dokter,statusAntrian) values ("'+edtNoRegistrasi.Text+'","'+tgldaftar+'","'+jam+'","'+cbbUnitPelayanan.Text+'","'+edtNoRekamedis.Text+'","'+edtNmLengkap.Text+'","'+cbbDokter.Text+'","antrian poli")';
        ExecSQL;
        SQL.Text := 'select * from t_antrianpoli';
        Open;
      end; 

      MessageDlg('Pasien Berhasil Terdaftar....!', mtInformation, [mbok], 0);

    end;

  end;
end;

procedure TFPendaftaran.tampilUnit;
begin
  with DataSimrs.qrywv_unitrajal do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from vw_unitrajal';
    Open;
  end;
end;

//// setting tampil koneksi
procedure TFPendaftaran.koneksiPc;
begin
  with DataSimrs.qryt_komputer do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_komputer where namaKomputer="' + GetComputerNameFromWindows + '"';
    Open;
  end;

  if DataSimrs.qryt_komputer.FieldByName('namaKomputer').AsString = GetComputerNameFromWindows then
  begin
    FPendaftaran.Show;
  end
  else
  begin
    FSettingPrinter.Show;
  end;

end;

procedure TFPendaftaran.pasienBaru;
begin
  FDataPasienBaru.Show;
  edtLamaBaru.Text := 'baru';
  //FDataPasienBaru.btnSimpan.Caption := 'SIMPAN RAWAT JALAN';
end;

procedure TFPendaftaran.btnPasienLamaClick(Sender: TObject);
begin
  daftarDataPasienLama;
end;

procedure TFPendaftaran.btnPasienBaruClick(Sender: TObject);
begin
  pasienBaru;
end;

procedure TFPendaftaran.edtNoRekamedisClick(Sender: TObject);
begin
  tambah;
  noRegistrasi;
end;

procedure TFPendaftaran.edtNoRekamedisKeyPress(Sender: TObject; var Key: Char);
var
  tanggal, tanggal1, noRm: string;
  dlgPesan: Integer;
begin
  if Key = #13 then
  begin
    Key := #0;
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis LIKE "%' + edtNoRekamedis.Text + '%"  LIMIT 20';
      Open;
    end;

    if DataSimrs.qryVwPasien.RecordCount >= 1 then
    begin
      /// pengujian pasien sudah daftar hari ini
      tanggal := FormatDateTime('yyyy-MM-dd', Now);
      tanggal1 := FormatDateTime('yyyy-MM-dd', IncDay(Now, 1));
      noRm := DataSimrs.qryVwPasien.Fieldbyname('noRekamedis').AsString;

      ////pengujian pasien perjanjian
      with DataSimrs.qryJadwalKontrolPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_jadwalkontrolpasienrajal where noRekamedis="' + noRm + '" and statusKontrol="tidak hadir"';
        Open;
      end;

      if (DataSimrs.qryJadwalKontrolPasien['noRekamedis'] = noRm) and (DataSimrs.qryJadwalKontrolPasien['statusKontrol'] = 'tidak hadir') then
      begin
        lblKodeJadwalPasien.Caption := DataSimrs.qryJadwalKontrolPasien['IDJadwalKontrolPasienRajal'];
        MessageDlg('Data Sudah Terdaftar Pasien Perjanjian "' + FormatDateTime('dd-mm-yyyy', DataSimrs.qryJadwalKontrolPasien.FieldByname('tglJadwalKontrolPasienRajal').AsDateTime) + '" ', mtInformation, [mbYes], 0);
      end;

       ///pengujian pasien sdh terdaftar hari ini
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT tglDaftar,noRekamedis,unit FROM vw_pasienrawatjalan WHERE (tglDaftar BETWEEN "' + tanggal + '" AND "' + tanggal1 + '") and (noRekamedis="' + noRm + '")';
        Open;
      end;

      if (DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRekamedis').AsString = noRm) and (FormatDateTime('yyyy-MM-dd', DataSimrs.qryvw_pasienrawatjalan.FieldByname('tglDaftar').AsDateTime) = (tanggal)) then
      begin
        dlgPesan := MessageDlg('Pasien Sudah Terdaftar Di Unit "' + DataSimrs.qryvw_pasienrawatjalan.FieldByName('unit').AsString + '"!', mtError, mbOKCancel, 0);
        if dlgPesan = mrOK then
        begin
          FDataPendaftaranPasien.isiPasienRajal;
        end;
        if dlgPesan = mrCancel then
        begin
          Abort;
        end;
      end;

      FDataPendaftaranPasien.isiPasienRajal;
    end
    else
      Abort;
  end;
end;

procedure TFPendaftaran.btnSimpanClick(Sender: TObject);
begin
  simpanDaftar;
end;

procedure TFPendaftaran.btnTambahClick(Sender: TObject);
begin
  noRegistrasi;
  tampilUnit;
  tambah;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPendaftaran.btnKartuBerobatClick(Sender: TObject);
begin
  printKartuBerobat;
end;

procedure TFPendaftaran.btnLabelClick(Sender: TObject);
begin
  printGelang;
end;

procedure TFPendaftaran.btnLabel2x1Click(Sender: TObject);
begin
  printLabel2x1;
end;

procedure TFPendaftaran.btnKarcisClick(Sender: TObject);
begin
  printKarcisPasien;
end;

procedure TFPendaftaran.cbbAsalPasienKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if cbbAsalPasien.Text = '' then
      ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      if cbbAsalPasien.Text = 'DATANG SENDIRI' then
      begin
        cbbCaraBayar.SetFocus;
      end
      else
      begin
        edtIsiAsalPasien.SetFocus;
      end;
    end
  end
end;

procedure TFPendaftaran.cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if cbbCaraBayar.Text = '' then
      ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryPenjamin do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_penjamin where kdCaraBayar="' + cbbCaraBayar.EditValue + '"';
        Open;
      end;
      cbbPenjamin.SetFocus;
    end
  end;
end;

procedure TFPendaftaran.cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if cbbPenjamin.Text = '' then
      ShowMessage('DATA TIDAK BOLEH KOSONG')
    else
    begin
      if cbbPenjamin.Text = 'UMUM' then
      begin
        cbbUnitPelayanan.SetFocus;
      end
      else
      begin
        MessageDlg('harus mengisi no dan atas nama kartu Penjamin!', mtInformation, [mbok], 0);
        edtNoKartu.SetFocus;
      end;
    end;
  end
end;

procedure TFPendaftaran.cbbUnitPelayananDblClick(Sender: TObject);
begin
  cbbUnitPelayanan.EditValue := '';
  edtKarcisPendaftaran.Text := '';
  edtKonsulDokter.Text := '';
  tampilUnit;
end;

procedure TFPendaftaran.cbbUnitPelayananKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if cbbUnitPelayanan.Text = '' then
      MessageDlg('Unit Pelayanan Tidak Boleh Kosong...!', mtInformation, [mbok], 0)
    else
    begin
     // tampil data karcis pendaftaran dan jasa medis dokter
      with DataSimrs.qrywv_unitrajal do
      begin
        Close;
        SQL.Clear;

        SQL.Text := 'select * from vw_unitrajal where kdUnit="' + cbbUnitPelayanan.EditValue + '"';
        Open;
      end;
      if DataSimrs.qrywv_unitrajal.RecordCount >= 1 then
      begin
        cbbUnitPelayanan.EditValue := DataSimrs.qrywv_unitrajal.FieldByname('kdUnit').AsString;
        if edtLamaBaru.Text = 'lama' then
        begin
          edtKarcisPendaftaran.Text := IntToStr(0);
          edtKonsulDokter.Text := FloatToStr(DataSimrs.qrywv_unitrajal.FieldByname('jasaMedis').AsFloat);
          cbbDokter.SetFocus;
        end
        else
        begin
          edtKarcisPendaftaran.Text := FloatToStr(DataSimrs.qrywv_unitrajal.FieldByname('JasaRs').AsFloat);
          edtKonsulDokter.Text := FloatToStr(DataSimrs.qrywv_unitrajal.FieldByname('jasaMedis').AsFloat);
          cbbDokter.SetFocus;
        end;
        tampilUnit;
      {/// tampil data dokter bedasarkan unit/poli pelayanan
      with DataSimrs1.qryt_dokterunit do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_dokterunit where unit="'+cbbUnitPelayanan.Text+'"';
        open;
      end;}
      end
      else
      begin
        MessageDlg('Unit Pelayanan Tidak Di Temukan...!', mtInformation, [mbok], 0);
        cbbUnitPelayanan.SetFocus;
        tampilUnit;
      end

    end
  end;
end;

procedure TFPendaftaran.pnlKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPendaftaran.FormShow(Sender: TObject);
begin
  koneksiPc;
  noRegistrasi;
  tambah;
end;

procedure TFPendaftaran.edtNoKartuKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtNoSep.SetFocus;
  end
end;

procedure TFPendaftaran.edtNoSepKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtAtasNama.SetFocus;
  end
end;

procedure TFPendaftaran.edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cbbUnitPelayanan.SetFocus;
  end;
end;

procedure TFPendaftaran.cbbDokterKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtKarcisPendaftaran.SetFocus;
  end;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemBiodataPasienClick(Sender: TObject);
begin
  with FDaftarDataBiodataPasien do
  begin
    btnDaftar.Visible := True;
    btnPrintLabel.Visible := True;
    btnEditPenjamin.Visible := False;
    Show;
  end;
end;

procedure TFPendaftaran.edtKarcisPendaftaranKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtKonsulDokter.SetFocus;
  end
end;

procedure TFPendaftaran.edtKonsulDokterKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnSimpan.SetFocus;
  end
end;

procedure TFPendaftaran.edtIsiAsalPasienKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    cbbCaraBayar.SetFocus;
  end
end;

procedure TFPendaftaran.dxnvbrtmMenuItemBataslPasienClick(Sender: TObject);
begin
  with FDaftarPasienHariIniRajal do
  begin
    btnKartuBerobat.Visible := False;
    btnLabel2x1.Visible := False;
    btnKarcis.Visible := False;
    btnBatalPasien.Visible := True;
    Show;
  end;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemDaftarHariIniClick(Sender: TObject);
begin
  with FDaftarPasienHariIniRajal do
  begin
    btnKartuBerobat.Visible := True;
    btnLabel2x1.Visible := True;
    btnKarcis.Visible := True;
    btnBatalPasien.Visible := False;
    Show;
  end
end;

procedure TFPendaftaran.dxnvbrtmMenuItemPenjaminClick(Sender: TObject);
begin
  with FDaftarDataBiodataPasien do
  begin
    btnDaftar.Visible := False;
    btnPrintLabel.Visible := False;
    btnEditPenjamin.Visible := True;
    Show;
  end
end;

procedure TFPendaftaran.SETINGPRINTER1Click(Sender: TObject);
begin
  FSettingPrinter.Show;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemRiwayatKunjunganClick(Sender: TObject);
begin
  if edtNoRekamedis.Text = '' then
    MessageDlg('No RM Pasien Masih Kosong, Silahkan Pilih Menu Pasien Lama....!', mtWarning, [mbok], 0)
  else
  begin
    FRiwayatKunjunganPasien.edtNoRm.Text := edtNoRekamedis.Text;
    FRiwayatKunjunganPasien.Show;
  end
end;

procedure TFPendaftaran.DAFTARRAWATINAP1Click(Sender: TObject);
begin
  FPendaftaranPasienRawatInap.Show;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemLaporanClick(Sender: TObject);
begin
  WinExec('laporan\PLaporan.exe', SW_SHOWNORMAL);
end;

procedure TFPendaftaran.Label2x11Click(Sender: TObject);
begin
  frxrprtLabel.DesignReport;
end;

procedure TFPendaftaran.Gelang1Click(Sender: TObject);
begin
  frxrprtGelang.DesignReport;
end;

procedure TFPendaftaran.Kartu1Click(Sender: TObject);
begin
  frxrprtKartuBerobat.DesignReport;
end;

procedure TFPendaftaran.LABELVERSIPDC1Click(Sender: TObject);
begin
  frxrprtLabelVersiPdc.DesignReport;
end;

procedure TFPendaftaran.btnLabelPdcClick(Sender: TObject);
begin
  printLabelPdc;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemJadwalKontrolClick(Sender: TObject);
begin
  FJadwalKontrolPasienPerjanjian.Show;
end;

procedure TFPendaftaran.dxnvbrtmBpjsClick(Sender: TObject);
begin
  FBpjs.Show;
end;

end.

