unit UDataPendaftaranPasien;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ExtCtrls,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TFDataPendaftaranPasien = class(TForm)
    pnlTegah: TPanel;
    dbgrdhDaftarDataPasien: TDBGridEh;
    grpPencarian: TGroupBox;
    lblNama: TLabel;
    lblAlamat: TLabel;
    edtNoRmNama: TEdit;
    edtAlamat: TEdit;
    pnlBawah: TPanel;
    btnDaftar: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    grpKategori: TGroupBox;
    cbbKategori: TComboBox;
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure edtNoRmNamaKeyPress(Sender: TObject; var Key: Char);
    procedure edtAlamatChange(Sender: TObject);
    procedure edtAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdhDaftarDataPasienDblClick(Sender: TObject);
    procedure btnDaftarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    { Private declarations }

  private
    { Private declarations }

  public
    { Public declarations }
    procedure tampilpasien;
    procedure InputDataPasien;
    procedure isiPasienRajal;
    procedure isiPasienIgd;
    procedure isiPasienRanap;
    procedure tampilUmur;
  end;

var
  FDataPendaftaranPasien: TFDataPendaftaranPasien;
  iThn, iBln, iHari: Word;

implementation

{$R *.dfm}
uses
  UDataSimrs, DateUtils, UPendaftaran, UPendaftaranPasienIgdRanap,math;

/// procedure setting umur otomatis
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

// procedure tampil umur otomatis
procedure TFDataPendaftaranPasien.tampilUmur;
var
  sTgl, LTgl: TDateTime;
begin
  sTgl := Date;
  LTgl := DataSimrs.qryVwPasien['tglLahir'];
  umur(LTgl, sTgl);
end;

/// procedure tampil pasien
procedure TFDataPendaftaranPasien.tampilpasien;
begin
  with DataSimrs.qryVwPasien do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_pasien ORDER BY noRekamedis ASC ';
    Open;
  end;
end;

/// ambil data dari database ke form pendaftaran rawat jalan
procedure TFDataPendaftaranPasien.isiPasienRajal;
begin
  with FPendaftaran do
  begin
    edtNoRekamedis.Text := DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
    edtNmLengkap.Text := DataSimrs.qryVwPasien.FieldByname('nmPasien').AsString;
    edtNoIdentitas.Text := DataSimrs.qryVwPasien.FieldByname('noKtp').AsString;  //DataSimrs.qryVwPasien['noKtp'];
    edtTempatLahir.Text := DataSimrs.qryVwPasien.FieldByname('tempatLahir').AsString;
    edtTglLahir.Text := DataSimrs.qryVwPasien.FieldByname('tglLahir').AsString;
    tampilUmur;
    edtTahun.Text := IntToStr(iThn) + ' Tahun, ' + IntToStr(iBln) + ' Bulan, ' + IntToStr(iHari) + ' Hari';
    edtJenisKelamin.Text := DataSimrs.qryVwPasien.FieldByname('jenisKelamin').AsString;
    edtPendidikan.Text := DataSimrs.qryVwPasien.FieldByname('pendidikan').AsString;
    edtPekerjaan.Text := DataSimrs.qryVwPasien.FieldByname('pekerjaan').AsString;
    mmoAlamat.Text := DataSimrs.qryVwPasien.FieldByname('alamat').AsString;
    edtKelurahanDesa.Text := DataSimrs.qryVwPasien.FieldByname('kelurahan').AsString;
    edtKecamatan.Text := DataSimrs.qryVwPasien.FieldByname('kecamatan').AsString;
    edtKabupaten.Text := DataSimrs.qryVwPasien.FieldByname('kabupaten').AsString;
    edtProvinsi.Text := DataSimrs.qryVwPasien.FieldByname('provinsi').AsString;
    //edtBahasa.Text := DataSimrs.qryVwPasien.FieldByname('bahasa').AsString;
    edtKodePos.Text := DataSimrs.qryVwPasien.FieldByname('kdPos').AsString;
    edtAgama.Text := DataSimrs.qryVwPasien.FieldByname('agama').AsString;
    edtNoTelepone.Text := DataSimrs.qryVwPasien.FieldByname('noTelepone').AsString;
    cbbCaraBayar.Text := DataSimrs.qryVwPasien.FieldByname('caraBayar').AsString;
    cbbPenjamin.Text := DataSimrs.qryVwPasien.FieldByname('penjamin').AsString;
    edtNoKartu.Text := DataSimrs.qryVwPasien.FieldByname('noKartuPenjamin').AsString;
    edtNoSep.Text := DataSimrs.qryVwPasien.FieldByname('noSepPenjamin').AsString;
    edtAtasNama.Text := DataSimrs.qryVwPasien.FieldByname('atasNamaPenjamin').AsString;
    edtLamaBaru.Text := 'lama';
    cbbAsalPasien.SetFocus;
  end;

  //menghitung jumlah kunjungan pasien
  begin
    with DataSimrs.qryJumlahKunjungan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT Count(t_registrasi.noDaftar),t_registrasi.noRekamedis FROM t_registrasi WHERE t_registrasi.noRekamedis="' + FPendaftaran.edtNoRekamedis.Text + '"';
      Open;
    end;
    FPendaftaran.edtKunjungan.Text := IntToStr(DataSimrs.qryJumlahKunjungan.Fields[0].AsInteger)
  end;
  Close;
end;

/// ambil data dari database ke form pendaftaran IGD
procedure TFDataPendaftaranPasien.isiPasienIgd;
begin
  with FPendaftaranPasienRawatInap do
  begin
    edtNoRekamedisUgd.Text := DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
    edtNmLengkapUgd.Text := DataSimrs.qryVwPasien.FieldByname('nmPasien').AsString;
    edtNoIdentitiasKtpUgd.Text := DataSimrs.qryVwPasien.FieldByname('noKtp').AsString;
    edtTempatLahirUgd.Text := DataSimrs.qryVwPasien.FieldByname('tempatLahir').AsString;
    edtTanggalLahirUgd.Text := DataSimrs.qryVwPasien.FieldByname('tglLahir').AsString;
    tampilUmur;
    edtTahunUgd.Text := IntToStr(iThn) + ' Tahun, ' + IntToStr(iBln) + ' Bulan, ' + IntToStr(iHari) + ' Hari';
    edtJkUgd.Text := DataSimrs.qryVwPasien.FieldByname('jenisKelamin').AsString;
    edtPendidikanUgd.Text := DataSimrs.qryVwPasien.FieldByname('pendidikan').AsString;
    edtPekerjaanUgd.Text := DataSimrs.qryVwPasien.FieldByname('pekerjaan').AsString;
    mmoAlamatUgd.Text := DataSimrs.qryVwPasien.FieldByname('alamat').AsString;
    edtKelurahanUgd.Text := DataSimrs.qryVwPasien.FieldByname('kelurahan').AsString;
    edtKecamatanUgd.Text := DataSimrs.qryVwPasien.FieldByname('kecamatan').AsString;
    edtKabupatenUgd.Text := DataSimrs.qryVwPasien.FieldByname('kabupaten').AsString;
    edtProvinsiUgd.Text := DataSimrs.qryVwPasien.FieldByname('provinsi').AsString;
    //edtBahasaUgd.Text := DataSimrs.qryVwPasien['bahasa'];
    edtKodePosUgd.Text := DataSimrs.qryVwPasien.FieldByname('kdPos').AsString;
    edtAgamaUgd.Text := DataSimrs.qryVwPasien.FieldByname('agama').AsString;
    edtNoTeleponeIgd.Text := DataSimrs.qryVwPasien.FieldByname('noTelepone').AsString;
    cbbCaraBayarUgd.Text := DataSimrs.qryVwPasien.FieldByname('caraBayar').AsString;
    cbbPenjaminUgd.Text := DataSimrs.qryVwPasien.FieldByname('penjamin').AsString;
    edtNoKartuUgd.Text := DataSimrs.qryVwPasien.FieldByname('noKartuPenjamin').AsString;
    edtNoSepUgd.Text := DataSimrs.qryVwPasien.FieldByname('noSepPenjamin').AsString;
    edtAtasNamaUgd.Text := DataSimrs.qryVwPasien.FieldByname('atasNamaPenjamin').AsString;
    edtLamaBaruUgd.Text := 'lama';
    cbbAsalPasienUgd.SetFocus;
  end;

  //menghitung jumlah kunjungan pasien igd
  begin
    with DataSimrs.qryJumlahKunjungan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT Count(t_registrasi.noDaftar),t_registrasi.noRekamedis FROM t_registrasi WHERE t_registrasi.noRekamedis="' + FPendaftaranPasienRawatInap.edtNoRekamedisUgd.Text + '"';
      Open;
    end;
    FPendaftaranPasienRawatInap.edtKunjunganKeUgd.Text := IntToStr(DataSimrs.qryJumlahKunjungan.Fields[0].AsInteger)
  end;

end;

/// ambil data dari database ke form pendaftaran rawat jalan
procedure TFDataPendaftaranPasien.isiPasienRanap;
begin
  with FPendaftaranPasienRawatInap do
  begin
    edtNoRekamedis.Text := DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
    edtNmLengkap.Text := DataSimrs.qryVwPasien.FieldByname('nmPasien').AsString;
    edtNoIdentitas.Text := DataSimrs.qryVwPasien.FieldByname('noKtp').AsString;
    edtTempatLahir.Text := DataSimrs.qryVwPasien.FieldByname('tempatLahir').AsString;
    edtTglLahir.Text := DataSimrs.qryVwPasien.FieldByname('tglLahir').AsString;
    tampilUmur;
    edtTahun.Text := IntToStr(iThn) + ' Tahun, ' + IntToStr(iBln) + ' Bulan, ' + IntToStr(iHari) + ' Hari';
    edtJenisKelamin.Text := DataSimrs.qryVwPasien.FieldByname('jenisKelamin').AsString;
    edtPendidikan.Text := DataSimrs.qryVwPasien.FieldByname('pendidikan').AsString;
    edtPekerjaan.Text := DataSimrs.qryVwPasien.FieldByname('pekerjaan').AsString;
    mmoAlamat.Text := DataSimrs.qryVwPasien.FieldByname('alamat').AsString;
    edtKelurahanDesa.Text := DataSimrs.qryVwPasien.FieldByname('kelurahan').AsString;
    edtKecamatan.Text := DataSimrs.qryVwPasien.FieldByname('kecamatan').AsString;
    edtKabupaten.Text := DataSimrs.qryVwPasien.FieldByname('kabupaten').AsString;
    edtProvinsi.Text := DataSimrs.qryVwPasien.FieldByname('provinsi').AsString;
    //edtBahasa.Text := DataSimrs.qryVwPasien['bahasa'];
    edtKodePos.Text := DataSimrs.qryVwPasien.FieldByname('kdPos').AsString;
    edtAgama.Text := DataSimrs.qryVwPasien.FieldByname('agama').AsString;
    edtNoTelepone.Text := DataSimrs.qryVwPasien.FieldByname('noTelepone').AsString;
    cbbCaraBayar.Text := DataSimrs.qryVwPasien.FieldByname('caraBayar').AsString;
    cbbPenjamin.Text := DataSimrs.qryVwPasien.FieldByname('penjamin').AsString;
    edtNoKartu.Text := DataSimrs.qryVwPasien.FieldByname('noKartuPenjamin').AsString;
    edtNoSep.Text := DataSimrs.qryVwPasien.FieldByname('noSepPenjamin').AsString;
    edtAtasNama.Text := DataSimrs.qryVwPasien.FieldByname('atasNamaPenjamin').AsString;
    edtLamaBaru.Text := 'lama';
    cbbAsalPasien.SetFocus;
  end;

  //menghitung jumlah kunjungan pasien
  begin
    with DataSimrs.qryJumlahKunjungan do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT Count(t_registrasi.noDaftar),t_registrasi.noRekamedis FROM t_registrasi WHERE t_registrasi.noRekamedis="' + FPendaftaranPasienRawatInap.edtNoRekamedis.Text + '"';
      Open;
    end;
    FPendaftaranPasienRawatInap.edtKunjungan.Text := IntToStr(DataSimrs.qryJumlahKunjungan.Fields[0].AsInteger)
  end;
end;



/// proses ambil data pasien ke form pendaftaran rajal, ranap, igd dan penunjang
procedure TFDataPendaftaranPasien.InputDataPasien;
var
  tanggal, tanggal1, noRm, noRmIgd, noRmRanap, PilihBtn: string;
  dlgPesan: Integer;
begin
  PilihBtn := btnDaftar.Caption;
  if PilihBtn = 'DAFTAR RAWAT JALAN' then
  begin
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
        FPendaftaran.lblKodeJadwalPasien.Caption := DataSimrs.qryJadwalKontrolPasien['IDJadwalKontrolPasienRajal'];
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
          isiPasienRajal;
        if dlgPesan = mrCancel then
          Close;
      end
      else
      begin
        isiPasienRajal;

      end

    end
    else
      MessageDlg('Data Tidak Di Temukan...!', mtInformation, [mbok], 0);
  end
  else if PilihBtn = 'DAFTAR IGD' then
  begin
    if DataSimrs.qryVwPasien.RecordCount >= 1 then
        /// proses data daftar IGD
    begin

      noRmIgd := DataSimrs.qryVwPasien.Fieldbyname('noRekamedis').AsString;
      /// pengujian di rawat jalan
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noRekamedis,statusKeluar,unit  from vw_pasienrawatjalan where (noRekamedis="' + noRmIgd + '") and (statusKeluar="Di Rawat Igd")';
        Open;
      end;
      /// pengujian rawat inap
      with DataSimrs.qryvw_pasienrawatinap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noRekamedis,statusKeluar,rawatInap,tglDaftar from vw_pasienrawatinap where noRekamedis="' + noRmIgd + '" and statusKeluar="Di Rawat Inap"';
        Open;
      end;

      if (DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRekamedis').AsString = noRmIgd) and (DataSimrs.qryvw_pasienrawatjalan.FieldByName('statusKeluar').AsString = 'Di Rawat Igd') then
        ShowMessage('Pasien Masih Terdaftar Di "' + DataSimrs.qryvw_pasienrawatjalan['unit'] + '"')
        
      /// pengujian masih terdaftar di Rawat inap
      else if (DataSimrs.qryvw_pasienrawatinap.FieldByName('noRekamedis').AsString = noRmIgd) or
            (DataSimrs.qryvw_pasienrawatinap.FieldByName('statusKeluar').AsString = 'Di Rawat Inap') then
            ShowMessage('Pasien Masih Terdaftar Di Ruang/TGL "'+DataSimrs.qryvw_pasienrawatinap['rawatInap']+'"/"'+DataSimrs.qryvw_pasienrawatinap.Fieldbyname('tglDaftar').AsString+'"')
      else
      begin
        isiPasienIgd;
        FPendaftaranPasienRawatInap.noRegistrasiUgd;
        Close;
      end;

    end
    else
      MessageDlg('Data Tidak Di Temukan...!', mtInformation, [mbok], 0);
  end
  else
  begin
    if DataSimrs.qryVwPasien.RecordCount >= 1 then
    begin
      noRmRanap := DataSimrs.qryVwPasien.Fieldbyname('noRekamedis').AsString;
      with DataSimrs.qryvw_pasienrawatinap do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select noRekamedis,statusKeluar,rawatInap,tglDaftar from vw_pasienrawatinap where noRekamedis="' + noRmRanap + '" and statusKeluar="Di Rawat Inap"';
        Open;
      end;
      if (DataSimrs.qryvw_pasienrawatinap.FieldByName('noRekamedis').AsString = noRmRanap) or (DataSimrs.qryvw_pasienrawatinap.FieldByName('statusKeluar').AsString = 'Di Rawat Inap') then
        ShowMessage('Pasien Masih Terdaftar Di Ruang/TGL "' + DataSimrs.qryvw_pasienrawatinap['rawatInap'] + '","' + DataSimrs.qryvw_pasienrawatinap['tglDaftar'] + '"')
      else
      begin
        isiPasienRanap;
        FPendaftaranPasienRawatInap.noRegistrasiRanap;
        Close;
      end
    end
    else
      MessageDlg('Data Tidak Di Temukan...!', mtInformation, [mbok], 0);
  end;

end;

procedure TFDataPendaftaranPasien.edtNoRmNamaChange(Sender: TObject);
begin
  if edtNoRmNama.Text = '' then
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien LIMIT 20';
      Open;
    end;
  end
  else
  begin
    IF cbbKategori.Text = 'NAMA AWAL' then
    begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where nmPasien LIKE "%' + edtNoRmNama.Text + '" limit 250';
      Open;
    end;
    end
    else
    begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where nmPasien LIKE "' + edtNoRmNama.Text + '%" limit 250';
      Open;
    end;
    end;

    //paging(tothal);
  end;
end;

procedure TFDataPendaftaranPasien.edtNoRmNamaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtAlamat.SetFocus;
  end;
end;

procedure TFDataPendaftaranPasien.edtAlamatChange(Sender: TObject);
begin
  if (edtAlamat.Text = '') or (edtNoRmNama.Text = '') then
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where nmPasien LIKE "%' + edtNoRmNama.Text + '%" LIMIT 20 ';
      Open;
    end;
  end
  else
  begin
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      {SQL.Text := 'select * from vw_datapasien where (nmPasien LIKE "'+edtNoRmNama.Text+'%") and  '+
                  '(alamat like "%'+edtAlamat.Text+'%") OR (kelurahan like "%'+edtAlamat.Text+'%") OR (kecamatan like "%'+edtAlamat.Text+'%")'+
                  'OR (kabupaten like "%'+edtAlamat.Text+'%") OR (provinsi like "%'+edtAlamat.Text+'%") limit 20';}
      SQL.Text := 'select * from t_pasien where (nmPasien LIKE "%' + edtNoRmNama.Text + '%" and alamat like "%' + edtAlamat.Text + '%") and  ' + '(nmPasien LIKE "' + edtNoRmNama.Text + '%" or kelurahan like "' + edtAlamat.Text + '%" ' + 'or kecamatan like "' + edtAlamat.Text + '%") limit 250';

      Open;
    end;
  end;
end;

procedure TFDataPendaftaranPasien.edtAlamatKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btnDaftar.SetFocus;
  end
end;

procedure TFDataPendaftaranPasien.dbgrdhDaftarDataPasienDblClick(Sender: TObject);
begin
  InputDataPasien;
end;

procedure TFDataPendaftaranPasien.btnDaftarClick(Sender: TObject);
begin
  InputDataPasien;
end;

procedure TFDataPendaftaranPasien.FormCreate(Sender: TObject);
begin
  FDataPendaftaranPasien.KeyPreview := True;
end;

procedure TFDataPendaftaranPasien.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFDataPendaftaranPasien.FormShow(Sender: TObject);
var
  ii: Integer;
  buttonpaging: TButton;
begin
  DataSimrs.qryVwPasien.Close;
  edtNoRmNama.Text := '';
  edtNoRmNama.SetFocus;
  edtAlamat.Text := '';
  cbbKategori.ItemIndex := 0;
  //tampilpasien;

end;

procedure TFDataPendaftaranPasien.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.

