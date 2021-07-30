unit UDataPasienBaruIgd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxLabel, cxMemo, cxCurrencyEdit,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, Grids;

type
  TFDataPasienBaruIgd = class(TForm)
    pnlTegah: TPanel;
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
    lblNoRekamedis: TLabel;
    lblAgama: TLabel;
    lbl2: TLabel;
    edtNmLengkap: TEdit;
    edtTahun: TEdit;
    edtKodePos: TEdit;
    dtpTglLahir: TDateTimePicker;
    edtNoRekamedis: TEdit;
    cbbPendidikan: TcxLookupComboBox;
    cbbPekerjaan: TcxLookupComboBox;
    cbbBahasa: TcxLookupComboBox;
    cbbAgama: TcxLookupComboBox;
    cbbJenisKelamin: TcxComboBox;
    cxcrncydtNoTelp: TcxCurrencyEdit;
    cxmAlamat: TcxMemo;
    edtNoIdentitas: TEdit;
    grpDetailDataPasien: TGroupBox;
    grpPenjamin: TGroupBox;
    lblPenjamin: TLabel;
    lblNoKartu: TLabel;
    lblNoSEP: TLabel;
    lblAtasNama: TLabel;
    lblCaraBayar: TLabel;
    edtNoKartu: TEdit;
    edtNoSep: TEdit;
    edtAtasNama: TEdit;
    cbbPenjamin: TcxLookupComboBox;
    cbbCaraBayar: TcxLookupComboBox;
    grp1: TGroupBox;
    lblNoRekamedisDetail: TLabel;
    lblNamaPenanggung: TLabel;
    lblHubungan: TLabel;
    lblAlamatdetail: TLabel;
    edtNoRekamedisDetail: TEdit;
    edtNamaPenanggungJawab: TEdit;
    cxmDetailAlamatPasien: TcxMemo;
    cxlblNoTelepone: TcxLabel;
    cxcrncydtNoTeleponeDetail: TcxCurrencyEdit;
    cbbHubunganKeluarga: TcxComboBox;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    cxtxtdtKecamatanNew: TcxTextEdit;
    cxtxtdtKabKotaNew: TcxTextEdit;
    cxtxtdtProvinsiNew: TcxTextEdit;
    edtKelurahanDesa: TEdit;
    strngrdAlamat: TStringGrid;
    edtTempatLahir: TEdit;
    strngrdTempatLahir: TStringGrid;
    cxlblPencarianKelurahan: TcxLabel;
    edtPencarianKelurahan: TcxTextEdit;
    lblDataLengkap: TLabel;
    lbl3: TLabel;
    cbbMaritalStatus: TcxLookupComboBox;
    /// procedure tambahan
    procedure AngkaSaja(Sender: TObject; var Key: Char);
    procedure HurufSaja(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtNmLengkapKeyPress(Sender: TObject; var Key: Char);
    procedure cbbTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTglLahirChange(Sender: TObject);
    procedure dtpTglLahirKeyPress(Sender: TObject; var Key: Char);
    procedure cbbJenisKelaminKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPendidikanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPekerjaanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbAgamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBahasaKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtNoTelpKeyPress(Sender: TObject; var Key: Char);
    procedure cxmAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure cbbKelurahanKeyPress(Sender: TObject; var Key: Char);
    procedure edtKodePosKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaPenanggungJawabKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbHubunganKeluargaKeyPress(Sender: TObject; var Key: Char);
    procedure cxmDetailAlamatPasienKeyPress(Sender: TObject;
      var Key: Char);
    procedure cxcrncydtNoTeleponeDetailKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure pnlKeluarClick(Sender: TObject);
    procedure cbbKelurahanNewDblClick(Sender: TObject);
    procedure dbgrdhAlamatCellMouseClick(Grid: TCustomGridEh;
      Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure strngrdAlamatDblClick(Sender: TObject);
    procedure strngrdAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdAlamatSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edtTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure edtTempatLahirKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdTempatLahirDblClick(Sender: TObject);
    procedure strngrdTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure edtPencarianKelurahanKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtPencarianKelurahanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPencarianKelurahanPropertiesChange(Sender: TObject);
    procedure strngrdTempatLahirSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure cbbMaritalStatusKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersihdata;
    procedure bersihdata1;
    procedure refreshTmplAlamat;
    procedure aturKolomAlamat;
    procedure ambilDataAlamnat;
    procedure tampilData;
    procedure aturKolomKota;
    procedure ambilDataKota;
    procedure tampilDataKota;
  end;

var
  FDataPasienBaruIgd: TFDataPasienBaruIgd;
  iThn, iBln, iHari: Word;

implementation

{$R *.dfm}
uses UDataSImrs,UPendaftaranPasienIgdRanap,UPendaftaran, ADODB, DB, DateUtils;

procedure TFDataPasienBaruIgd.AngkaSaja(Sender: TObject; var Key: Char);
begin
if not (key in['0'..'9',#8,#13,#32]) then
 begin
 key:=#0;
 showmessage('inputan hanya angka bro..');
 end;
if Key=#13 then
  begin
  key:=#0;
  edtNmLengkap.SetFocus;
  end
end;
 
procedure TFDataPasienBaruIgd.HurufSaja(Sender: TObject; var Key: Char);
begin
if not (key in['a'..'z','A'..'Z',#8,#13,#32]) then
 begin
 key:=#0;
 showmessage('inputan hanya huruf bro..');
 end;
end;

procedure umur(ThnLama, ThnBaru:TDate);
begin
iThn:=YearsBetween(ThnBaru, ThnLama);
if (DayOf(ThnBaru) = DayOf(ThnLama)) and (MonthOf(ThnBaru) = MonthOf(ThnLama))
and (YearOf(ThnLama) <> YearOf(ThnBaru))
then inc(iThn);
ThnLama:=IncYear(ThnLama, iThn);
iBln:=MonthsBetween(ThnBaru, ThnLama);
ThnLama:=IncMonth(ThnLama, iBln);
iHari:=DaysBetween(ThnBaru, ThnLama);
end;

procedure TFDataPasienBaruIgd.bersihdata;
begin
  //edtNoRekamedis.Clear;
  edtNoIdentitas.Text:='0';
  edtNoIdentitas.SetFocus;
  edtNmLengkap.Clear;
  edtTempatLahir.Text := '';
  dtpTglLahir.Date := Now;
  edtTahun.Text := '';
  cbbJenisKelamin.Text := '';
  cbbPendidikan.EditValue := 'p1';
  cbbPekerjaan.Text := '';
  cbbMaritalStatus.Text := '';
  cxmAlamat.Clear;
  cbbBahasa.Text := '';
  edtKodePos.Clear;
  cbbBahasa.Text := '';
  cbbAgama.Text := '';
  cxcrncydtNoTelp.Value := 0;

  cbbCaraBayar.EditText := '';
  cbbPenjamin.EditText := '';

  edtNoKartu.Text := '';
  edtNoSep.Text := '';
  edtAtasNama.Text := '';

  edtPencarianKelurahan.Text := '';

  edtKelurahanDesa.Text := '';
  cxtxtdtKecamatanNew.Text := '';
  cxtxtdtKabKotaNew.Text := '';
  cxtxtdtProvinsiNew.Text := '';
  
  
 {with DataSimrs.qryPasien do
 begin
   Close;
   SQL.Clear;
   SQL.Text:='select * from t_pasien';
   Open;
 end;}

 with DataSimrs.qryNoRmPasien do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from normpasien';
   Open;
 end;
end;

procedure TFDataPasienBaruIgd.bersihdata1;
begin
  edtNoRekamedisDetail.Clear;
  edtNamaPenanggungJawab.Clear;
  cbbHubunganKeluarga.Text := '';
  cxmAlamat.Clear;
end;

procedure TFDataPasienBaruIgd.refreshTmplAlamat;
begin
  {cbbKelurahanNew.Text := '';
  cxtxtdtKecamatanNew.Text := '';
  cxtxtdtKabKotaNew.Text := '';
  cxtxtdtProvinsiNew.Text := '';
  edtKodePos.Text := '';}
  
  with DataSimrs.qryt_allindonesia do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select id,provinsi,kabKota, kabKotaNama, kecamatan,kelurahan, kodePos from t_allindonesia ';
    Open;
  end;
end;

procedure TFDataPasienBaruIgd.aturKolomAlamat;
begin
 with strngrdAlamat do
 begin
    ColCount :=6;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];

    Cells[0,0]:='No.';
    Cells[1,0]:= 'kelurahan ';
    Cells[2,0]:=' Kecamatan ';
    Cells[3,0]:='Kota ';
    Cells[4,0]:='Provinsi ';
    Cells[5,0]:='Kode Pos ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=200;
    ColWidths[3]:=200;
    ColWidths[4]:=150;
    ColWidths[5]:=100;
 end;
end;

procedure TFDataPasienBaruIgd.ambilDataAlamnat;
begin
  with DataSimrs.qryt_allindonesia do
  begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_allindonesia where kelurahan like "'+edtPencarianKelurahan.Text+'%" limit 50';
      Open;
  end;
end;

procedure TFDataPasienBaruIgd.tampilData;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdAlamat.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdAlamat.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdAlamat.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kelurahan').AsString;
      strngrdAlamat.Cells[2,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kecamatan').AsString;
      strngrdAlamat.Cells[3,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kabKota').AsString +' '+DataSimrs.qryt_allindonesia.FieldByName('kabKotaNama').AsString;
      strngrdAlamat.Cells[4,i+1] := DataSimrs.qryt_allindonesia.FieldByName('provinsi').AsString;
      strngrdAlamat.Cells[5,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kodePos').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFDataPasienBaruIgd.aturKolomKota;
begin
 with strngrdTempatLahir do
 begin
    ColCount :=2;
    RowCount :=2;
    FixedCols:=1;
    DefaultROwHeight:=18;
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect];

    Cells[0,0]:='No.';
    Cells[1,0]:='Kota ';

      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=300;
 end;
end;

procedure TFDataPasienBaruIgd.ambilDataKota;
begin
  with DataSimrs.qryt_allindonesia do
  begin
      Active := True;
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT DISTINCT kabkotaNama FROM t_allindonesia where kabkotaNama like "'+edtTempatLahir.Text+'%"';
      Open;
  end;
end;

procedure TFDataPasienBaruIgd.tampilDataKota;
var
  i:Integer;
begin
  if DataSimrs.qryt_allindonesia.RecordCount<>0 then
  begin
    strngrdTempatLahir.RowCount := DataSimrs.qryt_allindonesia.RecordCount+1;
    for i:=0 to DataSimrs.qryt_allindonesia.RecordCount-1 do
    begin
      strngrdTempatLahir.Cells[0,i+1] := IntToStr(i+1)+'.';
      strngrdTempatLahir.Cells[1,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kabkotaNama').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFDataPasienBaruIgd.btnSimpanClick(Sender: TObject);
var
  tglLahir,tgldaftar,Nourut : String;
  i:Integer;
begin
if (edtNoIdentitas.Text='0') then
    MessageDlg('No Identitas Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (edtNmLengkap.Text='') then
    MessageDlg('Nama Lengkap Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (edtTempatLahir.Text='') then
     MessageDlg('Tempat Lahir Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (cbbJenisKelamin.Text='') then
    MessageDlg('Jenis Kelamin Wajib Di Isi...!',mtWarning,[mbOK],0)
else if (cbbCaraBayar.Text='') or (cbbPenjamin.Text='') then
      MessageDlg('Cara Bayar/Penjamin Wajib Di Isi...!',mtWarning,[mbok],0)
    else
    begin
      /// proses data pasien IGD
        tglLahir := FormatDateTime('yyyy-MM-dd',dtpTglLahir.Date);
        tgldaftar := FormatDateTime('yyyy-MM-dd hh:nn:ss',Now);

        /// refresh no rekamedis
         with DataSimrs.qryNoRmPasien do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'select * from normpasien';
         Open;
        end;

        //no rekamedis pasien
         if DataSimrs.qryNoRmPasien.Fields[0].AsString = '' then
          Nourut := '00000001'
        else
        if DataSimrs.qryNoRmPasien.Fields[0].AsString = '99999999' then
          MessageDlg('Data RM Ini Sudah  !!',mtError,[mbOK],0)
        else
          Nourut := IntToStr(DataSimrs.qryNoRmPasien.Fields[0].AsInteger + 1);
        if length(Nourut) < 8 then
        begin
          for i := length(Nourut) to 7 do
            Nourut := '0' + Nourut;
        end;

       /// insert into tabel pasien
        with DataSimrs.qryVwPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_pasien (noRekamedis,nmPasien,tempatLahir,tglLahir,jenisKelamin,agama,alamat,pendidikan,'+
                      'pekerjaan,kelurahan,kecamatan,kabupaten,provinsi,kdPos,bahasa,noKtp,tglDaftar,caraBayar,'+
                      'penjamin,noKartuPenjamin,noSepPenjamin,atasNamaPenjamin,noTelepone,noIdentitasKtp,createDate,username,pengguna,maritalStatus)'+
                      'values ("'+Nourut+'","'+edtNmLengkap.Text+'","'+edtTempatLahir.Text+'","'+tglLahir+'",'+
                      '"'+cbbJenisKelamin.Text+'","'+cbbAgama.Text+'","'+cxmAlamat.Text+'","'+cbbPendidikan.Text+'",'+
                      '"'+cbbPekerjaan.Text+'","'+edtKelurahanDesa.Text+'","'+cxtxtdtKecamatanNew.Text+'",'+
                      '"'+cxtxtdtKabKotaNew.Text+'","'+cxtxtdtProvinsiNew.Text+'","'+edtKodePos.Text+'",'+
                      '"'+cbbBahasa.Text+'","'+edtNoIdentitas.Text+'","'+tgldaftar+'",'+
                      '"'+cbbCaraBayar.Text+'","'+cbbPenjamin.Text+'","'+edtNoKartu.Text+'","'+edtNoSep.Text+'",'+
                      '"'+edtAtasNama.Text+'","'+cxcrncydtNoTelp.Text+'","'+edtNoIdentitas.Text+'",'+
                      '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'","'+cbbMaritalStatus.Text+'")';
          ExecSQL;
          SQL.Text:='select noRekamedis from t_pasien';
          Open;
        end;

        /// pengujian data t_detailpasien
        if DataSimrs.qryDetailPasien.Locate('noRekamedis',Nourut,[]) then
         begin
          /// update detail pasien
          with DataSimrs.qryDetailPasien do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update t_detailpasien set namaPenanggungJawab="'+edtNamaPenanggungJawab.Text+'",'+
                        'hubungan="'+cxmDetailAlamatPasien.Text+'",hubungan="'+cbbHubunganKeluarga.Text+'",'+
                        'alamat="'+cxmDetailAlamatPasien.Text+'",kelurahan="'+edtKelurahanDesa.Text+'",'+
                        'kecamatan="'+cxtxtdtKecamatanNew.Text+'",kabupaten="'+cxtxtdtKabKotaNew.Text+'",'+
                        'provinsi="'+cxtxtdtProvinsiNew.Text+',kodePos="'+edtKodePos.Text+'",'+
                        'noTeleponeDetail="'+cxcrncydtNoTeleponeDetail.Text+'" where noRekamedis="'+Nourut+'"';
            ExecSQL;
            SQL.Text := 'select noRekamedis from t_detailpasien';
            Open;
          end

         end
         else
         begin
          /// insert detail pasien
          with DataSimrs.qryDetailPasien do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'insert into t_detailpasien (noRekamedis,namaPenanggungJawab,hubungan,alamat,'+
                        'kelurahan,kecamatan,kabupaten,provinsi,kodePos,noTeleponeDetail,createDate,username,pengguna)'+
                        'values ("'+Nourut+'","'+edtNamaPenanggungJawab.Text+'","'+cbbHubunganKeluarga.Text+'","'+cxmDetailAlamatPasien.Text+'","'+edtKelurahanDesa.Text+'",'+
                        '"'+cxtxtdtKecamatanNew.Text+'","'+cxtxtdtKabKotaNew.Text+'","'+cxtxtdtProvinsiNew.Text+'",'+
                        '"'+edtKodePos.Text+'","'+cxcrncydtNoTeleponeDetail.Text+'","'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'")';
            ExecSQL;
            SQL.Text := 'select noRekamedis from t_detailpasien';
            Open;
          end;
         end;

        ///ambil data
        with DataSimrs.qryNoRmPasien do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'select * from normpasien';
         Open;
        end;
        
        ///ambil data dari pasien IGD
        FPendaftaranPasienRawatInap.edtNoIdentitiasKtpUgd.Text := edtNoIdentitas.Text;
        FPendaftaranPasienRawatInap.edtNoRekamedisUgd.Text := Nourut;
        FPendaftaranPasienRawatInap.edtNmLengkapUgd.Text := edtNmLengkap.Text;
        FPendaftaranPasienRawatInap.edtTempatLahirUgd.Text := edtTempatLahir.Text;
        FPendaftaranPasienRawatInap.edtTanggalLahirUgd.Text := FormatDateTime('dd-MM-yyyy',dtpTglLahir.Date);
        FPendaftaranPasienRawatInap.edtTahunUgd.Text := edtTahun.Text;
        FPendaftaranPasienRawatInap.edtJkUgd.Text := cbbJenisKelamin.Text;
        FPendaftaranPasienRawatInap.edtPendidikanUgd.Text := cbbPendidikan.Text;
        FPendaftaranPasienRawatInap.edtPekerjaanUgd.Text := cbbPekerjaan.Text;
        FPendaftaranPasienRawatInap.edtMaritalStatuUgd.Text := cbbMaritalStatus.Text;
        FPendaftaranPasienRawatInap.mmoAlamatUgd.Text := cxmAlamat.Text;
        FPendaftaranPasienRawatInap.edtKelurahanUgd.Text := edtKelurahanDesa.Text;
        FPendaftaranPasienRawatInap.edtKecamatanUgd.Text := cxtxtdtKecamatanNew.Text;
        FPendaftaranPasienRawatInap.edtKabupatenUgd.Text := cxtxtdtKabKotaNew.Text;
        FPendaftaranPasienRawatInap.edtProvinsiUgd.Text := cxtxtdtProvinsiNew.Text;
        FPendaftaranPasienRawatInap.edtKodePosUgd.Text := edtKodePos.Text;
        FPendaftaranPasienRawatInap.edtAgamaUgd.Text := cbbAgama.Text;
        FPendaftaranPasienRawatInap.edtBahasaUgd.Text := cbbBahasa.Text;
        FPendaftaranPasienRawatInap.edtNoTeleponeIgd.Text := cxcrncydtNoTelp.Text;
        FPendaftaranPasienRawatInap.cbbCaraBayarUgd.Text := cbbCaraBayar.Text;
        FPendaftaranPasienRawatInap.cbbPenjaminUgd.Text := cbbPenjamin.Text;
        FPendaftaranPasienRawatInap.edtNoKartuUgd.Text := edtNoKartu.Text;
        FPendaftaranPasienRawatInap.edtNoSepUgd.Text := edtNoSep.Text;
        FPendaftaranPasienRawatInap.edtNoKartuUgd.Text := edtNoKartu.Text;
        FPendaftaranPasienRawatInap.cbbAsalPasienUgd.SetFocus;

         MessageDlg('Data Berhasil di Proses...!',mtInformation,[mbok],0);
         Close;
    end;
end;

procedure TFDataPasienBaruIgd.btnBaruClick(Sender: TObject);
begin
   bersihdata; bersihdata1;
end;

procedure TFDataPasienBaruIgd.FormCreate(Sender: TObject);
begin
FDataPasienBaruIgd.KeyPreview:=True;
end;

procedure TFDataPasienBaruIgd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFDataPasienBaruIgd.FormShow(Sender: TObject);
begin
bersihdata; bersihdata1;
end;

procedure TFDataPasienBaruIgd.edtNmLengkapKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  edtTempatLahir.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.cbbTempatLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    dtpTglLahir.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.dtpTglLahirChange(Sender: TObject);
var
  sTgl, LTgl : TDateTime;
begin
  sTgl := Date;
  LTgl := dtpTglLahir.Date;
  umur(LTgl, sTgl);
  edtTahun.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
end;

procedure TFDataPasienBaruIgd.dtpTglLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbJenisKelamin.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cbbJenisKelaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  cbbPendidikan.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.cbbPendidikanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  cbbPekerjaan.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cbbPekerjaanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  cbbAgama.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cbbAgamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbBahasa.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cbbBahasaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
   begin
    key:=#0;
    cxcrncydtNoTelp.SetFocus;
   end;
end;

procedure TFDataPasienBaruIgd.cxcrncydtNoTelpKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key=#13 then
  begin
  key:=#0;
  cbbMaritalStatus.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cxmAlamatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtPencarianKelurahan.SetFocus
  end
end;

procedure TFDataPasienBaruIgd.cbbKelurahanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  edtKodePos.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.edtKodePosKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
    key:=#0;
    edtNamaPenanggungJawab.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.edtNamaPenanggungJawabKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbHubunganKeluarga.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.cbbHubunganKeluargaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cxmDetailAlamatPasien.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cxmDetailAlamatPasienKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
   key:=#0;
   cxcrncydtNoTeleponeDetail.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.cxcrncydtNoTeleponeDetailKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbCaraBayar.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.cbbCaraBayarKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    if cbbCaraBayar.Text = '' then
      ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      with DataSimrs.qryPenjamin do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_penjamin where kdCaraBayar="'+cbbCaraBayar.EditValue+'"';
        Open;
      end;
      cbbPenjamin.SetFocus;
    end
  end;
end;

procedure TFDataPasienBaruIgd.cbbPenjaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtNoKartu.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.edtNoKartuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtNoSep.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.edtNoSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtAtasNama.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.edtAtasNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    btnSimpan.SetFocus;
  end
end;

procedure TFDataPasienBaruIgd.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataPasienBaruIgd.cbbKelurahanNewDblClick(Sender: TObject);
begin
  refreshTmplAlamat;
end;

procedure TFDataPasienBaruIgd.dbgrdhAlamatCellMouseClick(
  Grid: TCustomGridEh; Cell: TGridCoord; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  idAlamat:String;
begin
    idAlamat := DataSimrs.qryt_allindonesia['id'];
    with DataSimrs.qryt_allindonesia do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_allindonesia where id="'+idAlamat+'"';
      Open;
    end;

    edtKelurahanDesa.Text :=  DataSimrs.qryt_allindonesia.Fieldbyname('kelurahan').AsString;
    cxtxtdtKecamatanNew.Text := DataSimrs.qryt_allindonesia.Fieldbyname('kecamatan').AsString;
    cxtxtdtKabKotaNew.Text := DataSimrs.qryt_allindonesia.Fieldbyname('kabKota').AsString+' '+DataSimrs.qryt_allindonesia.Fieldbyname('kabKotaNama').AsString;
    cxtxtdtProvinsiNew.Text := DataSimrs.qryt_allindonesia.Fieldbyname('provinsi').AsString;
    edtKodePos.Text := DataSimrs.qryt_allindonesia.Fieldbyname('kodePos').AsString;
    edtNamaPenanggungJawab.SetFocus;
    strngrdAlamat.Visible := False;
end;

procedure TFDataPasienBaruIgd.strngrdAlamatDblClick(Sender: TObject);
begin
  with strngrdAlamat do
    begin
      edtPencarianKelurahan.Text := '';
      edtNamaPenanggungJawab.SetFocus;
      Visible := False;
    end;
end;

procedure TFDataPasienBaruIgd.strngrdAlamatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
   with strngrdAlamat do
    begin
      edtPencarianKelurahan.Text := '';
      edtNamaPenanggungJawab.SetFocus;
      Visible := False;
    end;
end;
end;

procedure TFDataPasienBaruIgd.strngrdAlamatSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  with strngrdAlamat do
    begin
      edtKelurahanDesa.Text := strngrdAlamat.Cells[1,ARow];
      cxtxtdtKecamatanNew.Text := strngrdAlamat.Cells[2,ARow];
      cxtxtdtKabKotaNew.Text := strngrdAlamat.Cells[3,ARow];
      cxtxtdtProvinsiNew.Text := strngrdAlamat.Cells[4,ARow];
      edtKodePos.Text := strngrdAlamat.Cells[5,ARow];
      //edtNamaPenanggungJawab.SetFocus;
      //Visible := False;
    end;
end;

procedure TFDataPasienBaruIgd.edtTempatLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  if edtTempatLahir.Text = '' then
    strngrdTempatLahir.Visible := False
  else
  begin
    aturKolomKota; ambilDataKota; tampilDataKota;
    strngrdTempatLahir.Visible := True;
  end;
  end;
end;

procedure TFDataPasienBaruIgd.edtTempatLahirKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdTempatLahir.SetFocus;
end;

procedure TFDataPasienBaruIgd.strngrdTempatLahirDblClick(Sender: TObject);
begin
  with strngrdTempatLahir do
    begin
      //edtTempatLahir.Text := strngrdTempatLahir.Cells[1,strngrdTempatLahir.selection.Bottom];
      Visible := False;
    end;
  dtpTglLahir.SetFocus;
end;

procedure TFDataPasienBaruIgd.strngrdTempatLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    with strngrdTempatLahir do
    begin
      //edtTempatLahir.Text := strngrdTempatLahir.Cells[1,strngrdTempatLahir.selection.Bottom];
      Visible := False;
    end;
    dtpTglLahir.SetFocus;
  end;
end;

procedure TFDataPasienBaruIgd.edtPencarianKelurahanKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  strngrdAlamat.SetFocus;
end;

procedure TFDataPasienBaruIgd.edtPencarianKelurahanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdAlamat.SetFocus;
end;

procedure TFDataPasienBaruIgd.edtPencarianKelurahanPropertiesChange(
  Sender: TObject);
begin
if edtPencarianKelurahan.Text = '' then
  strngrdAlamat.Visible := False
  else
  begin
    aturKolomAlamat; ambilDataAlamnat; tampilData;
    edtKelurahanDesa.Text := '';
    cxtxtdtKecamatanNew.Text := '';
    cxtxtdtKabKotaNew.Text := '';
    cxtxtdtProvinsiNew.Text := '';
    strngrdAlamat.Visible := True;
  end;
end;

procedure TFDataPasienBaruIgd.strngrdTempatLahirSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
edtTempatLahir.Text := strngrdTempatLahir.Cells[1,Arow];
end;

procedure TFDataPasienBaruIgd.cbbMaritalStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key=#13 then
  begin
  key:=#0;
  cxmAlamat.SetFocus;
  end
end;

end.
