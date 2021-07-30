unit URujukanSep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, ComCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TFRujukanSep = class(TForm)
    pnlTengah: TPanel;
    grpAtas: TGroupBox;
    lblJenisNomerSep: TLabel;
    cxlblFaskes: TcxLabel;
    cbbFASKES: TComboBox;
    cbbJenisNomer: TComboBox;
    lblNOMER: TLabel;
    edtNOMER: TEdit;
    edtNoSepCari: TEdit;
    btnCari: TButton;
    lblCariNoSep: TLabel;
    btnNoSep: TButton;
    lblNAMAPESERTA: TLabel;
    lblNOBPJS: TLabel;
    lblTGLLAHIR: TLabel;
    lblFASKES: TLabel;
    lblJENISKARTU: TLabel;
    lblTGLCETAK: TLabel;
    lblPOLI: TLabel;
    lblNOMERBPJS: TLabel;
    edtNamaPeserta: TEdit;
    edtNoBpjs: TEdit;
    edtTglLahir: TEdit;
    lblUmur: TLabel;
    edtUmur: TEdit;
    lblKELAS: TLabel;
    edtKelas: TEdit;
    edtKodeKelas: TEdit;
    edtNomerBpjs: TEdit;
    edtPoli: TEdit;
    edtTglCetak: TEdit;
    edtJenisKartu: TEdit;
    edtFaskes: TEdit;
    grpWajibDiIsi: TGroupBox;
    lblSPESIALIS_SUBSPESIALIS: TLabel;
    lblDPJPYGMELAYANI: TLabel;
    lblASALRUJUKAN: TLabel;
    lblPPKASALRUJUKAN: TLabel;
    lblTGLRUJUKAN: TLabel;
    lblNORUJUKAN: TLabel;
    lblNOSURATKONTROL: TLabel;
    lblDPJSPPEMBERISURATKONTROL: TLabel;
    lblTGLSEP: TLabel;
    lblNORM: TLabel;
    lblDIAGNOSA: TLabel;
    lblNOTELEPONE: TLabel;
    lblCATATAN: TLabel;
    lblSTATUSKECELAKAAN: TLabel;
    chkEXSECUTIVE: TCheckBox;
    edtSUBSEPESIALSI: TEdit;
    edtKodeSubSpesialis: TEdit;
    edtDPJPMELAYANI: TEdit;
    edtASALRUJUKAN: TEdit;
    edtPPKASALRUJUKAN: TEdit;
    edtKodePpk: TEdit;
    dtpTGLRUJUKAN: TDateTimePicker;
    edtNORUJUKAN: TEdit;
    edtNOSURATKONTROL: TEdit;
    edtDPJPPEMBERIKONTROL: TEdit;
    lstdpjpmelayani: TListBox;
    mmoCATATAN: TMemo;
    edtNoTelponeSep: TEdit;
    edtDIANGNOSA: TEdit;
    edtKodeDiagnosa: TEdit;
    edtNORM: TEdit;
    dtpTGLSEP: TDateTimePicker;
    cbbSTATUSKECELAKAAN: TComboBox;
    btnBARU: TButton;
    btnSimpanSep: TButton;
    grpStatusKecelakaan: TGroupBox;
    lblTGLKEJADIAN: TLabel;
    lblLOKASIKEJADIAN: TLabel;
    lblKETERANGANKEJADIAN: TLabel;
    mmoKETERANGAN: TMemo;
    edtProvinsiSep: TEdit;
    edtKODEPROVINSI: TEdit;
    edtKOTAKAB: TEdit;
    edtKODEKABKOTA: TEdit;
    edtKecamatanSep: TEdit;
    lstPROVINSI: TListBox;
    lstKABKOTA: TListBox;
    lstkecamatan: TListBox;
    idhtpRujukan: TIdHTTP;
    idhtpdoktermelayani: TIdHTTP;
    idhtpRespInsertSep: TIdHTTP;
    edtKodeDpjp: TEdit;
    lstKodeDpjp: TListBox;
    edtKodeDpjpPemberi: TEdit;
    lstKodeDpjpPemberi: TListBox;
    lstDpjpKontrol: TListBox;
    lstKodeProvinsi: TListBox;
    idhtpProvinsi: TIdHTTP;
    lstKodeKab: TListBox;
    idhtpKABKOTA: TIdHTTP;
    edtKodeKecamatan: TEdit;
    lstKodeKecamatan: TListBox;
    lstSubSepesialis: TListBox;
    idhtpSubSepealis: TIdHTTP;
    lstKodeSubSpesialis: TListBox;
    cxdtdtTGLKEJADIAN: TcxDateEdit;
    btnUbah: TButton;
    idhtpCariSep: TIdHTTP;
    chkPESERTAMANUAL: TCheckBox;
    lblPELAYANAN: TLabel;
    cbbPELAYANANRJKMANUAL: TComboBox;
    lblNORAWAT: TLabel;
    edtNORAWAT: TEdit;
    edtJK: TEdit;
    procedure btnCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBARUClick(Sender: TObject);
    procedure edtDPJPMELAYANIKeyPress(Sender: TObject; var Key: Char);
    procedure lstdpjpmelayaniKeyPress(Sender: TObject; var Key: Char);
    procedure edtDPJPPEMBERIKONTROLKeyPress(Sender: TObject;
      var Key: Char);
    procedure btnSimpanSepClick(Sender: TObject);
    procedure cbbSTATUSKECELAKAANSelect(Sender: TObject);
    procedure edtNOSURATKONTROLKeyPress(Sender: TObject; var Key: Char);
    procedure edtDPJPMELAYANIClick(Sender: TObject);
    procedure lstdpjpmelayaniClick(Sender: TObject);
    procedure edtDPJPPEMBERIKONTROLClick(Sender: TObject);
    procedure lstDpjpKontrolKeyPress(Sender: TObject; var Key: Char);
    procedure lstDpjpKontrolClick(Sender: TObject);
    procedure edtProvinsiSepClick(Sender: TObject);
    procedure edtProvinsiSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtKOTAKABClick(Sender: TObject);
    procedure edtKOTAKABKeyPress(Sender: TObject; var Key: Char);
    procedure edtKecamatanSepClick(Sender: TObject);
    procedure edtKecamatanSepKeyPress(Sender: TObject; var Key: Char);
    procedure lstPROVINSIDblClick(Sender: TObject);
    procedure lstPROVINSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstKABKOTADblClick(Sender: TObject);
    procedure lstKABKOTAKeyPress(Sender: TObject; var Key: Char);
    procedure lstkecamatanDblClick(Sender: TObject);
    procedure lstkecamatanKeyPress(Sender: TObject; var Key: Char);
    procedure edtSUBSEPESIALSIKeyPress(Sender: TObject; var Key: Char);
    procedure lstSubSepesialisClick(Sender: TObject);
    procedure lstSubSepesialisKeyPress(Sender: TObject; var Key: Char);
    procedure btnTUTUPClick(Sender: TObject);
    procedure btnNoSepClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baruSep;
    procedure dpjdMelayaniSep;
    procedure dpjpPemberiKontrolSep;
    procedure tampilProvinsiManual;
    procedure tampilKabKotaManual;
    procedure tampilKecamatanManual;
    procedure tampilSubSpesialis;
  end;

var
  FRujukanSep: TFRujukanSep;

implementation

uses UKonseksiBridingBpjs,superobject, UPendaftaran, UPrintRespInsertSep,
  UResponseManual, UDataSimrs;

{$R *.dfm}

/// procedure baru Sep
procedure TFRujukanSep.baruSep;
begin

  edtNoSepCari.Text := 'NO SEP';
  cbbJenisNomer.ItemIndex := 0;
  cbbFASKES.ItemIndex := 0;
  edtNOMER.Text := '';

  edtNamaPeserta.Clear;
  edtNoBpjs.Clear;
  edtTglLahir.Clear;
  edtUmur.Clear;
  edtKelas.Clear;
  edtKodeKelas.Clear;
  edtNomerBpjs.Clear;
  edtPoli.Clear;
  edtTglCetak.Clear;
  edtJenisKartu.Clear;
  edtFaskes.Clear;

  ///hapus kategori wajib isi
  edtSUBSEPESIALSI.Clear;  edtKodeSubSpesialis.Text := '';
  edtDPJPMELAYANI.Clear;   edtKodeDpjp.Text := '';
  edtASALRUJUKAN.Text:=cbbFASKES.Text;
  edtPPKASALRUJUKAN.Clear; edtKodePpk.Text := '';
  dtpTGLRUJUKAN.DateTime := Now;
  edtNORUJUKAN.Clear;
  edtNOSURATKONTROL.Clear;
  edtDPJPPEMBERIKONTROL.Clear; edtKodeDpjpPemberi.Text := '';
  dtpTGLSEP.DateTime := Now;
  edtNORM.Clear;
  edtDIANGNOSA.Clear;  edtKodeDiagnosa.Text := '';
  edtNoTelponeSep.Clear;
  mmoCATATAN.Lines.Clear;
  cbbSTATUSKECELAKAAN.ItemIndex := 0;


  cxdtdtTGLKEJADIAN.Text := '00/00/0000';
  edtProvinsiSep.Text := '';  edtKODEPROVINSI.Text := '';
  edtKOTAKAB.Text := '';      edtKODEKABKOTA.Text := '';
  edtKecamatanSep.Text := ''; edtKodeKecamatan.Text := '';
  mmoKETERANGAN.Text := '';

  lblNAMAPESERTA.Caption := 'NAMA PESERTA :';
  lblNOBPJS.Caption := 'NIK :';
  lblNOMERBPJS.Caption := 'NO BPJS';
  lblTGLLAHIR.Caption := 'TGL LAHIR : ';
  lblPOLI.Caption := 'POLI/UNIT :';
  lblKELAS.Caption := 'KELAS : ';
  lblFASKES.Caption := 'FASKES : ';
  lblTGLCETAK.Caption := 'TGL CETAK :';
  lblJENISKARTU.Caption := 'JENIS KARTU : ';

end;

/// procedure tampil dpjp melayani sep
procedure TFRujukanSep.dpjdMelayaniSep;
var
  get_url_dokterlayani,subSpeaslis,pelayanan,isiCbbFaskes: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdokterL,nama:ISuperObject;
begin
  FKonseksiBridingBpjs.mmodoktermelayani.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_dokterlayani := FKonseksiBridingBpjs.edtlinkurl.Text+'tampildokter.php?';
  resp := TMemoryStream.Create;
  try
    if cbbFASKES.Text = 'FASKES 1' then
       isiCbbFaskes := '1'
    else
       isiCbbFaskes := '2';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSEPESIALSI.Text;
      idhtpdoktermelayani.Get(get_url_dokterlayani+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmodoktermelayani.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstdpjpmelayani.Items.Text := '';
    lstKodeDpjp.Items.Text := '';
    lstdpjpmelayani.Visible := True;

    json_rootdokterL:=SO(FKonseksiBridingBpjs.mmodoktermelayani.Text);
    if json_rootdokterL.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdokterL.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdokterL.A['response.list'].O[i];
    lstdpjpmelayani.Items.Add(nama.S['nama']);
    lstKodeDpjp.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterL.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// procedure dokter pemberi kontrol
procedure TFRujukanSep.dpjpPemberiKontrolSep;
var
  get_url_dokterkontrol,subSpeaslis,pelayanan,isiCbbFaskes: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdokterK,nama:ISuperObject;
begin
  FKonseksiBridingBpjs.mmodpjpsuratkontrol.Lines.Text := '';
  TIdHTTP.Create(nil);
  get_url_dokterkontrol := FKonseksiBridingBpjs.edtlinkurl.Text+'tampildokter.php?';
  resp := TMemoryStream.Create;
  try
    if cbbFASKES.Text = 'FASKES 1' then
       isiCbbFaskes := '1'
    else
       isiCbbFaskes := '2';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSEPESIALSI.Text;
      idhtpdoktermelayani.Get(get_url_dokterkontrol+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmodpjpsuratkontrol.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDpjpKontrol.Items.Text := '';
    lstKodeDpjpPemberi.Items.Text := '';
    lstDpjpKontrol.Visible := True;
    
    json_rootdokterK:=SO(FKonseksiBridingBpjs.mmodpjpsuratkontrol.Text);
    if json_rootdokterK.I['metaData.code'] = 200  then
    begin
    for i := 0 to json_rootdokterK.A['response.list'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdokterK.A['response.list'].O[i];
    lstDpjpKontrol.Items.Add(nama.S['nama']);
    lstKodeDpjpPemberi.Items.Add(nama.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterK.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil provinsi MANUAL
procedure TFRujukanSep.tampilProvinsiManual;
var
  get_url_provinsiManual: string;
  respProvManual: TMemoryStream;
  iProvManual:Integer;
  json_root,namaManual:ISuperObject;
begin
    FKonseksiBridingBpjs.mmoProvinsi.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_provinsiManual := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilProvinsi.php';
    respProvManual := TMemoryStream.Create;
    try
      idhtpProvinsi.Get(get_url_provinsiManual, respProvManual);

      respProvManual.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoProvinsi.Lines.LoadFromStream(respProvManual);
    finally
      respProvManual.Free;
    end;


    lstPROVINSI.Items.Text := '';
    lstPROVINSI.Visible := True;
    lstKodeProvinsi.Items.Text := '';
    json_root:=SO(FKonseksiBridingBpjs.mmoProvinsi.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iProvManual := 0 to json_root.A['response.list'].Length-1 do
    begin
      namaManual:=json_root.A['response.list'].O[iProvManual];
      //ShowMessage(nama.S['nama']);
      lstPROVINSI.Items.Add(namaManual.S['nama']);
      lstKodeProvinsi.Items.Add(namaManual.S['kode'])
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kab kota manual
procedure TFRujukanSep.tampilKabKotaManual;
var
  get_url_kabkota: string;
  respprov: TMemoryStream;
  iprov:Integer;
  json_root,kabKota:ISuperObject;
begin
    FKonseksiBridingBpjs.mmoKOTAKABUPATEN.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kabkota := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilkabkota.php?prov=';
    respprov := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kabkota+edtKODEPROVINSI.Text, respprov);

      respprov.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoKOTAKABUPATEN.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstKABKOTA.Items.Text := '';
    lstKodeKab.Items.Text := '';
    lstKodeKab.Visible := True;
    json_root:=SO(FKonseksiBridingBpjs.mmoKOTAKABUPATEN.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      kabKota:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstKABKOTA.Items.Add(kabKota.S['nama']);
      lstKodeKab.Items.Add(kabKota.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kecamatan manual
procedure TFRujukanSep.tampilKecamatanManual;
var
  get_url_kecamatan: string;
  respkecm: TMemoryStream;
  ikecam:Integer;
  json_root,kecam:ISuperObject;
begin
    FKonseksiBridingBpjs.mmokecamatan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_kecamatan := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilkecamatan.php?kab=';
    respkecm := TMemoryStream.Create;
    try
      idhtpKABKOTA.Get(get_url_kecamatan+edtKODEKABKOTA.Text, respkecm);

      respkecm.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmokecamatan.Lines.LoadFromStream(respkecm);
    finally
      respkecm.Free;
    end;


    lstkecamatan.Items.Text := '';
    lstKodeKecamatan.Items.Text := '';
    lstkecamatan.Visible := True;
    json_root:=SO(FKonseksiBridingBpjs.mmokecamatan.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for ikecam := 0 to json_root.A['response.list'].Length-1 do
    begin
      kecam:=json_root.A['response.list'].O[ikecam];
      //ShowMessage(nama.S['nama']);
      lstkecamatan.Items.Add(kecam.S['nama']);
      lstKodeKecamatan.Items.Add(kecam.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
    
end;

procedure TFRujukanSep.tampilSubSpesialis;
var
  get_url_poli: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootpoli,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmopoli.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_poli := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPoli.php?poli=';
    resp := TMemoryStream.Create;
    try
      idhtpSubSepealis.Get(get_url_poli+edtSUBSEPESIALSI.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmopoli.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstSubSepesialis.Items.Text := '';
    lstSubSepesialis.Visible := True;
    lstKodeSubSpesialis.Items.Text := '';
    json_rootpoli:=SO(FKonseksiBridingBpjs.mmopoli.Text);
    
    if json_rootpoli.s['metaData.code'] = '200'  then
    begin
      for i := 0 to json_rootpoli.A['response.poli'].Length-1 do
      begin
        nama:=json_rootpoli.A['response.poli'].O[i];
        lstSubSepesialis.Items.Add(nama.S['nama']);
        lstKodeSubSpesialis.Items.Add(nama.S['kode']);
      end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootpoli.S['metadata.message'],mtInformation,[mbOK],0);
end;

procedure TFRujukanSep.btnCariClick(Sender: TObject);
VAR
  get_urlNORUJUKAN: string;
  resp: TMemoryStream;
  json_rootNORUJUKAN:ISuperObject;
begin
if edtNOMER.Text = '' then
begin
  MessageDlg('NOMER MASIH KOSONG...!',mtConfirmation,[mbOK],0);
  edtNOMER.SetFocus;
end
else
  begin
    FKonseksiBridingBpjs.mmoNoRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    /// no rujukan & faskes 1
    if (cbbJenisNomer.Text = 'NOMER RUJUKAN') and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilcarirujukannomor_pcare.php?norujukan='
    /// no rujukan & faskes 2
    else if (cbbJenisNomer.Text = 'NOMER RUJUKAN') and (cbbFASKES.ItemIndex=1) then
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilcarirujukannomor_rs.php?norujukan='
    /// no kartu & faskes 1
    else if (cbbJenisNomer.Text = 'NOMER KARTU') and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilcarirujukannokartu_pcare.php?norujukan='
    /// no kartu & faskes 2
    else  if (cbbJenisNomer.Text = 'NOMER KARTU') and (cbbFASKES.ItemIndex=1) then
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilcarirujukannokartu_rs.php?norujukan='
    /// no sep & fakses 1
    else if (cbbJenisNomer.Text = 'NOMER SEP') and (cbbFASKES.ItemIndex=0) then
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'/tampilcarirujukannosep_pcare.php?norujukan='
    else
    /// no sep & fakses 2
    get_urlNORUJUKAN :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilcarirujukannosep_rs.php?norujukan=';

    /// membaca respon dari url website ke memotext
    resp := TMemoryStream.Create;
    try
      idhtpRujukan.Get(get_urlNORUJUKAN+edtNOMER.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoNoRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    /// membaca format json dari memotext
    json_rootNORUJUKAN:=SO(FKonseksiBridingBpjs.mmoNoRujukan.Lines.Text);
    /// jika satus json code 2000
    if json_rootNORUJUKAN.S['metaData.code'] = '200'  then
    begin
      {mmoCobaDataRujukan.Lines.Add('Diangnosa :'+json_rootNORUJUKAN.S['response.rujukan.diagnosa.kode']+json_rootNORUJUKAN.S['response.rujukan.diagnosa.nama']+
                                   'keluhan :'+json_rootNORUJUKAN.S['response.rujukan.keluhan']+'NO KUNJUNGAN :'+json_rootNORUJUKAN.S['response.rujukan.nokunjungan']+
                                   'Pelayanan :'+json_rootNORUJUKAN.S['response.rujukan.pelayanan.kode']+json_rootNORUJUKAN.S['response.rujukan.pelayanan.nama']+
                                   'Peserta Cob :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nmAsuransi']+json_rootNORUJUKAN.S['response.rujukan.peserta.noAsuransi']+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTAT']+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTMT']+
                                   'hak kelas :'+json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.kode']+
                                   'informasi :'+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.dinsos']+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.noSKTM']+json_rootNORUJUKAN.S['response.rujukan.peserta.informasi.prolanisPRB']+
                                   'jenisPeserta :'+json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.kode']+
                                   'mr :'+json_rootNORUJUKAN.S['response.rujukan.peserta.mr.noMR']+json_rootNORUJUKAN.S['response.rujukan.peserta.mr.noTelepone']+
                                   'Nama :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nama']+
                                   'nik :'+json_rootNORUJUKAN.S['response.rujukan.peserta.nik']+
                                   'no kartu :'+json_rootNORUJUKAN.S['response.rujukan.peserta.noKartu']+
                                   'pisa :'+json_rootNORUJUKAN.S['response.rujukan.peserta.pisa']+
                                   'provUmum :'+json_rootNORUJUKAN.S['response.rujukan.peserta.provUmum.kdProvider']+json_rootNORUJUKAN.S['response.rujukan.peserta.provUmum.nmProvider']+
                                   'sex :'+json_rootNORUJUKAN.S['response.rujukan.peserta.sex']+
                                   'statusPeserta :'+json_rootNORUJUKAN.S['response.rujukan.peserta.statusPeserta.keterangan']+json_rootNORUJUKAN.S['response.rujukan.peserta.statusPeserta.kode']+
                                   'tglCetakKartu :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglCetakKartu']+
                                   'tglLahir :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglLahir']+
                                   'tglTAT :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTAT']+
                                   'tglTMT :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglTMT']+
                                   'umur :'+json_rootNORUJUKAN.S['response.rujukan.peserta.umur.umurSaatPelayanan']+json_rootNORUJUKAN.S['response.rujukan.peserta.umur.umurSekarang']+
                                   'poliRujukan :'+json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.kode']+json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.nama']+
                                   'provPerujuk :'+json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.kode']+json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.nama']+
                                   'tglKunjungan :'+json_rootNORUJUKAN.S['response.rujukan.peserta.tglKunjungan']
                                  ); }
        /// pengujian tanggal kunjungan lebih dari 90 hari                          
        if json_rootNORUJUKAN.S['response.rujukan.peserta.tglKunjungan'] > '90' then
          MessageDlg('Rujukan Lebih Dari 90 Hari',mtInformation,[mbOK],0)
        /// pengujian tanggal kunjungan kurang dari 90 hari    
        else
        begin
        edtNamaPeserta.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.nama'];
        edtNoBpjs.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.nik'];
        edtNomerBpjs.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.noKartu'];
        edtTglLahir.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.tglLahir'];
        edtPoli.Text := 'POLI/UNIT :'+json_rootNORUJUKAN.S['response.rujukan.pelayanan.nama'];
        edtKelas.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.keterangan']; edtKodeKelas.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.hakKelas.kode'];
        edtFaskes.Text := 'FASKES : ';
        edtTglCetak.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.tglKunjungan'];
        edtJenisKartu.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.jenispeserta.keterangan'];

        //edtSUBSEPESIALSI.SetFocus;
        edtSUBSEPESIALSI.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.nama']; edtKodeSubSpesialis.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.poliRujukan.kode'];
        edtPPKASALRUJUKAN.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.nama']; edtKodePpk.Text := json_rootNORUJUKAN.S['response.rujukan.peserta.provPerujuk.kode'];
        edtNORUJUKAN.Text := json_rootNORUJUKAN.S['response.rujukan.nokunjungan'];
        edtDIANGNOSA.Text := json_rootNORUJUKAN.S['response.rujukan.diagnosa.nama']; edtKodeDiagnosa.Text := json_rootNORUJUKAN.S['response.rujukan.diagnosa.kode'];

        mmoCATATAN.Text := json_rootNORUJUKAN.S['response.rujukan.keluhan'];
        end;
    end
    else
    begin
      FKonseksiBridingBpjs.mmoNoRujukan.Lines.Add(json_rootNORUJUKAN.S['metadata.message']);
      MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootNORUJUKAN.S['metadata.message'],mtInformation,[mbOK],0);
      edtNOMER.SetFocus;
    end;
  end;
end;

procedure TFRujukanSep.FormShow(Sender: TObject);
begin
  baruSep;
end;

procedure TFRujukanSep.btnBARUClick(Sender: TObject);
begin
  baruSep;
end;

procedure TFRujukanSep.edtDPJPMELAYANIKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    {if (edtDPJPMELAYANI.Text='') then
      MessageDlg('Dokter Melayani Tidak Boleh Kosong...!',mtWarning,[mbOK],0)
    else
    begin
    dpjdMelayaniSep;
    lstdpjpmelayani.Visible := True;
    lstdpjpmelayani.SetFocus;
    end;}
    dpjdMelayaniSep;
    lstdpjpmelayani.Visible := True;
    lstdpjpmelayani.SetFocus;
  end;
end;

procedure TFRujukanSep.lstdpjpmelayaniKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDPJPMELAYANI.Text := lstdpjpmelayani.Items[lstdpjpmelayani.Itemindex];
    edtKodeDpjp.Text := lstKodeDpjp.Items[lstdpjpmelayani.itemindex];
    lstdpjpmelayani.Visible := False;
    //edtPPKASALRUJUKAN.SetFocus;
  end;
end;

procedure TFRujukanSep.edtDPJPPEMBERIKONTROLKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
   Key:=#0;
   dpjpPemberiKontrolSep;
   lstDpjpKontrol.Visible := True;
   lstDpjpKontrol.SetFocus;
  end;
end;

procedure TFRujukanSep.btnSimpanSepClick(Sender: TObject);
Var
  get_urlRespSep,IsiJnsPelayanan,Isieksekutif,IsilakaLantas,isiCob,isiPenjamin,isiFaskes,
  noKartu,tglSep,
  ppkPelayanan,jnsPelayanan,klsRawat,
  noMR,asalRujukan,tglRujukan,noRujukan,ppkRujukan,
  catatan,diagAwal,tujuan,eksekutif,
  cob,katarak,lakaLantas,penjamin,tglKejadian,
  keterangan,suplesi,noSepSuplesi,kdPropinsi,kdKabupaten,kdKecamatan,
  noSurat,kodeDPJP,noTelp,user,noSep: string;

  resp: TMemoryStream;
  json_rootRespSep:ISuperObject;
begin
  if (edtSUBSEPESIALSI.Text='') or (edtKodeSubSpesialis.Text='') then
    MessageDlg('Data Sub Spealis dan kode Wajib Di Isi....!',mtInformation,[mbOK],0)
else if (edtDPJPMELAYANI.Text='') then
    MessageDlg('Data DPJP Melayani Wajib Di Isi....!',mtInformation,[mbOK],0)
else if (edtPPKASALRUJUKAN.Text='') then
    MessageDlg('Data PPK Asal Rujukan Wajib Di Isi....!',mtInformation,[mbOK],0)
else if (edtNORUJUKAN.Text='') then
   MessageDlg('Data NO Rujukan Wajib Di Isi....!',mtInformation,[mbOK],0)
else if (edtNOSURATKONTROL.Text='') then
   MessageDlg('Data NO Surat Wajib Di Isi....!',mtInformation,[mbOK],0)
else if (edtDIANGNOSA.Text='') then
   MessageDlg('Data NO Surat Wajib Di Isi....!',mtInformation,[mbOK],0)
else
begin
  /// url insert sep
  get_urlRespSep := FKonseksiBridingBpjs.edtlinkurl.Text+'insertsep.php?';

      resp := TMemoryStream.Create;
      try
        if cbbPELAYANANRJKMANUAL.Text = 'RAWAT JALAN' then
          IsiJnsPelayanan := '2'
        else
          IsiJnsPelayanan := '1';

        if cbbFASKES.Text = 'FASKES 1' then
          isiFaskes := '1'
        else
          isiFaskes := '2';

        if chkEXSECUTIVE.Checked = True then
          Isieksekutif := '1'
        else
          Isieksekutif := '0';

        if cbbSTATUSKECELAKAAN.Text = 'BUKAN KECELAKAAN' then
          IsilakaLantas := '0'
        else
          IsilakaLantas := '1';

        if chkPESERTAMANUAL.Checked  = True then
            isiCob := '1'
        else
            isiCob := '0';

        /// variabel get krim data
        noKartu :='noKartu='+edtNoBpjs.Text;
        tglSep := '&tglSep='+FormatDateTime('yyyy-MM-dd',dtpTGLSEP.Date);
        ppkPelayanan := '&ppkPelayanan='+edtKodePpk.Text;
        jnsPelayanan := '&jnsPelayanan='+IsiJnsPelayanan;
        klsRawat := '&klsRawat='+edtKodeKelas.Text;
        noMR := '&noMR='+edtNORM.Text;
        asalRujukan := '&asalRujukan='+isiFaskes;
        tglRujukan := '&tglRujukan='+FormatDateTime('yyyy-MM-dd',dtpTGLRUJUKAN.Date);
        noRujukan := '&noRujukan='+edtNOMER.Text;
        ppkRujukan := '&ppkRujukan='+edtKodePpk.Text;
        catatan := '&catatan='+mmoCATATAN.Text;
        diagAwal := '&diagAwal='+edtKodeDiagnosa.Text;
        tujuan := '&tujuan='+edtKodeSubSpesialis.Text;
        eksekutif := '&eksekutif='+Isieksekutif;
        cob := '&cob='+isiCob;
        katarak := '&katarak=0';
        lakaLantas := '&lakaLantas='+IsilakaLantas;
        penjamin := '&penjamin='+isiPenjamin; /// belum ketemu
        tglKejadian := '&tglKejadian='+FormatDateTime('yyyy-MM-dd',cxdtdtTGLKEJADIAN.EditValue);
        keterangan := '&keterangan='+mmoKETERANGAN.Text;
        suplesi := '&suplesi='+IsilakaLantas;
        noSepSuplesi := '&noSepsuplesi='+edtNOMER.Text;
        kdPropinsi := '&kdProvinsi='+edtKODEPROVINSI.Text;
        kdKabupaten := '&kdKabupaten='+edtKODEKABKOTA.Text;
        kdKecamatan := '&kdKecamatan='+edtKodeKecamatan.Text;
        noSurat := '&noSurat='+edtNOMER.Text;
        kodeDPJP := '&kodeDPJP='+edtKodeDpjp.Text;
        noTelp := '&noTelp='+edtNoTelponeSep.Text;
        user := '&user='+FPendaftaran.statSimrs.Panels[0].Text;

        /// isi sesuai variabel
        idhtpRespInsertSep.Get(get_urlRespSep+noKartu+tglSep+ppkPelayanan+jnsPelayanan+klsRawat+noMR+asalRujukan+tglRujukan+noRujukan+ppkRujukan+catatan+diagAwal+tujuan+eksekutif+cob+katarak+lakaLantas+penjamin+tglKejadian+keterangan+suplesi+noSepSuplesi+kdPropinsi+kdKabupaten+kdKecamatan+noSurat+kodeDPJP+noTelp+user,resp);
        

        resp.Position := 0; // <-- add this!!
        FKonseksiBridingBpjs.mmoResponeInsertSep.Lines.LoadFromStream(resp);
        //FResponseManual.mmoRespone.Lines.LoadFromStream(resp);
        //FResponseManual.Show;

      finally
        resp.Free;
      end;

      /// tampil respon sep setelah insert
        with FResponseManual do
        begin
          json_rootRespSep:=SO(FKonseksiBridingBpjs.mmoResponeInsertSep .Lines.Text);
          if json_rootRespSep.I['metaData.code'] = 200  then
          begin
            mmoRespone.Lines.Add('CATATAN  : '+json_rootRespSep.S['response.sep.catatan']+
                                 ' DIAGNOSA  : '+json_rootRespSep.S['response.sep.diagnosa']+
                                 ' JENIS PELAYANAN  : '+json_rootRespSep.S['response.sep.jnsPelayanan']+
                                 ' KELAS RAWAT : '+json_rootRespSep.S['response.sep.kelasRawat']+
                                 ' NO SEP : '+json_rootRespSep.S['response.sep.noSep']+
                                 ' PENJAMIN  : '+json_rootRespSep.S['response.sep.penjamin']+
                                 ' ASURANSI  : '+json_rootRespSep.S['response.sep.peserta.asuransi']+
                                 ' HAK KELAS  : '+json_rootRespSep.S['response.sep.peserta.hakKelas']+
                                 ' JENIS PESERTA : '+json_rootRespSep.S['response.sep.peserta.jnsPeserta']+
                                 ' KELAMIN  : '+json_rootRespSep.S['response.sep.peserta.kelamin']+
                                 ' NAMA  : '+json_rootRespSep.S['response.sep.peserta.nama']+
                                 ' NO KARTU : '+json_rootRespSep.S['response.sep.peserta.nokartu']+
                                 ' NO RM : '+json_rootRespSep.S['response.sep.peserta.noMr']+
                                 ' TGL LAHIR : '+json_rootRespSep.S['response.sep.peserta.tglLahir']+
                                 ' DINSOS  : '+json_rootRespSep.S['response.sep.informasi.Dinsos']+
                                 ' PROLANIS PRB : '+json_rootRespSep.S['response.sep.informasi.prolanisPRB']+
                                 ' NO SKTM  : '+json_rootRespSep.S['response.sep.informasi.noSKTM']+
                                 ' POLI : '+json_rootRespSep.S['response.sep.poli']+
                                 ' POLI EKSEKUTIF : '+json_rootRespSep.S['response.sep.poliEksekutif']+
                                 ' TGL SEP : '+json_rootRespSep.S['response.sep.tglSep']
                                );

            noSep := json_rootRespSep.S['response.sep.noSep'];
            lblNOSEP.Caption := noSep;

            with DataSimrs.qryt_bridingsep do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into t_bridingsep (no_sep,no_rawat,tglsep,no_rujukan,kdppkrujukan,nmppkrujukan,kdppkpelayanan,nmppkpelayanan,'+
                          'jnspelayanan,catatan,diagawal,nmdiagnosaawal,kdpolitujuan,nmpolitujuan,klsrawat,lakalantas,user,nomr,nama_pasien,'+
                          'tanggal_lahir,peserta,jkel,no_kartu,asal_rujukan,eksekutif,cob,penjamin,notelep,katarak,tglkkl,keterangankkl,'+
                          'suplesi,no_sep_suplesi,kdprop,nmprop,kdkab,nmkab,kdkec,nmkec,noskdp,kddpjp,nmdpdjp) values ("'+noSep+'","'+edtNORAWAT.Text+'",'+
                          '"'+FormatDateTime('yyyy-MM-dd',dtpTGLSEP.Date)+'","'+edtNOMER.Text+'","'+edtKodePpk.Text+'",'+
                          '"'+edtPPKASALRUJUKAN.Text+'","'+edtKodePpk.Text+'","'+edtPPKASALRUJUKAN.Text+'",'+
                          '"'+IsiJnsPelayanan+'","'+mmoCATATAN.Text+'","'+edtKodeDiagnosa.Text+'","'+edtDIANGNOSA.Text+'","'+edtKodeSubSpesialis.Text+'",'+
                          '"'+edtSUBSEPESIALSI.Text+'","'+edtKelas.Text+'","'+IsilakaLantas+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+edtNORM.Text+'",'+
                          '"'+edtNamaPeserta.Text+'","'+edtTglLahir.Text+'","'+edtNOMER.Text+'","'+edtJK.Text+'","'+edtNoBpjs.Text+'",'+
                          '"'+isiFaskes+'","'+Isieksekutif+'","'+isiCob+'","'+isiPenjamin+'","'+edtNoTelponeSep.Text+'","0","'+FormatDateTime('yyyy-MM-dd',cxdtdtTGLKEJADIAN.EditValue)+'",'+
                          '"'+mmoKETERANGAN.Text+'","'+IsilakaLantas+'","'+noSep+'","'+edtKODEPROVINSI.Text+'","'+edtProvinsiSep.Text+'",'+
                          '"'+edtKODEKABKOTA.Text+'","'+edtKOTAKAB.Text+'","'+edtKodeKecamatan.Text+'","'+edtKecamatanSep.Text+'","'+noSep+'",'+
                          '"'+edtKodeDpjp.Text+'","'+edtDPJPMELAYANI.Text+'")';
              ExecSQL;
              SQL.Text := 'select * from t_bridingsep';
              Open;
            end;

          end

          else
            mmoRespone.Lines.Text := json_rootRespSep.S['metaData.message'];

          Show;
        end;

end;
end;

procedure TFRujukanSep.cbbSTATUSKECELAKAANSelect(Sender: TObject);
begin
if cbbSTATUSKECELAKAAN.Text = 'BUKAN KECELAKAAN' then
  begin
    grpStatusKecelakaan.Visible := False;
  end
  else
  begin
    grpStatusKecelakaan.Visible := True;
    cxdtdtTGLKEJADIAN.SetFocus;
  end;
end;

procedure TFRujukanSep.edtNOSURATKONTROLKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  //// Pengujian validasi no surat kontrol
  if (inttostr(length(edtNOSURATKONTROL.Text))< '6' ) then
      MessageDlg('NO SURAT KONTROL TIDAK BOLEH KURANG DARI 6',mtWarning,[mbOK],0)
  ELSE IF (inttostr(length(edtNOSURATKONTROL.Text)) > '6' ) then
      MessageDlg('NO SURAT KONTROL TIDAK BOLEH LEBIH DARI 6',mtWarning,[mbOK],0)
  else
    edtDPJPPEMBERIKONTROL.SetFocus;
end;
end;

procedure TFRujukanSep.edtDPJPMELAYANIClick(Sender: TObject);
begin
dpjdMelayaniSep;
lstdpjpmelayani.Visible := True;
lstdpjpmelayani.SetFocus;
end;

procedure TFRujukanSep.lstdpjpmelayaniClick(Sender: TObject);
begin
  edtDPJPMELAYANI.Text := lstdpjpmelayani.Items[lstdpjpmelayani.Itemindex];
  edtKodeDpjp.Text := lstKodeDpjp.Items[lstdpjpmelayani.itemindex];
  lstdpjpmelayani.Visible := False;
end;

procedure TFRujukanSep.edtDPJPPEMBERIKONTROLClick(Sender: TObject);
begin
   dpjpPemberiKontrolSep;
   lstDpjpKontrol.Visible := True;
   lstDpjpKontrol.SetFocus;
end;

procedure TFRujukanSep.lstDpjpKontrolKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtDPJPPEMBERIKONTROL.Text := lstDpjpKontrol.Items[lstDpjpKontrol.Itemindex];
    edtKodeDpjpPemberi.Text := lstKodeDpjpPemberi.Items[lstDpjpKontrol.itemindex];
    lstDpjpKontrol.Visible := False;
  end;
end;

procedure TFRujukanSep.lstDpjpKontrolClick(Sender: TObject);
begin
  edtDPJPPEMBERIKONTROL.Text := lstDpjpKontrol.Items[lstDpjpKontrol.Itemindex];
  edtKodeDpjpPemberi.Text := lstKodeDpjpPemberi.Items[lstDpjpKontrol.itemindex];
  lstDpjpKontrol.Visible := False;
end;

procedure TFRujukanSep.edtProvinsiSepClick(Sender: TObject);
begin
  tampilProvinsiManual;
  lstPROVINSI.Visible := True;
end;

procedure TFRujukanSep.edtProvinsiSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilProvinsiManual;
    lstPROVINSI.Visible := True;
  end;
end;

procedure TFRujukanSep.edtKOTAKABClick(Sender: TObject);
begin
  tampilKabKotaManual;
  lstKABKOTA.Visible := True;
end;

procedure TFRujukanSep.edtKOTAKABKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKabKotaManual;
    lstKABKOTA.Visible := True;
  end;
end;

procedure TFRujukanSep.edtKecamatanSepClick(Sender: TObject);
begin
  tampilKecamatanManual;
  lstkecamatan.Visible := True;
end;

procedure TFRujukanSep.edtKecamatanSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKecamatanManual;
    lstkecamatan.Visible := True;
  end;
end;

procedure TFRujukanSep.lstPROVINSIDblClick(Sender: TObject);
begin
  edtProvinsiSep.Text := lstPROVINSI.Items[lstPROVINSI.itemindex];
  edtKODEPROVINSI.Text := lstKodeProvinsi.Items[lstPROVINSI.itemindex];
  lstPROVINSI.Visible := False;
  edtKOTAKAB.SetFocus;
end;

procedure TFRujukanSep.lstPROVINSIKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtProvinsiSep.Text := lstPROVINSI.Items[lstPROVINSI.itemindex];
    edtKODEPROVINSI.Text := lstKodeProvinsi.Items[lstPROVINSI.itemindex];
    lstPROVINSI.Visible := False;
    edtKOTAKAB.SetFocus;
  end;
end;

procedure TFRujukanSep.lstKABKOTADblClick(Sender: TObject);
begin
  edtKOTAKAB.Text := lstKABKOTA.Items[lstKABKOTA.itemindex];
  edtKODEKABKOTA.Text := lstKodeKab.Items[lstKABKOTA.itemindex];
  lstKABKOTA.Visible := False;
  edtKecamatanSep.SetFocus;
end;

procedure TFRujukanSep.lstKABKOTAKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKOTAKAB.Text := lstKABKOTA.Items[lstKABKOTA.itemindex];
    edtKODEKABKOTA.Text := lstKodeKab.Items[lstKABKOTA.itemindex];
    lstKABKOTA.Visible := False;
    edtKecamatanSep.SetFocus;
  end;
end;

procedure TFRujukanSep.lstkecamatanDblClick(Sender: TObject);
begin
  edtKecamatanSep.Text := lstkecamatan.Items[lstkecamatan.itemindex];
  edtKodeKecamatan.Text := lstKodeKecamatan.Items[lstkecamatan.itemindex];
  lstkecamatan.Visible := False;
  mmoKETERANGAN.SetFocus;
end;

procedure TFRujukanSep.lstkecamatanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKecamatanSep.Text := lstkecamatan.Items[lstkecamatan.itemindex];
    edtKodeKecamatan.Text := lstKodeKecamatan.Items[lstkecamatan.itemindex];
    lstkecamatan.Visible := False;
    mmoKETERANGAN.SetFocus;
  end;
end;

procedure TFRujukanSep.edtSUBSEPESIALSIKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if (edtSUBSEPESIALSI.Text='') then
      MessageDlg('Data Subspesialis ....!',mtWarning,[mbOK],0)
    else
    begin
    tampilSubSpesialis;
    lstSubSepesialis.SetFocus;
    end;
  end;
end;

procedure TFRujukanSep.lstSubSepesialisClick(Sender: TObject);
begin
  edtSUBSEPESIALSI.Text := lstSubSepesialis.Items[lstSubSepesialis.Itemindex];
  edtKodeSubSpesialis.Text := lstKodeSubSpesialis.Items[lstSubSepesialis.itemindex];
  lstSubSepesialis.Visible := False;
end;

procedure TFRujukanSep.lstSubSepesialisKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtSUBSEPESIALSI.Text := lstSubSepesialis.Items[lstSubSepesialis.Itemindex];
    edtKodeSubSpesialis.Text := lstKodeSubSpesialis.Items[lstSubSepesialis.itemindex];
    lstSubSepesialis.Visible := False;
  end;
end;

procedure TFRujukanSep.btnTUTUPClick(Sender: TObject);
begin
  Close;
end;

procedure TFRujukanSep.btnNoSepClick(Sender: TObject);
VAR
  get_urlNoSep,isiEksekutive: string;
  resp: TMemoryStream;
  json_rootNoSep:ISuperObject;
begin
  FKonseksiBridingBpjs.mmocarisep.Lines.Text := '';
    TIdHTTP.Create(nil);
 /// url cari sep
    get_urlNoSep :=FKonseksiBridingBpjs.edtlinkurl.Text+'carisep.php?nosep=';

    resp := TMemoryStream.Create;
    try
      idhtpCariSep.Get(get_urlNoSep+edtNoSepCari.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmocarisep.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_rootNoSep:=SO(FKonseksiBridingBpjs.mmocarisep.Lines.Text);
    if json_rootNoSep.S['metaData.code'] = '200'  then
    begin
      mmoCATATAN.Text := json_rootNoSep.S['response.catatan'];
      edtDIANGNOSA.Text := json_rootNoSep.S['response.diagnosa']; edtKodeDiagnosa.Text := json_rootNoSep.S['response.diagAwal'];
      edtKelas.Text := json_rootNoSep.S['response.diagnosa'];
      edtNOMER.Text := json_rootNoSep.S['response.noSep'];
      edtNORUJUKAN.Text := json_rootNoSep.S['response.noSep'];
      edtKelas.Text := json_rootNoSep.S['response.peserta.hakKelas']; edtKodeKelas.Text := json_rootNoSep.S['response.peserta.kode'];
      edtNamaPeserta.Text := json_rootNoSep.S['response.peserta.nama'];
      edtNoBpjs.Text := json_rootNoSep.S['response.peserta.noKartu'];
      edtNORM.Text := json_rootNoSep.S['response.peserta.noMr'];
      edtTglLahir.Text := json_rootNoSep.S['response.peserta.tglLahir'];
      edtPoli.Text := json_rootNoSep.S['response.poli'];
      isiEksekutive := json_rootNoSep.S['response.poliEksekutif'];
      if isiEksekutive = '0' then
        chkEXSECUTIVE.Checked := False
      else
        chkEXSECUTIVE.Checked := False;
      edtTglCetak.Text := json_rootNoSep.S['response.tglSep'];
      edtSUBSEPESIALSI.Text := json_rootNoSep.S['response.poli']; edtKodeSubSpesialis.Text := json_rootNoSep.S['response.kode'];
    end
    else
    begin
      FKonseksiBridingBpjs.mmocarisep.Lines.Add(json_rootNoSep.S['metadata.message']);
      MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootNoSep.S['metadata.message'],mtInformation,[mbOK],0);
    end;
end;

end.
