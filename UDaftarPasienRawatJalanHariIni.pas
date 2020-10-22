unit UDaftarPasienRawatJalanHariIni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, ComCtrls, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, ExtCtrls;

type
  TFDaftarPasienHariIniRajal = class(TForm)
    pnlTegah: TPanel;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1noDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglDaftar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1noRekamedis: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1nmPasien: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1carabayar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1penjamin: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1unit: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1statusKeluar: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    pnlBawah: TPanel;
    lblNoRmNama: TLabel;
    edtNoRmNama: TEdit;
    btnKartuBerobat: TcxButton;
    btnLabel2x1: TcxButton;
    btnKarcis: TcxButton;
    btnBatalPasien: TcxButton;
    pnlAtas: TPanel;
    lblTanggal: TLabel;
    pnlKeluar: TPanel;
    dtpTglHariIni: TDateTimePicker;
    procedure btnBatalPasienClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNoRmNamaChange(Sender: TObject);
    procedure edtNoRmNamaClick(Sender: TObject);
    procedure dtpTglHariIniKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnKartuBerobatClick(Sender: TObject);
    procedure btnLabel2x1Click(Sender: TObject);
    procedure btnKarcisClick(Sender: TObject);
    procedure pnlKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   procedure tampilpasienhariini;
  end;

var
  FDaftarPasienHariIniRajal: TFDaftarPasienHariIniRajal;
  tanggal,tanggal1,noRm:String;
implementation

{$R *.dfm}
uses UDataSimrs,DateUtils,UPendaftaran, ADODB;

procedure TFDaftarPasienHariIniRajal.tampilpasienhariini;
begin
  tanggal := FormatDateTime('yyyy-MM-dd',dtpTglHariIni.Date);
  tanggal1 := FormatDateTime('yyyy-MM-dd',IncDay(dtpTglHariIni.Date,1));
  with DataSimrs.qryvw_pasienrawatjalan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM vw_pasienrawatjalan WHERE tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'"';
    //SQL.Text := 'SELECT * FROM vw_pasienrawatjalanhariini WHERE tglDaftar BETWEEN "2019-03-04" AND "2019-03-05" ';
    ExecSQL;
    Open;
  end;
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


procedure TFDaftarPasienHariIniRajal.btnBatalPasienClick(Sender: TObject);
var
  NODaftar,noDaftarRajal:String;
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount<=0 then
   MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0) else
   begin
    if MessageDlg('Yakin Membatalkan Pasien Yang Sudah Terdaftar, Dengan No RM, Nama "'+DataSimrs.qryvw_pasienrawatjalan['noRekamedis']+','+DataSimrs.qryvw_pasienrawatjalan['nmPasien']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      NODaftar := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noDaftar').AsString;
      with DataSimrs.qryt_registrasirawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_registrasirawatjalan where noDaftar="'+noDaftarRajal+'"';
        Open;
      end;
      noDaftarRajal := DataSimrs.qryt_registrasirawatjalan.FieldByName('noRegistrasiRawatJalan').AsString;
      with DataSimrs.qryt_tindakanpasienrajal do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_tindakanpasienrajal where noRegistrasiRawatJalan="'+noDaftarRajal+'"';
        Open;
      end;
      if DataSimrs.qryt_tindakanpasienrajal.RecordCount >= 1 then
         MessageDlg('Pasien Sudah Mendapatkan Pelayanan',mtWarning,[mbok],0)
      else
      begin
        with DataSimrs.qryt_registrasi do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update t_registrasi set kdStatusKeluar="16",'+
                     'kdCaraKeluar="5",tglPulang="'+FormatDateTime('yyyy-MM-dd HH:mm:ss',Now)+'" '+
                     'where noDaftar="'+NODaftar+'"';
         ExecSQL;
         SQL.Text := 'select * from t_registrasi';
         Open;
        end;

        with DataSimrs.qryt_registrasirawatjalan do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update t_registrasirawatjalan set karciPendaftaran="'+IntToStr(0)+'",'+
                     'konsulDokter="'+IntToStr(0)+'" where noRegistrasiRawatJalan="'+noDaftarRajal+'"';
         ExecSQL;
         SQL.Text := 'select * from t_registrasirawatjalan';
         Open;
        end;

        tampilpasienhariini;
        
        MessageDlg('Berhasil Di Batalkan...!',mtInformation,[mbok],0);
      end
    end
    else Abort;
   end;
end;

procedure TFDaftarPasienHariIniRajal.FormShow(Sender: TObject);
begin
dtpTglHariIni.Date := Now;
tampilpasienhariini;
end;

procedure TFDaftarPasienHariIniRajal.edtNoRmNamaChange(Sender: TObject);
begin
 if (edtNoRmNama.Text='') then
    begin
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT noDaftar,noRekamedis,tglDaftar,nmPasien,carabayar,penjamin,statusKeluar,pengguna,unit FROM vw_pasienrawatjalan WHERE tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'"';
        Open;
      end;
    end
    else
    begin
      with DataSimrs.qryvw_pasienrawatjalan do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT noDaftar,noRekamedis,tglDaftar,nmPasien,carabayar,penjamin,statusKeluar,pengguna,unit FROM vw_pasienrawatjalan WHERE tglDaftar BETWEEN "'+tanggal+'" AND "'+tanggal1+'" and (noRekamedis LIKE "%'+edtNoRmNama.Text+'%" OR nmPasien LIKE "%'+edtNoRmNama.Text+'%") ';
        Open;
      end;
    end;
end;

procedure TFDaftarPasienHariIniRajal.edtNoRmNamaClick(Sender: TObject);
begin
 edtNoRmNama.Clear;
end;

procedure TFDaftarPasienHariIniRajal.dtpTglHariIniKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    tampilpasienhariini;
  end;
end;

procedure TFDaftarPasienHariIniRajal.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key =#27 then Close;
end;

procedure TFDaftarPasienHariIniRajal.btnKartuBerobatClick(Sender: TObject);
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
    noRm := DataSimrs.qryvw_pasienrawatjalan.FieldByName('noRekamedis').AsString;
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRm+'"';
      Open;
    end;
    {with FKartuBerobat do
    begin
      with qckrpKartuBerobat do
      begin
        qrlblIsiNoRm.Caption := ':'+DataSimrs.qryVwPasien.FieldByname('noRekamedis').AsString;
        qrlblIsiNama.Caption := ':'+DataSimrs.qryVwPasien.FieldByname('nmPasien').AsString;
        qrlblIsiKelahiran.Caption := ':'+DataSimrs.qryVwPasien.FieldByname('tempatLahir').AsString+','+DataSimrs.qryVwPasien.FieldByname('tglLahir').AsString;
        qrlblIsiAlamat.Caption := DataSimrs.qryVwPasien.FieldByname('alamat').AsString;
        qrlblKelurahan.Caption := DataSimrs.qryVwPasien.FieldByname('kecamatan').AsString+','+DataSimrs.qryVwPasien.FieldByname('kabupaten').AsString+','+DataSimrs.qryVwPasien.FieldByname('provinsi').AsString;
          //PrinterSetup;
        Preview;
      end
    end;}
     with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;
      
      FPendaftaran.frxrprtKartuBerobat.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\kartuberobat.fr3');
      FPendaftaran.frxrprtKartuBerobat.PrintOptions.Printer:= DataSimrs.qryt_komputer.FieldByname('printerKartu').AsString;
      //frxrprtKartuBerobat.PrintOptions.ShowDialog:=True;
      FPendaftaran.frxrprtKartuBerobat.PrepareReport;
      FPendaftaran.frxrprtKartuBerobat.Print;
  end
  else
    MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDaftarPasienHariIniRajal.btnLabel2x1Click(Sender: TObject);
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin
    noRm := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noRekamedis').AsString;
    with DataSimrs.qryVwPasien do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from t_pasien where noRekamedis="'+noRm+'"';
      Open;

      {with FPrintLabel2x1 do
      begin

        with qckrpPrintLabel do
        begin
        /// kolom ke 1
        qrlblNama.Caption := FieldByname('nmPasien').AsString;
        qrlblJK.Caption := FieldByname('jenisKelamin').AsString;
        qrlblUmumJkn.Caption := DataSimrs.qryvw_pasienrawatjalanhariini.FieldByname('carabayar').AsString;
        qrlblNoRm.Caption := FieldByname('noRekamedis').AsString;
        qrlblTtl.Caption := FieldByname('tempatLahir').AsString+','+FieldByname('tglLahir').AsString;
        qrlblAlamat.Caption := FieldByname('alamat').AsString;

        /// kolom ke 2
        qrlblNama1.Caption := FieldByname('nmPasien').AsString;
        qrlblJK1.Caption := FieldByname('jenisKelamin').AsString;
        qrlblBayar1.Caption := DataSimrs.qryvw_pasienrawatjalanhariini.FieldByname('carabayar').AsString;
        qrlblNoRm1.Caption := FieldByname('noRekamedis').AsString;
        qrlblTtl1.Caption := FieldByname('tempatLahir').AsString+','+FieldByname('tglLahir').AsString;
        qrlblAlamat1.Caption := FieldByname('alamat').AsString;

        Preview;
        end
      end;}
      with DataSimrs.qryt_komputer do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
        Open;
      end;

      FPendaftaran.frxrprtLabel.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\label2x1.fr3');
      FPendaftaran.frxrprtLabel.ShowReport();
   end;
  end
  else
    MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDaftarPasienHariIniRajal.btnKarcisClick(Sender: TObject);
var
  noDft:String;
begin
if DataSimrs.qryvw_pasienrawatjalan.RecordCount >= 1 then
  begin

        noDft := DataSimrs.qryvw_pasienrawatjalan.Fieldbyname('noDaftar').AsString;
        {with DataSimrs.qryvw_pasienrawatjalanhariini do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from vw_tampilkarcipendaftaran where noRekamedis="'+noRm+'"';
          Open;
        end;

        with  DataSimrs.qryvw_pasienrawatjalanhariini do
        begin
          qrlblIsiNoRm.Caption := ':'+FieldByname('noRekamedis').AsString;
          qrlblIsiNamaPasien.Caption := ':'+FieldByname('nmPasien').AsString;
          qrlblIsiTglLahir.Caption := ':'+FieldByname('tglLahir').AsString;
          qrlblIsiTempatLahir.Caption := ':'+FieldByname('tempatLahir').AsString;
          qrlblIsiAlamat.Caption := ':'+FieldByname('alamat').AsString;
          qrlblIsiAsalPasien.Caption := ':'+FieldByname('asalPasien').AsString;
          qrlblIsiCaraBayar.Caption :=  ':'+FieldByname('carabayar').AsString;
          qrlblIsiPoliTujuan.Caption := ':'+FieldByname('unit').AsString;
          qrlblIsiDokter.Caption := ':'+FieldByname('namapetugasMedis').AsString;
          qrlblIsiKarciPendaftaran.Caption := ':'+FieldByname('karciPendaftaran').AsString;
          qrlblIsiKonsultasiDokter.Caption := ':'+FieldByname('konsulDokter').AsString;

          Preview;
        end}
        with DataSimrs.qryvw_pasienrawatjalan do
        begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from vw_pasienrawatjalan where noDaftar="'+noDft+'"';
        Open;
        end;

        with DataSimrs.qryt_komputer do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'select * from t_komputer where namaKomputer="'+GetComputerNameFromWindows+'"';
          Open;
        end;

        FPendaftaran.frxrprtKarcis.LoadFromFile(ExtractFilePath(Application.ExeName)+'printPendaftaran\karcisrajal.fr3');
        FPendaftaran.frxrprtKarcis.PrintOptions.Printer:= DataSimrs.qryt_komputer['printerKarcis'];
        //FPendaftaranRawatJalan.frxrprtKarcis.PrintOptions.ShowDialog:=True;
        FPendaftaran.frxrprtKarcis.PrepareReport;
        FPendaftaran.frxrprtKarcis.ShowReport;
  end
  else
    MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFDaftarPasienHariIniRajal.pnlKeluarClick(Sender: TObject);
begin
  Close;
end;

end.
