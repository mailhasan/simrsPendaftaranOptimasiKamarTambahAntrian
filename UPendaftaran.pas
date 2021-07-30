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
  ExtCtrls, frxClass, frxDBSet, ActnList, Menus, frxDesgn, cxGroupBox,
  cxLabel, dxSkinscxPCPainter, cxPC, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

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
    grpDataPasien: TGroupBox;
    lblKabupaten: TLabel;
    grpDataPendaftaran: TGroupBox;
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
    dxnvbrtmBpjs: TdxNavBarItem;
    cxgrpbxDataPasien: TcxGroupBox;
    lblNoIdentitas: TLabel;
    edtNoIdentitas: TEdit;
    edtLamaBaru: TEdit;
    lblNama: TLabel;
    edtNmLengkap: TEdit;
    lblTempatTglLahir: TLabel;
    edtTempatLahir: TEdit;
    edtTglLahir: TEdit;
    lblUmur: TLabel;
    edtTahun: TEdit;
    lblJenisKelamin: TLabel;
    edtJenisKelamin: TEdit;
    lblPendidikan: TLabel;
    edtPendidikan: TEdit;
    lblPekerjaan: TLabel;
    edtPekerjaan: TEdit;
    lblAlamat: TLabel;
    mmoAlamat: TMemo;
    lbl3: TLabel;
    lblBahasa: TLabel;
    lblAgama: TLabel;
    edtAgama: TEdit;
    edtBahasa: TEdit;
    edtNoTelepone: TEdit;
    edtKelurahanDesa: TEdit;
    edtKecamatan: TEdit;
    edtKabupaten: TEdit;
    edtProvinsi: TEdit;
    edtKodePos: TEdit;
    lblKelurahanDesa: TLabel;
    lblKecamatan: TLabel;
    lbl1: TLabel;
    lblProvinsi: TLabel;
    lblKodePos: TLabel;
    lblKodeJadwalPasien: TLabel;
    cxgrpbxPoliTujuan: TcxGroupBox;
    lblUnitPelayanan: TLabel;
    lblDokter: TLabel;
    cbbUnitPelayanan: TcxLookupComboBox;
    cbbDokter: TcxLookupComboBox;
    grpDataTampilSetelahPilihUnit: TGroupBox;
    lblKarciPendaftaran: TLabel;
    edtKarcisPendaftaran: TEdit;
    lblKonsulTasiDokter: TLabel;
    edtKonsulDokter: TEdit;
    cxgrpbxAtasDataDftrPasien: TcxGroupBox;
    lblTanggal: TLabel;
    dtpTanggal: TDateTimePicker;
    btnPasienLama: TButton;
    lblKunjungan: TLabel;
    edtKunjungan: TEdit;
    lblNoRekamedis: TLabel;
    edtNoRekamedis: TEdit;
    btnPasienBaru: TButton;
    lblNoRegistrasi: TLabel;
    edtNoRegistrasi: TEdit;
    cxgrpbxCaraKunjungan: TcxGroupBox;
    lblAsalPasien: TLabel;
    lbl2: TLabel;
    cbbAsalPasien: TcxLookupComboBox;
    edtIsiAsalPasien: TEdit;
    cxgrpbxCaraBayar: TcxGroupBox;
    lblCaraBayar: TLabel;
    lblPenjamin: TLabel;
    cbbCaraBayar: TcxLookupComboBox;
    cbbPenjamin: TcxLookupComboBox;
    dxnvbrtmUpdatePulangSep: TdxNavBarItem;
    dxnvbrtmSIPP: TdxNavBarItem;
    btnGelangPerempuan: TButton;
    pnlIsiRujukan: TPanel;
    btnRujukanManual: TButton;
    btnRujukanOnline: TButton;
    dxnvbrtmMenuItemRUJUKAN: TdxNavBarItem;
    dxnvbrgrpMenuGroupVklaim: TdxNavBarGroup;
    btnCOPYNOREGISTRASI: TButton;
    dxnvbrtmRUJUKANMANUAL: TdxNavBarItem;
    dxnvbrtmRUJUKANONLINE: TdxNavBarItem;
    UPDATER1: TMenuItem;
    VERSIAPP1: TMenuItem;
    PRINTER1: TMenuItem;
    LINK1: TMenuItem;
    lblMaritalStatus: TLabel;
    edtMaritalStatus: TEdit;
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
    procedure dxnvbrtmUpdatePulangSepClick(Sender: TObject);
    procedure btnGelangPerempuanClick(Sender: TObject);
    procedure btnRujukanManualClick(Sender: TObject);
    procedure btnRujukanOnlineClick(Sender: TObject);
    procedure dxnvbrtmMenuItemRUJUKANClick(Sender: TObject);
    procedure btnCOPYNOREGISTRASIClick(Sender: TObject);
    procedure dxnvbrtmRUJUKANMANUALClick(Sender: TObject);
    procedure dxnvbrtmRUJUKANONLINEClick(Sender: TObject);
    procedure VERSIAPP1Click(Sender: TObject);
    procedure PRINTER1Click(Sender: TObject);
    procedure LINK1Click(Sender: TObject);
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
    procedure printGelangPerempuan;
    procedure printLabel2x1;
    procedure printKarcisPasien;
    procedure tampilUnit;
    procedure koneksiPc;
    procedure printLabelPdc;
    procedure TampilsettingLink;
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
  UJawalKontrolPasienPerjanjian,UBpjs,UKonseksiBridingBpjs,superobject,UPrintRespInsertSep,
  QuickRpt,UUpdatePulangSep,URujukanManualBpjs,URujukanSep,URujukan,UCekVersiAplikasi,
  ULinkAppLainya;

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

/// procedure tampil asal pasien
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
/// procedure tampil cara bayar
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
/// procedure tampil penjamin
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

/// procedure untuk kembali ke awal
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
  edtMaritalStatus.Clear;
  mmoAlamat.Clear;
  edtKelurahanDesa.Clear;
  edtKecamatan.Clear;
  edtKabupaten.Clear;
  edtBahasa.Clear;
  edtProvinsi.Clear;
  edtKodePos.Clear;
  edtAgama.Clear;
  edtNoTelepone.Clear;

  ///cbbAsalPasien.EditValue := '01';
  cbbAsalPasien.Text := '';
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
  /// pemanggilan procedure tampilAsalPasien, tampilCaraBayar,  tampilPenjamin ,tampilUnit, baruSep
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

      /// procedure tampil setting
      TampilsettingLink;

      ///frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\kartuberobat.fr3');
      frxrprtKartuBerobat.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran['kartu'])+'\kartuberobat.fr3');
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

    TampilsettingLink;

    ///frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\gelang.fr3');
    frxrprtGelang.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran.Fieldbyname('gelang').AsString) + '\gelang.fr3');
    frxrprtGelang.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('printerGelang').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtGelang.PrepareReport;
    frxrprtGelang.Print;
  end;
end;

///print gelang pasien perempuan
procedure TFPendaftaran.printGelangPerempuan;
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

    TampilsettingLink;
    
    ///frxrprtGelang.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\gelang.fr3');
    frxrprtGelang.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran.fieldbyname('gelang').AsString) + '\gelang.fr3');
    frxrprtGelang.PrintOptions.Printer := DataSimrs.qryt_komputer.FieldByname('PrinterGelangPerempuan').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
    frxrprtGelang.PrepareReport;
    frxrprtGelang.Print;
  end;
end;

///print label 2x1;                                                    S
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

    TampilsettingLink;  

    ///frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\label2x1.fr3');
    frxrprtLabel.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran.fieldByname('label2x1').AsString) + '\label2x1.fr3');
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
    
    TampilsettingLink;

    //frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1.fr3');
    frxrprtLabel.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran.Fieldbyname('labelpdc').AsString) + '\label2x1VersiPdc.fr3');
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

    TampilsettingLink;

    ///frxrprtKarcis.LoadFromFile(ExtractFilePath(Application.ExeName) + 'printPendaftaran\karcisrajal.fr3');
    frxrprtKarcis.LoadFromFile(Trim(DataSimrs.qryt_settinglinkapplainpendaftaran.fieldByname('karcis').AsString) + '\karcisrajal.fr3');
    frxrprtKarcis.PrintOptions.Printer := DataSimrs.qryt_komputer['printerKarcis'];
    ///frxrprtKarcis.PrintOptions.ShowDialog := True;
    frxrprtKarcis.PrepareReport;
    frxrprtKarcis.ShowReport;
  end;
end;

/// proceudure proses simpan pendaftaran
procedure TFPendaftaran.simpanDaftar;
var
  tgldaftar, noRegRajal, asalPx, crBy, pjm,jam: string;
  nominalKarci, nomiNalKonsul: Double;
begin
  /// pengujian data yang wajib di isi
  if (cbbAsalPasien.Text = '') then
     MessageDlg('Data Di Asal Pasien Di Isi Lengkap...!', mtWarning, [mbok], 0)
  else if (cbbCaraBayar.Text = '') or (cbbPenjamin.Text = '') then
     MessageDlg('Data Cara Bayar dan Penjamin Pasien Di Isi Lengkap...!', mtWarning, [mbok], 0)
  else if (cbbUnitPelayanan.Text = '') then
     MessageDlg('Data Unit Pelayanan Pasien Di Isi Lengkap...!', mtWarning, [mbok], 0)
  else if (cbbDokter.Text = '') then
    MessageDlg('Data Unit Pelayanan Pasien Di Isi Lengkap...!', mtWarning, [mbok], 0)
  else if (edtNoRekamedis.Text = '') then
    MessageDlg('Data NO RM Pasien Di Isi Lengkap...!', mtWarning, [mbok], 0)
  else
  begin
    with DataSimrs.qryt_registrasi do
     begin
       Close;
       SQL.Clear;
       SQL.Text := 'select noDaftar from t_registrasi where noDaftar="'+edtNoRegistrasi.Text+'" ';
       Open;
     end;
     
    /// pegujian jika no pendaftaran sudah di gunakan
    if DataSimrs.qryt_registrasi.Locate('noDaftar', edtNoRegistrasi.Text, []) then
      MessageDlg('Data Sudah Ada, Klik Tombol Tambah Untuk Pasien Baru!!', mtWarning, [mbok], 0)
    else
    begin

         ///isi asal pasien
      with DataSimrs.qryVw_AsalPasien do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from Vw_AsalPasien where kdAsalPasien="' + cbbAsalPasien.EditValue + '"';
        Open;
      end;
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
      with DataSimrs.qryCaraBayar do
      begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_carabayar where kdCaraBayar="'+cbbCaraBayar.EditValue+'"';
          Open;
      end;
      if cbbCaraBayar.EditValue = DataSimrs.qryCaraBayar['kdCaraBayar'] then
      begin
        crBy := cbbCaraBayar.EditValue;
      end
      else
      begin
        with DataSimrs.qryCaraBayar do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_carabayar where carabayar="'+cbbCaraBayar.Text+'"';
          Open;
        end;
        crBy := DataSimrs.qryCaraBayar['kdCaraBayar'];
      end;

          ///isi penjamin
       with DataSimrs.qryPenjamin do
       begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_penjamin where kdPenjamin="' + cbbPenjamin.EditValue + '"';
        Open;
       end;
      if cbbPenjamin.EditValue = DataSimrs.qryPenjamin['kdPenjamin'] then
      begin
        pjm := cbbPenjamin.EditValue;

      end
      else
      begin
        with DataSimrs.qryPenjamin do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_penjamin where penjamin="' + cbbPenjamin.Text + '"';
          Open;
        end;
        pjm := DataSimrs.qryPenjamin['kdPenjamin'];
      end;

      /// pegujian karcis & konsul berdasarkan pasien lama & baru
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

/// procedure tampil unit poli
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

///procedure pasien baru
procedure TFPendaftaran.pasienBaru;
begin
  FDataPasienBaru.Show;
  edtLamaBaru.Text := 'baru';
  //FDataPasienBaru.btnSimpan.Caption := 'SIMPAN RAWAT JALAN';
end;

procedure TFPendaftaran.TampilsettingLink;
begin
  with DataSimrs.qryt_settinglinkapplainpendaftaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from t_settinglinkapplainpendaftaran where idsettinglinkapplainpendaftaran=1';
    Open;
  end;
end;


procedure TFPendaftaran.btnPasienLamaClick(Sender: TObject);
begin
  /// pemanggilan procdure daftar pasien lama
  daftarDataPasienLama;
end;

procedure TFPendaftaran.btnPasienBaruClick(Sender: TObject);
begin
  /// pemanggilan procedure pasien baru
  pasienBaru;
end;

procedure TFPendaftaran.edtNoRekamedisClick(Sender: TObject);
begin
  /// pemanggilan procedure tambah & noRegistrasi
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
    /// fungsi untuk menfilter pencarian nama/no RM pasien
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis LIKE "%' + edtNoRekamedis.Text + '%"  LIMIT 20';
      Open;
    end;

    /// pegujian jika di temukan data pasien berdasarkan pencarian nama/no RM pasien
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
  /// pemanggilan procedure simpan
  simpanDaftar;
end;

procedure TFPendaftaran.btnTambahClick(Sender: TObject);
begin
  /// pemanggilan procedure no regis, tampil unit, tambah
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
if (edtJenisKelamin.Text='L') then
    printGelang
    else
    MessageDlg('Jenis Kelamin Perempuan',mtInformation,[mbOK],0)
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
  FPendaftaranPasienRawatInap.WindowState:= wsMaximized;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemLaporanClick(Sender: TObject);
begin
  WinExec('\\simrs_02\New folder\kelengkapan Pengembangan\_NEW SIMRS 2019\APPS\APLIKASI LAPORAN\LaporanPendaftaran.exe', SW_SHOWNORMAL);
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

procedure TFPendaftaran.dxnvbrtmUpdatePulangSepClick(Sender: TObject);
begin
  FUpdatePulangSep.Show;
end;

procedure TFPendaftaran.btnGelangPerempuanClick(Sender: TObject);
begin
if (edtJenisKelamin.Text='P') then
    printGelangPerempuan
    else
    MessageDlg('Pilih Jenis Kelamin Laki-Laki',mtInformation,[mbOK],0);
end;

procedure TFPendaftaran.btnRujukanManualClick(Sender: TObject);
{var
  RJK : TFRujukanManual;}
begin
  {RJK := TFRujukanManual.Create(nil);
  RJK.Parent := pnlIsiRujukan;
  RJK.Align := alClient;}
  FRujukanManual.Show;
end;

procedure TFPendaftaran.btnRujukanOnlineClick(Sender: TObject);
{var
  RJ1 : TFRujukanSep;}
begin
  {RJ1 := TFRujukanSep.Create(nil);
  RJ1.Parent := pnlIsiRujukan;
  RJ1.Align := alClient;
  RJ1.Show;}
  FRujukanSep.Show;
end;

procedure TFPendaftaran.dxnvbrtmMenuItemRUJUKANClick(Sender: TObject);
begin
  FRujukan.Show;
end;

procedure TFPendaftaran.btnCOPYNOREGISTRASIClick(Sender: TObject);
begin
  FRujukanManual.edtNORAWAT.Text :=  edtNoRegistrasi.Text;
  FRujukanManual.Show;
end;

procedure TFPendaftaran.dxnvbrtmRUJUKANMANUALClick(Sender: TObject);
begin
  FRujukanManual.Show;
end;

procedure TFPendaftaran.dxnvbrtmRUJUKANONLINEClick(Sender: TObject);
begin
  FRujukanSep.Show;
end;

procedure TFPendaftaran.VERSIAPP1Click(Sender: TObject);
begin
  FCekVersiUpdate.Show;
end;

procedure TFPendaftaran.PRINTER1Click(Sender: TObject);
begin
  FSettingPrinter.Show;
end;

procedure TFPendaftaran.LINK1Click(Sender: TObject);
begin
  FLinkAppLainya.Show;
end;

end.

