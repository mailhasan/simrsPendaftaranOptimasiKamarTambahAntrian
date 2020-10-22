unit UDataPasienBaru;

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
  dxSkinXmas2008Blue, StdCtrls, Grids, cxLabel, cxTextEdit, cxMemo,
  cxCurrencyEdit, cxDropDownEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ComCtrls, ExtCtrls;

type
  TFDataPasienBaru = class(TForm)
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
    edtKelurahanDesa: TEdit;
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
    strngrdAlamat: TStringGrid;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    pnlAtas: TPanel;
    pnlKeluar: TPanel;
    edtTempatLahir: TEdit;
    strngrdTempatLahir: TStringGrid;
    edtKecamatanNew: TcxTextEdit;
    edtKabKotaNew: TcxTextEdit;
    edtProvinsiNew: TcxTextEdit;
    cxlblPencarianKelurahan: TcxLabel;
    edtPencarianKelurahan: TcxTextEdit;
    procedure AngkaSaja(Sender: TObject; var Key: Char);
    procedure HurufSaja(Sender: TObject; var Key: Char);
    procedure cbbTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTglLahirKeyPress(Sender: TObject; var Key: Char);
    procedure dtpTglLahirChange(Sender: TObject);
    procedure cbbJenisKelaminKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPendidikanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPekerjaanKeyPress(Sender: TObject; var Key: Char);
    procedure cbbAgamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbBahasaKeyPress(Sender: TObject; var Key: Char);
    procedure cxcrncydtNoTelpKeyPress(Sender: TObject; var Key: Char);
    procedure cxmAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdAlamatKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaPenanggungJawabKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbHubunganKeluargaKeyPress(Sender: TObject; var Key: Char);
    procedure cxmDetailAlamatPasienKeyPress(Sender: TObject;
      var Key: Char);
    procedure cxcrncydtNoTeleponeDetailKeyPress(Sender: TObject;
      var Key: Char);
    procedure cbbCaraBayarKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoKartuKeyPress(Sender: TObject; var Key: Char);
    procedure edtNoSepKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtasNamaKeyPress(Sender: TObject; var Key: Char);
    procedure cbbPenjaminKeyPress(Sender: TObject; var Key: Char);
    procedure btnBaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtNmLengkapKeyPress(Sender: TObject; var Key: Char);
    procedure edtTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure edtTempatLahirKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdTempatLahirKeyPress(Sender: TObject; var Key: Char);
    procedure strngrdTempatLahirDblClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
    procedure strngrdAlamatSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure edtKodePosKeyPress(Sender: TObject; var Key: Char);
    procedure edtPencarianKelurahanPropertiesChange(Sender: TObject);
    procedure edtPencarianKelurahanKeyPress(Sender: TObject;
      var Key: Char);
    procedure edtPencarianKelurahanKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure strngrdAlamatDblClick(Sender: TObject);
    procedure strngrdTempatLahirSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure edtTempatLahirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure bersihdata;
    procedure bersihdata1;
    procedure simpanRajal;
    procedure aturKolomAlamat;
    procedure ambilDataAlamnat;
    procedure tampilData;
    procedure aturKolomKota;
    procedure ambilDataKota;
    procedure tampilDataKota;
  end;

var
  FDataPasienBaru: TFDataPasienBaru;
  iThn, iBln, iHari: Word;
implementation

{$R *.dfm}

uses UDataSImrs,DateUtils,UPendaftaran, ADODB, DB;


procedure TFDataPasienBaru.AngkaSaja(Sender: TObject; var Key: Char);
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

procedure TFDataPasienBaru.HurufSaja(Sender: TObject; var Key: Char);
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

procedure TFDataPasienBaru.bersihdata;
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
  edtKecamatanNew.Text := '';
  edtKabKotaNew.Text := '';
  edtProvinsiNew.Text := '';


 {with DataSimrs.qryPasien do
 begin
   Close;
   SQL.Clear;
   SQL.Text:='select * from t_pasien';
   Open;
 end;}

 with DataSimrs.qryNoRmPasien do
 begin
   //Active := True;
   Close;
   SQL.Clear;
   SQL.Text := 'select * from normpasien';
   Open;
 end;

 end;

procedure TFDataPasienBaru.bersihdata1;
begin
  edtNoRekamedisDetail.Clear;
  edtNamaPenanggungJawab.Clear;
  cxmDetailAlamatPasien.Text := '';
  cbbHubunganKeluarga.Text := '';
  cxcrncydtNoTeleponeDetail.Value := 0;
end;

procedure TFDataPasienBaru.simpanRajal;
begin

end;


procedure TFDataPasienBaru.aturKolomAlamat;
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
    Cells[3,0]:='Nama Kota/Kab  ';
    Cells[4,0]:='Provinsi';
    Cells[5,0]:='Kode Pos';


      //lebar kolom
    ColWidths[0]:=25;
    ColWidths[1]:=150;
    ColWidths[2]:=200;
    ColWidths[3]:=200;
    ColWidths[4]:=200;
    ColWidths[5]:=100;
 end;
end;

procedure TFDataPasienBaru.aturKolomKota;
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

procedure TFDataPasienBaru.ambilDataAlamnat;
begin
  with DataSimrs.qryt_allindonesia do
  begin
      Active := True;
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_allindonesia where kelurahan like "'+edtPencarianKelurahan.Text+'%" limit 50';
      Open;
  end;
end;

procedure TFDataPasienBaru.ambilDataKota;
begin
  with DataSimrs.qryt_allindonesia do
  begin
      Active := True;
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT DISTINCT kabkotaNama FROM t_allindonesia where kabkotaNama like "%'+edtTempatLahir.Text+'%"';
      Open;
  end;
end;


procedure TFDataPasienBaru.tampilData;
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
      strngrdAlamat.Cells[3,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kabKota').AsString +' '+DataSimrs.qryt_allindonesia.FieldByName('kabKotaNama').AsString; ;
      strngrdAlamat.Cells[4,i+1] := DataSimrs.qryt_allindonesia.FieldByName('provinsi').AsString;
      strngrdAlamat.Cells[5,i+1] := DataSimrs.qryt_allindonesia.FieldByName('kodePos').AsString;
      DataSimrs.qryt_allindonesia.Next;
    end;
  end;
end;

procedure TFDataPasienBaru.tampilDataKota;
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


procedure TFDataPasienBaru.cbbTempatLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    dtpTglLahir.SetFocus;
  end
end;

procedure TFDataPasienBaru.dtpTglLahirKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbJenisKelamin.SetFocus;
  end
end;

procedure TFDataPasienBaru.dtpTglLahirChange(Sender: TObject);
var
  sTgl, LTgl : TDateTime;
begin
  sTgl := Date;
  LTgl := dtpTglLahir.Date;
  umur(LTgl, sTgl);
  edtTahun.Text :=IntToStr(iThn)+' Tahun, '+IntToStr(iBln)+' Bulan, '+IntToStr(iHari)+' Hari';
end;

procedure TFDataPasienBaru.cbbJenisKelaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  cbbPendidikan.SetFocus;
  end;
end;

procedure TFDataPasienBaru.cbbPendidikanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  cbbPekerjaan.SetFocus;
  end
end;

procedure TFDataPasienBaru.cbbPekerjaanKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
  begin
  key:=#0;
  cbbAgama.SetFocus;
  end
end;

procedure TFDataPasienBaru.cbbAgamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbBahasa.SetFocus;
  end
end;

procedure TFDataPasienBaru.cbbBahasaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
   begin
    key:=#0;
    cxcrncydtNoTelp.SetFocus;
   end;
end;

procedure TFDataPasienBaru.cxcrncydtNoTelpKeyPress(Sender: TObject;
  var Key: Char);
begin
IF Key=#13 then
  begin
  key:=#0;
  cxmAlamat.SetFocus;
  end
end;

procedure TFDataPasienBaru.cxmAlamatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtPencarianKelurahan.SetFocus;
  end
end;

procedure TFDataPasienBaru.strngrdAlamatKeyPress(Sender: TObject;
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

procedure TFDataPasienBaru.edtNamaPenanggungJawabKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbHubunganKeluarga.SetFocus;
  end;
end;

procedure TFDataPasienBaru.cbbHubunganKeluargaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cxmDetailAlamatPasien.SetFocus;
  end;
end;

procedure TFDataPasienBaru.cxmDetailAlamatPasienKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
   key:=#0;
   cxcrncydtNoTeleponeDetail.SetFocus;
  end
end;

procedure TFDataPasienBaru.cxcrncydtNoTeleponeDetailKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    cbbCaraBayar.SetFocus;
  end;
end;

procedure TFDataPasienBaru.cbbCaraBayarKeyPress(Sender: TObject;
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

procedure TFDataPasienBaru.edtNoKartuKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtNoSep.SetFocus;
  end;
end;

procedure TFDataPasienBaru.edtNoSepKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtAtasNama.SetFocus;
  end
end;

procedure TFDataPasienBaru.edtAtasNamaKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    btnSimpan.SetFocus;
  end
end;

procedure TFDataPasienBaru.cbbPenjaminKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    key:=#0;
    edtNoKartu.SetFocus;
  end
end;

procedure TFDataPasienBaru.btnBaruClick(Sender: TObject);
begin
  bersihdata; bersihdata1;
end;

procedure TFDataPasienBaru.FormShow(Sender: TObject);
begin
  bersihdata; bersihdata1;
end;

procedure TFDataPasienBaru.btnSimpanClick(Sender: TObject);
var
  tglLahir,tgldaftar,Nourut : String;
  i:Integer;
begin
if (edtNoIdentitas.Text='0') or (edtNmLengkap.Text='') or (edtTempatLahir.Text='') or (cbbJenisKelamin.Text='') or
   (cbbCaraBayar.Text='') or (cbbPenjamin.Text='') then
      MessageDlg('Data Di Lengkapi...!',mtWarning,[mbok],0)
    else
    begin
       tglLahir := FormatDateTime('yyyy-MM-dd',dtpTglLahir.Date);
        tgldaftar := FormatDateTime('yyyy-MM-dd HH:mm:ss',Now);

         with DataSimrs.qryNoRmPasien do
         begin
          //Active := True;
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
          MessageDlg('Data Hari Ini Sudah over Besok aja lagi ya !!',mtError,[mbOK],0)
        else
          Nourut := IntToStr(DataSimrs.qryNoRmPasien.Fields[0].AsInteger + 1);
        if length(Nourut) < 8 then
        begin
          for i := length(Nourut) to 7 do
            Nourut := '0' + Nourut;
        end;

        /// insert pasien
        with DataSimrs.qryVwPasien do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'insert into t_pasien (noRekamedis,nmPasien,tempatLahir,tglLahir,'+
                      'jenisKelamin,agama,alamat,pendidikan,'+
                      'pekerjaan,kelurahan,kecamatan,kabupaten,provinsi,'+
                      'kdPos,bahasa,noKtp,tglDaftar,caraBayar,penjamin,'+
                      'noKartuPenjamin,noSepPenjamin,atasNamaPenjamin,noTelepone,noIdentitasKtp,createDate,username,pengguna) values'+
                      '("'+Nourut+'","'+edtNmLengkap.Text+'","'+edtTempatLahir.Text+'","'+tglLahir+'","'+cbbJenisKelamin.Text+'",'+
                      '"'+cbbAgama.Text+'","'+cxmAlamat.Text+'","'+cbbPendidikan.Text+'",'+
                      '"'+cbbPekerjaan.Text+'","'+edtKelurahanDesa.Text+'",'+
                      '"'+edtKecamatanNew.Text+'","'+edtKabKotaNew.Text+'","'+edtProvinsiNew.Text+'",'+
                      '"'+edtKodePos.Text+'","'+cbbBahasa.Text+'","'+edtNoIdentitas.Text+'","'+tgldaftar+'","'+cbbCaraBayar.Text+'",'+
                      '"'+cbbPenjamin.Text+'","'+edtNoKartu.Text+'","'+edtNoSep.Text+'","'+edtAtasNama.Text+'","'+cxcrncydtNoTelp.Text+'","'+edtNoIdentitas.Text+'",'+
                      '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'")';
          ExecSQL;
          SQL.Text:='select noRekamedis from t_pasien';
          Open;
        end;

         if DataSimrs.qryDetailPasien.Locate('noRekamedis',Nourut,[]) then
         begin
          with DataSimrs.qryDetailPasien do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update t_detailpasien set namaPenanggungJawab="'+edtNamaPenanggungJawab.Text+'",'+
                        'hubungan="'+cxmDetailAlamatPasien.Text+'",hubungan="'+cbbHubunganKeluarga.Text+'",'+
                        'alamat="'+cxmDetailAlamatPasien.Text+'",kelurahan="'+edtKelurahanDesa.Text+'",'+
                        'kecamatan="'+edtKecamatanNew.Text+'",kabupaten="'+edtKabKotaNew.Text+'",'+
                        'provinsi="'+edtProvinsiNew.Text+',kodePos="'+edtKodePos.Text+'",'+
                        'noTeleponeDetail="'+FloatToStr(cxcrncydtNoTeleponeDetail.Value)+'" where noRekamedis="'+Nourut+'"';
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
                        '"'+edtKecamatanNew.Text+'","'+edtKabKotaNew.Text+'","'+edtProvinsiNew.Text+'","'+edtKodePos.Text+'","'+FloatToStr(cxcrncydtNoTeleponeDetail.Value)+'",'+
                        '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',Now)+'","'+FPendaftaran.statSimrs.Panels[0].Text+'","'+FPendaftaran.statSimrs.Panels[3].Text+'")';
            ExecSQL;
            SQL.Text := 'select noRekamedis from t_detailpasien';
            Open;
          end;
         end;

        with DataSimrs.qryNoRmPasien do
        begin
         //Active := True;
         Close;
         SQL.Clear;
         SQL.Text := 'select * from normpasien';
         Open;
        end;


        ///ambil data dari pasien rawat jalan
        FPendaftaran.edtNoIdentitas.Text := edtNoIdentitas.Text;
        FPendaftaran.edtNoRekamedis.Text :=Nourut;
        FPendaftaran.edtNmLengkap.Text := edtNmLengkap.Text;
        FPendaftaran.edtTempatLahir.Text := edtTempatLahir.Text;
        FPendaftaran.edtTglLahir.Text := FormatDateTime('dd-MM-yyyy',dtpTglLahir.Date);
        FPendaftaran.edtTahun.Text := edtTahun.Text;
        FPendaftaran.edtJenisKelamin.Text := cbbJenisKelamin.Text;
        FPendaftaran.edtPendidikan.Text := cbbPendidikan.Text;
        FPendaftaran.edtPekerjaan.Text := cbbPekerjaan.Text;
        FPendaftaran.mmoAlamat.Text := cxmAlamat.Text;
        FPendaftaran.edtKelurahanDesa.Text := edtKelurahanDesa.Text;
        FPendaftaran.edtKecamatan.Text := edtKecamatanNew.Text;
        FPendaftaran.edtKabupaten.Text := edtKabKotaNew.Text;
        FPendaftaran.edtProvinsi.Text := edtProvinsiNew.Text;
        FPendaftaran.edtKodePos.Text := edtKodePos.Text;
        FPendaftaran.edtAgama.Text := cbbAgama.Text;
        FPendaftaran.edtBahasa.Text := cbbBahasa.Text;
        FPendaftaran.edtNoTelepone.Text := cxcrncydtNoTelp.Text;
        FPendaftaran.cbbCaraBayar.EditText := cbbCaraBayar.EditText;
        FPendaftaran.cbbPenjamin.EditText := cbbPenjamin.EditText;
        FPendaftaran.edtNoKartu.Text := edtNoKartu.Text;
        FPendaftaran.edtNoSep.Text := edtNoSep.Text;
        FPendaftaran.edtAtasNama.Text := edtAtasNama.Text;
        FPendaftaran.edtNoTelepone.Text := cxcrncydtNoTelp.Text;
        FPendaftaran.cbbAsalPasien.SetFocus; 

        MessageDlg('Data Berhasil di Proses...!',mtInformation,[mbok],0);
        Close;


    end;
end;

procedure TFDataPasienBaru.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFDataPasienBaru.edtNmLengkapKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  key:=#0;
  edtTempatLahir.SetFocus;
  end;
end;

procedure TFDataPasienBaru.edtTempatLahirKeyPress(Sender: TObject;
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

procedure TFDataPasienBaru.edtTempatLahirKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdTempatLahir.SetFocus;
end;

procedure TFDataPasienBaru.strngrdTempatLahirKeyPress(Sender: TObject;
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

procedure TFDataPasienBaru.strngrdTempatLahirDblClick(Sender: TObject);
begin
  with strngrdTempatLahir do
    begin
      //edtTempatLahir.Text := strngrdTempatLahir.Cells[1,strngrdTempatLahir.selection.Bottom];
      Visible := False;
    end;
  dtpTglLahir.SetFocus;
end;

procedure TFDataPasienBaru.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFDataPasienBaru.strngrdAlamatSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  with strngrdAlamat do
    begin
      edtKelurahanDesa.Text := strngrdAlamat.Cells[1,Arow];           
      edtKecamatanNew.Text := strngrdAlamat.Cells[2,Arow];
      edtKabKotaNew.Text := strngrdAlamat.Cells[3,Arow];
      edtProvinsiNew.Text := strngrdAlamat.Cells[4,Arow];
      edtKodePos.Text := strngrdAlamat.Cells[5,Arow];
      //edtNamaPenanggungJawab.SetFocus;
      //Visible := False;
    end;
end;

procedure TFDataPasienBaru.edtKodePosKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
begin
  Key:=#0;
  edtNamaPenanggungJawab.SetFocus;
end;
end;

procedure TFDataPasienBaru.edtPencarianKelurahanPropertiesChange(
  Sender: TObject);
begin
if edtPencarianKelurahan.Text = '' then
    strngrdAlamat.Visible := False
  else
  begin
    aturKolomAlamat; ambilDataAlamnat; tampilData;
    strngrdAlamat.Visible := True;
  end;
end;

procedure TFDataPasienBaru.edtPencarianKelurahanKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
  Key:=#0;
  strngrdAlamat.SetFocus;
  end;
end;

procedure TFDataPasienBaru.edtPencarianKelurahanKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key=VK_DOWN  then
   strngrdAlamat.SetFocus;
end;

procedure TFDataPasienBaru.strngrdAlamatDblClick(Sender: TObject);
begin
with strngrdAlamat do
begin
  edtPencarianKelurahan.Text := '';
  edtNamaPenanggungJawab.SetFocus;
  Visible := False;
end;
end;

procedure TFDataPasienBaru.strngrdTempatLahirSelectCell(Sender: TObject;
  ACol, ARow: Integer; var CanSelect: Boolean);
begin
  edtTempatLahir.Text := strngrdTempatLahir.Cells[1,Arow];     
end;

procedure TFDataPasienBaru.edtTempatLahirClick(Sender: TObject);
begin
  edtTempatLahir.Clear;
end;

end.

