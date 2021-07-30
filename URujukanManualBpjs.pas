unit URujukanManualBpjs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TFRujukanManual = class(TForm)
    pnlAtas: TPanel;
    lblPELAYANAN: TLabel;
    lblTGLPELAYANAN: TLabel;
    dtpTGLPELAYANAN: TDateTimePicker;
    cbbPELAYANANRJKMANUAL: TComboBox;
    lblNOMERRUJUKAN_MANUAL: TLabel;
    lblPPKASALPESERTA: TLabel;
    edtNOMERRUJUKANMANUAL: TEdit;
    edtPPKASALPESERTA: TEdit;
    btnCARIMANUAL: TButton;
    pnlTengah: TPanel;
    mmoCATATANMANUAL: TMemo;
    lstKodeProvinsiManual: TListBox;
    lstKodeKabKotaManual: TListBox;
    lblWAJIBDISIMANUAL: TLabel;
    lblTGLSEPMANUAL: TLabel;
    lblSTATUSKECELAKAANMANUAL: TLabel;
    lblSPESIALSISSUBSPMANUAL: TLabel;
    lblNOTELEPONMANUAL: TLabel;
    lblNORMMANUAL: TLabel;
    lblDPJPMANUAL: TLabel;
    lblDIAGNOSAMANUAL: TLabel;
    lblCATATANMANUAL: TLabel;
    grpSTATUSKECELAKAANMANUAL: TGroupBox;
    lblTGLKEJADIANMANUAL: TLabel;
    lblLOKASIKEJADIANMANUAL: TLabel;
    lblKETERANGANKEJADIANMANUAL: TLabel;
    edtPROVINSIMANUAL: TEdit;
    edtKABKOTAMANUAL: TEdit;
    edtKECAMMANUAL: TEdit;
    mmoKETMANUAL: TMemo;
    edtKodeProvinsiManual: TEdit;
    edtKodeKabKotaManual: TEdit;
    edtSUBSPEALISMANUAL: TEdit;
    edtNOTELEPONEMANUAL: TEdit;
    edtNORMMANUAL: TEdit;
    edtDPJPMANUAL: TEdit;
    edtDIAGNOSAMANUAL: TEdit;
    dtpTGLSEPMANUAL: TDateTimePicker;
    chkPESERTAMANUAL: TCheckBox;
    chkEXECUTIVEMANUAL: TCheckBox;
    cbbSTATUSKECELAKAANMANUAL: TComboBox;
    btnSIMPANMANUAL: TButton;
    btnBARUMANUAL: TButton;
    lstPPKASALPESERTAMANUAL: TListBox;
    idhtpRujukan: TIdHTTP;
    idhtseppencarian: TIdHTTP;
    cxgrpbxDataPeserta: TcxGroupBox;
    lblNAMAPESERTA: TLabel;
    lblNOBPJS: TLabel;
    lblNOMERBPJS: TLabel;
    lblTGLLAHIR: TLabel;
    lblSTATUSKEPESERTAAN: TLabel;
    lblKELAS: TLabel;
    lblFASKES: TLabel;
    lblTGLCETAK: TLabel;
    lblJENISKARTU: TLabel;
    lstPROVINSIMANUAL: TListBox;
    lstKECMANUAL: TListBox;
    edtKodeSubSpealis: TEdit;
    edtKodeDiagnosa: TEdit;
    lstDPJPMANUAL: TListBox;
    lstDiagnosaManual: TListBox;
    idhtpdoktermelayani: TIdHTTP;
    idhtpDiagnosa: TIdHTTP;
    idhtpProvinsi: TIdHTTP;
    idhtpKABKOTA: TIdHTTP;
    lstKABKOTAMANUAL: TListBox;
    idhtpRespInsertSep: TIdHTTP;
    lblUmur: TLabel;
    edtNamaPeserta: TEdit;
    edtNoNik: TEdit;
    edtTglLahir: TEdit;
    edtUmur: TEdit;
    edtKelas: TEdit;
    edtKodeKelas: TEdit;
    edtJK: TEdit;
    edtNoBpjs: TEdit;
    edtStatusKepesertaan: TEdit;
    edtTglCetak: TEdit;
    edtJenisKartu: TEdit;
    lstKodeDiagnosa: TListBox;
    lstKodePPK: TListBox;
    edtKodePpk: TEdit;
    cbbCaraBayar: TComboBox;
    lblJenisNomer: TLabel;
    edtKodeKecamatan: TEdit;
    lstKodeKecamatan: TListBox;
    lstKodeDpjp: TListBox;
    edtKodeDpjp: TEdit;
    lblFASKESRUJUKAN: TLabel;
    cbbFASKES: TComboBox;
    cxdtdtTGLKEJADIANMANUAL: TcxDateEdit;
    grpPENJAMIN: TGroupBox;
    chkJasaraharja: TCheckBox;
    chkBPJSKetenagakerjaan: TCheckBox;
    chkTASPEN: TCheckBox;
    chkASABRI: TCheckBox;
    lblPenjamin: TLabel;
    btnUBAH: TButton;
    lblNORAWAT: TLabel;
    edtNORAWAT: TEdit;
    procedure FormShow(Sender: TObject);
    procedure cbbPELAYANANRJKMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure dtpTGLPELAYANANKeyPress(Sender: TObject; var Key: Char);
    procedure edtPPKASALPESERTAKeyPress(Sender: TObject; var Key: Char);
    procedure lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure btnCARIMANUALClick(Sender: TObject);
    procedure btnBARUMANUALClick(Sender: TObject);
    procedure edtDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtDIAGNOSAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstDPJPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTGLSEPMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtNORMMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstDiagnosaManualDblClick(Sender: TObject);
    procedure lstDiagnosaManualKeyPress(Sender: TObject; var Key: Char);
    procedure edtNOTELEPONEMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure mmoCATATANMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure cbbSTATUSKECELAKAANMANUALKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtPROVINSIMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstPROVINSIMANUALDblClick(Sender: TObject);
    procedure lstPROVINSIMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtKABKOTAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstKABKOTAMANUALDblClick(Sender: TObject);
    procedure lstKABKOTAMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure edtKECAMMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstKECMANUALKeyPress(Sender: TObject; var Key: Char);
    procedure lstKECMANUALDblClick(Sender: TObject);
    procedure btnSIMPANMANUALClick(Sender: TObject);
    procedure edtPPKASALPESERTADblClick(Sender: TObject);
    procedure edtPROVINSIMANUALClick(Sender: TObject);
    procedure edtKABKOTAMANUALClick(Sender: TObject);
    procedure edtKECAMMANUALClick(Sender: TObject);
    procedure btnTUTUPClick(Sender: TObject);
    procedure edtDPJPMANUALClick(Sender: TObject);
    procedure lstDPJPMANUALClick(Sender: TObject);
    procedure lstPPKASALPESERTAMANUALClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
    procedure tampilPpkRujukanManual;
    procedure tampildokterManual;
    procedure tampilDiagnosaManual();
    procedure tampilProvinsiManual;
    procedure tampilKabKotaManual;
    procedure tampilKecamatanManual;
  end;

var
  FRujukanManual: TFRujukanManual;

implementation

{$R *.dfm}
uses UKonseksiBridingBpjs,superobject, UPrintRespInsertSep, UPendaftaran,StrUtils,UResponseManual,UDataSimrs,
  ADODB, DB;

procedure TFRujukanManual.awal;
begin
  cbbPELAYANANRJKMANUAL.ItemIndex := 0;
  dtpTGLPELAYANAN.DateTime := Now;
  edtPPKASALPESERTA.Text := '';
  cbbFASKES.ItemIndex := 0;
  edtKodePpk.Text := '';
  //edtNOMERRUJUKANMANUAL.Text := '';
  cbbCaraBayar.Text := 'BPJS';
  chkEXECUTIVEMANUAL.Checked := False;
  edtSUBSPEALISMANUAL.Text := 'INSTALASI GAWAT DARURAT'; edtKodeSubSpealis.Text := 'IGD';
  edtDPJPMANUAL.Text := ''; edtKodeDpjp.Text := '';
  dtpTGLSEPMANUAL.DateTime := Now;
  ///edtNORMMANUAL.Text := '';
  edtDIAGNOSAMANUAL.Text := ''; edtKodeDiagnosa.Text := '';
  edtNOTELEPONEMANUAL.Text := '';
  mmoCATATANMANUAL.Text := '';
  cbbSTATUSKECELAKAANMANUAL.ItemIndex := 0;
  edtNORAWAT.Text := '';

  cxdtdtTGLKEJADIANMANUAL.Text := '00/00/0000';
  edtPROVINSIMANUAL.Text := '';
  edtKodeProvinsiManual.Clear;
  edtKABKOTAMANUAL.Text := '';
  edtKodeKabKotaManual.Clear;
  edtKECAMMANUAL.Text := '';
  edtKodeKecamatan.Clear;
  mmoKETMANUAL.Text := '';

  lblNAMAPESERTA.Caption := 'NAMA PESERTA :';
  lblNOBPJS.Caption := 'NIK :';
  lblNOMERBPJS.Caption := 'NO BPJS';
  lblTGLLAHIR.Caption := 'TGL LAHIR : ';
  lblUmur.Caption := 'UMUR :';
  lblSTATUSKEPESERTAAN.Caption := 'STATUS KEPESERTAAN :';
  lblKELAS.Caption := 'KELAS : ';
  lblFASKES.Caption := 'FASKES : ';
  lblTGLCETAK.Caption := 'TGL CETAK :';
  lblJENISKARTU.Caption := 'JENIS KARTU : ';

  edtNamaPeserta.Clear;
  edtJK.Clear;
  edtNoNik.Clear;
  edtTglLahir.Clear;
  edtUmur.Clear;
  edtKelas.Clear; edtKodeKelas.Clear;
  edtNoBpjs.Clear;
  edtStatusKepesertaan.Clear;
  edtTglCetak.Clear;
  edtJenisKartu.Clear;

  chkJasaraharja.Checked := False;
  chkBPJSKetenagakerjaan.Checked := False;
  chkTASPEN.Checked := False;
  chkASABRI.Checked := False;

end;

/// tampil ppk rujukan MANUAL
procedure TFRujukanManual.tampilPpkRujukanManual;
var
  get_url_ppkRjkManual,ppkRjkManual,faskesManual,asalRjkManual: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootPpkRjkManual,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmoPpkRujukan.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_ppkRjkManual := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPpkRujukan.php?';
    resp := TMemoryStream.Create;
    try
      ppkRjkManual := 'ppkrujukan='+edtPPKASALPESERTA.Text;
      if cbbFASKES.Text = 'FASKES 1' then
        faskesManual := '&faskes=1'
      else
        faskesManual := '&faskes=2';

      idhtpRujukan.Get(get_url_ppkRjkManual+ppkRjkManual+faskesManual, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoPpkRujukan.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstPPKASALPESERTAMANUAL.Items.Text := '';
    lstKodePPK.Items.Text := '';
    lstPPKASALPESERTAMANUAL.Visible := True;
    json_rootPpkRjkManual:=SO(FKonseksiBridingBpjs.mmoPpkRujukan.Text);
    if json_rootPpkRjkManual.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootPpkRjkManual.A['response.faskes'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootPpkRjkManual.A['response.faskes'].O[i];
    lstPPKASALPESERTAMANUAL.Items.Add(nama.S['nama']);
    lstKodePPK.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootPpkRjkManual.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil dokter melayani MANUAL
procedure TFRujukanManual.tampildokterManual;
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
      isiCbbFaskes := '1';

      pelayanan := 'pelayanan='+isiCbbFaskes;
      subSpeaslis := '&supSpesialis='+edtSUBSPEALISMANUAL.Text;
      idhtpdoktermelayani.Get(get_url_dokterlayani+pelayanan+subSpeaslis, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmodoktermelayani.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDPJPMANUAL.Items.Text := '';
    lstKodeDpjp.Items.Text := '';
    lstDPJPMANUAL.Visible := True;
    json_rootdokterL:=SO(FKonseksiBridingBpjs.mmodoktermelayani.Text);
    if json_rootdokterL.I['metaData.code'] = 200  then
    begin

      for i := 0 to json_rootdokterL.A['response.list'].Length-1 do
      begin
      //Load Data Ke Grid
      nama:=json_rootdokterL.A['response.list'].O[i];
      lstDPJPMANUAL.Items.Add(nama.S['nama']);
      lstKodeDpjp.Items.Add(nama.S['kode']);

       {j := lstDPJPMANUAL.Items.Count-1;
        while (j > 0) and
              (CompareText(edtDPJPMANUAL.Text,lstDPJPMANUAL.Items[j]) < 0) do Dec(j);
        lstDPJPMANUAL.ItemIndex := j;}
      end;
      
    END
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdokterL.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil diagnosa manual
procedure TFRujukanManual.tampilDiagnosaManual;
var
  get_url_diagnosa: string;
  resp: TMemoryStream;
  i,j:Integer;
  json_rootdiagnosa,nama:ISuperObject;
begin
    FKonseksiBridingBpjs.mmodiagnosa.Lines.Text := '';
    TIdHTTP.Create(nil);
    get_url_diagnosa := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilDiagnosa.php?diagnosa=';
    resp := TMemoryStream.Create;
    try
      idhtpDiagnosa.Get(get_url_diagnosa+edtDIAGNOSAMANUAL.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmodiagnosa.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    lstDiagnosaManual.Items.Text := '';
    lstDiagnosaManual.Visible := True;
    json_rootdiagnosa:=SO(FKonseksiBridingBpjs.mmodiagnosa.Text);
    if json_rootdiagnosa.I['metaData.code'] = 200  then
    begin

    for i := 0 to json_rootdiagnosa.A['response.diagnosa'].Length-1 do begin
    //Load Data Ke Grid
    nama:=json_rootdiagnosa.A['response.diagnosa'].O[i];
    lstDiagnosaManual.Items.Add(nama.S['nama']);
    lstKodeDiagnosa.Items.Add(nama.S['kode']);
    end;

    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_rootdiagnosa.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil provinsi MANUAL
procedure TFRujukanManual.tampilProvinsiManual;
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


    lstPROVINSIMANUAL.Items.Text := '';
    lstPROVINSIMANUAL.Visible := True;
    lstKodeProvinsiManual.Items.Text := '';
    json_root:=SO(FKonseksiBridingBpjs.mmoProvinsi.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iProvManual := 0 to json_root.A['response.list'].Length-1 do
    begin
      namaManual:=json_root.A['response.list'].O[iProvManual];
      //ShowMessage(nama.S['nama']);
      lstPROVINSIMANUAL.Items.Add(namaManual.S['nama']);
      lstKodeProvinsiManual.Items.Add(namaManual.S['kode'])
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kab kota manual
procedure TFRujukanManual.tampilKabKotaManual;
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
      idhtpKABKOTA.Get(get_url_kabkota+edtKodeProvinsiManual.Text, respprov);

      respprov.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoKOTAKABUPATEN.Lines.LoadFromStream(respprov);
    finally
      respprov.Free;
    end;


    lstKABKOTAMANUAL.Items.Text := '';
    lstKodeKabKotaManual.Items.Text := '';
    lstKABKOTAMANUAL.Visible := True;
    json_root:=SO(FKonseksiBridingBpjs.mmoKOTAKABUPATEN.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for iprov := 0 to json_root.A['response.list'].Length-1 do
    begin
      kabKota:=json_root.A['response.list'].O[iprov];
      //ShowMessage(nama.S['nama']);
      lstKABKOTAMANUAL.Items.Add(kabKota.S['nama']);
      lstKodeKabKotaManual.Items.Add(kabKota.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
end;

/// tampil kecamatan manual
procedure TFRujukanManual.tampilKecamatanManual;
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
      idhtpKABKOTA.Get(get_url_kecamatan+edtKodeKabKotaManual.Text, respkecm);

      respkecm.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmokecamatan.Lines.LoadFromStream(respkecm);
    finally
      respkecm.Free;
    end;


    lstKECMANUAL.Items.Text := '';
    lstKodeKecamatan.Items.Text := '';
    lstKECMANUAL.Visible := True;
    json_root:=SO(FKonseksiBridingBpjs.mmokecamatan.Lines.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
    for ikecam := 0 to json_root.A['response.list'].Length-1 do
    begin
      kecam:=json_root.A['response.list'].O[ikecam];
      //ShowMessage(nama.S['nama']);
      lstKECMANUAL.Items.Add(kecam.S['nama']);
      lstKodeKecamatan.Items.Add(kecam.S['kode']);
    end;
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
    
end;

procedure TFRujukanManual.FormShow(Sender: TObject);
begin
  awal;
end;

procedure TFRujukanManual.cbbPELAYANANRJKMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    dtpTGLPELAYANAN.SetFocus;
  end;
end;

procedure TFRujukanManual.dtpTGLPELAYANANKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtPPKASALPESERTA.SetFocus;
  end;
end;

procedure TFRujukanManual.edtPPKASALPESERTAKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if (edtPPKASALPESERTA.Text='') then
    begin
      MessageDlg('ASAL RUJUKAN BELUM DI ISI...!',mtInformation,[mbOK],0);
      edtPPKASALPESERTA.SetFocus;
    end
    else
    begin
      tampilPpkRujukanManual;
      lstPPKASALPESERTAMANUAL.SetFocus;
    end
  end;
end;

procedure TFRujukanManual.lstPPKASALPESERTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtPPKASALPESERTA.Text := lstPPKASALPESERTAMANUAL.Items[lstPPKASALPESERTAMANUAL.itemindex];
    edtKodePpk.Text := lstKodePPK.Items[lstPPKASALPESERTAMANUAL.itemindex];
    lstPPKASALPESERTAMANUAL.Visible := False;
    edtNOMERRUJUKANMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.btnCARIMANUALClick(Sender: TObject);
VAR
  get_url: string;
  resp: TMemoryStream;
  json_root:ISuperObject;
begin
IF (edtNOMERRUJUKANMANUAL.Text='') then
  MessageDlg('Nomer Belum Di Isi....!',mtInformation,[mbCancel],0)
else
  begin
    FKonseksiBridingBpjs.mmoPencarianSep.Lines.Text := '';
    TIdHTTP.Create(nil);
    if cbbCaraBayar.Text = 'BPJS'  then
    get_url :=FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPencarianBpjs.php?noBpjs='
    else
    get_url := FKonseksiBridingBpjs.edtlinkurl.Text+'tampilPencarianNik.php?noBpjs=';
    resp := TMemoryStream.Create;
    try
      idhtseppencarian.Get(get_url+edtNOMERRUJUKANMANUAL.Text, resp);

      resp.Position := 0; // <-- add this!!
      FKonseksiBridingBpjs.mmoPencarianSep.Lines.LoadFromStream(resp);
    finally
      resp.Free;
    end;

    json_root:=SO(FKonseksiBridingBpjs.mmoPencarianSep.Text);
    if json_root.S['metaData.code'] = '200'  then
    begin
      edtNamaPeserta.Text := json_root.S['response.peserta.nama'];
      edtJK.Text :=json_root.S['response.peserta.sex'];
      edtNoNik.Text := json_root.S['response.peserta.nik'];
      edtNoBpjs.Text := json_root.S['response.peserta.noKartu'];
      edtTglLahir.Text := json_root.S['response.peserta.tglLahir'];
      edtUmur.Text := json_root.S['response.peserta.umur.umurSekarang'];
      edtStatusKepesertaan.Text := json_root.S['response.peserta.statusPeserta.keterangan'];
      edtKelas.Text := json_root.S['response.peserta.hakKelas.keterangan']; edtKodeKelas.Text := json_root.S['response.peserta.hakKelas.kode'];
      lblFASKES.Caption := 'FASKES : '+json_root.S['response.peserta.provUmum.nmProvider'];
      lblTGLCETAK.Caption := 'TGL CETAK :'+json_root.S['response.peserta.tglKunjungan'];
      edtJenisKartu.Text := json_root.S['response.peserta.jenispeserta.keterangan'];

      edtNORMMANUAL.Text := json_root.S['response.peserta.mr.noMR'];
      edtNOTELEPONEMANUAL.Text := json_root.S['response.peserta.mr.noTelepon'];
      
    end
    else
    MessageDlg('DATA TIDAK DI TEMUKAN...!'+json_root.S['metadata.message'],mtInformation,[mbOK],0);
  end
end;

procedure TFRujukanManual.btnBARUMANUALClick(Sender: TObject);
begin
  awal;
  edtPPKASALPESERTA.Clear;
  edtNORMMANUAL.Clear;
end;

procedure TFRujukanManual.edtDPJPMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    //dtpTGLSEPMANUAL.SetFocus;
    tampildokterManual;
    lstDPJPMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtDIAGNOSAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if edtDIAGNOSAMANUAL.Text = '' then
      MessageDlg('Data Diagnosa Harus Di Isi....!',mtInformation,[mbOK],0)
    else
    begin
    tampilDiagnosaManual;
    lstDiagnosaManual.SetFocus;
    //edtNOTELEPONEMANUAL.SetFocus;
    end;
  end;
end;

procedure TFRujukanManual.lstDPJPMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtDPJPMANUAL.Text := lstDPJPMANUAL.Items[lstDPJPMANUAL.itemindex];
    edtKodeDpjp.Text := lstKodeDpjp.Items[lstDPJPMANUAL.itemindex];
    lstDPJPMANUAL.Visible := False;
    edtNORMMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.dtpTGLSEPMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtNORMMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtNORMMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    chkPESERTAMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.lstDiagnosaManualDblClick(Sender: TObject);
begin
  edtDIAGNOSAMANUAL.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
  edtKodeDiagnosa.Text := lstKodeDiagnosa.Items[lstDiagnosaManual.Itemindex];
  lstDiagnosaManual.Visible := False;
  edtNOTELEPONEMANUAL.SetFocus;
end;

procedure TFRujukanManual.lstDiagnosaManualKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    edtDIAGNOSAMANUAL.Text := lstDiagnosaManual.Items[lstDiagnosaManual.Itemindex];
    edtKodeDiagnosa.Text := lstKodeDiagnosa.Items[lstDiagnosaManual.Itemindex];
    lstDiagnosaManual.Visible := False;
    edtNOTELEPONEMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtNOTELEPONEMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    mmoCATATANMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.mmoCATATANMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cbbSTATUSKECELAKAANMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.cbbSTATUSKECELAKAANMANUALKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    btnSIMPANMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtPROVINSIMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilProvinsiManual;
    lstPROVINSIMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.lstPROVINSIMANUALDblClick(Sender: TObject);
begin
  edtPROVINSIMANUAL.Text := lstPROVINSIMANUAL.Items[lstPROVINSIMANUAL.itemindex];
  edtKodeProvinsiManual.Text := lstKodeProvinsiManual.Items[lstPROVINSIMANUAL.itemindex];
  lstPROVINSIMANUAL.Visible := False;
  edtKABKOTAMANUAL.SetFocus;
end;

procedure TFRujukanManual.lstPROVINSIMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
     edtPROVINSIMANUAL.Text := lstPROVINSIMANUAL.Items[lstPROVINSIMANUAL.itemindex];
     edtKodeProvinsiManual.Text := lstKodeProvinsiManual.Items[lstPROVINSIMANUAL.itemindex];
     lstPROVINSIMANUAL.Visible := False;
     edtKABKOTAMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtKABKOTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKabKotaManual;
    lstKABKOTAMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.lstKABKOTAMANUALDblClick(Sender: TObject);
begin
 edtKABKOTAMANUAL.Text := lstKABKOTAMANUAL.Items[lstKABKOTAMANUAL.itemindex];
  edtKodeKabKotaManual.Text := lstKodeKabKotaManual.Items[lstKABKOTAMANUAL.itemindex];
  lstKABKOTAMANUAL.Visible := False;
  edtKECAMMANUAL.SetFocus;
end;

procedure TFRujukanManual.lstKABKOTAMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKABKOTAMANUAL.Text := lstKABKOTAMANUAL.Items[lstKABKOTAMANUAL.itemindex];
    edtKodeKabKotaManual.Text := lstKodeKabKotaManual.Items[lstKABKOTAMANUAL.itemindex];
    lstKABKOTAMANUAL.Visible := False;
    edtKECAMMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.edtKECAMMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    tampilKecamatanManual;
    lstKECMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.lstKECMANUALKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    edtKECAMMANUAL.Text := lstKECMANUAL.Items[lstKECMANUAL.itemindex];
    edtKodeKecamatan.Text := lstKodeKecamatan.Items[lstKECMANUAL.itemindex];
    lstKECMANUAL.Visible := False;
    mmoCATATANMANUAL.SetFocus;
  end;
end;

procedure TFRujukanManual.lstKECMANUALDblClick(Sender: TObject);
begin
  edtKECAMMANUAL.Text := lstKECMANUAL.Items[lstKECMANUAL.itemindex];
  edtKodeKecamatan.Text := lstKodeKecamatan.Items[lstKECMANUAL.itemindex];
  lstKECMANUAL.Visible := False;
  mmoCATATANMANUAL.SetFocus;
end;

procedure TFRujukanManual.btnSIMPANMANUALClick(Sender: TObject);
var
  get_urlRespSep,IsiJnsPelayanan,Isieksekutif,IsilakaLantas,isiCob,isiPenjamin,isiFaskes,
  noKartu,tglSep,
  ppkPelayanan,jnsPelayanan,klsRawat,
  noMR,asalRujukan,tglRujukan,noRujukan,ppkRujukan,
  catatan,diagAwal,tujuan,eksekutif,
  cob,katarak,lakaLantas,penjamin,tglKejadian,
  keterangan,suplesi,noSepSuplesi,kdPropinsi,kdKabupaten,kdKecamatan,
  noSurat,kodeDPJP,noTelp,user,

  noSep,noRawat: string;

  resp: TMemoryStream;
  json_rootRespSep:ISuperObject;
begin
if (edtSUBSPEALISMANUAL.Text='') then
    MessageDlg('Data Sub Spealis Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (edtDPJPMANUAL.Text='') then
    MessageDlg('Data DPJP Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (edtDIAGNOSAMANUAL.Text='') then
    MessageDlg('Data Diagnosa Wajib Di Isi...!',mtWarning,[mbOK],0)
else IF (edtNORAWAT.Text='') then
    begin
      MessageDlg('NO RAWAT TIDAK BOLEH KOSONG...!, SILAHKAN KLIK TOMBOL UNTUK MENGISI',mtWarning,[mbOK],0);
      edtNORAWAT.SetFocus;
    end
else
    begin
      /// link krim data ke php
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

        if chkEXECUTIVEMANUAL.Checked = True then
          Isieksekutif := '1'
        else
          Isieksekutif := '0';

        if cbbSTATUSKECELAKAANMANUAL.Text = 'BUKAN KECELAKAAN' then
          IsilakaLantas := '0'
        else
          IsilakaLantas := '1';

        if chkPESERTAMANUAL.Checked  = True then
            isiCob := '1'
        else
            isiCob := '0';

        /// variabel get krim data
        noKartu :='noKartu='+edtNoBpjs.Text;
        tglSep := '&tglSep='+FormatDateTime('yyyy-MM-dd',dtpTGLSEPMANUAL.Date);
        ppkPelayanan := '&ppkPelayanan='+edtKodePpk.Text;
        jnsPelayanan := '&jnsPelayanan='+IsiJnsPelayanan;
        klsRawat := '&klsRawat='+edtKodeKelas.Text;
        noMR := '&noMR='+edtNORMMANUAL.Text;
        asalRujukan := '&asalRujukan='+isiFaskes;
        tglRujukan := '&tglRujukan='+FormatDateTime('yyyy-MM-dd',dtpTGLSEPMANUAL.Date);
        noRujukan := '&noRujukan='+edtNOMERRUJUKANMANUAL.Text;
        ppkRujukan := '&ppkRujukan='+edtKodePpk.Text;
        catatan := '&catatan='+mmoCATATANMANUAL.Text;
        diagAwal := '&diagAwal='+edtKodeDiagnosa.Text;
        tujuan := '&tujuan='+edtKodeSubSpealis.Text;
        eksekutif := '&eksekutif='+Isieksekutif;
        cob := '&cob='+isiCob;
        katarak := '&katarak=0';
        lakaLantas := '&lakaLantas='+IsilakaLantas;
        penjamin := '&penjamin='+isiPenjamin; /// belum ketemu
        tglKejadian := '&tglKejadian='+FormatDateTime('yyyy-MM-dd',cxdtdtTGLKEJADIANMANUAL.EditValue);
        keterangan := '&keterangan='+mmoKETMANUAL.Text;
        suplesi := '&suplesi='+IsilakaLantas;
        noSepSuplesi := '&noSepsuplesi='+edtNOMERRUJUKANMANUAL.Text;
        kdPropinsi := '&kdProvinsi='+edtKodeProvinsiManual.Text;
        kdKabupaten := '&kdKabupaten='+edtKodeKabKotaManual.Text;
        kdKecamatan := '&kdKecamatan='+edtKodeKecamatan.Text;
        noSurat := '&noSurat='+edtNOMERRUJUKANMANUAL.Text;
        kodeDPJP := '&kodeDPJP='+edtKodeDpjp.Text;
        noTelp := '&noTelp='+edtNOTELEPONEMANUAL.Text;
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
                          '"'+FormatDateTime('yyyy-MM-dd',dtpTGLSEPMANUAL.Date)+'","'+edtNOMERRUJUKANMANUAL.Text+'","'+edtKodePpk.Text+'",'+
                          '"'+edtPPKASALPESERTA.Text+'","'+edtKodePpk.Text+'","'+edtPPKASALPESERTA.Text+'",'+
                          '"'+IsiJnsPelayanan+'","'+mmoCATATANMANUAL.Text+'","'+edtKodeDiagnosa.Text+'","'+edtDIAGNOSAMANUAL.Text+'","'+edtKodeSubSpealis.Text+'",'+
                          '"'+edtSUBSPEALISMANUAL.Text+'","'+edtKelas.Text+'","'+IsilakaLantas+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+edtNORMMANUAL.Text+'",'+
                          '"'+edtNamaPeserta.Text+'","'+edtTglLahir.Text+'","'+edtNOMERRUJUKANMANUAL.Text+'","'+edtJK.Text+'","'+edtNoBpjs.Text+'",'+
                          '"'+isiFaskes+'","'+Isieksekutif+'","'+isiCob+'","'+isiPenjamin+'","'+edtNOTELEPONEMANUAL.Text+'","0","'+FormatDateTime('yyyy-MM-dd',cxdtdtTGLKEJADIANMANUAL.EditValue)+'",'+
                          '"'+mmoKETMANUAL.Text+'","'+IsilakaLantas+'","'+noSep+'","'+edtKodeProvinsiManual.Text+'","'+edtPROVINSIMANUAL.Text+'",'+
                          '"'+edtKodeKabKotaManual.Text+'","'+edtKABKOTAMANUAL.Text+'","'+edtKodeKecamatan.Text+'","'+edtKECAMMANUAL.Text+'","'+noSep+'",'+
                          '"'+edtKodeDpjp.Text+'","'+edtDPJPMANUAL.Text+'")';
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

procedure TFRujukanManual.edtPPKASALPESERTADblClick(Sender: TObject);
begin
  edtPPKASALPESERTA.Clear; edtKodePpk.Clear;
end;

procedure TFRujukanManual.edtPROVINSIMANUALClick(Sender: TObject);
begin
  tampilProvinsiManual;
  lstPROVINSIMANUAL.SetFocus;
end;

procedure TFRujukanManual.edtKABKOTAMANUALClick(Sender: TObject);
begin
  tampilKabKotaManual;
  lstKABKOTAMANUAL.SetFocus;
end;

procedure TFRujukanManual.edtKECAMMANUALClick(Sender: TObject);
begin
  tampilKecamatanManual;
  lstKECMANUAL.SetFocus;
end;

procedure TFRujukanManual.btnTUTUPClick(Sender: TObject);
begin
  Close;
end;

procedure TFRujukanManual.edtDPJPMANUALClick(Sender: TObject);
begin
tampildokterManual;
lstDPJPMANUAL.SetFocus;
end;

procedure TFRujukanManual.lstDPJPMANUALClick(Sender: TObject);
begin
 edtDPJPMANUAL.Text := lstDPJPMANUAL.Items[lstDPJPMANUAL.itemindex];
 edtKodeDpjp.Text := lstKodeDpjp.Items[lstDPJPMANUAL.itemindex];
 lstDPJPMANUAL.Visible := False;
end;

procedure TFRujukanManual.lstPPKASALPESERTAMANUALClick(Sender: TObject);
begin
    edtPPKASALPESERTA.Text := lstPPKASALPESERTAMANUAL.Items[lstPPKASALPESERTAMANUAL.itemindex];
    edtKodePpk.Text := lstKodePPK.Items[lstPPKASALPESERTAMANUAL.itemindex];
    lstPPKASALPESERTAMANUAL.Visible := False;
    edtNOMERRUJUKANMANUAL.SetFocus;
end;

end.
